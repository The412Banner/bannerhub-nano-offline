#!/usr/bin/env python3
"""
Bundle the bannerhub-api static-route output into the APK's assets/local-mirror/
folder. Rewrites every `download_url` field to point at the embedded NanoHttpd
server's CDN endpoint, so component downloads are served from disk by the
local server instead of GitHub Releases.

Usage:
    prepare_local_mirror.py --src <bannerhub-api dir> --dst <apktool_out_base/assets/local-mirror>
                            [--base-url http://127.0.0.1:8765]
                            [--cdn-prefix components-cdn]
                            [--overrides-dir <repo>/data/local-mirror-overrides]

The script copies the following subtrees verbatim and rewrites their JSON content:
    <src>/components/  -> <dst>/components/
    <src>/simulator/   -> <dst>/simulator/

Plus other GITHUB_ROUTES static files that live at the repo root (base/, card/,
cloud/, devices/, email/, ems/, game/, heartbeat/, upgrade/, user/, vtouch/).
Missing source subdirs are skipped silently.

The URL rewrite is a plain string replacement:
    https://github.com/The412Banner/bannerhub-api/releases/download/Components/
        -> <base-url>/<cdn-prefix>/

Overrides (--overrides-dir): after upstream is copied + rewritten, every file
under <overrides-dir> is copied on top of <dst> verbatim (no URL rewrite,
preserves binary content). Use this for response-shape fixes and bundled CDN
assets that upstream doesn't ship in the static repo.

Bundled components (--bundled-components): JSON config listing which component
IDs (per manifest) and container/imagefs files to ship inside the APK. Manifests
are trimmed to only declared IDs (so in-app menus show exactly the bundled set)
and every referenced .tzst/.zst is downloaded from GH Releases into
<dst>/components-cdn/. Downloads are skipped if the file already exists with a
matching md5, so re-runs are cheap.
"""

import argparse
import hashlib
import json
import os
import shutil
import sys
import urllib.request
import urllib.error

UPSTREAM_CDN_PREFIX = (
    "https://github.com/The412Banner/bannerhub-api/releases/download/Components/"
)

# Subtrees of bannerhub-api to copy into assets/local-mirror/
STATIC_SUBTREES = [
    "components",
    "simulator",
    "base",
    "card",
    "cloud",
    "devices",
    "email",
    "ems",
    "game",
    "heartbeat",
    "upgrade",
    "user",
    "vtouch",
]


def parse_args() -> argparse.Namespace:
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--src", required=True, help="bannerhub-api repo root")
    p.add_argument(
        "--dst", required=True, help="apktool output assets/local-mirror dir"
    )
    p.add_argument(
        "--base-url",
        default="http://127.0.0.1:8765",
        help="Server base URL the rewritten URLs should point at",
    )
    p.add_argument(
        "--cdn-prefix",
        default="components-cdn",
        help="Path segment served by LocalCdnServer",
    )
    p.add_argument(
        "--overrides-dir",
        default=None,
        help="Directory whose contents are copied on top of <dst> verbatim, after upstream + URL rewrite",
    )
    p.add_argument(
        "--bundled-components",
        default=None,
        help="JSON file declaring which manifest IDs + containers + imagefs to ship in the APK",
    )
    return p.parse_args()


def md5sum(path: str) -> str:
    h = hashlib.md5()
    with open(path, "rb") as f:
        for chunk in iter(lambda: f.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()


def download_to(url: str, dest: str, expected_md5: str = "") -> tuple:
    """Returns (status, size_bytes). status in {"downloaded","cached","md5_fail"}."""
    if os.path.exists(dest):
        if expected_md5 and md5sum(dest) == expected_md5:
            return ("cached", os.path.getsize(dest))
        if not expected_md5:
            return ("cached", os.path.getsize(dest))
        # md5 mismatch — re-download
        os.remove(dest)
    os.makedirs(os.path.dirname(dest), exist_ok=True)
    tmp = dest + ".part"
    try:
        with urllib.request.urlopen(url, timeout=120) as r, open(tmp, "wb") as f:
            shutil.copyfileobj(r, f, length=1 << 20)
    except urllib.error.HTTPError as e:
        if os.path.exists(tmp):
            os.remove(tmp)
        raise RuntimeError(f"HTTP {e.code} for {url}")
    if expected_md5:
        got = md5sum(tmp)
        if got != expected_md5:
            os.remove(tmp)
            return ("md5_fail", 0)
    os.rename(tmp, dest)
    return ("downloaded", os.path.getsize(dest))


def trim_manifest(manifest_path: str, include_ids) -> tuple:
    """Trim a _manifest JSON file in place. include_ids is a list of int IDs or
    the string 'all'. Returns (kept_count, dropped_count, total_bytes_of_kept)."""
    with open(manifest_path) as f:
        j = json.load(f)
    items = j.get("data", {}).get("components", []) or []
    before = len(items)
    if include_ids == "all":
        kept = items
    else:
        wanted = set(int(i) for i in include_ids)
        kept = [it for it in items if int(it.get("id", -1)) in wanted]
    j["data"]["components"] = kept
    if "total" in j["data"]:
        j["data"]["total"] = len(kept)
    with open(manifest_path, "w") as f:
        json.dump(j, f, indent=2)
    bytes_kept = sum(int(it.get("file_size") or 0) for it in kept)
    return (len(kept), before - len(kept), bytes_kept)


def url_to_filename(url: str) -> str:
    return url.rstrip("/").rsplit("/", 1)[-1]


def fetch_bundled(dst: str, cdn_prefix: str, config_path: str, upstream_src: str) -> dict:
    """Trim manifests + download every bundled binary into <dst>/<cdn_prefix>/.
    Returns a summary dict."""
    with open(config_path) as f:
        cfg = json.load(f)

    cdn_dir = os.path.join(dst, cdn_prefix)
    os.makedirs(cdn_dir, exist_ok=True)

    summary = {"trimmed": [], "downloaded_files": 0, "cached_files": 0,
               "failed_files": 0, "total_bytes": 0}

    # Trim each manifest to only declared IDs, then download the binaries
    for manifest_name, spec in cfg.get("manifests", {}).items():
        manifest_path = os.path.join(dst, "components", manifest_name)
        if not os.path.exists(manifest_path):
            print(f"  WARN: manifest not in dst: {manifest_name}")
            continue
        include = spec.get("include", [])
        kept, dropped, bytes_kept = trim_manifest(manifest_path, include)
        summary["trimmed"].append((manifest_name, kept, dropped, bytes_kept))
        print(f"  trim   {manifest_name:25s} kept={kept:3d} dropped={dropped:3d}  {bytes_kept/1024/1024:7.1f} MB")

        # Download each kept item's file
        with open(manifest_path) as f:
            kept_items = json.load(f)["data"]["components"]
        for it in kept_items:
            url = it.get("download_url", "")
            md5 = it.get("file_md5", "") or ""
            if not url or not url.startswith("http"):
                continue
            # URL has already been rewritten to local 127.0.0.1, so re-derive upstream URL
            fn = url_to_filename(url)
            up_url = f"{UPSTREAM_CDN_PREFIX}{fn}"
            dest = os.path.join(cdn_dir, fn)
            try:
                status, sz = download_to(up_url, dest, md5)
                if status == "downloaded":
                    summary["downloaded_files"] += 1
                elif status == "cached":
                    summary["cached_files"] += 1
                else:
                    summary["failed_files"] += 1
                    print(f"  FAIL  md5 mismatch for {fn}")
                    continue
                summary["total_bytes"] += sz
            except Exception as e:
                summary["failed_files"] += 1
                print(f"  FAIL  {fn}: {e}")

    # Containers: fetch wine archive + sub_data for each included id
    container_ids = cfg.get("containers", {}).get("include", [])
    for cid in container_ids:
        detail_path = os.path.join(upstream_src, "simulator/v2/getContainerDetail", str(cid))
        if not os.path.exists(detail_path):
            print(f"  WARN: container detail missing: {cid}")
            continue
        with open(detail_path) as f:
            d = json.load(f)["data"]
        # Wine archive
        for kind, url_key, md5_key in (
            ("wine", "download_url", "file_md5"),
        ):
            url = d.get(url_key, "")
            md5 = d.get(md5_key, "")
            if not url:
                continue
            fn = url_to_filename(url)
            up_url = f"{UPSTREAM_CDN_PREFIX}{fn}"
            dest = os.path.join(cdn_dir, fn)
            try:
                status, sz = download_to(up_url, dest, md5)
                summary["downloaded_files" if status == "downloaded" else "cached_files"] += 1
                summary["total_bytes"] += sz
                print(f"  cont   id={cid} {kind:8s} {fn}  {sz/1024/1024:7.1f} MB  [{status}]")
            except Exception as e:
                summary["failed_files"] += 1
                print(f"  FAIL  container {cid} {kind}: {e}")
        # sub_data
        sd = d.get("sub_data") or {}
        sd_url = sd.get("sub_download_url", "")
        sd_md5 = sd.get("sub_file_md5", "")
        if sd_url:
            fn = url_to_filename(sd_url)
            up_url = f"{UPSTREAM_CDN_PREFIX}{fn}"
            dest = os.path.join(cdn_dir, fn)
            try:
                status, sz = download_to(up_url, dest, sd_md5)
                summary["downloaded_files" if status == "downloaded" else "cached_files"] += 1
                summary["total_bytes"] += sz
                print(f"  cont   id={cid} sub_data {fn}  {sz/1024/1024:7.1f} MB  [{status}]")
            except Exception as e:
                summary["failed_files"] += 1
                print(f"  FAIL  container {cid} sub_data: {e}")

    # Imagefs
    if cfg.get("imagefs", {}).get("include"):
        imgdetail = os.path.join(upstream_src, "simulator/v2/getImagefsDetail")
        if os.path.exists(imgdetail):
            with open(imgdetail) as f:
                d = json.load(f)["data"]
            url = d.get("download_url", "")
            md5 = d.get("file_md5", "")
            if url:
                fn = url_to_filename(url)
                up_url = f"{UPSTREAM_CDN_PREFIX}{fn}"
                dest = os.path.join(cdn_dir, fn)
                try:
                    status, sz = download_to(up_url, dest, md5)
                    summary["downloaded_files" if status == "downloaded" else "cached_files"] += 1
                    summary["total_bytes"] += sz
                    print(f"  img    {fn}  {sz/1024/1024:7.1f} MB  [{status}]")
                except Exception as e:
                    summary["failed_files"] += 1
                    print(f"  FAIL  imagefs: {e}")

    return summary


def rewrite_file(path: str, old_prefix: str, new_prefix: str) -> int:
    try:
        with open(path, "r", encoding="utf-8") as f:
            content = f.read()
    except (OSError, UnicodeDecodeError):
        return 0
    if old_prefix not in content:
        return 0
    occurrences = content.count(old_prefix)
    content = content.replace(old_prefix, new_prefix)
    with open(path, "w", encoding="utf-8") as f:
        f.write(content)
    return occurrences


def copytree_overwrite(src: str, dst: str) -> int:
    files_copied = 0
    for root, _, files in os.walk(src):
        rel = os.path.relpath(root, src)
        target_dir = dst if rel == "." else os.path.join(dst, rel)
        os.makedirs(target_dir, exist_ok=True)
        for name in files:
            shutil.copy2(os.path.join(root, name), os.path.join(target_dir, name))
            files_copied += 1
    return files_copied


def main() -> int:
    args = parse_args()
    src = os.path.abspath(args.src)
    dst = os.path.abspath(args.dst)
    new_cdn_prefix = f"{args.base_url.rstrip('/')}/{args.cdn_prefix}/"

    if not os.path.isdir(src):
        print(f"ERROR: --src does not exist: {src}", file=sys.stderr)
        return 1

    os.makedirs(dst, exist_ok=True)

    print(f"Local mirror prep")
    print(f"  src:        {src}")
    print(f"  dst:        {dst}")
    print(f"  upstream:   {UPSTREAM_CDN_PREFIX}")
    print(f"  rewrite to: {new_cdn_prefix}")
    print()

    total_files = 0
    total_rewrites = 0

    for subtree in STATIC_SUBTREES:
        src_sub = os.path.join(src, subtree)
        if not os.path.isdir(src_sub):
            print(f"  skip   {subtree}/ (not in source)")
            continue
        dst_sub = os.path.join(dst, subtree)
        copied = copytree_overwrite(src_sub, dst_sub)
        total_files += copied

        rewrites_here = 0
        for root, _, files in os.walk(dst_sub):
            for name in files:
                rewrites_here += rewrite_file(
                    os.path.join(root, name), UPSTREAM_CDN_PREFIX, new_cdn_prefix
                )
        total_rewrites += rewrites_here
        print(f"  copy   {subtree}/  files={copied}  rewrites={rewrites_here}")

    overrides_applied = 0
    if args.overrides_dir:
        overrides = os.path.abspath(args.overrides_dir)
        if not os.path.isdir(overrides):
            print(f"  skip   overrides ({overrides} does not exist)")
        else:
            overrides_applied = copytree_overwrite(overrides, dst)
            print(f"  apply  overrides/  files={overrides_applied}  (from {overrides})")

    bundled_summary = None
    if args.bundled_components:
        cfg_path = os.path.abspath(args.bundled_components)
        if not os.path.exists(cfg_path):
            print(f"ERROR: --bundled-components file not found: {cfg_path}", file=sys.stderr)
            return 1
        print(f"\nBundled-components pass (trim manifests + fetch binaries):")
        bundled_summary = fetch_bundled(dst, args.cdn_prefix, cfg_path, src)
        s = bundled_summary
        print(f"  bundled: downloaded={s['downloaded_files']} cached={s['cached_files']} "
              f"failed={s['failed_files']} total={s['total_bytes']/1024/1024:.1f} MB")
        if s["failed_files"]:
            print(f"ERROR: {s['failed_files']} bundled file(s) failed to fetch", file=sys.stderr)
            return 1

    print()
    print(f"DONE. upstream_files={total_files} rewrites={total_rewrites} overrides={overrides_applied}")
    if bundled_summary:
        s = bundled_summary
        print(f"      bundled={s['downloaded_files']+s['cached_files']} files, "
              f"{s['total_bytes']/1024/1024:.1f} MB shipped in APK")
    return 0


if __name__ == "__main__":
    sys.exit(main())
