# TensorRT-LLM 开源社区日报

**日期**: 2026-04-30
**仓库**: https://github.com/NVIDIA/TensorRT-LLM
**Stars**: 13,510 | **Forks**: 2,332 | **Open Issues**: 1,402

---

## 📊 今日概览

- **新增PR数量**: 30+
- **已合并数量**: 20
- **活跃Open PRs**: 30+

---

## 🔥 活跃PR列表 (Open PRs)

| # | 标题 | 作者 | 状态 | 标签 |
|---|------|------|------|------|
| [#13625](https://github.com/NVIDIA/TensorRT-LLM/pull/13625) | [fix] Fix gen-only benchmark for KVCacheManager V2 + improve insufficient KVCache check | Tabrizian | OPEN | |
| [#13624](https://github.com/NVIDIA/TensorRT-LLM/pull/13624) | [feat] Match V1 KV event hashes for V2 cache events | peihu-nv | OPEN | |
| [#13622](https://github.com/NVIDIA/TensorRT-LLM/pull/13622) | [cleanup] Remove unused code path | 2ez4bz | OPEN | |
| [#13621](https://github.com/NVIDIA/TensorRT-LLM/pull/13621) | [chore] Update blossom-ci allowlist | yuanjingx87 | OPEN | |
| [#13620](https://github.com/NVIDIA/TensorRT-LLM/pull/13620) | [fix] Fix disaggregated cached token usage accounting | v-shobhit | OPEN | |
| [#13619](https://github.com/NVIDIA/TensorRT-LLM/pull/13619) | [fix] Fix extra_tokens in V2 KV cache | dongfengy | OPEN | |
| [#13618](https://github.com/NVIDIA/TensorRT-LLM/pull/13618) | [fix] Avoid divide-by-zero in KVCacheTransfer… | farazkh80 | OPEN | |
| [#13617](https://github.com/NVIDIA/TensorRT-LLM/pull/13617) | [fix] beam search LogitsPostProcessor parentIds gather | kyurious-george | OPEN | Community want to contribute |
| [#13616](https://github.com/NVIDIA/TensorRT-LLM/pull/13616) | [tests] Add E2E accuracy test for nano v3 omni | 2ez4bz | OPEN | |
| [#13615](https://github.com/NVIDIA/TensorRT-LLM/pull/13615) | [fix] Replace custom pipeline imports in dense_blockscaled_gemm_persistent.py with ups | tensorrt-cicd | OPEN | |
| [#13614](https://github.com/NVIDIA/TensorRT-LLM/pull/13614) | [feat] Add VisualGen TP Support | belgarten-nv | OPEN | Community want to contribute, VisualGen |
| [#13612](https://github.com/NVIDIA/TensorRT-LLM/pull/13612) | [feat] Add PaliGemma2 (Gemma2 backbone) support to _torch path | shichiachi3-cyber | OPEN | Community want to contribute |
| [#13610](https://github.com/NVIDIA/TensorRT-LLM/pull/13610) | [fix] Retry on EADDRINUSE in AutoDeploy allreduce-fusion test | MrGeva | OPEN | |
| [#13609](https://github.com/NVIDIA/TensorRT-LLM/pull/13609) | [fix] trim kv cache out of window after receive kv cache | chuangz0 | OPEN | deepseek-v4 |
| [#13607](https://github.com/NVIDIA/TensorRT-LLM/pull/13607) | [infra] Generate json with cmake fetched contents in build stage | yuanjingx87 | OPEN | |
| [#13606](https://github.com/NVIDIA/TensorRT-LLM/pull/13606) | [fix] harden allreduce rmsnorm fusion multigpu test | tcherckez-nvidia | OPEN | |
| [#13605](https://github.com/NVIDIA/TensorRT-LLM/pull/13605) | [fix] indexer cache fix | mingyangHao | OPEN | deepseek-v4 |
| [#13604](https://github.com/NVIDIA/TensorRT-LLM/pull/13604) | [infra] Update CI for DS v4 | EmmaQiaoCh | OPEN | deepseek-v4 |
| [#13603](https://github.com/NVIDIA/TensorRT-LLM/pull/13603) | [doc] Remove outdated items in previous news sections. | nv-guomingz | OPEN | |
| [#13601](https://github.com/NVIDIA/TensorRT-LLM/pull/13601) | [fix] Cherry-pick Python-side remaining_budget guard for KV reuse budget overflow | nv-yna | OPEN | |

---

## ✅ 今日新增PR (部分精选)

| # | 标题 | 作者 | 标签 |
|---|------|------|------|
| [#13625](https://github.com/NVIDIA/TensorRT-LLM/pull/13625) | [fix] Fix gen-only benchmark for KVCacheManager V2 + improve insufficient KVCache check | Tabrizian | |
| [#13624](https://github.com/NVIDIA/TensorRT-LLM/pull/13624) | [feat] Match V1 KV event hashes for V2 cache events | peihu-nv | |
| [#13620](https://github.com/NVIDIA/TensorRT-LLM/pull/13620) | [fix] Fix disaggregated cached token usage accounting | v-shobhit | |
| [#13619](https://github.com/NVIDIA/TensorRT-LLM/pull/13619) | [fix] Fix extra_tokens in V2 KV cache | dongfengy | |
| [#13618](https://github.com/NVIDIA/TensorRT-LLM/pull/13618) | [fix] Avoid divide-by-zero in KVCacheTransfer | farazkh80 | |
| [#13614](https://github.com/NVIDIA/TensorRT-LLM/pull/13614) | [feat] Add VisualGen TP Support | belgarten-nv | Community want to contribute |
| [#13612](https://github.com/NVIDIA/TensorRT-LLM/pull/13612) | [feat] Add PaliGemma2 (Gemma2 backbone) support | shichiachi3-cyber | Community want to contribute |
| [#13609](https://github.com/NVIDIA/TensorRT-LLM/pull/13609) | [fix] trim kv cache out of window after receive kv cache | chuangz0 | deepseek-v4 |
| [#13605](https://github.com/NVIDIA/TensorRT-LLM/pull/13605) | [fix] indexer cache fix | mingyangHao | deepseek-v4 |
| [#13604](https://github.com/NVIDIA/TensorRT-LLM/pull/13604) | [infra] Update CI for DS v4 | EmmaQiaoCh | deepseek-v4 |

---

## ✅ 今日已合并PR

| # | 标题 | 作者 | 合并日期 |
|---|------|------|----------|
| [#13249](https://github.com/NVIDIA/TensorRT-LLM/pull/13249) | [fix] Fix GIL management for guided decoding host func | Tabrizian | 2026-04-29 |
| [#13486](https://github.com/NVIDIA/TensorRT-LLM/pull/13486) | [fix] visual_gen UlyssesAttention: pass post-A2A seq_len to inner backend | karljang | 2026-04-29 |
| [#13598](https://github.com/NVIDIA/TensorRT-LLM/pull/13598) | [infra] disable -G in default Debug CUDA flags to fix CI OOM | bobboli | 2026-04-29 |
| [#13613](https://github.com/NVIDIA/TensorRT-LLM/pull/13613) | [infra] Waive 1 failed cases for main in pre-merge 36256 | ZhanruiSunCh | 2026-04-29 |
| [#13140](https://github.com/NVIDIA/TensorRT-LLM/pull/13140) | [feat] Add multi-node support for VisualGen diffusion workers via torchrun/SLURM | venmugil | 2026-04-29 |
| [#13093](https://github.com/NVIDIA/TensorRT-LLM/pull/13093) | [fix] Fix AutoDeploy max_batch_size vs cuda_graph_config validation mismatch | marinayanov | 2026-04-29 |
| [#13608](https://github.com/NVIDIA/TensorRT-LLM/pull/13608) | [feat] tool template and parser for dsv4 | Tracin | 2026-04-29 |
| [#13595](https://github.com/NVIDIA/TensorRT-LLM/pull/13595) | [feat] Enable EPLB for DeepSeek-V4 | Barry-Delaney | 2026-04-29 |
| [#13611](https://github.com/NVIDIA/TensorRT-LLM/pull/13611) | [fix] Remove MHC fused hidden-size guard | mingyangHao | 2026-04-29 |
| [#13597](https://github.com/NVIDIA/TensorRT-LLM/pull/13597) | [fix] Cherry pick KV Cache Manager V2 fixes | jiaganc | 2026-04-29 |
| [#13587](https://github.com/NVIDIA/TensorRT-LLM/pull/13587) | [fix] Fix fused mHC RMS normalization | mingyangHao | 2026-04-29 |
| [#13599](https://github.com/NVIDIA/TensorRT-LLM/pull/13599) | [fix] fix disagg draft token | chuangz0 | 2026-04-29 |
| [#13563](https://github.com/NVIDIA/TensorRT-LLM/pull/13563) | [feat] Required changes for DeepSeek-V4 Disaggregated Serving | Shixiaowei02 | 2026-04-29 |
| [#13568](https://github.com/NVIDIA/TensorRT-LLM/pull/13568) | [feat] Lift TOKENIZER_ALIASES to module level in llmapi.llm_args | nv-yna | 2026-04-29 |
| [#13602](https://github.com/NVIDIA/TensorRT-LLM/pull/13602) | [chore] Bump version to 1.3.0rc14 | VALLIS-NERIA | 2026-04-29 |
| [#13564](https://github.com/NVIDIA/TensorRT-LLM/pull/13564) | [fix] Always sync local ranks after prefetch in HfWeightLoader | lancelly | 2026-04-29 |
| [#13584](https://github.com/NVIDIA/TensorRT-LLM/pull/13584) | [chore] Dedup multimodal unit tests on B200 | QiJune | 2026-04-29 |
| [#13198](https://github.com/NVIDIA/TensorRT-LLM/pull/13198) | [feat] Add hit-rate gate and fair-share cap to KV-aware ADP router | lancelly | 2026-04-29 |
| [#13433](https://github.com/NVIDIA/TensorRT-LLM/pull/13433) | [perf] Extend customMoeRouting kernel to support Qwen3.5 | nv-guomingz | 2026-04-29 |
| [#13586](https://github.com/NVIDIA/TensorRT-LLM/pull/13586) | [ci] Fix misleading still running log when Slurm job is PENDING | QiJune | 2026-04-29 |

---

## 📋 今日Commit摘要

| SHA | 提交信息 | 作者 | 日期 |
|-----|---------|------|------|
| `3b7af1c` | [fix] visual_gen UlyssesAttention: pass post-A2A seq_len to inner backend | Kanghwan | 2026-04-29 |
| `1f95b05` | [infra] Waive 1 failed cases for main in pre-merge 36256 (#13613) | Zhanrui Sun | 2026-04-29 |
| `d36fe3f` | [infra] disable -G in default Debug CUDA flags to fix CI OOM (#13598) | Bo Li | 2026-04-29 |
| `0a4a3ec` | [fix] Fix AutoDeploy max_batch_size vs cuda_graph_config | Marina Yanovskiy | 2026-04-29 |
| `e903428` | [chore] Bump version to 1.3.0rc14 (#13602) | xiweny | 2026-04-29 |
| `0c86dda` | [chore] Dedup multimodal unit tests on B200 (#13584) | QI JUN | 2026-04-29 |
| `271c4cc` | [feat] Add multi-node support for VisualGen diffusion workers via torchrun | Venmugil Elango | 2026-04-29 |
| `0da07bf` | [infra] Check in most recent lock file from nightly pipeline | TensorRT LLM | 2026-04-29 |
| `d8bb9e6` | [feat] Add hit-rate gate and fair-share cap to KV-aware ADP router (#13198) | Liao Lanyu | 2026-04-29 |
| `338e94e` | [perf] Extend customMoeRouting kernel to support Qwen3.5 (#13433) | Guoming Zhang | 2026-04-29 |
| `c9e3d9a` | [ci] Fix misleading still running log when Slurm job is PENDING (#13586) | QI JUN | 2026-04-29 |
| `888a177` | [fix] Handle None tokenizer in OpenAI server (#13184) | Gal Hubara-Agam | 2026-04-29 |
| `b5c41f2` | [fix] Revert 'Add TestServePrefixAwareScheduling base on LMBenchmark/synth | tburt-nv | 2026-04-28 |
| `c30d9c7` | [tests] Add TestServePrefixAwareScheduling base on LMBenchmark/synthetic-m | Simeng Liu | 2026-04-28 |
| `da35deb` | [infra] Upload rendered HTML failure analysis (#13526) | dpitman-nvda | 2026-04-28 |

---

## 🔍 技术洞察

### DeepSeek-V4 持续活跃
- 今日大量 PR 带有 `deepseek-v4` 标签
- [#13595](https://github.com/NVIDIA/TensorRT-LLM/pull/13595) Enable EPLB for DeepSeek-V4
- [#13563](https://github.com/NVIDIA/TensorRT-LLM/pull/13563) DeepSeek-V4 Disaggregated Serving 所需改动
- [#13609](https://github.com/NVIDIA/TensorRT-LLM/pull/13609) trim kv cache out of window after receive kv cache
- [#13605](https://github.com/NVIDIA/TensorRT-LLM/pull/13605) indexer cache fix
- [#13604](https://github.com/NVIDIA/TensorRT-LLM/pull/13604) Update CI for DS v4

### VisualGen 多模态扩展
- [#13449](https://github.com/NVIDIA/TensorRT-LLM/pull/13449) Add Qwen image support (社区贡献)
- [#13614](https://github.com/NVIDIA/TensorRT-LLM/pull/13614) Add VisualGen TP Support (社区贡献)
- [#13140](https://github.com/NVIDIA/TensorRT-LLM/pull/13140) Add multi-node support for VisualGen diffusion workers via torchrun/SLURM

### KV Cache 管理优化
- [#13625](https://github.com/NVIDIA/TensorRT-LLM/pull/13625) Fix gen-only benchmark for KVCacheManager V2 + improve insufficient KVCache check
- [#13619](https://github.com/NVIDIA/TensorRT-LLM/pull/13619) Fix extra_tokens in V2 KV cache
- [#13597](https://github.com/NVIDIA/TensorRT-LLM/pull/13597) Cherry pick KV Cache Manager V2 fixes
- [#13198](https://github.com/NVIDIA/TensorRT-LLM/pull/13198) Add hit-rate gate and fair-share cap to KV-aware ADP router

### 版本更新
- [#13602](https://github.com/NVIDIA/TensorRT-LLM/pull/13602) Bump version to **1.3.0rc14**

---

> 数据来源: GitHub API (`api.github.com/repos/NVIDIA/TensorRT-LLM`)
> 生成时间: 2026-04-30 07:40 (Asia/Shanghai)
