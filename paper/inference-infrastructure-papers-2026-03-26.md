# ArXiv 推理基础设施论文监控日报

**日期**: 2026-03-26

## 📊 今日概览

本次监控涵盖 cs.DC (分布式/并行/集群计算)、cs.OS (操作系统)、cs.AR (硬件架构) 三个类别，共发现 **17 篇**与推理基础设施相关的重点论文。

| 类别 | 新增论文数 |
|------|-----------|
| LLM推理/服务优化 | 9 |
| GPU/加速器架构 | 6 |
| 分布式系统 | 2 |

---

## 🔥 重点推荐论文

### 1. PCR: A Prefetch-Enhanced Cache Reuse System for Low-Latency RAG Serving
- **链接**: https://arxiv.org/abs/2603.23049
- **作者**: Wenfeng Wang, Xiaofeng Hou, Peng Tang, et al.
- **分类**: cs.DC
- **摘要**: 针对RAG (Retrieval-Augmented Generation) 服务的低延迟需求，提出了预取增强的缓存复用系统。通过智能预取和缓存策略优化，显著降低RAG服务的延迟。
- **关键词**: RAG, Cache Optimization, Low-Latency Serving

### 2. Characterizing CPU-Induced Slowdowns in Multi-GPU LLM Inference
- **链接**: https://arxiv.org/abs/2603.22774
- **作者**: Euijun Chung, Yuxiao Jia, Aaron Jezghani, Hyesoon Kim
- **分类**: cs.AR, cs.DC
- **摘要**: 深入分析多GPU LLM推理中CPU引起的性能下降问题，提供了详细的性能特征分析和优化建议。
- **关键词**: Multi-GPU, CPU Bottleneck, Performance Analysis

### 3. CALVO: Improve Serving Efficiency for LLM Inferences with Intense Network Demands
- **链接**: https://arxiv.org/abs/2603.21257
- **作者**: Weiye Wang, Chen Chen, Junxue Zhang, et al.
- **分类**: cs.DC
- **摘要**: 针对高网络需求的LLM推理服务效率优化，提出了CALVO框架，改善网络密集型场景下的服务效率。
- **关键词**: Network Optimization, Serving Efficiency, LLM Inference

### 4. ZipServ: Fast and Memory-Efficient LLM Inference with Hardware-Aware Lossless Compression
- **链接**: https://arxiv.org/abs/2603.17435
- **作者**: Ruibo Fan, Xiangrui Yu, Xinglin Pan, et al.
- **分类**: cs.AR, cs.DC, cs.LG, cs.PF
- **发表**: ASPLOS'26 Accepted Paper
- **摘要**: 通过硬件感知无损压缩技术，实现快速且内存高效的LLM推理。被ASPLOS 2026接收。
- **关键词**: Compression, Memory Efficiency, Hardware-Aware Optimization

### 5. PRISM: Breaking the O(n) Memory Wall in Long-Context LLM Inference via O(1) Photonic Block Selection
- **链接**: https://arxiv.org/abs/2603.21576
- **作者**: Hyoseok Park, Yeonsang Park
- **分类**: physics.optics, cs.AI, cs.AR, cs.CL, cs.LG
- **摘要**: 通过光子块选择技术突破长上下文LLM推理的O(n)内存墙，实现O(1)内存复杂度。
- **关键词**: Long-Context, Memory Wall, Photonic Computing

---

## 📋 完整论文列表

### LLM推理/服务优化

| # | 论文标题 | 链接 | 分类 | 关键贡献 |
|---|---------|------|------|---------|
| 1 | PCR: A Prefetch-Enhanced Cache Reuse System for Low-Latency RAG Serving | https://arxiv.org/abs/2603.23049 | cs.DC | RAG缓存预取优化 |
| 2 | Characterizing CPU-Induced Slowdowns in Multi-GPU LLM Inference | https://arxiv.org/abs/2603.22774 | cs.AR/cs.DC | 多GPU CPU瓶颈分析 |
| 3 | CALVO: Improve Serving Efficiency for LLM Inferences with Intense Network Demands | https://arxiv.org/abs/2603.21257 | cs.DC | 网络密集型推理优化 |
| 4 | Compass: Optimizing Compound AI Workflows for Dynamic Adaptation | https://arxiv.org/abs/2603.20821 | cs.DC/cs.AI/cs.LG | 复合AI工作流优化 |
| 5 | WWW.Serve: Interconnecting Global LLM Services through Decentralization | https://arxiv.org/abs/2603.20661 | cs.DC | 去中心化LLM服务 |
| 6 | The Workload-Router-Pool Architecture for LLM Inference Optimization | https://arxiv.org/abs/2603.21354 | cs.LG/cs.DC | vLLM语义路由架构 |
| 7 | A Pipelined Collaborative Speculative Decoding Framework for Efficient Edge-Cloud LLM Inference | https://arxiv.org/abs/2603.19133 | cs.DC | 边云协同投机解码 |
| 8 | ZipServ: Fast and Memory-Efficient LLM Inference with Hardware-Aware Lossless Compression | https://arxiv.org/abs/2603.17435 | cs.AR/cs.DC | 硬件感知压缩 |
| 9 | MineDraft: A Framework for Batch Parallel Speculative Decoding | https://arxiv.org/abs/2603.18016 | cs.CL/cs.AI/cs.DC/cs.LG | 批处理投机解码 |

### GPU/加速器架构

| # | 论文标题 | 链接 | 分类 | 关键贡献 |
|---|---------|------|------|---------|
| 1 | Communication-Avoiding SpGEMM via Trident Partitioning on Hierarchical GPU Interconnects | https://arxiv.org/abs/2603.21444 | cs.DC/cs.MS | GPU互连优化 |
| 2 | High-Performance Portable GPU Primitives for Arbitrary Types and Operators in Julia | https://arxiv.org/abs/2603.18695 | cs.DC/cs.PF | Julia GPU原语 |
| 3 | cuGenOpt: A GPU-Accelerated General-Purpose Metaheuristic Framework | https://arxiv.org/abs/2603.19163 | cs.AI/cs.DC | GPU元启发式框架 |
| 4 | TRINE: A Token-Aware, Runtime-Adaptive FPGA Inference Engine for Multimodal AI | https://arxiv.org/abs/2603.22867 | cs.AR | FPGA多模态推理 |
| 5 | MINISA: Minimal Instruction Set Architecture for Next-gen Reconfigurable Inference Accelerator | https://arxiv.org/abs/2603.20623 | cs.AR/cs.PL | 极简推理加速器ISA |
| 6 | IMMSched: Interruptible Multi-DNN Scheduling via Parallel Multi-Particle Optimizing Subgraph Isomorphism | https://arxiv.org/abs/2603.21659 | cs.AR | 可中断多DNN调度 |

### 分布式系统

| # | 论文标题 | 链接 | 分类 | 关键贡献 |
|---|---------|------|------|---------|
| 1 | RoboECC: Multi-Factor-Aware Edge-Cloud Collaborative Deployment for VLA Models | https://arxiv.org/abs/2603.20711 | cs.DC/cs.LG/cs.RO | 边云协同VLA部署 |
| 2 | DGNNFlow: A Streaming Dataflow Architecture for Real-Time Edge-based Dynamic GNN Inference | https://arxiv.org/abs/2603.20364 | cs.DC | 边缘GNN推理架构 |

---

## 🔍 技术趋势分析

### 1. 投机解码 (Speculative Decoding) 持续火热
- **MineDraft**: 批处理并行投机解码框架
- **边云协同投机解码**: 流水线化协同框架
- **Act While Thinking**: 模式感知投机工具执行加速

### 2. 长上下文推理优化成为焦点
- **PRISM**: 光子块选择突破O(n)内存墙
- **ZipServ**: 硬件感知无损压缩

### 3. 异构计算与边缘部署
- **TRINE**: FPGA多模态AI推理引擎
- **RoboECC**: VLA模型边云协同部署
- **DGNNFlow**: 边缘动态GNN推理

### 4. 系统级瓶颈分析
- **CPU诱导的性能下降**: 多GPU场景下的CPU瓶颈特征化
- **网络密集型推理**: CALVO框架优化高网络需求场景

---

## 📈 值得关注的研究方向

1. **内存墙突破**: PRISM等工作探索新的内存优化范式
2. **投机解码工程化**: 从理论到实际部署框架的转化
3. **异构推理架构**: FPGA、定制ASIC在推理中的角色
4. **去中心化服务**: WWW.Serve等探索去中心化LLM服务架构
5. **RAG系统优化**: 针对检索增强生成的专门优化

---

*Generated by ArXiv Watcher | 监控时间: 2026-03-26 09:01 AM (Asia/Shanghai)*
