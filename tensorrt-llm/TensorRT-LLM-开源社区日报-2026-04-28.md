# TensorRT-LLM 开源社区日报 - 2026-04-28

> 📅 报告日期：2026-04-28（数据截止 2026-04-27 UTC）
> 🔗 仓库：[NVIDIA/TensorRT-LLM](https://github.com/NVIDIA/TensorRT-LLM)

---

## 📊 今日概览

| 指标 | 数值 |
|------|------|
| ⭐ Stars | 13,490 |
| 🍴 Forks | 2,323 |
| 📂 Open Issues | 1,384 |
| 👁️ Watchers | 13,490 |
| 📥 今日新增 PR | 43 |
| 📤 今日已合并 PR | 5 |
| 📝 今日 Commit | 18 |

---

## 📋 活跃 PR 列表（Top 15 Open PRs）

| # | PR 标题 | 作者 | 链接 |
|---|---------|------|------|
| 1 | [None][feat] Add Gemma4 multimodal model support (text + vision + audio) | @lfr-0531 | https://github.com/NVIDIA/TensorRT-LLM/pull/12932 |
| 2 | [#12230][fix] Add bounds checking in autotuner _find_nearest_profile for SM121 | @mihai-chiorean | https://github.com/NVIDIA/TensorRT-LLM/pull/12310 |
| 3 | [None][feat] Reduce sampler overhead with min_tokens | @galagam | https://github.com/NVIDIA/TensorRT-LLM/pull/13480 |
| 4 | [None][perf] Skip KV cache estimation by default and update disagg pe… | @HuiGao-NV | https://github.com/NVIDIA/TensorRT-LLM/pull/12971 |
| 5 | [None][feat] Add multi-node support for VisualGen diffusion workers via torchrun/SLURM | @venmugil | https://github.com/NVIDIA/TensorRT-LLM/pull/13140 |
| 6 | [https://nvbugs/6059036][fix] Fix AutoDeploy max_batch_size vs cuda_graph_config validation mismatch | @marinayanov | https://github.com/NVIDIA/TensorRT-LLM/pull/13093 |
| 7 | [None][fix] Use bf16 for LTX-2 FP4 stage 2 | @yibinl-nvidia | https://github.com/NVIDIA/TensorRT-LLM/pull/13244 |
| 8 | [AutoDeploy][feat]: Basic LorA | @govind-ramnarayan | https://github.com/NVIDIA/TensorRT-LLM/pull/13297 |
| 9 | [TRTLLMINF-43][feat] Extend infrastructure-failure retry to K8s test stages | @dpitman-nvda | https://github.com/NVIDIA/TensorRT-LLM/pull/13530 |
| 10 | [None][feat] Add LoRA support for FP4Linear and FP4RowLinear | @langzhao-netizen | https://github.com/NVIDIA/TensorRT-LLM/pull/12229 |
| 11 | Add early validation for unsupported MXFP4/NVFP4 quantization on Hopper (SM90) | @aashirvad08 | https://github.com/NVIDIA/TensorRT-LLM/pull/12591 |
| 12 | [TRTLLMINF-45][infra] Upload rendered HTML failure analysis | @dpitman-nvda | https://github.com/NVIDIA/TensorRT-LLM/pull/13526 |
| 13 | [None][chore] Update flashinfer-python from 0.6.6 to 0.6.8 | @yihwang-nv | https://github.com/NVIDIA/TensorRT-LLM/pull/13064 |
| 14 | [https://nvbugs/6094108][fix] Fix Qwen3-30B-A3B NVFP4 tep4 CUTLASS MoE test OOM on B300 | @tensorrt-cicd | https://github.com/NVIDIA/TensorRT-LLM/pull/13349 |
| 15 | [https://nvbugs/5839028][fix] Lower KV cache fraction for DeepSeek-R1 FP8 DEEPGEMM variants | @xxi-nv | https://github.com/NVIDIA/TensorRT-LLM/pull/13357 |

---

## 🆕 今日新增 PR（2026-04-27 创建）

共 **43** 个新 PR 提交：

### 核心功能 / 性能优化
- **PR #13530**: [TRTLLMINF-43][feat] Extend infrastructure-failure retry to K8s test stages — @dpitman-nvda — https://github.com/NVIDIA/TensorRT-LLM/pull/13530
- **PR #13511**: [None][perf] set ncclConfig graphUsageMode=1 on communicator init — @nv-lschneider — https://github.com/NVIDIA/TensorRT-LLM/pull/13511
- **PR #13505**: [None][perf] Drop cubin and Eliminate ~6s FMHA JIT recompile in eager generation by aligning kernel selection with CUDA graph warmup — @yunruis — https://github.com/NVIDIA/TensorRT-LLM/pull/13505
- **PR #13503**: [None][feat] Add encoder_max_batch_size & encoder_max_num_tokens to TorchLlmArgs — @yechank-nvidia — https://github.com/NVIDIA/TensorRT-LLM/pull/13503
- **PR #13497**: Eg/pwcg tmla — @MrGeva — https://github.com/NVIDIA/TensorRT-LLM/pull/13497
- **PR #13495**: [Draft] Add NIXL transfer release cancellation hook — @yifjiang — https://github.com/NVIDIA/TensorRT-LLM/pull/13495

### Bug 修复
- **PR #13529**: [https://nvbugs/6050489][fix] Always call `wait_on_pp_send_handles` after each `_ring_broadcast_sample_state` — @tensorrt-cicd — https://github.com/NVIDIA/TensorRT-LLM/pull/13529
- **PR #13528**: [None][fix] fix PEFT page accumulation in MaxUtilizationPolicy scheduler — @achartier — https://github.com/NVIDIA/TensorRT-LLM/pull/13528
- **PR #13527**: [https://nvbugs/5996024][fix] Enforce trust_remote_code flag — @yibinl-nvidia — https://github.com/NVIDIA/TensorRT-LLM/pull/13527
- **PR #13525**: [https://nvbugs/5979710][fix] Bound transfer destinations — @yibinl-nvidia — https://github.com/NVIDIA/TensorRT-LLM/pull/13525
- **PR #13523**: [https://nvbugs/5972776][fix] Fix consume ipc key after startup — @yibinl-nvidia — https://github.com/NVIDIA/TensorRT-LLM/pull/13523
- **PR #13520**: [https://nvbugs/5944731][fix] Limit sampling requested logprobs — @yibinl-nvidia — https://github.com/NVIDIA/TensorRT-LLM/pull/13520
- **PR #13519**: [https://nvbugs/5923456[fix] GRPC bound request payloads — @yibinl-nvidia — https://github.com/NVIDIA/TensorRT-LLM/pull/13519
- **PR #13518**: [https://nvbugs/5914391][fix] Add OpenAI chat logit bias validation — @yibinl-nvidia — https://github.com/NVIDIA/TensorRT-LLM/pull/13518
- **PR #13517**: [https://nvbugs/5911709][fix] Wrap lora load failures — @yibinl-nvidia — https://github.com/NVIDIA/TensorRT-LLM/pull/13517
- **PR #13516**: [https://nvbugs/5911595][fix] Validate disaggregated worker endpoints — @yibinl-nvidia — https://github.com/NVIDIA/TensorRT-LLM/pull/13516
- **PR #13513**: [https://nvbugs/6112500][fix] Force FP8 output in AutoDeploy trtllm attention when FP8 KV cache active — @tensorrt-cicd — https://github.com/NVIDIA/TensorRT-LLM/pull/13513
- **PR #13509**: [https://nvbugs/6112497][fix] ** Applied the fix from commit `7ee473112` (which was not in this branch) across — @tensorrt-cicd — https://github.com/NVIDIA/TensorRT-LLM/pull/13509
- **PR #13498**: [https://nvbugs/6115036][fix] Fix NVFP4 engine size estimation and attention DP batch size in trtllm-bench — @hyukn — https://github.com/NVIDIA/TensorRT-LLM/pull/13498
- **PR #13496**: [https://nvbugs/6114727][fix] Unwaive deepseek r1 fp4 v2 grace_blackwell r1 fp4 v2 tep4 mtp3 1k1k — @chenfeiz0326 — https://github.com/NVIDIA/TensorRT-LLM/pull/13496
- **PR #13494**: [https://nvbugs/6093715][fix] AutoDeploy: skip nvfp4 test pre-blackwell — @galagam — https://github.com/NVIDIA/TensorRT-LLM/pull/13494
- **PR #13490**: [https://nvbugs/6114711][fix] Add `"kimi_k2": "kimi_k2"` and `"kimi_k25": "kimi_k2"` to `MODEL_TYPE_TO_REASONI` — @tensorrt-cicd — https://github.com/NVIDIA/TensorRT-LLM/pull/13490
- **PR #13489**: [None][fix] Use one mamba slot sentinel to save memory — @Wanli-Jiang — https://github.com/NVIDIA/TensorRT-LLM/pull/13489
- **PR #13488**: [None][fix] Port KV cache V2 follow-up fixes — @yizhang-nv — https://github.com/NVIDIA/TensorRT-LLM/pull/13488
- **PR #13486**: [None][fix] visual_gen UlyssesAttention: pass post-A2A seq_len to inner backend — @karljang — https://github.com/NVIDIA/TensorRT-LLM/pull/13486
- **PR #13484**: [https://nvbugs/6037654][fix] Set DeepEP low-latency token limit for qwen3 CI to prevent OOM — @byshiue — https://github.com/NVIDIA/TensorRT-LLM/pull/13484

### 基础设施 / CI / 测试
- **PR #13526**: [TRTLLMINF-45][infra] Upload rendered HTML failure analysis — @dpitman-nvda — https://github.com/NVIDIA/TensorRT-LLM/pull/13526
- **PR #13515**: [None][chore] DONT REVIEW. Generate container for testing. Don't merged. — @dongfengy — https://github.com/NVIDIA/TensorRT-LLM/pull/13515
- **PR #13514**: [None][chore] AutoDeploy: Relax standalone test timeout — @govind-ramnarayan — https://github.com/NVIDIA/TensorRT-LLM/pull/13514
- **PR #13512**: [TRTLLM-12258][chore] add visual gen dir in getMultiGpuFileChanged — @NVShreyas — https://github.com/NVIDIA/TensorRT-LLM/pull/13512
- **PR #13510**: [None][infra] Add apt cache mounts to devel stage and use existing pip cache — @eopXD — https://github.com/NVIDIA/TensorRT-LLM/pull/13510
- **PR #13508**: [None][test] Waive 2 failed cases for main in QA CI — @xinhe-nv — https://github.com/NVIDIA/TensorRT-LLM/pull/13508
- **PR #13504**: [None][test] Waive failed cases for main in QA CI — @crazydemo — https://github.com/NVIDIA/TensorRT-LLM/pull/13504
- **PR #13502**: [None][infra] Waive 1 failed cases for main in post-merge 2695 — @ZhanruiSunCh — https://github.com/NVIDIA/TensorRT-LLM/pull/13502
- **PR #13501**: [None][test] Waive 2 failed cases for main in QA CI — @xinhe-nv — https://github.com/NVIDIA/TensorRT-LLM/pull/13501
- **PR #13500**: [None][test] Waive 1 failed cases for main in QA CI — @xinhe-nv — https://github.com/NVIDIA/TensorRT-LLM/pull/13500
- **PR #13499**: [None][test] Waive 7 failed cases for main in QA CI — @xinhe-nv — https://github.com/NVIDIA/TensorRT-LLM/pull/13499
- **PR #13493**: [None][test] Waive 4 failed cases for main in QA CI — @xinhe-nv — https://github.com/NVIDIA/TensorRT-LLM/pull/13493
- **PR #13492**: [None][test] Waive 5 failed cases for main in QA CI — @xinhe-nv — https://github.com/NVIDIA/TensorRT-LLM/pull/13492
- **PR #13491**: [None][fix] Update CI Agg test's mpi2 to mpix — @chenfeiz0326 — https://github.com/NVIDIA/TensorRT-LLM/pull/13491
- **PR #13485**: [None][infra] Waive 1 failed cases for main in post-merge 2694 — @ZhanruiSunCh — https://github.com/NVIDIA/TensorRT-LLM/pull/13485
- **PR #13483**: [None][infra] Waive 1 failed cases for main in pre-merge 35790 — @ZhanruiSunCh — https://github.com/NVIDIA/TensorRT-LLM/pull/13483
- **PR #13482**: [None][test] refresh test constraints — @crazydemo — https://github.com/NVIDIA/TensorRT-LLM/pull/13482

---

## ✅ 今日已合并 PR（2026-04-27 合并）

共 **5** 个 PR 已合并：

1. **PR #13507**: [None] [chore] Update skills — @kaiyux — https://github.com/NVIDIA/TensorRT-LLM/pull/13507
2. **PR #13502**: [None][infra] Waive 1 failed cases for main in post-merge 2695 — @ZhanruiSunCh — https://github.com/NVIDIA/TensorRT-LLM/pull/13502
3. **PR #13485**: [None][infra] Waive 1 failed cases for main in post-merge 2694 — @ZhanruiSunCh — https://github.com/NVIDIA/TensorRT-LLM/pull/13485
4. **PR #13483**: [None][infra] Waive 1 failed cases for main in pre-merge 35790 — @ZhanruiSunCh — https://github.com/NVIDIA/TensorRT-LLM/pull/13483
5. **PR #13448**: [None][feat] Assert attention DP disabled when KV connector is in use — @jthomson04 — https://github.com/NVIDIA/TensorRT-LLM/pull/13448

---

## 📝 今日 Commit 摘要（2026-04-27）

今日 main 分支共 **18** 个 commit：

### 功能特性
1. `[None][feat] Assert attention DP disabled when KV connector is in use (#13448)` — jthomson04
2. `[TRTLLM-11228][feat] Support DFlash in one-model spec dec (#12794)` — Ziyi Xiong
3. `[TRTLLM-10004][feat] Enable GEMM -> AR with GEMM output in registered buffers` — Ludwig Schneider
4. `[None][feat] Add llm.encode() fast path for encoder-only models (#12801)` — Ting-Yang Kao
5. `[TRTLLM-11506][feat] Integrate Perf Triage Bot into CI Pipeline (#12429)` — chenfeiz0326

### 文档
6. `[None][doc] Add blog post for tuning batch sizes for CUDA graph padding and increasing the default batch size granularity` — yijingl-nvidia

### Bug 修复
7. `[https://nvbugs/6043291][fix] Add fatal error detection to prevent zombie worker pods (#12718)` — Chien-Chun Hung
8. `[None][fix] Fix Mamba cache correctness under MTP + CUDA-graph padding (#13151)` — Wanli Jiang
9. `[None][fix] Consolidate aiohttp session management in disagg router (#13408)` — Lizhi Zhou
10. `[None][fix] Fix bugs in WindowBlockManager destructor statistics (#12448)` — Yueh-Ting (eop) Chen

### 性能优化
11. `[TRTLLM-12123][feat] Add per-iteration request-aggregate counters to InflightBatching` — Yuewei Na
12. `[https://nvbugs/6064029][perf] Use fast PNG compression for visual gen serving` — Kanghwan

### 基础设施 / CI
13. `[None] [chore] Update skills (#13507)` — Kaiyu Xie
14. `[None][infra] Waive 1 failed cases for main in post-merge 2695 (#13502)` — Zhanrui Sun
15. `[None][infra] Waive 1 failed cases for main in post-merge 2694 (#13485)` — Zhanrui Sun
16. `[None][infra] Waive 1 failed cases for main in pre-merge 35790 (#13483)` — Zhanrui Sun
17. `[None][chore] Update CI allowlist 2026-04-23 (#13381)` — Zhanrui Sun

### 代码清理
18. `[None][cleanup] remove legacy addSequence path (#13280)` — Jin Li

---

## 🔥 今日热点

- **Gemma4 多模态支持**：PR #12932 是一个大型功能 PR，为 TensorRT-LLM 的 PyTorch backend 添加完整的 Gemma4 多模态模型支持（文本 + 视觉 + 音频），包含 4 个模型变体。
- **大规模 Bug 修复日**：今日新增 43 个 PR，其中约一半是 bug 修复，特别是 @yibinl-nvidia 提交了 7 个修复 PR。
- **性能优化**：@yunruis 提交 PR 消除 ~6s FMHA JIT 重编译时间，@nv-lschneider 优化 NCCL communicator 初始化。

---

> 📌 本日报由 OpenClaw 自动生成 | 数据来源：GitHub API
