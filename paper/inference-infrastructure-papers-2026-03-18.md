# ArXiv 推理基础设施论文汇总

**搜索日期**: 2026-03-18  
**搜索范围**: cs.DC, cs.OS, cs.AR, cs.SE (最近50篇)  
**筛选标准**: 偏重框架层面、算子优化、AI编译、互联通讯优化

---

## 📊 概览

本次搜索聚焦以下方向的最新研究：
- 推理服务系统 (Inference Serving Systems)
- GPU 集群资源管理
- 算子/内核优化
- 分布式推理架构
- 通讯优化
- AI 编译器/代码生成

---

## 🔥 重点论文

### 1. LEXI: Lossless Exponent Coding for Efficient Inter-Chiplet Communication in Hybrid LLMs
- **ArXiv ID**: [2603.15589](https://arxiv.org/abs/2603.15589v1)
- **发布时间**: 2026-03-16
- **核心贡献**:
  - 针对 LLM 推理中的数据移动开销问题
  - 基于霍夫曼编码的无损指数压缩方案
  - 利用 BF16 格式中指数部分的低熵特性（<3 bits）
  - 支持压缩权重的即时解压，不牺牲吞吐和精度
- **关键指标**:
  - 片间通信延迟降低 33-45%
  - 端到端推理延迟降低 30-35%
  - 面积和能耗开销仅 0.09% (GF 22nm)
- **适用模型**: Jamba, Zamba, Qwen

---

### 2. DUET: Disaggregated Hybrid Mamba-Transformer LLMs with Prefill and Decode-Specific Packages
- **ArXiv ID**: [2603.15530](https://arxiv.org/abs/2603.15530v1)
- **发布时间**: 2026-03-16
- **核心贡献**:
  - 针对混合 Mamba-Transformer 模型的计算-内存不对称性
  - 分离式加速器架构：Prefill 包（脉动阵列）+ Decode 包（向量单元）
  - Prefill 包使用片外内存，支持大矩阵乘和长序列 SSM
  - Decode 包使用高带宽片内内存，加速 token-by-token 计算
  - 运行时动态配置，支持混合层
- **关键指标**:
  - TTFT 加速 4×
  - 吞吐提升 1.4×
  - TBT 降低 1.5× (vs B200 GPU)
- **测试模型**: Nemotron-H-56B, Zamba2-7B, Llama3-8B

---

### 3. Cuckoo-GPU: Accelerating Cuckoo Filters on Modern GPUs
- **ArXiv ID**: [2603.15486](https://arxiv.org/abs/2603.15486v1)
- **发布时间**: 2026-03-16
- **核心贡献**:
  - 高性能 GPU Cuckoo filter 库
  - 拥抱 Cuckoo 哈希的随机访问模式以饱和全局内存带宽
  - 无锁架构（基于原子 CAS）
  - BFS 驱逐启发式算法，最小化线程发散
- **关键指标** (vs GQF/TCF on GH200):
  - 插入吞吐: 378× / 4.1×
  - 查询吞吐: 6× / 34.7×
  - 删除吞吐: 258× / 107×
  - 比最快 CPU Cuckoo filter 快 350×

---

### 4. LMetric: Simple is Better - Multiplication May Be All You Need for LLM Request Scheduling
- **ArXiv ID**: [2603.15202](https://arxiv.org/abs/2603.15202v1)
- **发布时间**: 2026-03-16
- **核心贡献**:
  - 简化 LLM 请求调度策略
  - 仅需两个指标的乘积作为调度分数（无需超参数调优）:
    - KV$-aware: 新 prefill token 数（如果路由到某实例）
    - 负载均衡: 当前 batch size
  - 乘法在比较时自动取消原始超参数
- **关键指标** (vs vLLM-v1 / 生产调度器):
  - TTFT 降低 92% / 52%
  - TPOT 降低 21% / 20%
- **作者**: Dingyan Zhang, Jinbo Han, Kaixi Zhang, Xingda Wei 等 (阿里巴巴)

---

### 5. Token Coherence: Adapting MESI Cache Protocols to Minimize Synchronization Overhead in Multi-Agent LLM Systems
- **ArXiv ID**: [2603.15183](https://arxiv.org/abs/2603.15183v1)
- **发布时间**: 2026-03-16
- **核心贡献**:
  - 将缓存一致性协议（MESI）映射到多 Agent LLM 系统的 artifact 同步
  - 提出 Artifact Coherence System (ACS)
  - Token Coherence Theorem: 延迟失效可将成本从 O(n×S×|D|) 降至 O((n+W)×|D|)
  - TLA+ 验证协议（~2,400 状态）
- **关键指标** (Token 节省):
  - V=0.05: 95.0% ± 1.3%
  - V=0.10: 92.3% ± 1.4%
  - V=0.25: 88.3% ± 1.5%
  - V=0.50: 84.2% ± 1.3%
- **开源**: https://github.com/hipvlady/agent-coherence

---

### 6. DetShare: Guaranteeing Semantic and Performance Determinism in Flexible GPU Sharing
- **ArXiv ID**: [2603.15042](https://arxiv.org/abs/2603.15042v1)
- **发布时间**: 2026-03-16
- **核心贡献**:
  - GPU 共享系统，确保语义确定性和性能确定性
  - 完全透明（无需代码修改）
  - 引入 GPU coroutines，解耦逻辑执行上下文和物理 GPU 资源
  - 轻量级上下文迁移实现细粒度资源分配
- **关键指标**:
  - 训练吞吐提升 79.2% (vs 时间共享)
  - P99 尾部延迟降低 15.1% (共置场景)
  - 平均推理延迟降低 69.1%
  - TPOT SLO 违规降低 21.2%

---

### 7. SKILLS: Structured Knowledge Injection for LLM-Driven Telecommunications Operations
- **ArXiv ID**: [2603.15372](https://arxiv.org/abs/2603.15372v1)
- **发布时间**: 2026-03-16
- **核心贡献**:
  - 电信领域 LLM Agent 的 benchmark 框架
  - 37 个电信操作场景，覆盖 8 个 TM Forum Open API 域
  - 对比 baseline（无领域指导）vs with-skill（SKILL.md 指导）
- **关键指标** (with-skill 通过率提升):
  - MiniMax M2.5: 81.1% (+13.5pp)
  - Nemotron 120B: 78.4% (+18.9pp)
  - GLM-5 Turbo: 78.4% (+5.4pp)
  - Seed 2.0 Lite: 75.7% (+18.9pp)

---

### 8. Co-Design of Memory-Storage Systems for Workload Awareness with Interpretable Models
- **ArXiv ID**: [2603.15571](https://arxiv.org/abs/2603.15571v1)
- **发布时间**: 2026-03-16
- **核心贡献**:
  - SSD 错误管理子系统的机器学习协同设计
  - 统计可解释 ML 算法分析 NAND 组件与 EM 算法交互
  - 跨数千数据中心 SSD 的通用协同设计框架

---

### 9. Multi-Objective Load Balancing for Heterogeneous Edge-Based Object Detection Systems
- **ArXiv ID**: [2603.15400](https://arxiv.org/abs/2603.15400v1)
- **发布时间**: 2026-03-16
- **核心贡献**:
  - 异构边缘对象检测系统的多目标负载均衡
  - 两阶段决策：精度感知过滤 + 延迟-能耗加权评分
- **关键指标**:
  - 能耗降低 50%
  - 端到端延迟降低 80%
  - 精度仅下降最多 10%

---

### 10. RESQ: A Unified Framework for REliability- and Security Enhancement of Quantized Deep Neural Networks
- **ArXiv ID**: [2603.15413](https://arxiv.org/abs/2603.15413v1)
- **发布时间**: 2026-03-16
- **核心贡献**:
  - 量化 DNN 的故障鲁棒性和对抗鲁棒性统一框架
  - 三阶段：对抗微调 → 故障感知微调 → 量化后调整
- **关键指标**:
  - 攻击鲁棒性提升最多 10.35%
  - 故障鲁棒性提升最多 12.47%

---

## 📈 趋势分析

### 热点方向

1. **异构计算优化**
   - 分离式架构（DUET: Prefill/Decode 分离）
   - 跨层 GPU 异构集群成本优化

2. **数据压缩与通信优化**
   - 指数编码压缩（LEXI）
   - Token 一致性协议（Token Coherence）

3. **GPU 共享与调度**
   - 确定性 GPU 共享（DetShare）
   - 简单有效的调度策略（LMetric）

4. **内存系统优化**
   - Cuckoo-GPU 过滤器加速
   - 内存-存储协同设计

5. **多 Agent 系统基础设施**
   - Artifact 同步协议
   - 结构化知识注入（SKILLS）

---

## 📁 相关资源

- **原始搜索结果**: ArXiv API (cs.DC/OS/AR/SE)
- **PDF 链接**: 各论文均提供直接 PDF 下载链接
- **开源项目**:
  - agent-coherence: https://github.com/hipvlady/agent-coherence
  - Cuckoo-GPU: (paper 中提及将开源)

---

**汇总文件位置**: `LLM-docs/paper/inference-infrastructure-papers-2026-03-18.md`  
**下次更新**: 每日自动更新
