# ArXiv 推理基础设施论文监控日报

**日期**: 2026-05-15
**报告生成时间**: 09:00 AM (Asia/Shanghai)
**监控分类**: cs.DC, cs.OS, cs.AR, cs.SE, cs.LG, cs.AI

---

## 📊 今日概览

- **新增论文总数**: 50+ (cs.DC: 37, cs.AR: 59, cs.OS: 3)
- **重点推荐论文**: 4 篇
- **监控关键词**: inference serving, distributed training, LLM serving, KV cache, MoE, disaggregated serving

---

## 🔥 重点推荐论文

### 1. KVServe: Service-Aware KV Cache Compression for Disaggregated LLM Serving ⭐ SIGCOMM 2026

- **论文链接**: [arXiv:2605.13734](https://arxiv.org/abs/2605.13734)
- **作者**: Zedong Liu, Xinyang Ma, Dejun Luo, Hairui Zhao, Bing Lu, Wenjing Huang, Yida Gu, Xingchen Liu, Zheng Wei, Jinyang Liu, Dingwen Tao, Guangming Tan
- **分类**: cs.DC, cs.AI, cs.NI
- **状态**: 已被 SIGCOMM 2026 接收

**核心贡献**:
- 首个面向分离式LLM推理（PD分离、KV状态分离）的服务感知自适应KV通信压缩框架
- 统一KV压缩策略空间，支持模块化组件和跨方法重组
- 贝叶斯分析引擎高效搜索策略空间，提炼3D Pareto候选集，离线搜索开销降低50倍
- 服务感知在线控制器结合分析延迟模型与轻量级bandit算法，在约束下选择配置并修正离线到在线的偏差

**实验结果**:
- vLLM集成，跨数据集、模型、GPU和网络评估
- PD分离推理中 **JCT加速最高9.13倍**
- KV分离推理中 **TTFT降低最高32.8倍**

**技术方向**: 分离式推理、KV缓存压缩、通信优化、PD分离

---

### 2. MinT: Managed Infrastructure for Training and Serving Millions of LLMs

- **论文链接**: [arXiv:2605.13779](https://arxiv.org/abs/2605.13779)
- **作者**: Mind Lab (Song Cao, Vic Cao, Andrew Chen 等60+作者)
- **分类**: cs.LG, cs.AI, cs.DC
- **状态**: Technical report, 27 pages

**核心贡献**:
- MindLab Toolkit (MinT)：面向LoRA后训练和在线服务的托管基础设施系统
- 支持百万级LoRA策略目录管理，在共享1T级基础模型上进行训练和服务
- **Scale Up**: 将LoRA RL扩展到前沿 dense 和 MoE 架构（含MLA和DSA注意力路径），验证超过1T总参数
- **Scale Down**: 仅移动导出的LoRA适配器（rank-1设置下不到基础模型1%），4B dense模型步长减少18.3倍，30B MoE减少2.85倍
- **Scale Out**: 张量并行部署支持10^6级可寻址目录，千级适配器活跃波次，冷加载视为调度服务工作，打包MoE LoRA张量提升实时引擎加载8.5-8.7倍

**技术方向**: LoRA服务、适配器管理、大规模推理、张量并行

---

### 3. DisagMoE: Computation-Communication Overlapped MoE Training via Disaggregated AF-Pipe Parallelism

- **论文链接**: [arXiv:2605.11005](https://arxiv.org/abs/2605.11005)
- **作者**: Zhichen Zeng, Chi-Chih Chang, Jiayi Wang, Zezhou Wang, Ningxin Zheng, Zheng Zhong, Cesar A. Stuardo, Dongyang Wang, Mohamed S. Abdelfattah, Haibin Lin, Banghua Zhu, Ang Li, Ziheng Jiang
- **分类**: cs.LG, cs.AI, cs.DC

**核心贡献**:
- 分离式MoE训练系统，联合优化模型放置和调度以实现最大效率
- 将Attention和FFN层分离到不重叠的GPU组
- 引入多阶段流水线与单向多对多通信
- 采用计算-通信roofline模型平衡GPU和网络带宽分配
- 基于Megatron-LM实现

**实验结果**:
- 多MoE模型上训练效率提升，16节点8xH800集群上最高 **1.8倍加速**

**技术方向**: MoE训练、专家并行、计算通信重叠、流水线并行、Attention-FFN分离

---

### 4. MARLIN: Multi-Agent RL for Sustainable LLM Inference in Cloud Datacenters

- **论文链接**: [arXiv:2605.13496](https://arxiv.org/abs/2605.13496)
- **作者**: Sudeep Pasricha 等
- **分类**: cs.DC, cs.LG

**核心贡献**:
- 多智能体博弈论强化学习框架，联合优化LLM推理的TTFT、碳排放、水耗和能耗
- 针对云数据中心环境设计

**实验结果**:
- 相比SOTA推理管理框架：
  - TTFT 降低 **≥18%**
  - 碳排放降低 **≥33%**
  - 水耗降低 **≥43%**
  - 能耗降低 **≥11%**

**技术方向**: 绿色AI、推理调度、可持续性优化、多目标优化

---

## 📋 其他值得关注论文

### 5. Rescaled Asynchronous SGD: Optimal Distributed Optimization under Heterogeneity
- **论文链接**: [arXiv:2605.13434](https://arxiv.org/abs/2605.13434)
- **分类**: cs.LG, cs.DC, math.OC
- **摘要**: 针对数据和系统异构的分布式学习场景，提出Rescaled ASGD方法。通过按计算时间比例缩放工作者特定的步长，保持标准ASGD机制的同时恢复正确的全局目标。在固定计算模型下证明收敛到正确全局目标的平稳点。

### 6. Parallel-in-Time Training of RNNs for Dynamical Systems Reconstruction
- **论文链接**: [arXiv:2605.12683](https://arxiv.org/abs/2605.12683)
- **分类**: cs.LG, cs.AI, cs.DC
- **摘要**: 利用并行关联扫描实现沿序列长度并行化的RNN训练算法，达到O(log T)时间复杂度。提出GTF-DEER方法，支持超长序列(T>10^4)训练，显著提升动力学系统重建精度。

---

## 🔍 技术趋势洞察

### 1. 分离式推理 (Disaggregated Serving) 成为热点
- KVServe (SIGCOMM 2026) 和 MinT 都聚焦于PD分离和KV状态分离架构
- KV缓存压缩和通信优化成为核心瓶颈
- 产业界和学术界同时推进这一方向

### 2. MoE 训练效率持续优化
- DisagMoE 通过 Attention-FFN 分离实现计算通信重叠
- 专家并行中的all-to-all通信瓶颈仍是关键挑战
- 16节点8xH800上1.8x加速显示显著潜力

### 3. LoRA 服务规模化
- MinT 展示百万级LoRA策略目录的管理能力
- 适配器-only传输（<1%基础模型大小）大幅降低部署开销
- 张量并行 + 打包MoE LoRA张量实现高效加载

### 4. 绿色AI与可持续性
- MARLIN 将碳排放、水耗纳入推理优化目标
- LLM推理占生命周期能耗高达90%，超越训练成本
- 多目标联合优化成为新范式

---

> 报告自动生成于 2026-05-15 09:00 AM (Asia/Shanghai)
> 数据来源: arxiv.org (cs.DC, cs.AR, cs.OS, cs.SE, cs.LG, cs.AI)
