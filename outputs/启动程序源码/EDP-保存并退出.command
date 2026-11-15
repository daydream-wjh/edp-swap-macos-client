#!/bin/zsh
set -u
CACHE="$HOME/Library/Caches/edp-mount"
jget() { /usr/bin/plutil -extract "$1" raw -o - "$CACHE/state.json" 2>/dev/null; }
[ -d /Volumes/交换区 ] || { echo "交换区没有挂载。"; read -k 1 "?按任意键关闭"; exit 0; }
B=$(jget completed_save_id); B=${B:-0}
printf 'save\n' > "$CACHE/ctrl"
echo "正在加密写回并回读校验…"
for i in {1..3600}; do
  C=$(jget completed_save_id); ph=$(jget phase)
  if [ "${C:-0}" != "$B" ]; then
    case "$ph" in
      保存未完成*) echo "⚠️ 保存未完成：$(jget error)，未退出，请重试。"; read -k 1 "?按任意键关闭"; exit 1;;
      *) echo "✔ 已保存：$(jget last_save_mb) MiB，用时 $(jget last_save_secs) 秒"; break;;
    esac
  fi
  sleep 0.25
done
printf 'quit\n' > "$CACHE/ctrl"
echo "正在卸载交换区…"
for i in {1..120}; do [ -d /Volumes/交换区 ] || break; sleep 1; done
/bin/sleep 1
/usr/sbin/diskutil mount disk4s1 >/dev/null 2>&1
echo "✅ 已卸载交换区，U 盘（启动区）已重新挂载，可以安全拔线。"
read -k 1 "?按任意键关闭"
