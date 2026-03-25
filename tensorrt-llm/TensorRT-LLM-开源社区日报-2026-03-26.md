# TensorRT-LLM 开源社区日报

**日期**: 2026-03-26
**仓库**: https://github.com/NVIDIA/TensorRT-LLM

---

## 📊 今日概览

- **新增PR**: 0（过去24小时）
- **活跃Open PRs**: 50+
- **今日已合并**: 4+
- **今日更新Issues**: 1200+

---

## 🔥 活跃PR列表 (Open PRs)

### 核心功能更新

| PR | 标题 | 作者 | 状态 | 标签 |
|----|------|------|------|------|
| [#12362](https://github.com/NVIDIA/TensorRT-LLM/pull/12362) | [feat] Adding support for request priority in LLM API | pcastonguay | OPEN | feat |
| [#12512](https://github.com/NVIDIA/TensorRT-LLM/pull/12512) | [feat] Add support for FlexKV | pcastonguay | OPEN | feat |
| [#12361](https://github.com/NVIDIA/TensorRT-LLM/pull/12361) | [feat] LTX-2 Two Stage pipeline support | yibinl-nvidia | OPEN | feat |
| [#12384](https://github.com/NVIDIA/TensorRT-LLM/pull/12384) | [feat] Add NvTelemetry/GXT-compliant usage telemetry | venkywonka | OPEN | feat |

### 代码重构与优化

| PR | 标题 | 作者 | 状态 | 标签 |
|----|------|------|------|------|
| [#12342](https://github.com/NVIDIA/TensorRT-LLM/pull/12342) | [chore] PyTransceiver code consolidation | Shixiaowei02 | OPEN | chore |
| [#11469](https://github.com/NVIDIA/TensorRT-LLM/pull/11469) | [cleanup] Add supplemental ruff lint for legacy files | venkywonka | OPEN | cleanup |
| [#12268](https://github.com/NVIDIA/TensorRT-LLM/pull/12268) | [fix] Reorder generation_logits to align with beam search output | achartier | OPEN | fix |
| [#12446](https://github.com/NVIDIA/TensorRT-LLM/pull/12446) | [fix] improve NIXL agent import error diagnostics | Shixiaowei02 | OPEN | fix |

### 性能优化

| PR | 标题 | 作者 | 状态 | 标签 |
|----|------|------|------|------|
| [#12301](https://github.com/NVIDIA/TensorRT-LLM/pull/12301) | [perf] Optimize KV cache for unified memory systems (DGX Spark) | mihai-chiorean | OPEN | perf |

---

## ✅ 今日已合并PR

| PR | 标题 | 作者 | 关键改动 |
|----|------|------|----------|
| [#12114](https://github.com/NVIDIA/TensorRT-LLM/pull/12114) | [fix] Qwen 3.5 fix 3d position ID handling | bmarimuthu-nv | 修复 Qwen 3.5 3D位置ID处理问题 |
| [#12439](https://github.com/NVIDIA/TensorRT-LLM/pull/12439) | [doc] Update Python coding guidelines | hnover-nv | Python编码指南更新 |
| [#12536](https://github.com/NVIDIA/TensorRT-LLM/pull/12536) | [infra] Waive 4 failed cases for main in post-merge 2617 | ZhanruiSunCh | CI测试豁免 |
| [#12506](https://github.com/NVIDIA/TensorRT-LLM/pull/12506) | [feat] Add PDL support to CuTE DSL top-k kernels | limin2021 | CuTE DSL top-k kernel添加PDL支持 |
| [#12514](https://github.com/NVIDIA/TensorRT-LLM/pull/12514) | [doc] Document temperature-adjusted logprobs in TRT backend | achartier | TRT后端温度调整logprobs文档 |
| [#12495](https://github.com/NVIDIA/TensorRT-LLM/pull/12495) | [chore] Add failed cases into waives.txt | xinhe-nv | 添加失败测试用例豁免 |
| [#12397](https://github.com/NVIDIA/TensorRT-LLM/pull/12397) | [fix] Fix Triton resmooth kernel crash on SM100f | Barry-Delaney | 修复SM100f大MoE网格Triton重平滑kernel崩溃 |
| [#12463](https://github.com/NVIDIA/TensorRT-LLM/pull/12463) | [chore] Fix ltx-2 Model Checkpoint Issue | yibinl-nvidia | 修复LTX-2模型检查点问题 |
| [#12518](https://github.com/NVIDIA/TensorRT-LLM/pull/12518) | [infra] Waive flaky DeepSeekV3Lite disagg serving test | bo-nv | 豁免不稳定测试 |
| [#12486](https://github.com/NVIDIA/TensorRT-LLM/pull/12486) | [infra] Waive pre-merge failed 5090 test | yuanjingx87 | 豁免5090测试失败 |
| [#12460](https://github.com/NVIDIA/TensorRT-LLM/pull/12460) | [fix] fix parallel WAN vae when return_dict=True | NVShreyas | 修复并行WAN VAE问题 |
| [#12366](https://github.com/NVIDIA/TensorRT-LLM/pull/12366) | [fix] BREAKING: Do not normalize log probs by default | achartier | 重大变更：默认不归一化log概率 |
| [#12445](https://github.com/NVIDIA/TensorRT-LLM/pull/12445) | [fix] Remove redundant D2H sync to optimize perf | hyukn | 移除冗余D2H同步优化性能 |
| [#12454](https://github.com/NVIDIA/TensorRT-LLM/pull/12454) | [fix] Replace skipped TRTLLM NVFP4 test in B300 CI list | xxi-nv | 替换跳过的B300 CI测试 |
| [#12285](https://github.com/NVIDIA/TensorRT-LLM/pull/12285) | [chore] AutoDeploy accuracy tests: Use Llama3.1-8B-Instruct official checkpoints | galagam | AutoDeploy精度测试更新 |
| [#12494](https://github.com/NVIDIA/TensorRT-LLM/pull/12494) | [infra] Waive flaky DeepSeekV3Lite disagg serving test | hyukn | 豁免不稳定测试 |
| [#11843](https://github.com/NVIDIA/TensorRT-LLM/pull/11843) | [feat] Small optimizations for mamba_mixer2.py decode | hnover-nv | mamba_mixer2.py解码优化 |

---

## 🐛 重点关注Issues

| Issue | 标题 | 状态 | 关键问题 |
|-------|------|------|----------|
| [#12230](https://github.com/NVIDIA/TensorRT-LLM/issues/12230) | [Bug]: Qwen3-Next-80B FP8/NVFP4 — Autotuner IndexError and Triton Illegal Instruction on DGX Spark | OPEN | **DGX Spark (aarch64 Blackwell)** 上的Qwen3-Next-80B模型运行问题：<br>1. FP8自动调优器IndexError崩溃<br>2. NVFP4 Triton非法指令错误 |

---

## 📋 今日Commit摘要

### 核心功能提交

1. **[#12290][fix] Qwen 3.5 fix 3d position ID handling** - 修复 Qwen 3.5 模型的3D位置ID处理问题

2. **[#12506][feat] Add PDL support to CuTE DSL top-k kernels** - 为CuTE DSL top-k kernel添加PDL支持

3. **[#12366][fix] BREAKING: Do not normalize log probs by default** - 重大变更：默认不再归一化log概率

### 性能优化

4. **[#12445][fix] Remove redundant D2H sync to optimize perf** - 移除冗余的设备到主机同步以优化性能

5. **[#11843][feat] Small optimizations for mamba_mixer2.py decode** - mamba_mixer2.py解码阶段的小优化

### 稳定性修复

6. **[#12397][fix] Fix Triton resmooth kernel crash on SM100f for large MoE grids** - 修复SM100f架构上大MoE网格的Triton重平滑kernel崩溃问题

7. **[#12460][fix] fix parallel WAN vae when return_dict=True** - 修复return_dict=True时的并行WAN VAE问题

### 基础设施

8. **Waive flaky tests** - 多个PR豁免不稳定测试用例（DeepSeekV3Lite disagg serving, 5090测试等）

---

## 💡 社区洞察

### 技术趋势

1. **DGX Spark (aarch64 Blackwell) 支持**: 社区正积极优化对NVIDIA新硬件DGX Spark的支持，特别是统一内存系统的KV缓存优化和ARM架构兼容性。

2. **请求优先级调度**: PR #12362 引入了请求优先级支持，允许用户指定0-1范围内的调度优先级，这对多租户LLM服务场景非常重要。

3. **Telemetry与可观测性**: PR #12384 添加了符合NvTelemetry/GXT标准的使用遥测功能，便于生产环境监控和优化。

4. **FlexKV支持**: PR #12512 正在添加FlexKV支持，这是一种新的KV缓存管理技术。

### 值得关注的技术方向

- **统一内存优化**: DGX Spark的128GB统一内存架构需要新的优化策略
- **多模态支持**: LTX-2两阶段pipeline支持（PR #12361）显示TensorRT-LLM正在扩展视频生成能力
- **代码质量**: 大量lint和代码重构PR显示项目对代码质量的重视

### 兼容性注意事项

⚠️ **重大变更**: PR #12366 改变了log概率的默认行为（不再归一化），这可能影响依赖旧行为的应用。

---

> **注**: 本报告基于 GitHub API 自动生成，每日 07:40 AM (Asia/Shanghai) 更新
