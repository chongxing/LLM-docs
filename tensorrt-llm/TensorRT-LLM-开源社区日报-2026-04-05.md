# TensorRT-LLM 开源社区日报

**日期**: 2026-04-05
**仓库**: https://github.com/NVIDIA/TensorRT-LLM

---

## 📊 今日概览

- **活跃PR数量**: 5+
- **今日已合并PR**: 2 (PR #12427, #12467)
- **最新Commit**: 20 commits (过去24小时)
- **重点关注**: MLIR自动融合、Harmony解析器修复、Gemma4支持

---

## 🔥 活跃PR列表 (Open PRs)

### 1. Draft: Linear attention support for KVCacheManager
- **PR**: [#12185](https://github.com/NVIDIA/TensorRT-LLM/pull/12185)
- **作者**: @VALLIS-NERIA
- **状态**: OPEN (Draft)
- **评论数**: 81
- **描述**: 为KVCacheManager添加线性注意力支持

### 2. AutoDeploy: Add Gemma4 Support
- **PR**: [#12710](https://github.com/NVIDIA/TensorRT-LLM/pull/12710)
- **作者**: @bmarimuthu-nv
- **状态**: OPEN
- **评论数**: 6
- **关键改动**:
  - 新增Gemma 3n和Gemma 4模型支持
  - 优化注意力后端的共享KV缓存
  - MOE支持GELU激活函数
  - 完整的测试覆盖

### 3. Unify VisualGen parallelism
- **PR**: [#12509](https://github.com/NVIDIA/TensorRT-LLM/pull/12509)
- **作者**: @NVShreyas
- **标签**: VisualGen
- **状态**: OPEN
- **评论数**: 11
- **描述**: 
  - 引入VisualGenMapping统一分布式并行策略管理
  - 支持CFG、TP、Ring、Ulysses序列并行
  - 可配置的维度排序（如"cfg-tp-ring-ulysses"）

### 4. Enable GEMM -> AR with GEMM output in registered buffers
- **PR**: [#11589](https://github.com/NVIDIA/TensorRT-LLM/pull/11589)
- **作者**: @nv-lschneider
- **标签**: Community want to contribute
- **状态**: OPEN
- **评论数**: 74
- **描述**: 为NCCL_SYMMETRIC AllReduce策略启用注册缓冲区，支持GEMM输出直接写入自定义缓冲区

### 5. Fix slurm stage (multi-node) failed will not generate a mock result.xml
- **PR**: [#10706](https://github.com/NVIDIA/TensorRT-LLM/pull/10706)
- **作者**: @ZhanruiSunCh
- **状态**: OPEN
- **评论数**: 17
- **描述**: 修复Slurm多节点测试失败时无法生成mock result.xml的问题

---

## ✅ 今日已合并PR

### 1. MLIR-based auto-generated elementwise fusion for AutoDeploy
- **PR**: [#12427](https://github.com/NVIDIA/TensorRT-LLM/pull/12427)
- **作者**: @suyoggupta
- **合并时间**: 2026-04-04
- **关键成果**:
  - 75个自动生成的Triton内核在Nemotron-3-Nano-30B-A3B-FP8上端到端运行
  - 使用xDSL模式重写器将高级操作（如RMSNorm）分解为15个原始操作
  - 通过贪婪连通分量算法发现最大可融合子图
  - 移除硬编码的`mlir_fuse_add_rms_norm`转换，改用通用自动发现方案
  - 支持新颖融合模式（如`add + rmsnorm + silu_gate`）
- **性能数据**:
  - Nanov3 FP8性能提升：在256并发下输出TPS达10291
- **测试覆盖**: 37个单元测试全部通过

### 2. Harmony Parser Delta Grouping + Reuse Report + Better Test Coverage
- **PR**: [#12467](https://github.com/NVIDIA/TensorRT-LLM/pull/12467)
- **作者**: @dongfengy
- **合并时间**: 2026-04-04
- **改动内容**:
  - 新增流选项配置支持
  - 增强token使用报告，包含缓存token统计
  - 优化流式消息处理，智能合并连续delta

---

## 📋 今日Commit摘要

| Commit SHA | 作者 | 描述 |
|------------|------|------|
| 173b350b | suyoggupta | [feat] MLIR-based auto-generated elementwise fusion for AutoDeploy |
| afe61577 | dongfengy | [fix] Harmony Parser Delta Grouping + Reuse Report |
| fd7cc851 | lowsfer | [feat] Support cache reuse for SSM in KVCacheManagerV2 (#12644) |
| 8f76476a | karljang | [feat] Add fused DiT QK Norm + RoPE CUDA kernel for FLUX (#11869) |
| 4e0e2c3c | dongfengy | [fix] Address H20 Weights Loading OOM for GPTOSS (#11321) |
| 249013a3 | venkywonka | [cleanup] Add supplemental ruff lint for legacy files (#11469) |
| 9ab5cef9 | yifjiang | [fix] Replace assertions with warnings for unsupported logits/logprobs (#12547) |
| 13826d32 | cascade812 | [feat] Add multi-turn support for trtllm-bench (#12468) |
| 9a9bb80d | kev-bi | [fix] Use the first non-None result returned by hf download workers (#12259) |
| b6c5a718 | tensorrt-cicd | [infra] Check in most recent lock file from nightly pipeline |

---

## 🎯 技术洞察

### 1. AutoDeploy MLIR自动融合
- **影响**: 75个自动生成内核替代手写内核
- **意义**: 大幅提升开发效率，减少手工优化工作量
- **技术**: xDSL + Triton + 贪婪子图发现算法

### 2. Harmony解析器改进
- **改进**: 流式响应更稳定，避免Dynamo崩溃
- **新增**: 流选项配置、缓存token统计

### 3. 视觉生成并行架构重构
- **新特性**: VisualGenMapping统一管理多维度并行
- **支持**: CFG、TP、Ring、Ulysses四种并行策略
- **优势**: 可配置维度排序，灵活适配不同硬件拓扑

### 4. 多模态支持进展
- **FLUX**: 新增融合的DiT QK Norm + RoPE CUDA内核
- **Gemma4**: AutoDeploy新增支持

---

## 📈 社区统计

- **Stars**: 13,266
- **Forks**: 2,253
- **Open Issues**: 1,239
- **Open PRs**: 50+

---

*报告生成时间: 2026-04-05 07:40 AM (Asia/Shanghai)*
