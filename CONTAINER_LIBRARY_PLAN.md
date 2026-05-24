# Container Library — Implementation Plan

In-app "Compatibility Layers" screen that lets users download additional Wine/Proton containers from `bannerhub-api` GH Releases at runtime. Add-only, containers/compat-layers only (no components). Downloaded containers persist in `/data/data/banner.nano.offline/files/components-cdn/` and are served to the rest of the app via the existing embedded NanoHTTPD server. After a one-time online download, each container works fully offline forever.

## Architecture summary

```
┌────────────────────────────────────────────────────────────┐
│  Side drawer (smali-injected row)                          │
│      ↓                                                      │
│  ContainerLibraryActivity (extension Java + XML layout)     │
│      ↓                                                      │
│  ContainerLibrary (backend)                                 │
│      ├─ reads assets/local-mirror/known-containers.json     │
│      ├─ reads files/components-cdn/getContainerList.json    │
│      ├─ ContainerDownloader (HttpURLConnection, bypasses    │
│      │   our patched offline interceptors)                  │
│      └─ writes files/components-cdn/getContainerList.json   │
│                                                              │
│  BannerHubLocalServer (unchanged)                           │
│      ├─ serves catalog from files/components-cdn/           │
│      └─ serves binaries from files/ (downloaded) or         │
│         assets/ (bundled)                                   │
└────────────────────────────────────────────────────────────┘
```

Key principle: the rest of the app (game launch, picker, install) sees no change. New containers just appear in `getContainerList` and the existing download/install/mount stack handles them.

## Known canonical IDs

From user-pasted strings (also bundled as `data/known-containers.json`):

| ID | Display name        | Framework | Type   | Wine archive size | Bundled? |
| -- | ------------------- | --------- | ------ | ----------------- | -------- |
| 2  | proton10.0-arm64x-2 | arm64X    | proton | 216 MB            | No       |
| 3  | wine9.5-x64-2       | X64       | stable | 157 MB            | No       |
| 4  | proton9.0-x64-3     | X64       | proton | 156 MB            | No       |
| 5  | wine10.0-x64-2      | X64       | stable | 163 MB            | No       |
| 6  | wine10.6-arm64x-2   | arm64X    | stable | 220 MB            | No       |
| 7  | wine9.16-x64-2      | X64       | stable | 153 MB            | No       |
| 8  | wine9.13-x64-2      | X64       | stable | 154 MB            | No       |
| 9  | proton9.0-arm64x-3  | arm64X    | proton | 211 MB            | No       |
| 10 | proton10.0-x64-1    | X64       | proton | 164 MB            | **Yes**  |
| 11 | proton11.0-arm64x   | arm64X    | proton | 251 MB            | No       |

IDs stay canonical (no offset) so game launch configs referencing e.g. container id 4 resolve correctly post-download.

---

## Phase 0 — Prerequisite: writable catalogs

**Blocker for everything else.** Server currently reads catalog JSONs from read-only APK assets. We need them writable.

**Strategy:** extract **catalog JSONs only** (small, ~MBs) at first launch — leave the binary `.tzst`/`.zst` archives in APK assets (~588 MB, would be slow to copy). Server reads catalogs from `files/components-cdn/`, binaries from `files/` first then falls back to `assets/`.

### Jobs

- [ ] **0.1** New extension class `extension/server/AssetExtractor.java`
  - On first run (sentinel file `files/.catalogs-extracted-vN`), iterate `assets/local-mirror/components-cdn/` for JSON files only and copy to `/data/data/banner.nano.offline/files/components-cdn/`
  - Sentinel includes APK versionCode so a future APK upgrade re-extracts on first launch (covers shipped catalog updates)
- [ ] **0.2** Hook AssetExtractor into Application.onCreate, before BannerHubLocalServer.start()
  - Smali edit to existing patched Application class, or attach to first request via lazy init in BannerHubLocalServer.serve()
- [ ] **0.3** Update `BannerHubLocalServer` catalog paths
  - Catalog reads: `files/components-cdn/<name>` first, fall back to `assets/local-mirror/components-cdn/<name>`
  - Binary reads (`LocalCdnServer`): `files/components-cdn/<name>` first, fall back to `assets/local-mirror/components-cdn/<name>` via `AssetManager.openFd()`
- [ ] **0.4** Verify catalog hot-reload works **(NOTE: open question — verify in this job)**
  - Read `extension/server/LocalAssetServer.java` and `BannerHubLocalServer.java` and confirm whether catalog responses are cached in memory between requests, or re-read from disk on every request
  - If always re-reads → no work needed
  - If caches in memory → add a `lastModified()`-based invalidation (cheap stat call per request), or just remove the cache (catalog files are tiny, IO cost is negligible)
  - Acceptance: touch `files/components-cdn/getContainerList.json` between two `curl 127.0.0.1:51823/simulator/v2/getContainerList` hits, confirm second hit sees the modified content

### Acceptance

Build, install fresh, verify:
- `/data/data/banner.nano.offline/files/components-cdn/getContainerList.json` exists post-launch
- Manually edit it, hit `curl 127.0.0.1:51823/simulator/v2/getContainerList` → new content visible
- Game launch (existing flow) still works

---

## Phase 1 — Known-containers catalog asset

Bake the 9 user-pasted strings as a single JSON file shipped in the APK.

### Jobs

- [ ] **1.1** Create `data/known-containers.json` — convert the 9 XML-wrapped JSON strings into a single normalized JSON array
  - One per entry, fields: id, display_name, name, framework, framework_type, file_md5, file_name, file_size, download_url, sub_data{sub_file_md5, sub_file_name, sub_download_url}, version, version_code, is_steam, logo
  - Strip the outer `state`/`version` wrapper and the `entry.fileType` (=3 redundant with framework_type)
  - Add per-entry `download_hint` field (optional URL string — for the v0.3+ "where to get this manually" path; can be omitted now)
- [ ] **1.2** Build step copies `data/known-containers.json` → `assets/local-mirror/known-containers.json` during APK assembly
  - Add to existing `prepare_local_mirror.py` or a new tiny step in `build-quick.yml` + `build.yml`

### Acceptance

Built APK contains `assets/local-mirror/known-containers.json`, valid JSON, 9 entries. Verify via `unzip -p BannerHub-Nano-Offline-vN.apk assets/local-mirror/known-containers.json | jq '.containers | length'` → 9.

---

## Phase 2 — Backend (`ContainerLibrary`)

Pure Java in `extension/server/`. No Android UI dependencies; testable in isolation.

### Jobs

- [ ] **2.1** `ContainerInfo.java` POJO — mirrors known-containers.json entry shape + computed `State` enum (BUNDLED / INSTALLED / NOT_INSTALLED) + `installedSizeBytes` (set when INSTALLED)
- [ ] **2.2** `ContainerLibrary.java`
  - `List<ContainerInfo> listAll(Context)` — merges known-containers asset with the bundled `getContainerList.json` and per-id presence check in `files/components-cdn/`
    - BUNDLED = present in shipped `getContainerList.json` (currently only id 10)
    - INSTALLED = wine archive AND sub_data exist in `files/components-cdn/`
    - NOT_INSTALLED = neither bundled nor installed
  - `void addToCatalog(Context, ContainerInfo)` — reads writable `getContainerList.json`, appends entry, writes back (atomic via .tmp + rename)
  - `boolean isInstalled(Context, int id)` — file existence check
  - `void deleteInstalled(Context, int id)` — NOT IMPLEMENTED (add-only per scope)
- [ ] **2.3** `ContainerDownloader.java`
  - `download(ContainerInfo, ProgressListener)` — sequential: wine archive then sub_data
  - Uses `HttpURLConnection` (bypasses our patched OkHttp interceptors + Aria — keeps connectivity-lie patches purely for the game-launch path)
  - Atomic: download to `<name>.tar.zst.tmp` then rename
  - MD5 verify wine archive against `file_md5` (catches corrupt CDN); skip MD5 check on sub_data (per the well-documented [[project_bannerhub_api_proton_x64_subdata_fix]] steamuser/xuser md5-shape quirk — sub_file_md5 is what the app's install-time strict-check uses, not a binary checksum)
  - On any failure (network, MD5 mismatch, disk full): clean up partial files, return error
- [ ] **2.4** `ProgressListener` interface — `onProgress(long bytesDone, long bytesTotal, String filename)`, `onComplete()`, `onError(String reason)`

### Acceptance

Backend unit-callable from a debug logcat hook (or quick test activity):
- `listAll()` returns 10 entries (1 BUNDLED, 9 NOT_INSTALLED) on fresh install
- After manual file drop into `files/components-cdn/`, `listAll()` flips that entry to INSTALLED
- `addToCatalog()` writes valid JSON, server immediately returns new entry on next request

---

## Phase 3 — UI Activity

XML-layout-based Activity (no Compose — keeps it within extension-Java comfort zone). Material 3 themed to match host app where possible.

### Reference patterns (anchored from 3.7.5 base recon)

**Drawer-row injection target (confirmed):** `patches/smali_classes5/com/xj/landscape/launcher/ui/menu/HomeLeftMenuDialog.smali` — already carries our Epic/GOG/Amazon rows in BannerHub v3.7.5 (no icons, text-only, hardcoded label strings). Two existing patch sections to mirror:

1. **Row construction block** (~line 3924+): `const-string v7, "GOG"` style — add `"Compatibility Layers"` row with next free id (=13, since GOG=10, Amazon=11, Epic=12).
2. **Click dispatcher block** (~line 1583+): switch on row label → `const-class pN, Lapp/revanced/extension/gamehub/<Activity>;` — add a case for "Compatibility Layers" pointing at our new activity.

**Activity styling reference (confirmed):** mirror the existing extension activities (`extension/EpicMainActivity.java`, `GogMainActivity.java`, `AmazonMainActivity.java`) — same package (`app.revanced.extension.gamehub`), same AppCompat-based theme, same list-style layout. These are already proven to render correctly inside the BannerHub v3.7.5 shell.

### Jobs

- [ ] **3.1** Read `patches/smali_classes5/com/xj/landscape/launcher/ui/menu/HomeLeftMenuDialog.smali` rows 1583–1610 and 3924–3960 to lift the exact pattern (string label + class ref + id increment).
- [ ] **3.2** Smali patch — inject "Compatibility Layers" row (id=13) and its click dispatcher in the same file. No drawable, no icon — text-only, matching Epic/GOG/Amazon visual treatment.
- [ ] **3.3** `extension/ContainerLibraryActivity.java` in package `app.revanced.extension.gamehub` (matches existing convention so smali `const-class` resolves cleanly)
  - Theme + layout cloned from `EpicMainActivity` / `GogMainActivity` / `AmazonMainActivity` (whichever is closest structurally to a list view)
  - Single screen: toolbar + RecyclerView
  - Row content: container name (bold), size info ("239 MB + 10 MB"), framework badge ("arm64X · proton"), state pill ("BUNDLED" / "INSTALLED" / Download button)
  - Tapping Download → check `ConnectivityManager.getActiveNetwork() != null` directly (raw, bypasses our patched NetworkUtils); if airplane on, toast "Turn off airplane mode to download containers"
  - Otherwise: show in-row progress bar, kick off `ContainerDownloader.download()` on background thread, post progress updates to main thread
  - On complete: flip state pill to INSTALLED, call `ContainerLibrary.addToCatalog()`
  - On error: toast with reason, revert state pill, clean up partial files
- [ ] **3.4** Register `ContainerLibraryActivity` in `patches/AndroidManifest.xml`
- [ ] **3.5** Layout XML under `patches/res/layout/`
  - `activity_container_library.xml` (toolbar + RecyclerView)
  - `item_container_row.xml` (row content)
  - Reuse existing app theme colors; no new theme entries (clone from Epic/Gog/Amazon activity layouts)

### Acceptance

- Drawer shows "Compatibility Layers" row
- Tap row → activity opens with 10 entries listed
- Tap Download on (e.g.) proton11.0-arm64x with internet on → progress bar fills → completes → badge → INSTALLED
- Open in-app container picker → proton11.0-arm64x now appears
- Import + launch a game using proton11.0-arm64x → works
- Subsequent app launches (even in airplane mode) → proton11.0-arm64x still works for game launches

---

## Phase 4 — CI + asset wiring

Make sure the new code, layouts, and asset all flow through both build workflows.

### Jobs

- [ ] **4.1** `build-quick.yml` updates
  - Add step copying `data/known-containers.json` → `apktool_out/assets/local-mirror/known-containers.json` before `apktool b`
  - Confirm extension Java is picked up by existing javac→d8→classes18.dex flow (likely just works — already used for `BannerHubLocalServer`)
  - Confirm `patches/res/` overlays are applied to `apktool_out/res/`
  - Confirm `AndroidManifest.xml` patch step picks up new activity
- [ ] **4.2** `build.yml` same updates (paths differ — `apktool_out_base/` for the prepare phase per [[feedback_bannerhub_buildyml_paths]])
- [ ] **4.3** Lint pass — `apksigner verify`, `aapt2 dump badging` confirm new activity declared

### Acceptance

Green CI run, APK installs cleanly, new activity launches via drawer.

---

## Phase 5 — End-to-end device test

### Test plan

| # | Step                                                          | Expected                                          |
| - | ------------------------------------------------------------- | ------------------------------------------------- |
| 1 | Fresh install + internet ON                                   | App opens, drawer has "Compatibility Layers" row  |
| 2 | Tap Compatibility Layers                                      | List of 10 (1 BUNDLED + 9 NOT_INSTALLED)          |
| 3 | Tap Download on proton11.0-arm64x                             | Progress bar → completes → INSTALLED              |
| 4 | Verify file presence                                          | `ls files/components-cdn/` shows both archives    |
| 5 | Verify catalog                                                | `curl 127.0.0.1:51823/simulator/v2/getContainerList` returns 2 entries |
| 6 | Import a PC game that needs Proton 11                         | Picker shows proton11.0-arm64x, selectable        |
| 7 | Launch the game (still online)                                | Game launches                                     |
| 8 | Airplane mode ON, kill app, relaunch, launch same game        | Game launches (zero outbound traffic for launch)  |
| 9 | Try Download with airplane mode ON                            | Toast: "Turn off airplane mode"                   |
| 10| Kill app mid-download, relaunch                               | Partial files cleaned up, state = NOT_INSTALLED   |

### Acceptance

All 10 rows pass. Airplane-mode launch behavior of bundled container (proton10.0-x64-1) unchanged. No regression in any existing nano-offline flow.

---

## Phase 6 — v0.2 release (gated on explicit user "stable" signal)

**Only when user explicitly approves promoting the current pre-release to stable.** Until then, every Phase 5 device-test pass produces another pre-release artifact on `feature/compatibility-layers` via `build-quick.yml` and stops there.

When the go-ahead comes:
- [ ] Merge `feature/compatibility-layers` → `main`
- [ ] Update `RELEASE_NOTES.md` — new feature: Compatibility Layers
- [ ] Update `README.md` — note that nano-offline ships proton10.0-x64-1 and 9 more are 1-tap downloadable from inside the app
- [ ] Update `PROGRESS_LOG.md`
- [ ] Tag `v0.2` on `main` (prep commit), trigger Manual Release Build workflow, mark as stable (`isPrerelease: false`)
- [ ] Update memory ([[project_bannerhub_offline_nano]])

---

## Out of scope (explicitly deferred)

- **Removing / uninstalling** containers (add-only per scope)
- **Removing / hiding bundled components** from pickers
- **User-supplied custom .tzst** files (off-list containers)
- **.wcp ingestion** (single-file format) — could be v0.3 if users start asking
- **Component downloads** (translators, DXVK, etc.) — bundled set is sufficient, not size-prohibitive
- **Download resume** — if download interrupted, restart from 0. HTTP Range support exists in our local server but we're hitting github.com here, not our server. Could add later via `If-Range` / `Range` headers; current scope is fresh download only.
- **Background downloads** — download must stay foreground (activity visible). Could promote to WorkManager later if users complain.
- **Multi-arch detection** — UI shows all 10 regardless of device arch. Filtering would be nice (hide arm64X on x86_64 emulators or vice versa) but adds device-detection complexity.

---

## Decisions (locked 2026-05-23)

1. **No drawer icon, text-only row** — mirror existing Epic/GOG/Amazon treatment in `HomeLeftMenuDialog.smali` (`const-string` label + class ref, no icon resource).
2. **Activity styling** — clone `extension/EpicMainActivity.java` (or whichever of Epic/GOG/Amazon has the closest list-view shape). Same `app.revanced.extension.gamehub` package, same AppCompat theme.
3. **`is_steam` field** — preserve verbatim from each known-containers entry. Values in user-pasted strings: `1` for proton/arm64x, `2` for wine/x64 stable.
4. **Phase 0.4 cache check** — open until verified in-job; folded into Phase 0.4 itself with an acceptance test.

## Workflow constraints (locked 2026-05-23)

- **Branch:** `feature/compatibility-layers` — all commits land here, nothing on `main` until user signs off as stable.
- **Build pipeline:** quick build workflow (`.github/workflows/build-quick.yml`) for every iteration. No Manual Release Build runs during dev.
- **Release labeling:** every published artifact is a **pre-release** (`isPrerelease: true`, no `latest` flag, no v-tag promotion). Matches the post-v0.1 [[feedback_bannerhub_prerelease]] policy.
- **Stable cut:** only when user explicitly says "this is stable" — at that point we promote the latest pre-release artifact to a tagged release on `main` (Phase 6 below).

---

## Working notes & implementation references

### Drawer-row injection — exact location

`patches/smali_classes5/com/xj/landscape/launcher/ui/menu/HomeLeftMenuDialog.smali` in both the v3.7.5 base (`~/bannerhub/`) and nano-offline (`~/bannerhub-nano-offline/`).

**Two blocks to patch (already carry the Epic/GOG/Amazon precedent):**

```
~line 1583:  Click dispatcher
    # BannerHub: GOG menu item
    const-class p1, Lapp/revanced/extension/gamehub/GogMainActivity;
    # BannerHub: Amazon Games menu item
    const-class p1, Lapp/revanced/extension/gamehub/AmazonMainActivity;
    # BannerHub: Epic Games menu item
    const-class p1, Lapp/revanced/extension/gamehub/EpicMainActivity;
    # ADD: Compatibility Layers menu item
    const-class p1, Lapp/revanced/extension/gamehub/ContainerLibraryActivity;

~line 3924:  Row construction
    # BannerHub: GOG menu item (id=10)
    const-string v7, "GOG"
    # BannerHub: Amazon Games menu item (id=11)
    const-string v7, "Amazon"
    # BannerHub: Epic Games menu item (id=12)
    const-string v7, "Epic"
    # ADD: Compatibility Layers menu item (id=13)
    const-string v7, "Compatibility Layers"
```

Read the existing patches/blocks in full before patching — there are register-allocation and goto-label patterns to preserve. Run baksmali on `HomeLeftMenuDialog.smali` to inspect the register state at the inject point per [[feedback_revanced_high_register_invoke]] (this class has < 16 regs based on `p1` usage, so high-register encoding pitfall likely doesn't apply here, but verify).

### Extension Java compile pipeline (existing, reuse as-is)

From `build-quick.yml` lines ~830–980 (in v3.7.5; verify in nano-offline):

1. `javac -source 8 -target 8 -d /tmp/extclasses extension/**/*.java -cp <android.jar + classes from apktool>`
2. `d8 --output classes18.dex /tmp/extclasses/`
3. Inject `classes18.dex` into `apktool_out/` before `apktool b` rebuild

**Existing extension files in nano-offline `extension/`** (to be referenced/extended):
- `server/BannerHubLocalServer.java` — main router, executeScript dispatch, type filter
- `server/LocalAssetServer.java` — generic asset/file server
- `server/LocalCdnServer.java` — components-cdn binary server with Range support
- `AmazonAuthClient.java` — sample existing extension Java
- `EpicMainActivity.java` / `GogMainActivity.java` / `AmazonMainActivity.java` — **template activities for ContainerLibraryActivity** (verify exact filenames during implementation)

### Smali patch dir conventions

Per [[feedback_bannerhub_buildyml_paths]]:
- `build.yml` `prepare` job patches `apktool_out_base/`
- `build.yml` `build` job (post-artifact) patches `apktool_out/`
- `build-quick.yml` patches `apktool_out/` only

Per [[feedback_bannerhub_smali_classes12_rebuilt]]: **never patch `smali_classes12/`** — it's rm'd and replaced by prebuilt `classes12.dex` at packaging. Our HomeLeftMenuDialog injection is in `smali_classes5/` (safe).

### Writable runtime paths

- App data dir: `/data/data/banner.nano.offline/files/`
- Catalog writable copy: `/data/data/banner.nano.offline/files/components-cdn/`
- Downloaded binaries: same dir, alongside catalogs
- Sentinel: `/data/data/banner.nano.offline/files/.catalogs-extracted-vN` (N = APK versionCode)

### Server endpoint quick reference (current, for context)

| Path                                          | Source                              | Notes                       |
| --------------------------------------------- | ----------------------------------- | --------------------------- |
| `/simulator/v2/getContainerList`              | catalog JSON                        | **mutation target**         |
| `/simulator/v2/getComponentList?type=N`       | trimmed catalog + type filter (v17) | Components — not touched    |
| `/simulator/v2/getAllComponentList`           | trimmed catalog                     | Components — not touched    |
| `/simulator/v2/getImagefsDetail`              | static                              | Firmware                    |
| `/simulator/executeScript` (POST)             | dispatch on gpu+game_type           | 4 variants                  |
| `/components-cdn/<filename>`                  | files/ then assets/                 | Binary serve, Range support |

### The 9 downloadable containers (normalized for `data/known-containers.json`)

```json
{
  "_comment": "Compatibility layers downloadable from the in-app Compatibility Layers screen. Pulled from bannerhub-api GH Releases at runtime. IDs are canonical (match upstream/bundled space).",
  "containers": [
    {"id":2,"display_name":"proton10.0-arm64x-2","name":"proton10.0-arm64x-2","framework":"arm64X","framework_type":"proton","file_md5":"6dcb13706c9c7720b074ee020ce39bbc","file_name":"wine_proton10.0-arm64x-2.tar.zst","file_size":216807973,"download_url":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/wine_proton10.0-arm64x-2.tar.zst","sub_data":{"sub_file_md5":"439b7ec0ae13685aee76a10904ebccf4","sub_file_name":"6dcb13706c9c7720b074ee020ce39bbc.tzst","sub_download_url":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/6dcb13706c9c7720b074ee020ce39bbc.tzst"},"version":"1.0.3","version_code":4,"is_steam":1,"logo":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/45e60d211d35955bd045aabfded4e64b.png"},
    {"id":3,"display_name":"wine9.5-x64-2","name":"wine9.5-x64-2","framework":"X64","framework_type":"stable","file_md5":"e78be524fd1b01fb7565eb01a9fd4187","file_name":"wine_9.5.tar.zst","file_size":157199545,"download_url":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/wine_9.5.tar.zst","sub_data":{"sub_file_md5":"7c88ba89b95f7099d7b12384ed92907a","sub_file_name":"e78be524fd1b01fb7565eb01a9fd4187.tzst","sub_download_url":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/e78be524fd1b01fb7565eb01a9fd4187.tzst"},"version":"1.0.0","version_code":1,"is_steam":2,"logo":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/45e60d211d35955bd045aabfded4e64b.png"},
    {"id":4,"display_name":"proton9.0-x64-3","name":"proton9.0-x64-3","framework":"X64","framework_type":"proton","file_md5":"83b3a2a16f7d643ce366c8ad686cbcf7","file_name":"wine_proton_9.0_x64.tar.zst","file_size":156893611,"download_url":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/wine_proton_9.0_x64.tar.zst","sub_data":{"sub_file_md5":"6f41b9c15b5bc97a0365b65da2b7545f","sub_file_name":"6f41b9c15b5bc97a0365b65da2b7545f.tzst","sub_download_url":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/6f41b9c15b5bc97a0365b65da2b7545f.tzst"},"version":"1.0.0","version_code":1,"is_steam":1,"logo":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/45e60d211d35955bd045aabfded4e64b.png"},
    {"id":5,"display_name":"wine10.0-x64-2","name":"wine10.0-x64-2","framework":"X64","framework_type":"stable","file_md5":"66e25e9a8fde74e8feb4e3b2ba9f6201","file_name":"wine_10.0.tar.zst","file_size":163346754,"download_url":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/wine_10.0.tar.zst","sub_data":{"sub_file_md5":"7ebf0365a7fc6e5c36e159b3975fa439","sub_file_name":"66e25e9a8fde74e8feb4e3b2ba9f6201.tzst","sub_download_url":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/66e25e9a8fde74e8feb4e3b2ba9f6201.tzst"},"version":"1.0.0","version_code":1,"is_steam":2,"logo":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/45e60d211d35955bd045aabfded4e64b.png"},
    {"id":6,"display_name":"wine10.6-arm64x-2","name":"wine10.6-arm64x-2","framework":"arm64X","framework_type":"stable","file_md5":"aeb9ee7dccf887d5d543963ce823f1cc","file_name":"wine_10.6_arm64x-2.tar.zst","file_size":220083873,"download_url":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/wine_10.6_arm64x-2.tar.zst","sub_data":{"sub_file_md5":"758f0f8dbdb9935a261ca0730f119540","sub_file_name":"aeb9ee7dccf887d5d543963ce823f1cc.tzst","sub_download_url":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/758f0f8dbdb9935a261ca0730f119540.tzst"},"version":"1.0.0","version_code":1,"is_steam":1,"logo":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/45e60d211d35955bd045aabfded4e64b.png"},
    {"id":7,"display_name":"wine9.16-x64-2","name":"wine9.16-x64-2","framework":"X64","framework_type":"stable","file_md5":"830a254f9b3c92aa850a502621037ae9","file_name":"wine_9.16.tar.zst","file_size":153061370,"download_url":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/wine_9.16.tar.zst","sub_data":{"sub_file_md5":"74409280a831e9841f74488cb7c1bab4","sub_file_name":"830a254f9b3c92aa850a502621037ae9.tzst","sub_download_url":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/830a254f9b3c92aa850a502621037ae9.tzst"},"version":"1.0.0","version_code":1,"is_steam":2,"logo":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/45e60d211d35955bd045aabfded4e64b.png"},
    {"id":8,"display_name":"wine9.13-x64-2","name":"wine9.13-x64-2","framework":"X64","framework_type":"stable","file_md5":"7b17485af1933955f2cb82958b7d45b7","file_name":"wine_9.13.tar.zst","file_size":154179227,"download_url":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/wine_9.13.tar.zst","sub_data":{"sub_file_md5":"40f08ebe9849ede742d2a9b6d983698d","sub_file_name":"7b17485af1933955f2cb82958b7d45b7.tzst","sub_download_url":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/7b17485af1933955f2cb82958b7d45b7.tzst"},"version":"1.0.0","version_code":1,"is_steam":2,"logo":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/45e60d211d35955bd045aabfded4e64b.png"},
    {"id":9,"display_name":"proton9.0-arm64x-3","name":"proton9.0-arm64x-3","framework":"arm64X","framework_type":"proton","file_md5":"2ff6952b6eec0ef881e97bde57ddc8e6","file_name":"wine_proton_9.0_arm64x.tar.zst","file_size":211725844,"download_url":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/wine_proton_9.0_arm64x.tar.zst","sub_data":{"sub_file_md5":"ae9d3f0c04341ac4fbb933f1ce4b6409","sub_file_name":"ae9d3f0c04341ac4fbb933f1ce4b6409.tzst","sub_download_url":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/ae9d3f0c04341ac4fbb933f1ce4b6409.tzst"},"version":"1.0.0","version_code":1,"is_steam":1,"logo":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/45e60d211d35955bd045aabfded4e64b.png"},
    {"id":11,"display_name":"proton11.0-arm64x","name":"proton11.0-arm64x","framework":"arm64X","framework_type":"proton","file_md5":"19f1e3ed3fe6985953039820681faa0f","file_name":"wine_proton_11.0_arm64x.tar.zst","file_size":251416426,"download_url":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/19f1e3ed3fe6985953039820681faa0f.tar.zst","sub_data":{"sub_file_md5":"10e4cb165a42dd2a4416b7fbff687bc6","sub_file_name":"10e4cb165a42dd2a4416b7fbff687bc6.tzst","sub_download_url":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/10e4cb165a42dd2a4416b7fbff687bc6.tzst"},"version":"1.0.2","version_code":3,"is_steam":1,"logo":"https://github.com/The412Banner/bannerhub-api/releases/download/Components/45e60d211d35955bd045aabfded4e64b.png"}
  ]
}
```

Notes on the data:
- ID 10 (proton10.0-x64-1) is intentionally absent — already bundled in APK.
- `download_url` for id=11 uses md5-named filename (`19f1e3ed3fe6985953039820681faa0f.tar.zst`); all others use friendly names. Both shapes work with our `LocalCdnServer` since we serve by filename, not by computed md5.
- `sub_file_name` ≠ `sub_file_md5` for most entries — this is the documented steamuser/xuser md5-shape quirk from [[project_bannerhub_api_proton_x64_subdata_fix]]. Wine archive `file_md5` IS the binary md5 (verify on download). sub_data's `sub_file_md5` is what the app's install-time strict-check uses against the extracted wineprefix — don't try to verify it as a binary checksum at download time.

### Connectivity check (bypass our patches)

In `ContainerLibraryActivity.checkOnline()`:

```java
ConnectivityManager cm = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
Network active = cm.getActiveNetwork();
if (active == null) return false;
NetworkCapabilities caps = cm.getNetworkCapabilities(active);
return caps != null && caps.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET);
```

This bypasses our three patched gates ([[project_bannerhub_offline_nano]] Build #6/#12/#13 patches don't touch `ConnectivityManager` itself, only `OfflineCacheInterceptor.a()` / `NetworkUtils.r()` / Aria `NetUtils.isConnected()`). So we get truthful answers here without undoing offline-mode behavior for the rest of the app.

### Download path (bypass Aria + OkHttp)

Use `HttpURLConnection` (raw Android, not wrapped by our patched OkHttp client). Or alternatively a clean OkHttp instance built without our `OfflineCacheInterceptor`. Either way the goal is to keep the connectivity-lie patches scoped to the game-launch path:

```java
URL url = new URL(container.downloadUrl);
HttpURLConnection conn = (HttpURLConnection) url.openConnection();
conn.setConnectTimeout(15000);
conn.setReadTimeout(30000);
try (InputStream in = conn.getInputStream();
     OutputStream out = new FileOutputStream(tmpFile)) {
    byte[] buf = new byte[64 * 1024];
    long total = conn.getContentLengthLong();
    long done = 0;
    int n;
    while ((n = in.read(buf)) > 0) {
        out.write(buf, 0, n);
        done += n;
        listener.onProgress(done, total, container.fileName);
    }
}
// MD5 verify (wine archive only — see notes above re: sub_data)
// Then atomic rename tmpFile → final.
```

### Repository pointers

- nano-offline working tree: `/data/data/com.termux/files/home/bannerhub-nano-offline/`
- BannerHub 3.7.5 base tree (recon reference): `/data/data/com.termux/files/home/bannerhub/`
- BannerHub api source (where compat-layer archives are hosted): `/data/data/com.termux/files/home/bannerhub-api/`
- v0.1 progress log: `/data/data/com.termux/files/home/BANNERHUB_OFFLINE_NANO_PROGRESS_LOG.md`

### Build + ship reminders ([[feedback_ci_workflows]])

- Feature branch builds → "Any branch compilation" workflow (artifact only, no release)
- Final stable cut → "Manual Release Build" on `main` only
- After every commit/push: update memory + PROGRESS_LOG per [[feedback_memory_update_workflow]]
- No Claude co-author trailer per [[feedback_no_claude_coauthor]]
- Git author email: `the412banner@users.noreply.github.com` per [[feedback_the412banner_git_email]]

---

## Phase dependencies

```
Phase 0 ──→ Phase 1 ──→ Phase 2 ──→ Phase 3 ──→ Phase 4 ──→ Phase 5 ──→ Phase 6
(extract)  (asset)   (backend)   (UI)         (CI)         (test)       (ship)
```

Phase 0 is the only true blocker. Phases 1+2 can be done in parallel. Phase 3 depends on 2. Phases 4 and 5 are essentially sequential with 3.
