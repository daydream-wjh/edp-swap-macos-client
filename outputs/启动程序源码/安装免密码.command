#!/bin/zsh
# 一次性配置：让本机以后不用输任何密码就能挂载交换区
set -u
here=${0:A:h}

if [ ! -d /Volumes/启动区 ]; then
  echo "请先插入 U 盘，等「启动区」出现后再运行。"
  read -k 1 "?按任意键退出"; exit 1
fi

echo "== 第 1 步：安装 root 帮助程序（只需管理员密码一次）=="
TMP=$(mktemp /tmp/edp-install.XXXXXX)
cat > "$TMP" <<EOF
#!/bin/sh
set -e
mkdir -p /usr/local/libexec
install -m 0755 -o root -g wheel "$here/edp-mount" /usr/local/libexec/edp-mount
echo "$(whoami) ALL=(root) NOPASSWD: /usr/local/libexec/edp-mount" > /etc/sudoers.d/edp-mount
chmod 0440 /etc/sudoers.d/edp-mount
visudo -cf /etc/sudoers.d/edp-mount
EOF
chmod 700 "$TMP"
if /usr/bin/osascript -e "do shell script \"/bin/sh $TMP\" with administrator privileges" >/dev/null 2>&1; then
  echo "✅ 已安装 /usr/local/libexec/edp-mount，并配置 sudoers 免密"
else
  echo "❌ 安装失败（管理员授权被取消？）"; rm -f "$TMP"; read -k 1 "?按任意键退出"; exit 1
fi
rm -f "$TMP"

if /usr/bin/sudo -n /usr/local/libexec/edp-mount selftest >/dev/null 2>&1; then
  echo "✅ 免密验证通过（sudo -n 可直接运行）"
else
  echo "⚠️ 免密验证未通过，后面仍会提示管理员密码"
fi

echo
echo "== 第 2 步：把 U 盘交换区密码存进钥匙串 =="
if security find-generic-password -a "$USER" -s "edp-exchange-password" -w >/dev/null 2>&1; then
  echo "钥匙串里已有密码。要更新吗？"
  if [ "$(/usr/bin/osascript -e 'button returned of (display dialog "重新输入并更新钥匙串里的交换区密码？" buttons {"跳过","更新"} default button "更新")' 2>/dev/null)" != "更新" ]; then
    echo "跳过。"; read -k 1 "?按任意键退出"; exit 0
  fi
fi
PW=$(/usr/bin/osascript -e 'display dialog "请输入 U 盘交换区密码（存入本机钥匙串，不写明文）" default answer "" with hidden answer buttons {"取消","保存"} default button "保存"' -e 'text returned of result' 2>/dev/null) || { echo "已取消。"; exit 0; }
[ -z "$PW" ] && { echo "未输入。"; exit 0; }
security add-generic-password -a "$USER" -s "edp-exchange-password" -w "$PW" -U 2>/dev/null
unset PW
if [ -n "$(security find-generic-password -a "$USER" -s "edp-exchange-password" -w 2>/dev/null)" ]; then
  echo "✅ 已存入钥匙串（受 macOS 加密保护，不在 U 盘上留明文）"
else
  echo "❌ 存入失败"
fi
echo
echo "配置完成。以后只需双击 EDP交换区.command，不用再输密码。"
read -k 1 "?按任意键关闭窗口"
