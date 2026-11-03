#!/usr/bin/env python3
"""检查仓库结构与 Python 语法，不导入或运行任何设备代码。

- 按 docs/整理迁移清单.json 校验迁移文件的 SHA256；被 .gitignore 排除的二进制
  （例如 archive/backups 下的 edp-mount）在新克隆中不存在，只记为跳过。
- 对 outputs/ work/ scripts/ 下的 .py 做 ast 语法解析。
"""
from __future__ import annotations

import ast
import hashlib
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SKIP_PARTS = {"analysis-env", "exfat-upstream", "__pycache__", ".venv"}


def main() -> int:
    records = json.loads((ROOT / "docs" / "整理迁移清单.json").read_text(encoding="utf-8"))
    checked = skipped = 0
    failed: list[str] = []

    for item in records:
        target = ROOT / item["to"]
        for rel, expected in item["sha256"].items():
            path = target if rel == "." else target / rel
            if not path.exists():
                skipped += 1
                continue
            actual = hashlib.sha256(path.read_bytes()).hexdigest()
            if actual == expected:
                checked += 1
            else:
                failed.append(f"{path.relative_to(ROOT)}: 期望 {expected}，实际 {actual}")

    parsed = 0
    for folder in ("outputs", "work", "scripts"):
        base = ROOT / folder
        if not base.exists():
            continue
        for path in base.rglob("*.py"):
            if any(part in SKIP_PARTS for part in path.parts):
                continue
            try:
                ast.parse(path.read_bytes(), filename=str(path))
            except SyntaxError as exc:
                failed.append(f"{path.relative_to(ROOT)}: 语法错误 {exc}")
            else:
                parsed += 1

    for line in failed:
        print(f"[失败] {line}", file=sys.stderr)
    print(f"迁移文件一致 {checked}，未入库跳过 {skipped}；Python 语法有效 {parsed}。")
    return 1 if failed else 0


if __name__ == "__main__":
    raise SystemExit(main())
