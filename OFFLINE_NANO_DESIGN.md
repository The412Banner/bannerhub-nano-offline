# BannerHub Offline Nano — Design Note

**Project memory:** `~/.claude/projects/-home-claude-user/memory/project_bannerhub_offline_nano.md`
**Progress log:** `~/BANNERHUB_OFFLINE_NANO_PROGRESS_LOG.md`
**Date:** 2026-05-23
**Base:** BannerHub v3.7.5 stable, tag commit `caeaa9948`
**Branch:** `feature/offline-nano` (not yet created)

---

## TL;DR

Add an embedded NanoHttpd server to BannerHub 3.7.5 that mirrors the static-route output of bannerhub-api. The app's API base URL is funneled through one smali method (`GameHubPrefs.getEffectiveApiUrl`); patching that to return `http://127.0.0.1:51823/` captures every outbound API call. Catalog JSON + simulator endpoints are baked into `assets/local-mirror/`, with `download_url` fields pre-rewritten to point at the local server's CDN endpoint. Component file delivery (.wcp / .tzst) is served from the existing component-manager storage path. Dynamic routes (chat, vgabc proxy, token refresh) are intentionally **not** mirrored — they fail and fall through to v3.7.5's existing offline-launch path.

---

## Components

### 1. NanoHttpd server module (new Java code, dex'd into APK)

Source location in repo: `extension/server/`

Files:
- `BannerHubLocalServer.java` — extends `NanoHTTPD`, dispatches to handlers
- `LocalAssetServer.java` — serves files from `assets/local-mirror/`
- `LocalCdnServer.java` — serves binary component files from on-disk storage

Public API:
- `BannerHubLocalServer.startIfNotRunning(Context)` — idempotent, thread-safe, starts on first call. Returns immediately if already running.

The server is **lazy-started** on the first call to the patched `getEffectiveApiUrl` (which happens at `EggGameHttpConfig.<clinit>` time, i.e., before the first HTTP request). Lazy start means we don't need a manifest `<application android:name>` change.

### 2. NanoHttpd library — how to embed

NanoHttpd is `org.nanohttpd:nanohttpd:2.3.1` — single jar, ~50KB.

**Build-time pipeline (added to build.yml):**

```
1. Download nanohttpd-2.3.1.jar from Maven Central (or a vendored copy in the repo)
2. javac extension/server/*.java + nanohttpd jar → classes/
3. d8 classes/ → server.dex
4. baksmali server.dex → smali_server/
5. cp -r smali_server/* apktool_out_base/smali_classes17/  (or next free index)
```

The smali_classes17 (or chosen target) is appended **before** smali assembly. Important: per [[feedback_bannerhub_smali_classes12_rebuilt]], `smali_classes12/` is rebuilt at packaging and must not be used.

**Vendoring decision:** commit `nanohttpd-2.3.1.jar` into `extension/server/lib/` (tiny, license-permissive — BSD-3) rather than fetching from Maven Central at every CI run. Reproducible, hermetic.

### 3. The smali redirect (single patch)

`patches/smali_classes6/app/revanced/extension/gamehub/prefs/GameHubPrefs.smali`

Replace the entire body of `getEffectiveApiUrl(Ljava/lang/String;)Ljava/lang/String;` (lines 809–936) with:

```smali
.method public static getEffectiveApiUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    # BannerHub Offline Nano: lazy-start embedded NanoHttpd, return localhost
    invoke-static {}, Lapp/revanced/extension/gamehub/server/BannerHubLocalServer;->startIfNotRunning()V

    const-string p0, "http://127.0.0.1:51823/"

    return-object p0
.end method
```

This:
- Removes the `last_api_source` startup check (no longer needed — only one source possible)
- Removes the `getApiSource()`-branching logic
- Calls our server's idempotent start hook
- Returns localhost base URL

Caller sites are unchanged — `EggGameHttpConfig`, `HttpConfig` (ADB wifi), and the GameHubPrefs self-reference all just read the return value as a Retrofit base.

### 4. `assets/local-mirror/` layout

Mirrors the bannerhub-api repo structure 1:1. Generated at build time by a Python script that copies `~/bannerhub-api/{components,simulator}/` into the apktool output and rewrites `download_url` fields.

```
apktool_out_base/assets/local-mirror/
├── base/getBaseInfo
├── card/{getCtsList,getGameIcon,getNewsList,getTopPlatform}
├── cloud/game/check_user_timer
├── components/
│   ├── {box64,dxvk,vkd3d,drivers,games,steam,libraries}_manifest
│   ├── downloads
│   └── index
├── devices/getDevicesList
├── email/login
├── ems/send
├── game/{checkLocalHandTourGame,cts/report,getDnsIpPool,getGameCircleList,getSteamHost/index,userVideoNum}
├── heartbeat/game/{getUserPlayTimeList,start}
├── simulator/
│   ├── getTabList
│   ├── v2/{getAllComponentList,getComponentList,getContainerList,getDefaultComponent,getImagefsDetail}
│   ├── v2/getContainerDetail/{1..11}
│   └── executeScript/{generic,qualcomm,generic_steam,qualcomm_steam}
├── upgrade/getAppUpgradeApk
├── user/info
└── vtouch/startType_steam
```

### 5. `download_url` rewrite (build-time)

Catalog JSONs (`simulator/v2/getAllComponentList`, `getComponentList`, and the `components/*_manifest` files) contain `download_url` fields pointing at:
```
https://github.com/The412Banner/bannerhub-api/releases/download/Components/<filename>
```

Build-time Python script `scripts/prepare_local_mirror.py` (new file):
1. Reads each JSON file in `assets/local-mirror/`
2. Replaces the GitHub Releases URL prefix with `http://127.0.0.1:51823/components-cdn/`
3. Writes the result back

This keeps the rewrite logic out of NanoHttpd (which becomes a dumb file server).

### 6. NanoHttpd route handling

```
GET  /<any-path>          → assets/local-mirror/<path>     (LocalAssetServer)
GET  /components-cdn/<f>  → component file from disk        (LocalCdnServer)
ANY  /*                   → 404                             (lets app fall through)
```

`LocalCdnServer` looks up files by checking, in order:
1. `/sdcard/Android/data/banner.hub/files/components/<filename>` (BannerHub-private external)
2. App-internal `getFilesDir()/components/<filename>`
3. The existing component-manager storage path (TBD — verify during implementation)

If none found → 404 → app's download manager reports failure → user is prompted to use the component manager to add the file.

### 7. AndroidManifest changes

Add `android:usesCleartextTraffic="true"` to `<application>` if not already present. (BannerHub already does HTTP to multiple endpoints — likely already set; verify.)

If unset, prefer a `network_security_config.xml` that allows cleartext only to `127.0.0.1`:
```xml
<network-security-config>
  <domain-config cleartextTrafficPermitted="true">
    <domain includeSubdomains="false">127.0.0.1</domain>
  </domain-config>
</network-security-config>
```

This is the lesser-surface change.

### 8. Port strategy

**Pinned: 51823.** No discovery, no smali surgery for ephemeral ports.

Risk mitigation: if 51823 is bound by another process, `NanoHTTPD.start()` throws. We catch and retry on 51824, 51825, … up to 51833. The chosen port is stored in a static field and `getEffectiveApiUrl` returns the corresponding URL. (This adds a tiny bit of surgery — defer to v2 if MVP can pin and ship.)

For MVP: pin 51823, if bind fails, log + crash. Loopback collision on a single-app Android sandbox is extremely rare.

---

## build.yml additions (new steps)

Insert after "Decompile APK" step, before "Apply smali patches":

1. **Build NanoHttpd server module**
   ```yaml
   - name: Build NanoHttpd server module
     run: |
       mkdir -p server_build/classes
       javac -source 1.8 -target 1.8 \
         -cp extension/server/lib/nanohttpd-2.3.1.jar:$ANDROID_SDK/platforms/android-30/android.jar \
         -d server_build/classes \
         extension/server/*.java
       d8 --release \
         --lib $ANDROID_SDK/platforms/android-30/android.jar \
         --output server_build/dex \
         server_build/classes/app/revanced/extension/gamehub/server/*.class \
         extension/server/lib/nanohttpd-2.3.1.jar
       baksmali d server_build/dex/classes.dex -o server_build/smali
       mkdir -p apktool_out_base/smali_classes17
       cp -r server_build/smali/* apktool_out_base/smali_classes17/
   ```

2. **Bundle local-mirror assets**
   ```yaml
   - name: Bundle local API mirror
     run: |
       python3 scripts/prepare_local_mirror.py \
         --src ../bannerhub-api \
         --dst apktool_out_base/assets/local-mirror \
         --base-url http://127.0.0.1:51823
   ```
   (Script clones bannerhub-api at a pinned commit; or vendor a pre-generated mirror in this repo.)

3. **Add cleartext network security config**
   ```yaml
   - name: Allow cleartext to 127.0.0.1
     run: |
       cp scripts/network_security_config.xml apktool_out_base/res/xml/
       # patch AndroidManifest <application> to reference it
   ```

4. **Apply smali redirect patch** — extend the existing `Apply ... smali patch` python block with a new `patch(...)` call that swaps `getEffectiveApiUrl` body. Same anchor-based pattern as existing patches.

---

## Files touched / added

**New (in repo):**
- `extension/server/BannerHubLocalServer.java`
- `extension/server/LocalAssetServer.java`
- `extension/server/LocalCdnServer.java`
- `extension/server/lib/nanohttpd-2.3.1.jar` (vendored)
- `extension/server/lib/LICENSE-nanohttpd` (BSD-3)
- `scripts/prepare_local_mirror.py`
- `scripts/network_security_config.xml`

**Modified:**
- `.github/workflows/build.yml` — 4 new steps (server build, mirror bundle, netsec config, smali redirect)
- `patches/smali_classes6/app/revanced/extension/gamehub/prefs/GameHubPrefs.smali` — `getEffectiveApiUrl` body replaced (this part is just the patches/ smali; the inline build.yml swap would also work but patches/ is cleaner since the file already exists there)

**Not touched (deliberate):**
- `EggGameHttpConfig.smali` — chokepoint redirects upstream of it
- `TokenInterceptor.smali` — same
- Component manager — already handles .wcp ingestion
- `extension/Bh*.java` (configs worker callers) — let them fail offline

---

## Why this is safe

- One smali method replaced — minimal surface for regressions
- Online endpoints we don't mirror just fail → v3.7.5's offline-launch fallback (commits `7e026bb90`, `e1f52e1a5`, `9e386a9b9`, `6b730e165`) handles task skips
- NanoHttpd is BSD-3, ~50KB, well-known
- Lazy server start = no app-startup latency impact for users who never trigger an API call
- No new permissions required (INTERNET already declared; cleartext narrowed to 127.0.0.1 via netsec config)

---

## Open implementation questions to resolve

1. **Component-manager storage path** — exact filesystem location of installed .wcp files; needed for `LocalCdnServer` lookup
2. **Vendored mirror vs git-submodule of bannerhub-api** — pinned tarball at known commit is cleanest; submodule keeps fresher catalog without manual bumps
3. **Cleartext config** — verify BannerHub 3.7.5 base APK doesn't already block cleartext; check `AndroidManifest.xml` of base APK before adding netsec config

---

## Order of work

1. Branch `feature/offline-nano` off v3.7.5 tag
2. Add extension/server/ Java sources + vendored NanoHttpd jar
3. Add scripts/prepare_local_mirror.py + bake-in a snapshot of bannerhub-api static output
4. Add build.yml steps for server build + mirror bundle + netsec config
5. Add smali redirect patch
6. Trigger Any branch compilation; download APK
7. Device test: install fresh, attempt to add a game via component manager, launch
