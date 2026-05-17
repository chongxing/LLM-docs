# ArXiv推理基础设施论文日报 - 2026-05-17

> **Report Period**: 2026-05-10 ~ 2026-05-17  
> **Total Papers Found**: 8 inference infrastructure papers  
> **Categories**: Framework level, Kernel/Operator optimization, AI Compiler, Interconnect/Communication, Scheduling/Resource management, Model serving systems

---

## 🔥 重点推荐 (Top Highlights)

### 1. KVServe: Service-Aware KV Cache Compression for Communication-Efficient Disaggregated LLM Serving
- **Authors**: Zedong Liu, Xinyang Ma, Dejun Luo, Hairui Zhao, Bing Lu, et al.
- **Published**: 2026-05-13 | **Categories**: cs.DC, cs.AI, cs.NI
- **Link**: https://arxiv.org/pdf/2605.13734v1
- **Key Insights**: 
  - 首个面向服务的自适应KV通信压缩框架，针对PD分离和KV状态分离场景
  - 统一模块化策略空间 + Bayesian Profiling Engine，离线搜索开销降低50倍
  - Service-Aware Online Controller结合分析延迟模型与轻量级bandit算法
  - 在vLLM中集成验证：PD分离场景JCT加速最高9.13倍，KV分离场景TTFT降低最高32.8倍
  - **Why it matters**: 解决了disaggregated serving中KV成为网络/存储边界显式负载的核心瓶颈

### 2. Ada-MK: Adaptive MegaKernel Optimization via Automated DAG-based Search for LLM Inference
- **Authors**: Wenxin Dong, Mingqing Hu, Guanghui Yu, Qiang Fu, Peng Xu, et al.
- **Published**: 2026-05-12 | **Categories**: cs.CL
- **Link**: https://arxiv.org/pdf/2605.11581v1
- **Key Insights**:
  - 首个工业级MegaKernel商业部署（在线广告系统），decode阶段kernel launch开销占14.6%
  - 三维共享内存约束模型 + K-dimension splitting，峰值共享内存降低50%
  - MLIR-based细粒度DAG离线搜索，彻底消除运行时分支
  - 异构混合推理引擎：TensorRT-LLM插件，高吞吐Prefill + 低延迟Decode
  - NVIDIA L20上：比vanilla TensorRT-LLM提升23.6%，比vLLM提升50.2%
  - **Why it matters**: 证明了MegaKernel在商业化推理系统中的可行性和显著收益

### 3. Attention Once Is All You Need: Efficient Streaming Inference with Stateful Transformers
- **Authors**: Victor Norgren
- **Published**: 2026-05-13 | **Categories**: cs.LG
- **Link**: https://arxiv.org/pdf/2605.13784v1
- **Key Insights**:
  - 提出数据驱动的stateful session计算模型：持久化KV cache增量更新，查询延迟O(|q|)与上下文大小无关
  - Flash Queries机制：在数据到达间隙利用空闲GPU周期预评估注册问题
  - 多租户continuous-batching调度器 + cell-budget准入控制 + prefix-aware grouped prefill
  - 在流式市场数据基准上：比vLLM/SGLang/TensorRT-LLM/llama.cpp最高快5.9倍
  - **Why it matters**: 从根本上重新思考了流式工作负载的推理架构，stateful vs stateless的范式转变

### 4. PreFT: Prefill-only finetuning for efficient inference
- **Authors**: Andrew Lanpouthakoun, Aryaman Arora, Zhengxuan Wu, Dhruv Pai, Ben Keigwin, et al.
- **Published**: 2026-05-14 | **Categories**: cs.LG, cs.AI, cs.CL, eess.SY
- **Link**: https://arxiv.org/pdf/2605.14217v1
- **Key Insights**:
  - 核心发现：prefill和decode在multi-adapter serving中存在吞吐量不匹配，decode阶段吞吐量极低
  - PreFT：仅在prefill阶段应用adapter，之后丢弃，显著提升吞吐量且性能影响极小
  - 在vLLM上高效实现LoRA和ReFT的prefill-only版本
  - Llama 3.1 70B上服务512个adapters：吞吐量是传统PEFT的1.9倍
  - RL任务上PreFT与标准PEFT接近持平
  - **Why it matters**: 为个性化推理服务提供了更优的精度-吞吐量权衡

### 5. An Interpretable Latency Model for Speculative Decoding in LLM Serving
- **Authors**: Linghao Kong, Megan Flynn, Michael Peng, Nir Shavit, Mark Kurtz, et al.
- **Published**: 2026-05-14 | **Categories**: cs.LG, cs.PF
- **Link**: https://arxiv.org/pdf/2605.15051v1
- **Key Insights**:
  - 首个针对生产环境LLM serving中speculative decoding的可解释延迟模型
  - 基于Little's Law从请求率推断有效batch size，将需求分解为负载无关/相关组件
  - 在vLLM上大规模验证：覆盖不同verifier/drafter尺寸、prefill/decode长度、请求率、draft长度、接受概率
  - 解释了为什么SD加速效果随服务器负载增加而减弱
  - 框架可扩展至MoE模型，稀疏专家激活改变了不同负载下的有效服务成本
  - **Why it matters**: 为生产系统中配置SD提供了结构化理解框架

---

## 📚 完整论文列表

### Framework Level (框架层)

#### PreFT: Prefill-only finetuning for efficient inference
- **Authors**: Andrew Lanpouthakoun, Aryaman Arora, Zhengxuan Wu, Dhruv Pai, Ben Keigwin, et al.
- **Date**: 2026-05-14 | **Categories**: cs.LG, cs.AI, cs.CL, eess.SY
- **Link**: https://arxiv.org/pdf/2605.14217v1
- **Abstract**: Large language models can now be personalised efficiently at scale using parameter efficient finetuning methods (PEFTs), but serving user-specific PEFTs harms throughput, even with specialised kernels and memory management techniques. This is because, theoretically and empirically, a mismatch exists between prefill (processing a large number of tokens at once) and decode (generating a single token autoregressively): the latter has far lower throughput when serving multiple adapters. Rather than optimising performance relative to parameter count, for efficient multi-adapter serving, we instead ought to optimise performance relative to serving throughput. We therefore propose PreFT (Prefill-only Finetuning), wherein we only apply the adapter to prefill tokens and discard it afterwards. PreFT significantly increases throughput with minimal effect on performance. We develop and release an efficient implementation of two prefill-only PEFTs, LoRA and ReFT, on the vLLM inference engine. We first show that serving multi-user PreFTs is more efficient than traditional PEFTs ($1.9\times$ the throughput when serving $512$ adapters on Llama 3.1 70B). Then, we compare the performance of prefill-only vs. all-token adapters on a variety of supervised finetuning and reinforcement learning tasks with LMs at varying scales. On SFT, we observe that the evaluation loss of PreFTs is higher than PEFTs, but can be compensated by increasing rank with nearly no reduction in throughput. On RL, we consistently find that PreFTs approach parity with standard PEFTs. Together, this work validates prefill-only adaptation of LLMs as a more favourable accuracy-throughput tradeoff than existing PEFTs for personalised serving.
- **Key Insights**: 
  - 核心创新：prefill-only adapter应用，解决multi-adapter serving中decode阶段吞吐量瓶颈
  - 在vLLM引擎上开源实现LoRA/ReFT的prefill-only版本
  - Llama 3.1 70B服务512 adapters：1.9倍吞吐量提升
  - SFT中可通过增加rank补偿精度损失，且吞吐量几乎不受影响
  - **中文概述**: 针对多用户个性化推理服务中的吞吐量瓶颈，提出仅在prefill阶段应用adapter的PreFT方法，在vLLM上实现并在Llama 3.1 70B上验证了1.9倍吞吐量提升，为个性化推理服务提供了更优的精度-吞吐量权衡。

#### BEAM: Binary Expert Activation Masking for Dynamic Routing in MoE
- **Authors**: Juntong Wu, Jialiang Cheng, Qishen Yin, Yue Dai, Yuliang Yan, et al.
- **Date**: 2026-05-14 | **Categories**: cs.AI
- **Link**: https://arxiv.org/pdf/2605.14438v1
- **Abstract**: Mixture-of-Experts (MoE) architectures enhance the efficiency of large language models by activating only a subset of experts per token. However, standard MoE employs a fixed Top-K routing strategy, leading to redundant computation and suboptimal inference latency. Existing acceleration methods either require costly retraining with architectural changes or suffer from severe performance drop at high sparsity due to train-inference mismatch. To address these limitations, we propose BEAM (Binary Expert Activation Masking), a novel method that learns token-adaptive expert selection via trainable binary masks. With a straight-through estimator and an auxiliary regularization loss, BEAM induces dynamic expert sparsity through end-to-end training while maintaining model capability. We further implement an efficient custom CUDA kernel for BEAM, ensuring seamless integration with the vLLM inference framework. Experiments show that BEAM retains over 98% of the original model's performance while reducing MoE layer FLOPs by up to 85%, achieving up to 2.5$\times$ faster decoding and 1.4$\times$ higher throughput, demonstrating its effectiveness as a practical, plug-and-play solution for efficient MoE inference.
- **Key Insights**:
  - 问题：标准MoE固定Top-K路由导致冗余计算和推理延迟次优
  - 方案：可训练二进制mask实现token自适应专家选择，通过straight-through estimator + 辅助正则化损失
  - 实现：自定义CUDA kernel，无缝集成vLLM
  - 效果：保留98%以上性能，MoE层FLOPs降低85%，decode加速2.5倍，吞吐量提升1.4倍
  - **中文概述**: 通过可训练二进制mask实现MoE动态专家路由，无需架构修改即可端到端训练，配合自定义CUDA kernel集成vLLM，在保持98%性能的同时将MoE层FLOPs降低85%，decode加速2.5倍。

---

### Kernel/Operator Optimization (算子/内核优化)

#### BFLA: Block-Filtered Long-Context Attention Mechanism
- **Authors**: Chong Wu, Zhenan Feng, Renjie Xu, Houwang Zhang, Jiawang Cao, et al.
- **Date**: 2026-05-12 | **Categories**: eess.SP
- **Link**: https://arxiv.org/pdf/2605.12193v1
- **Abstract**: This paper proposes Block-Filtered Long-Context Attention (BFLA), a training-free sparse prefill attention mechanism for long-context inference. BFLA adopts a two-stage design. In Stage 1, query and key sequences are compressed into coarse blocks, and lightweight block-level softmax mass estimation is performed to construct an input-dependent block importance mask. In Stage 2, the coarse mask is expanded to the Triton attention-tile grid. Several tile-level rescue strategies are applied to reduce information loss, where a fused sparse prefill kernel skips unimportant KV tiles while preserving exact token-level attention inside every retained tile. BFLA requires no retraining, calibration, preprocessing, or model modification and can be plugged into existing vLLM-style paged-attention workloads. Experiments on Gemma 4, Llama 3.1, Qwen 3.5, and Qwen 3.6 series models show that BFLA substantially accelerates long-context prefilling with minimal accuracy degradation compared to dense Triton FlashAttention.
- **Key Insights**:
  - 无需训练、校准或模型修改的稀疏prefill attention机制
  - 两阶段设计：粗粒度block重要性mask → Triton attention-tile grid细粒度展开
  - 融合稀疏prefill kernel：跳过不重要KV tile，保留tile内精确token级attention
  - 即插即用：兼容vLLM-style paged-attention
  - 在Gemma 4、Llama 3.1、Qwen 3.5/3.6上验证：显著加速长上下文prefill，精度损失极小
  - **中文概述**: 提出无需训练即可即插即用的长上下文稀疏prefill注意力机制BFLA，通过粗-细两阶段block过滤策略和融合稀疏kernel，在多种主流模型上显著加速长上下文prefill且精度损失极小，兼容vLLM paged-attention架构。

---

### AI Compiler (AI编译器)

#### Ada-MK: Adaptive MegaKernel Optimization via Automated DAG-based Search for LLM Inference
- **Authors**: Wenxin Dong, Mingqing Hu, Guanghui Yu, Qiang Fu, Peng Xu, et al.
- **Date**: 2026-05-12 | **Categories**: cs.CL
- **Link**: https://arxiv.org/pdf/2605.11581v1
- **Abstract**: When large language models (LLMs) serve real-time inference in commercial online advertising systems, end-to-end latency must be strictly bounded to the millisecond range. Yet every token generated during the decode phase triggers thousands of kernel launches, and kernel launch overhead alone can account for 14.6% of end-to-end inference time. MegaKernel eliminates launch overhead and inter-operator HBM round-trips by fusing multiple operators into a single persistent kernel. However, existing MegaKernel implementations face a fundamental tension between portability and efficiency on resource-constrained GPUs such as NVIDIA Ada: hand-tuned solutions are tightly coupled to specific architectures and lack portability, while auto-compiled approaches introduce runtime dynamic scheduling whose branch penalties are unacceptable in latency-critical settings. We observe that under a fixed deployment configuration, the optimal execution path of a MegaKernel is uniquely determined, and runtime dynamic decision-making can be entirely hoisted to compile time. Building on this insight, we propose Ada-MK: (1) a three-dimensional shared-memory constraint model combined with K-dimension splitting that reduces peak shared memory usage by 50%; (2) MLIR-based fine-grained DAG offline search that solidifies the optimal execution path, completely eliminating runtime branching; and (3) a heterogeneous hybrid inference engine that embeds MegaKernel as a plugin into TensorRT-LLM, combining high-throughput Prefill with low-latency Decode. On an NVIDIA L20, Ada-MK improves single-batch throughput by up to 23.6% over vanilla TensorRT-LLM and 50.2% over vLLM, achieving positive gains across all tested scenarios--the first industrial deployment of MegaKernel in a commercial online advertising system.
- **Key Insights**:
  - 工业界首个MegaKernel商业化部署（在线广告实时推理，延迟要求毫秒级）
  - decode阶段kernel launch开销占端到端时间的14.6%
  - 核心洞察：固定部署配置下MegaKernel最优执行路径唯一确定，可将运行时动态决策完全提升为编译时决策
  - 三维共享内存约束模型 + K-dim splitting → 峰值共享内存降低50%
  - MLIR-based DAG离线搜索 → 彻底消除运行时分支
  - TensorRT-LLM插件化异构混合引擎（高吞吐Prefill + 低延迟Decode）
  - NVIDIA L20：比TensorRT-LLM提升23.6%，比vLLM提升50.2%
  - **中文概述**: 首个工业级MegaKernel商业部署方案Ada-MK，通过将运行时决策提升为MLIR-based编译时DAG搜索，在NVIDIA L20上实现比TensorRT-LLM高23.6%、比vLLM高50.2%的单batch吞吐量，解决了kernel launch开销和HBM往返瓶颈。

---

### Interconnect/Communication (互联/通信)

#### KVServe: Service-Aware KV Cache Compression for Communication-Efficient Disaggregated LLM Serving
- **Authors**: Zedong Liu, Xinyang Ma, Dejun Luo, Hairui Zhao, Bing Lu, et al.
- **Date**: 2026-05-13 | **Categories**: cs.DC, cs.AI, cs.NI
- **Link**: https://arxiv.org/pdf/2605.13734v1
- **Abstract**: LLMs are widely adopted in production, pushing inference systems to their limits. Disaggregated LLM serving (e.g., PD separation and KV state disaggregation) improves scalability and cost efficiency, but it also turns KV into an explicit payload crossing network and storage boundaries, making KV a dominant end-to-end bottleneck. Existing KV compression are typically static runtime configurations, despite production service context varies over time in workload mix, bandwidth, and SLO/quality budgets. As a result, a fixed choice can be suboptimal or even increase latency. We present KVServe, the first service-aware and adaptive KV communication compression framework for disaggregated LLM serving: KVServe (1) unifies KV compression into a modular strategy space with new components and cross-method recomposition; (2) introduces Bayesian Profiling Engine that efficiently searches this space and distills a 3D Pareto candidate set, reducing $50\times$ offline search overhead; and (3) deploys a Service-Aware Online Controller that combines an analytical latency model with a lightweight bandit to select profiles under constraints and correct offline-to-online mismatch. Integrated into vLLM and evaluated across datasets, models, GPUs and networks, KVServe achieves up to $9.13\times$ JCT speedup in PD-separated serving and up to $32.8\times$ TTFT reduction in KV-disaggregated serving.
- **Key Insights**:
  - 首个面向生产环境的服务感知自适应KV通信压缩框架
  - 模块化策略空间：统一多种压缩方法并支持跨方法重组
  - Bayesian Profiling Engine：高效搜索策略空间，提炼3D Pareto候选集，离线搜索开销降低50倍
  - Service-Aware Online Controller：分析延迟模型 + 轻量级bandit，在约束下选择配置并修正离线-在线偏差
  - vLLM集成验证：跨数据集、模型、GPU和网络
  - PD分离场景：JCT加速最高9.13倍；KV分离场景：TTFT降低最高32.8倍
  - **中文概述**: 针对PD分离和KV分离场景中KV成为网络传输瓶颈的问题，提出首个服务感知自适应KV压缩框架KVServe，通过模块化策略空间、Bayesian离线搜索和在线bandit控制器，在vLLM中实现PD分离场景9.13倍JCT加速和KV分离场景32.8倍TTFT降低。

---

### Scheduling/Resource Management (调度/资源管理)

#### Attention Once Is All You Need: Efficient Streaming Inference with Stateful Transformers
- **Authors**: Victor Norgren
- **Date**: 2026-05-13 | **Categories**: cs.LG
- **Link**: https://arxiv.org/pdf/2605.13784v1
- **Abstract**: Conventional transformer inference engines are request-driven, paying an O(n) prefill cost on every query. In streaming workloads, where data arrives continuously and queries probe an ever-growing context, this cost is prohibitive. We introduce a data-driven computational model centred on stateful sessions: a persistent KV cache advanced incrementally as new data arrives, so prefill is moved off the critical path and query latency becomes O(|q|), independent of accumulated context size. Building on this, Flash Queries reclaim idle GPU cycles between data arrivals to pre-evaluate registered questions and return cached answers before the user asks, a pattern that is structurally impossible in stateless engines because they discard intermediate state between requests. A multi-tenant continuous-batching scheduler with cell-budget admission and prefix-aware grouped prefill lets dozens of stateful sessions coexist on a single GPU while preserving full quadratic self-attention. On streaming market-data benchmarks the reference implementation achieves up to 5.9x speedup over conventional inference engines (vLLM, SGLang, TensorRT-LLM, llama.cpp), holding query latency恒定 as accumulated context grows.
- **Key Insights**:
  - 范式转变：从request-driven到data-driven stateful session计算模型
  - 持久化KV cache增量更新：prefill移出关键路径，查询延迟O(|q|)与上下文大小无关
  - Flash Queries：在数据到达间隙预评估注册问题，返回缓存答案（stateless引擎不可能实现）
  - 多租户continuous-batching调度器 + cell-budget准入控制 + prefix-aware grouped prefill
  - 单GPU上支持数十个stateful session共存，保持完整二次自注意力
  - 比vLLM/SGLang/TensorRT-LLM/llama.cpp最高快5.9倍
  - **中文概述**: 提出stateful transformer推理新范式，通过持久化KV cache增量更新将prefill移出关键路径，结合Flash Queries预评估和多租户continuous-batching调度，在流式工作负载上比主流引擎(vLLM/SGLang/TensorRT-LLM)最高快5.9倍。

---

### Model Serving Systems (模型服务系统)

#### An Interpretable Latency Model for Speculative Decoding in LLM Serving
- **Authors**: Linghao Kong, Megan Flynn, Michael Peng, Nir Shavit, Mark Kurtz, et al.
- **Date**: 2026-05-14 | **Categories**: cs.LG, cs.PF
- **Link**: https://arxiv.org/pdf/2605.15051v1
- **Abstract**: Speculative decoding (SD) accelerates large language model (LLM) inference by using a smaller draft model to propose multiple tokens that are verified by a larger target model in parallel. While prior work demonstrates substantial speedups in isolated or fixed-batch settings, the behavior of SD in production serving systems remains poorly understood: request load varies over time, and effective batch size emerges from the serving system rather than being directly controlled or observed. In this work, we develop a simple and interpretable latency model for SD in LLM serving. We infer effective batch size from request rate using Little's Law and decompose per-request demand into load-independent and load-dependent components for prefill, drafting, and verification. We validate our model using extensive measurements from vLLM across verifier and drafter model sizes, prefill and decode lengths, request rates, draft lengths, and acceptance probabilities. The model accurately describes observed latency, explains why speedups often diminish as server load increases, and characterizes how draft length, acceptance rate, and verifier-drafter size shape latency across serving conditions, with implications for configuring SD in deployed systems. We further show how the framework extends to mixture of experts models, where sparse expert activation changes the effective service costs across load regimes.
- **Key Insights**:
  - 基于Little's Law从请求率推断有效batch size，将需求分解为负载无关/相关组件
  - 在vLLM上系统验证：覆盖不同verifier/drafter尺寸、prefill/decode长度、请求率、draft长度、接受概率
  - 准确描述观察到的延迟，解释了为什么SD加速效果随服务器负载增加而减弱
  - 刻画了draft长度、接受率、verifier-drafter尺寸如何影响不同服务条件下的延迟
  - 框架可扩展至MoE模型：稀疏专家激活改变不同负载下的有效服务成本
  - **中文概述**: 为生产环境LLM serving中的speculative decoding建立首个可解释延迟模型，基于Little's Law和vLLM大规模验证，解释了SD加速效果随负载减弱的现象，并为部署配置提供结构化指导。

#### Continuous Discovery of Vulnerabilities in LLM Serving Systems with Fuzzing
- **Authors**: Yunze Zhao, Yibo Zhao, Yuchen Zhang, Zaoxing Liu, Michelle L. Mazurek
- **Date**: 2026-05-11 | **Categories**: cs.CR, cs.AI, cs.LG, cs.SE
- **Link**: https://arxiv.org/pdf/2605.11202v1
- **Abstract**: LLM inference and serving systems have become security-critical infrastructure; however, many of their most concerning failures arise from the serving layer rather than from model behavior alone. Modern inference engines combine KV cache, batching, prefix sharing, speculative decoding, adapters, and multi-tenant scheduling, creating shared-state behavior that only emerges under realistic并发 workloads and is missed by standard model, safety, and API tests. We present GRIEF, a greybox fuzzer for LLM inference engines that treats timed multi-request traces as first-class inputs, uses lightweight oracles to detect crashes, hangs, performance pathologies, and silent output corruption, and applies controlled replay with log-probability checks to confirm reproducible serving-layer failures. Across early campaigns on vLLM and SGLang, GRIEF discovers 15 vulnerabilities, 10 confirmed by engine developers, including 2 CVEs, spanning KV-cache isolation failures, cross-request performance interference, and crash or liveness bugs. These results show that concurrency, caching, and state reuse can induce silent cross-request contamination, noisy-neighbor denial of service, and delayed crashes without malformed inputs or explicit server errors, making concurrent serving behavior a first-class security and reliability boundary for LLM infrastructure.
- **Key Insights**:
  - GRIEF：首个针对LLM推理引擎的灰盒fuzzer，将定时多请求trace作为一级输入
  - 轻量级oracle检测：崩溃、挂起、性能病态、静默输出损坏
  - 受控重放 + log-probability检查确认可复现的serving层故障
  - 在vLLM和SGLang上发现15个漏洞，10个获引擎开发者确认，含2个CVE
  - 漏洞类型：KV-cache隔离失败、跨请求性能干扰、崩溃/活性bug
  - 并发、缓存和状态复用可导致静默跨请求污染、noisy-neighbor DoS、延迟崩溃
  - **中文概述**: 提出首个LLM推理引擎灰盒fuzzer GRIEF，在vLLM和SGLang中发现15个漏洞（含2个CVE），揭示了并发serving中KV-cache隔离失败、跨请求污染等安全边界问题，将并发serving行为提升为LLM基础设施的一等安全与可靠性边界。

---

## 📊 统计摘要

| 类别 | 论文数量 | 占比 |
|------|---------|------|
| Framework level | 2 | 25% |
| Kernel/Operator optimization | 1 | 12.5% |
| AI Compiler | 1 | 12.5% |
| Interconnect/Communication | 1 | 12.5% |
| Scheduling/Resource management | 1 | 12.5% |
| Model serving systems | 2 | 25% |
| **Total** | **8** | **100%** |

### 按日期分布
- 2026-05-14: 4 papers
- 2026-05-13: 2 papers
- 2026-05-12: 2 papers
- 2026-05-11: 1 paper

### 涉及的主流推理引擎
- **vLLM**: 6 papers (PreFT, BEAM, BFLA, KVServe, Speculative Decoding Latency Model, GRIEF)
- **TensorRT-LLM**: 2 papers (Attention Once, Ada-MK)
- **SGLang**: 2 papers (Attention Once, GRIEF)

---

## 🎯 趋势观察

1. **Disaggregated Serving持续升温**: KVServe聚焦PD分离和KV分离场景，说明分离式推理架构正从学术概念走向生产实践，KV传输优化成为核心瓶颈。

2. **Kernel-level优化回归**: Ada-MK（MegaKernel）和BFLA（稀疏attention kernel）都深入到kernel层面进行优化，且均提供了与vLLM/TensorRT-LLM的集成方案，说明上层框架的优化空间趋于饱和，底层kernel优化成为新的性能增长点。

3. **Stateful Inference新范式**: Attention Once提出stateful transformer概念，从根本上重构流式工作负载的推理架构，可能开启stateful vs stateless的新讨论。

4. **Production-aware研究增多**: 从KVServe的"service-aware"到Speculative Decoding Latency Model的"production serving systems"，研究越来越关注真实生产环境的动态负载、SLO约束和实际部署挑战。

5. **Multi-tenant安全受重视**: GRIEF首次系统性地暴露并发serving中的安全边界问题，随着LLM serving基础设施化，安全和可靠性将与性能同等重要。

---

> **Disclaimer**: 本报告基于ArXiv API自动检索生成，论文筛选依赖关键词匹配和人工判断，可能存在遗漏或误判。建议读者阅读原文获取完整信息。

> **Generated by**: ArXiv Inference Infrastructure Daily Report Bot  
> **Date**: 2026-05-17
