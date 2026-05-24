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

These features need internet by design and will fail gracefully:

- ⚠️ Compatibility Layers initial download (one-time online fetch per non-bundled layer; the bytes are then served locally forever)
- ❌ GOG Games / Epic Games / Amazon Games store login + downloads (OAuth + CDN)
- ❌ Community game configs browser (settings sharing)
- ❌ Steam library augmentation (Steam Community feed)
- ❌ App self-update check
- ❌ Token refresh / online game search

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

If you grab additional compatibility layers via the v0.2 Compatibility Layers screen, they download to `/data/data/banner.nano.offline/files/local-mirror/components-cdn/` (~150–220 MB each) — those live outside the APK, so the APK file itself stays at the size shown on the release page no matter how many layers you've added.

## Installation

1. Download the latest APK from the [Releases page](https://github.com/The412Banner/bannerhub-nano-offline/releases/latest)
2. Install (allow installs from unknown sources if needed)
3. Open the app — first launch starts the embedded server automatically
4. Use the Component Manager to install your `.wcp` files (drag-drop or file picker)
5. Add a game and launch — no internet required

## Relationship to upstream BannerHub

This is a derivative of [The412Banner/BannerHub](https://github.com/The412Banner/BannerHub) v3.7.5 with the offline-server changes layered on top. All the features from BannerHub 3.7.5 are present and patched the same way — only the API base URL and asset bundling differ.

## AI Disclaimer

Smali edits, patches, and code changes in this project are developed with the assistance of **[Claude AI](https://www.anthropic.com/claude)** by Anthropic. Same disclaimer as upstream BannerHub — all changes are manually debugged and device-tested before any stable release.

## Community

Join the Discord: https://discord.gg/n8S4G2WZQ4
