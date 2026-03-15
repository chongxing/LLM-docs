# TensorRT-LLM 开源社区日报

**日期**: 2026-03-16  
**仓库**: https://github.com/NVIDIA/TensorRT-LLM

---

## 📊 今日概览

- **新增PR数量**: 10+
- **已合并数量**: 7
- **活跃Open PRs**: 约50个

---

## 🔥 活跃PR列表 (Open PRs)

### 高优先级修复
1. **#12141** - fix: FP4 CUTLASS GEMM shared memory overflow on GB10 (SM121)  
   https://github.com/NVIDIA/TensorRT-LLM/pull/12141  
   作者: mihai-chiorean | 标签: Community want to contribute

2. **#12206** - [None][fix] return an explicit error if the requests can't be scheduled  
   https://github.com/NVIDIA/TensorRT-LLM/pull/12206  
   作者: Tabrizian

3. **#12216** - Test mem est 2  
   https://github.com/NVIDIA/TensorRT-LLM/pull/12216  
   作者: HuiGao-NV

### 新功能特性
4. **#12229** - feat(quantization): add LoRA support for FP4Linear and FP4RowLinear  
   https://github.com/NVIDIA/TensorRT-LLM/pull/12229  
   作者: langzhao-netizen | 标签: Community want to contribute

5. **#12114** - [None][fix] Qwen 3.5 fix 3d position ID handling  
   https://github.com/NVIDIA/TensorRT-LLM/pull/12114  
   作者: bmarimuthu-nv

6. **#12150** - [TRTLLM-11146][feat] Extend python cache transceiver to support nemotron  
   https://github.com/NVIDIA/TensorRT-LLM/pull/12150  
   作者: bo-nv

7. **#12201** - [None][feat] Add fused allreduce+RMSNorm op and optional residual  
   https://github.com/NVIDIA/TensorRT-LLM/pull/12201  
   作者: lfr-0531

### AutoDeploy 相关
8. **#12209** - [None][feat] AutoDeploy Model Onboarding Sprint 03/19 - Part 1  
   https://github.com/NVIDIA/TensorRT-LLM/pull/12209  
   作者: bmarimuthu-nv

9. **#12210** - [None][feat] Add support for Phi4 family in AutoDeploy  
   https://github.com/NVIDIA/TensorRT-LLM/pull/12210  
   作者: bmarimuthu-nv

10. **#12205** - [None][feat] Add support for Gemma3n and sharedKV cache attention in AutoDeploy  
    https://github.com/NVIDIA/TensorRT-LLM/pull/12205  
    作者: bmarimuthu-nv

### 其他重要PR
11. **#12102** - [TRTLLM-10820][infra] Update dependencies to align with NGC PyTorch 26.02 stack  
    https://github.com/NVIDIA/TensorRT-LLM/pull/12102  
    作者: EmmaQiaoCh

12. **#12197** - [https://nvbugs/5948878][fix] fix lost requests  
    https://github.com/NVIDIA/TensorRT-LLM/pull/12197  
    作者: bo-nv

13. **#12188** - [None][fix] Fix KV cache V2 OOM with separate draft KV cache (EAGLE3/MTP)  
    https://github.com/NVIDIA/TensorRT-LLM/pull/12188  
    作者: yizhang-nv

14. **#11939** - [TRTLLM-11287][feat] Implement python based scheduler for KVCacheManagerV2  
    https://github.com/NVIDIA/TensorRT-LLM/pull/11939  
    作者: lancelly

15. **#12062** - [None][feat] Add EAGLE3 dynamic tree speculative decoding support  
    https://github.com/NVIDIA/TensorRT-LLM/pull/12062  
    作者: sunnyqgg

---

## ✅ 今日已合并PR

1. **#12225** - [None][fix] port retry loop and exception handling  
   https://github.com/NVIDIA/TensorRT-LLM/pull/12225  
   作者: MrGeva | 合并时间: 2026-03-15 23:13

2. **#12224** - [None][infra] Waive 9 failed cases for main in post-merge 2593  
   https://github.com/NVIDIA/TensorRT-LLM/pull/12224  
   作者: ZhanruiSunCh | 合并时间: 2026-03-15 15:32

3. **#12193** - [None][fix] remove test_llm_api_autodeploy.py::TestNemotronSuperV3 test  
   https://github.com/NVIDIA/TensorRT-LLM/pull/12193  
   作者: tcherckez-nvidia | 合并时间: 2026-03-15 14:08

4. **#11941** - [TRTLLM-8922][feat] py cache transceiver for gen-first workflow  
   https://github.com/NVIDIA/TensorRT-LLM/pull/11941  
   作者: reasonsolo | 合并时间: 2026-03-15 14:03  
   **关键更新**: Python缓存传输器支持gen-first工作流 (P/D分离相关)

5. **#12158** - [https://nvbugs/5973316][fix] fix deepep with trtllm moe backend and seqlen one  
   https://github.com/NVIDIA/TensorRT-LLM/pull/12158  
   作者: leslie-fang25 | 合并时间: 2026-03-15 04:46

6. **#12101** - [None][chore] Add explicit error for intermediate size misalignment with fp8 block size  
   https://github.com/NVIDIA/TensorRT-LLM/pull/12101  
   作者: leslie-fang25 | 合并时间: 2026-03-15 01:19

7. **#11760** - [None][feat] Add shared expert LoRA support for MoE models in PyTorch backend  
   https://github.com/NVIDIA/TensorRT-LLM/pull/11760  
   作者: achartier | 合并时间: 2026-03-12  
   **关键更新**: MoE模型共享专家LoRA支持

---

## 📋 今日Commit摘要 (2026-03-15)

| Commit | 描述 | 作者 |
|--------|------|------|
| 73cca36b | [None][fix] port retry loop and exception handling (#12225) | Eran Geva |
| 8766e81a | [None][infra] Waive 9 failed cases for main in post-merge 2593 (#12224) | Zhanrui Sun |
| 4be2fda9 | [None][fix] remove test_llm_api_autodeploy.py::TestNemotronSuperV3 test (#12193) | tcherckez-nvidia |
| b20dd452 | [TRTLLM-8922][feat] py cache transceiver for gen-first workflow (#11941) | Lizhi Zhou |
| e3e6a382 | [fix] fix deepep with trtllm moe backend and seqlen one (#12158) | Leslie Fang |
| afe73148 | [None][infra] Check in most recent lock file from nightly pipeline | TensorRT LLM |
| 267396cb | [None][chore] Add explicit error for intermediate size misalignment with fp8 block size (#12101) | Leslie Fang |

---

## 🔍 技术洞察

### 1. P/D 分离 (Prefill/Decode Disaggregation) 持续进展
- **#11941** Python cache transceiver 支持 gen-first 工作流已合并，这是P/D分离架构的重要进展
- **#12150** 正在扩展 Python cache transceiver 以支持 Nemotron 模型
- **#12188** 修复了 KV cache V2 在使用独立 draft KV cache (EAGLE3/MTP) 时的 OOM 问题

### 2. FP4/FP8 量化优化
- **#12141** 修复了 FP4 CUTLASS GEMM 在 GB10 (SM121) 上的共享内存溢出问题
- **#12229** 社区贡献：为 FP4Linear 和 FP4RowLinear 添加 LoRA 支持
- **#12101** 增加了 FP8 块大小不对齐时的显式错误提示

### 3. AutoDeploy 模型支持扩展
- 密集更新支持新模型：Phi4 家族、Gemma3n、Qwen3.5 等
- **#12175** 已合并：AutoDeploy 增加混合精度 checkpoint 支持

### 4. MoE (Mixture of Experts) 优化
- **#11760** 已合并：PyTorch backend MoE 模型共享专家 LoRA 支持
- **#12158** 修复了 deepep 与 TRTLLM MoE backend 在 seqlen=1 时的问题

### 5. Speculative Decoding 进展
- **#12062** 新增 EAGLE3 动态树投机解码支持
- **#10860** 已合并：单模型路径上的动态 draft 长度支持

---

## 📌 重点跟踪

| 特性 | 状态 | 相关PR |
|------|------|--------|
| P/D 分离 (Cache Transceiver) | 🔄 活跃开发 | #11941(已合并), #12150 |
| FP4 量化 | 🔄 持续优化 | #12141, #12229 |
| AutoDeploy | 🔄 密集更新 | #12209, #12210, #12205 |
| EAGLE3 投机解码 | 🔄 新功能 | #12062 |
| Qwen3.5 支持 | 🔄 性能优化 | #12114, #11581(已合并) |
| KVCacheManagerV2 | 🔄 重构中 | #11939, #12212 |

---

*报告生成时间: 2026-03-16 07:44 AM (Asia/Shanghai)*
