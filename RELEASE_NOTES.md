# BannerHub Nano Offline v0.1

First stable. A fully offline build of BannerHub v3.7.5 — install, import a PC game, tap Launch, no internet required at any point. The Cloudflare Worker that BannerHub normally talks to is baked into the APK as an embedded HTTP server on `127.0.0.1:51823`.

## Ships with **Proton 10.0 x64 only**

This release bundles a single compatibility layer: `proton10.0-x64` wineprefix. **Additional containers (Proton 11, Wine native, etc.) cannot be added by the user in v0.1** — the in-app Component Manager handles components (translators, DXVK, VKD3D, drivers, libraries), not containers. More compatibility layers will ship baked-in via future releases.

Bundled curated set (everything else BannerHub 5.x needs to launch a PC game):

- 5 translators (Box64 / FEX)
- 8 DXVK variants
- 5 VKD3D variants
- 6 GPU drivers (Turnip / Adreno)
- Firmware 1.4.1 + full Wine + redist deps

## Install

1. Uninstall any prior nano-offline build.
2. Download `BannerHub-Nano-Offline-v0.1-Normal.apk` from the assets below.
3. Install. Works in airplane mode from a fresh install — no prior online launch needed.

See the [README](https://github.com/The412Banner/bannerhub-nano-offline#readme) for the offline feature matrix and known limitations.
