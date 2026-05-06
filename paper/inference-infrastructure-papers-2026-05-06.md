# ArXiv 推理基础设施论文监控日报

**日期**: 2026-05-06
**监控分类**: cs.DC / cs.OS / cs.AR / cs.SE
**新增论文**: 14篇重点推荐

---

## 📊 本周概览

- cs.DC (分布式计算): **36篇** (5月5日)
- cs.OS (操作系统): **3篇** (5月5日)
- cs.AR (体系结构): **14篇** (5月5日)
- 重点推荐: **7篇**

---

## 🔥 重点推荐论文

### 1. [SAGA: Workflow-Atomic Scheduling for AI Agent Inference on GPU Clusters](https://arxiv.org/abs/2605.00528)

| 属性 | 内容 |
|------|------|
| **分类** | cs.DC, cs.AI, cs.LG, cs.OS |
| **来源** | HPDC '26 (已接收) |
| **核心** | 针对 compound AI (多步骤 LLM agent) 的工作流级 GPU 调度 |

**摘要**: AI agent 每任务执行数十到数百次链式 LLM 调用，但现有 GPU 调度器将每次调用视为独立请求，导致中间状态在步骤间被丢弃，端到端延迟膨胀 3-8x。SAGA 提出将整个 agent 工作流（而非单个推理调用）作为一级调度单元，通过 Agent Execution Graphs 预测跨工具调用边界的 KV cache 重用（达到 Bélády 最优离线策略的 1.31x 范围内）、session-affinity batching 和 Agent Fair Share 公平性指标。在 64-GPU 集群上服务 SWE-bench coding agents，相比 vLLM v0.15.1 减少任务完成时间 1.64x，GPU 内存利用率提升 1.22x，多租户干扰下 99.2% SLO 达成。

---

### 2. [Tempus: A Temporally Scalable Resource-Invariant GEMM Streaming Framework for Versal AI Edge](https://arxiv.org/abs/2605.00536)

| 属性 | 内容 |
|------|------|
| **分类** | cs.DC, cs.AR, cs.LG |
| **来源** | arXiv 2605.00536 |
| **核心** | 边缘 SoC 上的资源不变时序 GEMM 框架 |

**摘要**: LLM 推理中 GEMM 占高达 90% 的时间。现有 SOTA 框架通过空间扩展在数百个核上分布式处理，但这在资源受限的边缘 SoC 上会因物理实现失败、带宽饱和和过度资源消耗而失效。Tempus 采用固定 16 个 AIE-ML 核心计算块，通过迭代图执行和算法数据分块在可编程逻辑中实现可扩展性。高速级联流确保在启动间隔 (II) 为 1 的情况下进行低延迟部分和归约。在 GEMM 工作负载上评估，Tempus 在 10.677W 总片上功耗下达到 607 GOPS，相比领先的空间 SOTA (ARIES) 的突出因子高 211.2x。

---

### 3. [CvxCluster: Solving Large, Complex, Granular Resource Allocation Problems 100-1000x Faster](https://arxiv.org/abs/2605.01614)

| 属性 | 内容 |
|------|------|
| **分类** | cs.DC, cs.OS |
| **来源** | SOSP 2026 投稿 |
| **核心** | 凸优化驱动的集群资源分配 |

**摘要**: 集群资源分配是多维搜索问题，传统方法将其建模为混合整数规划 (MIP) 或复杂启发式搜索。CvxCluster 提出两阶段凸优化算法：第一阶段求解放置问题的凸松弛以产生每台机器的资源价格；第二阶段使用这些价格驱动轻量级贪婪过程进行任务放置。在 Azure  traces 上实验，CvxCluster 扩展到 100,480 台服务器，支持高达基线 trace 500,000x 的到达率，比 SOTA MIP 求解器快 100-2,500x，同时保持在最优目标 3% 以内。

---

### 4. [VUDA: Breaking CUDA-Vulkan Isolation for Spatial Sharing of Compute and Graphics on the Same GPU](https://arxiv.org/abs/2605.01352)

| 属性 | 内容 |
|------|------|
| **分类** | cs.OS, cs.AI, cs.DC |
| **来源** | arXiv 2605.01352 |
| **核心** | CUDA 与 Vulkan 的 GPU 空间共享 |

**摘要**: 基于 GPU 的具身 AI 模拟环境在单个设备上交错 CUDA 物理模拟和 Vulkan 逼真渲染。CUDA 和 Vulkan 创建独立的 GPU 上下文，绑定到不同的调度组，将计算和图形限制在互斥的时间片中。VUDA 通过通道重定向到 Vulkan 的调度域和页表嫁接来统一地址空间，在临界路径上消除所有数据复制。实验显示比时间共享基线提高高达 85% 的吞吐量，同时提高 GPU 利用率并降低端到端延迟。

---

### 5. [Affinity Tailor: Dynamic Locality-Aware Scheduling at Scale](https://arxiv.org/abs/2604.27915)

| 属性 | 内容 |
|------|------|
| **分类** | cs.OS, cs.AR, cs.DC |
| **来源** | Google 部署 (arXiv 2604.27915) |
| **核心** | 大规模动态局部性感知调度 |

**摘要**: 现代大型多核系统运行共享 CPU 的多个工作负载，导致工作负载在许多核心上执行，削弱了缓存、分支预测器和预取器的局部性。Affinity Tailor 是一个用户空间引导的内核调度系统，在线估计每个工作负载的 CPU 需求并分配拓扑紧凑的 CPU 集合作为亲和性提示而非硬分区。在 Google 部署后，在基于 chiplet 的系统上实现 12% 的每 CPU 吞吐量提升，在非 chiplet 系统上提升 3%。

---

### 6. [ViM-Q: Scalable Algorithm-Hardware Co-Design for Vision Mamba Model Inference on FPGA](https://arxiv.org/abs/2605.01935)

| 属性 | 内容 |
|------|------|
| **分类** | cs.AR, cs.CV, cs.LG |
| **来源** | FCCM 2026 (已接收) |
| **核心** | Vision Mamba FPGA 端侧推理加速 |

**摘要**: Vision Mamba (ViM) 模型利用状态空间模型 (SSM) 的线性复杂度提供比 Transformer 更高的效率。ViM-Q 提出硬件感知量化方案，结合动态 per-token 激活量化和 per-channel 平滑，以及自定义 4-bit per-block APoT 权重量化。在 AMD ZCU102 FPGA 上实现，相比量化 NVIDIA RTX 3090 GPU 基线，ViM-tiny 低 batch 推理平均加速 4.96x，能效提升 59.8x。

---

### 7. [Performance and Energy Benefits of MRDIMMs](https://arxiv.org/abs/2605.02371)

| 属性 | 内容 |
|------|------|
| **分类** | cs.AR |
| **来源** | arXiv 2605.02371 |
| **核心** | 多路复用列 DIMM 的性能与能效评估 |

**摘要**: MRDIMM 作为无需提高 DRAM 芯片频率即可实现更高带宽的内存设备出现。从传统 RDIMM 升级到 MRDIMM 带宽扩展 41%，为带宽受限工作负载带来 27-41% 的性能提升。延迟改善达到数百纳秒。在相同带宽利用率下，RDIMM 和 MRDIMM 功耗相似。在 MRDIMM 扩展带宽区域，性能提升大幅超过功耗增加，为内存受限工作负载提供高达 30% 的服务器能耗节省。

---

## 📋 其他关注论文

| 论文 | 分类 | 核心方向 |
|------|------|----------|
| [Cerberus: Cross-Layer ECC Co-Design](https://arxiv.org/abs/2605.02220) | cs.AR | 跨层 ECC 协同设计 (ISCA 2026) |
| [MANOJAVAM: FPGA Accelerator for PCA](https://arxiv.org/abs/2605.01514) | cs.AR, cs.DC | 统一矩阵乘法和 SVD 的 FPGA 加速器 |
| [FedQueue: Queue-Aware Federated Learning](https://arxiv.org/abs/2605.02125) | cs.DC, cs.LG | 跨设施 HPC 训练的队列感知联邦学习 |
| [PipeRTL: IR-Level Pipeline Optimization](https://arxiv.org/abs/2605.01836) | cs.AR | CIRCT 中的时序感知流水线优化 |
| [CityOS: Privacy Architecture for Urban Sensing](https://arxiv.org/abs/2605.02886) | cs.OS | 城市感知的隐私操作系统 |

---

## 🎯 趋势洞察

1. **Compound AI 调度**: SAGA 将 agent 工作流级调度引入 GPU 集群，相比单请求调度显著提升效率，与 vLLM prefix caching 形成互补方向
2. **边缘 LLM 推理**: Tempus 针对边缘 SoC 的时序可扩展 GEMM 框架，展示资源受限环境下的推理优化路径
3. **GPU 空间共享**: VUDA 打破 CUDA-Vulkan 隔离实现空间并行，对具身 AI 等多工作负载 GPU 共享场景意义重大
4. **局部性感知调度**: Affinity Tailor 从 Google 生产环境验证局部性优先调度在 chiplet 架构上的价值
5. **异构加速器**: ViM-Q 和 MANOJAVAM 展示 FPGA 在特定模型推理和数据分析中的能效优势

---

> 报告生成时间: 2026-05-06 09:00 AM (Asia/Shanghai)
