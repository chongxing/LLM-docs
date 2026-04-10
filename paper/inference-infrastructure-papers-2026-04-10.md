# ArXiv Inference Infrastructure Papers Daily Report

**Date:** 2026-04-10  
**Categories:** cs.DC, cs.OS, cs.AR, cs.SE  
**Keywords:** inference serving, GPU kernel, distributed inference, LLM serving

---

## Executive Summary

This report covers **14 papers** on inference infrastructure published on ArXiv (April 3-9, 2026). Key trends include:

- **Disaggregated Serving Architecture**: Multiple papers propose separating LoRA/base-model execution and KV cache management
- **Cold Start Optimization**: Template-based CUDA graph materialization for fast LLM serving initialization  
- **Hardware-Software Co-design**: 3D-stacked AI accelerators and GPU-centric storage systems
- **Edge & Federated Inference**: Memory-efficient fine-tuning and adaptation on resource-constrained devices

---

## Framework Level (LLM Serving Systems)

### 1. InfiniLoRA: Disaggregated Multi-LoRA Serving for Large Language Models
- **ArXiv:** [2604.07173](https://arxiv.org/abs/2604.07173)
- **Category:** cs.DC
- **Key Innovation:** Decouples LoRA execution from base-model inference with a shared LoRA Server featuring parallelism-aware execution and GPU-initiated communication
- **Results:** 3.05× increase in serviceable request rate; 54% improvement in SLO satisfaction
- **Impact:** Addresses MoE architectures' increased LoRA memory cost and tail-latency issues

### 2. Autopoiesis: Self-Evolving LLM Serving Under Runtime Dynamics
- **ArXiv:** [2604.07144](https://arxiv.org/abs/2604.07144)
- **Category:** cs.DC
- **Key Innovation:** LLM-driven program synthesis that continuously evolves serving policies during runtime to navigate scheduling vs. efficiency trade-offs
- **Results:** Up to 53% improvement (34% average) over state-of-the-art systems
- **Impact:** Shifts from static human-engineered policies to autonomous online policy evolution

### 3. Scheduling the Unschedulable: Taming Black-Box LLM Inference at Scale
- **ArXiv:** [2604.06970](https://arxiv.org/abs/2604.06970)
- **Categories:** cs.DC, cs.OS
- **Key Innovation:** Three-layer client-side scheduling (allocation, ordering, overload control) with coarse token priors for black-box APIs
- **Results:** 100% deadline satisfaction under congestion; 4.2±1.6 SLO-meeting requests/s
- **Impact:** Demonstrates practical client-side control for commercial LLM APIs

### 4. ForkKV: Scaling Multi-LoRA Agent Serving via Copy-on-Write Disaggregated KV Cache
- **ArXiv:** [2604.06370](https://arxiv.org/abs/2604.06370)
- **Category:** cs.DC
- **Key Innovation:** OS-style fork() with CoW for KV cache management; DualRadixTree architecture with ResidualAttention kernel
- **Results:** 3.0× throughput improvement over SOTA multi-LoRA systems
- **Impact:** Enables efficient multi-agent workflows with shared contexts on LoRA-adapted models

---

## GPU Kernel & Operator Optimization

### 5. Foundry: Template-Based CUDA Graph Context Materialization for Fast LLM Cold Start
- **ArXiv:** [2604.06664](https://arxiv.org/abs/2604.06664)
- **Category:** cs.DC
- **Key Innovation:** Persists CUDA graph topology and execution context offline; reconstructs executable graphs online with deterministic memory layouts
- **Results:** 99% cold-start latency reduction; Qwen3-235B-A22B initialization from 10 minutes to 3.9 seconds
- **Impact:** Critical for autoscaling and parallelism reconfiguration in production serving

### 6. Sparsity-Aware Roofline Models for Sparse Matrix-Matrix Multiplication
- **ArXiv:** [2604.06637](https://arxiv.org/abs/2604.06637)
- **Category:** cs.DC
- **Key Innovation:** Sparsity-aware roofline modeling accounting for memory traffic, cache locality, and blocking behavior
- **Evaluation:** CSR, CSB, and Intel MKL implementations on SuiteSparse matrices
- **Impact:** Accurate performance prediction requires structure-specific models rather than unified approaches

### 7. DynLP: Parallel Dynamic Batch Update for Label Propagation
- **ArXiv:** [2604.06596](https://arxiv.org/abs/2604.06596)
- **Category:** cs.DC (ACM ICS 2026)
- **Key Innovation:** GPU-centric dynamic batched label propagation updating only affected subgraph regions
- **Results:** 13× average speedup (up to 102×) on large-scale datasets
- **Impact:** Efficient semi-supervised learning for streaming graph data

---

## Distributed Training & Interconnect

### 8. NestPipe: Large-Scale Recommendation Training on 1,500+ Accelerators
- **ArXiv:** [2604.06956](https://arxiv.org/abs/2604.06956)
- **Category:** cs.DC
- **Key Innovation:** Dual-Buffer Pipelining (DBP) + Frozen-Window Pipelining (FWP) for embedding training; preserves synchronous semantics
- **Results:** 3.06× speedup, 94.07% scaling efficiency on 1,536 GPU/NPU workers
- **Impact:** Addresses data movement bottlenecks in trillion-parameter recommendation models

### 9. GROMACS-DeePMD: Multi-GPU Molecular Dynamics with Deep Potentials
- **ArXiv:** [2604.07276](https://arxiv.org/abs/2604.07276)
- **Category:** cs.DC
- **Key Innovation:** Domain-decomposed GPU-accelerated neural network inference integrated into GROMACS MD
- **Results:** 66% strong-scaling efficiency at 16 GPUs; 40-48% at 32 GPUs (A100/MI250x)
- **Impact:** >90% wall time in inference; demonstrates production MD with ab initio fidelity at scale

---

## AI Compilation & Hardware-Software Co-design

### 10. DeepStack: Scalable Design Space Exploration for Distributed 3D-Stacked AI Accelerators
- **ArXiv:** [2604.04750](https://arxiv.org/abs/2604.04750)
- **Categories:** cs.AR, cs.DC
- **Key Innovation:** Performance model for distributed 3D-stacked systems with dual-stage network abstraction and tile-level compute-communication overlap
- **Results:** 100,000× faster than SOTA simulators; 9.5× throughput improvement via co-optimization
- **Key Insight:** Batch size drives architectural divide more than prefill/decode; parallelism and hardware are tightly coupled
- **Impact:** Enables exploration of 2.5×10¹⁴ design points spanning 3D DRAM layers to distributed scheduling

### 11. TRAPTI: Time-Resolved Analysis for SRAM Banking in Embedded Transformer Inference
- **ArXiv:** [2604.06955](https://arxiv.org/abs/2604.06955)
- **Category:** cs.AR (IJCNN 2026)
- **Key Innovation:** Cycle-level simulation + time-resolved memory occupancy analysis for GQA vs MHA comparison
- **Results:** DeepSeek-R1-Distill-Qwen-1.5B achieves 2.72× peak memory reduction vs GPT-2 XL
- **Impact:** Guides banked memory organizations and power-gating for edge transformer deployment

---

## Storage & I/O Systems

### 12. SwarmIO: 100 Million IOPS SSD Emulation for GPU-Centric Storage
- **ArXiv:** [2604.06668](https://arxiv.org/abs/2604.06668)
- **Categories:** cs.AR, cs.DC
- **Key Innovation:** SSD emulator optimized for GPU-initiated I/O with 303.9× speedup over baselines
- **Results:** Models up to 40 MIOPS; 9.7× end-to-end speedup for vector search when scaling from 2.5 to 40 MIOPS
- **Impact:** Enables quantitative evaluation of IOPS-optimized GPU-centric storage systems

### 13. Nexus: Transparent I/O Offloading for High-Density Serverless Computing
- **ArXiv:** [2604.06682](https://arxiv.org/abs/2604.06682)
- **Categories:** cs.DC, cs.OS
- **Key Innovation:** KVM-based hypervisor decoupling compute from I/O via API interception and zero-copy shared memory
- **Results:** 44% CPU reduction, 31% memory reduction, 37% density increase; 39% warm-start latency improvement
- **Impact:** Addresses communication fabric duplication consuming 25%+ of function memory in serverless VMs

---

## Edge & Federated Inference

### 14. ChainFed: Dynamic Chain Optimization for Private LLM Adaptation on the Edge
- **ArXiv:** [2604.06819](https://arxiv.org/abs/2604.06819)
- **Category:** cs.DC (ACL 2026)
- **Key Innovation:** Sequential layer-by-layer fine-tuning with Dynamic Layer Co-Tuning, Globally Perceptive Optimization, and Function-Oriented Adaptive Tuning
- **Results:** Up to 46.46% accuracy improvement over existing federated methods
- **Impact:** Breaks memory barriers for privacy-preserving LLM adaptation on edge devices

---

## Paper Count Summary

| Category | Count | Papers |
|----------|-------|--------|
| **Framework Level (LLM Serving)** | 4 | 2604.07173, 2604.07144, 2604.06970, 2604.06370 |
| **GPU Kernel Optimization** | 3 | 2604.06664, 2604.06637, 2604.06596 |
| **Distributed Training/Inference** | 2 | 2604.06956, 2604.07276 |
| **AI Compilation & Co-design** | 2 | 2604.04750, 2604.06955 |
| **Storage & I/O Systems** | 2 | 2604.06668, 2604.06682 |
| **Edge & Federated** | 1 | 2604.06819 |

**Total Papers:** 14

---

## Key Highlights

1. **Disaggregated Architecture Trend**: InfiniLoRA and ForkKV both leverage disaggregation (compute/KV separation) to improve multi-tenant serving efficiency

2. **Cold Start Breakthrough**: Foundry's CUDA graph materialization reduces initialization from minutes to seconds—a critical advancement for serverless LLM inference

3. **Self-Adaptive Systems**: Autopoiesis pioneers LLM-driven runtime policy evolution, moving beyond static human-designed heuristics

4. **3D Integration**: DeepStack enables system-level exploration of 3D-stacked memory architectures for future AI accelerators

5. **Edge Optimization**: TRAPTI and ChainFed address memory-constrained deployment scenarios through hardware-aware optimization and sequential training strategies

---

*Report generated by OpenClaw ArXiv Watcher*  
*Sync to GitHub: LLM-docs/paper/inference-infrastructure-papers-2026-04-10.md*
