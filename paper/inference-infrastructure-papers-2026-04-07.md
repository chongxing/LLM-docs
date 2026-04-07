# ArXiv 推理基础设施论文汇总 - 2026-04-07

**日期**: 2026-04-07  
**数据来源**: arXiv cs.DC, cs.AR, cs.LG  
**关键词**: inference serving, GPU kernel, distributed inference, LLM serving, memory management

---

## 📊 今日概览

- **新增论文**: 6 篇
- **重点推荐**: 3 篇
- **主题分布**:
  - LLM 推理服务: 2 篇
  - 多 GPU 系统: 2 篇
  - 边缘-云协同: 1 篇
  - 分布式存储: 1 篇

---

## 🔥 重点推荐

### 1. Scaling Multi-Agent LLM Serving via Collective KV Cache Sharing
- **链接**: https://arxiv.org/abs/2604.03143
- **作者**: Zhuohang Bian et al.
- **分类**: cs.DC
- **摘要**: 多智能体LLM应用在同步轮次中组织执行，中心调度器收集所有智能体的输出并重新分发组合上下文。这种All-Gather通信模式会产生大量的KV Cache冗余，因为每个智能体的提示词都包含相同的共享输出块，但现有的重用方法无法有效利用这一点。本文提出TokenDance系统，通过利用All-Gather模式进行集体KV Cache共享来扩展并发智能体数量。TokenDance的KV Collector在单个集体步骤中执行完整轮次的KV Cache重用，因此重用共享块的成本与智能体数量无关。其Diff-Aware Storage将兄弟缓存编码为针对单个主副本的块稀疏差异，在代表性工作负载上实现11-17倍压缩。
- **关键成果**:
  - 支持比vLLM前缀缓存多2.7倍的并发智能体
  - 每智能体KV Cache存储减少最多17.5倍
  - 相比每请求位置无关缓存实现最多1.9倍prefill加速
- **关键词**: Multi-Agent, KV Cache, Collective Communication, vLLM

### 2. Analyzing Reverse Address Translation Overheads in Multi-GPU Scale-Up Pods
- **链接**: https://arxiv.org/abs/2604.02473
- **作者**: Amel Fatima et al.
- **分类**: cs.DC, cs.AR
- **摘要**: 分布式ML工作负载严重依赖多GPU、多节点系统间的集体通信。新兴的scale-up结构如NVLink和UALink支持跨节点直接内存访问，但引入了关键的目的地端转换步骤：将网络物理地址(NPA)转换为系统物理地址(SPA)，本文称之为反向地址转换(Reverse Address Translation)。尽管其重要性，反向地址转换的性能影响仍未被充分理解。本文首次对大规模GPU集群中的反向地址转换进行系统研究。使用扩展的ASTRA-sim框架和Omnet++作为网络后端，本文建模了Link MMU和Link TLB，并评估了它们对All-to-All集体通信在不同输入大小和GPU数量下的影响。
- **关键发现**:
  - 冷TLB未命中在小规模延迟敏感集体通信中占主导，导致性能下降最多1.4倍
  - 提出融合预转换内核和软件引导TLB预取两种优化方法
- **关键词**: Multi-GPU, NVLink, Address Translation, TLB, Collective Communication

### 3. Adaptive Modality Sparsity-Aware Offloading with Edge-Cloud Collaboration for Efficient Multimodal LLM Inference
- **链接**: https://arxiv.org/abs/2604.02945
- **作者**: Zheming Yang et al.
- **分类**: cs.DC
- **摘要**: 多模态大语言模型(MLLMs)支持强大的跨模态推理能力，但带来巨大的计算和延迟负担，在资源受限的边缘设备上部署面临关键挑战。本文提出MSAO，一种具有边缘-云协同的自适应模态稀疏性感知卸载框架，用于高效MLLM推理。首先，轻量级异构模态感知模块通过细粒度稀疏性执行时空模态联合分析，计算模态激活稀疏性(MAS)指标。其次，自适应推测性边缘-云协同卸载机制基于MAS分数和实时系统状态在边缘和云之间动态调度工作负载。
- **关键成果**:
  - 端到端延迟降低30%
  - 资源开销减少30%-65%
  - 吞吐量提升1.5-2.3倍
- **关键词**: Multimodal LLM, Edge-Cloud, Offloading, Sparsity, Inference

---

## 📋 其他相关论文

### 4. Boosting Memory-Disaggregated Key-Value Stores with Pessimistic Synchronization
- **链接**: https://arxiv.org/abs/2604.03007
- **作者**: Xuchuan Luo et al.
- **分类**: cs.DC, cs.DB
- **会议**: VLDB'26 (已接受)
- **摘要**: 内存分解键值存储由于I/O冗余问题面临严重的性能瓶颈。当同步并发数据访问时产生大量冗余I/O，使有限的网络成为性能瓶颈。本文提出CIDER，一种计算端I/O优化框架，采用全局写合并技术减少跨节点冗余I/O，并设计竞争感知同步方案改善低竞争场景下的性能。
- **关键成果**: 相比最先进内存分解KV存储，YCSB基准下吞吐量提升最多6.6倍
- **关键词**: Memory-Disaggregation, KV Store, Synchronization, CXL

### 5. Accelerating Nonlinear Time-History Analysis via Heterogeneous Memory Management
- **链接**: https://arxiv.org/abs/2604.02755
- **作者**: Kohei Fujita et al.
- **分类**: cs.DC
- **会议**: IHPCES/ICCS 2026 (已接受)
- **摘要**: 采用高保真物理模型的非线性时程演化问题在多个科学领域至关重要。然而，这些问题面临关键的双重瓶颈：时间步进的巨大计算成本和维护大量状态变量的内存需求。本文提出基于异构内存管理的新框架，利用CPU-GPU互连带宽的最新进展，主动利用主机CPU内存的大容量同时最大化GPU吞吐量。
- **关键词**: Heterogeneous Memory, GPU, CPU-GPU Interconnect, Scientific Computing

---

## 🏷️ 主题标签云

- **LLM Inference**: Multi-Agent, KV Cache, Edge-Cloud, Offloading
- **GPU Systems**: NVLink, Address Translation, TLB, Scale-Up
- **Memory**: Memory-Disaggregation, CXL, Heterogeneous Memory
- **Distributed**: Collective Communication, All-to-All, Federated Learning

---

## 📈 趋势观察

1. **多智能体LLM服务**成为新热点，KV Cache共享和集体通信优化是关键挑战
2. **GPU内存墙问题**推动异构内存管理和地址转换优化研究
3. **边缘-云协同推理**持续受到关注，稀疏性感知调度是主要优化方向
4. **Scale-Up结构**（NVLink/UALink）的底层机制研究开始深入

---

*报告生成时间: 2026-04-07 09:10 AM (Asia/Shanghai)*
