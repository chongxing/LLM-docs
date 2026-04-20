# ArXiv Inference Infrastructure Papers - Daily Report (2026-04-20)

**Date:** 2026-04-20  
**Search Categories:** cs.DC, cs.OS, cs.AR, cs.SE  
**Keywords:** inference serving, GPU kernel optimization, distributed inference, LLM serving  
**New Papers Found:** 7 relevant papers

---

## 🌟 Highly Recommended Papers

### 1. Scepsy: Serving Agentic Workflows Using Aggregate LLM Pipelines
- **ArXiv ID:** 2604.15186  
- **Category:** cs.DC (Distributed, Parallel, and Cluster Computing)
- **Authors:** Marcel Wagenländer et al.
- **Link:** https://arxiv.org/abs/2604.15186

**Abstract:**  
Agentic workflows carry out complex tasks by orchestrating multiple large language models (LLMs) and tools. Serving such workflows at a target throughput with low latency is challenging because they can be defined using arbitrary agentic frameworks and exhibit unpredictable execution times. Scepsy is a new agentic serving system that efficiently schedules arbitrary multi-LLM agentic workflows onto a GPU cluster. Scepsy exploits the insight that while agentic workflows have unpredictable end-to-end latencies, the shares of each LLM's total execution times are comparatively stable across executions.

**Key Highlights:**
- Constructs an Aggregate LLM Pipeline as a lightweight latency/throughput predictor
- Uses hierarchical heuristic to place optimal allocation onto GPU cluster, minimizing fragmentation
- Achieves up to **2.4x higher throughput** and **27x lower latency** compared to systems that optimize LLMs independently
- Respects network topology constraints in GPU cluster placement

---

### 2. Prefill-as-a-Service: KVCache of Next-Generation Models Could Go Cross-Datacenter
- **ArXiv ID:** 2604.15039
- **Category:** cs.DC
- **Authors:** Ruoyu Qin et al.
- **Link:** https://arxiv.org/abs/2604.15039

**Abstract:**  
Prefill-decode (PD) disaggregation has become the standard architecture for large-scale LLM serving, but its deployment boundary is still determined by KVCache transfer. Recent hybrid-attention architectures substantially reduce KVCache size, making cross-cluster KVCache transport increasingly plausible. This paper presents Prefill-as-a-Service (PrfaaS), a cross-datacenter serving architecture that selectively offloads long-context prefill to standalone, compute-dense prefill clusters and transfers the resulting KVCache over commodity Ethernet to local PD clusters for decode.

**Key Highlights:**
- Enables cross-datacenter prefill-decode disaggregation using commodity Ethernet
- Combines model-side KV efficiency with system-side selective offloading
- Removes requirement for heterogeneous accelerators to share low-latency RDMA fabric
- Using an internal 1T-parameter hybrid model, achieves **54% higher throughput** than homogeneous PD baseline
- Achieves **32% higher throughput** than naive heterogeneous baselines

---

### 3. ELMoE-3D: Leveraging Intrinsic Elasticity of MoE for Hybrid-Bonding-Enabled Self-Speculative Decoding
- **ArXiv ID:** 2604.14626
- **Category:** cs.LG, cs.AR, cs.DC
- **Authors:** Yuseon Choi et al.
- **Link:** https://arxiv.org/abs/2604.14626

**Abstract:**  
Mixture-of-Experts (MoE) models have become the dominant architecture for large-scale language models, yet on-premises serving remains fundamentally memory-bound as batching turns sparse per-token compute into dense memory activation. This paper proposes ELMoE-3D, a hybrid-bonding (HB)-based HW-SW co-designed framework that unifies cache-based acceleration and speculative decoding to offer overall speedup across batch sizes.

**Key Highlights:**
- Identifies two intrinsic elasticity axes of MoE: expert and bit
- Constructs Elastic Self-Speculative Decoding (Elastic-SD) as both expert cache and strongly aligned self-draft model
- LSB-augmented bit-sliced architecture exploits inherent redundancy for bit-nested execution
- Achieves **6.6x speedup** and **4.4x energy efficiency** over naive MoE serving
- Delivers **2.2x speedup** and **1.4x energy efficiency** over best-performing prior accelerator baseline

---

### 4. Serving Chain-structured Jobs with Large Memory Footprints for Foundation Model Serving
- **ArXiv ID:** 2604.14993
- **Category:** cs.DC, cs.PF
- **Authors:** Tingyang Sun et al.
- **Link:** https://arxiv.org/abs/2604.14993

**Abstract:**  
Large foundation models are increasingly employed as the core of AI services. Even after training, serving such models at scale remains challenging due to their heavy resource footprints, particularly GPU memory. This work extracts a novel problem of "server chain composition" via block placement and cache allocation for serving chain-structured jobs with large memory footprints, which models a fundamental problem in serving large foundation models through pipeline parallelism.

**Key Highlights:**
- Addresses NP-hard server chain composition problem for pipeline parallelism
- Develops scalable algorithms with guaranteed performance under state-of-the-art load balancing
- Focuses on block placement and cache allocation for large memory footprint jobs
- Shows significant reduction of response times compared to state-of-the-art solutions

---

### 5. CoCoDiff: Optimizing Collective Communications for Distributed Diffusion Transformer Inference
- **ArXiv ID:** 2604.14561
- **Category:** cs.DC
- **Authors:** Bin Ma et al.
- **Link:** https://arxiv.org/abs/2604.14561

**Abstract:**  
Diffusion Transformers (DiTs) are increasingly adopted in scientific computing, yet growing model sizes and resolutions make distributed multi-GPU inference essential. Ulysses sequence parallelism scales DiT inference but introduces frequent all-to-all collectives that dominate latency. CoCoDiff is a distributed DiT inference engine that exploits two observations: (1) V requires only linear projection while Q/K need additional normalization and RoPE, creating opportunities to overlap V's communication with Q/K computation; (2) adjacent denoising steps produce similar tensors, yielding temporal redundancy.

**Key Highlights:**
- Tile-Aware Parallel All-to-all (TAPA) decomposes collectives into topology-aligned phases
- V-First scheduling hides V's communication behind Q/K computation
- V-Major selective communication transmits only active projections on slow interconnects
- Evaluated on Aurora supercomputer with up to 96 Intel GPU tiles
- Achieves average **3.6x speedup**, peaking at **8.4x**

---

## 🔧 Moderately Relevant Papers

### 6. SCENIC: Stream Computation-Enhanced SmartNIC
- **ArXiv ID:** 2604.15128
- **Category:** cs.AR, cs.DC, cs.NI
- **Authors:** Benjamin Ramhorst et al.
- **Link:** https://arxiv.org/abs/2604.15128

**Abstract:**  
SCENIC is an open-source datacenter SmartNIC that implements a 200G network datapath over offloaded TCP/IP and RDMA stacks. It combines on-datapath Stream Compute Units (SCUs) for data processing and embedded ARM cores for flexible control path manipulation with direct access to GPUs and SSDs. Fully integrated with the OS, exposing native Linux network and RDMA verb interfaces.

**Key Highlights:**
- 200G network datapath with offloaded TCP/IP and RDMA
- On-datapath Stream Compute Units for data processing offload
- Direct access to GPUs and SSDs for collective communication offloading
- Network-to-GPU hash-based data partitioning use case demonstrated

---

### 7. Incidence Constraints in Hypergraph Partitioning on GPU
- **ArXiv ID:** 2604.14411
- **Category:** cs.DC
- **Authors:** Marco Ronzani et al.
- **Link:** https://arxiv.org/abs/2604.14411

**Abstract:**  
Hypergraph partitioning is a pervasive NP-hard problem, and accelerating its computation on GPU can both slice time-to-solution and raise quality of results. This work implements a multi-level hypergraph partitioning algorithm on GPU targeting bounded per-partition size and distinct inbound hyperedges constraints.

**Key Highlights:**
- Multi-level hypergraph partitioning algorithm on GPU
- Speedups as high as **940x** over sequential partitioner
- **2-26% better results** in connectivity over sequential multi-level partitioner
- Relevant for GPU-accelerated workload partitioning in distributed systems

---

## 📊 Summary Statistics

| Category | Count | Key Topics |
|----------|-------|------------|
| LLM Serving Systems | 3 | Agentic workflows, prefill-decode disaggregation, pipeline parallelism |
| Hardware Acceleration | 2 | MoE speculative decoding, SmartNIC offloading |
| Distributed Inference | 2 | DiT collective communications, cross-datacenter serving |
| GPU Optimization | 1 | Hypergraph partitioning |

**Total New Papers:** 7 relevant papers from April 14-17, 2026

---

## 🏷️ Key Technologies Mentioned

- **Scepsy** - Agentic workflow serving system
- **PrfaaS** - Cross-datacenter prefill-as-a-service
- **ELMoE-3D** - Hybrid-bonding MoE accelerator
- **CoCoDiff** - Distributed DiT inference engine
- **SCENIC** - Stream computation SmartNIC
- **Ulysses** - Sequence parallelism for DiT
- **Hybrid-bonding** - 3D-stacked memory technology
- **All-to-all collectives** - Communication optimization

---

*Report generated: 2026-04-20 09:10 UTC+8*
