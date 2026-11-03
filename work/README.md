# 开发与测试目录

为保留脚本的导入关系、固定路径和环境配置，本目录已有内容保持原位置。

| 内容 | 位置 |
|---|---|
| 静态分析脚本 | `analyze.py`、`extract_control.py`、`cfg_trace.py`、`trace_static.py`、`pure_pe.py` |
| 元数据读取与解码 | `read_mbr.py`、`read_metadata.py`、`decode_metadata_header.py` |
| 算法与镜像参考实现 | `native_crypto.py`、`sm4*`、`mirror_core.py`、`verify_crypto.py` |
| Python 工具测试 | `test_reader.py`、`test_mirror.py` |
| 数据安全补丁验证 | [补丁验证说明](补丁验证/README.md) |
| 后续修复回归 | `修复回归/` |
| 分析结果与设备资料 | `analysis/`、`device-metadata/` |
| 测试镜像 | `rw-tests/`（不入库，含真实数据） |
| Python 环境及第三方源码 | `analysis-env/`、`exfat-upstream/`（不入库，可重建） |
| 会话与调试资料 | `reader-session/`、`current_reader_session.txt`、`rw-page*`（不入库） |

## 只在本地、不在仓库里的内容

`analysis-env/`（Python 隔离环境）、`exfat-upstream/`（第三方源码副本）、`rw-tests/`（测试镜像与工作区）、
`reader-session/` 与 `usb-copies/`（厂商二进制）按 [.gitignore](../.gitignore) 排除，原因见
[发布范围与敏感数据](../docs/发布范围与敏感数据.md)。

重建 Python 环境：

```bash
python3 -m venv analysis-env
analysis-env/bin/pip install capstone unicorn
```

## 注意

部分历史脚本固定了本机绝对路径或 `/tmp` 路径，不能保证换目录后直接运行。
测试脚本中包含真实设备写入流程；运行前应逐一检查入口和目标。仓库自检只校验文件结构与语法，不运行这些设备测试。
