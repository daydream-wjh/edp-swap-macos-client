# 历史备份

`backups/` 保存原修复备份目录、旧挂载器二进制和 Python 服务备份。文件内容原样保留，不作为当前启动入口。原位置与 SHA256 见 `docs/整理迁移清单.json`。

## 入库范围

- 入库：`edp.swift`、`EDP交换区.command`、`U盘原版-EDP交换区.command`、`U盘原版-使用说明.txt`、`mirror_server.py.bak-104341` 等文本备份。
- 不入库：`edp-mount`、`U盘原版-edp-mount`、`本机助手-edp-mount`、`edp-mount.shipped-20261026-2136.bak` 四个二进制。

二进制哈希与体积见 [排除文件清单](../docs/排除文件清单.json)，需要时用 [`scripts/build.sh`](../scripts/build.sh) 从 `edp.swift` 重建。
