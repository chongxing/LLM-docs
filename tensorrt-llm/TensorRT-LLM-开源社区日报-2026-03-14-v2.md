# TensorRT-LLM 开源社区日报

**日期**: 2026-03-14  
**仓库**: https://github.com/NVIDIA/TensorRT-LLM

---

## 📈 今日概览

| 指标 | 数值 |
|------|------|
| 新增 PR | 24 个 |
| 已合并 | 1 个 |
| 已关闭 | 2 个 |
| 活跃 PR | 100+ 个 |

---

## 🔥 今日新增PR (2026-03-14)

### AutoDeploy 模型支持

[#12210](https://github.com/NVIDIA/TensorRT-LLM/pull/12210) - [None][feat] Add support for Phi4 family in AutoDeploy
- 作者: Bala Marimuthu
- 状态: OPEN
- 描述: 在AutoDeploy中添加对Phi4系列模型的支持

[#12205](https://github.com/NVIDIA/TensorRT-LLM/pull/12205) - [None][feat] Add support for Gemma3n and sharedKV cache attention in AutoDeploy
- 作者: Bala Marimuthu
- 状态: OPEN
- 描述: 在AutoDeploy中添加对Gemma3n和共享KV缓存注意力机制的支持

[#12203](https://github.com/NVIDIA/TensorRT-LLM/pull/12203) - [None][feat] Support Qwen3.5 Dense and MoE Models in Pytorch Backend
- 作者: Keddy Jin
- 状态: OPEN
- 描述: 在PyTorch后端支持Qwen3.5 Dense和MoE模型

[#12191](https://github.com/NVIDIA/TensorRT-LLM/pull/12191) - [TRTLLM-11267][feat] Add audio support for nemotron
- 作者: William Zhang
- 状态: OPEN
- 描述: 为nemotron模型添加音频支持

### 性能优化

[#12201](https://github.com/NVIDIA/TensorRT-LLM/pull/12201) - [None][feat] Add fused allreduce+RMSNorm op and optional residual
- 作者: Fanrong Li
- 状态: OPEN
- 描述: 添加融合的allreduce+RMSNorm操作和可选残差

[#12198](https://github.com/NVIDIA/TensorRT-LLM/pull/12198) - [None][perf] Fuse and optimize DSA indexer gather/scatter kernels
- 作者: Kaiyu Xie
- 状态: OPEN
- 描述: 融合和优化DSA索引器的gather/scatter内核

[#12194](https://github.com/NVIDIA/TensorRT-LLM/pull/12194) - [TRTLLM-9019][feat] Expose video_pruning_rate as llmargs and fix nano-v2-vl
- 作者: Wanli Jiang
- 状态: OPEN
- 描述: 将video_pruning_rate暴露为llmargs参数并修复nano-v2-vl

### Bug修复

[#12208](https://github.com/NVIDIA/TensorRT-LLM/pull/12208) - [TRTLLM-11492][fix] Replace blocking fill loop with non-blocking can_forward gate in benchmark disagg mode
- 作者: Chien-Chun Hung
- 状态: OPEN
- 描述: 在benchmark disagg模式下用非阻塞can_forward gate替换阻塞fill循环

[#12188](https://github.com/NVIDIA/TensorRT-LLM/pull/12188) - [None][fix] Fix KV cache V2 OOM with separate draft KV cache (EAGLE3/MTP)
- 作者: Yi Zhang
- 状态: OPEN
- 描述: 修复使用独立draft KV缓存时的KV cache V2 OOM问题

[#12179](https://github.com/NVIDIA/TensorRT-LLM/pull/12179) - [None][fix] fix KVCacheManager race conditions via withSequence callback API
- 作者: Thor Johnsen
- 状态: OPEN
- 描述: 通过withSequence回调API修复KVCacheManager竞态条件

[#12190](https://github.com/NVIDIA/TensorRT-LLM/pull/12190) - [None][fix] Fix W4A16 AWQ bias not applied on SM100 (Blackwell)
- 作者: Qi Zhang
- 状态: OPEN
- 描述: 修复SM100 (Blackwell)上W4A16 AWQ bias未应用的问题

### 新特性

[#12199](https://github.com/NVIDIA/TensorRT-LLM/pull/12199) - [TRTLLM-11357][feat] Support interleaved thinking for trtllm-serve
- 作者: 
- 状态: OPEN
- 描述: 为trtllm-serve支持交错思考模式

[#12175](https://github.com/NVIDIA/TensorRT-LLM/pull/12175) - [None][feat] Add mix-precision checkpoint support in AutoDeploy
- 作者: Frida Hou
- 状态: OPEN
- 描述: 在AutoDeploy中添加混合精度checkpoint支持

[#12173](https://github.com/NVIDIA/TensorRT-LLM/pull/12173) - [None][fix] Handle anyOf parameter schemas in Qwen3Coder tool parser
- 作者: Joyjit Daw
- 状态: OPEN
- 描述: 在Qwen3Coder工具解析器中处理anyOf参数模式

[#10860](https://github.com/NVIDIA/TensorRT-LLM/pull/10860) - [TRTLLM-10319][feat] Dynamic draft length on spec decode one-model path
- 作者: Zheyu Fu
- 状态: OPEN
- 描述: 在spec decode one-model路径上支持动态draft长度

---

## ✅ 今日已合并PR

[#390a7fd](https://github.com/NVIDIA/TensorRT-LLM/commit/390a7fd) - [None][feat] Qwen3.5 perf optimizations
- 作者: Suyog Gupta

---

## 📋 活跃PR列表 (Open PRs)

### AutoDeploy/模型支持
- [#12210](https://github.com/NVIDIA/TensorRT-LLM/pull/12210) - Add support for Phi4 family in AutoDeploy
- [#12205](https://github.com/NVIDIA/TensorRT-LLM/pull/12205) - Add support for Gemma3n and sharedKV cache attention
- [#12203](https://github.com/NVIDIA/TensorRT-LLM/pull/12203) - Support Qwen3.5 Dense and MoE Models
- [#12191](https://github.com/NVIDIA/TensorRT-LLM/pull/12191) - Add audio support for nemotron
- [#12175](https://github.com/NVIDIA/TensorRT-LLM/pull/12175) - Add mix-precision checkpoint support in AutoDeploy

### 性能优化
- [#12201](https://github.com/NVIDIA/TensorRT-LLM/pull/12201) - Add fused allreduce+RMSNorm op
- [#12198](https://github.com/NVIDIA/TensorRT-LLM/pull/12198) - Fuse and optimize DSA indexer gather/scatter kernels
- [#12194](https://github.com/NVIDIA/TensorRT-LLM/pull/12194) - Expose video_pruning_rate as llmargs
- [#12161](https://github.com/NVIDIA/TensorRT-LLM/pull/12161) - Cache FlashMLA tile-scheduler metadata
- [#12148](https://github.com/NVIDIA/TensorRT-LLM/pull/12148) - Add host performance regression test suite

### Bug修复
- [#12208](https://github.com/NVIDIA/TensorRT-LLM/pull/12208) - Replace blocking fill loop with non-blocking can_forward gate
- [#12188](https://github.com/NVIDIA/TensorRT-LLM/pull/12188) - Fix KV cache V2 OOM with separate draft KV cache
- [#12179](https://github.com/NVIDIA/TensorRT-LLM/pull/12179) - fix KVCacheManager race conditions
- [#12190](https://github.com/NVIDIA/TensorRT-LLM/pull/12190) - Fix W4A16 AWQ bias not applied on SM100
- [#12177](https://github.com/NVIDIA/TensorRT-LLM/pull/12177) - Fix disaggregated example by enabling CacheTransceiverConfig

### 通信/并行
- [#12174](https://github.com/NVIDIA/TensorRT-LLM/pull/12174) - Add safe version of tp_allgather with chunking
- [#12152](https://github.com/NVIDIA/TensorRT-LLM/pull/12152) - exclude IB transfer on L40s
- [#12150](https://github.com/NVIDIA/TensorRT-LLM/pull/12150) - Extend python cache transceiver to support nemotron
- [#12149](https://github.com/NVIDIA/TensorRT-LLM/pull/12149) - Fix DeepSeekV3 W4A8 mixed precision quantization
- [#12147](https://github.com/NVIDIA/TensorRT-LLM/pull/12147) - Use identity comparison for None checks

### 推理/采样
- [#12199](https://github.com/NVIDIA/TensorRT-LLM/pull/12199) - Support interleaved thinking for trtllm-serve
- [#12176](https://github.com/NVIDIA/TensorRT-LLM/pull/12176) - Add streaming support to no </think> for nemotron
- [#12171](https://github.com/NVIDIA/TensorRT-LLM/pull/12171) - Eagle: MLA Target + GQA Draft
- [#10860](https://github.com/NVIDIA/TensorRT-LLM/pull/10860) - Dynamic draft length on spec decode one-model path

---

*报告生成时间: 2026-03-14 10:35*  
*数据来源: GitHub API*  
*格式版本: v2 (带完整PR链接)*
