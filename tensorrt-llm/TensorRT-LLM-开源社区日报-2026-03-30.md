# TensorRT-LLM 开源社区日报 - 2026-03-30

> 📅 报告日期: 2026年3月30日
> 🔗 仓库: [NVIDIA/TensorRT-LLM](https://github.com/NVIDIA/TensorRT-LLM)

---

## 📊 今日概览

| 指标 | 数量 |
|------|------|
| 新增 PR | 17 |
| 合并 PR | 5 |
| 新增 Issues | 1 |
| Commits | 18 (过去24小时) |

### 🔍 重点关注领域

| 领域 | 相关 PR/Issues |
|------|---------------|
| **DeepSeek** | PR #12533 - DeepSeekV3 nvfp4 mtp3_fp8kv_chunked 测试 |
| **Nemotron** | Issue #12573, PR #12578, #12587 - Nemotron-3-Nano-4B 问题修复 |
| **P/D 分离 (Disaggregated Serving)** | PR #12575, #12580, #12584, #12587, Issue #12560, #12542, #12540 |
| **CacheTransceiver** | PR #12554, #12580, #12584, Issue #12542 |
| **量化方案 (NVFP4/FP8)** | PR #12533, #12544, #12557, Issue #12558 |
| **CUDA Kernel 优化** | PR #12537, #12581, #12585, #12588, #12557 |

---

## 🔥 活跃PR列表

### 🚀 高优先级 PR

| # | 标题 | 作者 | 更新时间 | 状态 |
|---|------|------|----------|------|
| [12584](https://github.com/NVIDIA/TensorRT-LLM/pull/12584) | [fix] fix test_py_cache_transceiver_mp | chuangz0 | 2026-03-30 | 🔵 OPEN |
| [12588](https://github.com/NVIDIA/TensorRT-LLM/pull/12588) | [feat] Support rejection sampling in EAGLE3 dynamic tree | zhaoyangwang-nvidia | 2026-03-30 | 🔵 OPEN |
| [12580](https://github.com/NVIDIA/TensorRT-LLM/pull/12580) | [fix] unwaive test_disaggregated_overlap_transceiver_runtime_python | chuangz0 | 2026-03-30 | 🔵 OPEN |
| [12581](https://github.com/NVIDIA/TensorRT-LLM/pull/12581) | [perf] Reduce host overhead caused by torch.compile in speculative decoding | hyukn | 2026-03-30 | 🔵 OPEN |
| [12585](https://github.com/NVIDIA/TensorRT-LLM/pull/12585) | [fix] always sync sampler_event in update_requests | Funatiq | 2026-03-30 | 🔵 OPEN |

### 📦 其他活跃 PR

| # | 标题 | 作者 | 更新时间 |
|---|------|------|----------|
| [12589](https://github.com/NVIDIA/TensorRT-LLM/pull/12589) | [infra] Waive 1 failed cases for main in pre-merge 31714 | ZhanruiSunCh | 2026-03-30 |
| [12586](https://github.com/NVIDIA/TensorRT-LLM/pull/12586) | [feat] Add --custom_tokenizer CLI option to trtllm-bench | qiaoxj07 | 2026-03-30 |
| [12582](https://github.comgithub.com/NVIDIA/TensorRT-LLM/pull/12582) | [chore] Use TRTLLM_NAMESPACE_BEGIN macro instead of non-inline namespace '_v1' workaround | yihwang-nv | 2026-03-30 |
| [12577](https://github.com/NVIDIA/TensorRT-LLM/pull/12577) | [doc] Update C++ coding guidelines | hnover-nv | 2026-03-30 |
| [12576](https://github.com/NVIDIA/TensorRT-LLM/pull/12576) | [fix] Fix BUILD_DEEP_EP=OFF | dongfengy | 2026-03-29 |
| [12575](https://github.com/NVIDIA/TensorRT-LLM/pull/12575) | [fix] Fix Pyxis Error in Disagg Perf Test | chenfeiz0326 | 2026-03-30 |
| [12574](https://github.com/NVIDIA/TensorRT-LLM/pull/12574) | [fix] Re-enable passing tests | dongfengy | 2026-03-30 |
| [12572](https://github.com/NVIDIA/TensorRT-LLM/pull/12572) | [chore] Remove closed bugs | xinhe-nv | 2026-03-29 |
| [12571](https://github.com/NVIDIA/TensorRT-LLM/pull/12571) | [fix] Fix DSACacheManager and RocketCacheManager KV cache estimation ignoring num_layers for draft models | lancelly | 2026-03-30 |
| [12568](https://github.com/NVIDIA/TensorRT-LLM/pull/12568) | [fix] Re-enable passing tests | dongfengy | 2026-03-30 |

---

## ✅ 今日新增PR (2026-03-29 ~ 2026-03-30)

共 **17** 个 PR 在过去24小时内创建：

| # | 标题 | 作者 | 创建时间 | 状态 |
|---|------|------|----------|------|
| [12589](https://github.com/NVIDIA/TensorRT-LLM/pull/12589) | [infra] Waive 1 failed cases for main in pre-merge 31714 | ZhanruiSunCh | 2026-03-30 13:22 | 🔵 OPEN |
| [12588](https://github.com/NVIDIA/TensorRT-LLM/pull/12588) | [feat] Support rejection sampling in EAGLE3 dynamic tree | zhaoyangwang-nvidia | 2026-03-30 10:22 | 🔵 OPEN |
| [12587](https://github.com/NVIDIA/TensorRT-LLM/pull/12587) | [test] Waive another flaky test case on Dis-agg serving with Nemotron | nv-guomingz | 2026-03-30 08:37 | 🟣 MERGED |
| [12586](https://github.com/NVIDIA/TensorRT-LLM/pull/12586) | [feat] Add --custom_tokenizer CLI option to trtllm-bench | qiaoxj07 | 2026-03-30 08:32 | 🔵 OPEN |
| [12585](https://github.com/NVIDIA/TensorRT-LLM/pull/12585) | [fix] always sync sampler_event in update_requests | Funatiq | 2026-03-30 08:04 | 🔵 OPEN |
| [12584](https://github.com/NVIDIA/TensorRT-LLM/pull/12584) | [fix] fix test_py_cache_transceiver_mp | chuangz0 | 2026-03-30 06:56 | 🔵 OPEN |
| [12583](https://github.com/NVIDIA/TensorRT-LLM/pull/12583) | [fix] fix test_py_cache_transceiver_mp (duplicate) | chuangz0 | 2026-03-30 06:53 | 🔴 CLOSED |
| [12582](https://github.com/NVIDIA/TensorRT-LLM/pull/12582) | [chore] Use TRTLLM_NAMESPACE_BEGIN macro | yihwang-nv | 2026-03-30 06:45 | 🔵 OPEN |
| [12581](https://github.com/NVIDIA/TensorRT-LLM/pull/12581) | [perf] Reduce host overhead caused by torch.compile | hyukn | 2026-03-30 06:38 | 🔵 OPEN |
| [12580](https://github.com/NVIDIA/TensorRT-LLM/pull/12580) | [fix] unwaive test_disaggregated_overlap_transceiver_runtime_python | chuangz0 | 2026-03-30 06:23 | 🔵 OPEN |
| [12579](https://github.com/NVIDIA/TensorRT-LLM/pull/12579) | [chore] Fixing guardword check | VALLIS-NERIA | 2026-03-30 03:00 | 🟣 MERGED |
| [12578](https://github.com/NVIDIA/TensorRT-LLM/pull/12578) | [test] Waive a flaky test case on Dis-agg serving with Nemotron | nv-guomingz | 2026-03-30 02:06 | 🟣 MERGED |
| [12577](https://github.com/NVIDIA/TensorRT-LLM/pull/12577) | [doc] Update C++ coding guidelines | hnover-nv | 2026-03-29 21:39 | 🔵 OPEN |
| [12576](https://github.com/NVIDIA/TensorRT-LLM/pull/12576) | [fix] Fix BUILD_DEEP_EP=OFF | dongfengy | 2026-03-29 15:32 | 🔵 OPEN |
| [12575](https://github.com/NVIDIA/TensorRT-LLM/pull/12575) | [fix] Fix Pyxis Error in Disagg Perf Test | chenfeiz0326 | 2026-03-29 15:30 | 🔵 OPEN |
| [12574](https://github.com/NVIDIA/TensorRT-LLM/pull/12574) | [fix] Re-enable passing tests | dongfengy | 2026-03-29 15:12 | 🔵 OPEN |
| [12573](https://github.com/NVIDIA/TensorRT-LLM/pull/12573) | (Issue) Nemotron-3-Nano-4B-FP8 mamba_ssm_prepare_metadata shape mismatch | kimchi-developer | 2026-03-29 14:27 | 🔵 OPEN |

---

## ✅ 今日已合并PR

共 **5** 个 PR 在过去24小时内被合并：

| # | 标题 | 作者 | 合并时间 | 说明 |
|---|------|------|----------|------|
| [12587](https://github.com/NVIDIA/TensorRT-LLM/pull/12587) | [test] Waive another flaky test case on Dis-agg serving with Nemotron | nv-guomingz | 2026-03-30 08:39 | Nemotron 测试修复 |
| [12579](https://github.com/NVIDIA/TensorRT-LLM/pull/12579) | [chore] Fixing guardword check | VALLIS-NERIA | 2026-03-30 03:37 | 内存安全检查 |
| [12578](https://github.com/NVIDIA/TensorRT-LLM/pull/12578) | [test] Waive a flaky test case on Dis-agg serving with Nemotron | nv-guomingz | 2026-03-30 02:15 | Nemotron 测试修复 |
| [12570](https://github.com/NVIDIA/TensorRT-LLM/pull/12570) | [feat] Eagle: Norm before FC | dongfengy | 2026-03-30 04:52 | Eagle 优化特性 |
| [12569](https://github.com/NVIDIA/TensorRT-LLM/pull/12569) | [fix] Fix triton_kernels in wheel | dongfengy | 2026-03-30 04:45 | Triton Kernel 修复 |
| [12556](https://github.com/NVIDIA/TensorRT-LLM/pull/12556) | [test] AutoDeploy: unwaive Super V3 autodeploy failure | galagam | 2026-03-30 06:57 | AutoDeploy 测试修复 |

---

## 📋 今日Commit摘要

### 主要提交 (2026-03-29 ~ 2026-03-30)

| Commit | 作者 | 时间 | 变更说明 |
|--------|------|------|----------|
| `db1c637` | Chang Su | 2026-03-30 10:21 | [#11992][fix] Support include_stop_token_in_output in gRPC request manager |
| `7273bad` | Guoming Zhang | 2026-03-30 08:39 | [test] Waive another flaky test case on Dis-agg serving with Nemotron |
| `58d6975` | Gal Hubara-Agam | 2026-03-30 06:57 | [test] AutoDeploy: unwaive Super V3 autodeploy failure |
| `f0b336e` | dongfengy | 2026-03-30 04:45 | [fix] Fix triton_kernels in wheel |
| `628bb56` | xiweny | 2026-03-30 03:37 | [chore] Fixing guardword check |
| `b837c63` | yuanjingx87 | 2026-03-30 03:30 | [chore] Bump version to 1.3.0rc10 |
| `0272d23` | TensorRT LLM | 2026-03-30 03:08 | [infra] Check in most recent lock file from nightly pipeline |
| `a34c981` | Guoming Zhang | 2026-03-30 02:15 | [test] Waive a flaky test case on Dis-agg serving with Nemotron |
| `8ce0518` | JunyiXu-nv | 2026-03-29 04:06 | [fix] Use extra_visual_gen_options to help de... |
| `7e7775e` | TensorRT LLM | 2026-03-29 03:06 | [infra] Check in most recent lock file from nightly pipeline |

---

## 🔥 重点关注详情

### 1️⃣ P/D 分离 (Disaggregated Serving)

**相关 PRs:**
- **[#12584](https://github.com/NVIDIA/TensorRT-LLM/pull/12584)** - fix test_py_cache_transceiver_mp (CacheTransceiver 测试修复)
- **[#12580](https://github.com/NVIDIA/TensorRT-LLM/pull/12580)** - unwaive test_disaggregated_overlap_transceiver_runtime_python
- **[#12575](https://github.com/NVIDIA/TensorRT-LLM/pull/12575)** - Fix Pyxis Error in Disagg Perf Test
- **[#12587](https://github.com/NVIDIA/TensorRT-LLM/pull/12587)** / **[#12578](https://github.com/NVIDIA/TensorRT-LLM/pull/12578)** - Nemotron Dis-agg serving 测试修复

**相关 Issues:**
- **[#12560](https://github.com/NVIDIA/TensorRT-LLM/issues/12560)** - Disaggregated serving hang on block reuse
- **[#12542](https://github.com/NVIDIA/TensorRT-LLM/issues/12542)** - KV cache block evicted from reuse tree before async CacheSender completes transfer
- **[#12540](https://github.com/NVIDIA/TensorRT-LLM/issues/12540)** - Disaggregated Serving: Sequence Lifecycle Race Condition in PyExecutor

### 2️⃣ CacheTransceiver

**相关 PRs:**
- **[#12584](https://github.com/NVIDIA/TensorRT-LLM/pull/12584)** - fix test_py_cache_transceiver_mp
- **[#12580](https://github.com/NVIDIA/TensorRT-LLM/pull/12580)** - unwaive test_disaggregated_overlap_transceiver_runtime_python
- **[#12554](https://github.com/NVIDIA/TensorRT-LLM/pull/12554)** - Fix failing KV Cache Transceiver Tests from #11574

### 3️⃣ Nemotron 模型支持

**相关 PRs:**
- **[#12587](https://github.com/NVIDIA/TensorRT-LLM/pull/12587)** / **[#12578](https://github.com/NVIDIA/TensorRT-LLM/pull/12578)** - Waive flaky test case on Dis-agg serving with Nemotron

**相关 Issues:**
- **[#12573](https://github.com/NVIDIA/TensorRT-LLM/issues/12573)** - Nemotron-3-Nano-4B-FP8 mamba_ssm_prepare_metadata shape mismatch on multi-token prefill

### 4️⃣ DeepSeek 模型支持

**相关 PRs:**
- **[#12533](https://github.com/NVIDIA/TensorRT-LLM/pull/12533)** - Unwaive DeepSeekV3 nvfp4 mtp3_fp8kv_chunked test
- **[#12557](https://github.com/NVIDIA/TensorRT-LLM/pull/12557)** - Optimize GDN of Qwen3-Next/3.5; adds BF16 TRTLLM MoE

### 5️⃣ 量化方案 (NVFP4/FP8)

**相关 PRs:**
- **[#12544](https://github.com/NVIDIA/TensorRT-LLM/pull/12544)** - Enable NVFP4 KV cache support in trtllm-gen attention
- **[#12533](https://github.com/NVIDIA/TensorRT-LLM/pull/12533)** - Unwaive DeepSeekV3 nvfp4 mtp3_fp8kv_chunked test
- **[#12557](https://github.com/NVIDIA/TensorRT-LLM/pull/12557)** - Optimize GDN of Qwen3-Next/3.5; adds BF16 TRTLLM MoE

**相关 Issues:**
- **[#12558](https://github.com/NVIDIA/TensorRT-LLM/issues/12558)** - Support for MXFP4 W4A8 quantization on Hopper

### 6️⃣ CUDA Kernel 优化

**相关 PRs:**
- **[#12588](https://github.com/NVIDIA/TensorRT-LLM/pull/12588)** - Support rejection sampling in EAGLE3 dynamic tree
- **[#12581](https://github.com/NVIDIA/TensorRT-LLM/pull/12581)** - Reduce host overhead caused by torch.compile in speculative decoding
- **[#12585](https://github.com/NVIDIA/TensorRT-LLM/pull/12585)** - always sync sampler_event in update_requests
- **[#12537](https://github.com/NVIDIA/TensorRT-LLM/pull/12537)** - Add Mamba2 MTP SSM cache CUDA kernel for tree-based speculative decoding
- **[#12557](https://github.com/NVIDIA/TensorRT-LLM/pull/12557)** - Optimize GDN of Qwen3-Next/3.5; adds BF16 TRTLLM MoE

---

## 📈 社区贡献动态

### 社区 PR (Community want to contribute)

| # | 标题 | 作者 | 状态 |
|---|------|------|------|
| [12564](https://github.com/NVIDIA/TensorRT-LLM/pull/12564) | Add Prometheus gauge metrics for Kubernetes Inference Gateway routing | BenjaminBraunDev | 🔵 OPEN |
| [12562](https://github.com/NVIDIA/TensorRT-LLM/pull/12562) | Add years to README dates and organize into collapsible year sections | devabhixda | 🔵 OPEN |
| [12559](https://github.com/NVIDIA/TensorRT-LLM/pull/12559) | Guard SWA block detachment for non-SWA and beam search | wojciech-wais | 🔵 OPEN |
| [12547](https://github.com/NVIDIA/TensorRT-LLM/pull/12547) | Replace assertions with warnings for unsupported logits/logprobs | yifjiang | 🔵 OPEN |
| [12545](https://github.com/NVIDIA/TensorRT-LLM/pull/12545) | Add production-level Prometheus metrics | nvyutwu | 🔵 OPEN |

---

## 📌 版本更新

- **版本号**: 1.3.0rc10 (2026-03-30 发布)
- 相关 Commit: `b837c63` - Bump version to 1.3.0rc10

---

*本报告由 OpenClaw Agent 自动生成*
*数据来源: GitHub API | 生成时间: 2026-03-30*
