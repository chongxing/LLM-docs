# TensorRT-LLM 开源社区日报

**日期**: 2026-03-28  
**仓库**: [NVIDIA/TensorRT-LLM](https://github.com/NVIDIA/TensorRT-LLM)

---

## 📊 今日概览

| 指标 | 数量 |
|------|------|
| 🔄 活跃 PR (今日更新) | 12 |
| 🆕 新增 PR | 0 |
| ✅ 已合并 PR | 1 |
| 📣 活跃 Issues | 1 |

### 重点关注领域
- 🔥 **P/D 分离 (Disaggregated Serving)**: 1个相关 Issue 讨论
- 🔧 **KV Cache 优化**: 1个新合并 PR (#12315)
- 📊 **监控与指标**: Prometheus 指标支持 PR (#12564)
- 🤖 **AutoDeploy 增强**: 2个相关 PR

---

## 🔥 活跃 PR 列表 (今日更新)

| # | 标题 | 状态 | 作者 | 更新时间 |
|---|------|------|------|----------|
| [#12557](https://github.com/NVIDIA/TensorRT-LLM/pull/12557) | `[TRTLLM-3423][fix] Fix missing kv scaling factor` | open | liji-nv | 2026-03-28 |
| [#11869](https://github.com/NVIDIA/TensorRT-LLM/pull/11869) | `[None][feat] Add fused DiT QK Norm + RoPE CUDA kernel for FLUX` | open | karljang | 2026-03-28 |
| [#11723](https://github.com/NVIDIA/TensorRT-LLM/pull/11723) | `[TRTC-351][chore] Deprecation warnings on TRT backend entrypoints` | open | venkywonka | 2026-03-28 |
| [#11469](https://github.com/NVIDIA/TensorRT-LLM/pull/11469) | `[None][cleanup] Add supplemental ruff lint for legacy files via ruff-legacy hook` | open | venkywonka | 2026-03-28 |
| [#12384](https://github.com/NVIDIA/TensorRT-LLM/pull/12384) | `[None][feat] Add NvTelemetry/GXT-compliant usage telemetry` | open | venkywonka | 2026-03-28 |
| [#12430](https://github.com/NVIDIA/TensorRT-LLM/pull/12430) | `[TRTLLM-11574][feat] Some updates for integrating Pre-Merge Report into CI Report` | open | chenfeiz0326 | 2026-03-28 |
| [#12427](https://github.com/NVIDIA/TensorRT-LLM/pull/12427) | `[None][feat] MLIR-based auto-generated elementwise fusion for AutoDeploy` | open | suyoggupta | 2026-03-28 |
| [#12326](https://github.com/NVIDIA/TensorRT-LLM/pull/12326) | `[#12332][feat] AutoDeploy: SuperV3 MTP Support` | open | govind-ramnarayan | 2026-03-28 |
| [#12315](https://github.com/NVIDIA/TensorRT-LLM/pull/12315) | `[None][feat] KV cache-aware ADP router for prefix-affinity request routing` | **merged** | lancelly | 2026-03-28 |
| [#12564](https://github.com/NVIDIA/TensorRT-LLM/pull/12564) | `[#12298][feat] Add Prometheus gauge metrics for Kubernetes Inference Gateway routing` | open | BenjaminBraunDev | 2026-03-28 |
| [#12310](https://github.com/NVIDIA/TensorRT-LLM/pull/12310) | `[#12230][fix] Add bounds checking in autotuner _find_nearest_profile for SM121` | open | mihai-chiorean | 2026-03-28 |
| [#11370](https://github.com/NVIDIA/TensorRT-LLM/pull/11370) | `[None][feat] Qwen3-Next MTP` | open | IzzyPutterman | 2026-03-28 |
| [#12481](https://github.com/NVIDIA/TensorRT-LLM/pull/12481) | `[None][feat] Set onlyAllocated default to true to make sure no evitab…` | open | SimengLiu-nv | 2026-03-28 |

---

## ✅ 已合并 PR

| # | 标题 | 合并者 | 合并时间 |
|---|------|--------|----------|
| [#12315](https://github.com/NVIDIA/TensorRT-LLM/pull/12315) | `[None][feat] KV cache-aware ADP router for prefix-affinity request routing` | lancelly | 2026-03-28 |

### 🔍 合并 PR 详情

**#12315 - KV cache-aware ADP router for prefix-affinity request routing**
- **作者**: @lancelly
- **描述**: 实现了基于 KV Cache 感知的 ADP (Adaptive Dynamic Parallelism) 路由器，支持前缀亲和性请求路由
- **技术亮点**: 
  - 优化前缀缓存命中率
  - 提升多请求场景下的推理效率
  - 与现有调度系统集成

---

## 🆕 新增 PR

今日未发现新增 PR（created 日期为 2026-03-28）

---

## 📣 活跃 Issues 讨论

| # | 标题 | 状态 | 报告者 |
|---|------|------|--------|
| [#12560](https://github.com/NVIDIA/TensorRT-LLM/issues/12560) | `[Bug]: Disaggregated serving hang on block reuse (TRT-LLM 1.2.x)` | open | tytus-metrycki |

### 🔍 Issue 详情

**#12560 - Disaggregated serving hang on block reuse (TRT-LLM 1.2.x)**
- **类型**: Bug 报告
- **影响**: P/D 分离服务在块复用时出现挂起
- **状态**: 待修复
- **优先级**: 高（影响生产环境稳定性）

---

## 📝 Commit 摘要

| Commit | 消息 | 作者 | 时间 |
|--------|------|------|------|
| `3318aca` | `[None][feat] KV cache-aware ADP router for prefix-affinity request routing (#12315)` | Liao Lanyu | 2026-03-28 03:10:58Z |
| `5d4de76` | `[None][infra] Check in most recent lock file from nightly pipeline` | TensorRT LLM | 2026-03-28 03:07:35Z |

---

## 🎯 重点关注技术分析

### 1. KV Cache 优化 (#12315)
- **创新点**: 前缀亲和性路由算法
- **影响**: 提升前缀匹配场景的吞吐量
- **应用场景**: 多轮对话、系统提示复用

### 2. AutoDeploy 增强 (#12326, #12427)
- **SuperV3 MTP 支持**: 多 token 预测能力
- **MLIR 元素级融合**: 自动生成高效 CUDA kernel

### 3. CUDA Kernel 优化 (#11869)
- **FLUX 模型支持**: DiT QK Norm + RoPE 融合 kernel
- **性能收益**: 减少显存带宽，提升计算密度

### 4. 监控与可观测性 (#12564, #12384)
- **Prometheus 指标**: Kubernetes Inference Gateway 集成
- **NvTelemetry**: GXT 合规的遥测数据收集

### 5. P/D 分离稳定性 (#12560 Issue)
- **问题**: 块复用时服务挂起
- **影响**: 影响 Prefill/Decode 分离部署的可靠性
- **建议**: 关注后续修复进展

---

## 📈 趋势观察

1. **模型支持**: Qwen3-Next MTP 和 FLUX 模型持续集成
2. **部署优化**: Kubernetes 生态集成加深（Prometheus 指标）
3. **性能优化**: KV Cache 策略和 CUDA kernel 融合持续改进
4. **稳定性**: P/D 分离作为重点功能，相关 Bug 需要持续关注

---

*本日报由 OpenClaw 自动生成*  
*数据来源: GitHub API | 生成时间: 2026-03-28*
