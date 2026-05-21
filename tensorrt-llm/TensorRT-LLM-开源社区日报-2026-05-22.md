# TensorRT-LLM 开源社区日报

**日期**: 2026-05-22
**仓库**: [NVIDIA/TensorRT-LLM](https://github.com/NVIDIA/TensorRT-LLM)
**数据来源**: GitHub API (过去 24 小时)

---

## 📊 今日概览

- **新增 PR**: 12 个
- **已合并 PR**: 5 个
- **已关闭 PR**: 0 个
- **当前 Open PRs**: 45 个

---

## 🔥 活跃 PR 列表 (Open PRs)

| PR | 标题 | 作者 | 标签 |
|----|------|------|------|
| [#13872](https://github.com/NVIDIA/TensorRT-LLM/pull/13872) | [TRTLLM-12670][feat] add /start_profile and /stop_profile endpoints to trtllm… | @JunyiXu-nv | api-compatible |
| [#12596](https://github.com/NVIDIA/TensorRT-LLM/pull/12596) | [#12595][feat] Emit initial KV cache stats at startup for external metric scrapers | @BenjaminBraunDev | Community want to contribute |
| [#14398](https://github.com/NVIDIA/TensorRT-LLM/pull/14398) | [TRTLLM-12842][feat] capture LLM API config telemetry | @venkywonka | |
| [#13914](https://github.com/NVIDIA/TensorRT-LLM/pull/13914) | [None][infra] Drop jupyter-server from dockerfile | @tfogal | |
| [#13713](https://github.com/NVIDIA/TensorRT-LLM/pull/13713) | [https://nvbugs/6104831][fix] Disaggregated KV transfer: lifecycle, cancellation, and quiescence hardening | @chienchunhung | |
| [#14354](https://github.com/NVIDIA/TensorRT-LLM/pull/14354) | [None][chore] Use CUDA 13 CUTLASS DSL package | @xxi-nv | |
| [#14429](https://github.com/NVIDIA/TensorRT-LLM/pull/14429) | [docs] Add Sphinx autodoc pages for AutoDeploy transforms | @adityasingh2400 | |
| [#14202](https://github.com/NVIDIA/TensorRT-LLM/pull/14202) | [#13816][feat] AutoDeploy: Optimize gpt-oss-120b perf | @taylor-yb-lee | |
| [#14428](https://github.com/NVIDIA/TensorRT-LLM/pull/14428) | Fix CuteDSL MoE generate_token_selected_experts ghost-token and multi-rank bugs | @adityasingh2400 | |
| [#14060](https://github.com/NVIDIA/TensorRT-LLM/pull/14060) | [TRTLLM-12027][feat] Disagg serving support with block reuse ON for hybrid models | @bo-nv | |
| [#12262](https://github.com/NVIDIA/TensorRT-LLM/pull/12262) | [TRTLLM-11556][feat] Expand dynamic speculation to all spec decode algorithms | @zheyuf | |
| [#12985](https://github.com/NVIDIA/TensorRT-LLM/pull/12985) | [None][fix] Resolve NVML device index mismatch in get_numa_aware_cpu_affinity when CUDA_VISIBLE_DEVICES is set | @YPxHolic | Community want to contribute |
| [#13926](https://github.com/NVIDIA/TensorRT-LLM/pull/13926) | [TRTLLM-12440][feat] Add GMS-only weight sharing support | @chienchunhung | |
| [#13859](https://github.com/NVIDIA/TensorRT-LLM/pull/13859) | [None][feat] AutoDeploy push the rope buffer to later stage | @nvchenghaoz | |
| [#14378](https://github.com/NVIDIA/TensorRT-LLM/pull/14378) | [https://nvbugs/5972776][fix] Pass IPC HMAC key through file descriptor | @yibinl-nvidia | |

---

## ✅ 今日新增 PR

| PR | 标题 | 作者 | 标签 |
|----|------|------|------|
| [#14398](https://github.com/NVIDIA/TensorRT-LLM/pull/14398) | [TRTLLM-12842][feat] capture LLM API config telemetry | @venkywonka | |
| [#14429](https://github.com/NVIDIA/TensorRT-LLM/pull/14429) | [docs] Add Sphinx autodoc pages for AutoDeploy transforms | @adityasingh2400 | |
| [#14428](https://github.com/NVIDIA/TensorRT-LLM/pull/14428) | Fix CuteDSL MoE generate_token_selected_experts ghost-token and multi-rank bugs | @adityasingh2400 | |
| [#14378](https://github.com/NVIDIA/TensorRT-LLM/pull/14378) | [https://nvbugs/5972776][fix] Pass IPC HMAC key through file descriptor | @yibinl-nvidia | |
| [#14413](https://github.com/NVIDIA/TensorRT-LLM/pull/14413) | [None][perf] DSv4 indexer Top-K: align kFTarget=kK, K-aware kSeqSmall, diagnostic env knobs | @longcheng-nv | |
| [#14395](https://github.com/NVIDIA/TensorRT-LLM/pull/14395) | [None][feat] KV reuse probe | @lancelly | deepseek-v4 |
| [#14423](https://github.com/NVIDIA/TensorRT-LLM/pull/14423) | [None][fix] disagg-ctx: detach kv_cache page-index buffers on early IndexMapper release | @Tabrizian | |
| [#14381](https://github.com/NVIDIA/TensorRT-LLM/pull/14381) | [None][fix] Reuse batch_indices_cuda across CUDA graph captures in EAGLE3 | @achartier | |
| [#14384](https://github.com/NVIDIA/TensorRT-LLM/pull/14384) | [None][perf] Eliminate torch.where host sync in multimodal fuse_input_embeds path | @yechank-nvidia | Multimodal |
| [#14415](https://github.com/NVIDIA/TensorRT-LLM/pull/14415) | [None][fix] Cap infra-retry budget at 2 attempts total | @dpitman-nvda | |
| [#14427](https://github.com/NVIDIA/TensorRT-LLM/pull/14427) | [https://nvbugs/6196614][fix] Bump aiperf from ==0.6.0 to ==0.8.0 | @tensorrt-cicd | |
| [#14416](https://github.com/NVIDIA/TensorRT-LLM/pull/14416) | [None][fix] Force slow tokenizer for Kimi K2.5 (TikTokenTokenizer) | @qiaoxj07 | |

---

## ✅ 今日已合并 PR

| PR | 标题 | 作者 | 标签 |
|----|------|------|------|
| [#14362](https://github.com/NVIDIA/TensorRT-LLM/pull/14362) | [https://nvbugs/6175060][fix] Fix B300 MegaMoE test selection | @xxi-nv | |
| [#14395](https://github.com/NVIDIA/TensorRT-LLM/pull/14395) | [None][feat] KV reuse probe | @lancelly | deepseek-v4 |
| [#14423](https://github.com/NVIDIA/TensorRT-LLM/pull/14423) | [None][fix] disagg-ctx: detach kv_cache page-index buffers on early IndexMapper release | @Tabrizian | |
| [#13517](https://github.com/NVIDIA/TensorRT-LLM/pull/13517) | [https://nvbugs/5911709][fix] Wrap lora load failures | @yibinl-nvidia | |
| [#14341](https://github.com/NVIDIA/TensorRT-LLM/pull/14341) | [https://nvbugs/6079440][test] Unwaive MTP speculative decoding test | @sunnyqgg | |

---

## 📋 今日 Commit 摘要

| Commit | 说明 | 作者 |
|--------|------|------|
| `1b10531` | [fix] Fix B300 MegaMoE test selection (#14362) | @xxi-nv |
| `19cba37` | [fix] Wrap lora load failures (#13517) | @yibinl-nvidia |
| `a1ec8da` | [test] Unwaive MTP speculative decoding test (#14341) | @sunnyqgg |
| `f15af81` | [fix] Reduce host memory usage during EPLB config model loading (#11962) | @jthomson04 |
| `1921ef1` | [feat] Add Laguna model support (Poolside Laguna-XS.2) (#13559) | @DomBrown |
| `d5a97c9` | [chore] Bump version to 1.3.0rc16 (#14422) | @VALLIS-NERIA |
| `96a4a09` | [feat] Add support for Qwen3.5 VL MoE (#14164) | @moraxu |
| `24b68fc` | [feat] Make L0 retries timeout-budget aware (#14323) | @dpitman-nvda |
| `30845bd` | [feat] AutoDeploy: MTP performance: Integrate FI kernel for extend path | @galagam |
| `8c52f21` | [perf] Optimize beam search candidate reconstruction by skipping p | @xuanzic |
| `075933a` | [feat] add KV cache reuse probe (#14333) | @lowsfer |
| `6bf1701` | [fix] Unwaive Qwen3.5 35B A3B FP8 test case (#14406) | @nv-guomingz |
| `7279d63` | [feat] EXAONE-4.5 Support (#12873) | @yechank-nvidia |
| `6698825` | [fix] Mark AutoDeploy attention DP world sizes by GPU co | @galagam |
| `709e9c8` | [fix] Isolate ray tests to avoid GCS timeout in one pytest session (#14342) | @shuyixiong |
| `ac0be47` | [test] Disable ignore-eos when Spec Decoding in Perf Test (#14347) | @chenfeiz0326 |
| `736d580` | [infra] Waive 6 failed cases for main in post-merge 2726 (#14405) | @ZhanruiSunCh |
| `97f2dda` | [test] Update bug ID for test_all_optimizations_combined waiver (#14402) | @mzweilz |
| `00f3335` | [cbts] Add core code related rule (#14266) | @crazydemo |
| `4c5500e` | [feat] Gemma4 MM: native vision + audio towers (#14300) | @Hudayday |

---

## 💡 社区洞察

### 重点方向

1. **版本迭代** — 版本号已提升至 **1.3.0rc16**，说明 v1.3 正式发布临近。

2. **KV Cache 复用与探测** — 今日新增并合并了 KV reuse probe 相关功能 ([#14395](https://github.com/NVIDIA/TensorRT-LLM/pull/14395) / [#14333](https://github.com/NVIDIA/TensorRT-LLM/pull/14333))，这对提升 KV cache 命中率、降低重复计算开销非常关键。

3. **Disaggregated Serving 强化** — 多个 PR 聚焦 PD 分离场景：
   - [#13713](https://github.com/NVIDIA/TensorRT-LLM/pull/13713) KV 传输生命周期、取消和静默硬化修复
   - [#14423](https://github.com/NVIDIA/TensorRT-LLM/pull/14423) 解决 disagg-ctx 中 kv_cache page-index buffers 的 detach 问题
   - [#14060](https://github.com/NVIDIA/TensorRT-LLM/pull/14060) 支持 block reuse ON 的混合模型 Disagg serving

4. **新模型支持** — 持续扩展：
   - **Qwen3.5 VL MoE** 支持 ([#14164](https://github.com/NVIDIA/TensorRT-LLM/pull/14164))
   - **EXAONE-4.5** 支持 ([#12873](https://github.com/NVIDIA/TensorRT-LLM/pull/12873))
   - **Laguna (Poolside Laguna-XS.2)** 支持 ([#13559](https://github.com/NVIDIA/TensorRT-LLM/pull/13559))
   - **Gemma4** 多模态原生 vision + audio towers ([#14300](https://github.com/NVIDIA/TensorRT-LLM/pull/14300))

5. **性能优化** —
   - DSv4 indexer Top-K 优化：对齐 kFTarget=kK、K-aware kSeqSmall ([#14413](https://github.com/NVIDIA/TensorRT-LLM/pull/14413))
   - 消除 multimodal fuse_input_embeds 路径中的 torch.where host sync ([#14384](https://github.com/NVIDIA/TensorRT-LLM/pull/14384))
   - beam search 候选重建优化 ([#8c52f21](https://github.com/NVIDIA/TensorRT-LLM/commit/8c52f21))

6. **AutoDeploy 生态** — 多个相关提交：
   - gpt-oss-120b 性能优化 ([#14202](https://github.com/NVIDIA/TensorRT-LLM/pull/14202))
   - MTP 性能：集成 FI kernel ([#30845bd](https://github.com/NVIDIA/TensorRT-LLM/commit/30845bd))
   - rope buffer 延迟推送 ([#13859](https://github.com/NVIDIA/TensorRT-LLM/pull/13859))
   - Sphinx 文档自动生成 ([#14429](https://github.com/NVIDIA/TensorRT-LLM/pull/14429))

7. **Spec Decode 进展** — MTP speculative decoding 测试已恢复 ([#14341](https://github.com/NVIDIA/TensorRT-LLM/pull/14341))，动态推测机制扩展到所有 spec decode 算法 ([#12262](https://github.com/NVIDIA/TensorRT-LLM/pull/12262)) 仍在推进中。

---

*报告生成时间: 2026-05-22 07:40 AM (Asia/Shanghai)*
