# TensorRT-LLM 开源社区日报 - 2026-04-17

> 本文档由自动化脚本生成，数据来源于 NVIDIA/TensorRT-LLM 开源仓库
> - 生成时间: 2026-04-17 07:40:00 (GMT+8)
> - 统计周期: 过去 24 小时 (2026-04-16 ~ 2026-04-17)

---

## 📊 PR 概览

| 状态 | 数量 |
|------|------|
| 🔓 Open PRs (活跃) | 50+ |
| 🆕 New PRs (24h内新建) | 5 |
| ✅ Merged PRs (24h内合并) | 待统计 |
| ❌ Closed PRs (24h内关闭) | 待统计 |

---

## 🆕 新增 PR (24小时内)

### 1. [#13138] [feat] DO NOT MERGE: Stacked changes for nano nemotron omni
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/13138
- **作者**: @2ez4bz
- **状态**: Open
- **创建时间**: 2026-04-16 23:19:25Z
- **摘要**: 为 nano nemotron omni 模型堆叠变更，包含音频提取、直接音频输入支持以及 NemotronH_Nano_Omni_Reasoning_V3 模型支持

### 2. [#13137] [chore] Add startup profiling instrumentation and benchmark
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/13137
- **作者**: @chienchunhung
- **状态**: Open (Draft)
- **创建时间**: 2026-04-16 23:18:03Z
- **摘要**: 添加启动性能分析工具和基准测试

### 3. [#13136] [chore] Add disaggregated tests that timeout to waives.txt
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/13136
- **作者**: @2ez4bz
- **状态**: Open (Auto-merge enabled)
- **创建时间**: 2026-04-16 23:12:26Z
- **摘要**: 将超时的分布式测试添加到豁免列表

### 4. [#13132] [fix] accuracy/test_llm_api_pytorch.py test_guided_decoding_4gpus hang fix
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/13132
- **作者**: @ziyixiong-nv
- **状态**: Open
- **创建时间**: 2026-04-16 19:55:27Z
- **摘要**: 修复 NVBug 6076767 - 在 warmup 前添加 barrier 防止 PP (Pipeline Parallelism) hang

### 5. [#13130] [fix] Fix host memory usage regression with spec dec
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/13130
- **作者**: @mikeiovine
- **状态**: Open
- **创建时间**: 2026-04-16 16:48:12Z
- **摘要**: 修复推测解码开启时 KV cache 主机内存使用回归问题

---

## 🔥 近期活跃 PR 列表 (Open)

### 高优先级/社区贡献

| # | 标题 | 作者 | 状态 | 更新时间 |
|---|------|------|------|----------|
| 13138 | [feat] DO NOT MERGE: Stacked changes for nano nemotron omni | @2ez4bz | 🔓 Open | 2026-04-16 |
| 13137 | [chore] Add startup profiling instrumentation and benchmark | @chienchunhung | 📝 Draft | 2026-04-16 |
| 13136 | [chore] Add disaggregated tests that timeout to waives.txt | @2ez4bz | 🔓 Open | 2026-04-16 |
| 13132 | [fix] [TensorRT-LLM][release/1.2.1]: accuracy/test_llm_api_pytorch.py hang fix | @ziyixiong-nv | 🔓 Open | 2026-04-16 |
| 13130 | [fix] Fix host memory usage regression with spec dec | @mikeiovine | 🔓 Open | 2026-04-16 |
| 13095 | [pref] Consolidate prefix reuse queries into single analyzePrefixReuse radix tree walk | @SimengLiu-nv | 🔓 Open | 2026-04-16 |
| 13088 | [chore] Unwaive DSR1 FP4 128k8k disagg perf tests | @peihu-nv | 🔓 Open | 2026-04-16 |
| 13056 | [fix] Enforce kv_transfer_timeout_ms on prefill sender + guard against dangling pointers | @yifjiang | 🔓 Open | 2026-04-16 |
| 12944 | [feat] Chunked prefill support for video data (non-contiguous) | @venkywonka | 🔓 Open | 2026-04-16 |
| 12778 | [feat] Update SLURM job submission logic to retry up to 3 times | @dpitman-nvda | 🔓 Open | 2026-04-16 |

---

## 📈 Commit 摘要 (过去 24 小时)

### 最新 10 条提交

| SHA | 提交信息 | 作者 | 时间 |
|-----|----------|------|------|
| `4d29d83` | [fix] Remove waives for DS-V3.2/R1 FP4 Blackwell perf tests | @peihu-nv | 2026-04-16 19:31:40Z |
| `61cef21` | [chore] Bump version to 1.3.0rc12 | @VALLIS-NERIA | 2026-04-16 16:21:12Z |
| `ec44d8c` | [infra] Move PY312-UB2404 sanityCheck test to A100X node | @yiqingy0 | 2026-04-16 11:02:50Z |
| `ac9ea3c` | [infra] Waive 1 failed cases for main in post-merge 2653 | @ZhanruiSunCh | 2026-04-16 07:44:54Z |
| `90fe0d3` | [fix] Remove leftover onboardBlocks param in kvCacheManagerTest | @eopXD | 2026-04-16 06:55:39Z |
| `b01ff5e` | [infra] Exclude QA nodes when running TRTLLM CI | @yuanjingx87 | 2026-04-16 05:16:22Z |
| `52883a3` | [infra] Waive 3 failed cases for main in post-merge 2652 | @ZhanruiSunCh | 2026-04-16 04:00:00Z |
| `17aee3f` | [infra] Check in most recent lock file from nightly pipeline | @tensorrt-cicd | 2026-04-16 03:01:27Z |
| `ec34644` | [chore] Remove onboard block switch for KV cache manager | @eopXD | 2026-04-16 01:38:02Z |
| `c601f97` | [fix] Update CODING_GUIDELINES.md to say Python >= 3.10 | @hnover-nv | 2026-04-16 00:31:05Z |
| `6da0277` | [feat] Unify image as tensor to avoid multiple conversions for nano model | @Wanli-Jiang | 2026-04-16 00:23:29Z |

---

## 🔍 功能亮点

### 1. 多模态功能增强
- **PR #13138**: Nemotron Nano Omni V3 模型支持，新增音频提取和直接音频输入功能
- **PR #12944**: 视频数据的块化预填充支持（非连续数据），提升 3.4x 处理性能

### 2. 性能优化
- **PR #13095**: Prefix-aware 调度优化，将 radix tree 遍历次数从 5 次减少到 1 次
- **PR #13130**: 修复推测解码导致的主机内存使用回归问题

### 3. 稳定性修复
- **PR #13056**: 修复分布式预填充发送器的 KV 传输超时和悬空指针问题
- **PR #13132**: 修复 Pipeline Parallelism 下的 guided decoding hang 问题

### 4. 基础设施改进
- **PR #12778**: SLURM 作业提交逻辑增强，支持最多 3 次重试
- **PR #13137**: 启动性能分析工具添加

---

## 📦 版本更新

**版本升级**: 1.3.0rc11 → **1.3.0rc12** (`61cef21`)

---

## 👥 社区贡献统计

### 24小时内活跃贡献者

| 用户名 | PR数量 | 提交数量 |
|--------|--------|----------|
| @peihu-nv | 1 | 1 |
| @ZhanruiSunCh | - | 2 |
| @eopXD | - | 2 |
| @2ez4bz | 2 | - |
| @yiqingy0 | - | 1 |
| @yuanjingx87 | - | 1 |
| @VALLIS-NERIA | - | 1 |
| @Wanli-Jiang | - | 1 |
| @hnover-nv | - | 1 |
| @tensorrt-cicd | - | 1 |
| @chienchunhung | 1 | - |
| @ziyixiong-nv | 1 | - |
| @mikeiovine | 1 | - |

---

## 🔗 参考链接

- **主仓库**: https://github.com/NVIDIA/TensorRT-LLM
- **文档**: https://nvidia.github.io/TensorRT-LLM
- **Issues**: https://github.com/NVIDIA/TensorRT-LLM/issues
- **Discussions**: https://github.com/NVIDIA/TensorRT-LLM/discussions

---

*报告自动生成，如有疑问请提交 Issue 或联系维护团队*
