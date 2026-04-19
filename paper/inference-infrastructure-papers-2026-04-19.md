## 📚 ArXiv 推理基础设施论文监控 - 2026-04-19

### 🔍 搜索关键词
- inference serving
- GPU kernel optimization
- distributed inference
- LLM serving
- attention optimization
- speculative decoding
- KV cache
- tensor parallelism
- agentic workflows

### 📊 今日概览
- **新增论文数量**: 约 300+ 篇（cs.DC: 24, cs.OS: 11, cs.AR: 46, cs.SE: 57, cs.LG: 162）
- **重点推荐数量**: 5 篇核心推理基础设施论文
- **相关论文数量**: 10+ 篇硬件加速与编译优化论文

---

### ⭐ 重点推荐论文

#### 1. Serving Agentic Workflows Using Aggregate LLM Pipelines
- **标题**: Serving Agentic Workflows Using Aggregate LLM Pipelines
- **作者**: Marcel Wagenländer et al.
- **arXiv链接**: https://arxiv.org/abs/2604.15186
- **分类**: cs.DC (Distributed, Parallel, and Cluster Computing)
- **摘要**: Agentic workflows通过编排多个大语言模型(LLM)和工具来执行复杂任务。本文提出Scepsy系统，针对多LLM代理工作流的GPU集群调度问题。核心洞察是：虽然agentic工作流的端到端延迟难以预测，但各LLM执行时间的占比相对稳定。Scepsy基于这些聚合占比决定GPU分配，通过分析不同并行度下的LLM性能统计，构建轻量级延迟/吞吐量预测器(Aggregate LLM Pipeline)，探索分数GPU分配、张量并行度和副本数量的搜索空间，实现目标吞吐量下的最小延迟。在真实代理工作流上的评估显示，与独立优化或用户指定分配的系统相比，Scepsy实现了高达2.4倍吞吐量和27倍低延迟。
- **关联项目**: vLLM, SGLang - 多LLM调度与GPU分配策略

#### 2. Prefill-as-a-Service: KVCache of Next-Generation Models Could Go Cross-Datacenter
- **标题**: Prefill-as-a-Service: KVCache of Next-Generation Models Could Go Cross-Datacenter
- **作者**: (未明确列出)
- **arXiv链接**: https://arxiv.org/abs/2604.15039
- **分类**: cs.DC
- **摘要**: Prefill-decode (PD)分离已成为大规模LLM服务的标准架构，但KVCache传输限制了部署边界。传统密集注意力模型的预填充产生巨大KVCache流量，使预填充和解码在单一高带宽网络域内紧密耦合。近期混合注意力架构显著减小KVCache大小，使跨集群KVCache传输成为可能。本文提出Prefill-as-a-Service (PrfaaS)，一种跨数据中心服务架构，选择性地将长上下文预填充卸载到独立的计算密集预填充集群，并通过普通以太网将KVCache传输到本地PD集群进行解码。结合模型端KV效率与系统端选择性卸载、带宽感知调度和缓存感知请求放置，该设计消除了异构加速器共享低延迟RDMA结构的需求。在使用1T参数混合模型的案例研究中，PrfaaS增强的异构部署比同质PD基线实现54%更高吞吐量，比朴素异构基线高32%。
- **关联项目**: vLLM, SGLang, TensorRT-LLM - PD分离与KV Cache管理

#### 3. Optimizing Collective Communications for Distributed Diffusion Transformer Inference Under Ulysses Sequence Parallelism
- **标题**: Optimizing Collective Communications for Distributed Diffusion Transformer Inference Under Ulysses Sequence Parallelism
- **作者**: Bin Ma et al.
- **arXiv链接**: https://arxiv.org/abs/2604.14561
- **分类**: cs.DC
- **摘要**: 扩散Transformer(DiT)在科学计算中日益普及，但模型规模和分辨率增长使分布式多GPU推理成为必需。Ulysses序列并行扩展DiT推理，但引入频繁all-to-all集合通信主导延迟。由于紧密的数据依赖、大消息量和不对称互联带宽，与计算重叠困难。本文提出CoCoDiff，基于两个观察：(1)V仅需线性投影而Q/K需要额外归一化和RoPE，创造机会将V的通信与Q/K计算重叠；(2)相邻去噪步骤产生相似张量，产生时间冗余。CoCoDiff引入三种机制：Tile-Aware Parallel All-to-all (TAPA)将集合通信分解为拓扑对齐阶段；V-First调度将V的通信隐藏在Q/K计算后；V-Major选择性通信在慢互联上传输仅活跃投影。在Aurora超级计算机上使用4个DiT模型跨1-8节点(最多96 Intel GPU tiles)的评估中，CoCoDiff实现平均3.6倍加速，峰值达8.4倍。
- **关联项目**: PyTorch Distributed, DeepSpeed - 分布式推理与序列并行

#### 4. Serving Chain-structured Jobs with Large Memory Footprints with Application to Large Foundation Model Serving
- **标题**: Serving Chain-structured Jobs with Large Memory Footprints with Application to Large Foundation Model Serving
- **作者**: Tingyang Sun et al.
- **arXiv链接**: https://arxiv.org/abs/2604.14993
- **分类**: cs.DC
- **摘要**: 大型基础模型作为AI服务核心的趋势日益增长，但即使训练完成后，服务这些模型仍面临挑战，特别是GPU内存方面。本文提取"服务链组成"新问题，通过块放置和缓存分配为具有大内存足迹的链结构作业服务，建模通过流水线并行服务大基础模型的基本问题。在证明最优解的NP-hardness后，开发具有保证性能的可扩展算法。应用于分布式大语言模型服务系统的结果显示，与最先进的解决方案相比，响应时间显著降低。
- **关联项目**: vLLM, TensorRT-LLM, DeepSpeed-Inference - 流水线并行与内存管理

#### 5. Leveraging Intrinsic Elasticity of MoE for Hybrid-Bonding-Enabled Self-Speculative Decoding in On-Premises Serving
- **标题**: Leveraging Intrinsic Elasticity of MoE for Hybrid-Bonding-Enabled Self-Speculative Decoding in On-Premises Serving
- **作者**: Yuseon Choi et al.
- **arXiv链接**: https://arxiv.org/abs/2604.14626
- **分类**: cs.LG, cs.AR, cs.DC
- **摘要**: 混合专家(MoE)模型已成为大规模语言模型的主导架构，但本地部署服务在低算术强度下仍是内存密集型。推测解码(SD)用空闲计算换取更少目标调用，但验证必须为被拒绝的token加载专家，严重限制MoE在低batch size下的收益。本文提出ELMoE-3D，基于混合键合(HB)的硬件-软件协同设计框架，统一缓存加速和推测解码。识别MoE的两个内在弹性轴——专家和位宽——并联合扩展构建弹性自推测解码(Elastic-SD)，作为专家缓存和强对齐自草稿模型，由高HB带宽加速。LSB增强的位切片架构利用位切片表示的内在冗余原生支持位嵌套执行。在3D堆叠硬件上，ELMoE-3D在batch size 1-16上比xPU上的朴素MoE服务实现平均6.6倍加速和4.4倍能效提升，比最佳先前加速器基线实现2.2倍加速和1.4倍能效提升。
- **关联项目**: vLLM speculative decoding, SGLang - MoE推理与推测解码

---

### 📋 其他相关论文

#### 硬件架构与加速器

1. **SCENIC: Stream Computation-Enhanced SmartNIC**
   - **链接**: https://arxiv.org/abs/2604.15128
   - **分类**: cs.AR, cs.DC
   - **简介**: 开源数据中心SmartNIC，实现200G网络数据路径，支持TCP/IP和RDMA协议栈卸载，以及直接访问GPU和SSD的流计算单元。性能匹配商业平台，展示卸载集合通信和基于哈希的数据分区等用例。

2. **Tensor Memory Engine: On-the-fly Data Reorganization for Ideal Locality**
   - **链接**: https://arxiv.org/abs/2604.13319
   - **分类**: cs.AR
   - **简介**: 提出硬件/软件协同设计的张量内存引擎，通过即时数据重组为CPU提供理想缓存局部性，支持商用SoC/FPGA平台，将数据重组与计算解耦。

3. **GEM3D CIM: General Purpose Matrix Computation Using 3D Integrated SRAM eDRAM Hybrid Compute In Memory**
   - **链接**: https://arxiv.org/abs/2604.13969
   - **分类**: cs.AR
   - **简介**: 3D集成内存计算架构，支持通用矩阵运算(转置、逐元素加/乘)而不仅是点积，在GF 22nm FDSOI中实现，平衡延迟、能效和计算密度。

4. **An ASIC Emulated Oscillator Ising/Potts Machine Solving Combinatorial Optimization Problems**
   - **链接**: https://arxiv.org/abs/2604.14027
   - **分类**: cs.AR
   - **简介**: 数字仿真耦合振荡器动力学的ASIC架构，用于NP-hard组合优化问题，20x20 PE阵列在max-cut和图着色问题上达到97-100%准确率，相比通用平台显著加速并提高能效。

#### 编译优化与自动调优

5. **Enabling Fast and Efficient Cross-Hardware Tensor Program Optimization via Continual Learning**
   - **链接**: https://arxiv.org/abs/2604.12891
   - **分类**: cs.LG, cs.AR
   - **简介**: 提出TCL框架，通过主动学习策略(仅选择10%张量程序)、Mamba-based成本模型和持续知识蒸馏，实现跨硬件平台的快速张量程序优化。相比Tenset-MLP，CPU上调优时间快16.8倍，GPU上快12.48倍。

6. **An Automated Compiler for Comprehensive Dataflow Optimization (CODO)**
   - **链接**: https://arxiv.org/abs/2604.12618
   - **分类**: cs.AR
   - **简介**: FPGA数据流加速器自动编译器，检测并消除粗细粒度数据流违规，进行片上/片外数据移动优化和自动调度。在CNN模型上实现7.3倍平均加速，GPT-2上实现2.07倍加速。

7. **Automatic Tensor-Level Abstraction of Accelerator Semantics (ATLAAS)**
   - **链接**: https://arxiv.org/abs/2604.13523
   - **分类**: cs.AR
   - **简介**: 从RTL提取的加速器语义自动提升到张量ISA规范的端到端MLIR流水线，通过8遍语义提升恢复MAC习语、饱和语义、多维缓冲区和数据布局转换。

#### AI Agent系统基础设施

8. **A Reference-Based Replication Primitive for Constant-Time Instantiation of Stateful AI Agents**
   - **链接**: https://arxiv.org/abs/2604.12129
   - **分类**: cs.AI, cs.AR, cs.DC
   - **简介**: 提出Aethon，基于引用的有状态AI Agent复制原语，实现近常数时间实例化。通过组合视图而非完全物化表示Agent实例，采用分层继承和写时复制语义。

9. **Harness-Managed Virtual Memory for Stateful Tool-Using LLM Agents**
   - **链接**: https://arxiv.org/abs/2604.10352
   - **分类**: cs.AI, cs.OS, cs.SE
   - **简介**: 提出ClawVM，管理有状态工具使用LLM Agent状态的虚拟内存层，将状态管理为带最小保真度不变量的类型化页面，支持多分辨率表示和验证写回。

10. **A Forkable Shared Log for Agents on Data Streams**
    - **链接**: https://arxiv.org/abs/2604.14590
    - **分类**: cs.DC, cs.AI
    - **简介**: 提出AgileLog可分叉共享日志抽象，为Agent场景提供分叉原语，支持创建数据流的轻量级分叉，提供逻辑和性能隔离。

---

### 🎯 技术趋势观察

#### 1. **PD分离架构成为LLM服务主流**
本周多篇论文涉及Prefill-Decode分离架构，特别是"Prefill-as-a-Service"提出跨数据中心的PD分离，表明业界正在突破单集群部署边界。随着混合注意力架构减少KVCache大小，跨数据中心推理成为可能，这对资源弹性和异构部署具有重要意义。

#### 2. **多模态/Agent工作流驱动新调度需求**
"Serving Agentic Workflows"论文反映了AI系统从单一模型向多模型编排转变的趋势。Agent工作流具有分支、扇出、递归等数据依赖执行模式，传统单模型优化不再适用，需要新的Aggregate Pipeline调度策略。

#### 3. **MoE架构的 specialized 优化需求**
MoE模型虽然参数规模巨大，但稀疏激活特性带来独特挑战。ELMoE-3D展示了针对MoE的硬件-软件协同设计，利用专家和位宽两个弹性轴实现推测解码。这预示着针对MoE的专用推理优化将成为热点。

#### 4. **分布式推理中的通信优化**
CoCoDiff针对Diffusion Transformer的序列并行提出通信优化，识别Q/K/V计算的差异创造重叠机会。随着模型规模增长，集合通信优化(特别是all-to-all)将成为分布式推理的关键。

#### 5. **编译器与自动调优的持续演进**
TCL、CODO、ATLAAS等编译优化工作表明，AI编译器正从通用优化向硬件特化和跨平台迁移演进。主动学习、成本模型蒸馏等技术显著降低调优成本。

#### 6. **AI Agent基础设施崭露头角**
多篇论文(Aethon, ClawVM, AgileLog, YoloFS)关注AI Agent的系统支持，从Agent实例化、状态管理到文件系统安全，表明Agent基础设施正成为新兴研究领域。

---

*报告生成时间: 2026-04-19*
*数据来源: arXiv cs.DC, cs.OS, cs.AR, cs.SE, cs.LG*
