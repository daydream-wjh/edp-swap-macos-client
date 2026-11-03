#!/usr/bin/env python3
"""比对外置文件清单 docs/排除文件清单.json 的 SHA256。

仓库内不含设备镜像、厂商二进制与真实设备数据；本脚本用于在原始工作目录
确认这些"未入库但被文档引用"的文件仍是当时分析的那一份。

    python3 scripts/check_excluded.py            # 校验，缺失只提示不失败
    python3 scripts/check_excluded.py --strict   # 缺失也算失败
"""
from __future__ import annotations

import argparse
import hashlib
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
MANIFEST = ROOT / "docs" / "排除文件清单.json"


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as fh:
        for chunk in iter(lambda: fh.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--strict", action="store_true", help="缺失文件也视为失败")
    args = ap.parse_args()

    if not MANIFEST.exists():
        print(f"找不到清单：{MANIFEST}", file=sys.stderr)
        return 2

    data = json.loads(MANIFEST.read_text(encoding="utf-8"))
    ok = bad = missing = skipped = 0

    for group in data.get("groups", []):
        items = group.get("items") or []
        if not items:
            skipped += 1
            print(f"[汇总] {group['path']}: {group['excluded_files']} 文件 / "
                  f"{group['excluded_bytes'] / 1048576:.1f} MiB（无逐文件哈希）")
            continue
        for item in items:
            path = ROOT / item["path"]
            if not path.exists():
                missing += 1
                print(f"[缺失] {item['path']}")
                continue
            actual = sha256(path)
            if actual == item["sha256"]:
                ok += 1
            else:
                bad += 1
                print(f"[不符] {item['path']}\n  期望 {item['sha256']}\n  实际 {actual}")

    print(f"\n通过 {ok}，不符 {bad}，缺失 {missing}，无明细分组 {skipped}")
    if bad:
        return 1
    if missing and args.strict:
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
