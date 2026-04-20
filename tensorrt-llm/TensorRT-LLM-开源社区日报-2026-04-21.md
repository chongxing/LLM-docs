# TensorRT-LLM 开源社区日报

**日期**: 2026-04-21
**仓库**: https://github.com/NVIDIA/TensorRT-LLM
**Stars**: 13,432 | **Forks**: 2,303 | **Open Issues**: 1,347

---

## 📊 今日概览

- **新增PR**: 1
- **已合并PR**: 25
- **已关闭PR (未合并)**: 7
- **活跃Open PRs**: 50+

---

## 🔥 活跃PR列表 (Open PRs)

| PR | 标题 | 作者 | 状态 | 标签 |
|----|------|------|------|------|
| [#13249](https://github.com/NVIDIA/TensorRT-LLM/pull/13249) | [None][fix] Simplify GIL management for guided decoding host func | Tabrizian | OPEN | |
| [#12813](https://github.com/NVIDIA/TensorRT-LLM/pull/12813) | [None][feat] dual-pool KV cache with SWA block eviction for gemma4 | suyoggupta | OPEN | |
| [#12944](https://github.com/NVIDIA/TensorRT-LLM/pull/12944) | [TRTLLM-11951][feat] Chunked prefill support for video data (non-contiguous) | venkywonka | OPEN | |
| [#12596](https://github.com/NVIDIA/TensorRT-LLM/pull/12596) | [#12595][feat] Emit initial KV cache stats at startup for external metric scrape | BenjaminBraunDev | OPEN | |
| [#12272](https://github.com/NVIDIA/TensorRT-LLM/pull/12272) | [TRTLLM-10703][feature] abort, resume for Async RL in verl | hchings | OPEN | |
| [#13171](https://github.com/NVIDIA/TensorRT-LLM/pull/13171) | [None][chore] Add Dynamo configs to TRTLLM CI - Agg | brb-nv | OPEN | |
| [#13045](https://github.com/NVIDIA/TensorRT-LLM/pull/13045) | [TRTLLM-11851][feat] MX and GMS integration prototype for Dynamo weight sharing | chienchunhung | OPEN | |
| [#12128](https://github.com/NVIDIA/TensorRT-LLM/pull/12128) | [TRTLLM-11339][fix] Wan tests refactor + small transformer fix | o-stoner | OPEN | |
| [#13199](https://github.com/NVIDIA/TensorRT-LLM/pull/13199) | [None][feat] Expose flat ForwardPassMetrics fields on IterationStats (non-attent | nv-yna | OPEN | |
| [#12185](https://github.com/NVIDIA/TensorRT-LLM/pull/12185) | [TRTLLM-10061][feat] Prefix caching support for mamba hybrid models | VALLIS-NERIA | OPEN | |
| [#12863](https://github.com/NVIDIA/TensorRT-LLM/pull/12863) | [https://nvbugs/5911594][fix] Add bearer token auth to HTTP cluster storage endp | yibinl-nvidia | OPEN | |
| [#13228](https://github.com/NVIDIA/TensorRT-LLM/pull/13228) | [None][chore] Fix post-merge failures | thorjohnsen | OPEN | |
| [#13207](https://github.com/NVIDIA/TensorRT-LLM/pull/13207) | [None][fix] Propagate init_load_balancer to DeepGemmFusedMoE in create_moe_backe | qiaoxj07 | OPEN | |
| [#13064](https://github.com/NVIDIA/TensorRT-LLM/pull/13064) | [None][chore] Update flashinfer-python from 0.6.6 to 0.6.8rc1 | yihwang-nv | OPEN | |
| [#12246](https://github.com/NVIDIA/TensorRT-LLM/pull/12246) | [None][feat] Refactor the routing part in trtllmgen | ChristinaZ | OPEN | |

---

## ✅ 今日新增PR

| PR | 标题 | 作者 | 状态 |
|----|------|------|------|
| [#13249](https://github.com/NVIDIA/TensorRT-LLM/pull/13249) | [None][fix] Simplify GIL management for guided decoding host func | Tabrizian | OPEN |

---

## ✅ 今日已合并PR (共25个)

| PR | 标题 | 作者 | 合并时间 |
|----|------|------|----------|
| [#9850](https://github.com/NVIDIA/TensorRT-LLM/pull/9850) | [chore] Enforce HMAC key requirement in the codebase | yibinl-nvidia | 2026-04-20 23:00 |
| [#13181](https://github.com/NVIDIA/TensorRT-LLM/pull/13181) | [fix] Do not leak KV cache quantization into vision encoder | 2ez4bz | 2026-04-20 22:35 |
| [#13034](https://github.com/NVIDIA/TensorRT-LLM/pull/13034) | [perf] Multi-threading async media loading and optimizing video frame decoding in trtllm-serve | yechank-nvidia | 2026-04-20 22:32 |
| [#12827](https://github.com/NVIDIA/TensorRT-LLM/pull/12827) | [fix] Account for existing multimodal placeholder tokens in text prompt | moraxu | 2026-04-20 07:07 |
| [#13097](https://github.com/NVIDIA/TensorRT-LLM/pull/13097) | [infra] Reenable GB300-4_GPUs-PyTorch-Post-Merge-1 | mlefeb01 | 2026-04-20 17:51 |
| [#13193](https://github.com/NVIDIA/TensorRT-LLM/pull/13193) | [fix] Test time conflict in WAN T2V example | 2ez4bz | 2026-04-20 17:42 |
| [#13192](https://github.com/NVIDIA/TensorRT-LLM/pull/13192) | [infra] Waive 2 failed cases for main in pre-merge 34569 | ZhanruiSunCh | 2026-04-20 16:06 |
| [#12978](https://github.com/NVIDIA/TensorRT-LLM/pull/12978) | [test] Fix DGX_B200 CI timeout by splitting multimodal tests | nv-guomingz | 2026-04-20 14:06 |
| [#13213](https://github.com/NVIDIA/TensorRT-LLM/pull/13213) | [chore] Update .github/CODEOWNERS | kaiyux | 2026-04-20 11:32 |
| [#12419](https://github.com/NVIDIA/TensorRT-LLM/pull/12419) | [feat] New sharding infrastructure | greg-kwasniewski1 | 2026-04-20 11:17 |
| [#13216](https://github.com/NVIDIA/TensorRT-LLM/pull/13216) | [infra] Waive 2 failed cases for main in post-merge 2663 | ZhanruiSunCh | 2026-04-20 11:04 |
| [#13185](https://github.com/NVIDIA/TensorRT-LLM/pull/13185) | [fix] Add K2.5 DISAGG Gen Only EPLB Cases into CI | chenfeiz0326 | 2026-04-20 10:01 |
| [#13152](https://github.com/NVIDIA/TensorRT-LLM/pull/13152) | [test] Add doc test | StanleySun639 | 2026-04-20 09:59 |
| [#13195](https://github.com/NVIDIA/TensorRT-LLM/pull/13195) | [infra] Waive 6 failed cases for main in post-merge | xinhe-nv | 2026-04-20 09:58 |
| [#13204](https://github.com/NVIDIA/TensorRT-LLM/pull/13204) | [infra] Waive 9 failed cases for main in post-merge | xinhe-nv | 2026-04-20 09:43 |
| [#13210](https://github.com/NVIDIA/TensorRT-LLM/pull/13210) | [fix] Fix GPQA Diamond filter_type mismatch in disagg accuracy test | yingguo-trt | 2026-04-20 08:59 |
| [#13203](https://github.com/NVIDIA/TensorRT-LLM/pull/13203) | [infra] Waive 20 failed cases for main in post-merge | xinhe-nv | 2026-04-20 08:53 |
| [#12961](https://github.com/NVIDIA/TensorRT-LLM/pull/12961) | [fix] Only waive tests for H20 so H100 still covered | dongfengy | 2026-04-20 06:20 |
| [#13032](https://github.com/NVIDIA/TensorRT-LLM/pull/13032) | [feat] Optimize nemotron-h from python level | Wanli-Jiang | 2026-04-20 06:01 |
| [#13194](https://github.com/NVIDIA/TensorRT-LLM/pull/13194) | [infra] Waive 3 failed cases for main in post-merge | xinhe-nv | 2026-04-20 05:54 |
| [#13173](https://github.com/NVIDIA/TensorRT-LLM/pull/13173) | [test] Remove triton_server test_opt | Tabrizian | 2026-04-20 05:20 |
| [#12882](https://github.com/NVIDIA/TensorRT-LLM/pull/12882) | [feat] Gen-only sync transfer v2 and manager v2 | Shixiaowei02 | 2026-04-20 02:22 |
| [#12163](https://github.com/NVIDIA/TensorRT-LLM/pull/12163) | [feat] Minimax RMS norm optimization | jmydurant | 2026-04-20 01:37 |
| [#13167](https://github.com/NVIDIA/TensorRT-LLM/pull/13167) | [chore] Add Dynamo configs to TRTLLM CI - Disagg - Part 1 | brb-nv | 2026-04-20 01:35 |
| [#13182](https://github.com/NVIDIA/TensorRT-LLM/pull/13182) | [test] Add TestServePrefixAwareScheduling base on LMBenchmark | SimengLiu-nv | 2026-04-20 01:05 |

---

## 📋 今日Commit摘要

- **[chore] Enforce HMAC key requirement** - 安全加固，强制要求代码库中的HMAC密钥 (#9850)
- **[fix] KV cache量化不泄漏到vision encoder** - 修复nemotron模型中KV cache量化配置错误传递到vision encoder的问题 (#13181)
- **[perf] 多线程异步媒体加载优化** - trtllm-serve中视频帧解码的多线程异步加载优化 (#13034)
- **[feat] 新分片基础设施** - 新的模型分片(shard)基础设施 (#12419)
- **[feat] Gen-only sync transfer v2** - 仅生成阶段的同步传输v2及manager v2 (#12882)
- **[feat] nemotron-h Python层优化** - 从Python层面优化nemotron-h模型 (#13032)
- **[feat] Minimax RMS norm优化** - RMS归一化层优化 (#12163)
- **[infra] GB300 CI重新启用** - GB300-4_GPUs-PyTorch-Post-Merge-1 CI流水线恢复 (#13097)
- **[fix] WAN T2V测试冲突修复** - 修复PR合并导致的WAN文本到视频示例测试时间冲突 (#13193)

---

## 💡 技术洞察

1. **Gemma4多模态支持加速推进** - PR #12813 引入了dual-pool KV cache架构，支持混合注意力头维度（如gemma4-26B的head_dim=256滑动窗口 + head_dim=512全注意力），并实现了SWA块逐出机制。MMLU 75.6%和GSM8k 91.4%的准确率匹配基线。

2. **多模态推理持续优化** - 今日合并了视频帧解码的多线程异步加载优化(#13034)、修复了KV cache量化泄漏到vision encoder的问题(#13181)、以及修正了多模态占位符token的计数问题(#12827)，显示TensorRT-LLM在视觉-语言模型上的持续投入。

3. **CI/基础设施大量更新** - 今日合并了约10个CI相关的PR，包括waive失败的测试用例、更新CODEOWNERS、添加Dynamo配置等，表明项目正在积极维护CI稳定性并为新功能（如Dynamo集成）做准备。

4. **P/D分离(Disaggregated Serving)持续演进** - PR #12882 的gen-only sync transfer v2和manager v2、以及添加K2.5 DISAGG Gen Only EPLB测试用例(#13185)，显示P/D分离架构仍在快速迭代中。

5. **新分片基础设施落地** - PR #12419 合并了新的分片基础设施，这对大规模模型部署和并行策略有重要意义。

---

*报告由 OpenClaw 自动生成*
