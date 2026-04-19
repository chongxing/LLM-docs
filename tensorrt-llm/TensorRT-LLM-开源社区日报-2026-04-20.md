# TensorRT-LLM 开源社区日报 - 2026-04-20

## 概览

| 指标 | 数量 |
|------|------|
| 当前活跃 PRs | 744 |
| 今日新增 PRs | 13 |
| 今日合并 PRs | 6 |
| 今日关闭 PRs (未合并) | 3 |

---

## 📊 今日新增 PRs (13 个)

| # | 标题 | 作者 | 状态 | 链接 |
|---|------|------|------|------|
| 13193 | [None][fix] Test time conflict in WAN T2V example | 2ez4bz | Open | https://github.com/NVIDIA/TensorRT-LLM/pull/13193 |
| 13192 | [None][infra] Waive 2 failed cases for main in pre-merge 34569 | ZhanruiSunCh | Open | https://github.com/NVIDIA/TensorRT-LLM/pull/13192 |
| 13191 | [None][fix] Revert backend for Nemotron ViT to TRT-LLM | yechank-nvidia | Open | https://github.com/NVIDIA/TensorRT-LLM/pull/13191 |
| 13190 | [None][fix] Fix kv_layout for FLASHINFER backend | yechank-nvidia | Draft | https://github.com/NVIDIA/TensorRT-LLM/pull/13190 |
| 13189 | [None][chore] Remove closed bugs | xinhe-nv | Draft | https://github.com/NVIDIA/TensorRT-LLM/pull/13189 |
| 13188 | [https://nvbugs/5973199][fix] unwaive TestNemotronSuperV3::test_accuracy[nvfp4-4-attn_dp_on-trtllm] | tcherckez-nvidia | Open | https://github.com/NVIDIA/TensorRT-LLM/pull/13188 |
| 13187 | [https://nvbugs/6076564][fix] unwaive TestNemotronH::test_auto_dtype[trtllm-flashinfer_ssm-False] | tcherckez-nvidia | Open | https://github.com/NVIDIA/TensorRT-LLM/pull/13187 |
| 13186 | [None][feat] Update the deepseek routing | - | Open | https://github.com/NVIDIA/TensorRT-LLM/pull/13186 |
| 13185 | [None][feat] Add more granular TRT-LLM log levels | - | Open | https://github.com/NVIDIA/TensorRT-LLM/pull/13185 |
| 13184 | [None][fix] Handle None tokenizer in OpenAI server | galagam | Open | https://github.com/NVIDIA/TensorRT-LLM/pull/13184 |
| 13182 | [None][fix] Enhance agent consistency in tool use | 2ez4bz | Open | https://github.com/NVIDIA/TensorRT-LLM/pull/13182 |
| 13181 | [None][fix] Do not leak KV cache quantization into vision encoder | 2ez4bz | Open | https://github.com/NVIDIA/TensorRT-LLM/pull/13181 |
| 13180 | [None][feat] Switch CP cache transmission from contiguous to round-robin | brb-nv | Open | https://github.com/NVIDIA/TensorRT-LLM/pull/13180 |

---

## ✅ 今日合并 PRs (6 个)

| # | 标题 | 作者 | 合并时间 | 链接 |
|---|------|------|----------|------|
| 13183 | [https://nvbugs/6013562][fix] Unwaive tests since the fix has been merged | dongfengy | Apr 20, 2026 2:30 AM GMT+8 | https://github.com/NVIDIA/TensorRT-LLM/pull/13183 |
| 13147 | [None][test] Waive 1 failed cases for main in QA CI | xinhe-nv | Apr 19, 2026 8:32 PM GMT+8 | https://github.com/NVIDIA/TensorRT-LLM/pull/13147 |
| 13088 | [https://nvbugs/6060119][chore] Unwaive DSR1 FP4 128k8k disagg perf tests | peihu-nv | Apr 19, 2026 | https://github.com/NVIDIA/TensorRT-LLM/pull/13088 |
| 12990 | [None][fix] Support custom_tokenizer in KvCacheAwareRouter for disagg serving | lishicheng1996-nv | Apr 19, 2026 | https://github.com/NVIDIA/TensorRT-LLM/pull/12990 |
| 12855 | [https://nvbugs/6013562][fix] fix kv cache allocation is double the budget for vswa + eagle | dongfengy | Apr 19, 2026 | https://github.com/NVIDIA/TensorRT-LLM/pull/12855 |
| 12470 | [None][feat] Support sparse mqa/gqa attention | heyuhhh | Apr 19, 2026 | https://github.com/NVIDIA/TensorRT-LLM/pull/12470 |

---

## ❌ 今日关闭 PRs (未合并, 3 个)

| # | 标题 | 作者 | 关闭时间 | 链接 |
|---|------|------|----------|------|
| 13138 | [None][feat] DO NOT MERGE: Stacked changes for nano nemotron omni | 2ez4bz | Apr 19, 2026 | https://github.com/NVIDIA/TensorRT-LLM/pull/13138 |
| 12969 | [https://nvbugs/6070421][fix] Prefer pre-compiled cubin over NVRTC in trtllm-gen FMHA run() | galagam | Apr 19, 2026 | https://github.com/NVIDIA/TensorRT-LLM/pull/12969 |
| 12924 | [TRTLLM-11871][feat] Add support for audio + chunked prefill for nemotron | 2ez4bz | Apr 19, 2026 | https://github.com/NVIDIA/TensorRT-LLM/pull/12924 |

---

## 📈 活跃 PRs 列表 (部分)

| # | 标题 | 作者 | 更新 | 链接 |
|---|------|------|------|------|
| 12369 | fix: Run shape_prop to populate metadata of torch cached attention ops in autodeploy | peri044 | 5 min ago | https://github.com/NVIDIA/TensorRT-LLM/pull/12369 |
| 12185 | [TRTLLM-10061][feat] Prefix caching support for mamba hybrid models | VALLIS-NERIA | 8 min ago | https://github.com/NVIDIA/TensorRT-LLM/pull/12185 |
| 13165 | [https://nvbugs/6050481][fix] DONT REVIEW CI DEBUG | dongfengy | 33 min ago | https://github.com/NVIDIA/TensorRT-LLM/pull/13165 |
| 12888 | [https://nvbugs/6050489][fix] fix agg pp4 hang issue | bo-nv | 52 min ago | https://github.com/NVIDIA/TensorRT-LLM/pull/12888 |
| 13074 | [https://nvbugs/6064029][perf] Use fast PNG compression for visual gen serving | karljang | 1 hour ago | https://github.com/NVIDIA/TensorRT-LLM/pull/13074 |
| 13167 | [None][chore] Add Dynamo configs to TRTLLM CI - Disagg - Part 1 | brb-nv | 1 hour ago | https://github.com/NVIDIA/TensorRT-LLM/pull/13167 |
| 12472 | [None][fix] Fix multimodal KV cache block reuse for disaggregated serving | indrajit96 | 1 hour ago | https://github.com/NVIDIA/TensorRT-LLM/pull/12472 |
| 13180 | [None][feat] Switch CP cache transmission from contiguous to round-robin | brb-nv | 1 hour ago | https://github.com/NVIDIA/TensorRT-LLM/pull/13180 |
| 13193 | [None][fix] Test time conflict in WAN T2V example | 2ez4bz | 1 hour ago | https://github.com/NVIDIA/TensorRT-LLM/pull/13193 |
| 13181 | [None][fix] Do not leak KV cache quantization into vision encoder | 2ez4bz | 2 hours ago | https://github.com/NVIDIA/TensorRT-LLM/pull/13181 |

> 注：当前共有 744 个开放 PRs，以上为最近更新的部分 PRs。完整列表请查看 [GitHub PRs 页面](https://github.com/NVIDIA/TensorRT-LLM/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-desc)

---

## 📝 Commit 摘要 (Apr 19, 2026)

| Commit | 标题 | 作者 |
|--------|------|------|
| 41c4c68 | [https://nvbugs/6013562][fix] Unwaive tests since the fix has been merged (#13183) | dongfengy |
| 66431d8 | [None][test] Waive 1 failed cases for main in QA CI (#13147) | xinhe-nv |
| fc9d130 | [https://nvbugs/6013562][fix] fix kv cache allocation is double the budget for vswa + eagle (#12855) | dongfengy |
| 137497d | [None][fix] Support custom_tokenizer in KvCacheAwareRouter for disagg serving (#12990) | lishicheng1996-nv |
| cf9963f | [None][feat] Support sparse mqa/gqa attention (#12470) | heyuhhh |
| f85e3a3 | [None][infra] Check in most recent lock file from nightly pipeline | tensorrt-cicd |
| 87299ff | [https://nvbugs/6060119][chore] Unwaive DSR1 FP4 128k8k disagg perf tests (#13088) | peihu-nv |

---

## 🏷️ 标签分布

- 标签总数：61
- 里程碑：1

---

*报告生成时间：2026-04-20 07:40 GMT+8*
*数据来源：[NVIDIA/TensorRT-LLM](https://github.com/NVIDIA/TensorRT-LLM)*
