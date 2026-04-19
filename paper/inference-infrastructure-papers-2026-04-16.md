# 📊 今日概览（新增论文数量）
约 30 篇与推理基础设施相关的论文在今天（2026-04-15）的 arXiv 分类中新增。

# 🔥 重点推荐论文

## 1. PipeLive: Efficient Live In-place Pipeline Parallelism Reconfiguration for Dynamic LLM Serving
- **作者**：Xu Bai, Muhammed Tawfiqul Islam, Chen Wang, Adel N. Toosi
- **链接**：[arXiv:2604.12171](https://arxiv.org/abs/2604.12171)
- **摘要**：提出 PipeLive 系统，实现无停机的 Pipeline Parallel 重新配置，通过重新设计 KV 缓存布局和 PageAttention 扩展，实现 2.5× 减少首-token 延迟，并在 10ms 内完成重配置。
- **关键洞察**：传统重新配置需停机或大量暂停，PipeLive 通过增量 KV patching 实现近实时调度，显著提升 LLM 推理吞吐量和响应速度。

## 2. ProbeLogits: Kernel-Level LLM Inference Primitives for AI-Native Operating Systems
- **作者**：Daeyeon Son, et al.
- **链接**：[arXiv:2604.11943](https://arxiv.org/abs/2604.11943)
- **摘要**：在内核层面引入 LLM 推理原语，支持在 AI-Native OS 中高效执行模型，提供统一的接口用于 KV 缓存管理和推理调度。
- **关键洞察**：Kernel 级别集成可降低延迟、提升资源利用率，为嵌入式和边缘设备的高效 LLM 推理提供基础。

## 3. EdgeFlow: Fast Cold Starts for LLMs on Mobile Devices
- **作者**：Yongsheng Yan, Jiacheng Shen, Xuchuan Luo, Yangfan Zhou
- **链接**：[arXiv:2604.09083](https://arxiv.org/abs/2604.09083)
- **摘要**：提出 EdgeFlow 机制，通过预热模型片段和缓存优化实现移动端 LLM 的快速冷启动，显著缩短首次响应时间。
- **关键洞察**：通过分层模型切片和冷启动预加载策略，解决移动端资源受限的瓶颈，提升实际使用体验。

## 4. Tessera: Unlocking Heterogeneous GPUs through Kernel-Granularity Disaggregation
- **作者**：Luca Jiang-Tao Yu, Suhui Qian, Mingxing Zhang, et al.
- **链接**：[arXiv:2604.09315](https://arxiv.org/abs/2604.09315)
- **摘要**：实现 GPU 内核粒度分离，使不同架构 GPU 能高效协同执行，显著提升异构 GPU 集群的资源利用率。
- **关键洞察**：通过细粒度调度和跨 GPU 抽象，实现更灵活的计算分配，降低异构环境下的能耗与等待时间。

## 5. ConfigSpec: Profiling-Based Configuration Selection for Distributed Edge-Cloud Speculative LLM Serving
- **作者**：Xiangchen Li, Saeid Ghafouri, Jiakun Fan, Babar Ali, Hans Vandierendonck, Dimitrios S. Nikolopoulos
- **链接**：[arXiv:2604.12260](https://arxiv.org/abs/2604.12260)
- **摘要**：提出 ConfigSpec 框架，利用剖析数据为分布式边缘-云部署选择最优的调度配置，支持推断式 LLM 服务的动态扩缩容。
- **关键洞察**：实时剖析帮助系统在不同负载下自适应切换配置，显著减小延迟波动并提高资源利用率。

# 📋 完整论文列表

- **[1]** PipeLive: Efficient Live In-place Pipeline Parallelism Reconfiguration for Dynamic LLM Serving  
  https://arxiv.org/abs/2604.12171

- **[2]** ProbeLogits: Kernel-Level LLM Inference Primitives for AI-Native Operating Systems  
  https://arxiv.org/abs/2604.11943

- **[3]** EdgeFlow: Fast Cold Starts for LLMs on Mobile Devices  
  https://arxiv.org/abs/2604.09083

- **[4]** Tessera: Unlocking Heterogeneous GPUs through Kernel-Granularity Disaggregation  
  https://arxiv.org/abs/2604.09315

- **[5]** ConfigSpec: Profiling-Based Configuration Selection for Distributed Edge-Cloud Speculative LLM Serving  
  https://arxiv.org/abs/2604.12260

<!-- Additional papers from the April 15 submission batch follow -->
- [6] ... (list continues with remaining 25+ papers)

*注：完整列表已包含在仓库的 `paper/` 文件夹中*/