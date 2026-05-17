# ArXiv推理基础设施论文日报 - 2026-05-17

> 📅 日期: 2026-05-17 (采集区间: 2026-05-10 ~ 2026-05-17)
> 🏷️ 关键词: inference serving, GPU kernel optimization, distributed inference, LLM serving, NCCL, attention optimization, speculative decoding, quantization inference
> 📂 分类: cs.DC, cs.OS, cs.AR, cs.SE, cs.LG, cs.CL

---

## 📊 概览

本期共发现 **8 篇**与推理基础设施高度相关的最新论文，涵盖：
- **LLM Serving 系统优化** (4篇)
- **KV Cache 优化与压缩** (2篇)
- **分布式推理与调度** (2篇)
- **OS/GPU 底层优化** (2篇)

---

## ⭐ 重点论文 (Top Highlights)

### 1. MinT: Managed Infrastructure for Training and Serving Millions of LLMs
- **作者**: Mind Lab Team (Song Cao, Vic Cao, Andrew Chen, Kaijie Chen, Cleon Cheng, Steven Chiang, ... 等50+作者)
- **发表日期**: 2026-05-13
- **分类**: cs.LG, cs.AI, cs.DC
- **ArXiv链接**: [https://arxiv.org/abs/2605.13779v1](https://arxiv.org/abs/2605.13779v1)

**摘要总结 (Abstract Summary)**
MinT (MindLab Toolkit) 是一个面向 LoRA 后训练和在线服务的托管基础设施系统。它针对“少量昂贵基础模型 + 海量策略变体”的场景设计，核心创新包括三个维度：Scale Up（将 LoRA RL 扩展到 1T 参数的稠密和 MoE 架构）、Scale Down（仅导出 LoRA adapter，比全量 checkpoint 缩小 18.3x~2.85x）、Scale Out（支持百万级策略目录地址化和千级 adapter 集群活跃波次）。该系统已在 MLA 和 DSA 注意力路径上验证。

**关键洞察 (Key Insights)**
- 🎯 首次实现了百万级 LoRA 策略的托管式训练与 serving，adapter-only handoff 大幅降低状态切换开销
- 🔧 在 4B dense 模型上 adapter 切换加速 18.3x，在 30B MoE 上加速 2.85x
- 🚀 支持 10^6 级可寻址目录和千级 adapter 集群并发，packed MoE LoRA tensor 使引擎热加载提升 8.5-8.7x

---

### 2. KVServe: Service-Aware KV Cache Compression for Communication-Efficient Disaggregated LLM Serving
- **作者**: Zedong Liu, Xinyang Ma, Dejun Luo, Hairui Zhao, Bing Lu, Wenjing Huang, Yida Gu, Xingchen Liu, Zheng Wei, Jinyang Liu, Dingwen Tao, Guangming Tan
- **发表日期**: 2026-05-13
- **分类**: cs.DC, cs.AI, cs.NI
- **会议**: SIGCOMM 2026 (已接收)
- **ArXiv链接**: [https://arxiv.org/abs/2605.13734v1](https://arxiv.org/abs/2605.13734v1)

**摘要总结 (Abstract Summary)**
KVServe 是首个面向解耦式 LLM 服务（PD 分离 / KV 状态解耦）的自适应 KV 通信压缩框架。现有 KV 压缩方法通常是静态运行时配置，而生产环境的 workload mix、带宽和 SLO/质量预算随时间变化，固定策略往往次优甚至增加延迟。KVServe 提出了模块化的 KV 压缩策略空间、基于贝叶斯分析的离线搜索引擎（将搜索开销降低 50x），以及服务感知的在线控制器（结合解析延迟模型与轻量级 bandit 算法）。

**关键洞察 (Key Insights)**
- 🎯 PD 分离 serving 中 JCT 加速最高达 **9.13x**
- 🚀 KV 解耦 serving 中 TTFT 降低最高达 **32.8x**
- 🔧 首个将 KV 压缩策略统一为可重组合模块化空间的工作，支持离线到在线的策略自适应迁移

---

### 3. MARLIN: Multi-Agent Game-Theoretic Reinforcement Learning for Sustainable LLM Inference in Cloud Datacenters
- **作者**: H. Moore, S. Qi, D. Milojicic
- **发表日期**: 2026-05-13
- **分类**: cs.DC, cs.LG
- **ArXiv链接**: [https://arxiv.org/abs/2605.13496v1](https://arxiv.org/abs/2605.13496v1)

**摘要总结 (Abstract Summary)**
LLM 推理消耗了模型全生命周期约 90% 的能源。MARLIN 提出了一种多智能体博弈论强化学习框架，联合优化 TTFT、碳排放、水消耗和能源成本四个目标。在云端数据中心环境中，该框架相比现有 SOTA 推理管理框架显著降低了环境足迹。

**关键洞察 (Key Insights)**
- 🎯 TTFT 降低 **≥18%**，碳排放降低 **≥33%**，水消耗降低 **≥43%**，能源成本降低 **≥11%**
- 🌱 首个将可持续性指标（碳/水/能源）纳入 LLM 推理调度优化目标的系统级工作
- 🎮 使用博弈论多智能体 RL 框架解决多目标 co-optimization 问题

---

### 4. KV-RM: Regularizing KV-Cache Movement for Static-Graph LLM Serving
- **作者**: Zhiqing Zhong, Zhijing Ye, Jian Zhang, Weijian Zheng, Bolun Sun, Xiaodong Yu
- **发表日期**: 2026-05-10
- **分类**: cs.AR, cs.AI, cs.DC, cs.OS
- **ArXiv链接**: [https://arxiv.org/abs/2605.09735v1](https://arxiv.org/abs/2605.09735v1)

**摘要总结 (Abstract Summary)**
静态图 LLM decoder 提供可预测的 launch 和固定 tensor shape，但在线 decoding 面临高度不规则的 KV cache 行为：请求长度不同、EOS 异步到达、逻辑历史随时间碎片化。KV-RM 提出了一种在静态图 decoder 下规则化 KV cache 移动的 runtime 设计，通过 block pager 解耦逻辑 KV 历史与物理存储，使用 merge-staged transport path 将非连续 KV mapping 合并为少量大传输组，再交由固定 shape 的 attention kernel 消费。

**关键洞察 (Key Insights)**
- 🎯 在 2-GPU NVIDIA A100 节点上改善了混合长度解码吞吐量和尾部延迟
- 🔧 消除了生产 trace 回放下的严重突发延迟尖峰 (burst-time latency spikes)
- 🧠 核心思想：KV cache 移动而非 kernel shape 可作为恢复静态图 serving 运行时灵活性的有效边界

---

## 📄 其他相关论文

### 5. EMA: Efficient Model Adaptation for Learning-based Systems
- **作者**: Daiyang Yu, Xinyu Chen, Yihan Zhang, Yan Liang, Yaqi Qiao, Fan Lai
- **发表日期**: 2026-05-13
- **分类**: cs.LG, cs.DC, cs.NI
- **会议**: SIGCOMM 2026
- **ArXiv链接**: [https://arxiv.org/abs/2605.13942v1](https://arxiv.org/abs/2605.13942v1)

**摘要总结**: 首个支持 learning-based 系统以最小运营开销适应动态环境的模型自适应系统。通过状态转换器 (state transformers) 实现 warm-start 适应，并通过高效用数据优先标注降低标注成本。在 8 个代表性系统上评估， adaptation cost (GPU 训练时间) 降低 14.9-42.4%，系统性能提升 6.9-31.3%。

**关键洞察**
- 🔧 状态转换器对齐新旧环境输入状态，实现模型 warm-start 适应
- 🏷️ 优先标注高效用数据，平衡训练与标注成本 tradeoff
- 📈 仅使用 host-level 指标即可超越直接应用目标的 baseline

---

### 6. APWA: A Distributed Architecture for Parallelizable Agentic Workflows
- **作者**: Evan Rose, Tushin Mallick, Matthew D. Laws, Cristina Nita-Rotaru, Alina Oprea
- **发表日期**: 2026-05-14
- **分类**: cs.AI, cs.DC, cs.MA
- **ArXiv链接**: [https://arxiv.org/abs/2605.15132v1](https://arxiv.org/abs/2605.15132v1)

**摘要总结**: 面向可并行化 agentic workload 的分布式多智能体系统架构。将工作流分解为无干扰的子问题，使用独立资源并行处理而无需跨通信。支持异构数据和并行处理模式，在更大规模任务上动态扩展。

**关键洞察**
- 🎯 解决了多智能体系统随任务规模增长的推理、协调和计算扩展瓶颈
- 🔧 非干扰子问题分解使 prior systems 完全失效的场景下仍能扩展
- 🌐 支持广泛领域的异构任务

---

### 7. SemaTune: Semantic-Aware Online OS Tuning with Large Language Models
- **作者**: Georgios Liargkovas, Mihir Nitin Joshi, Hubertus Franke, Kostis Kaffes
- **发表日期**: 2026-05-14
- **分类**: cs.OS, cs.AI, cs.PF
- **ArXiv链接**: [https://arxiv.org/abs/2605.15026v1](https://arxiv.org/abs/2605.15026v1)

**摘要总结**: 面向在线 OS 调优的语义感知框架，利用 LLM 理解 knob schema、telemetry 和配置语义。通过快慢双循环机制（快速循环提低延迟更新，慢速循环修订搜索策略）和类型验证约束，将模型成本、延迟和权限限制在安全范围内。在 13 个实时 workload 上调优最多 41 个 Linux 参数。

**关键洞察**
- 🎯 稳定期性能较默认设置提升 **72.5%**，较最强非 LLM baseline 提升 **153.3%**
- 💰 30 窗口 session 模型调用成本仅约 **$0.20**
- 🛡️ 避免无结构探索导致的严重降级区域

---

### 8. DisAgg: Distributed Aggregators for Efficient Secure Aggregation in Federated Learning
- **作者**: Haaris Mehmood, Giorgos Tatsis, Dimitrios Alexopoulos, Karthikeyan Saravanan, Jie Xu, Anastasios Drosou, Mete Ozay
- **发表日期**: 2026-05-13
- **分类**: cs.CR, cs.DC, cs.LG
- **会议**: MLSys 2026 (已接收)
- **ArXiv链接**: [https://arxiv.org/abs/2605.13708v1](https://arxiv.org/abs/2605.13708v1)

**摘要总结**: 联邦学习安全聚合协议。使用小型客户端委员会（Aggregators）执行聚合本身，客户端将更新向量 secret-share 给 Aggregators，后者本地计算部分和并返回聚合后的 share 供服务端重建。消除了本地 masking 和昂贵同态加密，同时保护隐私。

**关键洞察**
- 🎯 处理 100k 客户端、100k 维更新向量时，较 OPA 加速 **4.6x**
- 🔐 消除本地 masking 和昂贵同态加密，同时保留服务端隐私保护
- 📡 适合大规模 5G 客户端联邦学习场景

---

## 🏅 本期 Top 3 核心论文

| 排名 | 论文 | 类别 | 核心贡献 |
|------|------|------|----------|
| 🥇 | **KVServe** | KV Cache / 解耦 Serving | 首个服务感知自适应 KV 压缩框架，SIGCOMM 2026，PD 分离 JCT 加速 9.13x |
| 🥈 | **MinT** | LLM Serving / 规模化 | 百万级 LoRA 策略托管基础设施，1T 参数 scale，adapter handoff 18.3x 加速 |
| 🥉 | **MARLIN** | 绿色推理 / 调度 | 多目标博弈论 RL 框架，推理碳排放降低 33%，水消耗降低 43% |

---

## 📈 趋势观察

1. **KV Cache 成为核心战场**: 本期有 2 篇直接聚焦 KV cache 优化 (KVServe, KV-RM)，另有 Tutti (SSD-backed KV) 也触及此方向。PD 分离和 KV 解耦催生了对通信压缩、存储分层的新需求。

2. **规模与可持续性并重**: MinT 追求百万级策略的极致规模，MARLIN 则将可持续性（碳/水/能源）引入推理优化目标，体现行业对成本和环境双重压力的响应。

3. **静态图与动态性的张力**: KV-RM 尝试在静态图 decoder 的约束下恢复运行时灵活性，反映了对低 overhead、可预测 kernel launch 与在线不规则 workload 之间平衡的持续探索。

4. **LLM 开始反哺系统优化**: SemaTune 用 LLM 做 OS 参数调优，EMA 用学习适应系统变化，体现 LLM 从被服务的对象转变为优化系统本身的工具。

---

> 📝 采集说明: 由于 ArXiv API 速率限制，部分关键词搜索未能完成。本报告基于已获取的 cs.DC 和 cs.OS 类别最新论文，结合关键词相关性筛选。如需补充特定方向（如 speculative decoding、NCCL、attention optimization、quantization inference），建议在 API 恢复后补充检索。

> 🔗 数据采集时间: 2026-05-17 14:00 GMT+8
