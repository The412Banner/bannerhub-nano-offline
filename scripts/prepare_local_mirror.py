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

The script copies the following subtrees verbatim and rewrites their JSON content:
    <src>/components/  -> <dst>/components/
    <src>/simulator/   -> <dst>/simulator/

Plus other GITHUB_ROUTES static files that live at the repo root (base/, card/,
cloud/, devices/, email/, ems/, game/, heartbeat/, upgrade/, user/, vtouch/).
Missing source subdirs are skipped silently.

The URL rewrite is a plain string replacement:
    https://github.com/The412Banner/bannerhub-api/releases/download/Components/
        -> <base-url>/<cdn-prefix>/
"""

import argparse
import os
import shutil
import sys

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
    return p.parse_args()


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

    print()
    print(f"DONE. files={total_files} rewrites={total_rewrites}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
