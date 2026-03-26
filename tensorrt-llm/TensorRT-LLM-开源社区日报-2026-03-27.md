## Daily: TensorRT-LLM Community Report
**Date**: 2026-03-27  
**Schedule**: 07:40 AM (Asia/Shanghai)  
**Repository**: NVIDIA/TensorRT-LLM (https://github.com/NVIDIA/TensorRT-LLM)

### 📊 今日概览
- 活跃PR数量: 15件
- 今日已合并PR: 2件
- 新增PR: 待统计
- 重点方向: KV Cache优化、Qwen3-Next支持、AutoDeploy功能

### 🔥 活跃PR列表 (Open PRs)
1. #12554|[None][chore] Fix failing KV Cache Transceiver Tests|ekou24|open|https://github.com/NVIDIA/TensorRT-LLM/pull/12554
2. #12268|[None][fix] Reorder generation_logits for beam search|achartier|open|https://github.com/NVIDIA/TensorRT-LLM/pull/12268
3. #12525|[None][feat] Disable shared paged index in flashinfer|yihwang-nv|open|https://github.com/NVIDIA/TensorRT-LLM/pull/12525
4. #11922|[#11879][fix] Clamp usedNumBlocks in KV cache stats|wojciech-wais|open|Community want to contribute|https://github.com/NVIDIA/TensorRT-LLM/pull/11922
5. #12521|[None][fix] Fix _waiting_requests with KV cache reuse|lancelly|open|https://github.com/NVIDIA/TensorRT-LLM/pull/12521
6. #11370|[None][feat] Qwen3-Next MTP|IzzyPutterman|open|https://github.com/NVIDIA/TensorRT-LLM/pull/11370
7. #12341|[TRTLLM-11508][refactor] decouple MTP num_nextn_predict_layers|zhaoyangwang-nvidia|open|https://github.com/NVIDIA/TensorRT-LLM/pull/12341
8. #12326|[#12332][feat] AutoDeploy: SuperV3 MTP Support|govind-ramnarayan|open|https://github.com/NVIDIA/TensorRT-LLM/pull/12326
9. #12522|LMCache v1 KV connector example|feixiangpeng|open|Community want to contribute|https://github.com/NVIDIA/TensorRT-LLM/pull/12522
10. #12557|[None][feat] Optimize GDN of Qwen3-Next/3.5|rosenrodt|open|https://github.com/NVIDIA/TensorRT-LLM/pull/12557
11. #12315|[None][feat] KV cache-aware ADP router|lancelly|open|https://github.com/NVIDIA/TensorRT-LLM/pull/12315
12. #12427|[None][feat] MLIR-based auto-generated elementwise fusion|suyoggupta|open|https://github.com/NVIDIA/TensorRT-LLM/pull/12427

### ✅ 今日已合并PR
1. #12516|[https://nvbugs/6015329][fix] Use model-level warmup cache key for visual gen pipelines|karljang|VisualGen|https://github.com/NVIDIA/TensorRT-LLM/pull/12516
2. #12102|[TRTLLM-10820][infra] Update dependencies to align with NGC PyTorch 26.02 stack|EmmaQiaoCh||https://github.com/NVIDIA/TensorRT-LLM/pull/12102

### 📋 今日Commit摘要
- 9cc75841: [fix] Use model-level warmup cache key for visual gen pipelines (Kanghwan)
- e44df9e2: [infra] Update dependencies to align with NGC PyTorch 26.02 stack (Emma Qiao)
- ec909660: [infra] Check in most recent lock file from nightly pipeline (TensorRT LLM)
- 93d99f10: [fix] Qwen 3.5 fix 3d position ID handling (Bala Marimuthu)
- ba8b3d8f: [doc] Update Python coding guidelines (Harris Nover)

### 💡 技术洞察
- **Qwen3-Next 支持**: 社区正在积极添加 Qwen3-Next MTP 支持 (#11370, #12557)，这是当前重点方向
- **KV Cache 优化**: 多个PR围绕KV Cache优化，包括Transceiver测试修复 (#12554)、缓存重用优化 (#12521)
- **AutoDeploy 进展**: SuperV3 MTP 支持 (#12326) 和 MLIR-based 自动算子融合 (#12427) 显示AutoDeploy功能持续完善
- **社区贡献**: 有2个标记为"Community want to contribute"的PR，显示社区活跃度良好

### 📚 数据来源
- GitHub API: https://api.github.com/repos/NVIDIA/TensorRT-LLM
- 监控范围: PR、Commits、Issues
- 更新时间: 2026-03-27 07:40 AM (Asia/Shanghai)

> ⚠️ **注意**: 所有PR链接必须包含原始链接格式: `https://github.com/NVIDIA/TensorRT-LLM/pull/{PR_NUMBER}`