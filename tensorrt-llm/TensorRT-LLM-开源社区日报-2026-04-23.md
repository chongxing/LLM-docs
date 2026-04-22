# TensorRT-LLM 开源社区日报

**日期**: 2026-04-23
**仓库**: https://github.com/NVIDIA/TensorRT-LLM

## 📊 今日概览
- 活跃PR数量: 49 (Open)
- 今日新增PR: 10
- 今日已合并PR: 1
- 今日Commits: 12

---

## 🔥 活跃PR列表 (Open PRs - 前15项)

| # | 标题 | 作者 | 状态 | 标签 |
|---|------|------|------|------|
| 12472 | [None][fix] Fix multimodal KV cache block reuse for disaggregated serving | indrajit96 | OPEN | |
| 13302 | [None][feat] WideEP FT: add EPGroupHealth thread-safe rank mask | chienchunhung | OPEN | |
| 13056 | [https://nvbugspro.nvidia.com/bug/6104831][fix] Disagg transceiver: shared_ptr<LlmRequest>, RAII buffer holders, kv_transfer_timeout_ms enforcement | yifjiang | OPEN | |
| 13355 | [None][ci] Move 107 B200 4-GPU pytorch tests to GB200 (Wave 1 PR #1) | zheyuf | OPEN | |
| 13354 | [#13321][fix] AutoDeploy: stabilize piecewise CUDA graph outputs with multi_stream_moe | suyoggupta | OPEN | |
| 13255 | [https://nvbugs/6052050][fix] Drop stale CUDA graphs on beam-width change | brb-nv | OPEN | |
| 13069 | [TRTLLM-11974][feat] Handle multimodal placeholder expansion in token space for Nemotron Nano | moraxu | OPEN | |
| 12863 | [https://nvbugs/5911594][fix] Add bearer token auth to HTTP cluster storage endpoints | yibinl-nvidia | OPEN | |
| 12959 | [None][feat] Remove LoRA weights from request broadcast | achartier | OPEN | |
| 13045 | [TRTLLM-11851][feat] MX and GMS integration MVP for Dynamo weight sharing | chienchunhung | OPEN | |
| 13007 | [None][fix] Enable LoRA in PARD speculative decoding | Funatiq | OPEN | |
| 12971 | [None][perf] Skip KV cache estimation by default and update disagg pe… | HuiGao-NV | OPEN | |
| 12944 | [TRTLLM-11951][feat] Chunked prefill for non-contiguous multimodal data + preproc fixes | venkywonka | OPEN | |
| 13170 | [TRTLLM-11353][feat] API to configure TeaCache coefficients | o-stoner | OPEN | |
| 13351 | [Issue-13318][fix] Trim context chunks in _prepare_tp_inputs to prevent over-admission crash | yifjiang | OPEN | Community want to contribute |

---

## ✅ 今日新增PR (2026-04-22)

### 1. [PR #13302](https://github.com/NVIDIA/TensorRT-LLM/pull/13302) - WideEP FT: add EPGroupHealth thread-safe rank mask
- **作者**: chienchunhung
- **状态**: OPEN
- **描述**: 为 WideEP 添加 EPGroupHealth 线程安全的 rank mask 功能

### 2. [PR #13355](https://github.com/NVIDIA/TensorRT-LLM/pull/13355) - Move 107 B200 4-GPU pytorch tests to GB200 (Wave 1 PR #1)
- **作者**: zheyuf
- **状态**: OPEN
- **描述**: CI 基础设施调整，将 107 个 B200 4-GPU PyTorch 测试迁移到 GB200

### 3. [PR #13354](https://github.com/NVIDIA/TensorRT-LLM/pull/13354) - AutoDeploy: stabilize piecewise CUDA graph outputs with multi_stream_moe
- **作者**: suyoggupta
- **状态**: OPEN
- **描述**: 修复 AutoDeploy 中 multi_stream_moe 的 CUDA graph 输出稳定性问题

### 4. [PR #13351](https://github.com/NVIDIA/TensorRT-LLM/pull/13351) - Trim context chunks in _prepare_tp_inputs to prevent over-admission crash
- **作者**: yifjiang
- **状态**: OPEN
- **标签**: Community want to contribute
- **描述**: 修复 Issue #13318，通过裁剪 context chunks 防止 over-admission 崩溃

### 5. [PR #13352](https://github.com/NVIDIA/TensorRT-LLM/pull/13352) - Waive DSV32 tests
- **作者**: brb-nv
- **状态**: MERGED (2026-04-22)
- **描述**: CI 测试豁免调整

### 6. [PR #13350](https://github.com/NVIDIA/TensorRT-LLM/pull/13350) - AutoDeploy: Add missing guided decoding test to CI
- **作者**: govind-ramnarayan
- **状态**: OPEN
- **描述**: 为 AutoDeploy 添加缺失的 guided decoding 测试到 CI

### 7. [PR #13349](https://github.com/NVIDIA/TensorRT-LLM/pull/13349) - Fix Qwen3-30B-A3B NVFP4 tep4 CUTLASS MoE test OOM on B300
- **作者**: tensorrt-cicd
- **状态**: OPEN
- **描述**: 修复 Qwen3-30B-A3B NVFP4 tep4 CUTLASS MoE 测试在 B300 上的 OOM 问题

### 8. [PR #13347](https://github.com/NVIDIA/TensorRT-LLM/pull/13347) - Fix disagg gen-only benchmark hang under ADP router imbalance
- **作者**: chienchunhung
- **状态**: OPEN
- **描述**: 修复在 ADP router 负载不均衡时 disaggregated generation-only benchmark 的挂起问题

### 9. [PR #13345](https://github.com/NVIDIA/TensorRT-LLM/pull/13345) - Support Mixed KV cache Precision for different layers
- **作者**: jindajia
- **状态**: OPEN
- **标签**: Community want to contribute
- **描述**: 支持不同层使用混合 KV cache 精度

### 10. [PR #13346](https://github.com/NVIDIA/TensorRT-LLM/pull/13346) - Clean up SWA work-arounds with the new radix sea…
- **作者**: SimengLiu-nv
- **状态**: OPEN
- **描述**: 使用新的 radix 清理 SWA (Sliding Window Attention) 的 workaround

---

## ✅ 今日已合并PR

| # | 标题 | 作者 | 合并时间 |
|---|------|------|----------|
| 13352 | [None][chore] Waive DSV32 tests | brb-nv | 2026-04-22 |

---

## 📋 今日Commit摘要 (2026-04-22)

| SHA | 时间 | 作者 | 提交信息 |
|-----|------|------|----------|
| 659d5fb | 22:21 | Balaram Buddharaju | [None][chore] Waive DSV32 tests (#13352) |
| 7a8bd87 | 15:19 | dongfengy | [https://nvbugs/6050481][chore] Unwaive passing GPT-OSS ep tests (#13284) |
| 519a7c7 | 15:18 | Balaram Buddharaju | [None][chore] Add Dynamo configs to TRTLLM CI - Disagg - Part 2 (#13168) |
| 29c8806 | 14:17 | Yiyun Lu | [TRTLLM-11733][perf] Cache constant text computations across denoise steps in LT |
| a8a8fa1 | 13:16 | Wanli Jiang | [None][feat] Optimize causal_conv1d prefill and decode kernels (#13103) |
| a1bcae6 | 13:00 | QI JUN | [TRTLLM-12137][chore] Drop non-key-model (starcoder2/mllama/nemotron) cases from |
| 62ce575 | 10:33 | xinhe-nv | [TRTLLM-12062][test] remove obsolete model tests (#13262) |
| 36fb5f0 | 06:42 | Abby Wei | [TRTLLM-11861][infra] Support wildcard in bot stage-list/extra-stage commands ( |
| 342adb3 | 06:27 | Yueh-Ting (eop) Chen | [None][fix] Enforce NCCL >= 2.28 at CMake configure time (#13108) |
| 0d2bea7 | 03:12 | Jiagan Cheng | [None][fix] Fix errors in KV cache manager V2 and scheduler V2 (#13104) |
| 55419a9 | 03:07 | TensorRT LLM | [None][infra] Check in most recent lock file from nightly pipeline |
| f689e60 | 00:35 | chenfeiz0326 | [None][fix] Fix post-merge perf data silently failing to upload to OpenSearch DB |

---

## 🔍 技术洞察

### 今日重点

1. **多模态 KV Cache 重用修复** (PR #12472)
   - 修复了在 P-D/E-P-D 分离式服务中多模态请求（如 Qwen3-VL 带图片）的 KV cache block 重用崩溃问题
   - 核心改动：为 `findBlocksInReuseTreeByBlockKeys` 添加新的 overload，支持预计算的 per-block keys
   - 新增了 3 个测试覆盖多模态 KV cache 重用场景

2. **社区贡献活跃**
   - PR #13351: 社区贡献者修复 over-admission 崩溃
   - PR #13345: 社区贡献者提出混合 KV cache 精度支持

3. **CI 基础设施调整**
   - 大量 CI 相关提交，包括测试迁移、豁免调整、Dynamo 配置集成
   - 12 个 commits 中有 6 个与 CI/测试相关

4. **性能优化**
   - causal_conv1d prefill 和 decode kernels 优化 (PR #13103)
   - 跳过 KV cache 估计以提升性能 (PR #12971)
   - 缓存 LT (Latent Token) 中的常量文本计算

### 技术趋势
- **分离式服务 (Disaggregated Serving)** 持续改进，多模态支持是关键方向
- **AutoDeploy** 稳定性增强，CUDA graph 输出稳定性提升
- **社区参与度** 有所提升，多个社区贡献 PR 进入活跃状态

---

> 报告生成时间: 2026-04-23 07:40 AM (Asia/Shanghai)
> 数据来源: GitHub API (NVIDIA/TensorRT-LLM)
