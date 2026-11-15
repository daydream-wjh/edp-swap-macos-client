#!/bin/zsh
set -u
CACHE="$HOME/Library/Caches/edp-mount"
jget() { /usr/bin/plutil -extract "$1" raw -o - "$CACHE/state.json" 2>/dev/null; }
[ -d /Volumes/交换区 ] || { echo "交换区没有挂载，无需保存。"; read -k 1 "?按任意键关闭"; exit 0; }
B=$(jget completed_save_id); B=${B:-0}
printf 'save\n' > "$CACHE/ctrl"
echo "正在加密写回并回读校验…"
for i in {1..3600}; do
  C=$(jget completed_save_id); ph=$(jget phase)
  if [ "${C:-0}" != "$B" ]; then
    case "$ph" in
      保存未完成*) echo "⚠️ 保存未完成：$(jget error)"; read -k 1 "?按任意键关闭"; exit 1;;
      *) echo "✔ 保存完成：$(jget last_save_mb) MiB，用时 $(jget last_save_secs) 秒，含刷新与全量回读校验"; read -k 1 "?按任意键关闭"; exit 0;;
    esac
  fi
  sleep 0.25
done
echo "⚠️ 超时未确认，请勿拔盘。"; read -k 1 "?按任意键关闭"
