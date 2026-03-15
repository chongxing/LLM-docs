# TensorRT-LLM 开源社区日报

**日期**: 2026-03-15  
**仓库**: https://github.com/NVIDIA/TensorRT-LLM  
**报告时间**: 2026-03-15 10:30 CST

---

## 📊 今日概览

| 指标 | 数量 |
|------|------|
| 新增PR | 7 |
| 已合并PR | 3 |
| 当前Open PR | 50 |

---

## 🔥 活跃PR列表 (Open PRs)

### 模型支持
- [#12210](https://github.com/NVIDIA/TensorRT-LLM/pull/12210) [feat] Add support for Phi4 family in AutoDeploy - Bala Marimuthu
- [#12205](https://github.com/NVIDIA/TensorRT-LLM/pull/12205) [feat] Add support for Gemma3n and sharedKV cache attention in AutoDeploy - Bala Marimuthu
- [#12204](https://github.com/NVIDIA/TensorRT-LLM/pull/12204) [feat] Add support for Gemma3n and SharedKV cache attention layers in AutoDeploy - Bala Marimuthu
- [#12209](https://github.com/NVIDIA/TensorRT-LLM/pull/12209) [feat] AutoDeploy Model Onboarding Sprint 03/19 - Part 1 - Bala Marimuthu
- [#12203](https://github.com/NVIDIA/TensorRT-LLM/pull/12203) [feat] Support Qwen3.5 Dense and MoE Models in Pytorch Backend - Keddy Jin
- [#12195](https://github.com/NVIDIA/TensorRT-LLM/pull/12195) [doc] Blog18 for NVLinkOneSided AlltoAll - Bo Li
- [#12194](https://github.com/NVIDIA/TensorRT-LLM/pull/12194) [TRTLLM-9019][feat] Expose video_pruning_rate as llmargs and fix nano-v2-vl - Wanli Jiang
- [#12191](https://github.com/NVIDIA/TensorRT-LLM/pull/12191) [TRTLLM-11267][feat] Add audio support for nemotron - William Zhang
- [#12190](https://github.com/NVIDIA/TensorRT-LLM/pull/12190) [fix] Fix W4A16 AWQ bias not applied on SM100 (Blackwell) - Qi Zhang
- [#12182](https://github.com/NVIDIA/TensorRT-LLM/pull/12182) [https://nvbugs/5879588][fix] fix MiniMax model loading bugs - jmydurant
- [#12163](https://github.com/NVIDIA/TensorRT-LLM/pull/12163) [feat] Minimax RMS norm optimization - jmydurant
- [#12154](https://github.com/NVIDIA/TensorRT-LLM/pull/12154) [TRTLLM-10232][feat] Support LoRA adapter for nemotron-h models - Wanli Jiang
- [#12153](https://github.com/NVIDIA/TensorRT-LLM/pull/12153) [TRTLLM-11358][test] Add trtllm-serve e2e tests for FLUX - JunyiXu-nv
- [#12178](https://github.com/NVIDIA/TensorRT-LLM/pull/12178) [https://nvbugs/5955927][fix] Add warm up before aiperf to fix timeout issue - shanshan
- [#12172](https://github.com/NVIDIA/TensorRT-LLM/pull/12172) [TRTINFRA-7698][infra] - Add SSH key authentication support for SLURM clusters - Matt Lefebvre
- [#12171](https://github.com/NVIDIA/TensorRT-LLM/pull/12171) [fix] Eagle: MLA Target + GQA Draft - Izzy Putterman
- [#12169](https://github.com/NVIDIA/TensorRT-LLM/pull/12169) fix: LlavaNext dtype fallback when text_config.torch_dtype is None - Indrajit Bhosale

### 性能优化
- [#12212](https://github.com/NVIDIA/TensorRT-LLM/pull/12212) [feat] Constraint-based memory partitioning to KVCacheManagerV2 - Yao Yao
- [#12201](https://github.com/NVIDIA/TensorRT-LLM/pull/12201) [feat] Add fused allreduce+RMSNorm op and optional residual in PyTorch backend - Fanrong Li
- [#12198](https://github.com/NVIDIA/TensorRT-LLM/pull/12198) [perf] Fuse and optimize DSA indexer gather/scatter kernels - Kaiyu Xie
- [#12184](https://github.com/NVIDIA/TensorRT-LLM/pull/12184) [fix] Add more models to increase perf test coverage - chenfeiz0326
- [#12168](https://github.com/NVIDIA/TensorRT-LLM/pull/12168) [https://nvbugs/5962320][perf] Detect PCT support via CPUID and set CPU affinity - dhansen-nvidia
- [#12167](https://github.com/NVIDIA/TensorRT-LLM/pull/12167) [chore] Use affinity rather than CPU count for default build parallelism - Aurelien Chartier
- [#12174](https://github.com/NVIDIA/TensorRT-LLM/pull/12174) [TRTLLM-11471][feat] Add safe version of tp_allgather with chunking - Chien-Chun Hung
- [#12157](https://github.com/NVIDIA/TensorRT-LLM/pull/12157) [fix] Prevent hang in disagg gen-only benchmark when KV cache is insufficient - Xianjie Qiao
- [#12161](https://github.com/NVIDIA/TensorRT-LLM/pull/12161) [perf] Cache FlashMLA tile-scheduler metadata across attention layers - Bo Li
- [#12155](https://github.com/NVIDIA/TensorRT-LLM/pull/12155) [doc] Fix dynamic quantization doc for visual gen - Zhou Yaoyang
- [#12158](https://github.com/NVIDIA/TensorRT-LLM/pull/12158) [https://nvbugs/5973316][fix] fix deepep with trtllm moe backend and seqlen one - Leslie Fang

### 分离式推理 (Disaggregated Serving)
- [#12211](https://github.com/NVIDIA/TensorRT-LLM/pull/12211) [fix] Fix Disagg Perf Test No result.xml Bug - chenfeiz0326
- [#12206](https://github.com/NVIDIA/TensorRT-LLM/pull/12206) [fix] return an explicit error if the requests can't be scheduled - Iman Tabrizian
- [#12208](https://github.com/NVIDIA/TensorRT-LLM/pull/12208) [TRTLLM-11492][fix] Replace blocking fill loop with non-blocking can_forward gate in benchmark disagg mode - Chien-Chun Hung
- [#12213](https://github.com/NVIDIA/TensorRT-LLM/pull/12213) [feat] Add /v1/models endpoint to OpenAIDisaggServer - Eden
- [#12177](https://github.com/NVIDIA/TensorRT-LLM/pull/12177) [fix] Fix disaggregated example by enabling CacheTransceiverConfig - Pengbo Wang
- [#12189](https://github.com/NVIDIA/TensorRT-LLM/pull/12189) [fix] replace busy-poll sleep in get_async_noblock with zmq async poller - Eden
- [#12188](https://github.com/NVIDIA/TensorRT-LLM/pull/12188) [fix] Fix KV cache V2 OOM with separate draft KV cache (EAGLE3/MTP) - Yi Zhang

### Bug修复
- [#12215](https://github.com/NVIDIA/TensorRT-LLM/pull/12215) [docs] Update nemotron 3 super deployment to include tool calling - Joyjit Daw
- [#12214](https://github.com/NVIDIA/TensorRT-LLM/pull/12214) [fix] Fix NVFP4 fused MoE dropping w3_alpha during weight stacking - Eden
- [#12200](https://github.com/NVIDIA/TensorRT-LLM/pull/12200) [fix] Switch tests to TorchSampler and fix bugs - Robin Kobus
- [#12199](https://github.com/NVIDIA/TensorRT-LLM/pull/12199) [TRTLLM-11357][feat] Support interleaved thinking for trtllm-serve - JunyiXu-nv
- [#12197](https://github.com/NVIDIA/TensorRT-LLM/pull/12197) [https://nvbugs/5948878][fix] fix lost requests - Bo Deng
- [#12193](https://github.com/NVIDIA/TensorRT-LLM/pull/12193) [fix] remove test_llm_api_autodeploy.py::TestNemotronSuperV3::test_fp4 waived test - tcherckez-nvidia
- [#12192](https://github.com/NVIDIA/TensorRT-LLM/pull/12192) [chore] Alltoall benchmark script refine (second time) - Bo Li
- [#12186](https://github.com/NVIDIA/TensorRT-LLM/pull/12186) [https://nvbugs/5973536][fix] Route DSA attention through MLA custom op for torch.compile compatibility - Yi Zhang
- [#12185](https://github.com/NVIDIA/TensorRT-LLM/pull/12185) Draft: Linear attention support for KVCacheManager - xiweny
- [#12181](https://github.com/NVIDIA/TensorRT-LLM/pull/12181) [fix] fix mooncake dynamic load in transfer_agent_binding - Chuang Zhu
- [#12179](https://github.com/NVIDIA/TensorRT-LLM/pull/12179) [fix] fix KVCacheManager race conditions via withSequence callback API - Thor Johnsen
- [#12166](https://github.com/NVIDIA/TensorRT-LLM/pull/12166) [https://nvbugs/5823135][fix] Fix min_tokens not respected when prompt is long - JunyiXu-nv
- [#12170](https://github.com/NVIDIA/TensorRT-LLM/pull/12170) [https://nvbugs/5875031][fix] Compile XQA with sm_120f - Pamela Peng
- [#12216](https://github.com/NVIDIA/TensorRT-LLM/pull/12216) Test mem est 2 - HuiGao-NV
- [#12162](https://github.com/NVIDIA/TensorRT-LLM/pull/12162) [feat] Support managed GPU weights and PyTorch preload aliasing - Davanum Srinivas

---

## ✅ 今日新增PR (2026-03-14 ~ 2026-03-15)

共 **7** 个新PR：

1. [#12216](https://github.com/NVIDIA/TensorRT-LLM/pull/12216) Test mem est 2 - HuiGao-NV  
   🏷️ 状态: OPEN | 创建: 2026-03-15

2. [#12215](https://github.com/NVIDIA/TensorRT-LLM/pull/12215) [None][docs] Update nemotron 3 super deployment to include tool calling - Joyjit Daw  
   🏷️ 状态: OPEN | 创建: 2026-03-14

3. [#12214](https://github.com/NVIDIA/TensorRT-LLM/pull/12214) [None][fix] Fix NVFP4 fused MoE dropping w3_alpha during weight stacking - Eden  
   🏷️ 状态: OPEN | 创建: 2026-03-14 | 标签: Community want to contribute

4. [#12213](https://github.com/NVIDIA/TensorRT-LLM/pull/12213) [None][feat] Add /v1/models endpoint to OpenAIDisaggServer - Eden  
   🏷️ 状态: OPEN | 创建: 2026-03-14 | 标签: Community want to contribute

5. [#12212](https://github.com/NVIDIA/TensorRT-LLM/pull/12212) [None][feat] Constraint-based memory partitioning to KVCacheManagerV2 - Yao Yao  
   🏷️ 状态: OPEN | 创建: 2026-03-14

6. [#12211](https://github.com/NVIDIA/TensorRT-LLM/pull/12211) [None][fix] Fix Disagg Perf Test No result.xml Bug - chenfeiz0326  
   🏷️ 状态: OPEN | 创建: 2026-03-14

7. [#12210](https://github.com/NVIDIA/TensorRT-LLM/pull/12210) [None][feat] Add support for Phi4 family in AutoDeploy - Bala Marimuthu  
   🏷️ 状态: OPEN | 创建: 2026-03-14

---

## ✅ 今日已合并PR (2026-03-14 ~ 2026-03-15)

共 **3** 个已合并PR：

1. [#12207](https://github.com/NVIDIA/TensorRT-LLM/pull/12207) [None][infra] Waive failed A10-PyTorch-1 test in pre-merge - yuanjingx87  
   ✅ 合并: 2026-03-14 08:07:16Z

2. [#12176](https://github.com/NVIDIA/TensorRT-LLM/pull/12176) [None][fix] Add streaming support to no </think> for nemotron model - Joyjit Daw  
   ✅ 合并: 2026-03-14 21:06:33Z

3. [#12101](https://github.com/NVIDIA/TensorRT-LLM/pull/12101) [None][chore] Add explicit error for intermediate size misalignment with fp8 block size - Leslie Fang  
   ✅ 合并: 2026-03-15 01:19:06Z

---

## 📋 今日Commit摘要

过去24小时重点commits：

| Commit | 时间 | 作者 | 描述 |
|--------|------|------|------|
| `267396cb` | 2026-03-15 | Leslie Fang | [chore] Add explicit error for intermediate size misalignment with fp8 block size (#12101) |
| `8cdcce9b` | 2026-03-14 | Joyjit Daw | [fix] Add streaming support to no </think> for nemotron model (#12176) |
| `33808898` | 2026-03-14 | yuanjingx87 | [infra] Waive failed A10-PyTorch-1 test in pre-merge (#12207) |
| `1e0b9eae` | 2026-03-14 | TensorRT LLM | [infra] Check in most recent lock file from nightly pipeline |
| `9a9dc3c6` | 2026-03-13 | Joyjit Daw | [https://nvbugs/5944411][fix] Handle anyOf parameter schemas in Qwen3Coder tool parser (#12173) |
| `7754c661` | 2026-03-13 | Frida Hou | [feat] Add mix-precision checkpoint support in AutoDeploy (#12175) |
| `390a7fd6` | 2026-03-13 | Suyog Gupta | [feat] Qwen3.5 perf optimizations (#11581) |
| `1a2849af` | 2026-03-13 | Wanli Jiang | [fix] Fixed mamba cache issue for pp>1 (#12146) |
| `3fb931a4` | 2026-03-13 | Perkz Zheng | [feat] add trtllm-gen kernels for glm4.7 and support groupsTokensHeadsQ + e2m1 output (#11643) |
| `18d02df5` | 2026-03-13 | Yiyun Lu | [TRTLLM-11288][feat] Configurable warmup shapes for VisualGen (#12107) |

---

## 🔍 技术亮点

1. **模型支持扩展**: Phi4 和 Gemma3n 模型支持进入 AutoDeploy，Nemotron 系列持续增强
2. **性能优化**: KVCacheManagerV2 内存分区优化、FlashMLA 元数据缓存、DeepEP 修复
3. **分离式推理**: OpenAI DisaggServer 新增 `/v1/models` 端点，多项 Disagg 性能测试修复
4. **量化方案**: NVFP4 MoE 权重堆叠问题修复，FP8 块大小对齐错误提示增强

---

*自动生成于 2026-03-15 | OpenClaw Agent*
