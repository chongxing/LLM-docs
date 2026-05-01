# ArXiv 推理基础设施论文监控日报

**日期**: 2026-05-01
**分类**: cs.DC, cs.OS, cs.AR, cs.SE, cs.LG
**监控范围**: 2026-04-28 至 2026-04-30 新增论文

---

## 📊 今日概览

- 扫描论文总数: ~130 篇 (cs.DC 76篇 + cs.AR 52篇 + cs.OS 2篇)
- 筛选出推理基础设施相关重点论文: **5 篇**
- 涵盖方向: LLM推理优化、MoE服务架构、硬件架构设计、AI编译器内核生成、分布式训练系统

---

## 🔥 重点推荐论文

### 1. Efficient, VRAM-Constrained xLM Inference on Clients
- **链接**: https://arxiv.org/abs/2604.26334
- **作者**: DeepSeek/NVIDIA 相关团队 (Industry Track)
- **分类**: cs.DC, cs.AR, cs.LG
- **会议**: MLSys 2026 (Industry Track)
- **代码**: https://github.com/deepshnv/pipeshard-mlsys26-ae

**摘要要点**: 提出 pipelined sharding 技术，一种基于 benchmark-profile-guided 的 CPU-GPU 混合调度方法，实现高效的 VRAM 受限推理。通过子层级的模型分片、CPU offloading、流水线 copy-compute 和 VRAM 优先张量放置，优化 TTFT 和 TPS 指标。面向 NVIDIA IGI SDK 和 Cosmos-Reason1 (CR1) VLM 产品。评估显示：交互模式下 TTFT 提升 **6.7x**，TPS 提升 **30x**；批处理模式下吞吐量提升 **8.2x**。

**关联方向**: 客户端推理优化、模型分片、CPU-GPU 协同调度、VRAM 受限推理

---

### 2. FaaSMoE: A Serverless Framework for Multi-Tenant Mixture-of-Experts Serving
- **链接**: https://arxiv.org/abs/2604.26881
- **作者**: Minghe Wang 等
- **分类**: cs.DC, cs.LG
- **会议**: EdgeSys 2026

**摘要要点**: MoE 模型虽然每次只激活少量专家，但部署时需要将所有专家驻留内存，造成资源利用率低下，在多租户场景中尤为严重。本文提出 FaaSMoE，基于 Function-as-a-Service (FaaS) 的多租户 MoE 服务架构。将专家部署为无状态 FaaS 函数，实现按需和 scale-to-zero 的专家调用。支持可配置的专家粒度，平衡弹性与调用开销。使用 Qwen1.5-moe-2.7B 评估显示，相比全模型基线，资源使用不到 **1/3**。

**关联方向**: MoE 服务架构、多租户推理、Serverless/FaaS、边缘推理

---

### 3. AMMA: A Multi-Chiplet Memory-Centric Architecture for Low-Latency 1M Context Attention Serving
- **链接**: https://arxiv.org/abs/2604.26103
- **作者**: Zhongkai Yu, Haotian Ye, Yufei Ding 等
- **分类**: cs.AR, cs.AI, cs.DC, cs.LG

**摘要要点**: 当前所有 LLM 服务系统都以 GPU 为中心，但 GPU 计算密集型架构与 decode-phase attention 的内存密集型特性存在根本错配。随着推理和 agentic 工作负载推动上下文长度向 100 万 token 发展，attention 延迟成为主要瓶颈。本文提出 AMMA，一种多 chiplet 内存中心架构：用 HBM-PNM 立方体替代 GPU 计算 die，内存带宽翻倍；引入逻辑 die 微架构充分利用每立方体内部带宽；两级混合并行方案和重排序集体通信流减少 die-to-die 开销。相比 NVIDIA H100，attention 延迟降低 **15.5x**，能耗降低 **6.9x**。

**关联方向**: 硬件架构设计、长上下文推理、内存中心计算、Chiplet/PIM/PNM

---

### 4. FACT: Compositional Kernel Synthesis with a Three-Stage Agentic Workflow
- **链接**: https://arxiv.org/abs/2604.26666
- **作者**: (待补充)
- **分类**: cs.DC, cs.PF

**摘要要点**: 深度学习编译器和厂商库提供强基线性能，但受限于有限的工程师策划目录。当缺少所需优化时，开发者需手写 CUDA/CUTLASS。本文提出 FACT (Framework for Agentic CUTLASS Transpilation)，三阶段 agent 驱动工作流：(1) Pattern discovery - LLM agent 检查追踪图，匹配优化规则；(2) Pattern realization - 每个模式实现为 CUTLASS kernel，自动调参；(3) Pattern composition - 组合扩展为单一模块进行端到端基准测试。在 A100 上评估：Level 1 GEMM 负载提升 **1.06-1.18x**；Level 3 MiniGPT block 中，组合融合多头注意力与融合 MLP GEMM+GELU 实现 **2.79x** 端到端加速。

**关联方向**: AI 编译器、GPU Kernel 自动生成、CUTLASS、PyTorch 优化、Agentic Workflow

---

### 5. COPUS: Co-adaptive Parallelism and Batch Size Selection in Large Language Model Training
- **链接**: https://arxiv.org/abs/2604.26687
- **作者**: (待补充)
- **分类**: cs.DC

**摘要要点**: LLM 训练需要同时配置全局 batch size（统计效率）和 3D 并行策略（硬件吞吐）。现有方法独立决策：优化工作适应 batch size 但固定并行策略；系统工作选择最快并行但假设 batch size 不变。本文证明两者紧密耦合：最优并行策略会随 batch size 变化。提出 COPUS，自适应调整全局 batch size、并行策略和微 batch size。基于 Goodput（吞吐 × 统计效率）指导决策。在 1-4 节点 8xH100 和 8xMI210 上，3B-32B 模型评估显示：相比最快基线，平均收敛时间加速 **3.9-8.0%**，峰值 **11.1%**。

**关联方向**: 分布式训练、3D 并行、自适应 batch size、训练系统优化

---

## 📋 其他值得关注论文

### cs.DC 分布式计算
- **2604.26931** - Adaptive Self-Organization in Anonymous Dynamic Networks (理论分布式算法)
- **2604.26824** - Test Taxonomy and CI Ecosystem for Dynamic Resource Management in HPC (HPC 动态资源管理测试)
- **2604.26788** - Semantic Quantum Circuit Cache for Scalable Quantum-Classical Workflows (量子电路缓存，分布式场景)

### cs.AR 硬件架构
- **2604.25377** - TetrisG-SDK: Efficient Convolutional Layer Mapping for CIM (存内计算 CNN 映射优化)
- **2604.25338** - RecFlash: Fast Recommendation System on In-Storage Computing (存储内计算推荐系统)
- **2604.25799** - ULP FPGA-Based CNN for On-Device Cardiac Feature Extraction (边缘 FPGA 推理)

### cs.OS 操作系统
- **2604.25679** - (仅1篇，未获取到详细摘要)

---

## 🔍 技术趋势观察

1. **客户端推理成为热点**: 2604.26334 代表了端侧/客户端 LLM 推理优化的工业级进展，MLSys Industry Track 接受，说明从学术到产品的转化加速。

2. **MoE 服务架构创新**: FaaSMoE 将 Serverless 范式引入 MoE 推理，解决了专家驻留内存的资源浪费问题，多租户场景资源效率提升 3x 以上。

3. **硬件架构范式转移**: AMMA 提出内存中心架构挑战 GPU 中心范式，针对长上下文 attention 的内存密集型特性重新设计，15.5x 延迟降低是显著突破。

4. **AI 驱动的编译器自动化**: FACT 用 Agentic Workflow 替代手写 CUDA，连接了 LLM 能力和底层 Kernel 生成，2.79x 端到端加速展示了实用价值。

5. **训练与推理的边界模糊**: COPUS 虽然是训练优化，但其自适应并行和 batch size 联合调优的思路同样适用于动态推理负载调度。

---

*报告生成时间: 2026-05-01 09:00 AM (Asia/Shanghai)*
*数据来源: arxiv.org (cs.DC, cs.AR, cs.OS, cs.SE, cs.LG)*
