# TensorRT-LLM 开源社区日报
# 每天早上8:00自动生成报告
# 包含：新PR、代码提交、重点讨论

## 📊 今日概览
- **日期**: 2026-05-12
- **新增PR数量**: 25个新PR（过去24小时）
- **已合并数量**: 5个
- **已关闭数量**: 1个
- **总活跃PR**: 75个

## 🔥 活跃PR列表 (Open PRs)

### 🆕 今日新增PR（过去24小时）

**14011** - [None][fix] Unwaive standalone llm-c package generation test  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14011  
👨‍💻 bmarimuthu-nv  
📅 2026-05-11 22:36  
🏷️ fix, test, infra

**14010** - [TRTLLM-12533][refactor] Move Media IO modality loading into MediaIO Interfaces  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14010  
👨‍💻 aswinvisva  
📅 2026-05-11 22:29  
🏷️ refactor, feat, infra

**14009** - [TRTLLM-12288][feat] Support NVFP4 W4A16 inference on Hopper for Nemotron H models  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14009  
👨‍💻 tijyojwad  
📅 2026-05-11 21:26  
🏷️ feat, performance, quantization

**14008** - [https://nvbugs/6117814][fix] AutoDeploy: Fix Eagle cu_seqlen data race  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14008  
👨‍💻 govind-ramnarayan  
📅 2026-05-11 21:02  
🏷️ fix, autodeploy, bugfix

**14007** - [None][infra] Waive 1 failed cases for main in pre-merge 37674  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14007  
👨‍💻 ZhanruiSunCh  
📅 2026-05-11 21:00  
🏷️ infra, ci

**14006** - [#13858][fix] AutoDeploy fix the piecewise vlm issue  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14006  
👨‍💻 nvchenghaoz  
📅 2026-05-11 20:02  
🏷️ fix, autodeploy

**14005** - [None][feat] Expose stored block-hash chain to KV cache connector  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14005  
👨‍💻 pcastonguay  
📅 2026-05-11 19:31  
🏷️ feat, kv-cache, optimization

**14004** - [None][feat] AutoDeploy re-onboard GPT_OSS  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14004  
👨‍💻 nvchenghaoz  
📅 2026-05-11 18:11  
🏷️ feat, autodeploy

**14003** - [None][fix] KVCacheManager: reserve recurrent-state slots for CUDA graph padding  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14003  
👨‍💻 VALLIS-NERIA  
📅 2026-05-11 15:34  
🏷️ fix, kv-cache, cuda

**14002** - [None][fix] Reuse prior-attempt passes when infra retry fires  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14002  
👨‍💻 dpitman-nvda  
📅 2026-05-11 15:31  
🏷️ fix, infra, retry

**14001** - [None][test] Waive 2 failed cases for main in QA CI  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14001  
👨‍💻 xinhe-nv  
📅 2026-05-11 14:59  
🏷️ test, ci, waiver

**14000** - [None][fix] Reset MoE A2A dispatch state on warmup OOM  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14000  
👨‍💻 Barry-Delaney  
📅 2026-05-11 14:43  
🏷️ fix, moe, oom

**13999** - [None][fix] CppMambaHybridCacheManager: handle ranks with zero local mamba layers  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/13999  
👨‍💻 VALLIS-NERIA  
📅 2026-05-11 12:28  
🏷️ fix, mamba, cache

**13998** - [None][fix] sync warmup forward decision across TP ranks  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/13998  
👨‍💻 qiaoxj07  
📅 2026-05-11 11:43  
🏷️ fix, tp, sync

**13997** - [None][feat] enable TRTLLM-Gen internal routing  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/13997  
👨‍💻 tcherckez-nvidia  
📅 2026-05-11 11:33  
🏷️ feat, routing, internal

**13996** - [TRTLLM-11228][feat] Perf optimizations for DFlash  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/13996  
👨‍💻 ziyixiong-nv  
📅 2026-05-11 11:23  
🏷️ feat, performance, dflash

**13994** - [None][feat] Upgrade transformers dependency to 5.5.3  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/13994  
👨‍💻 Hudayday  
📅 2026-05-11 10:17  
🏷️ feat, dependency, transformers

**13993** - [TRTLLM-12153][ci] Drop tensorrt_llm/llmapi/ from multi-GPU trigger list  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/13993  
👨‍💻 QiJune  
📅 2026-05-11 09:41  
🏷️ ci, multi-gpu, optimization

### 📊 重点长期活跃PR

**13821** - [TRTLLM-12342][feat] Ring Attention, Unified Context Parallel for VisualGen  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/13821  
👨‍💻 NVShreyas  
📅 2026-05-07 00:05  
🏷️ feat, attention, visual, ring-attention, context-parallel

**13783** - [None][feat] Wan 2.2 serve: extend video generation API  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/13783  
👨‍💻 wu6u3tw  
📅 2026-05-05 23:57  
🏷️ feat, video, api, wan

**13478** - [TRTLLM-13429][feat] Switch DeepSeek/NemotronH/Qwen3/Qwen3.5-MoE to sharding-IR canonical models  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/13478  
👨‍💻 greg-kwasniewski1  
📅 2026-04-26 16:14  
🏷️ feat, sharding, canonical-models

**12731** - [None][feat] Optimize mamba SSD prefill and extend flashinfer dispatch  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/12731  
👨‍💻 Wanli-Jiang  
📅 2026-04-03 09:09  
🏷️ feat, mamba, optimization, prefill

## ✅ 今日已合并PR

**13976** - [https://nvbugs/6162853][chore] unwaive test  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/13976  
👨‍💻 galagam  
📅 2026-05-11 14:48  
✅ 已合并

**13959** - [None][test] Waive 5 failed cases for main in QA CI  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/13959  
👨‍💻 xinhe-nv  
📅 2026-05-11 07:42  
✅ 已合并

**13754** - [TRTLLM-12453][fix] Accommodate chunked prefill in Nemotron's EVS merging logic  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/13754  
👨‍💻 moraxu  
📅 2026-05-11 17:38  
✅ 已合并

**13591** - [https://nvbugs/6084764][fix] unwaive DeepSeek-R1 fp8 blockscale throughput  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/13591  
👨‍💻 bobboli  
📅 2026-05-11 15:58  
✅ 已合并

**13951** - [None][infra] Add users to blossom-ci allowlist  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/13951  
👨‍💻 yuanjingx87  
📅 2026-05-11 16:37  
✅ 已合并

**13733** - [None][fix] Kvcache router unused ctx first  
🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/13733  
👨‍💻 SimengLiu-nv  
📅 2026-05-11 20:07  
✅ 已合并

## 📋 今日Commit摘要

**e197b69** - [TRTLLM-12453][fix] Accommodate chunked prefill in Nemotron's EVS merging logic (#13754)  
👨‍💻 Michal Guzek | 2026-05-11 17:38

**5f3fd3a** - [None][infra] Add users to blossom-ci allowlist (#13951)  
👨‍💻 yuanjingx87 | 2026-05-11 16:37

**758245e** - [https://nvbugs/6084764][fix] unwaive DeepSeek-R1 fp8 blockscale throughput (#13591)  
👨‍💻 Bo Li | 2026-05-11 15:58

**f3570a8** - [https://nvbugs/6162853][chore] unwaive test (#13976)  
👨‍💻 Gal Hubara-Agam | 2026-05-11 14:48

**9547230** - [None][test] Waive 5 failed cases for main in QA CI (#13959)  
👨‍💻 xinhe-nv | 2026-05-11 07:42

## 🔍 社区洞察

### 技术趋势分析
1. **AutoDeploy 持续改进** - 多个PR专注于AutoDeploy功能优化，包括模型重新上线、数据竞争修复、piecewise VLM问题修复等
2. **KV Cache 优化** - 持续的KV cache管理改进，包括块哈希链暴露、状态重置、同步决策等
3. **性能优化** - DFlash性能优化、MoE调度改进、LTX2 Ulysses异步A2A管道等
4. **模型支持扩展** - 新增Nemotron H模型支持、DeepSeek/NemotronH/Qwen3等模型切换到sharding-IR规范模型

### 热门技术方向
- **量化优化**: NVFP4 W4A16推理支持
- **多模态**: 视频生成API扩展、视觉生成Ring Attention
- **分布式**: Ring Attention、上下文并行、MoE优化
- **推理优化**: Chunked Prefill、Mamba SSD预填充优化

### 值得关注的PR
- **13821**: Ring Attention + 统一上下文并行 for VisualGen
- **13783**: Wan 2.2 serve 视频生成API扩展
- **13478**: 深度模型切换到sharding-IR规范模型
- **12731**: Mamba SSD预填充优化和FlashDispatch扩展

## 📊 活跃开发者统计
- **最活跃开发者**: xinhe-nv (多个CI相关PR)
- **主要贡献者**: NVIDIA团队为主，外部贡献者较少
- **技术方向**: 以内部优化、CI/CD、性能改进为主

---
*报告生成时间: 2026-05-12 07:40 AM*  
*数据来源: NVIDIA/TensorRT-LLM GitHub仓库*