# ArXiv 推理基础设施论文汇总

**搜索日期**: 2026-03-17  
**搜索关键词**: inference infrastructure, serving system, GPU kernel optimization, distributed inference, LLM serving  
**筛选标准**: 偏重框架层面、算子优化、AI编译、互联通讯优化，不关注模型本身的进化

---

## 📊 概览

本次搜索聚焦以下方向的最新研究：
- 推理服务系统 (Inference Serving Systems)
- GPU 集群资源管理
- 算子/内核优化
- 分布式推理架构
- 通讯优化 (NCCL, collective communication)
- AI 编译器/代码生成

---

## 🔥 重点论文

### 1. ARL-Tangram: Unleash the Resource Efficiency in Agentic Reinforcement Learning
- **ArXiv ID**: [2603.13019](https://arxiv.org/abs/2603.13019v1)
- **发布时间**: 2026-03-13
- **核心贡献**: 
  - 针对 Agentic RL 的资源管理挑战（外部 CPU/GPU 资源需求）
  - 提出 action-level orchestration 和统一资源管理系统
  - 细粒度外部资源共享和弹性调度
  - 已在 MiMo 系列模型训练中使用
- **关键指标**: 
  - 平均 ACT 提升 4.3×
  - RL 训练步长缩短 1.5×
  - 外部资源节省 71.2%

---

### 2. Serving Hybrid LLM Loads with SLO Guarantees Using CPU-GPU Attention Piggybacking (OmniServe)
- **ArXiv ID**: [2603.12831](https://arxiv.org/abs/2603.12831v1)
- **发布时间**: 2026-03-13
- **核心贡献**:
  - 混合负载（延迟敏感 LS + 尽力而为 BE）的 LLM 服务系统
  - Attention Piggybacking 机制：将 BE 服务的 Attention 计算 offload 到 CPU
  - 异步 CPU-GPU 通信，防止 GPU 阻塞
  - 动态 batching 控制策略
- **关键指标**:
  - LS 服务 SLO 达成率提升 1.48×
  - BE 服务吞吐提升 9.85×

---

### 3. Cost-Efficient Multimodal LLM Inference via Cross-Tier GPU Heterogeneity (HeteroServe)
- **ArXiv ID**: [2603.12707](https://arxiv.org/abs/2603.12707v1)
- **发布时间**: 2026-03-13
- **核心贡献**:
  - MLLM 推理的两阶段异构需求分析（视觉编码计算密集 vs 语言生成内存带宽密集）
  - 模态级别分区（modality-level partitioning）
  - 跨层异构服务架构，支持普通 PCIe 互联
  - 成本模型证明异构部署成本最优
- **关键指标**:
  - 同硬件下吞吐提升 54%
  - 异构集群 ($38k) Token/$ 提升 37% (vs 同质基线 $64k)

---

### 4. TaxBreak: Unmasking the Hidden Costs of LLM Inference Through Overhead Decomposition
- **ArXiv ID**: [2603.12465](https://arxiv.org/abs/2603.12465v1)
- **发布时间**: 2026-03-12
- **核心贡献**:
  - 诊断工具：分解 host-side 编排开销
  - 三类开销识别：框架翻译时间、CUDA 库翻译时间、kernel launch-path 时间
  - 提出 Host-Device Balance Index (HDBI)
  - 揭示 MoE 模型 kernel dispatch 开销（比 dense 模型高 8-11×）
- **关键发现**:
  - CPU 单线程性能是一阶参数
  - 更快的 host CPU 可降低编排开销 10-29%，端到端延迟降低 14%

---

### 5. KernelFoundry: Hardware-aware evolutionary GPU kernel optimization
- **ArXiv ID**: [2603.12440](https://arxiv.org/abs/2603.12440v1)
- **发布时间**: 2026-03-12
- **核心贡献**:
  - LLM 辅助 GPU kernel 生成和优化
  - MAP-Elites quality-diversity 搜索
  - Meta-prompt 进化机制
  - 基于模板的参数优化
  - 支持 SYCL 和 CUDA，分布式硬件访问
- **关键指标**:
  - KernelBench SYCL 平均加速 2.3×

---

### 6. Cornserve: A Distributed Serving System for Any-to-Any Multimodal Models
- **ArXiv ID**: [2603.12118](https://arxiv.org/abs/2603.12118v1)
- **发布时间**: 2026-03-12
- **核心贡献**:
  - 面向 Any-to-Any 多模态模型的分布式服务系统
  - 组件解耦和独立扩展
  - 基于 Kubernetes，约 23K 行 Python
  - Record-and-replay 执行模型，direct tensor forwarding
- **关键指标**:
  - 吞吐提升 3.81×
  - 尾部延迟降低 5.79×
- **开源**: https://github.com/cornserve-ai/cornserve

---

### 7. NCCLbpf: Verified, Composable Policy Execution for GPU Collective Communication
- **ArXiv ID**: [2603.11438](https://arxiv.org/abs/2603.11438v1)
- **发布时间**: 2026-03-12
- **核心贡献**:
  - eBPF runtime 嵌入 NCCL，无需修改 NCCL
  - 静态验证防止不安全插件执行
  - 跨插件 map 支持可组合策略
  - 原子策略热更新（零停机）
- **关键指标**:
  - 每次 tuner decision 开销仅 80-130 ns (<0.03% 集体通信延迟)
  - AllReduce 吞吐提升 27% (4-128 MiB 范围)

---

### 8. The Missing Memory Hierarchy: Demand Paging for LLM Context Windows (Pichay)
- **ArXiv ID**: [2603.09023](https://arxiv.org/abs/2603.09023v1)
- **发布时间**: 2026-03-09
- **核心贡献**:
  - 将 LLM context window 视为 L1 cache，提出完整内存层次结构
  - Demand paging 系统实现 transparent proxy
  - Evict stale content, detect page faults, pin working-set
  - 类比虚拟内存理论（Denning, 1968）
- **关键指标**:
  - 生产环境上下文消耗降低 93% (5,038KB → 339KB)
  - Fault rate 仅 0.0254%

---

### 9. AgentRM: An OS-Inspired Resource Manager for LLM Agent Systems
- **ArXiv ID**: [2603.13110](https://arxiv.org/abs/2603.13110v1)
- **发布时间**: 2026-03-13
- **核心贡献**:
  - 分析 40,000+ GitHub issues，识别 Agent 系统的资源管理挑战
  - MLFQ 调度器 + zombie reaping + rate-limit-aware admission control
  - 三级 Context Lifecycle Manager（自适应压缩 + 休眠机制）
- **关键指标**:
  - P95 延迟降低 86%
  - Lane waste 减少 96%
  - 吞吐提升 168%
  - 100% 关键信息保留（vs 现有方法 65.1%）

---

### 10. FlexServe: A Fast and Secure LLM Serving System for Mobile Devices
- **ArXiv ID**: [2603.09046](https://arxiv.org/abs/2603.09046v1)
- **发布时间**: 2026-03-10
- **核心贡献**:
  - 移动端 LLM 推理的 TrustZone 安全方案
  - Flexible Secure Memory (Flex-Mem) 和 Flexible Secure NPU (Flex-NPU)
  - LLM-Aware Memory Management 和 Secure Inference Pipeline
- **关键指标**:
  - TTFT 加速 10.05× (vs baseline)
  - 多模型 agent 工作流 E2E 加速 24.30×

---

## 📈 趋势分析

### 热点方向

1. **异构计算优化**
   - CPU-GPU 协同（OmniServe, HeteroServe）
   - 跨层 GPU 异构集群成本优化

2. **通讯层优化**
   - NCCL eBPF 扩展（NCCLbpf）
   - 分布式 serving 架构（Cornserve）

3. **内存管理创新**
   - Context window paging（Pichay）
   - 类 OS 虚拟内存层次结构

4. **Kernel/算子自动生成**
   - LLM 辅助 kernel 优化（KernelFoundry）
   - 硬件感知进化搜索

5. **Agent 系统基础设施**
   - 资源管理器（AgentRM, ARL-Tangram）
   - 外部资源编排和弹性调度

---

## 📁 相关资源

- **原始搜索结果**: 已按分类保存于 ArXiv API 响应
- **PDF 链接**: 各论文均提供直接 PDF 下载链接
- **开源项目**: 
  - Cornserve: https://github.com/cornserve-ai/cornserve
  - OpenDC-STEAM: https://github.com/atlarge-research/OpenDC-STEAM

---

**汇总文件位置**: `LLM-docs/paper/inference-infrastructure-papers-2026-03-17.md`  
**下次更新**: 建议每周或按需更新
