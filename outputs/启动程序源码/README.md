# Swift 启动程序

## 文件说明

| 文件 | 用途 |
|---|---|
| `edp.swift` | Swift 源码 |
| `edp-mount` | 现存挂载器构建产物 |
| `edp-universal` | 现存通用架构构建产物 |
| `EDP交换区.command` | 挂载、保存、退出和弹出菜单入口 |
| `EDP-立即保存.command` | 无菜单窗口时的一次性保存：加密写回 + 全量回读校验 |
| `EDP-保存并退出.command` | 保存 → 卸载交换区 → 挂回启动区 → 可安全拔线 |
| `使用说明.txt` | 终端用户操作说明 |
| `安装免密码.command` | 可选的本机安装配置脚本，使用前查看脚本内容 |

## 使用入口

先阅读 [使用说明.txt](使用说明.txt)。`EDP交换区.command` 会把手上的这份脚本复制到本机缓存再运行，并从 `/Volumes/启动区` 取同版本的 `edp-mount`；本目录既是源码目录，也是部署来源。

把入口部署到 U 盘启动区（启动区需处于挂载状态）：

```bash
./scripts/deploy_boot_area.sh            # 默认目标 /Volumes/启动区
./scripts/deploy_boot_area.sh /Volumes/启动区
```

脚本会校验目标卷是 FAT、核对空间、复制 `EDP交换区.command` / `EDP-立即保存.command` / `EDP-保存并退出.command` / `edp-mount` / `使用说明.txt`，最后用 `dot_clean` 清掉 FAT 上的 AppleDouble `._` 文件。

启动区容量只有 10.5 MB（厂商 Windows 客户端已占约 8.9 MB），`edp-mount` 占 618 KB。本机装了 `/usr/local/libexec/edp-mount` 时不必随盘携带该二进制，删掉可退回约 1.4 MB。

2026-11-15 已在真盘部署过一次：启动区现有 3 个入口脚本、`edp-mount` 与 `使用说明.txt`，部署后剩余 868 KiB。本机保存行为为手动模式（`~/Library/Caches/edp-mount/autosave.conf` 内容为 `off`）。

## 当前保存行为说明

依据整理前 README 顶部的 2026-10-27 修复说明：保存包含刷新、写入和本次全部改动区间回读；短读或校验差异返回失败，保存失败不继续退出或弹盘。性能和设备兼容情况需结合对应验证材料判断。

## 开发与验证资料

- [技术说明](../../docs/reports/技术文档-EDP交换区macOS客户端.md)
- [验证证据](../验证证据/)
- [真实读写验证记录](../真实读写验证.json)
- [原始开发记录](../../docs/history/启动程序开发记录-整理前.md)：完整保留旧 README，含重复段落、历史性能与后来调整过的行为，仅作历史参考。
- [开发目录说明](../../work/README.md)

旧构建备份集中存放于 `archive/backups/`，不作为当前运行入口。

## 构建产物与哈希

仓库内的 `edp-mount`、`edp-universal` 是 2026-10-27 经真盘回归验证的那一版构建（两者内容相同，均为 x86_64 + arm64 通用二进制）：

| 文件 | SHA256 |
|---|---|
| `edp-mount` | `beb2a0413faafa85f457b932ae646007f22d847e13c2c90ab6a627013374ae54` |
| `edp-universal` | `beb2a0413faafa85f457b932ae646007f22d847e13c2c90ab6a627013374ae54` |

用 [`scripts/build.sh`](../../scripts/build.sh) 重新构建得到的二进制哈希通常与上表不同（Swift 工具链版本与优化器差异），行为以 `edp.swift` 为准。
替换 U 盘上的程序前，应重跑 `work/修复回归/` 的用例，不要只看编译成功。
