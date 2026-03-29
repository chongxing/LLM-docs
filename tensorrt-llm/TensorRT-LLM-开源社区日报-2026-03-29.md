# TensorRT-LLM 开源社区日报

**日期**: 2026-03-29  
**仓库**: [NVIDIA/TensorRT-LLM](https://github.com/NVIDIA/TensorRT-LLM)

---

## 📊 今日概览

- **今日新增PR**: 1
- **今日已合并PR**: 1
- **当前Open PR总数**: 50+

---

## 🔥 活跃PR列表 (Open PRs)

### 高优先级/社区贡献

| PR | 标题 | 作者 | 状态 | 标签 |
|----|------|------|------|------|
| #12564 | Add Prometheus gauge metrics for Kubernetes Inference Gateway routing | BenjaminBraunDev | 🟢 Open | Community want to contribute |
| #12562 | Add years to README dates and organize into collapsible year sections | devabhixda | 🟢 Open | Community want to contribute |
| #12559 | Guard SWA block detachment for non-SWA and beam search | wojciech-wais | 🟢 Open | Community want to contribute |
| #12547 | Replace assertions with warnings for unsupported logits/logprobs in speculative sampler | yifjiang | 🟢 Open | Community want to contribute |
| #12545 | Add production-level Prometheus metrics | nvyutwu | 🟢 Open | Community want to contribute |
| #12522 | Adds LMCache v1 KV connector example | feixiangpeng | 🟢 Open | Community want to contribute |
| #12517 | Support include_stop_token_in_output in gRPC request manager | CatherineSue | 🟢 Open | Community want to contribute |

### 核心功能更新

| PR | 标题 | 作者 | 状态 | 说明 |
|----|------|------|------|------|
| #12561 | Eagle: Norm before FC | IzzyPutterman | 🟢 Open | Eagle投机解码优化 |
| #12557 | Optimize GDN of Qwen3-Next/3.5; adds BF16 TRTLLM MoE | rosenrodt | 🟢 Open | Qwen3优化 |
| #12555 | Fix MTP+PP hang by preserving speculative layer weights | xxi-nv | 🟢 Open | MTP+PP修复 |
| #12544 | Enable NVFP4 KV cache support in trtllm-gen attention | yihwang-nv | 🟢 Open | NVFP4支持 |
| #12537 | Add Mamba2 MTP SSM cache CUDA kernel | JadoTu | 🟢 Open | Mamba2支持 |
| #12531 | Add support of linear attention state for C++ KV cache manager | VALLIS-NERIA | 🟢 Open | Linear Attention |
| #12528 | Fix disagg pp hang issue | bo-nv | 🟢 Open | 分离式推理修复 |
| #12526 | Conversation affinity disagg router | reasonsolo | 🟢 Open | 对话亲和性路由 |
| #12525 | Disable shared paged index in flashinfer trtllm-gen fmha | yihwang-nv | 🟢 Open | FlashInfer优化 |
| #12519 | Add Blackwell MLA backend selection | bmarimuthu-nv | 🟢 Open | Blackwell架构 |

---

## ✅ 今日新增PR

### PR #12564
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/12564
- **标题**: [#12298][feat] Add Prometheus gauge metrics for Kubernetes Inference Gateway routing
- **作者**: BenjaminBraunDev
- **状态**: 🟢 Open
- **标签**: Community want to contribute
- **描述**: 为Kubernetes推理网关路由添加Prometheus指标，提升云原生部署的可观测性。

---

## ✅ 今日已合并PR

### PR #12315
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/12315
- **标题**: [None][feat] KV cache-aware ADP router for prefix-affinity request routing
- **作者**: Liao Lanyu (lancelly)
- **合并时间**: 2026-03-28
- **描述**: 引入支持前缀亲和性路由的KV缓存感知ADP路由器，优化缓存复用效率。

---

## 📋 今日Commit摘要

| Commit | 日期 | 说明 |
|--------|------|------|
| `3318aca` | 03-28 | KV cache-aware ADP router合并 (#12315) |
| `5d4de76` | 03-28 | 更新nightly pipeline lock文件 |
| `789494f` | 03-27 | 添加FlexKV支持 (#12512) |
| `069afcd` | 03-27 | LLM API支持请求优先级 (#12362) |
| `74a27e8` | 03-27 | sampler.py NVTX注解修复 |
| `d6e8c16` | 03-27 | 性能测试并发写入问题修复 |
| `725a5f1` | 03-27 | Eagle cases多样化输入输出支持 (#12520) |
| `d0d1213` | 03-27 | PyTransceiver代码整合 (#12342) |
| `9cc7584` | 03-26 | Visual gen pipelines warmup缓存key修复 |
| `e44df9e` | 03-26 | 更新依赖至NGC PyTorch 26.02 (#12102) |

---

## 💡 社区洞察

### 技术趋势
1. **可观测性增强**: 多个Prometheus指标相关PR（#12564, #12545），社区对生产环境监控需求强烈
2. **Qwen3支持**: 针对Qwen3-Next/3.5的优化正在推进（#12557），BF16 MoE支持
3. **分离式推理**: P/D分离相关修复和路由优化持续活跃（#12528, #12526, #12315）
4. **新型注意力**: Linear Attention支持（#12531）、NVFP4 KV Cache（#12544）等前沿特性
5. **投机解码**: Eagle相关优化（#12561, #12520）、Mamba2 MTP支持（#12537）

### 值得关注
- **Blackwell架构**: MLA后端选择支持（#12519）为新架构做准备
- **KV Cache生态**: LMCache连接器（#12522）整合外部KV缓存方案
- **FlexKV**: 新增FlexKV支持（#12512）提供更灵活的KV缓存策略

---

*报告生成时间: 2026-03-29 07:40 AM (Asia/Shanghai)*
