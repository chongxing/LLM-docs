# TensorRT-LLM 开源社区日报

**日期**: 2026-03-24  
**仓库**: [NVIDIA/TensorRT-LLM](https://github.com/NVIDIA/TensorRT-LLM)

---

## 📊 今日概览

- **活跃PR**: 100+ 个Open PRs
- **今日合并**: 10 个PR已合并
- **今日提交**: 18 个commits

---

## 🔥 活跃PR列表 (Open PRs)

| PR | 标题 | 作者 |
|----|------|------|
| [#12467](https://github.com/NVIDIA/TensorRT-LLM/pull/12467) | [fix] Grouping deltas within one streaming interval to reduce overhead and report correct cached_tokens | @dongfengy |
| [#12466](https://github.com/NVIDIA/TensorRT-LLM/pull/12466) | [fix] Prebuild disagg ctx response to avoid ctx_request_id race | @peihu-nv |
| [#12464](https://github.com/NVIDIA/TensorRT-LLM/pull/12464) | [doc] Add visual generation models to supported models page | @chang-l |
| [#12462](https://github.com/NVIDIA/TensorRT-LLM/pull/12462) | [fix] Sync CUDA streams before graph capture in PP mode | @bobboli |
| [#12461](https://github.com/NVIDIA/TensorRT-LLM/pull/12461) | [fix] moved AD perf regression tests to AD jobs pre and post merge | @MrGeva |
| [#12460](https://github.com/NVIDIA/TensorRT-LLM/pull/12460) | [fix] fix parallel WAN vae when return_dict=True | @NVShreyas |
| [#12459](https://github.com/NVIDIA/TensorRT-LLM/pull/12459) | [fix] NVTX annotation in sampler.py | @ixlmar |
| [#12458](https://github.com/NVIDIA/TensorRT-LLM/pull/12458) | [fix] Add Disagg Perf Test back as MPI Issue has been fixed | @chenfeiz0326 |
| [#12456](https://github.com/NVIDIA/TensorRT-LLM/pull/12456) | [perf] add Dynamic SMEM block routing in MOE | @jiahanc |
| [#12454](https://github.com/NVIDIA/TensorRT-LLM/pull/12454) | [fix] Fix MoE multi-GPU test collection error for NVFP4+DeepEP | @xxi-nv |
| [#12452](https://github.com/NVIDIA/TensorRT-LLM/pull/12452) | [fix] Relax NVFP4 accuracy tolerance for element-wise activations in MoE backend test | @xxi-nv |
| [#12451](https://github.com/NVIDIA/TensorRT-LLM/pull/12451) | MXFP4 x BF16 CUTLASS MoE backend perf and profiling improvement on Hopper | @StudyingShao |
| [#12450](https://github.com/NVIDIA/TensorRT-LLM/pull/12450) | [chore] Remove temp attention window concept in KV cache manager | @eopXD |
| [#12449](https://github.com/NVIDIA/TensorRT-LLM/pull/12449) | [chore] Remove onboard block switch for KV cache manager | @eopXD |
| [#12448](https://github.com/NVIDIA/TensorRT-LLM/pull/12448) | [fix] Fix bugs in WindowBlockManager destructor statistics | @eopXD |
| [#12446](https://github.com/NVIDIA/TensorRT-LLM/pull/12446) | [fix] improve NIXL agent import error diagnostics | @Shixiaowei02 |
| [#12445](https://github.com/NVIDIA/TensorRT-LLM/pull/12445) | [fix] Remove redundant D2H sync to optimize perf | @hyukn |
| [#12440](https://github.com/NVIDIA/TensorRT-LLM/pull/12440) | [feat] Update TRTLLM MoE cubins | @rosenrodt |
| [#12439](https://github.com/NVIDIA/TensorRT-LLM/pull/12439) | [doc] Update Python coding guidelines | @hnover-nv |
| [#12436](https://github.com/NVIDIA/TensorRT-LLM/pull/12436) | [infra] add ubuntu2404 wheel image for SBSA | @niukuo |

---

## ✅ 今日已合并PR (10个)

| PR | 标题 | 作者 | 合并时间 |
|----|------|------|----------|
| [#12455](https://github.com/NVIDIA/TensorRT-LLM/pull/12455) | [chore] Fixing guardword check | @pcastonguay | 2026-03-23 21:56 |
| [#12442](https://github.com/NVIDIA/TensorRT-LLM/pull/12442) | [feat] Add stride support for conv1d and fused_sigmoid_gating_delta_rule_update | @VALLIS-NERIA | 2026-03-24 01:38 |
| [#12441](https://github.com/NVIDIA/TensorRT-LLM/pull/12441) | [fix] Use ceil_div for head/size calculations | @VALLIS-NERIA | 2026-03-23 16:55 |
| [#12434](https://github.com/NVIDIA/TensorRT-LLM/pull/12434) | [infra] Waive 1 failed cases for main in post-merge 2610 | @ZhanruiSunCh | 2026-03-23 22:00 |
| [#12433](https://github.com/NVIDIA/TensorRT-LLM/pull/12433) | [infra] Waive 4 failed cases for main in post-merge 2611 | @ZhanruiSunCh | 2026-03-23 10:26 |
| [#12426](https://github.com/NVIDIA/TensorRT-LLM/pull/12426) | [chore] Add failed cases into waives.txt | @xinhe-nv | 2026-03-23 13:47 |
| [#12409](https://github.com/NVIDIA/TensorRT-LLM/pull/12409) | [test] Fix lora config less than required config number | @yufeiwu-nv | 2026-03-23 10:31 |
| [#12400](https://github.com/NVIDIA/TensorRT-LLM/pull/12400) | [fix] Unwaive test_fused_moe_w4a8_nvfp4_fp8[TRTLLM] | @xxi-nv | 2026-03-23 10:33 |
| [#12354](https://github.com/NVIDIA/TensorRT-LLM/pull/12354) | [perf] Add cute dsl single pass multi cta cluster topk | @limin2021 | 2026-03-23 17:03 |
| [#12347](https://github.com/NVIDIA/TensorRT-LLM/pull/12347) | [fix] Fix B200 Aggregated CI Perf Test MPI Issue | @chenfeiz0326 | 2026-03-23 15:27 |

**关键改动**:
- **MoE 性能优化**: 添加 stride 支持用于 conv1d 和 fused_sigmoid_gating_delta_rule_update，优化计算效率
- **NVFP4 测试**: 解除 fused_moe_w4a8_nvfp4_fp8 测试的豁免状态，验证量化性能
- **CI 稳定性**: 修复 B200 聚合 CI 性能测试的 MPI 问题，提升测试稳定性
- **CUTLASS 优化**: 添加单通多 CTA 集群 topk 的 cute dsl 实现

---

## 📋 今日Commit摘要

### 核心功能改进
- **MoE 优化**: CUTLASS MoE 后端在 Hopper 架构上的性能提升，支持 MXFP4 x BF16
- **动态 SMEM**: 添加 MOE 动态共享内存块路由优化
- **SJF 调度**: 新增最短作业优先等待队列调度策略 (#12428)

### Bug 修复
- 修复 PP 模式下 CUDA graph capture 前的 stream 同步问题
- 修复 ctx_request_id 竞态条件，预构建 disagg ctx response
- 修复 WindowBlockManager 析构函数统计信息 bug
- 移除冗余的 D2H 同步以优化性能

### 基础设施
- 修复 guardword 检查
- 添加 Ubuntu 24.04 wheel 镜像支持 SBSA
- CI 测试豁免管理更新
- B200 性能测试 MPI 问题修复

### 新功能
- **MLIR 自动融合**: 添加基于 MLIR 的 AutoDeploy 元素级自动融合 (#12427)
- **新分片架构**: 引入新的分片基础设施 (#12419)
- **可视化生成**: 添加视觉生成模型到支持列表

---

## 💡 技术洞察

1. **MoE 架构持续深耕**: TensorRT-LLM 在 Mixture of Experts 上的投入显著，从 CUTLASS kernel 优化到动态 SMEM 路由，NVFP4 量化支持日趋完善

2. **CI/CD 稳定性提升**: 近期多个 PR 专注于测试稳定性和基础设施改进，B200 MPI 问题修复标志着大规模 GPU 集群测试的成熟

3. **AutoDeploy 智能化**: MLIR-based 自动融合功能的引入显示 TensorRT-LLM 正在向更智能的部署优化演进

4. **KV Cache 管理简化**: 移除 temp attention window 和 onboard block switch 概念，简化 KV cache 管理逻辑

---

*Report generated by OpenClaw Agent*  
*数据源: GitHub API*  
*更新时间: 2026-03-24 07:40*
