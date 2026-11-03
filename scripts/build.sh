#!/bin/zsh
# 构建 EDP 交换区挂载器（通用二进制）
#
#   ./scripts/build.sh            生成 outputs/启动程序源码/edp-mount 与 edp-universal
#   ./scripts/build.sh --out DIR  指定输出目录
#
# 依赖：Xcode Command Line Tools（swiftc）。已验证 Swift 6.4 / macOS 13+ 目标。
set -euo pipefail

ROOT="$(cd "${0:A:h}/.." && pwd)"
SRC="$ROOT/outputs/启动程序源码/edp.swift"
OUT="$ROOT/outputs/启动程序源码"

if [[ "${1:-}" == "--out" ]]; then
  OUT="${2:?--out 需要目录参数}"
  mkdir -p "$OUT"
fi

command -v swiftc >/dev/null 2>&1 || {
  echo "缺少 swiftc，请先安装 Xcode Command Line Tools：xcode-select --install" >&2
  exit 1
}

[[ -f "$SRC" ]] || { echo "找不到源码：$SRC" >&2; exit 1; }

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

SWIFT_FLAGS=(-O -whole-module-optimization)

echo "==> 编译 arm64"
swiftc "${SWIFT_FLAGS[@]}" -target arm64-apple-macos13.0  "$SRC" -o "$TMP/edp-arm64"

echo "==> 编译 x86_64"
swiftc "${SWIFT_FLAGS[@]}" -target x86_64-apple-macos13.0 "$SRC" -o "$TMP/edp-x86_64"

echo "==> 合并为通用二进制"
lipo -create -output "$OUT/edp-mount" "$TMP/edp-arm64" "$TMP/edp-x86_64"
lipo -create -output "$OUT/edp-universal" "$TMP/edp-arm64" "$TMP/edp-x86_64"
chmod 755 "$OUT/edp-mount" "$OUT/edp-universal"

echo "==> 校验"
lipo -info "$OUT/edp-mount"
shasum -a 256 "$OUT/edp-mount" "$OUT/edp-universal"
echo "完成：$OUT/edp-mount"
