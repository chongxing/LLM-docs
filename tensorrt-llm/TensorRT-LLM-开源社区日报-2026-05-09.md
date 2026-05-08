# TensorRT-LLM 开源社区日报

**日期**: 2026-05-09（周六）
**仓库**: [NVIDIA/TensorRT-LLM](https://github.com/NVIDIA/TensorRT-LLM)

---

## 📊 今日概览

- **新增PR**: 0（周末）
- **已合并PR**: 20+（过去36小时）
- **已关闭PR**: 6（过去36小时）
- **活跃Open PR**: 50+

---

## 🔥 今日已合并PR（重点）

### 1. [feat] FlashInfer NVFP4 MoE backend for Nemotron (#13773)
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/13773
- **作者**: farazkh80
- **状态**: MERGED
- **关键改动**: 为 Nemotron 模型添加 FlashInfer NVFP4 MoE 后端，支持 SM120/SM121 架构（Blackwell），使用 cutlass 3.10 实现高效量化 MoE 推理。

### 2. [feat] Ring Attention + Unified Context Parallel for VisualGen (#13821)
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/13821
- **作者**: NVShreyas
- **状态**: MERGED
- **关键改动**: 为 VisualGen 引入 Ring Attention 和统一上下文并行支持，扩展多模态生成模型的长序列处理能力。

### 3. [feat] KV reuse in transceiver v2 (#13115)
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/13115
- **作者**: Shixiaowei02
- **状态**: MERGED
- **关键改动**: 在 transceiver v2 中引入 KV cache 重用机制，优化 P/D 分离（disaggregated serving）场景下的 KV 传输效率。

### 4. [feat] AutoDeploy: Optimize DeepSeek-R1 model performance (#12946)
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/12946
- **作者**: taylor-yb-lee
- **状态**: MERGED
- **关键改动**: 优化 AutoDeploy 中 DeepSeek-R1 模型的推理性能。

### 5. [fix] Fix stale TRTLLM attention backend metadata reuse (#13696)
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/13696
- **作者**: yibinl-nvidia
- **状态**: MERGED
- **关键改动**: 修复 TRTLLM attention backend metadata 在请求形状变化时的错误重用问题，提升推理正确性。

### 6. [fix] Fix workspace size for fmha_bmm1_scale_size with FP8ContextMLA (#13880)
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/13880
- **作者**: pengbowang-nv
- **状态**: MERGED
- **关键改动**: 修复 FP8ContextMLA 场景下 fmha_bmm1_scale_size 的工作区大小计算错误。

### 7. [feat] Indexer topk optimization (#13811)
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/13811
- **作者**: pcastonguay
- **状态**: MERGED
- **标签**: deepseek-v4
- **关键改动**: 为 DeepSeek-V4 优化 indexer topk 操作。

### 8. [feat] VisualGen public output API + bench timing decomposition (#13635)
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/13635
- **作者**: zhenhuaw-me
- **状态**: MERGED
- **标签**: VisualGen
- **关键改动**: VisualGen 公开输出 API，并添加基准测试时间分解。

### 9. [feat] Add per-rank iteration stats to /metrics endpoint (#13221)
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/13221
- **作者**: lishicheng1996-nv
- **状态**: MERGED
- **关键改动**: 为 /metrics 端点添加 per-rank 迭代统计信息，增强分布式推理可观测性。

### 10. [perf] Improve TRTLLM MoE autotune in DEP (#13667)
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/13667
- **作者**: rosenrodt
- **状态**: MERGED
- **关键改动**: 优化 DEP（Disaggregated Execution Plan）中的 MoE autotune 性能。

### 11. [feat] DeepSeek-V4 dis-agg CI coverage (b200/b300) (#13874)
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/13874
- **作者**: Shixiaowei02
- **状态**: MERGED
- **关键改动**: 为 DeepSeek-V4 添加 B200/B300 上的 disaggregated  serving CI 测试覆盖。

### 12. [feat] support per-request media_io_kwargs in chat completions (#13779)
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/13779
- **作者**: aswinvisva
- **状态**: MERGED
- **关键改动**: 在 chat completions API 中支持 per-request media_io_kwargs，增强多模态请求灵活性。

### 13. [infra] 多项 CI/Infra 优化
- **#13827** - 为 GB300 启用 pre-merge stage (EmmaQiaoCh)
- **#13382** - 初始化基于规则的变更测试选择 (crazydemo)
- **#13848** - 为 LLM API launcher 应用 NUMA 绑定 (yizhang-nv)
- **#13542** - 将 cubins 转换为压缩存档，减小仓库体积 (tongyuantongyu)
- **#13894** / **#13912** / **#13906** - 豁免/豁免恢复失败测试用例

### 14. [refactor] decouple MTP num_nextn_predict_layers from max_draft_len (#12341)
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/12341
- **作者**: zhaoyangwang-nvidia
- **状态**: MERGED
- **关键改动**: 将 MTP 的 num_nextn_predict_layers 与 max_draft_len 解耦，提升草稿推理灵活性。

---

## 🔥 活跃Open PR（精选）

### 核心特性

1. **MoEScheduler split + MegaMoE EPLB / multi-chunk / CI integration (#13908)**
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/13908
   - 作者: xxi-nv
   - 状态: OPEN | MoE 调度器重构，支持 MegaMoE EPLB 和多 chunk 处理

2. **Parallel VAE independent scaling and fix arg passing (#13873)**
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/13873
   - 作者: NVShreyas
   - 状态: OPEN | 并行 VAE 独立缩放

3. **Add MultimodalModelMixin (#13866)**
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/13866
   - 作者: 2ez4bz
   - 状态: OPEN | 添加多模态模型 Mixin

4. **Add video E2E test for nano v3 omni (#13883)**
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/13883
   - 作者: 2ez4bz
   - 状态: OPEN | nano v3 omni 视频端到端测试

5. **Fix and unwaive AutoDeploy accuracy tests (#13925)**
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/13925
   - 作者: bmarimuthu-nv
   - 状态: OPEN | 修复并恢复 AutoDeploy 精度测试

6. **Fix accuracy regression in DeepSeek models (#13924)**
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/13924
   - 作者: taylor-yb-lee
   - 状态: OPEN | 修复 DeepSeek 模型精度回退

7. **API to configure TeaCache coefficients (#13170)**
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/13170
   - 作者: o-stoner
   - 状态: OPEN | 配置 TeaCache 系数 API

8. **Upgrade dependencies for dlfw 26.03 stack (#12643)**
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/12643
   - 作者: EmmaQiaoCh
   - 状态: OPEN | 升级 dlfw 26.03 依赖栈

### 社区贡献

9. **Reuse hidden_states buffer across CUDA graph captures in Eagle3 (#13920)**
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/13920
   - 作者: ml-inference
   - 状态: OPEN | 社区贡献标签 | Eagle3 中跨 CUDA graph 复用 hidden_states buffer

10. **Import torchvision when used, not at module-level (#13736)**
    - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/13736
    - 作者: tfogal
    - 状态: OPEN | 社区贡献标签 | 延迟导入 torchvision 减少启动开销

11. **Destroy torch distributed process groups on PyExecutor shutdown (#12993)**
    - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/12993
    - 作者: janbernloehr
    - 状态: OPEN | PyExecutor 关闭时清理 torch 分布式进程组

---

## 📋 今日Commit摘要（main分支）

过去24小时主要提交:

1. `43f4b94` - Migrate typed-exception classifier to shared library (#13863) - dpitman-nvda
2. `c28788c` - support per-request media_io_kwargs in chat completions (#13779) - Aswin Visva
3. `f8572ab` - Fix stale TRTLLM attention backend metadata reuse (#13696) - Yibin Li
4. `c87f002` - Add audio E2E test for nano v3 omni (#13750) - William Zhang
5. `6cd23bc` - AutoDeploy: Optimize DeepSeek-R1 model performance (#12946) - Taylor Yeonbok Lee
6. `f3c3cdc` - Fix workspace size calculation for fmha_bmm1_scale_size with FP8ContextMLA (#13880) - Pengbo Wang
7. `d94d9e3` - Waive 1 failed cases for main in pre-merge 37342 (#13912) - Zhanrui Sun
8. `1651d1b` - Add per-rank iteration stats to /metrics endpoint (#13221) - lishicheng1996-nv
9. `cf4d75b` - Improve TRTLLM MoE autotune in DEP (#13667) - Anthony Chang
10. `523c829` - Waive 3 failed AutoDeploy accuracy tests for main (#13906) - Hudayday
11. `2e4b05c` - Enable pre-merge stage for gb300 (#13827) - Emma Qiao
12. `7d37c74` - Waive 1 failed cases for main in post-merge 2710 (#13894) - Zhanrui Sun
13. `27b91f2` - Introduce KV reuse in transceiver v2 (#13115) - Shi Xiaowei
14. `4edd11f` - Unwaive DSR1 V32 Agg TEP tests (#13550) - chenfeiz0326
15. `8e07cea` - VisualGen public output API + bench timing decomposition (#13635) - Zhenhua Wang

---

## 📈 社区洞察

### 技术方向
1. **DeepSeek-V4 全面支持**: 从 topk 优化 (#13811)、精度回退修复 (#13924)、dis-agg CI 覆盖 (#13874) 到 rotate activation gating (#13889)，TRTLLM 正加速完善对 DeepSeek-V4 的支持。
2. **NVFP4/FP8 量化持续深化**: FlashInfer NVFP4 MoE backend (#13773)、FP8ContextMLA 工作区修复 (#13880)，NVIDIA 在 Blackwell 架构的量化推理上持续投入。
3. **P/D 分离 (Disaggregated Serving)**: KV reuse in transceiver v2 (#13115)、dis-agg worker 等待修复 (#13755)、MoE autotune in DEP (#13667)，disaggregated serving 正在成为核心优化方向。
4. **多模态生成 (VisualGen)**: Ring Attention + CP (#13821)、public output API (#13635)、VAE 并行缩放 (#13873)，视觉生成模型支持快速扩展。
5. **MoE 架构演进**: MoEScheduler split + MegaMoE (#13908)、FSE 支持、EPLB / multi-chunk，MoE 调度系统正在重构。

### 基础设施
- GB300 平台 CI 正在逐步启用 (#13827)
- 基于规则的变更测试选择 (#13382) 减少 CI 耗时
- cubin 压缩 (#13542) 减小仓库体积
- AutoDeploy 持续扩展模型覆盖和精度保障

---

*生成时间: 2026-05-09 07:40 AM (Asia/Shanghai)*
*数据来源: GitHub API*
