# ArXiv 推理基础设施论文监控日报

**日期**: 2026-05-14
**搜索范围**: cs.DC / cs.OS / cs.AR / cs.SE
**关键词**: inference serving, GPU kernel, distributed inference, LLM serving, MoE, KV cache

---

## 📊 今日概览

- **新增论文**: 9 篇（2026-05-05 至 2026-05-13）
- **重点推荐**: 5 篇
- **方向覆盖**: MegaKernel 优化、MoE 并行、KV Cache 量化、PD 分离、PIM 加速

---

## 🔥 重点推荐论文

### 1. Ada-MK: Adaptive MegaKernel Optimization via Automated DAG-based Search for LLM Inference

- **作者**: Wenxin Dong, Mingqing Hu, Guanghui Yu, et al.
- **提交日期**: 2026-05-12
- **链接**: https://arxiv.org/search/?query=Ada-MK+Adaptive+MegaKernel
- **核心内容**: 基于 DAG 的自动搜索实现自适应 MegaKernel 优化，用于 LLM 推理
- **关联方向**: GPU Kernel 优化、算子融合
- **推荐指数**: ⭐⭐⭐⭐⭐

---

### 2. Sieve: Dynamic Expert-Aware PIM Acceleration for Evolving Mixture-of-Experts Models

- **作者**: Jungwoo Kim, Rubens Lacouture, Genghan Zhang, et al. (Stanford)
- **提交日期**: 2026-05-11
- **链接**: https://arxiv.org/search/?query=Sieve+Dynamic+Expert-Aware+PIM
- **核心内容**: 针对快速演化的 MoE 模型，提出动态 Expert-Aware 的 Processing-in-Memory (PIM) 加速方案。现有 PIM 系统依赖静态规则，难以适应 MoE 推理执行特征的变化。
- **关联方向**: MoE 推理、PIM 加速、内存计算
- **推荐指数**: ⭐⭐⭐⭐⭐

---

### 3. Surviving Partial Rank Failures in Wide Expert-Parallel MoE Inference

- **作者**: Xun Sun, Shaoyuan Chen, Pingchuan Ma, et al.
- **提交日期**: 2026-05-11
- **链接**: https://arxiv.org/search/?query=Surviving+Partial+Rank+Failures+MoE
- **核心内容**: 解决宽 Expert 并行 (EP) MoE 推理中的部分 rank 故障恢复问题。EP 需要聚合多个设备的内存容量和带宽，部分 rank 故障会严重影响服务可用性。
- **关联方向**: MoE 分布式推理、容错、Expert Parallelism
- **推荐指数**: ⭐⭐⭐⭐⭐

---

### 4. RateQuant: Optimal Mixed-Precision KV Cache Quantization via Rate-Distortion Theory

- **作者**: Fei Zuo, Zikang Zhou, Hao Cong, et al.
- **提交日期**: 2026-04-21 (May 2026 announced)
- **链接**: https://arxiv.org/search/?query=RateQuant+Mixed-Precision+KV+Cache
- **核心内容**: 基于率失真理论的最优混合精度 KV Cache 量化。现有量化器对所有注意力头分配相同位宽，忽略了头之间的重要性差异。
- **关联方向**: KV Cache 压缩、量化、内存优化
- **推荐指数**: ⭐⭐⭐⭐⭐

---

### 5. Tutti: Making SSD-Backed KV Cache Practical for Long-Context LLM Serving

- **作者**: Shi Qiu, Yifan Hu, Xintao Wang, et al.
- **提交日期**: 2026-05-05
- **链接**: https://arxiv.org/search/?query=Tutti+SSD+Backed+KV+Cache
- **核心内容**: 使 SSD  backed KV Cache 在长上下文 LLM 服务中实用化，解决 HBM 容量限制问题
- **关联方向**: KV Cache offloading、长上下文、存储层次优化
- **推荐指数**: ⭐⭐⭐⭐⭐

---

## 📋 其他值得关注论文

### 6. Enabling Performant and Flexible Model-Internal Observability for LLM Inference

- **作者**: Nengneng Yu, Sixian Xiong, Yibo Zhao, et al.
- **提交日期**: 2026-05-11
- **核心内容**: DMI-Lib — 高速深度模型检查器，将内部可观测性作为一级系统原语，与推理引擎解耦
- **关联方向**: 推理可观测性、模型调试、系统监控
- **推荐指数**: ⭐⭐⭐⭐

---

### 7. Dooly: Configuration-Agnostic, Redundancy-Aware Profiling for LLM Inference Simulation

- **作者**: Joon Ha Kim, Geon-Woo Kim, Anoop Rachakonda, Daehyeok Kim
- **提交日期**: 2026-05-08
- **核心内容**: 配置无关、冗余感知的 LLM 推理模拟性能分析工具
- **关联方向**: 推理性能分析、配置搜索、模拟器
- **推荐指数**: ⭐⭐⭐⭐

---

### 8. One Pool, Two Caches: Adaptive HBM Partitioning for Accelerating Generative Recommender Serving

- **作者**: (未完整显示)
- **提交日期**: 2026-05-05
- **核心内容**: 生成式推荐器 (GR) 推理中 embedding hot cache 和 KV cache 竞争 GPU HBM，提出自适应 HBM 分区方案
- **关联方向**: 推荐系统推理、HBM 管理、缓存优化
- **推荐指数**: ⭐⭐⭐⭐

---

### 9. EdgeServing: Deadline-Aware Multi-DNN Serving at the Edge

- **作者**: Jiahe Cao, Xiaomeng Li, Qiang Liu, et al.
- **提交日期**: 2026-05-06
- **核心内容**: 边缘计算场景下的 deadline-aware 多 DNN 模型服务调度
- **关联方向**: 边缘推理、调度、多模型服务
- **推荐指数**: ⭐⭐⭐

---

## 🔍 趋势洞察

### 1. MoE 推理成为热点
- **Sieve** (PIM 加速)、**Surviving Partial Rank Failures** (容错)、**Ada-MK** (MegaKernel) 均围绕 MoE
- MoE 模型规模持续扩大，对内存带宽、并行策略、容错能力提出更高要求

### 2. KV Cache 优化多样化
- **RateQuant**: 混合精度量化（基于率失真理论）
- **Tutti**: SSD-backed KV Cache（ offload 到存储）
- **One Pool, Two Caches**: HBM 内自适应分区
- 从压缩、分层存储到动态分区，KV Cache 优化进入精细化阶段

### 3. 推理可观测性受重视
- **DMI-Lib** 将模型内部状态可观测性作为一级原语
- 随着推理系统复杂度增加，可观测性成为生产部署关键

### 4. 硬件协同设计
- **Sieve** 探索 PIM (Processing-in-Memory) 与 MoE 的协同
- **Ada-MK** 通过 DAG 搜索实现自适应 MegaKernel
- 软件-硬件协同优化成为性能突破的关键

---

## 📚 推荐阅读优先级

| 优先级 | 论文 | 方向 | 原因 |
|--------|------|------|------|
| P0 | Ada-MK | MegaKernel/算子优化 | 自动化 DAG 搜索，实用性强 |
| P0 | Surviving Partial Rank Failures | MoE 分布式/容错 | 生产环境关键问题 |
| P0 | RateQuant | KV Cache 量化 | 混合精度理论最优 |
| P1 | Sieve | MoE/PIM 加速 | 硬件协同设计新方向 |
| P1 | Tutti | KV Cache/SSD | 长上下文实用方案 |
| P1 | DMI-Lib | 可观测性 | 生产运维必备 |
| P2 | Dooly | 性能分析 | 配置搜索工具 |
| P2 | One Pool, Two Caches | 推荐系统/HBM | 特定场景优化 |
| P2 | EdgeServing | 边缘推理 | 场景特定 |

---

*报告生成时间: 2026-05-14 09:05 AM (Asia/Shanghai)*
*数据来源: arXiv.org*
