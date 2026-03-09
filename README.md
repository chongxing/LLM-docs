# LLM推理框架月度汇总报告

**统计周期：** 2026年2月9日 - 2026年3月9日（过去一个月）  
**生成时间：** 2026年3月9日  
**数据来源：** GitHub API

---

## 一、合并 PR 数量统计

| 项目 | 合并 PR 数量 | 活跃度 |
|------|-------------|--------|
| **SGLang** | **892** | 🔥 最高 |
| **vLLM** | **875** | 🔥 极高 |
| **TensorRT-LLM** | **426** | 🔥 高 |

**分析：** SGLang 和 vLLM 活跃度相当，都接近 900 个合并 PR/月，TensorRT-LLM 约为它们的一半。

---

## 二、vLLM 主要工作方向

### 1. 硬件支持扩展
- ROCm/AMD GPU 支持持续优化
- Intel XPU 平台完善（Model Runner V2 支持）
- ARM 架构支持增强

### 2. 编译与性能优化
- torch.compile 持续改进
- Helion 内核自动调优基础设施
- CUDA Graph 优化

### 3. 模型支持
- DeepSeek 系列模型优化
- Qwen3 / GLM 系列适配
- MTP (Multi-Token Prediction) 支持

### 4. 稳定性修复
- Pipeline Parallel 修复
- KV Cache 管理优化
- 各类边界情况处理

---

## 三、SGLang 主要工作方向

### 1. 扩散模型 (Diffusion)
- Wan2.1、Qwen-Image 等图像生成模型支持
- TeaCache 优化
- CFG Zero Star 等技术集成

### 2. 高性能内核
- FlashInfer 升级 (0.6.3)
- JIT Kernel 优化（NVFP4、MXFP4）
- DeepGEMM 集成

### 3. 调度与缓存
- HiCache (分层缓存) 架构完善
- Prefix Cache 优化
- PD (Prefill-Decode) 分离支持

### 4. 多模态支持
- VLM 模型支持增强
- 视频/图像输入处理优化

---

## 四、TensorRT-LLM 主要工作方向

### 1. 部署与推理优化
- AutoDeploy 功能持续完善
- 多实例支持 (Triton backend)
- KV Cache 管理优化 (UnifiedBlockTree)

### 2. 新模型支持
- Qwen3.5 系列
- Kimi-K2.5 (NVFP4)
- Llama4、Mistral Large 3

### 3. 分离式推理 (Disaggregated Serving)
- E/PD (Encode/Prefill-Decode) 分离
- Chunked Prefill 优化
- KV Cache 传输优化

### 4. MoE 专家模型优化
- All-to-All 通信优化
- DeepEP Low Latency 支持
- 各类量化方案 (FP8/NVFP4/MXFP4)

---

## 五、总体趋势分析

1. **三大框架都处于高速迭代期**，每月都有大量功能更新和性能优化  
2. **硬件适配是共同重点**：都在积极支持 AMD、Intel 等非 NVIDIA 硬件  
3. **扩散模型成为新战场**：SGLang 在文生图/视频领域投入巨大  
4. **分离式推理成标配**：vLLM 和 TensorRT-LLM 都在强化 PD 分离架构  
5. **量化技术深入**：FP8、NVFP4、MXFP4 等低精度推理成为标配  
6. **长上下文优化**：KV Cache 管理、前缀缓存等技术持续演进  
7. **多模态统一**：文本、图像、视频、音频的统一处理成为趋势  

---

## 六、总结

| 框架 | 特点 |
|------|------|
| **vLLM** | 社区最活跃，覆盖面最广，通用性最强 |
| **SGLang** | 在多模态和扩散模型上发力明显，性能优化激进 |
| **TensorRT-LLM** | 企业级部署首选，NVIDIA 硬件优化领先 |

---
*数据来源：GitHub API (api.github.com)  
*统计脚本：OpenClaw GitHub Skill