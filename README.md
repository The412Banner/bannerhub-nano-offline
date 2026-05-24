<p align="center">
  <img src="assets/bannerhub-logo.jpg" alt="BannerHub Nano Offline" width="600"/>
</p>

# BannerHub Nano Offline

<p align="center">
  <a href="https://discord.gg/n8S4G2WZQ4"><img src="https://img.shields.io/badge/Discord-Join%20Server-5865F2?logo=discord&logoColor=white&style=for-the-badge" alt="Join the The412Banner Discord"/></a>
  <a href="https://github.com/The412Banner/bannerhub-nano-offline/releases"><img src="https://img.shields.io/github/downloads/The412Banner/bannerhub-nano-offline/total.svg?logo=github&label=Downloads&color=blue&style=for-the-badge" alt="Total downloads"/></a>
  <a href="https://github.com/The412Banner/bannerhub-nano-offline/releases/latest"><img src="https://img.shields.io/github/downloads/The412Banner/bannerhub-nano-offline/latest/total.svg?logo=github&label=Latest%20Release&color=brightgreen&style=for-the-badge" alt="Latest release downloads"/></a>
</p>

<p align="center">
  <a href="https://github.com/The412Banner/bannerhub-nano-offline/releases/latest"><strong>📥 Latest release</strong></a>
</p>

> [!WARNING]
> **THIS IS NOT AN UPDATE TO ANY OF THE BANNERHUB PROJECTS — AND IT IS NOT FOR MOST USERS.**
>
> If you have normal home internet, mobile data, or any reliable Wi-Fi, **you do not want this build.** Use [BannerHub](https://github.com/The412Banner/BannerHub), [BannerHub-Lite](https://github.com/The412Banner/BannerHub-Lite), or [BannerHub-ReVanced](https://github.com/The412Banner/bannerhub-revanced). Those have the full online catalog, online login for GOG/Epic/Amazon/Steam, online community game configs, online self-update, and a download size measured in megabytes instead of hundreds of megabytes.
>
> Nano Offline exists for the ~5–10% of users who genuinely **cannot** rely on the network at install/launch time:
> - Rural or developing-region users on metered, intermittent, or non-existent connectivity
> - Users who have to travel meaningful distances to a public Wi-Fi spot just to download anything
> - Users in regions where the bannerhub-api host is blocked or unreachable
>
> If that's not you, this build trades **a ~700 MB APK** and **several broken features** (online search, self-update, community configs, GOG/Epic/Amazon logins in airplane mode) for one thing: the ability to add and launch a PC game with the radio off. That tradeoff is only worth it if you actually need it.
>
> The main BannerHub line (BannerHub, BannerHub-Lite, BannerHub-ReVanced) is **unaffected** by this release — those continue on their own release schedule.

**A fully offline build of [BannerHub](https://github.com/The412Banner/BannerHub) v3.7.5.** Ships with an embedded HTTP server (NanoHttpd) that mirrors the static-route output of the bannerhub-api Cloudflare Worker locally on `127.0.0.1`. The app never reaches the network for its core install / launch flow — everything is served from inside the APK.

Install the APK, add your `.wcp` components via the in-app Component Manager, add a game, launch. No internet required.

> **Compatibility Layers (new in v0.2)** — the side drawer now has a Compatibility Layers screen. v0.2 ships with Proton 10.0 x64 bundled (works fully offline out of the box) plus 9 more layers (Proton 8/9/10/GE, Wine 7/8/9/10) that download on demand. After one online download per layer, the bytes live inside the app and are served by the embedded `127.0.0.1` server forever after — every later install/mount stays offline.

## What works offline

- ✅ All component manifests (Box64/FEX, DXVK, VKD3D, GPU drivers, libraries, Steam, games)
- ✅ Simulator catalog endpoints (component list, container list, default component, imagefs detail, executeScript)
- ✅ Add-a-game flow (works against the in-APK catalog)
- ✅ Game launch (uses BannerHub 3.7.5's offline-launch path, which skips network-gated install tasks)
- ✅ Component download → served by the embedded server from the Component Manager's local storage
- ✅ Compatibility Layers screen (v0.2+) → BUNDLED layer works in airplane mode out of the box; downloaded layers persist locally and serve offline thereafter
- ✅ Per-game settings, AI frame generation, vibration, HUD, performance toggles, RTS controls — all the BannerHub 3.7.5 local features

## What does not work offline

The features below sit in one of two categories. The first set still works the same as upstream BannerHub when you have internet — they each use their own HTTP client and bypass the embedded local server entirely. The second set is **broken regardless of internet state in this build**, because the patched `GameHubPrefs.getEffectiveApiUrl()` unconditionally points the global Drake.Net Retrofit client at `127.0.0.1:51823`, so any feature that uses that client gets a 404 from the local server (which only implements the static catalogs needed to launch a PC game).

### ⚠️ Internet required — work with internet, fail in airplane mode

These each have their own OkHttp or HttpURLConnection client that talks to its provider directly:

- ⚠️ **Internet required** — Compatibility Layers initial download (one-time fetch per non-bundled layer from `github.com` via `ContainerDownloader`; the bytes are then served locally forever)
- ⚠️ **Internet required** — GOG Games login + downloads (`GogApiClient` / `GogAuthClient` / `GogDownloadManager` → `gog.com`)
- ⚠️ **Internet required** — Epic Games login + downloads (`EpicApiClient` / `EpicAuthClient` / `EpicDownloadManager` → `epicgames.com`)
- ⚠️ **Internet required** — Amazon Games login + downloads (`AmazonApiClient` / `AmazonAuthClient` / `AmazonDownloadManager` → `amazon.com`)
- ⚠️ **Internet required** — Community game configs browser (`BhGameConfigsActivity` → `bannerhub-configs-worker.the412banner.workers.dev` + `raw.githubusercontent.com` + Steam Store search)

### ❌ Broken regardless of internet — routed to local server, returns 404

These use Drake.Net's global Retrofit instance, which is forcibly routed to `127.0.0.1:51823`:

- ❌ **Broken in this build** — App self-update check (`ApkUpdateUtils.checkUpdate` via Drake.Net)
- ❌ **Broken in this build** — Token refresh for the official Xiaoji login (`TokenProvider.refreshTokenForOfficialApi` → defers to upstream Drake.Net path)
- ❌ **Broken in this build** — Online game search through the Xiaoji backend (`SearchGameRepositoryV4` via Drake.Net)
- ❌ **Broken in this build** — Steam Community feed augmentation in the launcher UI (routes through Drake.Net for the BannerHub-side calls; in-game Steam network traffic via the JavaSteam library is unaffected and still works in-container with internet)

If you specifically need any of these, run upstream [BannerHub](https://github.com/The412Banner/BannerHub) instead — this fork's whole point is to trade them for a self-contained APK that launches PC games in airplane mode.

## How it works

The Cloudflare Worker that BannerHub normally talks to has been baked into the APK as a tiny embedded HTTP server. At startup the app calls `GameHubPrefs.getEffectiveApiUrl(...)` which has been patched to lazy-start the local NanoHttpd server and return `http://127.0.0.1:51823/`. Every Retrofit/OkHttp client built downstream uses that base URL. The server reads its catalog from `assets/local-mirror/` (a snapshot of the bannerhub-api static output) and serves component `.wcp` / `.tzst` files from the Component Manager's storage path.

See [`OFFLINE_NANO_DESIGN.md`](OFFLINE_NANO_DESIGN.md) for full architecture details.

## Why is the APK ~700 MB?

Most of it is files that BannerHub would normally download from `bannerhub-api` the first time you launch a game. Nano Offline ships those bytes inside the APK so the app can complete every install / mount step in airplane mode without ever touching the network. Concretely, of the ~703 MB Normal APK:

| Slice                                                   | Size      | What it is                                                                 |
|---------------------------------------------------------|-----------|----------------------------------------------------------------------------|
| `assets/local-mirror/components-cdn/` (bundled archives)| **~561 MB** | Firmware + Proton 10.0 wineprefix + base wineprefix + curated component set |
| `classes*.dex` (Java code)                              | ~106 MB   | The BannerHub 3.7.5 app itself + our extension classes                     |
| `lib/arm64-v8a/` (native libs)                          | ~56 MB    | ffmpeg, WebRTC, etc. — shipped by upstream BannerHub                       |
| Fonts, resources, signing, etc.                         | the rest  |                                                                            |

The three single largest files account for **~400 MB**:

| File                                | Size    | Why it's there                                                       |
|-------------------------------------|---------|----------------------------------------------------------------------|
| `imagefs_141.zst`                   | 164 MB  | Firmware 1.4.1 — the Linux rootfs every container mounts on top of   |
| `wine_proton_10.0_x64.tar.zst`      | 157 MB  | The bundled Proton 10 wineprefix (so airplane install works out of the box) |
| `base_v101.tzst`                    | 79 MB   | Base wineprefix the Proton layer overlays                            |

Everything else in `components-cdn/` is the curated component set: 5 translators (Box64 / FEX), 8 DXVK variants, 5 VKD3D variants, 6 GPU drivers, the firmware/Wine deps. Each is small individually (~5–15 MB) but BannerHub's per-category pickers need a representative subset bundled or the picker shows nothing in airplane mode.

### Why isn't everything bundled?

Upstream `bannerhub-api` carries ~548 component entries — every version of every component BannerHub has ever shipped. We keep a curated subset per category (defined in [`data/bundled-components.json`](data/bundled-components.json)) so the APK stays installable and the in-app pickers stay usable. The v0.2 build's actual trim, straight from CI:

| Manifest             | Kept | Dropped | Bundled bytes |
|----------------------|-----:|--------:|--------------:|
| box64 (translators)  | 5    | 31      | 23 MB |
| dxvk                 | 8    | 39      | 64 MB |
| vkd3d                | 5    | 2       | 16 MB |
| drivers (GPU)        | 6    | 267     | 47 MB |
| steam                | 0    | 3       | 0 MB |
| libraries            | 117  | 0       | 0.7 MB |
| games (configs)      | 42   | 23      | 84 MB *(base.tzst is 79 MB of this)* |
| containers (wineprefixes) | 1 | 9 *(now downloadable via UI)* | 161 MB |
| imagefs (firmware)   | 1 (v1.4.1) | several older | 164 MB |
| **Total**            | **186 files** | **365 components + 9 containers + older firmwares** | **560 MB** |

Bundling everything would push the APK to roughly **5.5–6 GB**:

| Slice                                       | v0.2     | Full-fat estimate |
|---------------------------------------------|---------:|------------------:|
| GPU drivers (267 dropped × ~8 MB)           | 47 MB    | ~2.1 GB |
| DXVK (39 dropped × ~8 MB)                   | 64 MB    | ~380 MB |
| Box64/FEX (31 dropped × ~5 MB)              | 23 MB    | ~170 MB |
| Other components                            | ~140 MB  | ~180 MB |
| Containers (9 extra @ 150–250 MB each)      | 161 MB   | ~1.9 GB |
| Imagefs (firmware 1.3.x, 1.4.0, …)          | 164 MB   | ~0.8–1.5 GB |
| App code + native libs + resources          | ~160 MB  | ~160 MB |
| **APK total**                               | **703 MB** | **~5.5–6 GB** |

Two practical ceilings hit before the math matters: GitHub release assets cap at **2 GB per file**, and Android's installer/Play limits are a separate constraint. So a full-fat APK can't ship as a single download — curation isn't a stylistic choice.

The v0.2 **Compatibility Layers** screen is the escape hatch for the largest slice: bundle one Proton wineprefix, let users pull additional layers on demand. Downloaded layers land in `/data/data/banner.nano.offline/files/local-mirror/components-cdn/` (~150–220 MB each) and are served by the embedded `127.0.0.1` server forever after — so the APK file itself stays at the release-page size no matter how many layers you've added.

## Installation

1. Download the latest APK from the [Releases page](https://github.com/The412Banner/bannerhub-nano-offline/releases/latest)
2. Install (allow installs from unknown sources if needed)
3. Open the app — first launch starts the embedded server automatically
4. Use the Component Manager to install your `.wcp` files (drag-drop or file picker)
5. Add a game and launch — no internet required

## Relationship to upstream BannerHub

This is a derivative of [The412Banner/BannerHub](https://github.com/The412Banner/BannerHub) v3.7.5 with the offline-server changes layered on top. All the features from BannerHub 3.7.5 are present and patched the same way — only the API base URL and asset bundling differ.

## Credits

- **Embedded HTTP server** — [NanoHttpd](https://github.com/NanoHttpd/nanohttpd) (v2.3.1). The `127.0.0.1:51823` server that backs every offline catalog and binary fetch in this fork is the NanoHttpd library. Licensed under the **BSD-3-Clause** license: *Copyright (c) 2012-2016, NanoHttpd. All rights reserved.* The full license text is reproduced verbatim in [`extension/server/lib/LICENSE-nanohttpd`](extension/server/lib/LICENSE-nanohttpd) and ships inside every released APK. Per the BSD-3-Clause terms, neither the NanoHttpd name nor its contributors are used to endorse or promote this fork.
- **NanoHttpd recommendation** — [@teldommm](https://github.com/teldommm) for pointing me at NanoHttpd as the right embeddable HTTP server for this project. Picking the right library was the unlock that made nano-offline possible.
- **GOG Games integration** — [The GameNative Team](https://github.com/utkarshdalal/GameNative). The GOG API pipeline, authentication flow, download architecture, and library sync in BannerHub are based on their research and implementation.
- **Amazon Games integration** — [The GameNative Team](https://github.com/utkarshdalal/GameNative). The Amazon Games API pipeline, PKCE authentication flow, manifest.proto download architecture, exe scoring heuristic, FuelPump environment variables, and SDK DLL deployment in BannerHub are based on their research and implementation.
- **Epic Games Store integration** — [The GameNative Team](https://github.com/utkarshdalal/GameNative). The Epic Games Store API pipeline, OAuth2 authentication flow, chunked manifest download architecture, CDN selection logic, and chunk assembly in BannerHub are based on their research and implementation.
- **Epic Online Services (EOS) Phase 1** — [The GameNative Team](https://github.com/utkarshdalal/GameNative). The EOS launch-arguments injection (`-EpicPortal`, `-epicusername`, `-epicuserid`, `-epicsandboxid`, `-epiclocale`, `-epicdeploymentid` and the `-AUTH_LOGIN` / `-AUTH_PASSWORD` / `-AUTH_TYPE` exchange-code triple) plus the deployment-ID sidecar fetch in BannerHub v3.6.1 are a Java port of their work. Specifically, [PR #1286 / commit `cbea7f7`](https://github.com/utkarshdalal/GameNative/commit/cbea7f70be46e6f4a99a7e92db13c9b96add9c1c) ("Feat/eos overlay utkarsh"). Without GameNative's research and reverse-engineering of Epic's launcher protocols this feature wouldn't exist in BannerHub. **Phase 2** — the in-game EOS overlay UI (Epic friends popup / notifications / achievement toasts) — is still pending and will land in a future BannerHub release. **Please support GameNative: https://github.com/utkarshdalal/GameNative**
- **Japanese translations** — [reindex-ot](https://github.com/reindex-ot) via Crowdin
- **RTS Touch Controls** — [@Nightwalker743](https://github.com/Nightwalker743)
- **GameHub ReVanced patches** — [@playday3008](https://github.com/playday3008/gamehub-patches)
- **Winlator HUD** — [StevenMXZ](https://github.com/StevenMXZ). The Extra Detail HUD is a continuation and extension of the original Winlator HUD. Additional metrics were inspired by the built-in performance HUD of my personal device.
- **Component sources** — [Arihany WCPHub](https://github.com/Arihany/WinlatorWCPHub), [The412Banner Nightlies](https://github.com/The412Banner/Nightlies), Kimchi, StevenMXZ, MaxesTechReview, Whitebelyash

## AI Disclaimer

Smali edits, patches, and code changes in this project are developed with the assistance of **[Claude AI](https://www.anthropic.com/claude)** by Anthropic. Same disclaimer as upstream BannerHub — all changes are manually debugged and device-tested before any stable release.

## Community

Join the Discord: https://discord.gg/n8S4G2WZQ4
