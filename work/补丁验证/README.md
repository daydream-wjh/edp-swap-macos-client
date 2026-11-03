# 数据安全补丁验证工具（2026-10-27）

这些脚本用于验证 `outputs/启动程序源码/edp.swift` 的三项数据安全修复：

1. 保存期间继续编辑不会被“基线克隆”吞掉（保存前对镜像做 APFS 快照，写回与基线更新都基于快照）
2. 崩溃恢复逐扇区核对（写前/写后密文必须对得上），回滚写入检查返回值并回读，失败保留日志
3. 写回前核对源盘（只核对基线中已分配的扇区；基线中空闲、本次新分配的簇允许覆盖）
4. 回归中补充：新分配的簇即使内容与基线相同也要写回，避免盘上残留旧数据让下次全量校验误判

## 文件

- `gen_synthetic_device.py`：用 `work/rw-tests/base.raw` 生成一台合成 EDP 设备盘
  （`/tmp/edp-synth-test/device.raw`，交换区用真 SM4 加密，空闲簇带脏数据）。
- `test_synthetic_flow.py`：合成盘端到端 21 项测试：挂载、真实保存、崩溃半写回滚、
  陈旧日志跳过、不一致日志拒绝挂载、保存期间编辑不丢失等。不接触真 U 盘。
- `test_real_device.py`：真 U 盘冒烟测试（挂载→新建文件→保存→verify→删除→保存→verify→
  重挂载→原文件哈希比对）。需要 root，并通过 stdin 第一行读取交换区密码。

脚本里的二进制路径固定为 `/tmp/edp-universal-new`，测试目录为 `/tmp/edp-synth-test`、
`/tmp/edp-real-test`；重新构建后请把产物放到该路径，或按需修改脚本顶部常量。

## 运行

```sh
# 合成盘（不需要 root）
python3 -I work/补丁验证/gen_synthetic_device.py /tmp/edp-synth-test
python3 -I work/补丁验证/test_synthetic_flow.py

# 真盘（需要管理员授权；交换区密码从钥匙串管道读入，不落盘）
/usr/bin/security find-generic-password -a "$USER" -s edp-exchange-password -w | \
  sudo /usr/bin/python3 -I work/补丁验证/test_real_device.py /dev/rdisk5 <磁盘字节数> <启动区分区号>
```

真盘测试会临时强制卸载“启动区”，结束后自动挂回；原文件在测试前后做 SHA-256 比对。
