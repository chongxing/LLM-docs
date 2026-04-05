# TensorRT-LLM 开源社区日报

**日期**: 2026-04-06

**仓库**: https://github.com/NVIDIA/TensorRT-LLM

---

## 📊 今日概览

- **活跃PR数量**: 50+
- **新增PR**: 2 (过去24小时)
- **已合并PR**: 6 (过去24小时)
- **Open Issues**: 1233
- **Stars**: 13,286
- **Forks**: 2,256

---

## 🔥 活跃PR列表 (Open PRs)

### 1. **[Don't Merge][None][chore] Default on trtllm-gen attention backend**
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/12732
- **作者**: yihwang-nv
- **状态**: OPEN
- **描述**: TRTLLM-Gen attention backend 默认启用，可通过环境变量 `TRTLLM_ENABLE_TRTLLM_GEN_ATTENTION` 禁用

### 2. **[None][feat] Sparse Attention Refactor for MLA**
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/12733
- **作者**: lfr-0531
- **状态**: DRAFT
- **描述**: DeepSeek稀疏注意力MLA重构，包含MQA统一接口、FlashMLA路径优化、DSA完整端到端支持

### 3. **[#11879][fix] Clamp usedNumBlocks to non-negative in KV cache stats**
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/11922
- **作者**: wojciech-wais
- **状态**: OPEN
- **标签**: Community want to contribute
- **描述**: 修复KV cache block分配可能导致的下溢问题，解决disaggregated serving中负值问题

### 4. **[None][fix] Replace busy-poll sleep in get_async_noblock with zmq async poller**
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/12189
- **作者**: edenfunf
- **状态**: OPEN
- **标签**: Community want to contribute
- **描述**: 将asyncio.sleep(0.01)替换为zmq.asyncio.Poller，消除固定10ms延迟，提升性能

### 5. **[None][feat] Add /v1/models endpoint to OpenAIDisaggServer**
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/12213
- **作者**: edenfunf
- **状态**: OPEN
- **标签**: Community want to contribute
- **描述**: 为OpenAIDisaggServer添加/v1/models端点，支持OpenAI Python SDK、LangChain等工具

### 6. **[None][test] Remove unused tests**
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/12625
- **作者**: xinhe-nv
- **状态**: OPEN
- **描述**: 使用vulture扫描并移除未包含在任何测试列表或数据库中的测试

### 7. **[None][infra] Bump version to 1.2.1**
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/12755
- **作者**: yuanjingx87
- **状态**: OPEN (target: release/1.2.1)
- **描述**: 版本号从1.2.0升级到1.2.1

### 8. **[None][test] Check unused fixtures**
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/12730
- **作者**: xinhe-nv
- **状态**: OPEN
- **描述**: 检查未使用的fixtures，改进代码质量保证

### 9. **[None][chore] Sort waives.txt and add pre-commit hook**
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/12672
- **作者**: chienchunhung
- **状态**: OPEN
- **描述**: 对waives.txt进行字母排序并添加pre-commit hook，便于查找和减少合并冲突

---

## ✅ 今日新增PR

### 1. **[None][test] Check unused fixtures**
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/12730
- **作者**: xinhe-nv
- **描述**: 增强开发和测试基础设施，自动检测未使用的测试资源

### 2. **[None][infra] Bump version to 1.2.1**
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/12755
- **作者**: yuanjingx87
- **描述**: 版本升级到1.2.1

---

## ✅ 今日已合并PR

### 1. **[fix] Add port conflict retry for disaggregated MP tests**
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/12618
- **作者**: reasonsolo
- **Commit**: 73a476a
- **描述**: 为disaggregated MP测试添加端口冲突重试机制

### 2. **[infra] Waive 10 failed cases for main in post-merge 2636**
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/12767
- **作者**: ZhanruiSunCh
- **Commit**: 5548d01
- **描述**: 为主分支的10个失败测试用例添加豁免

### 3. **[fix] Update codes to support nemotron-h corner cases**
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/12620
- **作者**: Wanli-Jiang
- **Commit**: 56e6961
- **描述**: 更新代码以支持Nemotron-H模型的边界情况

### 4. **[fix] Fix Cuda event crash with perf metrics**
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/12639
- **作者**: jthomson04
- **Commit**: 24d2340
- **描述**: 修复性能指标导致的CUDA事件崩溃问题

### 5. **[feat] fix disagg kvcache router for chat API and add disagg benchmark**
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/12337
- **作者**: reasonsolo
- **Commit**: e16317e
- **描述**: 修复chat API的disagg kvcache路由，并添加ai_perf的disagg基准测试

### 6. **[fix] fix hang issues on DGX_B200-8_GPUs**
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/12656
- **作者**: bo-nv
- **Commit**: 1d31029
- **描述**: 修复DGX B200 8 GPU上的hang问题

---

## 📋 今日Commit摘要 (共20个)

| Commit | 作者 | 描述 |
|--------|------|------|
| 73a476a | reasonsolo | Add port conflict retry for disaggregated MP tests |
| 5548d01 | ZhanruiSunCh | Waive 10 failed cases for main |
| 56e6961 | Wanli-Jiang | Update codes to support nemotron-h corner cases |
| 24d2340 | jthomson04 | Fix Cuda event crash with perf metrics |
| e16317e | reasonsolo | fix disagg kvcache router for chat API |
| 1d31029 | bo-nv | fix hang issues on DGX_B200-8_GPUs |
| 6d0a8b3 | qiaoxj07 | Add --custom_tokenizer CLI option to trtllm-bench |
| 3797cb7 | tensorrt-cicd | Check in most recent lock file from nightly pipeline |
| 930d40b | laikhtewari | Clean up latest news + blogs, highlight visual gen |
| 173b350 | suyoggupta | MLIR-based auto-generated elementwise fusion for AutoDeploy |

---

## 🎯 技术焦点

### 1. **稀疏注意力重构 (PR #12733)**
- MLA (Multi-Latent Attention) 稀疏注意力重构进行中
- 统一MQA接口，支持DeepSeek模型
- SM>=100 使用absorption优化，SM<100 使用FlashMLA
- 支持CUDA graph的逐段捕获

### 2. **版本 1.2.1 准备中**
- 版本号已更新至1.2.1
- 发布分支已创建 (release/1.2.1)

### 3. **测试基础设施改进**
- 扫描未使用的测试和fixtures (PR #12625, #12730)
- waives.txt排序和pre-commit hook (PR #12672)
- 添加端口冲突重试机制

### 4. **性能优化**
- ZMQ异步轮询替代忙等待 (PR #12189)
- CUDA kernel优化 (Nemotron-H支持)

---

## 📈 社区动态

- **社区贡献活跃**: 多个PR来自社区贡献者 (wojciech-wais, edenfunf 等)
- **OpenAI API兼容性**: 增强OpenAIDisaggServer，支持标准OpenAI API
- **多模态支持**: 改进chat template处理，支持不同内容格式

---

*报告自动生成于: 2026-04-06 07:40 AM (Asia/Shanghai)*
