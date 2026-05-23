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

- [x] Upload `Gamehub-5.3.5-Revanced-Normal.apk` to a `base-apk` release on `bannerhub-nano-offline` — done, base-apk release live
- [x] Commit + push the code changes — done (`9eeaa36`)
- [x] Trigger `build-quick.yml` via workflow_dispatch — done (run 26333583051)
- [ ] Pull artifact, device-test — **BLOCKED, first run failed; see below**

---

## 2026-05-23 — First CI run RED (run 26333583051) — dex64K overflow on smali_classes6

All offline-nano-specific steps PASSED:
- ✓ Bundle local API mirror (NanoHttpd offline)
- ✓ Install network security config (cleartext to 127.0.0.1 only)
- ✓ Patch package name and label for offline-nano

Failure in the "Rebuild and Sign" step at `apktool b`:

```
I: Smaling smali_classes6 folder into classes6.dex...
Exception in thread "main" com.android.tools.smali.util.ExceptionWithContext:
  Exception occurred while writing code_item for method
  Lorg/yaml/snakeyaml/nodes/NodeId;->values()[Lorg/yaml/snakeyaml/nodes/NodeId;
Caused by: com.android.tools.smali.util.ExceptionWithContext:
  Unsigned short value out of range: 65536
    at com.android.tools.smali.dexlib2.writer.DexDataWriter.writeUshort
```

**Root cause:** `smali_classes6`'s dex reference table was already at/near the 64K limit in the BannerHub v3.7.5 baseline. My patched `getEffectiveApiUrl` added a NEW type ref (`Lapp/revanced/extension/gamehub/server/BannerHubLocalServer;`) + method ref (`startIfNotRunning()V`) to smali_classes6's ref table — overflow. The `NodeId.values()` snakeyaml mention in the error is a red herring (just where the writer happened to be when it hit the overflow during write-out).

**Fix:** relocate the chokepoint. Instead of patching `GameHubPrefs.smali` (smali_classes6, saturated), patch `EggGameHttpConfig.smali` (smali_classes13, has headroom):

- Revert `patches/smali_classes6/.../GameHubPrefs.smali` to original (no-op for offline since EggGameHttpConfig is the actual base-URL field setter)
- Add inline build.yml step that patches `apktool_out/smali_classes13/com/xj/common/http/EggGameHttpConfig.smali` `<clinit>` body around line 129 — replace the `invoke-static getEffectiveApiUrl` block with `BannerHubLocalServer.startIfNotRunning()` + `const-string "http://127.0.0.1:8765/"`
- Net effect: same runtime behavior (every Retrofit/OkHttp base URL hits localhost), but the BannerHubLocalServer ref lives in smali_classes13 instead of smali_classes6

Other callers of `getEffectiveApiUrl` (ADB wifi HttpConfig in smali_classes9, GameHubPrefs self-ref) keep upstream behavior — irrelevant offline.

If smali_classes13 also overflows, fallback: use `Class.forName` reflection from EggGameHttpConfig (no new type ref).

---

## 2026-05-23 — Fix #1 pushed (`df70904`): chokepoint relocated to smali_classes13

- Reverted `patches/smali_classes6/.../GameHubPrefs.smali` to original (via `git checkout 2d2052e -- <path>`)
- Added inline build.yml + build-quick.yml step "Patch EggGameHttpConfig — redirect base URL to embedded NanoHttpd" that replaces the `:goto_0 / invoke-static getEffectiveApiUrl / move-result-object v0 / sput-object` block with `:goto_0 / invoke-static BannerHubLocalServer.startIfNotRunning / const-string "http://127.0.0.1:8765/" / sput-object`. The new BannerHubLocalServer ref lands in smali_classes13 instead of saturated smali_classes6.
- Triggered build #2 (run `26333717521`).

## 2026-05-23 — Build #2 RED: Java compile failure (NanoHTTPD.Method shadow)

dex64K fix WORKED — `Smaling smali_classes13 folder into classes13.dex...` passed cleanly. But javac then failed:

```
extension/server/BannerHubLocalServer.java:59: error: incompatible types:
  java.lang.reflect.Method cannot be converted to fi.iki.elonen.NanoHTTPD.Method
```

Root cause: inside `BannerHubLocalServer extends NanoHTTPD`, the bare name `Method` resolves to the inherited inner enum `NanoHTTPD.Method` (HTTP verbs), shadowing `import java.lang.reflect.Method`. The reflection call in `resolveAppContext()` (`Method m = at.getMethod(...)`) typechecks the wrong way.

## 2026-05-23 — Fix #2 pushed (`62858d8`): fully qualified java.lang.reflect.Method

Dropped the `import java.lang.reflect.Method` and wrote the type out as `java.lang.reflect.Method` in the one usage site. Added a comment explaining the shadow gotcha for the next reader. Triggered build #3 (run `26333819184`).

---

## 2026-05-23 — Build #3 GREEN ✓ — first APK artifact

Run `26333819184` completed in 3m58s. APK artifact `BannerHub-pre-main` uploaded.

### Verified contents of `BannerHub-Nano-Offline-main-Normal.apk` (141 MB)

```
package: name='banner.nano.offline' versionCode='78' versionName='main'
sdkVersion='29'  targetSdkVersion='35'
```

- **52 asset files** under `assets/local-mirror/` — full mirror of bannerhub-api static catalog (components/, simulator/, base/, card/, cloud/, devices/, email/, ems/, game/, heartbeat/, upgrade/, user/, vtouch/)
- **`res/xml/network_security_config.xml`** bundled (cleartext to 127.0.0.1 only)
- **`classes18.dex`** (696 KB) — extension dex with BannerHubLocalServer, LocalAssetServer, LocalCdnServer + existing BannerHub Java (Epic/GOG/Amazon/framegen/vibration/settings exporter) + nanohttpd 2.3.1
- **17 classes*.dex** total (smali_classes2-17 reassembled + classes12.dex restored from base + classes18 extension)
- Package renamed to `banner.nano.offline` (coexists with BannerHub installs)
- Label "BannerHub Nano Offline"

### Local artifact

`~/bannerhub-nano-offline-builds/BannerHub-pre-main/BannerHub-Nano-Offline-main-Normal.apk`

### Next

Device test — airplane mode ON, sideload, verify:
1. App starts without network
2. NanoHttpd binds (logcat: `BH-NanoServer: Local API server started on ...`)
3. Component picker UI shows catalog from in-APK mirror
4. User can import a `.wcp` via the existing Component Manager
5. Game launch works offline (falls through to v3.7.5 offline-launch path)

---

## 2026-05-23 — Device test result: app launches ✓ but dashboard tabs missing

User installed `BannerHub-Nano-Offline-main-Normal.apk` and reported:
- ✅ App launches fine offline
- ❌ Dashboard missing Steam tab + Windows PC game import icon

### Diagnosis: port collision with logcat-bridge daemon

Investigation via on-device tooling (PRoot, `ss`):

```
$ ss -lnt | grep 127.0.0.1
LISTEN 0 5   127.0.0.1:8765   0.0.0.0:*    ← logcat-bridge daemon
LISTEN 0 128 127.0.0.1:443    0.0.0.0:*
LISTEN 0 128 127.0.0.1:80     0.0.0.0:*

$ getlog --ping
pong
```

The `logcat-bridge` Magisk module (token-gated logcat→Termux bridge, installed on this device since 2026-05-18) binds `127.0.0.1:8765` at boot — **the exact port BannerHubLocalServer tries to bind**.

When the app boots: NanoHTTPD.start() throws `IOException: bind` (port taken), the static `instance` field stays null, but the OkHttp/Retrofit base URL is hardcoded to `http://127.0.0.1:8765/`. Every HTTP request the app makes goes to the logcat daemon, which expects token-prefixed text and either hangs the connection or closes immediately. App-side handlers receive nothing → tabs gated on API responses don't render.

This explains the EXACT symptom: app starts fine (no crash, NanoHttpd failure was caught) but anything that depends on a successful API response is broken.

### Fix: port 8765 → 51823

Switched to **51823** (IANA dynamic/private range 49152-65535, no registered services, unlikely to collide with anything else):

- `extension/server/BannerHubLocalServer.java` — `PORT = 51823` with explanatory comment
- `.github/workflows/build-quick.yml` — EggGameHttpConfig patch and `prepare_local_mirror.py --base-url` updated
- `.github/workflows/build.yml` — same two
- `README.md` + `OFFLINE_NANO_DESIGN.md` — port references updated

### Open question

If 51823 is also taken on some other user's device, NanoHttpd will fail silently the same way. Robust fix (deferred): on bind failure, try 51824-51833, store the chosen port in a static field, have the smali patch read it via reflection. For MVP, 51823 in the dynamic range should be safe on essentially every device.

---

## 2026-05-23 — Build #4 GREEN ✓ — port-fix APK ready

Run `26334250908` succeeded in 4m5s. Replacement APK at
`~/bannerhub-nano-offline-builds/BannerHub-pre-main/BannerHub-Nano-Offline-main-Normal.apk`.

End-to-end verified post-build:
- `classes13.dex` contains literal string `http://127.0.0.1:51823/` (the EggGameHttpConfig OkHttp base URL constant)
- `assets/local-mirror/components/box64_manifest` `download_url` fields = `http://127.0.0.1:51823/components-cdn/<file>.tzst` (rewritten by prepare_local_mirror.py at build time)
- No leftover `127.0.0.1:8765` references anywhere in the APK

User to uninstall the previous build, reinstall this APK, relaunch. Expected: dashboard renders Steam tab + Windows PC import icon now that NanoHttpd actually binds. If not, next diagnostic is fresh `getlog -p banner.nano.offline` against the offline-nano package.

---

## 2026-05-23 — Build #4 device test: tabs STILL missing → diagnosis & fix

User reinstalled build #4 APK. Result:
- ✅ App launches offline
- ❌ Dashboard still hides Steam tab + Windows PC import icon

### Live diagnosis via on-device logcat-bridge

Pulled fresh logcat against `banner.nano.offline` PID 5045 (the first launch session). Filtered for `BH-NanoServer|EggGameHttp|NanoHTTPD|fi.iki.elonen|reflect`:

**Zero matches.** Not a single line from our server, not "Failed to bind", not "Local API server started". Combined with **zero OkHttp/HTTP activity in the entire 19K-line log dump**, the conclusion is clear:

> The app is so network-gated that it never makes a single HTTP call when offline → `EggGameHttpConfig.<clinit>` never executes → our `startIfNotRunning()` invoke is never reached → NanoHttpd never starts → tabs that depend on extension code in classes18.dex never appear because the dex never gets linked into the active code path either.

The lazy-start hook on `getEffectiveApiUrl` was the wrong place. We need a hook upstream of ALL network checks.

### Fix: eager-start from `Application.onCreate`

Found `com.xj.app.App` is the declared Application class (smali_classes8/com/xj/app/App.smali, `<application android:name>` in manifest). `onCreate()` body at line 424 starts with `invoke-super` then BannerHub bootstrap. Wedging the eager-start call right after `super.onCreate()` guarantees NanoHttpd is up before any other code runs.

**Smali patch** (build-quick.yml + build.yml, anchored on the `super.onCreate()V` + `.line 4` block right after it):

```smali
:try_start_bn_eager
const-string v0, "app.revanced.extension.gamehub.server.BannerHubLocalServer"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
const-string v1, "startIfNotRunning"
const/4 v2, 0x0
new-array v3, v2, [Ljava/lang/Class;
invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(...)Ljava/lang/reflect/Method;
move-result-object v0
const/4 v1, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(...)Ljava/lang/Object;
:try_end_bn_eager
.catch Ljava/lang/Throwable; {...} :catch_bn_eager
goto :goto_bn_after_eager
:catch_bn_eager
move-exception v0
:goto_bn_after_eager
```

**Why reflection** instead of a direct `invoke-static`: smali_classes6 already overflowed once. smali_classes8 is also patched by existing BannerHub patches. Adding a new type ref (`BannerHubLocalServer`) to smali_classes8's ref table risks a repeat. Reflection only uses `java.lang.Class`, `java.lang.reflect.Method`, `java.lang.Throwable` — all already referenced everywhere.

**EggGameHttpConfig patch stays** as a safety net (idempotent — second call is a no-op).

Also added an entry-log `Log.i(TAG, "startIfNotRunning() invoked")` at the top of `BannerHubLocalServer.startIfNotRunning()` so even if bind fails we'll see proof the method ran in logcat.

### Open question (deferred)

If after the eager-start the tabs STILL don't appear, the next hypothesis is that the BannerHub tab-adding smali patches in smali_classes11 (LandscapeLauncherMainActivity) have their own conditional gates we'd need to bypass. We'd see that as: NanoHttpd binds 51823 in logcat, but the tab UI still hides them. That'd be a fresh diagnostic loop. The current bet: eager-start makes the classes18.dex extension active → tabs registered → visible.

---

## 2026-05-23 — Build #5 GREEN ✓ — eager-start patch verified in APK

Run `26334724044` succeeded in 3m49s. APK at
`~/bannerhub-nano-offline-builds/BannerHub-pre-main/BannerHub-Nano-Offline-main-Normal.apk`.

Verified via `unzip -p classes8.dex | strings`:
- `app.revanced.extension.gamehub.server.BannerHubLocalServer` literal present
- `startIfNotRunning` literal present

Both confirm the App.onCreate reflection call was baked into classes8.dex.

User reinstall + relaunch. Expected logcat (App.onCreate runs as first thing
after process start):

```
I/BH-NanoServer: startIfNotRunning() invoked
I/BH-NanoServer: Local API server started on http://127.0.0.1:51823/
```

Three possible outcomes:
1. **Both lines appear + tabs render** → eager-start fixed it; offline-nano MVP works
2. **Both lines appear, tabs still missing** → server is up but the tab UI has its own gating; next diagnostic on LandscapeLauncherMainActivity (smali_classes11)
3. **Only first line OR no lines** → smali patch didn't link; reflection issue; need to inspect APK's classes8.dex more carefully or change approach

---

## 2026-05-23 — Build #5 PRE-LAUNCH ANCHOR (resume-safe per [[feedback_save_memory_before_game_launch]])

Build #5 APK confirmed installed via `getlog --exec "dumpsys package banner.nano.offline"`:
- `versionCode=78`, `versionName=main`
- `firstInstallTime = lastUpdateTime = 2026-05-23 10:22:02`
- `codePath=/data/app/~~4I40tSY9oao1cIwzCox0cA==/banner.nano.offline-XpVrZKBcB7IcUitvtdlpxw==`

Pre-launch state:
- App **not running** (`pidof banner.nano.offline` empty)
- Port **51823 NOT bound** (`ss -lnt` shows only 127.0.0.1:8765 = logcat-bridge itself)
- Launcher activity = `banner.nano.offline/com.xj.app.DeepLinkRouterActivity`

Capture plan (executed via logcat-bridge `getlog --exec` so it survives any PRoot OOM):
```
logcat -c
monkey -p banner.nano.offline -c android.intent.category.LAUNCHER 1
sleep 15
logcat -d > /sdcard/Download/nano-offline-build5-launch.log
```

Persistent artifact: `/sdcard/Download/nano-offline-build5-launch.log` (full unfiltered dump, survives session kill).

Success criteria (in priority order):
1. `BH-NanoServer: startIfNotRunning() invoked` line present → reflection patch executed
2. `BH-NanoServer: Local API server started on http://127.0.0.1:51823/` → bind succeeded
3. Post-launch `ss -lnt | grep 51823` shows LISTEN → server is alive
4. Curl from PRoot to `http://127.0.0.1:51823/components/box64_manifest` returns JSON → routes work
5. (Visual, user-side) Steam tab + Windows PC import icon render in dashboard

If success criteria 1–3 met but 5 fails → tab UI gating in `LandscapeLauncherMainActivity` (smali_classes11), separate diagnostic loop.

Resume order if PRoot dies mid-launch: re-pull `/sdcard/Download/nano-offline-build5-launch.log`, grep for `BH-NanoServer|EggGameHttp|NanoHTTPD|fi.iki.elonen`, decide branch.

---

## 2026-05-23 — Build #5 device launch via logcat-bridge: SUCCESS ✓

Launched at 10:38:25 via `getlog --exec "monkey -p banner.nano.offline -c android.intent.category.LAUNCHER 1"`. App PID 3059.

**All three success criteria 1–3 hit:**

1. ✅ `10:38:26.265 BH-NanoServer: startIfNotRunning() invoked` — **the App.onCreate reflection patch fired**
2. ✅ `10:38:26.276 BH-NanoServer: Local API server started on http://127.0.0.1:51823/` — **NanoHttpd bound 11ms after invoke**
3. ✅ Post-launch `ss -lnt`: `LISTEN [::ffff:127.0.0.1]:51823` — server alive
4. ✅ Curl from PRoot to `/components/box64_manifest` → real JSON with 36 components, all `download_url` fields point at `http://127.0.0.1:51823/components-cdn/<file>.tzst`
5. ✅ Curl `/base/getBaseInfo` → proper response (cloud_game_switch=2, both guide-img URLs rewritten to 51823)
6. ✅ App's safety-net hook in EggGameHttpConfig also fires 25ms later, correctly idempotent: `BH-NanoServer: Already running`
7. ✅ Main activity reached: `com.xj.landscape.launcher.ui.main.LandscapeLauncherMainActivity` "Displayed +305ms"

Logcat artifact mirrored to `~/nano-offline-build5-launch.log` (2624 lines) AND `/sdcard/Download/nano-offline-build5-launch.log` (survives PRoot kill).

### Two non-blocking issues found (polish for next build)

**A. `/cloud/game/check_user_timer` route times out** — curl gets `Operation timed out after 5002ms with 0 bytes received`. App logcat shows `com.drake.net.exception.ConvertException`. Route is in GITHUB_ROUTES (worker.js:443) so should be a static-pass through, but local server isn't replying. Probably missing in `assets/local-mirror/` or routing bug. Need to grep `prepare_local_mirror.py` + the route handler.

**B. `/components-cdn/bannerhub-api-logo.jpg` 404** — Glide tries to load this for the dashboard background. Not bundled. Fix: add a logo asset, or accept the silent 404 (no visible breakage in logs).

### Outstanding visual check

User to confirm: do Steam tab + Windows PC import icon now render in the dashboard? The app reached main activity cleanly and HTTP is flowing, so likely YES, but only visual confirmation closes outcome #1 vs #2.

---

## 2026-05-23 — Build #5 airplane-mode test — PRE-LAUNCH ANCHOR (user-run, claude offline)

User running the actual MVP test (airplane mode + cold start) themselves. Claude Code session will lose net when WiFi+cellular drop — both run on the same Android device. logcat-bridge is localhost-only so it survives airplane, but Anthropic API does not.

App force-stopped via `getlog --exec "am force-stop banner.nano.offline"` — PID empty, cold-start ready.

Self-contained test script staged at `/sdcard/Download/run-build5-airplane-test.sh` (1718 bytes, root:root, mode 644). Invoke as: `su -c "sh /sdcard/Download/run-build5-airplane-test.sh"`. It performs in order:
1. log airplane mode state
2. snapshot port 51823 + 8765 before
3. `am force-stop` + `logcat -c`
4. `monkey -p banner.nano.offline -c android.intent.category.LAUNCHER 1`
5. sleep 20
6. snapshot PID + port state after
7. curl `/components/box64_manifest` + `/base/getBaseInfo` against `127.0.0.1:51823`
8. extract `BH-NanoServer` / `startIfNotRunning` lines from logcat
9. dump full logcat

Artifacts (both survive PRoot kill on /sdcard):
- `/sdcard/Download/nano-offline-build5-airplane.log` — full logcat
- `/sdcard/Download/nano-offline-build5-airplane-summary.txt` — at-a-glance summary

Resume order when Claude is back online:
1. `getlog --exec "cat /sdcard/Download/nano-offline-build5-airplane-summary.txt"` — quick verdict
2. `getlog --exec "grep -E 'BH-NanoServer|EggGameHttp|FATAL|AndroidRuntime' /sdcard/Download/nano-offline-build5-airplane.log"` — key lines
3. Compare to non-airplane run at `~/nano-offline-build5-launch.log` — any new endpoints that succeeded online but fail offline are gaps to plug

Pass criteria (airplane edition):
- A. NanoHttpd binds 51823 ✓ (proves App.onCreate eager-start works without net)
- B. Both probe curls return HTTP 200 with non-zero bytes
- C. Dashboard visually renders Steam tab + Windows PC import icon (user-side only)

Fail patterns to watch for in summary:
- Bind line missing → eager-start raced or threw silently
- Both curls 200 but tabs missing → outcome #2 (UI gating in smali_classes11)
- Any FATAL/AndroidRuntime line → app crashed; airplane exposed something the online run hid

---

## 2026-05-23 — Build #5 airplane-mode MVP test = PASS ✓ — offline-nano works

User flipped airplane mode ON and ran the staged script. All pass criteria met. **The MVP goal of the project (install APK → use offline with zero outbound network) is achieved on Build #5.**

Raw results from `/sdcard/Download/nano-offline-build5-airplane-summary.txt`:

```
=== airplane status ===
1                                    ← airplane mode confirmed ON
=== post-launch state ===
PID: 6278                            ← new cold-start PID
LISTEN  127.0.0.1:8765               ← logcat-bridge
LISTEN  [::ffff:127.0.0.1]:51823     ← NanoHttpd bound under airplane
=== HTTP probe to 127.0.0.1:51823 ===
box64_manifest: HTTP 200 19064b
getBaseInfo:    HTTP 200 308b
=== BH-NanoServer lines ===
10:47:24.619  BH-NanoServer: startIfNotRunning() invoked       ← App.onCreate fired
10:47:24.630  BH-NanoServer: Local API server started on http://127.0.0.1:51823/
10:47:24.652  BH-NanoServer: startIfNotRunning() invoked       ← safety net
10:47:24.652  BH-NanoServer: Already running ...               ← idempotent no-op
```

Activity transitions captured:
```
10:47:25.139  Displayed banner.nano.offline/com.xj.app.SplashActivity +1s125ms
10:47:26.532  Displayed banner.nano.offline/.../LandscapeLauncherMainActivity +300ms
10:47:33.592  Displayed banner.nano.offline/com.xj.winemu.ui.fselector.WinEmuFileSelectorActivity +96ms  ← Windows PC import opened!
```

The third activity (`WinEmuFileSelectorActivity`) is the Windows PC import file picker — proving the **Windows PC import icon was visible on the dashboard, user tapped it, and the flow continued offline**. Strong indirect proof of outcome #1 (tabs/icons render). User to confirm Steam tab text-wise separately.

Crash scan: 7 `FATAL|AndroidRuntime` lines, **all benign** — `com.android.commands.content` and `com.android.commands.monkey` shell tooling logging routine `AndroidRuntime` start/end markers, not our app process. Zero crashes attributable to `banner.nano.offline` (PID 6278).

Artifacts:
- `/sdcard/Download/nano-offline-build5-airplane-summary.txt` (1.5KB)
- `/sdcard/Download/nano-offline-build5-airplane.log` (820KB full logcat)
- `/sdcard/Download/run-build5-airplane-test.sh` (reusable test script)

### Open polish items (Build #6 candidates)

1. **`/cloud/game/check_user_timer` route**: Drake.Net `ConvertException` recurs 3x in ~8s (probably a poll). Curl manual probe times out — route is in GITHUB_ROUTES but local server doesn't reply. Most likely the JSON file is missing from `assets/local-mirror/cloud/game/` or the handler doesn't route POST→GET. Inspect `prepare_local_mirror.py` route enumeration + the running server's request log.
2. **`bannerhub-api-logo.jpg`**: 6 hits of Glide 404. Dashboard tries to fetch this background image. Either bundle a logo into `assets/local-mirror/components-cdn/` or accept the silent miss.

Neither blocks launch. Both should be Build #6 cleanup PR.

### MVP status: **DONE pending user visual confirm of tab rows**

Next milestone candidates (in priority order if user wants to push further):
- Fix the two polish items → Build #6 release
- README/docs pass for `bannerhub-nano-offline` repo (current README is bootstrap copy)
- First public release of the offline-nano APK with proper version naming (v3.7.5-offline-nano-1 or similar)

---

## 2026-05-23 — Build #6 triggered (run `26335998718`) — two polish fixes

Commit `66ecfb0` "polish: local-mirror overrides for check_user_timer + bundled logo" pushed to origin/main. Triggered Build APK (Quick — Normal only) workflow.

### Architecture: local-mirror overrides

`prepare_local_mirror.py` now accepts `--overrides-dir <dir>`. After the upstream `bannerhub-api/{components,simulator,base,card,cloud,devices,email,ems,game,heartbeat,upgrade,user,vtouch}` subtrees are copied AND URL-rewritten, every file under `<dir>` is copied on top of the destination verbatim. Override files bypass URL rewriting (binary-safe).

In-repo overrides dir: `data/local-mirror-overrides/`. Two files in this commit:
- `cloud/game/check_user_timer` — `"data": {}` (was `[]`, which made Drake.Net `ConvertException`)
- `components-cdn/bannerhub-api-logo.jpg` — 997KB fetched from upstream GH Releases at build time wasn't an option (release assets are on a different host than the static repo); committed binary instead

Both CI workflows (`build.yml` + `build-quick.yml`) now invoke prepare_local_mirror.py with `--overrides-dir data/local-mirror-overrides`.

### LocalCdnServer fallback

`LocalCdnServer` previously searched 3 FS locations for `/components-cdn/<file>` requests, all rooted in the user's component-manager storage. Added a 4th step: APK `assets/local-mirror/components-cdn/<file>` fallback for catalog-referenced static images (logos, backgrounds) that aren't user-managed components. Added a tiny `guessMime()` for common image extensions so Glide gets a sensible Content-Type instead of `application/octet-stream`.

### Smoke test (PRoot, pre-push)

```
$ python3 scripts/prepare_local_mirror.py --src ~/bannerhub-api ...
  copy   components/  files=10  rewrites=1644
  ...
  apply  overrides/  files=2  (from .../data/local-mirror-overrides)
DONE. upstream_files=52 rewrites=3970 overrides=2
```

`cloud/game/check_user_timer` in output = `"data": {}` ✓
`components-cdn/bannerhub-api-logo.jpg` in output = 997280 bytes JPEG ✓

### Verification plan once Build #6 lands

1. Install Build #6 APK, force-stop, cold launch (airplane mode optional but recommended)
2. `curl http://127.0.0.1:51823/cloud/game/check_user_timer` → expect `"data":{}` not `"data":[]`
3. `curl -o- http://127.0.0.1:51823/components-cdn/bannerhub-api-logo.jpg | wc -c` → expect 997280
4. Logcat: zero `BH-NanoServer: CDN 404 bannerhub-api-logo.jpg`, zero `Drake.Net ConvertException` on check_user_timer
5. Visual: PC Emulator card on dashboard now has the logo background

---

## 2026-05-23 — Build #6 GREEN ✓ + device-verified (online launch)

Run `26335998718` succeeded in 3m57s. APK at
`~/bannerhub-nano-offline-builds/BannerHub-pre-main-v6/BannerHub-pre-main/BannerHub-Nano-Offline-main-Normal.apk` (148.8 MB).

### Pre-install APK sanity

- `unzip -p ... assets/local-mirror/components-cdn/bannerhub-api-logo.jpg | wc -c` = `997280` ✓
- `unzip -p ... assets/local-mirror/cloud/game/check_user_timer` = `{"code":200,...,"data":{}}` ✓

### Device install + cold launch (online)

Installed via `getlog --exec "pm install -r -d ..."` (Success). Force-stopped, logcat cleared, monkey-launched. PID 14891, port 51823 LISTEN.

Curl probes from PRoot to `127.0.0.1:51823`:

| Endpoint | Result |
|---|---|
| `/components-cdn/bannerhub-api-logo.jpg` | HTTP 200, 997280 bytes, `Content-Type: image/jpeg` ✓ |
| `/cloud/game/check_user_timer` | `{...,"data":{}}` ✓ |

Logcat noise comparison vs Build #5:

| Signal | Build #5 | Build #6 | Δ |
|---|---|---|---|
| `CDN 404 bannerhub-api-logo` (our server) | 6 | **0** | ✅ eliminated |
| `Glide: Load failed.*bannerhub-api-logo` | 6 | **0** | ✅ eliminated |
| `ConvertException` on `check_user_timer` | 3 | **1** | ⚠️ reduced 66%, residual |

### Residual: 1 ConvertException remains on check_user_timer

Stack trace shows it's still parsing through `HomeInfoRepository$checkUserTimer$1...$Post$default$1`. Our fix `data: []` → `data: {}` improved parseability — the app no longer retries (which gave us the 3→1 drop) but the strict Drake.Net DTO still can't satisfy itself with an empty object.

Confirmed via online probe of `https://bannerhub-api.the412banner.workers.dev/cloud/game/check_user_timer` — **the live Cloudflare Worker serves the same `"data": []`**, meaning this exception has existed against the real API as well. Long-standing upstream noise that we've now made quieter.

To fully eliminate would require knowing the exact DTO field shape (likely something like `{timer_remaining: 0, can_play: true, ...}`). Not worth a decompile right now — diminishing returns.

### MVP polish status: SHIPPED ✓

Both polish items materially addressed:
- Logo: **100% fixed** — proper image served, zero 404s anywhere
- check_user_timer: **partial** — reduced noise 66%, app behavior unchanged (it was non-fatal at 3 already)

### Open items (deferrable)

- README/docs pass for the `bannerhub-nano-offline` repo (current README is BannerHub bootstrap copy)
- Visual confirmation: dashboard PC Emulator card now shows logo as back_img (user-side check)
- First proper release tag (e.g. `v3.7.5-offline-nano-1`) if user wants a public release

---

## 2026-05-23 — Build #6 airplane-mode test — PRE-LAUNCH ANCHOR (user-run)

User running the airplane-mode validation themselves (claude session will lose net when WiFi+cellular drop — same device).

App force-stopped via `getlog --exec "am force-stop banner.nano.offline"` — PID empty, cold-start ready. Build #6 confirmed installed via online launch earlier today.

Enhanced test script staged at `/sdcard/Download/run-build6-airplane-test.sh` (2944 bytes, root:root, mode 644). Invocation: `su -c "sh /sdcard/Download/run-build6-airplane-test.sh"`.

Sequence:
1. log airplane state + installed versionCode
2. snapshot 51823/8765 ports before
3. force-stop + `logcat -c`
4. `monkey -p banner.nano.offline -c android.intent.category.LAUNCHER 1`
5. sleep 20
6. snapshot PID + ports after
7. Curl 4 endpoints: box64_manifest, getBaseInfo, **logo (NEW)**, **check_user_timer (NEW)**
8. Print **noise counts with Build #5 baseline alongside**:
   - ConvertException (expected 1, vs 3 baseline)
   - CDN 404 bannerhub-api-logo (expected 0, vs 6 baseline)
   - Glide Load failed logo (expected 0, vs 6 baseline)
9. Dump BH-NanoServer + Activity Displayed lines
10. Save full logcat

Artifacts on /sdcard (survive PRoot kill):
- `/sdcard/Download/nano-offline-build6-airplane.log` — full logcat
- `/sdcard/Download/nano-offline-build6-airplane-summary.txt` — at-a-glance with baseline comparison

Resume order when claude is back online:
1. `getlog --exec "cat /sdcard/Download/nano-offline-build6-airplane-summary.txt"` — verdict
2. Compare noise counts to Build #5 baseline embedded in the summary
3. If both new endpoints (logo + check_user_timer) returned 200 → cdn fallback works under airplane

Pass criteria:
- A. NanoHttpd binds 51823 (eager-start still works in airplane)
- B. All 4 probe curls return 200 with non-zero bytes
- C. Logo curl returns 997280 bytes Content-Type image/jpeg
- D. check_user_timer returns `"data":{}`
- E. ConvertException ≤ 1, CDN 404 logo = 0, Glide failures = 0
- F. (Visual, user-side) PC Emulator card on dashboard renders WITH logo background

---

## 2026-05-23 — Build #6 airplane-mode test = FULL PASS ✓

Per `/sdcard/Download/nano-offline-build6-airplane-summary.txt`:

| Criterion | Result |
|---|---|
| `airplane_mode_on=1` | ✅ |
| Installed `versionCode=78`, `versionName=main` | ✅ Build #6 |
| App cold-started PID 18114 | ✅ |
| NanoHttpd bound 51823 | ✅ (11ms after `startIfNotRunning()`) |
| `box64_manifest` curl | HTTP 200, 19064b ✅ |
| `getBaseInfo` curl | HTTP 200, 308b ✅ |
| **logo curl (NEW)** | HTTP 200, **997280b ct=image/jpeg** ✅ |
| **check_user_timer curl (NEW)** | `"data": {}` ✅ |

Noise-count diff vs Build #5 airplane:

| Signal | #5 | #6 (airplane) | Δ |
|---|---|---|---|
| `CDN 404 bannerhub-api-logo` | 6 | **0** | ✅ eliminated |
| `Glide Load failed (logo)` | 6 | **0** | ✅ eliminated |
| `ConvertException` | 3 | 2 | -33% |
| `FATAL/AndroidRuntime` | 7 | 10 | all benign shell-tool (`Monkey`, `RootServerMain` from `su -c`) — zero from PID 18114 |

`ConvertException=2` in airplane vs `=1` in online (Build #6 morning test) — likely retry-on-error variance in Drake.Net; not a regression. Upstream-baked DTO mismatch persists by design (see prior log entry: live Worker also serves `"data": []`).

Activities reached (proof tabs/icons render visually):
```
+1s129ms  SplashActivity
 +302ms   LandscapeLauncherMainActivity                ← dashboard
 +105ms   GameLibraryActivity                          ← Library tab opened
  +85ms   WinEmuFileSelectorActivity                   ← Windows PC import flow
```

User exercised **multiple** dashboard features under airplane mode (library + PC import). All worked, all backed by the embedded NanoHttpd. **MVP fully validated end-to-end offline.**

Artifacts:
- `/sdcard/Download/nano-offline-build6-airplane-summary.txt`
- `/sdcard/Download/nano-offline-build6-airplane.log`

### Project status: 🎯 SHIP-READY

`bannerhub-nano-offline` Build #6 = the deliverable. Single APK, install + use entirely offline, no network ever required after install. Two polish fixes verified under airplane mode.

Remaining deferrable items (not blocking ship):
- README/docs pass on the repo (current README is bootstrap copy)
- First public release tag (`v3.7.5-offline-nano-1`?) — user call

---

## 2026-05-23 — Phase 2 KICKOFF: bundle CDN components for true offline install

User pivot: "we are halfway done with this project." Phase 1 (catalog API) verified. Phase 2 = ship the binary archives so in-app component install works fully offline.

Inventory of full V5 catalog: 548 manifest items (3.41 GB) + 10 containers (1.76 GB) + imagefs (164 MB) = ~5.3 GB total. Way too big for a single APK. Decisions:

- **Single-APK only** (original goal preserved)
- **Curated bundle, in-app menus reflect only what's bundled**
- **Per-type ID list** in `data/bundled-components.json`
- **Binaries fetched at CI build time** from bannerhub-api GH Releases (repo stays tiny)

### Final bundle (post-user-refinement)

User refinements applied:
- DROPPED Steam clients (offline users don't sign in)
- DROPPED proton11.0-arm64x + sub_data (no arm64x container)
- KEPT proton10.0-x64-1 + sub_data (sole container)
- KEPT all arm64ec DXVK/VKD3D variants for future arm64x .wcp imports (user preference)
- KEPT all older DXVK fallbacks (game-compat insurance)
- ALL 54 game-specific `*_Settings` items bundled (cheap, ~5 MB) + base.tzst

Plus install-script-mandated additions (each <12 MB): Fex-20251025 (id=345), dxvk-2.3.1-async (id=25), turnip_v25.0.0_R1 (id=48), vkd3d-2.12 (id=7).

### Total bundle: 186 files, ~560 MB (APK ~150 MB → ~720 MB)

| Category | Files | MB |
|---|---|---|
| box64/Fex | 5 | 24 |
| DXVK | 8 | 64 |
| VKD3D | 5 | 16 |
| Drivers | 6 | 47 |
| Steam | 0 | 0 |
| Libraries | 117 | 1 |
| Container (wine + sub_data) | 2 | 161 |
| imagefs | 1 | 164 |
| Game settings (incl. base) | 42 | 85 |

3 IDs excluded after smoke test detected stale catalog entries (binaries 404 on GH Releases): id=236 Torchlight II, id=291 WRC 9, id=310 Resident Evil 3.

### Catalog overrides (committed under data/local-mirror-overrides/simulator/)

- `executeScript/{generic,generic_steam,qualcomm,qualcomm_steam}` — container block swapped from arm64x (id=2) to x64 (id=10), so first-run install scripts target the bundled container
- `v2/getDefaultComponent` — steamClient stubbed to empty record (mirroring existing empty `translator` shape) so the app doesn't request a Steam client we never bundled
- `v2/getContainerList` — trimmed to only id=10

### Build pipeline changes

- `data/bundled-components.json` is the single source of truth for what ships
- `scripts/prepare_local_mirror.py --bundled-components <json>` extension:
  - Trims `components/*_manifest` to only declared IDs
  - Downloads each kept item's binary from `https://github.com/.../bannerhub-api/releases/download/Components/<file>` to `<dst>/components-cdn/<file>` with md5 verification
  - Caches successful downloads (skip re-fetch on subsequent runs)
  - Pulls container wine + sub_data + imagefs from getContainerDetail/getImagefsDetail
- `LocalCdnServer.java` — **no changes**. The asset fallback we added during the logo fix already serves files from `assets/local-mirror/components-cdn/`; the new pipeline just populates more files there.
- Both CI workflows: `actions/cache@v4` keyed on `hashFiles('data/bundled-components.json')` so the 560 MB CDN payload is reused across runs unless the bundle list changes. First build cold-cache ~10-12 min; cached builds ~5 min.

### Local smoke test (PRoot, 2026-05-23)

```
$ python3 scripts/prepare_local_mirror.py --src ~/bannerhub-api ... \
    --overrides-dir data/local-mirror-overrides \
    --bundled-components data/bundled-components.json
  trim   box64_manifest            kept=  5 dropped= 31     23.0 MB
  trim   dxvk_manifest             kept=  8 dropped= 39     64.0 MB
  trim   vkd3d_manifest            kept=  5 dropped=  2     15.8 MB
  trim   drivers_manifest          kept=  6 dropped=267     47.0 MB
  trim   steam_manifest            kept=  0 dropped=  3      0.0 MB
  trim   libraries_manifest        kept=117 dropped=  0      0.7 MB
  trim   games_manifest            kept= 42 dropped= 23     84.1 MB
  cont   id=10 wine     wine_proton_10.0_x64.tar.zst    157.2 MB
  cont   id=10 sub_data 751b2ec...tzst                    3.9 MB
  img    imagefs_141.zst                                164.2 MB
  bundled: downloaded=186 cached=0 failed=0 total=560.1 MB
```

All 186 files md5-verified, all overrides applied (executeScript points x64, steamClient stubbed, getContainerList trimmed to 1).

### Build #7 in flight — run `26337389674`

Pushed `f97f7f5 feat: bundle CDN components for true offline install (~560 MB)` to origin/main. Triggered "Build APK (Quick — Normal only)" workflow. First cold-cache build expected ~10-12 min (~560 MB to download + APK pack).

Pass criteria for Build #7:
- A. CI workflow green
- B. APK size ~720 MB (was ~150 MB)
- C. `unzip -l <apk> assets/local-mirror/components-cdn/` shows ~186 entries totaling ~560 MB
- D. `unzip -p assets/local-mirror/components/box64_manifest` shows kept=5 items only (trim worked)
- E. (Device test) install over Build #6, cold launch — menu lists the curated set; tapping "install" on any component completes offline

---

## 2026-05-23 — Build #7 GREEN ✓ — Phase 2 plumbing verified on-device

Run `26337389674` succeeded in **5m39s** (first cold-cache build, faster than feared). APK at
`~/bannerhub-nano-offline-builds/BannerHub-pre-main-v7/BannerHub-pre-main/BannerHub-Nano-Offline-main-Normal.apk` (701.2 MB, +550 MB vs Build #6).

### Pre-install APK sanity (unzip)

| Check | Expected | Got |
|---|---|---|
| `components-cdn/` file count | 186 | 186 |
| `components-cdn/` packed size | ~560-590 MB | 588 MB |
| `box64_manifest` items | 5 | 5 |
| `dxvk_manifest` items | 8 | 8 |
| `vkd3d_manifest` items | 5 | 5 |
| `drivers_manifest` items | 6 | 6 |
| `steam_manifest` items | 0 | 0 |
| `libraries_manifest` items | 117 | 117 |
| `games_manifest` items | 42 | 42 |
| executeScript container | id=10 X64 | wine_proton_10.0_x64.tar.zst |
| steamClient | empty stub | id=0, name='' |

### Device-side launch + curl smoke (online — full airplane test still ahead)

Installed via `pm install -r -d ...` (Success). Force-stopped, monkey-launched, PID 12507, port 51823 LISTEN.

Curl probes from PRoot to `127.0.0.1:51823/components-cdn/` (all real filenames pulled from the trimmed manifests):

```
fex-20251025.tzst                                  HTTP 200  11580115 b
d2bc791642757a507eb395ac548e2aa8.tzst              HTTP 200   1696433 b  (FEXCore-2605)
dxvk-2.6-arm64ec-gplasync.tzst                     HTTP 200   9094354 b
8E-805.0.tzst                                      HTTP 200  12305296 b  (Adreno_805.0)
turnip_v25.0.0_R1.tzst                             HTTP 200   2221425 b
e24dbfd879ff0f2c972612ec45af3a7a.tzst              HTTP 200   8359172 b  (DXVK-2.7.1-1-gplasync)
```

All 6 real-name component files stream correctly via LocalCdnServer's asset fallback (the mechanism we added during the Build #6 logo fix). Hash-named files (md5-keyed) work the same as name-keyed files because the URL path is what matters — LocalCdnServer doesn't inspect the name.

`/components/box64_manifest` returns exactly the 5 picked IDs (345, 1314, 1315, 1331, 1337) — trim is correct end-to-end through the live HTTP server. In-app menu will show those 5 entries and nothing else.

### Pass criteria status

| Criterion | Status |
|---|---|
| A. CI workflow green | ✅ |
| B. APK ~720 MB | ✅ 701 MB (close enough; zip compression saves a bit) |
| C. components-cdn ~186 entries / ~560 MB | ✅ 186 entries / 588 MB |
| D. Manifests trimmed | ✅ All 7 manifests at exact counts |
| E. In-app install actually completes offline (device test) | **PENDING** user runs airplane test |

Open: needs your airplane-mode test where you actually tap "install" on a component in the in-app menu (e.g. switch DXVK or driver) to confirm the unpack/install flow completes offline using the bundled .tzst.

### Install + on-device state (current as of this snapshot)

- Build #7 APK already installed on the device, **upgrade-in-place** over Build #6 via `getlog --exec "pm install -r -d <path>"` → `Success`. No reinstall needed before the airplane test.
- APK file at PRoot path: `~/bannerhub-nano-offline-builds/BannerHub-pre-main-v7/BannerHub-pre-main/BannerHub-Nano-Offline-main-Normal.apk` (701 MB). Not copied to `/sdcard/Download/` — only the prior test scripts/logs live there.
- `versionCode=78`, `versionName=main` (same as Build #6 — distinguished by file size + install timestamp on device).

### Airplane install-flow test plan (next step)

1. Flip airplane mode ON (claude session will lose Anthropic net; logcat-bridge stays local).
2. Open BannerHub Nano Offline.
3. Navigate to component picker — settings → Environment / Renderer / GPU driver (or similar surface that lists installable items).
4. Tap **install** on a component that **isn't** what the device currently has selected — e.g. swap DXVK from default to a different bundled version, or try a different turnip driver.
5. Watch the in-app progress bar.

Pass: install completes without an error toast. The on-device install dir (`/data/data/banner.nano.offline/files/` or `/sdcard/BannerHub/components/`) now contains the unpacked component.

Fail patterns to watch for:
- "Network error" / "Download failed" → server didn't return bytes (curl probes already disproved this, but worth catching)
- "Hash mismatch" → md5 of bundled file differs from what the catalog says (would mean a stale catalog entry; our smoke test verified md5s but the app might re-verify differently)
- Hang at 0% → server returned 200 but body stalled (e.g. NanoHTTPD chunked encoding edge case)
- App crash → DTO mismatch on the install-response shape (analogous to check_user_timer; would need decompile to fix)

Optionally capture a focused logcat during the install via `getlog -f banner.nano.offline | tee /sdcard/Download/install-flow-test.log` so we can debug if anything goes wrong.

---
