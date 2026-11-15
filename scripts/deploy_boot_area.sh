#!/bin/zsh
# 把双击入口部署到 U 盘的「启动区」。
#
#   ./scripts/deploy_boot_area.sh [卷路径，默认 /Volumes/启动区]
#
# 只复制本仓库 outputs/启动程序源码/ 下的入口脚本与挂载器，不写入交换区、
# 不接触保密区、不改分区表。启动区是 FAT，权限位与扩展属性都不保留，
# 因此部署后统一跑一次 dot_clean 清掉 AppleDouble 的 ._ 文件。
set -uo pipefail

ROOT="$(cd "${0:A:h}/.." && pwd)"
SRC="$ROOT/outputs/启动程序源码"
VOL="${1:-/Volumes/启动区}"

FILES=(
  "EDP交换区.command"
  "EDP-立即保存.command"
  "EDP-保存并退出.command"
  "edp-mount"
  "使用说明.txt"
)

if [ ! -d "$VOL" ]; then
  cat <<'EOS'
找不到启动区。

挂载器运行时启动区会被卸载（它需要独占整张卡），先做一次保存并退出：

  ~/Library/Caches/edp-mount/EDP-保存并退出.command

或者手动把分区挂回来再重跑本脚本：

  diskutil list | grep 启动区     # 记下 diskNsM
  diskutil mount diskNsM
EOS
  exit 1
fi

fs=$(/usr/sbin/diskutil info -plist "$VOL" 2>/dev/null \
     | /usr/bin/plutil -extract FilesystemType raw - 2>/dev/null)
if [ "$fs" != "msdos" ]; then
  echo "目标卷不是 FAT（检测到 ${fs:-未知}），不是启动区，已停止。"
  exit 1
fi

need=0
for f in "${FILES[@]}"; do
  [ -f "$SRC/$f" ] || { echo "缺少源文件：$SRC/$f"; exit 1; }
  need=$(( need + $(/usr/bin/stat -f%z "$SRC/$f") ))
done

free=$(/bin/df -k "$VOL" | /usr/bin/awk 'NR==2{print $4}')
free=$(( free * 1024 ))
if [ "$need" -gt "$free" ]; then
  echo "启动区空间不足：需要 $(( need / 1024 )) KiB，可用 $(( free / 1024 )) KiB。"
  echo "可以先删掉启动区里的 edp-mount（本机已装 /usr/local/libexec/edp-mount 时不必随盘携带）。"
  exit 1
fi

for f in "${FILES[@]}"; do
  /bin/cp -f "$SRC/$f" "$VOL/$f" || { echo "复制失败：$f"; exit 1; }
  echo "已写入 $f"
done

/usr/bin/dot_clean -m "$VOL" >/dev/null 2>&1 || true
/bin/sync

echo
echo "== 启动区当前内容 =="
/bin/ls -la "$VOL"
echo
/bin/df -h "$VOL" | /usr/bin/tail -1
echo
echo "入口就位：双击「EDP交换区.command」挂载交换区，"
echo "改完用菜单 1 保存；没有菜单窗口时双击「EDP-立即保存.command」或「EDP-保存并退出.command」。"
