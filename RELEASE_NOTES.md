# BannerHub Nano Offline v0.2

Second stable. v0.1 shipped with a single bundled Proton 10.0 x64 wineprefix and no in-app way to add more. v0.2 fixes that with a new **Compatibility Layers** screen in the side drawer — the app now ships with a catalog of 10 compatibility layers, 1 bundled and 9 downloadable. Downloaded layers persist locally and are served from the embedded `127.0.0.1` server forever after.

## New: Compatibility Layers (side drawer)

Open the side drawer and tap **Compatibility Layers**. You'll see a list of:

| State          | Meaning                                                                      |
|----------------|------------------------------------------------------------------------------|
| BUNDLED (grey) | Already inside the APK — `proton10.0-x64-1`. Nothing to download.            |
| INSTALLED      | Previously downloaded and ready. Served by the embedded HTTP server locally. |
| Download       | Not yet downloaded. Tap to fetch.                                            |

The downloadable set (canonical IDs preserved so game launch configs resolve correctly):

| ID | Display name        | Framework | Type   |
|----|---------------------|-----------|--------|
| 2  | proton10.0-arm64x-2 | arm64X    | proton |
| 3  | wine9.5-x64-2       | X64       | stable |
| 4  | proton9.0-x64-3     | X64       | proton |
| 5  | wine10.0-x64-2      | X64       | stable |
| 6  | proton8.0-x64-1     | X64       | proton |
| 7  | wine8.0-x64-1       | X64       | stable |
| 8  | proton7.0-x64-1     | X64       | proton |
| 9  | wine7.0-x64-1       | X64       | stable |
| 11 | proton-ge-1         | X64       | proton |

After one online download per layer, the bytes live in `files/local-mirror/components-cdn/` and the writable catalog `getContainerList` is updated with `127.0.0.1` URLs — every subsequent install/mount reads from the embedded server, not github.

## Other fixes

- **Dashboard tile logos render on fresh offline installs** — `card/getTopPlatform` was the one catalog left with external image URLs (`i.ibb.co`, `store.steampowered.com/favicon.ico`, `i.postimg.cc`). All three are now mirrored into the APK; the Steam favicon's 256x256 PNG frame was extracted from the multi-frame `.ico` because Android image loaders don't decode `.ico` natively.

## Carried over from v0.1

- Embedded NanoHttpd server on `127.0.0.1:51823`
- Curated component catalog (5 translators, 8 DXVK, 5 VKD3D, 6 GPU drivers)
- Firmware 1.4.1 + full Wine + redist deps
- v3.7.5 base — vibration, frame generation, GOG/Epic UI, per-game settings, etc.

## Install

1. Uninstall any prior nano-offline build (writable mirror gets re-bootstrapped fresh — important).
2. Download `BannerHub-Nano-Offline-v0.2-Normal.apk` from the assets below.
3. Install. Works in airplane mode from a fresh install.
4. To add a compatibility layer beyond the bundled Proton 10.0: turn internet on briefly, open Compatibility Layers, tap Download on the layer you want. After the download completes, you can go back to airplane mode permanently — that layer is fully local now.

See the [README](https://github.com/The412Banner/bannerhub-nano-offline#readme) for the full offline feature matrix.
