# BannerHub Nano Offline — Progress Log

Project memory: `~/.claude/projects/-home-claude-user/memory/project_bannerhub_offline_nano.md`

---

## 2026-05-23 — Repo bootstrap

Forked from `The412Banner/BannerHub` v3.7.5 stable (tag commit `caeaa9948`) into a new standalone repo. Goal is a single-APK fully offline build with an embedded NanoHttpd server that mirrors bannerhub-api locally.

**Bootstrap method:** `git archive HEAD | tar -x` from `~/bannerhub/` (tracked files only — no decompile artifacts), then stripped BannerHub-specific reference docs:

- Removed: `BANNERHUB_MASTER_MAP.md`, `AI_FRAME_GENERATION_REPORT.md`, `GAMENATIVE_RESEARCH.md`, `COMPONENT_MANAGER_BUILD_LOG.md`, `CLOUDFLARE_API_CONTRACT.md`, `COMMUNITY_CONFIG_REPORT.md`, `release_notes_v3.7.5.md`, `release_notes.txt`, `component-manager-patch/`, `epic_reference/`, `gamehub_reports/`, `game-store-reports/`, `migration/`
- Kept: `patches/`, `extension/`, `assets/`, `.github/workflows/{build.yml,build-quick.yml}`, `testkey.pk8`, `testkey.x509.pem`, `keystore.jks`, `.gitignore`
- Rewritten: `README.md` (offline-nano branding, 4-badge header)
- Reset: `PROGRESS_LOG.md` (this file)

**Signing:** identical to upstream BannerHub — `apksigner` with committed `testkey.pk8` + `testkey.x509.pem`. No GitHub secrets needed.

**Build:** identical workflow structure to upstream — `build.yml` for Manual Release Build, `build-quick.yml` for any-branch compilation.

**Next:** add offline-nano-specific content
1. `extension/server/` Java sources (BannerHubLocalServer, LocalAssetServer, LocalCdnServer) + vendored `nanohttpd-2.3.1.jar`
2. `scripts/prepare_local_mirror.py` — bundle bannerhub-api static output into `assets/local-mirror/` with `download_url` rewrite
3. `scripts/network_security_config.xml` — narrow cleartext allowlist for `127.0.0.1`
4. `build.yml` — new steps: build server module, bundle mirror, install netsec config, swap `getEffectiveApiUrl`
5. CI build → first APK artifact

Design: see `OFFLINE_NANO_DESIGN.md`.

---

## 2026-05-23 — Offline-nano content landed

### Java extension server module

- `extension/server/BannerHubLocalServer.java` — NanoHTTPD subclass; idempotent `startIfNotRunning()` static method; lazy bind to `127.0.0.1:8765`; resolves Application context via `ActivityThread.currentApplication()` reflection (no Context parameter needed from smali).
- `extension/server/LocalAssetServer.java` — serves files from APK `assets/local-mirror/<path>`; rejects traversal; strips query strings; returns `application/json; charset=utf-8`.
- `extension/server/LocalCdnServer.java` — serves component binary files from disk; search order `getFilesDir()/components/` → `getExternalFilesDir(null)/components/` → `/sdcard/BannerHub/components/`; chunked response for large files.
- `extension/server/lib/nanohttpd-2.3.1.jar` — vendored from Maven Central, 51211 bytes. BSD-3 license at `extension/server/lib/LICENSE-nanohttpd`.

### Smali URL chokepoint patch

`patches/smali_classes6/app/revanced/extension/gamehub/prefs/GameHubPrefs.smali`:

- Replaced the 130-line body of `getEffectiveApiUrl(Ljava/lang/String;)Ljava/lang/String;` with a 6-line stub that:
  1. Calls `Lapp/revanced/extension/gamehub/server/BannerHubLocalServer;->startIfNotRunning()V`
  2. Returns `"http://127.0.0.1:8765/"` regardless of input
- All upstream URL constants (`bannerhub-api.the412banner.workers.dev`, `gamehub-lite-api.emuready.workers.dev`) removed from the method
- The 3 callers (EggGameHttpConfig, ADB wifi HttpConfig, GameHubPrefs self-ref) are unchanged — they just read the new return value as Retrofit/OkHttp base URL
- Diff: `+9 / -127 lines` in the smali file

### Mirror bundling script

`scripts/prepare_local_mirror.py`:
- Copies 13 subtrees from `bannerhub-api` source (components/, simulator/, base/, card/, cloud/, devices/, email/, ems/, game/, heartbeat/, upgrade/, user/, vtouch/) into `assets/local-mirror/`
- Rewrites every `download_url` field from `https://github.com/The412Banner/bannerhub-api/releases/download/Components/...` → `http://127.0.0.1:8765/components-cdn/...`
- **Local test result**: 52 files copied, 3970 URL rewrites, zero leftover upstream URLs

### Network security config

`scripts/network_security_config.xml`:
- Allows cleartext traffic **only** to `127.0.0.1`
- All other domains stay HTTPS-only (narrower than `android:usesCleartextTraffic="true"`)

### build.yml + build-quick.yml updates

Both workflows updated:

- **javac+d8 step**: now uses `find extension -name '*.java'` (picks up `extension/server/`) and includes `nanohttpd-2.3.1.jar` on classpath + as d8 input
- **New step "Bundle local API mirror"**: clones `The412Banner/bannerhub-api` (--depth=1) and runs `prepare_local_mirror.py`
- **New step "Install network security config"**: drops the XML into `res/xml/` and patches `<application>` tag in AndroidManifest to reference it (replaces any existing attribute first)

`build-quick.yml` (used for the first MVP build) additionally:

- Renames package from `gamehub.lite` → **`banner.nano.offline`** so the APK coexists with BannerHub variants on the same device
- Sets `android:label="BannerHub Nano Offline"` (was "BannerHub PuBG" in the BannerHub pre/beta pkg-rename step)
- APK output named `BannerHub-Nano-Offline-<ref>-Normal.apk`

### Still pending before first CI run

- [ ] Upload `Gamehub-5.3.5-Revanced-Normal.apk` to a `base-apk` release on `bannerhub-nano-offline` — both workflows do `gh release download base-apk -R ${{ github.repository }}` so the new repo needs its own copy
- [ ] Commit + push the code changes
- [ ] Trigger `build-quick.yml` via workflow_dispatch
- [ ] Pull artifact, device-test

---
