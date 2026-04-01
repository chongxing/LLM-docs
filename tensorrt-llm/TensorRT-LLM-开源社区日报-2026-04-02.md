# TensorRT-LLM 开源社区日报

**日期**: 2026-04-02
**项目**: NVIDIA/TensorRT-LLM

---

## 📊 今日概览

- **新增PR**: 25个
- **已合并**: 1个
- **已关闭**: 2个
- **活跃PR总数**: 22个 (Open)

---

## 🔥 活跃PR列表 (Open)

| # | 标题 | 作者 | 状态 |
|---|------|------|------|
| [#12672](https://github.com/NVIDIA/TensorRT-LLM/pull/12672) | [chore] Sort waives.txt and add pre-commit hook to enforce ordering | chienchunhung | OPEN |
| [#12671](https://github.com/NVIDIA/TensorRT-LLM/pull/12671) | [fix] Fix mypy errors in sampling_utils and sampler breaking CI | karljang | OPEN |
| [#12670](https://github.com/NVIDIA/TensorRT-LLM/pull/12670) | [fix] Generate HMAC key for MGMN IPC server in disaggregated serving | yibinl-nvidia | OPEN |
| [#12669](https://github.com/NVIDIA/TensorRT-LLM/pull/12669) | [fix] Make trust_remote_code opt-in in MultimodalModelRunner | yibinl-nvidia | OPEN |
| [#12668](https://github.com/NVIDIA/TensorRT-LLM/pull/12668) | [chore] Add failed cases into waives.txt | xinhe-nv | OPEN |
| [#12667](https://github.com/NVIDIA/TensorRT-LLM/pull/12667) | [fix] Fix disaggserving hang on block reuse after eviction | Tabrizian | OPEN |
| [#12666](https://github.com/NVIDIA/TensorRT-LLM/pull/12666) | [fix] Fix GPTOSS CUTLASS MOE on Hopper nvlink one-sided workspace overflow | dongfengy | OPEN |
| [#12665](https://github.com/NVIDIA/TensorRT-LLM/pull/12665) | [fix] Fix KV cache reuse crashes | jthomson04 | OPEN |
| [#12664](https://github.com/NVIDIA/TensorRT-LLM/pull/12664) | [feat] AutoDeploy: Add the Triton kernel for MLA | nvchenghaoz | OPEN |
| [#12663](https://github.com/NVIDIA/TensorRT-LLM/pull/12663) | [refactor] VisualGen attention backend refactor | NVShreyas | OPEN |
| [#12662](https://github.com/NVIDIA/TensorRT-LLM/pull/12662) | [fix] Correct prompt logprob target token ID mapping | edenfunf | OPEN |
| [#12661](https://github.com/NVIDIA/TensorRT-LLM/pull/12661) | [feat] Add support for speculative decoding with LoRA | Funatiq | OPEN |
| [#12659](https://github.com/NVIDIA/TensorRT-LLM/pull/12659) | [fix] Disable multi-stream in maybe_execute_i… | liji-nv | OPEN |
| [#12658](https://github.com/NVIDIA/TensorRT-LLM/pull/12658) | [fix] Fix compute token accounting for KV cache reuse with context chunking | lancelly | OPEN |
| [#12657](https://github.com/NVIDIA/TensorRT-LLM/pull/12657) | [fix] Clamp block indices to prevent OOB in DSA with MTP | sunnyqgg | OPEN |
| [#12656](https://github.com/NVIDIA/TensorRT-LLM/pull/12656) | [fix] fix hang issues on DGX_B200-8_GPUs-PyTo… | bo-nv | OPEN |
| [#12655](https://github.com/NVIDIA/TensorRT-LLM/pull/12655) | [test] Add WA for trtllm-bench hang issue and improve its robustness | yufeiwu-nv | OPEN |
| [#12654](https://github.com/NVIDIA/TensorRT-LLM/pull/12654) | [doc] update supported models to include Kimi K2/K2.5 and GLM-5 | dc3671 | OPEN |
| [#12653](https://github.com/NVIDIA/TensorRT-LLM/pull/12653) | [feat] Add CUDA graph support (torch compile compatible) for LTX-2 | luyiyun1021 | OPEN |
| [#12652](https://github.com/NVIDIA/TensorRT-LLM/pull/12652) | [fix] unwaive qwen3 ci test | byshiue | OPEN |
| [#12649](https://github.com/NVIDIA/TensorRT-LLM/pull/12649) | [feat] Video temporal compression to Nemotron Nano and RADIO | 2ez4bz | OPEN |
| [#12647](https://github.com/NVIDIA/TensorRT-LLM/pull/12647) | [fix] Use encoder_max_batch_size of 1 for LLaVa in test_multi_request_batch_chat | moraxu | OPEN |
| [#12646](https://github.com/NVIDIA/TensorRT-LLM/pull/12646) | [feat] Add Qwen3.5 MTP support | nv-guomingz | OPEN |
| [#12645](https://github.com/NVIDIA/TensorRT-LLM/pull/12645) | [chore] Add failed cases into waives.txt | xinhe-nv | OPEN |
| [#12644](https://github.com/NVIDIA/TensorRT-LLM/pull/12644) | [feat] Support cache reuse for SSM in KVCacheManagerV2 | lowsfer | OPEN |
| [#12643](https://github.com/NVIDIA/TensorRT-LLM/pull/12643) | [infra] Upgrade dependencies for dlfw 26.03 stack | EmmaQiaoCh | OPEN |
| [#12642](https://github.com/NVIDIA/TensorRT-LLM/pull/12642) | [feat] Add triton paged attention for AutoDeploy | nvchenghaoz | OPEN |

---

## ✅ 今日已合并PR

| # | 标题 | 作者 |
|---|------|------|
| [#12650](https://github.com/NVIDIA/TensorRT-LLM/pull/12650) | [infra] Pin the version of mypy due to dependency conflicts | EmmaQiaoCh |

---

## 📋 重点技术方向

### 🔧 Bug 修复
- **#12667**: 修复 disaggserving block reuse 后的 hang 问题
- **#12666**: 修复 GPTOSS CUTLASS MOE Hopper nvlink workspace overflow
- **#12665**: 修复 KV cache reuse crashes
- **#12658**: 修复 KV cache reuse 与 context chunking 的 token 计算问题
- **#12657**: 修复 DSA with MTP 的 OOB 问题

### ✨ 新特性
- **#12664**: AutoDeploy 添加 MLA Triton kernel
- **#12661**: 支持 LoRA 的 speculative decoding
- **#12653**: LTX-2 的 CUDA graph 支持（兼容 torch compile）
- **#12646**: Qwen3.5 MTP 支持
- **#12649**: Nemotron Nano 和 RADIO 的视频时序压缩

### 📊 模型支持
- **#12654**: 支持 Kimi K2/K2.5 和 GLM-5

### 🏗️ 基础设施
- **#12643**: dlfw 26.03 stack 依赖升级
- **#12672**: waives.txt 排序和 pre-commit hook

---

## 📊 统计数据

- **Open PRs**: 22
- **Merged Today**: 1
- **Closed Today**: 2
- **Active Contributors**: 15+

---

*报告生成时间: 2026-04-02 07:40 AM (Asia/Shanghai)*
