# TensorRT-LLM 开源社区日报

**日期**: 2026-03-17  
**仓库**: [NVIDIA/TensorRT-LLM](https://github.com/NVIDIA/TensorRT-LLM)

---

## 📊 今日概览

| 指标 | 数量 |
|------|------|
| 新增 PR | 23 个 |
| 已合并 PR | 22 个 |
| 关闭 PR | 28 个 |
| 活跃 Issues | 30 个 |

---

## 🆕 新增 PR (过去24小时)

| # | 标题 | 作者 | 状态 | 标签 |
|---|------|------|------|------|
| [#12263](https://github.com/NVIDIA/TensorRT-LLM/pull/12263) | [TRTLLM-11517][feat] Add TLLM_PROFILE_LOG_RANKS env var to control per-rank step logging | @Jonas Li | OPEN | - |
| [#12262](https://github.com/NVIDIA/TensorRT-LLM/pull/12262) | [TRTLLM-10319][feat] Expand dynamic draft length to MTP and PARD. | @Zheyu Fu | OPEN | - |
| [#12261](https://github.com/NVIDIA/TensorRT-LLM/pull/12261) | [None][infra] use public torch index as CI backup | @tburt-nv | OPEN | - |
| [#12259](https://github.com/NVIDIA/TensorRT-LLM/pull/12259) | [#12257][fix] Use the first non-None result returned by hf download workers | @Kevin Bi | OPEN | `Community want to contribute` |
| [#12258](https://github.com/NVIDIA/TensorRT-LLM/pull/12258) | [None][docs] Fix AGENTS.md accuracy and reduce context bloat | @Kaiyu Xie | OPEN | - |
| [#12256](https://github.com/NVIDIA/TensorRT-LLM/pull/12256) | feat: Add PyTorchWorker backend for scaffolding framework (#3333) | @Niket Jain | OPEN | `Community want to contribute` |
| [#12255](https://github.com/NVIDIA/TensorRT-LLM/pull/12255) | [None][chore] Fix XQA unitTests build error | @Ian Zhang | OPEN | `Community want to contribute` |
| [#12254](https://github.com/NVIDIA/TensorRT-LLM/pull/12254) | [None][fix] set correct model name and engine type in metrics | @Varun Gupta | OPEN | `Community want to contribute` |
| [#12252](https://github.com/NVIDIA/TensorRT-LLM/pull/12252) | [TRTLLM-12250][feat] added lm head sharding | @Grzegorz Kwasniewski | OPEN | - |
| [#12251](https://github.com/NVIDIA/TensorRT-LLM/pull/12251) | [TRTLLM-11513][fix] eliminate dangling reference and TOCTOU races in KVCacheManager | @Thor Johnsen | OPEN | - |
| [#12249](https://github.com/NVIDIA/TensorRT-LLM/pull/12249) | [https://nvbugs/5969206][fix] BREAKING: Setting default value of KV cache transfer timeout to 60s | @Patrice Castonguay | OPEN | - |
| [#12248](https://github.com/NVIDIA/TensorRT-LLM/pull/12248) | [None][fix] Fix the issue of excluding all context attention kernels when building for sm103 | @yifeizhang-c | OPEN | - |
| [#12247](https://github.com/NVIDIA/TensorRT-LLM/pull/12247) | [https://nvbugs/5895249][fix] Update test waives | @Grzegorz Kwasniewski | OPEN | - |
| [#12246](https://github.com/NVIDIA/TensorRT-LLM/pull/12246) | [None][feat] Refactor the routing part in trtllmgen | @ChristinaZ | OPEN | - |
| [#12245](https://github.com/NVIDIA/TensorRT-LLM/pull/12245) | Test mem est 3 | @HuiGao-NV | OPEN | - |
| [#12244](https://github.com/NVIDIA/TensorRT-LLM/pull/12244) | [None][fix] Relax MoE test tolerance for fp16 TP mode accuracy mismatch | @xxi-nv | OPEN | - |
| [#12243](https://github.com/NVIDIA/TensorRT-LLM/pull/12243) | [#11526][chore] AutoDeploy accuracy tests: use nemotron-3 official checkpoints | @Gal Hubara-Agam | OPEN | - |
| [#12242](https://github.com/NVIDIA/TensorRT-LLM/pull/12242) | [None][feat] Initial Qwen3.5 text model support for PyT backend | @Anthony Chang | OPEN | - |
| [#12241](https://github.com/NVIDIA/TensorRT-LLM/pull/12241) | [#12227][fix] Add timeout to MultiProcessExecutor shutdown to prevent test hangs | @Eden | OPEN | `Community want to contribute` |
| [#12240](https://github.com/NVIDIA/TensorRT-LLM/pull/12240) | [#12183][fix] Fix TRTLLM-Gen NVFP4 MoE scales for mixed-precision che… | @tcherckez-nvidia | OPEN | - |
| [#12239](https://github.com/NVIDIA/TensorRT-LLM/pull/12239) | [TRTLLM-8922][feat] gen-first disagg scheduling, part 2 | @Lizhi Zhou | OPEN | - |
| [#12238](https://github.com/NVIDIA/TensorRT-LLM/pull/12238) | [Do not merge] Debug | @Qi Zhang (qizh) | OPEN | - |
| [#12237](https://github.com/NVIDIA/TensorRT-LLM/pull/12237) | [https://nvbugs/5973214][fix] unwaive qwen3 ci test | @bhsueh_NV | OPEN | - |

---

## ✅ 已合并 PR (过去24小时)

| # | 标题 | 作者 | 合并时间 | 标签 |
|---|------|------|----------|------|
| [#12235](https://github.com/NVIDIA/TensorRT-LLM/pull/12235) | [https://nvbugs/5973536][fix] Route DSA attention through MLA custom … | @v-shobhit | 2026-03-17T01:27:10Z | - |
| [#12234](https://github.com/NVIDIA/TensorRT-LLM/pull/12234) | [None][doc] AutoDeploy: ad-model-onboard skill updates | @Bala Marimuthu | 2026-03-16T06:56:34Z | - |
| [#12232](https://github.com/NVIDIA/TensorRT-LLM/pull/12232) | [TRTLLM-11288][fix] Adapt LTX2 pipeline to CompilationConfig warmup interface | @Yiyun Lu | 2026-03-16T10:53:08Z | - |
| [#12222](https://github.com/NVIDIA/TensorRT-LLM/pull/12222) | [None][chore] Remove closed bugs | @xinhe-nv | 2026-03-16T06:12:24Z | - |
| [#12220](https://github.com/NVIDIA/TensorRT-LLM/pull/12220) | [None][chore] Add failed cases into waives.txt | @xinhe-nv | 2026-03-16T09:31:32Z | - |
| [#12219](https://github.com/NVIDIA/TensorRT-LLM/pull/12219) | [None][chore] fix deepep trtllm backend MXFP4 | @Leslie Fang | 2026-03-16T09:12:54Z | - |
| [#12218](https://github.com/NVIDIA/TensorRT-LLM/pull/12218) | [None][chore] Add failed cases into waives.txt | @xinhe-nv | 2026-03-16T09:11:31Z | - |
| [#12211](https://github.com/NVIDIA/TensorRT-LLM/pull/12211) | [None][fix] Fix Disagg Perf Test No result.xml Bug | @chenfeiz0326 | 2026-03-16T04:18:43Z | - |
| [#12197](https://github.com/NVIDIA/TensorRT-LLM/pull/12197) | [https://nvbugs/5948878][fix] fix lost requests | @Bo Deng | 2026-03-16T08:53:25Z | - |
| [#12195](https://github.com/NVIDIA/TensorRT-LLM/pull/12195) | [None][doc] Blog18 for NVLinkOneSided AlltoAll. | @Bo Li | 2026-03-16T06:10:23Z | - |
| [#12192](https://github.com/NVIDIA/TensorRT-LLM/pull/12192) | [None][chore] Alltoall benchmark script refine (second time). | @Bo Li | 2026-03-16T09:28:44Z | - |
| [#12190](https://github.com/NVIDIA/TensorRT-LLM/pull/12190) | [None][fix] Fix W4A16 AWQ bias not applied on SM100 (Blackwell) | @Qi Zhang (qizh) | 2026-03-16T09:58:05Z | - |
| [#12188](https://github.com/NVIDIA/TensorRT-LLM/pull/12188) | [None][fix] Fix KV cache V2 OOM with separate draft KV cache (EAGLE3/MTP) | @Yi Zhang | 2026-03-16T06:13:44Z | - |
| [#12186](https://github.com/NVIDIA/TensorRT-LLM/pull/12186) | [https://nvbugs/5973536][fix] Route DSA attention through MLA custom op for torch.compile compatibility | @Yi Zhang | 2026-03-16T05:32:42Z | - |
| [#12178](https://github.com/NVIDIA/TensorRT-LLM/pull/12178) | [https://nvbugs/5955927][fix] Add warm up before aiperf to fix timeout issue. | @dominicshanshan | 2026-03-16T11:18:30Z | - |
| [#12167](https://github.com/NVIDIA/TensorRT-LLM/pull/12167) | [None][chore] Use affinity rather than CPU count for default build parallelism | @Aurelien Chartier | 2026-03-17T00:44:31Z | - |
| [#12166](https://github.com/NVIDIA/TensorRT-LLM/pull/12166) | [https://nvbugs/5823135][fix] Fix min_tokens not respected when prompt is long | @JunyiXu-nv | 2026-03-16T05:34:13Z | - |
| [#12140](https://github.com/NVIDIA/TensorRT-LLM/pull/12140) | [None][fix] Export computed env vars to env_vars.json and fix port allocation in disagg benchmark | @Xianjie Qiao | 2026-03-16T10:23:57Z | - |
| [#12045](https://github.com/NVIDIA/TensorRT-LLM/pull/12045) | [https://nvbugs/5955188][fix] Fix harmony parsers for agentic coding use cases | @dongfengy | 2026-03-16T04:45:21Z | - |
| [#11861](https://github.com/NVIDIA/TensorRT-LLM/pull/11861) | [None][refactor] Improve request management in sampler | @Robin Kobus | 2026-03-16T13:19:26Z | - |
| [#11379](https://github.com/NVIDIA/TensorRT-LLM/pull/11379) | [TRTLLM-10569][infra] Only check the changed files in pre-commit in pre-merge CI | @Yiqing Yan | 2026-03-16T08:16:09Z | - |
| [#10218](https://github.com/NVIDIA/TensorRT-LLM/pull/10218) | [TRTLLM-9767][feat] Enable attention dp for qwen3-next. | @Guoming Zhang | 2026-03-16T02:25:51Z | - |

---

## 🔥 活跃 Issues

### 高优先级 / 安全相关
- [#12260](https://github.com/NVIDIA/TensorRT-LLM/issues/12260) **Security**: 1 CRITICAL + 16 HIGH CVEs in v1.2.0 release container image - `Infra`

### Bug 修复
| # | 标题 | 作者 | 标签 |
|---|------|------|------|
| [#12257](https://github.com/NVIDIA/TensorRT-LLM/issues/12257) | [Bug]: CachedModelLoader issue when enabling speculative decoding with multiple MPI processes | @Kevin Bi | `bug`, `Speculative Decoding` |
| [#12230](https://github.com/NVIDIA/TensorRT-LLM/issues/12230) | [Bug]: Qwen3-Next-80B FP8/NVFP4 — Autotuner IndexError and Triton Illegal Instruction on DGX Spark | @ASH29033 | `bug`, `Triton backend`, `Customized kernels` |
| [#12228](https://github.com/NVIDIA/TensorRT-LLM/issues/12228) | [Bug]: OOM in meta-llama_Llama-3.3-70B-Instruct accuracy test | @galagam | `bug`, `Memory` |
| [#12227](https://github.com/NVIDIA/TensorRT-LLM/issues/12227) | [Bug]: Sporadic hangs in NanoV3 accuracy tests | @galagam | `bug`, `Inference runtime` |
| [#12226](https://github.com/NVIDIA/TensorRT-LLM/issues/12226) | [Bug]: Nemotron SuperV3 BF16 crashing during GSM8K accuracy test with attention dp = off | @galagam | `bug`, `Inference runtime` |
| [#12183](https://github.com/NVIDIA/TensorRT-LLM/issues/12183) | [Bug]: AutoDeploy: nvidia/NVIDIA-Nemotron-3-Super-120B-A12B-NVFP4 generate bad output with trtllm-gen backend | @Fridah-nv | `bug`, `Triton backend` |
| [#12133](https://github.com/NVIDIA/TensorRT-LLM/issues/12133) | [Bug]: ModelRunnerCpp hangs with num_return_sequences > 1 for beam search | @mkserge | `bug` |
| [#12116](https://github.com/NVIDIA/TensorRT-LLM/issues/12116) | [Bug]: KVBM hang when request fails during async KV cache transfer | @zyang-Modular | `bug`, `KV-Cache Management` |
| [#12071](https://github.com/NVIDIA/TensorRT-LLM/issues/12071) | [Bug]: BeamSearch with beam_width 128 Encountered an error in in cudaMemcpy2DAsync | @Doloxetine | `bug` |
| [#12006](https://github.com/NVIDIA/TensorRT-LLM/issues/12006) | [Bug]: openai/gpt-oss-120b freeze during init_cache pass | @tcherckez-nvidia | `bug`, `Inference runtime`, `AutoDeploy/Dashboard` |
| [#11936](https://github.com/NVIDIA/TensorRT-LLM/issues/11936) | [Bug]: Fix TPS/User glitches in BTK | @MrGeva | `bug` |
| [#11932](https://github.com/NVIDIA/TensorRT-LLM/issues/11932) | [Bug] TRTLLMGenFusedMoE + CUTLASS MoE both fail on SM120 (RTX PRO 6000) with FP4 Qwen3-Next MoE in v1.3.0rc4 | @bhaktatejas922 | `bug`, `Customized kernels`, `Model optimization` |
| [#11879](https://github.com/NVIDIA/TensorRT-LLM/issues/11879) | [Bug]: KvEvent Metrics, usedNumBlocks, can have negative block sizes in disagg/prefill mode | @michaelfeil | `bug`, `Disaggregated serving` |

### 功能请求
| # | 标题 | 作者 | 标签 |
|---|------|------|------|
| [#12253](https://github.com/NVIDIA/TensorRT-LLM/issues/12253) | [AutoDeploy]: Improve max throughput for NanoV3/SuperV3 | @galagam | `feature request`, `AutoDeploy` |
| [#12250](https://github.com/NVIDIA/TensorRT-LLM/issues/12250) | [AutoDeploy][Feature]: Add lm_head sharding for Qwen model | @greg-kwasniewski1 | `feature request`, `AutoDeploy` |
| [#12202](https://github.com/NVIDIA/TensorRT-LLM/issues/12202) | [Feature]: LoRA support for FP4 (NVFP4) quantization | @langzhao-netizen | `feature request`, `Low Precision`, `Lora/P-tuning` |
| [#12118](https://github.com/NVIDIA/TensorRT-LLM/issues/12118) | [Feature]: AutoDeploy: Deprecate the yaml file in examples/auto_deploy/ folder | @nvchenghaoz | `feature request`, `AutoDeploy` |
| [#12097](https://github.com/NVIDIA/TensorRT-LLM/issues/12097) | [Feature]: Add /v1/models endpoint support for Disaggregated | @zhouliang5266 | `feature request`, `Disaggregated serving`, `OpenAI API` |
| [#12087](https://github.com/NVIDIA/TensorRT-LLM/issues/12087) | [AutoDeploy]: Investigate perf gap for high concurrencies on Nano/Super | @galagam | `feature request`, `General perf` |
| [#12049](https://github.com/NVIDIA/TensorRT-LLM/issues/12049) | [Feature]: AutoDeploy: Enable the gather_logits and analyze this fusion for Piecewise CG | @nvchenghaoz | `feature request`, `AutoDeploy` |
| [#12008](https://github.com/NVIDIA/TensorRT-LLM/issues/12008) | [Feature]: Add support for all_to_all in moe nvfp4 trtllm_gen backend | @tcherckez-nvidia | `feature request` |
| [#11947](https://github.com/NVIDIA/TensorRT-LLM/issues/11947) | [Feature]: Support Dense Multi-Modal Qwen3.5 in trtllm-serve PyTorch/AutoDeploy backends | @xyehya | `feature request` |
| [#11925](https://github.com/NVIDIA/TensorRT-LLM/issues/11925) | [Feature]: AutoDeploy : Automatically apply weight preloading | @taylor-yb-lee | `feature request`, `AutoDeploy` |
| [#11918](https://github.com/NVIDIA/TensorRT-LLM/issues/11918) | [AutoDeploy][Feature]: Qwen 3.5 MTP | @govind-ramnarayan | `feature request`, `AutoDeploy` |
| [#11874](https://github.com/NVIDIA/TensorRT-LLM/issues/11874) | [Feature]: Add support for reusing kv cache across different LoRAs | @ShuaiShao93 | `feature request`, `KV-Cache Management`, `Lora/P-tuning` |

---

## 📝 最新 Commits

- [0eab5b6](https://github.com/NVIDIA/TensorRT-LLM/commit/0eab5b68cf06917016d3b9578a02eba4b150013e) [None][chore] Use affinity rather than CPU count for default build parallelism (#12167) - @Aurelien Chartier
- [93b0dc7](https://github.com/NVIDIA/TensorRT-LLM/commit/93b0dc7afb18b19d19b220493dbb89c18e2fc074) [None][refactor] Improve request management in sampler (#11861) - @Robin Kobus
- [e2df4f4](https://github.com/NVIDIA/TensorRT-LLM/commit/e2df4f487ca5fad3bb7ce023414f49910a6af78f) [https://nvbugs/5955927][fix] Add warm up before aiperf to fix timeout issue. (#12178) - @dominicshanshan
- [1797e3f](https://github.com/NVIDIA/TensorRT-LLM/commit/1797e3fbb912716e0075e76716d4e64b89817519) [TRTLLM-11288][fix] Adapt LTX2 pipeline to CompilationConfig warmup interface (#12232) - @Yiyun Lu
- [7fd1c76](https://github.com/NVIDIA/TensorRT-LLM/commit/7fd1c7609f26f8690d531cd4623f2cbf1f37f7b8) [None][fix] Export computed env vars to env_vars.json and fix port allocation in disagg benchmark (#12140) - @Xianjie Qiao
- [1221dff](https://github.com/NVIDIA/TensorRT-LLM/commit/1221dffa1ed8d5f598c3def5d02a4d7cb33945c0) [None][fix] Fix W4A16 AWQ bias not applied on SM100 (Blackwell) (#12190) - @Qi Zhang (qizh)
- [8a89887](https://github.com/NVIDIA/TensorRT-LLM/commit/8a89887f6485249468ab7a80cdce4e8e50efc369) [None][chore] Add failed cases into waives.txt (#12220) - @xinhe-nv
- [87658f2](https://github.com/NVIDIA/TensorRT-LLM/commit/87658f225635a1bc16b47bf0df9689bda9acabf9) [None][chore] Alltoall benchmark script refine (second time). (#12192) - @Bo Li
- [7686deb](https://github.com/NVIDIA/TensorRT-LLM/commit/7686debc3c6edb7f86467fc166431a9f2eeea47c) [None][chore] fix deepep trtllm backend MXFP4 (#12219) - @Leslie Fang
- [3de3151](https://github.com/NVIDIA/TensorRT-LLM/commit/3de31517be45a120cb4be2a75523b3977dd339d0) [None][chore] Add failed cases into waives.txt (#12218) - @xinhe-nv
- [fe77b40](https://github.com/NVIDIA/TensorRT-LLM/commit/fe77b4075c76f46bd268ee9c6a54575589cb7a58) [https://nvbugs/5948878][fix] fix lost requests (#12197) - @Bo Deng
- [80871a2](https://github.com/NVIDIA/TensorRT-LLM/commit/80871a21cd6a04d5647d6382443cfe33494d2362) [TRTLLM-10569][infra] Only check the changed files in pre-commit in pre-merge CI (#11379) - @Yiqing Yan
- [503d678](https://github.com/NVIDIA/TensorRT-LLM/commit/503d6785bae62796d0eed46d64fad5f2ae14043c) [None][doc] AutoDeploy: ad-model-onboard skill updates (#12234) - @Bala Marimuthu
- [fc2bf27](https://github.com/NVIDIA/TensorRT-LLM/commit/fc2bf2790d6e02e7028f0b51cf967f41d7df45f3) [None][fix] Fix KV cache V2 OOM with separate draft KV cache (EAGLE3/MTP) (#12188) - @Yi Zhang
- [9d72314](https://github.com/NVIDIA/TensorRT-LLM/commit/9d723146a3f0d59fccec53f5ab183c58f72cb2c5) [None][chore] Remove closed bugs (#12222) - @xinhe-nv

---

## 🏷️ 今日亮点

- **社区贡献活跃**: 今日有 5 个社区贡献的 PR，涵盖 CachedModelLoader、PyTorchWorker 后端、XQA 单元测试等多个方面
- **关键修复**: 
  - 修复了 Blackwell (SM100) 上 W4A16 AWQ 偏置未应用的问题
  - 修复了 KV cache V2 OOM 问题（涉及 EAGLE3/MTP）
  - 修复了 Disaggregated Serving 的请求丢失问题
- **性能优化**: 
  - 改进采样器中的请求管理
  - 使用 CPU 亲和性而非 CPU 数量来确定默认构建并行度
- **新功能**: 
  - 添加 lm head sharding 支持 Qwen 模型
  - 添加 Qwen3.5 文本模型的 PyTorch 后端初始支持
  - 支持动态草稿长度扩展到 MTP 和 PARD

---

*日报由 OpenClaw 自动生成*
