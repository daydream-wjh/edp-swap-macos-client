#!/bin/zsh
# EDP 加密U盘 · 交换区（单一入口）
# 密码只在本机内存/钥匙串中使用，不写明文、不联网。
set -u
setopt NULL_GLOB 2>/dev/null || true

# 纯文本界面：不使用任何颜色/样式
C_RESET=''; C_BOLD=''; C_DIM=''
C_GREEN=''; C_YELLOW=''; C_CYAN=''
C_RED=''; C_ORANGE=''; C_BLUE=''
C_MAGENTA=''; C_WHITE=''; C_GREY=''
C_DARKGREY=''; C_VIOLET=''
CACHE="$HOME/Library/Caches/edp-mount"
SELF="$CACHE/EDP交换区.command"

# 先把脚本复制到本机再运行，避免占用「启动区」导致无法卸载
if [ "${0:A}" != "$SELF" ]; then
  mkdir -p "$CACHE"; chmod 700 "$CACHE"
  /bin/cp "${0:A}" "$SELF" 2>/dev/null || { echo "无法把脚本复制到本机。"; read -k 1; exit 1; }
  chmod 700 "$SELF"
  exec /bin/zsh "$SELF"
fi

VOL=/Volumes/启动区
BIN="$CACHE/edp-mount"
HELPER=/usr/local/libexec/edp-mount

if [ ! -d "$VOL" ]; then
  echo "请先插入这张 U 盘，等「启动区」出现在访达后再运行本脚本。"
  read -k 1 "?按任意键退出"; exit 1
fi

# 复制最新程序到本机（随后要卸载启动区）
if [ -f "$VOL/edp-mount" ]; then
  if [ ! -x "$BIN" ] || ! /usr/bin/cmp -s "$VOL/edp-mount" "$BIN"; then
    rm -f "$BIN"; /bin/cp "$VOL/edp-mount" "$BIN" && chmod 700 "$BIN"
  fi
fi
[ -x "$BIN" ] || { echo "找不到挂载程序 edp-mount。"; read -k 1; exit 1; }

DISK=$(/usr/sbin/diskutil info -plist "$VOL" 2>/dev/null | /usr/bin/plutil -extract ParentWholeDisk raw - 2>/dev/null)
[ -z "${DISK:-}" ] && { echo "无法识别 U 盘设备。"; read -k 1 "?按任意键退出"; exit 1; }
TOTAL=$(/usr/sbin/diskutil info -plist "/dev/$DISK" 2>/dev/null | /usr/bin/plutil -extract TotalSize raw - 2>/dev/null)
TOTAL=${TOTAL:-0}

mkdir -p "$CACHE"; chmod 700 "$CACHE"
: > "$CACHE/ctrl"; chmod 600 "$CACHE/ctrl"
ls -dt "$HOME/Library/Caches/edp-mount-backup-"* 2>/dev/null | tail -n +3 | while read -r d; do rm -rf "$d"; done

# 密码：优先钥匙串，没有才弹窗
PW=$(security find-generic-password -a "$USER" -s "edp-exchange-password" -w 2>/dev/null)
FROM_KEYCHAIN=1
if [ -z "$PW" ]; then
  FROM_KEYCHAIN=0
  PW=$(/usr/bin/osascript -e 'display dialog "请输入 U 盘交换区密码（不是 Mac 密码）" default answer "" with hidden answer buttons {"取消","继续"} default button "继续"' -e 'text returned of result' 2>/dev/null) || { echo "已取消。"; exit 0; }
  [ -z "$PW" ] && { echo "未输入密码。"; exit 1; }
fi
PW_SAVE="$PW"   # 仅在弹窗输入时保留，挂载成功后可选存入钥匙串

FIFO="$CACHE/pw.fifo"; rm -f "$FIFO"; mkfifo -m 600 "$FIFO" || exit 1
( printf '%s\n' "$PW" > "$FIFO" 2>/dev/null ) &
unset PW

/usr/sbin/diskutil unmount force "$VOL" >/dev/null 2>&1

# 运行方式：装过免密帮助程序就直接跑，否则用 sudo
if [ -x "$HELPER" ] && ! /usr/bin/cmp -s "$HELPER" "$BIN"; then
  echo "提示：本机帮助程序版本较旧，本次改用管理员授权；可运行「安装免密码.command」更新。"
  HELPER=/nonexistent
fi
if [ -x "$HELPER" ] && /usr/bin/sudo -n "$HELPER" selftest >/dev/null 2>&1; then
  /usr/bin/sudo -n "$HELPER" mount "/dev/r$DISK" "$CACHE" "$TOTAL" < "$FIFO" &
else
  echo "需要管理员授权（运行「安装免密码.command」可不再提示）。"
  /usr/bin/sudo "$BIN" mount "/dev/r$DISK" "$CACHE" "$TOTAL" < "$FIFO" &
fi
DAEMON=$!
rm -f "$FIFO"

for i in {1..180}; do
  [ -d "/Volumes/交换区" ] && break
  kill -0 $DAEMON 2>/dev/null || break
  sleep 1
done
if [ ! -d "/Volumes/交换区" ]; then
  echo "挂载未成功，请查看上面的错误信息。"
  wait $DAEMON 2>/dev/null
  /usr/sbin/diskutil mount "${DISK}s1" >/dev/null 2>&1
  read -k 1 "?按任意键关闭窗口"; exit 1
fi

# 弹窗输入的密码，成功后询问是否存钥匙串
if [ "$FROM_KEYCHAIN" = 0 ] && [ -n "${PW_SAVE:-}" ]; then
  if [ "$(/usr/bin/osascript -e 'button returned of (display dialog "是否把交换区密码存到本机钥匙串？\n（存在系统钥匙串里，不在 U 盘上留明文）" buttons {"不用","记住"} default button "记住")' 2>/dev/null)" = "记住" ]; then
    if security add-generic-password -a "$USER" -s "edp-exchange-password" -w "$PW_SAVE" -U 2>/dev/null; then
      echo "✅ 已存入钥匙串，下次不用再输密码。"
    else
      echo "⚠️ 存入钥匙串失败。"
    fi
  fi
fi
unset PW_SAVE

# 挂载后打开「交换区」的访达窗口，并确保显示工具栏/侧边栏
/usr/bin/open "/Volumes/交换区" >/dev/null 2>&1
/usr/bin/osascript -e 'tell application "Finder"
delay 0.4
try
  set toolbar visible of front Finder window to true
  if sidebar width of front Finder window is 0 then set sidebar width of front Finder window to 200
end try
end tell' >/dev/null 2>&1
echo
echo "✅ 已挂载到访达：/Volumes/交换区"
if [ -f "$CACHE/autosave.conf" ] && grep -q '^off$' "$CACHE/autosave.conf" 2>/dev/null; then
  echo "   自动保存：已关闭 —— 改完请用菜单 1 保存，或选 2/3 保存并退出。"
else
  echo "   文件写入后约 1~2 秒会【自动保存】，不需要手动操作。"
fi

jget() { /usr/bin/plutil -extract "$1" raw -o - "$CACHE/state.json" 2>/dev/null; }
phase_now() { jget phase; }
fmt1() { awk -v v="${1:-0}" 'BEGIN{printf "%.1f", v}'; }
bar() {
  local pct=${1:-0} w=${2:-20} i fill f="" e=""
  [ "${pct:-0}" -lt 0 ] 2>/dev/null && pct=0
  [ "$pct" -gt 100 ] 2>/dev/null && pct=100
  fill=$(( pct * w / 100 ))
  for ((i=0;i<fill;i++)); do f+="█"; done
  for ((i=fill;i<w;i++)); do e+="░"; done
  printf "%s%s" "$f" "$e"
}

# 按数值给速度上色
spd_color() {
  local v=${1:-0}
  if   awk -v x="$v" 'BEGIN{exit !(x>=20)}'; then printf "%s" "$C_GREEN"
  elif awk -v x="$v" 'BEGIN{exit !(x>=8)}';  then printf "%s" "$C_CYAN"
  elif awk -v x="$v" 'BEGIN{exit !(x>=1)}';  then printf "%s" "$C_YELLOW"
  else printf "%s" "$C_GREY"; fi
}

save_summary() {
  local mb=$(jget last_save_mb) secs=$(jget last_save_secs) mbs=$(jget last_save_mbs)
  [ -z "$mb" ] && return 0
  local v=$(fmt1 "$mbs"); local sc=$(spd_color "$v")
  printf "  ${C_GREEN}${C_BOLD}✔ 已保存${C_RESET} ${C_WHITE}${C_BOLD}%s MB${C_RESET}  ${C_WHITE}用时${C_RESET} %s 秒  ${C_WHITE}均速${C_RESET} %s%s MB/s${C_RESET}\n" "$(fmt1 "$mb")" "$(fmt1 "$secs")" "$sc" "$v"
}
wait_saved() {
  local i ph cur tot pct mbs mb totmb eta sc
  for i in {1..2400}; do
    ph=$(phase_now)
    case "$ph" in
      已加密保存*) printf "\r\033[K"; return 0;;
      保存未完成*) printf "\r\033[K"; return 1;;
    esac
    case "$ph" in 正在保存*) ;; *) sleep 0.25; continue;; esac
    cur=$(jget save_bytes); tot=$(jget save_total)
    if [ -n "$cur" ] && [ -n "$tot" ] && [ "${tot:-0}" -gt 0 ] 2>/dev/null; then
      pct=$(( cur * 100 / tot ))
      mbs=$(fmt1 "$(jget save_mbs)")
      sc=$(spd_color "$mbs")
      mb=$(awk -v b="$cur" 'BEGIN{printf "%.1f", b/1048576}')
      totmb=$(awk -v b="$tot" 'BEGIN{printf "%.1f", b/1048576}')
      if [ "$pct" -ge 100 ]; then
        printf "\r  %s ${C_BOLD}${C_WHITE}100%%${C_RESET}  ${C_WHITE}%s/%s MB${C_RESET}  ${C_YELLOW}收尾中（校验/更新基线）${C_RESET}   " "$(bar 100 20)" "$mb" "$totmb"
      else
        eta=$(awk -v c="$cur" -v t="$tot" -v v="$mbs" 'BEGIN{if (v>0.1) printf "剩余 %ds", (t-c)/1048576/v; else printf "        "}')
        printf "\r  %s ${C_BOLD}${C_WHITE}%3d%%${C_RESET}  ${C_WHITE}%s/%s MB${C_RESET}  %s%s MB/s${C_RESET}  ${C_YELLOW}%s${C_RESET}   " "$(bar "$pct" 20)" "$pct" "$mb" "$totmb" "$sc" "$mbs" "$eta"
      fi
    fi
    sleep 0.25
  done
  printf "\r\033[K"; return 2
}

menu() {
  local as="开启" dot r w line
  dot="[●]"
  if [ -f "$CACHE/autosave.conf" ] && grep -q '^off$' "$CACHE/autosave.conf" 2>/dev/null; then
    as="关闭"; dot="[○]"
  fi
  r=$(fmt1 "$(jget read_mbs)"); w=$(fmt1 "$(jget write_mbs)")
  line="──────────────────────────────────────────────"
  printf "\n%s\n" "$line"
  printf "  EDP 加密 U 盘 · 交换区\n"
  printf "  挂载点    /Volumes/交换区\n"
  printf "  自动保存  %s %s      读 %s MB/s   写 %s MB/s\n" "$dot" "$as" "$r" "$w"
  printf "%s\n" "$line"
  printf "  1) 立即保存          2) 保存并退出\n"
  printf "  3) 保存并弹出        4) 不保存直接退出\n"
  if [ "$as" = "关闭" ]; then
    printf "  5) 开启自动保存      6) 打开访达\n"
  else
    printf "  5) 关闭自动保存      6) 打开访达\n"
  fi
  printf "%s\n" "$line"
  printf "  请选择 > "
}
menu
while true; do
  if ! kill -0 $DAEMON 2>/dev/null; then
    echo; echo "会话已结束（卷可能已在访达中被弹出）。"
    break
  fi
  if read -t 2 ch; then
    case "$ch" in
      1) printf 'save\n' > "$CACHE/ctrl"; echo "正在加密写回…"; if wait_saved; then save_summary; else echo "⚠️ 保存未完成（详情见上方输出）"; fi; menu ;;
      2) printf 'save\n' > "$CACHE/ctrl"; echo "正在加密写回…"; wait_saved && save_summary
         printf 'quit\n' > "$CACHE/ctrl"
         for i in {1..60}; do kill -0 $DAEMON 2>/dev/null || break; sleep 1; done
         /usr/sbin/diskutil mount "${DISK}s1" >/dev/null 2>&1
         echo "已卸载交换区，U 盘仍在。"; read -k 1 "?按任意键关闭窗口"; exit 0 ;;
      3) printf 'save\n' > "$CACHE/ctrl"; echo "正在加密写回…"; wait_saved && save_summary
         printf 'eject\n' > "$CACHE/ctrl"; echo "正在弹出 U 盘…"
         for i in {1..60}; do kill -0 $DAEMON 2>/dev/null || break; sleep 1; done
         echo "✅ 已弹出，可以安全拔线。"; read -k 1 "?按任意键关闭窗口"; exit 0 ;;
      5) if [ -f "$CACHE/autosave.conf" ] && grep -q '^off$' "$CACHE/autosave.conf" 2>/dev/null; then
           rm -f "$CACHE/autosave.conf"; echo "✅ 已开启自动保存"
         else
           echo "off" > "$CACHE/autosave.conf"; echo "✅ 已关闭自动保存（改动需用菜单 1 或 2 保存）"
         fi
         sleep 1; menu ;;
      6) /usr/bin/open "/Volumes/交换区" 2>/dev/null || echo "访达里打开 /Volumes/交换区"; menu ;;
      4) printf 'discard\n' > "$CACHE/ctrl"
         for i in {1..60}; do kill -0 $DAEMON 2>/dev/null || break; sleep 1; done
         /usr/sbin/diskutil mount "${DISK}s1" >/dev/null 2>&1
         echo "已退出。"; read -k 1 "?按任意键关闭窗口"; exit 0 ;;
      *) menu ;;
    esac
  fi
done
wait $DAEMON 2>/dev/null
/usr/sbin/diskutil mount "${DISK}s1" >/dev/null 2>&1
read -k 1 "?按任意键关闭窗口"
