# ArXiv 推理基础设施论文监控日报
**Date**: 2026-03-27  
**Schedule**: 09:00 AM (Asia/Shanghai)  
**监控范围**: cs.DC, cs.OS, cs.AR, cs.SE

## 📊 今日概览
- 新增论文: 4篇（推理基础设施相关）
- 重点关注: 边缘LLM推理、FPGA加速、能耗优化
- 主要来源: cs.DC (分布式计算), cs.AR (硬件架构)

---

## 🔥 重点推荐论文

### 1. LLM Inference at the Edge: Mobile, NPU, and GPU Performance Efficiency Trade-offs
- **ArXiv ID**: [2603.23640](https://arxiv.org/abs/2603.23640) [cs.DC]
- **作者**: Pranay Tummalapalli et al.
- **发布时间**: 2026-03-24
- **核心内容**: 
  - 在移动设备上部署大语言模型的性能基准测试
  - 测试平台: Raspberry Pi 5 + Hailo-10H NPU, Samsung Galaxy S24 Ultra, iPhone 16 Pro, NVIDIA RTX 4050
  - 模型: Qwen 2.5 1.5B (4-bit量化)
  - **关键发现**: 
    - 热管理是移动平台的主要瓶颈（iPhone在2次迭代后吞吐量下降近50%）
    - RTX 4050可持续131.7 tok/s @ 34.1W
    - Hailo-10H可在低于2W功耗下维持6.9 tok/s，能效比接近RTX 4050
- **关键词**: 边缘推理、LLM部署、NPU、能效优化
- **推荐指数**: ⭐⭐⭐⭐⭐ (高度相关)

### 2. Compiler-Directed Fine-Grained Power Orchestration for End-to-End Edge AI Inference
- **ArXiv ID**: [2603.23882](https://arxiv.org/abs/2603.23882) [cs.AR]
- **作者**: Paul Chen et al.
- **发布时间**: 2026-03-25
- **核心内容**:
  - PowerFlow-DNN: 编译器驱动的细粒度功耗调度框架
  - 针对超低功耗DNN加速器的端到端功耗状态编排
  - 在TSMC 40nm技术节点上实现
  - **关键成果**:
    - 相比无功耗调度的激进基线，能耗降低最高37%
    - 搜索空间超过10^160种可能的功耗状态分配
    - 相比精确ILP求解器，能耗仅差0.68%
- **关键词**: 边缘AI、功耗优化、编译器优化、DVFS
- **推荐指数**: ⭐⭐⭐⭐⭐ (硬件架构创新)

### 3. A Token-Aware, Runtime-Adaptive FPGA Inference Engine for Multimodal AI
- **ArXiv ID**: [2603.22867](https://arxiv.org/abs/2603.22867) [cs.AR]
- **作者**: Hyunwoo Oh et al.
- **发布时间**: 2026-03-24
- **会议**: DAC 2026 (Accepted)
- **核心内容**:
  - TRINE: 单比特流FPGA加速器+编译器，支持端到端多模态推理
  - 统一支持ViTs、CNNs、GNNs、Transformer NLP
  - 运行时模式切换: 权重/输出驻留脉动阵列、1xCS SIMD、可路由加法树(RADT)
  - **关键成果**:
    - 相比RTX 4090延迟降低22.57倍，相比Jetson Orin Nano降低6.86倍
    - 功耗仅20-21W
    - Token剪枝带来最高7.8倍ViT流水线加速
    - DALO层卸载技术贡献79%吞吐量提升
- **关键词**: FPGA加速、多模态AI、Token剪枝、推理引擎
- **推荐指数**: ⭐⭐⭐⭐⭐ (架构创新)

### 4. Communication-Aware Diffusion Load Balancing for Persistently Interacting Objects
- **ArXiv ID**: [2603.23329](https://arxiv.org/abs/2603.23329) [cs.DC]
- **作者**: Maya Taylor et al.
- **发布时间**: 2026-03-24
- **会议**: PDSEC 2026 (IEEE IPDPS Workshop)
- **核心内容**:
  - 针对持续通信对象的分布式扩散负载均衡算法
  - 利用应用通信图减少跨节点通信
  - 在Perlmutter (NERSC)上8节点Particle-in-Cell基准测试验证
- **关键词**: 负载均衡、分布式计算、通信优化
- **推荐指数**: ⭐⭐⭐ (分布式系统基础)

---

## 📚 其他相关论文

### Supermassive Blockchain
- **ArXiv ID**: [2603.23927](https://arxiv.org/abs/2603.23927) [cs.DC]
- 存储可扩展的BFT协议，使用纠删码确保状态可用性
- **相关度**: ⭐⭐ (分布式系统，与推理基础设施关联较弱)

### The Evolution of Decentralized Systems
- **ArXiv ID**: [2603.23819](https://arxiv.org/abs/2603.23819) [cs.DC]
- 从Gray的框架到区块链的概念谱系分析
- **相关度**: ⭐ (概念性综述)

---

## 💡 技术趋势洞察

### 1. 边缘LLM推理成为热点
- 多篇论文关注移动端/边缘设备的LLM部署
- 关键挑战: 热管理 > 峰值计算性能
- 量化+专用NPU成为边缘部署标配

### 2. 能耗优化进入细粒度时代
- 从系统级DVFS到层间(inter-layer)功耗调度
- 编译器驱动的功耗编排成为新方向
- 能效比(tok/J)成为关键指标

### 3. FPGA在多模态推理中展现潜力
- 单比特流支持多种模型类型(ViT+CNN+GNN+NLP)
- Token剪枝+DALO卸载技术显著提升效率
- 相比GPU在延迟和能效上具有竞争力

### 4. 分布式训练/推理的通信优化
- 负载均衡算法考虑通信模式
- 减少跨节点通信成为优化重点

---

## 🔗 数据来源
- ArXiv API: https://export.arxiv.org/api/query
- 搜索关键词: inference serving, GPU kernel, distributed inference, LLM serving
- 监控分类: cs.DC (分布式计算), cs.OS (操作系统), cs.AR (硬件架构), cs.SE (软件工程)
- 更新时间: 2026-03-27 09:00 AM (Asia/Shanghai)

---

## 📝 后续行动建议
1. 深入阅读论文1 (2603.23640) 了解边缘LLM部署的最佳实践
2. 关注TRINE (2603.22867) 的后续开源实现
3. 跟踪PowerFlow-DNN (2603.23882) 在实际加速器上的部署效果