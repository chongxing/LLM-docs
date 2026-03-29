# ArXiv Inference Infrastructure Papers - 2026-03-29

**Report Date:** 2026-03-29  
**Categories:** cs.DC, cs.OS, cs.AR, cs.SE, cs.LG, cs.AI  
**Keywords:** inference serving, GPU kernel, distributed inference, LLM serving

---

## Summary

This report summarizes **32 recent papers** from ArXiv focused on inference infrastructure for large language models. The papers span topics including:
- **Framework-level optimizations** (vLLM, TensorRT, SGLang-based systems)
- **Operator and kernel optimizations** (FlashInfer, attention kernels)
- **AI compilation** (Mirage Persistent Kernel)
- **Interconnect and communication** (NCCL, RDMA)
- **KV Cache optimization** (compression, tiered storage)
- **Prefill-decode disaggregation** (scheduling, architecture)

---

## Key Papers

### 1. Characterizing CPU-Induced Slowdowns in Multi-GPU LLM Inference
- **ID:** arXiv:2603.22774
- **Categories:** cs.AR, cs.DC
- **Authors:** Euijun Chung, Yuxiao Jia, Aaron Jezghani, Hyesoon Kim
- **Date:** 2026-03-24
- **Summary:** A detailed study revealing that CPU operations are a significant bottleneck in multi-GPU LLM inference systems, often overlooked in performance analysis.

---

### 2. ZipServ: Fast and Memory-Efficient LLM Inference with Hardware-Aware Lossless Compression
- **ID:** arXiv:2603.17435
- **Categories:** cs.DC, cs.AR, cs.LG, cs.PF
- **Authors:** Ruibo Fan, Xiangrui Yu, Xinglin Pan, et al.
- **Date:** 2026-03-18
- **Venue:** ASPLOS'26
- **Summary:** Hardware-aware lossless compression for alleviating memory and bandwidth bottlenecks in bit-exact LLM inference.

---

### 3. AIConfigurator: Lightning-Fast Configuration Optimization for Multi-Framework LLM Serving
- **ID:** arXiv:2601.06288
- **Categories:** cs.LG, cs.AI, cs.DC
- **Authors:** Tianhao Xu, Yiming Liu, Xianglong Lu, et al.
- **Date:** 2026-01-09
- **Summary:** Automated configuration optimization for LLM serving across multiple frameworks, reducing tuning time from hours to minutes.

---

### 4. Mirage Persistent Kernel: A Compiler and Runtime for Mega-Kernelizing Tensor Programs
- **ID:** arXiv:2512.22219
- **Categories:** cs.DC, cs.LG, cs.PL
- **Authors:** Xinhao Cheng, Zhihao Zhang, Yu Zhou, et al.
- **Date:** 2025-12-22
- **Summary:** First compiler and runtime system that automatically transforms multi-kernel tensor programs into persistent mega-kernels, reducing kernel launch overhead.

---

### 5. Serving Heterogeneous LoRA Adapters in Distributed LLM Inference Systems
- **ID:** arXiv:2511.22880
- **Categories:** cs.DC, cs.AI, cs.LG
- **Authors:** Shashwat Jaiswal, Shrikara Arun, Anjaly Parayil, et al.
- **Date:** 2025-11-28
- **Summary:** Addresses efficient serving of multiple LoRA adapters in production distributed inference systems.

---

### 6. FlashInfer: Efficient and Customizable Attention Engine for LLM Inference Serving
- **ID:** arXiv:2501.01005
- **Categories:** cs.DC, cs.AI, cs.LG
- **Authors:** Zihao Ye, Lequn Chen, Ruihang Lai, et al.
- **Date:** 2025-01-01
- **Venue:** MLSys 2025
- **Code:** https://github.com/flashinfer-ai/flashinfer
- **Summary:** Highly optimized attention engine with customizable primitives for diverse LLM inference scenarios.

---

### 7. Strata: Hierarchical Context Caching for Long Context Language Model Serving
- **ID:** arXiv:2508.18572
- **Categories:** cs.DC
- **Authors:** Zhiqiang Xie, Ziyi Xu, Mark Zhao, et al.
- **Date:** 2025-08-25
- **Summary:** Hierarchical context caching system built on SGLang, achieving up to 5x lower Time-To-First-Token (TTFT) for long context models.

---

### 8. MSA: Memory Sparse Attention for Efficient End-to-End Memory Model Scaling to 100M Tokens
- **ID:** arXiv:2603.23516
- **Categories:** cs.CL, cs.AI, cs.IR
- **Authors:** Yu Chen, Runkai Chen, Sheng Yi, et al.
- **Date:** 2026-03-05
- **Summary:** Novel attention mechanism enabling scaling to 100 million tokens through memory-efficient sparse attention patterns.

---

### 9. PackInfer: Compute- and I/O-Efficient Attention for Batched LLM Inference
- **ID:** arXiv:2602.06072
- **Categories:** cs.DC, cs.LG
- **Authors:** Rui Ning, Wei Zhang, Fan Lai
- **Date:** 2026-02-02
- **Summary:** Optimizes attention computation and I/O efficiency for batched LLM inference workloads.

---

### 10. PAM: Processing Across Memory Hierarchy for Efficient KV-centric LLM Serving System
- **ID:** arXiv:2602.11521
- **Categories:** cs.AR, cs.DC
- **Authors:** Lian Liu, Shixin Zhao, Yutian Zhou, et al.
- **Date:** 2026-02-11
- **Summary:** Novel KV-centric serving system that optimizes processing across the memory hierarchy (GPU HBM, CPU DRAM, SSD).

---

### 11. DeltaKV: Residual-Based KV Cache Compression via Long-Range Similarity
- **ID:** arXiv:2602.08005
- **Categories:** cs.CL, cs.AI
- **Authors:** Jitai Hao, Qiang Huang, Yaowei Wang, et al.
- **Date:** 2026-02-08
- **Summary:** KV cache compression technique exploiting long-range token similarity for reduced memory footprint.

---

### 12. Adaptive Multi-Objective Tiered Storage Configuration for KV Cache in LLM Service
- **ID:** arXiv:2603.08739
- **Categories:** cs.AR, cs.DC
- **Authors:** Xianzhe Zheng, Zhengheng Wang, Ruiyan Ma, et al.
- **Date:** 2026-02-25
- **Summary:** Dynamic tiered storage system for KV cache optimizing between GPU, CPU, and disk storage based on workload characteristics.

---

### 13. GPU-Initiated Networking for NCCL
- **ID:** arXiv:2511.15076
- **Categories:** cs.DC, cs.AI, cs.AR, cs.LG
- **Authors:** Khaled Hamidouche, John Bachan, Pak Markthub, et al.
- **Date:** 2025-11-24
- **Summary:** Novel GPU-initiated networking approach for NCCL, enabling low-latency fine-grained GPU-to-GPU communication for MoE architectures.

---

### 14. HetCCL: Accelerating LLM Training with Heterogeneous GPUs
- **ID:** arXiv:2601.22585
- **Categories:** cs.DC, cs.LG
- **Authors:** Heehoon Kim, Jaehwan Lee, Taejeoung Kim, et al.
- **Date:** 2026-01-30
- **Summary:** Communication library optimized for heterogeneous GPU clusters, addressing load imbalance in distributed training.

---

### 15. FlexLink: Boosting your NVLink Bandwidth by 27% without accuracy concern
- **ID:** arXiv:2510.15882
- **Categories:** cs.AR, cs.AI, cs.DC, cs.LG
- **Authors:** Ao Shen, Rui Zhang, Junping Zhao
- **Date:** 2025-10-29
- **Summary:** Technique to increase NVLink bandwidth utilization by 27% through optimized communication patterns.

---

### 16. DualPath: Breaking the Storage Bandwidth Bottleneck in Agentic LLM Inference
- **ID:** arXiv:2602.21548
- **Categories:** cs.DC
- **Authors:** Yongtong Wu, Shaoyuan Chen, Yinmin Zhong, et al.
- **Date:** 2026-02-25
- **Summary:** Addresses KV cache storage I/O bottlenecks in multi-turn agentic LLM inference through dual-path architecture.

---

### 17. Efficient Multi-round LLM Inference over Disaggregated Serving
- **ID:** arXiv:2602.14516
- **Categories:** cs.DC
- **Authors:** Wenhao He, Youhe Jiang, Penghao Zhao, et al.
- **Date:** 2026-02-16
- **Summary:** Optimizations for multi-round conversational inference in disaggregated prefill-decode architectures.

---

### 18. LAPS: A Length-Aware-Prefill LLM Serving System
- **ID:** arXiv:2601.11589
- **Categories:** cs.DC, cs.AI
- **Authors:** Jianshu She, Zonghang Li, Hongchao Du, et al.
- **Date:** 2026-01-27
- **Summary:** Disaggregates requests based on prompt length to reduce TTFT latency in LLM serving.

---

### 19. DOPD: A Dynamic PD-Disaggregation Architecture for Maximizing Goodput in LLM Inference Serving
- **ID:** arXiv:2511.20982
- **Categories:** cs.DC
- **Authors:** Junhan Liao, Minxian Xu, Wanyi Zheng, et al.
- **Date:** 2025-11-25
- **Venue:** IEEE Transactions on Services Computing 2026
- **Summary:** Dynamic prefill-decode disaggregation architecture that adapts to workload changes to maximize goodput.

---

### 20. OmniInfer: System-Wide Acceleration Techniques for Optimizing LLM Serving Throughput and Latency
- **ID:** arXiv:2511.22481
- **Categories:** cs.DC
- **Authors:** Jun Wang, Yunxiang Yao, Wenwei Kuang, et al.
- **Date:** 2025-11-27
- **Summary:** Unified system-level acceleration framework with expert placement optimization, cache compression, and scheduling.

---

### 21. FlowKV: A Disaggregated Inference Framework with Low-Latency KV Cache Transfer and Load-Aware Scheduling
- **ID:** arXiv:2504.03775
- **Categories:** cs.DC
- **Authors:** Weiqing Li, Guochao Jiang, Xiangyong Ding, et al.
- **Date:** 2025-04-03
- **Summary:** Disaggregated inference framework optimizing KV cache transfer latency between prefill and decode nodes.

---

### 22. BanaServe: Unified KV Cache and Dynamic Module Migration for Balancing Disaggregated LLM Serving
- **ID:** arXiv:2510.13223
- **Categories:** cs.DC
- **Authors:** Yiyuan He, Minxian Xu, Jingfeng Wu, et al.
- **Date:** 2025-10-15
- **Venue:** Software: Practice and Experience 2026
- **Summary:** Unified approach to KV cache management and dynamic module migration for load balancing in disaggregated serving.

---

### 23. xLLM Technical Report
- **ID:** arXiv:2510.14686
- **Categories:** cs.DC, cs.AI
- **Authors:** Tongxuan Liu, Tao Peng, Peijun Yang, et al.
- **Date:** 2025-10-16
- **Summary:** Comprehensive technical report on xLLM, a decoupled service-engine architecture for multimodal inference with elastic scaling.

---

### 24. The Workload-Router-Pool Architecture for LLM Inference Optimization
- **ID:** arXiv:2603.21354
- **Categories:** cs.LG, cs.DC
- **Authors:** Huamin Chen, Xunzhuo Liu, Bowei He, et al.
- **Date:** 2026-03-22
- **Summary:** Vision paper proposing a workload-router-pool architecture for vLLM semantic routing and optimization.

---

### 25. KV Cache Optimization Strategies for Scalable and Efficient LLM Inference
- **ID:** arXiv:2603.20397
- **Categories:** cs.LG, cs.AI
- **Authors:** Yichun Xu, Navjot K. Khaira, Tejinder Singh
- **Date:** 2026-03-20
- **Summary:** Comprehensive survey of KV cache optimization strategies for production LLM inference systems.

---

### 26. ThunderAgent: A Simple, Fast and Program-Aware Agentic Inference System
- **ID:** arXiv:2602.13692
- **Categories:** cs.OS, cs.MA
- **Authors:** Hao Kang, Ziyang Li, Xinyu Yang, et al.
- **Date:** 2026-02-14
- **Summary:** Optimized inference system for multi-turn agentic workflows with program-aware scheduling.

---

### 27. Architecture-Aware LLM Inference Optimization on AMD Instinct GPUs
- **ID:** arXiv:2603.10031
- **Categories:** cs.AR, cs.AI, cs.DC
- **Authors:** Athos Georgiou
- **Date:** 2026-02-27
- **Summary:** Cross-architecture evaluation of LLM inference on AMD Instinct MI325X GPUs using vLLM.

---

### 28. Understanding Bottlenecks for Efficiently Serving LLM Inference With KV Offloading
- **ID:** arXiv:2601.19910
- **Categories:** cs.AR, cs.DC
- **Authors:** William Meng, Benjamin Lee, Hong Wang
- **Date:** 2026-01-16
- **Venue:** MLSys 2026 (submitted)
- **Summary:** Analytical framework for understanding KV cache offloading bottlenecks and deriving critical thresholds.

---

### 29. Revisiting Disaggregated Large Language Model Serving for Performance and Energy Implications
- **ID:** arXiv:2601.08833
- **Categories:** cs.PF, cs.AI, cs.AR, cs.DC
- **Authors:** Jiaxi Li, Yue Zhu, Eun Kyung Lee, Klara Nahrstedt
- **Date:** 2026-01-14
- **Summary:** Comprehensive analysis of performance and energy tradeoffs in disaggregated LLM serving architectures.

---

### 30. Theoretically Optimal Attention/FFN Ratios in Disaggregated LLM Serving
- **ID:** arXiv:2601.21351
- **Categories:** cs.LG, cs.AI
- **Authors:** Chendong Song, Meixuan Wang, Hang Zhou, et al.
- **Date:** 2026-01-29
- **Venue:** ICML 2026 (submitted)
- **Summary:** Theoretical analysis of optimal attention-to-FFN ratios for Attention-FFN disaggregation in LLM serving.

---

### 31. SuperInfer: SLO-Aware Rotary Scheduling and Memory Management for LLM Inference on Superchips
- **ID:** arXiv:2601.20309
- **Categories:** cs.DC, cs.AI, cs.LG
- **Authors:** Jiahuan Yu, Mingtao Hu, Zichao Lin, Minjia Zhang
- **Date:** 2026-01-28
- **Venue:** MLSys '26
- **Summary:** SLO-aware scheduling and memory management for large superchip-based LLM inference systems.

---

### 32. Sandwich: Separating Prefill-Decode Compilation for Efficient CPU LLM Serving
- **ID:** arXiv:2507.18454
- **Categories:** cs.AR, cs.AI, cs.DC, cs.PL
- **Authors:** Juntao Zhao, Jiuru Li, Chuan Wu
- **Date:** 2025-07-19
- **Summary:** Compilation techniques for efficient CPU-based LLM serving with separated prefill and decode phases.

---

## Trends and Insights

### 1. Prefill-Decode Disaggregation is Mainstream
The majority of recent papers focus on separating prefill (compute-intensive) and decode (memory-intensive) phases for better resource utilization. Systems like **DOPD**, **DualPath**, and **LAPS** explore different aspects of this architecture.

### 2. KV Cache Optimization is Critical
With longer context windows becoming standard, KV cache management is a primary research focus. Key directions include:
- **Compression:** DeltaKV, KVQuant
- **Tiered storage:** Adaptive Multi-Objective Tiered Storage
- **Offloading:** Understanding Bottlenecks for KV Offloading
- **Hierarchical caching:** Strata

### 3. Multi-Framework Support
Papers like **AIConfigurator** and **Architecture-Aware Optimization on AMD** highlight the need for framework-agnostic optimizations beyond just CUDA/NVIDIA.

### 4. Agentic and Multi-Round Inference
**ThunderAgent** and **DualPath** address the unique challenges of multi-turn conversational inference and agentic workflows.

### 5. Communication Optimization
**GPU-Initiated Networking for NCCL** and **FlexLink** demonstrate continued focus on optimizing inter-GPU communication for distributed inference.

### 6. Compilation and Kernel Optimization
**Mirage Persistent Kernel** represents a trend toward AI compilation for automatic kernel fusion and optimization.

---

## References

All papers available at https://arxiv.org/

**Report generated:** 2026-03-29  
**Total papers:** 32  
**Date range:** 2025-01 to 2026-03
