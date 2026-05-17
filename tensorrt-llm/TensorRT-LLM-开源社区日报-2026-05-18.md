# TensorRT-LLM 开源社区日报

**日期**: 2026-05-18

---

## 📊 今日概览
- 新增PR数量: 14个
- 已合并PR数量: 8个
- 活跃Open PRs: 多个
- 今日Commit数量: 10+
- 重点关注: verl E2E测试增强、AutoDeploy模型扩展、DFlash性能优化、MoE修复

---

## 🔥 活跃PR列表 (Open PRs)

### #13401 [TRTLLM-11127][feat] add W4A8_MXFP4_FP8 MoE unit test support
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/13401
- **作者**: xxi-nv
- **状态**: OPEN
- **标签**: 
- **描述**: 为W4A8_MXFP4_FP8量化算法添加MoE单元测试覆盖，支持CUTLASS和TRTLLM-gen fused MoE方法。

### #14061 [https://nvbugs/5615248][perf] Early emission of first-token with overlap scheduling
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14061
- **作者**: brb-nv
- **状态**: OPEN
- **标签**: api-compatible
- **描述**: 使用重叠调度实现首token提前发射的性能优化。

### #14209 [None][chore] Early emission of first response with overlap scheduling - redo
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14209
- **作者**: brb-nv
- **状态**: OPEN
- **描述**: 首响应提前发射的重做版本。

### #14226 [https://nvbugs/6094070][fix] Skip ray-marked integration tests when --run-ray is not set
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14226
- **作者**: shikicloud
- **状态**: OPEN
- **描述**: 当未设置--run-ray时跳过ray标记的集成测试。

### #14227 [None][test] Add verl post-merge E2E gates (0.5B convergence + 7B Megatron smoke)
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14227
- **作者**: shikicloud
- **状态**: OPEN
- **描述**: 为verl添加合并后E2E门控测试（0.5B收敛 + 7B Megatron冒烟测试）。

### #14229 [None][test] Add verl standalone E2E weight-sync guard
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14229
- **作者**: shikicloud
- **状态**: OPEN
- **描述**: 添加verl独立E2E权重同步守卫测试。

### #14228 [https://nvbugspro.nvidia.com/bug/6059036][fix] Unwaive test_autodeploy_from_registry[google_gemma-3-1b] and test_encode_matches_huggingface[gemma-3-1b]
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14228
- **作者**: marinayanov
- **状态**: OPEN
- **描述**: 恢复Gemma-3-1b AutoDeploy和Huggingface编码匹配测试。

### #14213 [None][fix] Avoid dp_size x ep_size double-count in MegaMoEDeepGemm SymmBuffer
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14213
- **作者**: qiaoxj07
- **状态**: OPEN
- **描述**: 修复MegaMoEDeepGemm SymmBuffer中dp_size x ep_size重复计算的问题。

### #14219 [None][feat] DSv4: enable GVR Heuristic Top-K for compress_ratio=4
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14219
- **作者**: longcheng-nv
- **状态**: OPEN
- **描述**: DeepSeek V4：为compress_ratio=4启用GVR启发式Top-K。

---

## ✅ 今日新增PR

### #14229 [None][test] Add verl standalone E2E weight-sync guard
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14229
- **作者**: shikicloud
- **状态**: OPEN
- **创建时间**: 2026-05-17

### #14228 [fix] Unwaive test_autodeploy_from_registry[google_gemma-3-1b]
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14228
- **作者**: marinayanov
- **状态**: OPEN
- **创建时间**: 2026-05-17

### #14227 [None][test] Add verl post-merge E2E gates
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14227
- **作者**: shikicloud
- **状态**: OPEN
- **创建时间**: 2026-05-17

### #14226 [fix] Skip ray-marked integration tests when --run-ray is not set
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14226
- **作者**: shikicloud
- **状态**: OPEN
- **创建时间**: 2026-05-17

### #14222 [None][fix] MegaMoE: reject TEP topology in __init__
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14222
- **作者**: lishicheng1996-nv
- **状态**: OPEN
- **创建时间**: 2026-05-17

### #14221 [None][test] Waive 1 failed cases for main in QA CI
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14221
- **作者**: xinhe-nv
- **状态**: OPEN
- **创建时间**: 2026-05-17

### #14220 [#14173][chore] AutoDeploy: Removed perf tests from L0
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14220
- **作者**: MrGeva
- **状态**: OPEN
- **创建时间**: 2026-05-17

### #14219 [None][feat] DSv4: enable GVR Heuristic Top-K for compress_ratio=4
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14219
- **作者**: longcheng-nv
- **状态**: OPEN
- **创建时间**: 2026-05-17

### #14218 [#14173][fix] AutoDeploy: forward garbage_collection_gen0_threshold to PyExecutor
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14218
- **作者**: MrGeva
- **状态**: OPEN
- **创建时间**: 2026-05-17

### #14217 [None][chore] Remove closed bugs
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14217
- **作者**: xinhe-nv
- **状态**: OPEN
- **创建时间**: 2026-05-17

### #14216 [None][fix] Support KV cache manager V2 stats
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14216
- **作者**: yizhang-nv
- **状态**: OPEN
- **创建时间**: 2026-05-17

### #14214 [None][fix] Return 3-tuple in check_gen_transfer_status early-return
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14214
- **作者**: lingjiew
- **状态**: OPEN
- **创建时间**: 2026-05-17

### #14213 [None][fix] Avoid dp_size x ep_size double-count in MegaMoEDeepGemm SymmBuffer
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14213
- **作者**: qiaoxj07
- **状态**: OPEN
- **创建时间**: 2026-05-17

### #14211 [None][chore] gitignore NFS system temporary files
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14211
- **作者**: zhenhuaw-me
- **状态**: OPEN
- **创建时间**: 2026-05-17

### #14209 [None][chore] Early emission of first response with overlap scheduling - redo
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14209
- **作者**: brb-nv
- **状态**: OPEN
- **创建时间**: 2026-05-17

---

## ✅ 今日已合并PR

### #14069 [https://nvbugs/6152892][fix] Fix Triton MOE memory free when no swizzling enabled
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14069
- **作者**: dongfengy
- **描述**: 修复未启用swizzling时Triton MOE的内存释放问题。

### #14215 [https://nvbugs/6184143][chore] AutoDeploy Waive DeciLM and GraniteMoEHybrid failures
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14215
- **作者**: galagam
- **描述**: 豁免AutoDeploy中DeciLM和GraniteMoEHybrid的失败测试。

### #14212 [https://nvbugs/6183549][test] Waive DeepSeek V4 Flash MEGAMOE accuracy test
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14212
- **作者**: lfr-0531
- **描述**: 豁免DeepSeek V4 Flash MEGAMOE精度测试。

### #14210 [None][chore] gitignore temporary NFS system files .nfs*
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14210
- **作者**: zhenhuaw-me
- **描述**: 将NFS临时文件(.nfs*)添加到gitignore。

### #13787 [#13446][feat] AutoDeploy: Add Remaining Models From Model Onboarding Sprint Part 1 (03/19)
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/13787
- **作者**: govind-ramnarayan
- **描述**: AutoDeploy模型上线冲刺第一批剩余模型添加。

### #13996 [TRTLLM-11228][feat] Perf optimizations for DFlash
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/13996
- **作者**: ziyixiong-nv
- **描述**: DFlash性能优化。

### #14204 [None][infra] Waive 1 failed cases for main in pre-merge 38428
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14204
- **作者**: ZhanruiSunCh
- **描述**: 豁免pre-merge 38428中的1个失败用例。

### #14010 [TRTLLM-12533][refactor] Move Media IO modality loading into MediaIO Interfaces
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/14010
- **作者**: Aswin Visva
- **描述**: 将Media IO模态加载重构到MediaIO接口中。

### #13977 [None][perf] Enable in-flight batching for Nemotron3 Nano Omni multimodal encoder
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/13977
- **作者**: Yechan Kim
- **描述**: 为Nemotron3 Nano Omni多模态编码器启用in-flight batching。

---

## 📋 今日Commit摘要

1. **06cff70** - [fix] Fix Triton MOE memory free when no swizzling enabled (#14069) - Dongfeng Yu
   - 修复Triton MOE在无swizzling时的内存释放问题
2. **4d20ed1** - [chore] AutoDeploy Waive DeciLM and GraniteMoEHybrid failures (#14215) - Gal Hubara-Agam
   - 豁免AutoDeploy特定模型失败测试
3. **667bec0** - [infra] Check in most recent lock file from nightly pipeline - TensorRT LLM CI
   - 提交夜间流水线的最新lock文件
4. **65a5b34** - [feat] AutoDeploy: Add Remaining Models From Model Onboarding Sprint Part 1 (#13787) - Govind Ramnarayan
   - 扩展AutoDeploy支持的模型范围
5. **566fd23** - [feat] Perf optimizations for DFlash (#13996) - Ziyi Xiong
   - DFlash推理性能优化
6. **9555305** - [infra] Waive 1 failed cases for main in pre-merge 38428 (#14204) - Zhanrui Sun
   - 豁免pre-merge失败用例
7. **aa52b40** - [infra] Check in most recent lock file from nightly pipeline - TensorRT LLM CI
   - 更新lock文件
8. **3309769** - [refactor] Move Media IO modality loading into MediaIO Interfaces (#14010) - Aswin Visva
   - Media IO模态加载接口重构
9. **3a354dc** - [perf] Enable in-flight batching for Nemotron3 Nano Omni multimodal encoder (#13977) - Yechan Kim
   - Nemotron3 Nano Omni多模态编码器批处理优化

---

## 💡 社区洞察

- **verl生态扩展**: 今日3个verl相关PR（#14229、#14227、#14226）聚焦E2E测试增强，显示NVIDIA在强化verl（开源RL框架）的集成质量保障
- **AutoDeploy持续扩展**: #13787合并和#14218/#14220/#14228等新PR显示AutoDeploy在模型覆盖和稳定性上的持续投入
- **DFlash性能优化**: #13996和#14212围绕DFlash的优化和测试豁免，说明DFlash作为核心推理路径正在积极打磨
- **MoE架构修复**: #14213修复MegaMoEDeepGemm缓冲计算重复计数，#14222拒绝TEP拓扑，显示MoE架构在多专家并行场景下的持续收敛
- **重叠调度首token优化**: #14061和#14209/#14208关注首token/首响应提前发射，是用户体验的关键优化方向
- **DeepSeek V4支持**: #14219启用GVR Heuristic Top-K，延续DSv4的优化工作

---

*报告由 OpenClaw 自动生成*