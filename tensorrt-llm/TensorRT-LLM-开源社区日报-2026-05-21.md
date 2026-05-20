# TensorRT-LLM 开源社区日报

**日期**: 2026-05-21
**仓库**: https://github.com/NVIDIA/TensorRT-LLM

---

## 📊 今日概览

- **新增PR**: 约 39 项（含 3 项已关闭未合并）
- **已合并**: 18 项
- **已关闭**: 3 项（未合并）
- **活跃Open PR**: 大量新增feature/fix/perf/chore类PR

---

## 🔥 重点已合并PR

| PR | 标题 | 作者 | 标签 | 链接 |
|----|------|------|------|------|
| #13347 | Fix disagg gen-only benchmark hang under ADP router imbalance | chienchunhung | | https://github.com/NVIDIA/TensorRT-LLM/pull/13347 |
| #14052 | add single-rank MPI sleep/wakeup and rank-0 collective_rpc shim | hhzhang16 | Community want to contribute | https://github.com/NVIDIA/TensorRT-LLM/pull/14052 |
| #14191 | Bump GEN max_num_tokens in disagg perf YAMLs | xwang233 | | https://github.com/NVIDIA/TensorRT-LLM/pull/14191 |
| #14217 | Remove closed bugs | xinhe-nv | | https://github.com/NVIDIA/TensorRT-LLM/pull/14217 |
| #13567 | Use LPIPS score for visual gen model regression test | yibinl-nvidia | | https://github.com/NVIDIA/TensorRT-LLM/pull/13567 |
| #12637 | opentelemetry metrics for num_postproc_workers > 0 disagg | karen-sy | Community want to contribute | https://github.com/NVIDIA/TensorRT-LLM/pull/12637 |
| #14311 | Enable PDL for DeepGEMM and related kernels | liji-nv | deepseek-v4 | https://github.com/NVIDIA/TensorRT-LLM/pull/14311 |
| #14291 | Update the logic of FMHA JIT path | heyuhhh | | https://github.com/NVIDIA/TensorRT-LLM/pull/14291 |
| #13815 | Exact multimodal KV blockhashing | venkywonka | | https://github.com/NVIDIA/TensorRT-LLM/pull/13815 |
| #13953 | Support v2 KV cache stats | yizhang-nv | deepseek-v4 | https://github.com/NVIDIA/TensorRT-LLM/pull/13953 |
| #14271 | MistralSmall related cleanups | 2ez4bz | | https://github.com/NVIDIA/TensorRT-LLM/pull/14271 |
| #14296 | Use CUDA 13 CUTLASS DSL package | lfr-0531 | deepseek-v4 | https://github.com/NVIDIA/TensorRT-LLM/pull/14296 |
| #14299 | Warn on experimental DeepSeek-V4 base checkpoints | lfr-0531 | deepseek-v4 | https://github.com/NVIDIA/TensorRT-LLM/pull/14299 |
| #14306 | Fuse sigmoid+mul+add shared-expert combine into one Triton kernel | nv-guomingz | | https://github.com/NVIDIA/TensorRT-LLM/pull/14306 |

---

## ✅ 今日已合并PR（快速合并类）

| PR | 标题 | 作者 | 链接 |
|----|------|------|------|
| #14357 | Waive 2 failed cases for main in post-merge 2725 | ZhanruiSunCh | https://github.com/NVIDIA/TensorRT-LLM/pull/14357 |
| #14350 | Waive 1 failed cases for main in pre-merge 38987 | ZhanruiSunCh | https://github.com/NVIDIA/TensorRT-LLM/pull/14350 |
| #14349 | Revert Mingyang back to mingyangHao in allowlist | ZhanruiSunCh | https://github.com/NVIDIA/TensorRT-LLM/pull/14349 |
| #14346 | Waive 1 failed cases for main in pre-merge 38925 | ZhanruiSunCh | https://github.com/NVIDIA/TensorRT-LLM/pull/14346 |
| #14344 | Update Claude Code agents and skills | kaiyux | https://github.com/NVIDIA/TensorRT-LLM/pull/14344 |
| #14340 | Clean test_durations file by removing outdated items | nv-guomingz | https://github.com/NVIDIA/TensorRT-LLM/pull/14340 |
| #14339 | Update blossom-ci allowlist: fix Mingyang, add brnguyen… | mingyangHao | https://github.com/NVIDIA/TensorRT-LLM/pull/14339 |
| #14332 | Waive 1 failed cases for main in QA CI | xinhe-nv | https://github.com/NVIDIA/TensorRT-LLM/pull/14332 |

---

## 🆕 今日新增Open PR（精选）

### Feature / 功能增强
- **#14377** [fix] disagg-gen-init: pass context_current_position as history length — https://github.com/NVIDIA/TensorRT-LLM/pull/14377
- **#14371** [feat] Draft: AD Graph lowering — https://github.com/NVIDIA/TensorRT-LLM/pull/14371
- **#14369** [feat] Add TurboQuant4 KV cache support — https://github.com/NVIDIA/TensorRT-LLM/pull/14369
- **#14364** [feat] Add Uneven Sharding to VisualGen TP — https://github.com/NVIDIA/TensorRT-LLM/pull/14364
- **#14334** [feat] CuteDSL MoE swiglu limit for nvfp4 (deepseek-v4) — https://github.com/NVIDIA/TensorRT-LLM/pull/14334
- **#14333** [feat] add KV cache reuse probe — https://github.com/NVIDIA/TensorRT-LLM/pull/14333
- **#14322** [feat] Side-stream for MM encoder — https://github.com/NVIDIA/TensorRT-LLM/pull/14322
- **#14326** [feat] Add encoder CUDA graph support to llm.encode() (api-compatible) — https://github.com/NVIDIA/TensorRT-LLM/pull/14326
- **#14323** [feat] Make L0 retries timeout-budget aware — https://github.com/NVIDIA/TensorRT-LLM/pull/14323

### Performance / 性能优化
- **#14361** [perf] Add AutoDeploy NVFP4 RMSNorm quant fusion — https://github.com/NVIDIA/TensorRT-LLM/pull/14361
- **#14348** [perf] Skip host zero_() of FP8 quant scale buffer by writing 0 in kernel — https://github.com/NVIDIA/TensorRT-LLM/pull/14348
- **#14338** [perf] Optimize DSV4 block table copy paths — https://github.com/NVIDIA/TensorRT-LLM/pull/14338

### Fix / Bug修复
- **#14374** Fix LTX-2 Attention Metadata issue — https://github.com/NVIDIA/TensorRT-LLM/pull/14374
- **#14373** Fix KV cache host splitting logic — https://github.com/NVIDIA/TensorRT-LLM/pull/14373
- **#14372** raise Wan 2.2 VBench threshold — https://github.com/NVIDIA/TensorRT-LLM/pull/14372
- **#14368** Allow content: null in CustomChatCompletionMessageParam — https://github.com/NVIDIA/TensorRT-LLM/pull/14368
- **#14366** Import missing get_draft_token_length in py_executor — https://github.com/NVIDIA/TensorRT-LLM/pull/14366
- **#14359** Add Qwen3.6-27B-FP8 support — https://github.com/NVIDIA/TensorRT-LLM/pull/14359
- **#14355** Preserve ip:port for trtllm-serve visual-gen — https://github.com/NVIDIA/TensorRT-LLM/pull/14355
- **#14336** Hide trailing EOS from generated text — https://github.com/NVIDIA/TensorRT-LLM/pull/14336

---

## 📋 今日Commit摘要（2026-05-20）

**共 28+ commits，重点如下：**

| Commit | 作者 | 描述 |
|--------|------|------|
| ef160ad0 | chienchunhung | Fix disagg gen-only benchmark hang under ADP router imbalance |
| 8ba76f48 | hhzhang16 | add single-rank MPI sleep/wakeup and rank-0 collective_rpc shim |
| 7e235973 | xwang233 | Bump GEN max_num_tokens in disagg perf YAMLs |
| f406f6e3 | yibinl-nvidia | Use LPIPS score for visual gen model regression test |
| f278c4f1 | karen-sy | opentelemetry metrics for num_postproc_workers > 0 disagg |
| a1737610 | heyuhhh | Update the logic of FMHA JIT path |
| 7acaf1ef | venkywonka | Exact multimodal KV blockhashing |
| bb57a837 | nv-guomingz | Fuse sigmoid+mul+add shared-expert combine into one Triton kernel |
| 4a58dc35 | tongyuantongyu | Reduce host overhead during scheduling and sampling |
| cf87a8be | brb-nv | Early emission of first token with overlap scheduler |
| 77db08da | pamelap-nvidia | Fix int4 awq for sm120/121 |
| 3de344d3 | peihu-nv | Handle unset attention_dp_relax in ADP routers |

---

## 🔍 社区洞察

### 技术趋势
1. **DeepSeek-V4 持续推进** — 多项PR标记 `deepseek-v4` 标签：PDL for DeepGEMM (#14311)、CuteDSL MoE swiglu (#14334)、CUDA 13 CUTLASS DSL (#14296)、v2 KV cache stats (#13953)
2. **Disaggregation (P/D分离)** — 修复benchmark hang (#13347)、KV cache host splitting (#14373)、OpenTelemetry metrics (#12637)、max_num_tokens调整 (#14191)
3. **KV Cache优化** — KV cache reuse probe (#14333)、TurboQuant4 KV cache (#14369)、exact multimodal KV blockhashing (#13815)、v2 stats (#13953)
4. **多模态/视觉生成** — LTX-2 attention fix (#14374)、LPIPS评分回归测试 (#13567)、VisualGen TP uneven sharding (#14364)、side-stream MM encoder (#14322)
5. **社区贡献活跃** — 外部贡献者PR #14052 (MPI sleep/wakeup)、#12637 (OpenTelemetry) 等被合并

### 值得关注的方向
- **FP8/NVFP4量化** — TurboQuant4 KV cache、NVFP4 RMSNorm fusion、FP8 scale buffer优化
- **CUDA Graph** — encoder CUDA graph支持 (#14326)
- **MiniMax-M2** — 多节点TP支持 (#14314)
- **Gemma 4 / Qwen3.6** — 新模型支持持续增加

---

*报告由 OpenClaw 自动生成 | 数据来源: GitHub API*
