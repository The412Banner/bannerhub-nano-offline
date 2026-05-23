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

> **v0.1 ships with Proton 10.0 x64 only** as the bundled compatibility layer. Additional containers (Proton 11, Wine native, etc.) cannot be user-added in v0.1 — the in-app Component Manager handles components (translators, DXVK, VKD3D, drivers, libraries), not compatibility layers. More containers will be bundled in future releases.

## What works offline

- ✅ All component manifests (Box64/FEX, DXVK, VKD3D, GPU drivers, libraries, Steam, games)
- ✅ Simulator catalog endpoints (component list, container list, default component, imagefs detail, executeScript)
- ✅ Add-a-game flow (works against the in-APK catalog)
- ✅ Game launch (uses BannerHub 3.7.5's offline-launch path, which skips network-gated install tasks)
- ✅ Component download → served by the embedded server from the Component Manager's local storage
- ✅ Per-game settings, AI frame generation, vibration, HUD, performance toggles, RTS controls — all the BannerHub 3.7.5 local features

## What does not work offline

These features need internet by design and will fail gracefully:

- ❌ GOG Games / Epic Games / Amazon Games store login + downloads (OAuth + CDN)
- ❌ Community game configs browser (settings sharing)
- ❌ Steam library augmentation (Steam Community feed)
- ❌ App self-update check
- ❌ Token refresh / online game search

## How it works

The Cloudflare Worker that BannerHub normally talks to has been baked into the APK as a tiny embedded HTTP server. At startup the app calls `GameHubPrefs.getEffectiveApiUrl(...)` which has been patched to lazy-start the local NanoHttpd server and return `http://127.0.0.1:51823/`. Every Retrofit/OkHttp client built downstream uses that base URL. The server reads its catalog from `assets/local-mirror/` (a snapshot of the bannerhub-api static output) and serves component `.wcp` / `.tzst` files from the Component Manager's storage path.

See [`OFFLINE_NANO_DESIGN.md`](OFFLINE_NANO_DESIGN.md) for full architecture details.

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
