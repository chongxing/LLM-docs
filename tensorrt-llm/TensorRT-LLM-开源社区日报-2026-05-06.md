# TensorRT-LLM 开源社区日报

**日期**: 2026-05-06
**仓库**: [NVIDIA/TensorRT-LLM](https://github.com/NVIDIA/TensorRT-LLM)

---

## 📊 今日概览

- 新增PR: **32** (过去24小时)
- 已合并PR: **5**
- 当前Open PR: **43**
- Commits: **23**

---

## 🔥 活跃PR列表 (Open PRs)

| # | 标题 | 作者 | 标签 |
|---|------|------|------|
| [#13782](https://github.com/NVIDIA/TensorRT-LLM/pull/13782) | [None][fix] Qwen3.5 DFlash | amukkara | |
| [#13781](https://github.com/NVIDIA/TensorRT-LLM/pull/13781) | [None][infra] Switch platform to aws-dfw for GB200 to test | yuanjingx87 | |
| [#13780](https://github.com/NVIDIA/TensorRT-LLM/pull/13780) | [TRTLLMINF-54][feat] Migrate retry consumers to classify() + isFinalAttempt fix | dpitman-nvda | |
| [#13779](https://github.com/NVIDIA/TensorRT-LLM/pull/13779) | [TRTLLM-12287][feat] support per-request media_io_kwargs in chat completions | aswinvisva | |
| [#13773](https://github.com/NVIDIA/TensorRT-LLM/pull/13773) | [None][feat] FlashInfer NVFP4 MoE backend (SM120/SM121) for Nemotron … | farazkh80 | |
| [#13768](https://github.com/NVIDIA/TensorRT-LLM/pull/13768) | [None][fix] Forward secondary_offload_min_priority to KVCacheManager in PyTorch executor | Saddss | Community want to contribute |
| [#13767](https://github.com/NVIDIA/TensorRT-LLM/pull/13767) | [None][fix] Plumb swiglu_limit through DeepGEMM and TRTLLMGen FP8 fused MoE | Barry-Delaney | deepseek-v4 |
| [#13766](https://github.com/NVIDIA/TensorRT-LLM/pull/13766) | Kv cache hints on radix tree | WeiHaocheng | |
| [#13765](https://github.com/NVIDIA/TensorRT-LLM/pull/13765) | [#9164][feat] AutoDeploy: noaux_tc MoE routing pattern matcher | guan404ming | Community want to contribute |
| [#13762](https://github.com/NVIDIA/TensorRT-LLM/pull/13762) | [None][test] Waive 3 failed cases for main in QA CI | xinhe-nv | |
| [#13761](https://github.com/NVIDIA/TensorRT-LLM/pull/13761) | [None][perf] Optimize DeepSeek-V4 compressor BF16 input | mingyangHao | deepseek-v4 |
| [#13760](https://github.com/NVIDIA/TensorRT-LLM/pull/13760) | Add log for raw model weights memory consumption | HuiGao-NV | |
| [#13759](https://github.com/NVIDIA/TensorRT-LLM/pull/13759) | [None][test] Waive 24 failed cases for main in QA CI | xinhe-nv | |
| [#13758](https://github.com/NVIDIA/TensorRT-LLM/pull/13758) | [https://nvbugs/5805494][fix] Limit maximum warmup token count to prevent crash in autotuner | dbari | |
| [#13757](https://github.com/NVIDIA/TensorRT-LLM/pull/13757) | [None][perf] optimize trtllm-gen fused attention preprocessing | yihwang-nv | |

---

## ✅ 今日已合并PR

| # | 标题 | 作者 | 合并时间 |
|---|------|------|----------|
| [#13778](https://github.com/NVIDIA/TensorRT-LLM/pull/13778) | [None][infra] Remove PULSE_REPO_BRANCH when running source code scanning | yuanjingx87 | 2026-05-05 |
| [#13772](https://github.com/NVIDIA/TensorRT-LLM/pull/13772) | [None][chore] Fix indexing conflict in blogposts | brb-nv | 2026-05-05 |
| [#13771](https://github.com/NVIDIA/TensorRT-LLM/pull/13771) | [None][fix] Fix fused MHC for DeepSeek-V4-Pro hidden size | pcastonguay | 2026-05-05 |
| [#13749](https://github.com/NVIDIA/TensorRT-LLM/pull/13749) | [None][fix] Fix KVCacheManager constructor call in connector test helper | eopXD | 2026-05-05 |
| [#13747](https://github.com/NVIDIA/TensorRT-LLM/pull/13747) | [None][infra] Waive 4 failed cases for main in post-merge 2705 | ZhanruiSunCh | 2026-05-05 |

---

## 📋 今日Commit摘要

```
28b3471 2026-05-05 dpitman-nvda: [TRTLLMINF-54][feat] Add typed exception hierarchy + unified classifier
db3a93f 2026-05-05 yuanjingx87: [None][infra] Remove PULSE_REPO_BRANCH when running source code scanning
15f2c58 2026-05-05 Yibin Li: [https://nvbugs/5911304][fix] Add URL validation and request hardening for media
c49e83a 2026-05-05 gramnarayan: [#12713][feat] AutoDeploy Model Onboarding Sprint 03/19 - Part 1
5deb230 2026-05-05 Balaram Buddharaju: [None][chore] Fix indexing conflict in blogposts
2da7a97 2026-05-05 Balaram Buddharaju: [None][doc] Blogpost for Helix Parallelism
92dde9e 2026-05-05 Chenghao Zhang: [None][perf] AutoDeploy: reduce C++ dispatch overhead in decode scheduling loop
26fc8b4 2026-05-05 Chenghao Zhang: [https://nvbugs/6080024][fix] Fix CudaGraphConfig validation conflict from YAML
5a8d3e1 2026-05-05 Chang Liu: [https://nvbugs/6001694][fix] Add CUDA profiler API scoping for visual gen nsys
93cb651 2026-05-05 Aurelien Chartier: [None][fix] fix PEFT page accumulation in MaxUtilizationPolicy scheduler
f8a9a29 2026-05-05 ChristinaZ: [None][feat] Resubmission of the routing refactor in trtllmgen
7db8760 2026-05-05 Yueh-Ting (eop) Chen: [None][fix] Fix KVCacheManager constructor call in connector test helper
4303181 2026-05-05 xinhe-nv: [None][test] update perf qa sanity tests, use NIXL instead of UCX
01eb260 2026-05-05 Zhanrui Sun: [None][infra] Waive 4 failed cases for main in post-merge 2705
a90389e 2026-05-05 Eran Geva: [#11823][feat] AutoDeploy's mla chunked prefill loop support
```

---

## 🎯 重点技术方向

1. **DeepSeek-V4 优化**: fused MHC 修复、compressor BF16 输入优化、swiglu_limit 管道修复
2. **FlashInfer 集成**: NVFP4 MoE backend (SM120/SM121) for Nemotron
3. **AutoDeploy**: MoE routing pattern matcher、chunked prefill loop 支持、模型 onboarding sprint
4. **KV Cache**: radix tree hints、secondary_offload_min_priority 传递、KVCacheManager 修复
5. **基础设施**: GB200 aws-dfw 平台切换、source code scanning 清理、QA CI 失败用例豁免
6. **性能优化**: trtllm-gen fused attention 预处理优化、CUDA graph config 验证修复

---

> 报告生成时间: 2026-05-06 07:40 AM (Asia/Shanghai)
