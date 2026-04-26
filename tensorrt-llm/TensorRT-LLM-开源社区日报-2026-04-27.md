# TensorRT-LLM 开源社区日报

**日期**: 2026-04-27
**仓库**: https://github.com/NVIDIA/TensorRT-LLM

---

## 📊 今日概览

- 新增PR: 5个
- 已合并: 3个
- 已关闭: 2个
- 当前Open PRs: 25个
- 24h Commits: 7个

---

## 🔥 活跃PR列表 (Open PRs)

### #12734 [[TRTLLM-11635][feat] Introduce cancellation in transceiver v2](https://github.com/NVIDIA/TensorRT-LLM/pull/12734)
- **作者**: @Shixiaowei02
- **状态**: OPEN
- **标签**: 无标签
- **更新**: 2026-04-26

### #13481 [[None][test] Waive 10 failed cases for main in QA CI](https://github.com/NVIDIA/TensorRT-LLM/pull/13481)
- **作者**: @xinhe-nv
- **状态**: OPEN
- **标签**: 无标签
- **更新**: 2026-04-26

### #13198 [[None][feat] Add hit-rate gate and fair-share cap to KV-aware ADP router](https://github.com/NVIDIA/TensorRT-LLM/pull/13198)
- **作者**: @lancelly
- **状态**: OPEN
- **标签**: 无标签
- **更新**: 2026-04-26

### #13433 [[None][perf] Extend customMoeRouting kernel to support Qwen3.5](https://github.com/NVIDIA/TensorRT-LLM/pull/13433)
- **作者**: @nv-guomingz
- **状态**: OPEN
- **标签**: 无标签
- **更新**: 2026-04-26

### #13453 [[None][feat] Use a replay method for state rollback in Mamba-2 speculative decoding](https://github.com/NVIDIA/TensorRT-LLM/pull/13453)
- **作者**: @hnover-nv
- **状态**: OPEN
- **标签**: 无标签
- **更新**: 2026-04-26

### #13093 [[https://nvbugs/6059036][fix] Fix AutoDeploy max_batch_size vs cuda_graph_config validation mismatch](https://github.com/NVIDIA/TensorRT-LLM/pull/13093)
- **作者**: @marinayanov
- **状态**: OPEN
- **标签**: 无标签
- **更新**: 2026-04-26

### #12738 [[None][feat] Add bf16 trtllm-gen moe support through flashinfer.](https://github.com/NVIDIA/TensorRT-LLM/pull/12738)
- **作者**: @nv-guomingz
- **状态**: OPEN
- **标签**: 无标签
- **更新**: 2026-04-26

### #12646 [[TRTLLM-11547][feat] Add Qwen3.5 MTP support.](https://github.com/NVIDIA/TensorRT-LLM/pull/12646)
- **作者**: @nv-guomingz
- **状态**: OPEN
- **标签**: 无标签
- **更新**: 2026-04-26

### #13480 [[None][feat] Reduce sampler overhead with min_tokens](https://github.com/NVIDIA/TensorRT-LLM/pull/13480)
- **作者**: @galagam
- **状态**: OPEN
- **标签**: 无标签
- **更新**: 2026-04-26

### #13477 [[None][perf] Scheme X L2-aware dispatcher and PDL launchers for sparse-attention GVR Top-K](https://github.com/NVIDIA/TensorRT-LLM/pull/13477)
- **作者**: @longcheng-nv
- **状态**: OPEN
- **标签**: 无标签
- **更新**: 2026-04-26

### #12905 [[TRTLLM-11558][feat] Acceptance rate based speculation off in one model path](https://github.com/NVIDIA/TensorRT-LLM/pull/12905)
- **作者**: @zheyuf
- **状态**: OPEN
- **标签**: 无标签
- **更新**: 2026-04-26

### #12490 [[None][feat] kv cache manager v1 use fabric memory to enable mnnvl transfer for kv cache transfer in disaggregated serving](https://github.com/NVIDIA/TensorRT-LLM/pull/12490)
- **作者**: @chuangz0
- **状态**: OPEN
- **标签**: 无标签
- **更新**: 2026-04-26

### #13479 [[None][test] Waive 6 failed cases for main in QA CI](https://github.com/NVIDIA/TensorRT-LLM/pull/13479)
- **作者**: @xinhe-nv
- **状态**: OPEN
- **标签**: 无标签
- **更新**: 2026-04-26

### #13222 [[#11823][feat] AutoDeploy trtllm_mla attention backend](https://github.com/NVIDIA/TensorRT-LLM/pull/13222)
- **作者**: @MrGeva
- **状态**: OPEN
- **标签**: 无标签
- **更新**: 2026-04-26

### #12801 [[None][feat] Add llm.encode() fast path for encoder-only models](https://github.com/NVIDIA/TensorRT-LLM/pull/12801)
- **作者**: @tingyangk
- **状态**: OPEN
- **标签**: Community want to contribute
- **更新**: 2026-04-26

---

## ✅ 今日新增PR

### #13481 [[None][test] Waive 10 failed cases for main in QA CI](https://github.com/NVIDIA/TensorRT-LLM/pull/13481)
- **作者**: @xinhe-nv
- **标签**: 无标签
- **创建时间**: 2026-04-26

### #13480 [[None][feat] Reduce sampler overhead with min_tokens](https://github.com/NVIDIA/TensorRT-LLM/pull/13480)
- **作者**: @galagam
- **标签**: 无标签
- **创建时间**: 2026-04-26

### #13477 [[None][perf] Scheme X L2-aware dispatcher and PDL launchers for sparse-attention GVR Top-K](https://github.com/NVIDIA/TensorRT-LLM/pull/13477)
- **作者**: @longcheng-nv
- **标签**: 无标签
- **创建时间**: 2026-04-26

### #13479 [[None][test] Waive 6 failed cases for main in QA CI](https://github.com/NVIDIA/TensorRT-LLM/pull/13479)
- **作者**: @xinhe-nv
- **标签**: 无标签
- **创建时间**: 2026-04-26

### #13478 [[TRTLLM-13429][feat] Switch DeepSeek/NemotronH/Qwen3/Qwen3.5-MoE to sharding-IR canonical models](https://github.com/NVIDIA/TensorRT-LLM/pull/13478)
- **作者**: @greg-kwasniewski1
- **标签**: 无标签
- **创建时间**: 2026-04-26

---

## ✅ 今日已合并PR

### #12185 [[TRTLLM-10061][feat] Prefix caching support for mamba hybrid models](https://github.com/NVIDIA/TensorRT-LLM/pull/12185)
- **作者**: @VALLIS-NERIA
- **合并时间**: 2026-04-26

### #13187 [[https://nvbugs/6076564][fix] unwaive TestNemotronH::test_auto_dtype[trtllm-flashinfer_ssm-False]](https://github.com/NVIDIA/TensorRT-LLM/pull/13187)
- **作者**: @tcherckez-nvidia
- **合并时间**: 2026-04-26

### #12999 [[None][chore] AutoDeploy: Refactor finegrained FP8 scale sharding helpers](https://github.com/NVIDIA/TensorRT-LLM/pull/12999)
- **作者**: @galagam
- **合并时间**: 2026-04-26

---

## 📋 今日Commit摘要

- [[TRTLLM-10061][feat] Prefix caching support for mamba hybrid models (Qwen3.5 & N](https://github.com/NVIDIA/TensorRT-LLM/commit/035de5d1851508893d2dc9a42d92c7756513709d) — @VALLIS-NERIA
- [[https://nvbugs/6076564][fix] unwaive TestNemotronH::test_auto_dtype[trtllm-flas](https://github.com/NVIDIA/TensorRT-LLM/commit/7389d0cabb40fc26da94e846321c13827a3e4342) — @tcherckez-nvidia
- [[None][chore] AutoDeploy: Refactor finegrained FP8 scale sharding helpers (#1299](https://github.com/NVIDIA/TensorRT-LLM/commit/db01f014f4da3d0cb777fa41b4d3ee55f823ae9c) — @galagam
- [[None][test] Update CI Post-Merge Disagg Perf Tests (#13343)](https://github.com/NVIDIA/TensorRT-LLM/commit/dd907c045ecb31b064cce6e0ca0ac8161830807f) — @chenfeiz0326
- [[TRTLLM-11373][refactor] Embed VisualGenParams in DiffusionRequest and simplify ](https://github.com/NVIDIA/TensorRT-LLM/commit/4c84e1785bc40e7a0bc7d74d395debebae9ef0fc) — @zhenhuaw-me
- [[https://nvbugs/6093714][fix] Reduce batch size for test + document memory assum](https://github.com/NVIDIA/TensorRT-LLM/commit/eeba2eb0482f3bcfe2204c614b5ed125c6b6ce84) — @govind-ramnarayan
- [[None][infra] Check in most recent lock file from nightly pipeline](https://github.com/NVIDIA/TensorRT-LLM/commit/b9ce4b69d12fe5ba65d13893111b1a2ea29413ee) — @tensorrt-cicd


---

*Generated at 2026-04-27 07:40*
