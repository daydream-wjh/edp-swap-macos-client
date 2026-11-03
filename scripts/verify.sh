#!/bin/zsh
# 仓库自检：结构/哈希 + Python 语法 + 外置文件清单。不接触任何真实设备。
#
#   ./scripts/verify.sh
set -uo pipefail

ROOT="$(cd "${0:A:h}/.." && pwd)"
cd "$ROOT"
PY="${PYTHON:-python3}"
rc=0

echo "== 1/3 结构与语法 =="
"$PY" scripts/check_structure.py || rc=1

echo
echo "== 2/3 外置文件清单（缺失不判失败）=="
"$PY" scripts/check_excluded.py || rc=1

echo
echo "== 3/3 工作区干净度 =="
junk=$(git status --porcelain --ignored 2>/dev/null | grep -c '^!!' || true)
if git rev-parse --git-dir >/dev/null 2>&1; then
  tracked_raw=$(git ls-files | grep -cE '\.(raw|sqlite3)$' || true)
  echo "被忽略条目：${junk}；已跟踪的镜像/数据库：${tracked_raw}"
  [[ "$tracked_raw" == "0" ]] || { echo "镜像或数据库被误提交，请检查 .gitignore"; rc=1; }
else
  echo "尚未初始化 git，跳过"
fi

echo
[[ $rc == 0 ]] && echo "自检通过。" || echo "自检发现问题，见上方输出。"
exit $rc
