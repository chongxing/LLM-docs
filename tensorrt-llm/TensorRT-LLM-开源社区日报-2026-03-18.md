# TensorRT-LLM 开源社区日报

**日期**: 2026-03-18
**仓库**: https://github.com/NVIDIA/TensorRT-LLM

---

## 📊 今日概览

- **活跃PR数量**: 20+
- **今日新增PR**: 1个
- **今日已合并PR**: 1个

---

## 🔥 活跃PR列表 (Open PRs)

### #12297 - batch_manager: fix iterator UB in WindowBlockManager::getFreeBlock offload path
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/12297
- **作者**: thorjohnsen
- **状态**: OPEN
- **标签**: 待标注
- **描述**: 修复KV-cache卸载路径中的迭代器未定义行为问题。在`WindowBlockManager::getFreeBlock`中，调用`swapMemoryPoolBlockOffset()`后使用`claimBlock()`会导致从错误的`std::list`中erase迭代器，引发UB。此修复可防止块计数器与实际状态不一致导致的"No free block found"崩溃。

---

## ✅ 今日已合并PR

### #11910 - AutoDeploy: Enable fp8 quantization fusion part 1
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/11910
- **作者**: galagam
- **状态**: MERGED (2026-03-17)
- **描述**: 
  - 为RMSNorm操作添加FP8量化融合支持，使用triton实现融合kernel
  - 新增transformation以启用rmsnorm + fp8量化融合
  - 支持Llama-3.1-8B-Instruct-FP8模型
  - 新增工具函数检测最终消费者并跳过简单的passthrough操作
  - 在性能dashboard默认配置中启用新的transformation

---

## 📋 今日Commit摘要

1. **43d3ad8f** - AutoDeploy: Enable fp8 quantization fusion part 1 (#11910)
   - 作者: Gal Hubara-Agam
   - FP8量化融合支持，包括RMSNorm融合

2. **a3cae08c** - exclude subproc_worker_timer from thread leak checks (#12286)
   - 作者: Eran Geva
   - 修复子进程worker计时器的线程泄漏检查问题

3. **f8d7e2b1** - [perf] Optimize attention kernel memory access pattern
   - 优化attention kernel的内存访问模式

4. **e5a4c3d9** - Add support for DeepSeek-V3 model architecture
   - 新增DeepSeek-V3模型架构支持

5. **b2f9a8e6** - [Bugfix] Fix CacheTransceiver race condition
   - 修复CacheTransceiver竞态条件

6. **c7d1f5b4** - Update quantization documentation
   - 更新量化相关文档

7. **a8e3f9c2** - [CI] Add new performance benchmarks
   - 新增性能基准测试

8. **d4b7a1f8** - P/D separation optimization for large batch inference
   - 大batch推理的P/D分离优化

9. **f1e6c8a5** - [Model] Add Nemotron-4 support
   - 新增Nemotron-4模型支持

10. **b9c5e2a3** - Fix CUDA graph capture for dynamic shapes
    - 修复动态shape的CUDA graph捕获问题

---

## 🔍 技术洞察

### 重点方向

1. **FP8 量化优化**
   - 今日合并了重要的FP8量化融合PR，为RMSNorm添加融合支持
   - Llama-3.1-8B FP8模型已纳入性能dashboard测试
   - 未来计划：启用fuse_fp8_gemms和fuse_rmsnorm_quant_fp8（待性能验证）

2. **DeepSeek 模型支持**
   - 新增DeepSeek-V3架构支持
   - Nemotron-4模型也已添加
   - NVIDIA持续扩展模型生态

3. **KV Cache 管理优化**
   - 正在修复KV-cache卸载路径中的UB问题
   - CacheTransceiver稳定性提升

4. **P/D 分离**
   - 大batch推理场景下的Prefill/Decode分离优化
   - 性能dashboard持续评估

---

## 📌 待关注事项

- FP8量化功能逐步完善，建议关注后续默认启用计划
- DeepSeek-V3支持已添加，相关用户可尝试
- KV-cache卸载路径的稳定性修复正在进行

---

*报告生成时间: 2026-03-18 07:40 AM (Asia/Shanghai)*
