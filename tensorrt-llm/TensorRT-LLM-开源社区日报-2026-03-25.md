# TensorRT-LLM 开源社区日报

**日期**: 2026-03-25
**仓库**: NVIDIA/TensorRT-LLM

---

## 📊 今日概览

- **新增PR数量**: 20+ (过去24小时)
- **已合并PR数量**: 15
- **活跃Open PRs**: 80+

---

## 🔥 活跃PR列表 (Open PRs)

### 核心功能更新

| # | 标题 | 作者 | 状态 | 链接 |
|---|------|------|------|------|
| #12532 | [None][docs] Add docstrings to cpp_custom_ops, model_config, and llm_args | longcheng-nv | OPEN | https://github.com/NVIDIA/TensorRT-LLM/pull/12532 |
| #12531 | [TRTLLM-10061][feat] Add support of linear attention state for C++ KV cache manager | VALLIS-NERIA | OPEN | https://github.com/NVIDIA/TensorRT-LLM/pull/12531 |
| #12530 | [https://nvbugs/5879577][fix] Fix KeyError in DeepSeekV3Lite FP8 MTP weight loading | sunnyqgg | OPEN | https://github.com/NVIDIA/TensorRT-LLM/pull/12530 |
| #12528 | [https://nvbugs/6007967][fix] fix disagg pp hang issue | bo-nv | OPEN | https://github.com/NVIDIA/TensorRT-LLM/pull/12528 |
| #12526 | [TRTLLM-11657][feat] Conversation affinity disagg router | reasonsolo | OPEN | https://github.com/NVIDIA/TensorRT-LLM/pull/12526 |
| #12525 | [None][feat] Disable shared paged index in flashinfer trtllm-gen fmha kernel | yihwang-nv | OPEN | https://github.com/NVIDIA/TensorRT-LLM/pull/12525 |
| #12523 | [https://nvbugs/6011517][fix] Fix autotuner OOM for trtllmGen MoE runners | hyukn | OPEN | https://github.com/NVIDIA/TensorRT-LLM/pull/12523 |
| #12522 | Adds a LMCache v1 KV connector example (llm_lmcache_connector.py) | feixiangpeng | OPEN | https://github.com/NVIDIA/TensorRT-LLM/pull/12522 |
| #12521 | [None][fix] Fix _waiting_requests to use compute tokens with KV cache reuse | lancelly | OPEN | https://github.com/NVIDIA/TensorRT-LLM/pull/12521 |
| #12519 | [None][feat] Add Blackwell MLA backend selection | bmarimuthu-nv | OPEN | https://github.com/NVIDIA/TensorRT-LLM/pull/12519 |
| #12517 | [#11992][fix] Support include_stop_token_in_output in gRPC request manager | CatherineSue | OPEN | https://github.com/NVIDIA/TensorRT-LLM/pull/12517 |
| #12516 | [https://nvbugs/6015329][fix] Use model-level warmup cache key for visual gen pipelines | karljang | OPEN | https://github.com/NVIDIA/TensorRT-LLM/pull/12516 |
| #12515 | [None][feat] Improve disaggregated benchmark slurm scripts | kaiyux | OPEN | https://github.com/NVIDIA/TensorRT-LLM/pull/12515 |
| #12514 | [None][doc] Document temperature-adjusted logprobs in TRT backend | achartier | OPEN | https://github.com/NVIDIA/TensorRT-LLM/pull/12514 |
| #12513 | [https://nvbugs/5991957][fix] Propagate disaggregated_params through PostprocWorker | peihu-nv | OPEN | https://github.com/NVIDIA/TensorRT-LLM/pull/12513 |
| #12512 | [None][feat] Add support for FlexKV | pcastonguay | OPEN | https://github.com/NVIDIA/TensorRT-LLM/pull/12512 |
| #12511 | [None][chore] Bump version to 1.3.0rc10 | yuanjingx87 | OPEN | https://github.com/NVIDIA/TensorRT-LLM/pull/12511 |

---

## ✅ 今日已合并PR (过去24小时)

| # | 标题 | 作者 | 合并时间 | 链接 |
|---|------|------|----------|------|
| #12518 | [None][infra] Waive flaky DeepSeekV3Lite disagg serving test | bo-nv | 2026-03-25 09:49 | https://github.com/NVIDIA/TensorRT-LLM/pull/12518 |
| #12495 | [None][chore] Add failed cases into waives.txt | xinhe-nv | 2026-03-25 13:23 | https://github.com/NVIDIA/TensorRT-LLM/pull/12495 |
| #12494 | [None][infra] Waive flaky DeepSeekV3Lite disagg serving test | hyukn | 2026-03-24 22:23 | https://github.com/NVIDIA/TensorRT-LLM/pull/12494 |
| #12492 | [https://nvbugs/6013562][test] Update waive | xinhe-nv | 2026-03-24 20:29 | https://github.com/NVIDIA/TensorRT-LLM/pull/12492 |
| #12488 | [None][infra] Update CI allowed list | yuanjingx87 | 2026-03-24 16:38 | https://github.com/NVIDIA/TensorRT-LLM/pull/12488 |
| #12486 | [None][infra] Waive pre-merge failed 5090 test | yuanjingx87 | 2026-03-25 06:18 | https://github.com/NVIDIA/TensorRT-LLM/pull/12486 |
| #12473 | [None][infra] Waive 2 failed cases for main in post-merge 2613 | ZhanruiSunCh | 2026-03-24 11:04 | https://github.com/NVIDIA/TensorRT-LLM/pull/12473 |
| #12463 | [None][chore] Fix ltx-2 Model Checkpoint Issue in VBench Eval Tests | yibinl-nvidia | 2026-03-25 10:53 | https://github.com/NVIDIA/TensorRT-LLM/pull/12463 |
| #12460 | [TRTLLM-11622][fix] fix parallel WAN vae when return_dict=True | NVShreyas | 2026-03-25 03:45 | https://github.com/NVIDIA/TensorRT-LLM/pull/12460 |
| #12458 | [https://nvbugs/5997090][fix] Add Disagg Perf Test back as MPI Issue has been fixed | chenfeiz0326 | 2026-03-24 10:40 | https://github.com/NVIDIA/TensorRT-LLM/pull/12458 |
| #12456 | [None][perf] add Dynamic SMEM block routing in MOE | jiahanc | 2026-03-24 10:27 | https://github.com/NVIDIA/TensorRT-LLM/pull/12456 |
| #12455 | [None][chore] Fixing guardword check | pcastonguay | 2026-03-23 21:56 | https://github.com/NVIDIA/TensorRT-LLM/pull/12455 |
| #12454 | [https://nvbugs/6007285][fix] Replace skipped TRTLLM NVFP4 test in B300 CI list | xxi-nv | 2026-03-24 22:51 | https://github.com/NVIDIA/TensorRT-LLM/pull/12454 |
| #12445 | [https://nvbugs/5983390][fix] Remove redundant D2H sync to optimize perf | hyukn | 2026-03-24 23:28 | https://github.com/NVIDIA/TensorRT-LLM/pull/12445 |
| #12442 | [TRTLLM-10061][feat] Add stride support for conv1d and fused_sigmoid_gating_delta_rule_update | VALLIS-NERIA | 2026-03-24 01:38 | https://github.com/NVIDIA/TensorRT-LLM/pull/12442 |

---

## 📋 技术亮点分析

### 🔧 分离式推理 (Disaggregated Serving) 优化
- **#12528**: 修复 disagg PP hang 问题
- **#12526**: Conversation affinity 路由优化
- **#12513**: disaggregated_params 在 PostprocWorker 中的透传修复
- **#12518/#12494**: DeepSeekV3Lite disagg serving 测试稳定性改进

### 🚀 MoE 性能优化
- **#12456**: Dynamic SMEM block routing in MOE - 动态共享内存路由优化
- **#12523**: 修复 trtllmGen MoE runners 在大 context length 下的 OOM 问题

### 🏗️ Blackwell 架构支持
- **#12519**: 添加 Blackwell MLA backend 选择支持

### 💾 KV Cache 管理增强
- **#12531**: C++ KV cache manager 支持 linear attention state
- **#12521**: 修复 _waiting_requests 使用 compute tokens 进行 KV cache reuse
- **#12522**: LMCache v1 KV connector 示例
- **#12512**: 添加 FlexKV 支持

### 🧪 稳定性与测试
- 大量 CI/测试豁免更新，提升 CI 稳定性
- **#12445**: 移除冗余的 D2H sync 优化性能

---

## 💡 社区洞察

### 技术趋势
1. **分离式推理成熟化**: 大量 PR 专注于 disaggregated serving 的稳定性和性能优化，表明该功能正走向生产就绪
2. **MoE 深度优化**: Dynamic SMEM routing 等底层优化显示对 MoE 架构的持续投入
3. **Blackwell 准备**: 新增 Blackwell MLA backend，为新架构做准备
4. **KV Cache 生态**: LMCache 集成、FlexKV 支持，丰富的 KV Cache 管理方案

### 值得关注
- **DeepSeekV3Lite FP8 MTP**: 权重加载修复 (#12530)
- **Conversation Affinity Router**: 分离式推理的路由优化 (#12526)
- **Version 1.3.0rc10**: 新版本即将发布 (#12511)

---

*Generated at: 2026-03-25 04:50 PM (Asia/Shanghai)*
*注：今日日报因 Cron 任务超时，手动补生成*
