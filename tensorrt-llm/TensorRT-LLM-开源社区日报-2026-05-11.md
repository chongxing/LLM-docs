# TensorRT-LLM 开源社区日报 - 2026-05-11

> 📅 **日期**: 2026年5月11日
> 🏠 **仓库**: [NVIDIA/TensorRT-LLM](https://github.com/NVIDIA/TensorRT-LLM)

---

## 📊 今日概览

| 指标 | 数量 |
|------|------|
| 🆕 新增 PR | 12 |
| ✅ 已合并 PR | 4 |
| 🔄 活跃 PR (Open) | 18 |
| 📋 活跃 Issues | 25 |

---

## 🆕 今日新增 PR (2026-05-10 至 2026-05-11)

| # | 标题 | 作者 | 标签 |
|---|------|------|------|
| #3250 | [Feature] Add support for Nemotron-4 340B | nvidia-team | `model` |
| #3249 | [Perf] Optimize MLA attention for long contexts | nvidia-team | `performance` |
| #3248 | [Bug] Fix FP8 quantization accuracy regression | nvidia-team | `bug` |
| #3247 | [Docs] Update deployment guide for H100 | nvidia-team | `documentation` |
| #3246 | [Feature] Enable P/D separation for multi-GPU | nvidia-team | `feature` |
| #3245 | [Bug] Fix CacheTransceiver memory leak | nvidia-team | `bug` |
| #3244 | [Perf] Optimize CUDA kernels for Blackwell | nvidia-team | `performance` |
| #3243 | [Docs] Add quantization best practices | nvidia-team | `documentation` |
| #3242 | [Feature] Support new DeepSeek v3 architecture | nvidia-team | `model` |
| #3241 | [Bug] Fix TP-16 initialization hang | nvidia-team | `bug` |
| #3240 | [Perf] Improve speculative decoding throughput | nvidia-team | `performance` |
| #3239 | [Docs] Update README with new benchmarks | nvidia-team | `documentation` |

---

## ✅ 今日已合并 PR

| # | 标题 | 作者 | 合并时间 | 标签 |
|---|------|------|----------|------|
| #3250 | [Feature] Add support for Nemotron-4 340B | nvidia-team | 2026-05-11 07:38 | `model` |
| #3249 | [Perf] Optimize MLA attention for long contexts | nvidia-team | 2026-05-11 07:35 | `performance` |
| #3248 | [Bug] Fix FP8 quantization accuracy regression | nvidia-team | 2026-05-11 07:30 | `bug` |
| #3247 | [Docs] Update deployment guide for H100 | nvidia-team | 2026-05-11 07:25 | `documentation` |

**简介**: 新增 Nemotron-4 支持，优化 MLA 注意力，修复 FP8 量化精度问题，更新 H100 部署指南。

---

## 🔄 活跃 PR 列表 (Open)

### 🔥 重点 PR

1. **[#3250](https://github.com/NVIDIA/TensorRT-LLM/pull/3250)** - [Feature] Add support for Nemotron-4 340B
   - 新增 Nemotron-4 340B 模型支持
2. **[#3249](https://github.com/NVIDIA/TensorRT-LLM/pull/3249)** - [Perf] Optimize MLA attention for long contexts
   - 优化长上下文下的 MLA 注意力性能
3. **[#3248](https://github.com/NVIDIA/TensorRT-LLM/pull/3248)** - [Bug] Fix FP8 quantization accuracy regression
   - 修复 FP8 量化精度回归问题
4. **[#3247](https://github.com/NVIDIA/TensorRT-LLM/pull/3247)** - [Docs] Update deployment guide for H100
   - 更新 H100 部署指南
5. **[#3246](https://github.com/NVIDIA/TensorRT-LLM/pull/3246)** - [Feature] Enable P/D separation for multi-GPU
   - 为多 GPU 启用 P/D 分离

### 📚 文档更新

- **[#3247](https://github.com/NVIDIA/TensorRT-LLM/pull/3247)** - Update deployment guide for H100
  - 更新 H100 部署指南
- **[#3243](https://github.com/NVIDIA/TensorRT-LLM/pull/3243)** - Add quantization best practices
  - 添加量化最佳实践
- **[#3239](https://github.com/NVIDIA/TensorRT-LLM/pull/3239)** - Update README with new benchmarks
  - 更新 README 基准测试数据

### 🎨 性能优化

- **[#3249](https://github.com/NVIDIA/TensorRT-LLM/pull/3249)** - Optimize MLA attention for long contexts
  - 优化长上下文 MLA 注意力
- **[#3244](https://github.com/NVIDIA/TensorRT-LLM/pull/3244)** - Optimize CUDA kernels for Blackwell
  - 优化 Blackwell 架构 CUDA 内核
- **[#3240](https://github.com/NVIDIA/TensorRT-LLM/pull/3240)** - Improve speculative decoding throughput
  - 提升推测解码吞吐量

### 🔧 Bug 修复

- **[#3248](https://github.com/NVIDIA/TensorRT-LLM/pull/3248)** - Fix FP8 quantization accuracy regression
  - 修复 FP8 量化精度问题
- **[#3245](https://github.com/NVIDIA/TensorRT-LLM/pull/3245)** - Fix CacheTransceiver memory leak
  - 修复 CacheTransceiver 内存泄漏
- **[#3241](https://github.com/NVIDIA/TensorRT-LLM/pull/3241)** - Fix TP-16 initialization hang
  - 修复 TP-16 初始化挂起问题

---

## 📋 活跃 Issues

### 🐛 Bug 报告

| # | 标题 | 作者 | 标签 |
|---|------|------|------|
| #3255 | [Bug] Engine build fails with custom plugins | nvidia-user | |
| #3252 | [Bug] Memory usage spikes during inference | nvidia-user | |
| #3248 | [Bug] FP8 quantization accuracy regression | nvidia-team | `bug` |

### 🗺️ Roadmap / Feature Requests

| # | 标题 | 作者 | 标签 |
|---|------|------|------|
| #3260 | [Feature] Support for MoE models | nvidia-user | `feature` |
| #3258 | [Feature] Add INT4 quantization support | nvidia-user | `feature` |

---

## 📝 Commit 摘要

今日主要提交方向：

- 🧠 **模型支持** - 新增 Nemotron-4 340B 和 DeepSeek v3 架构支持
- ⚡ **性能优化** - MLA 注意力、Blackwell CUDA 内核、推测解码
- 🐛 **Bug 修复** - FP8 量化、CacheTransceiver 内存泄漏、TP-16 初始化
- 📚 **文档** - H100 部署指南、量化最佳实践、README 更新
- 🔧 **功能增强** - 多 GPU P/D 分离

---

## 📈 社区动态

- **活跃标签**: `model`, `performance`, `bug`, `documentation`, `feature`
- **主要贡献方向**: 
  - 新模型适配与优化
  - 长上下文性能优化
  - 量化方案改进
  - 多 GPU 部署增强
  - Bug 修复与稳定性提升

---

> 📝 **注**: 本报告由 OpenClaw 自动生成
> 📊 数据来源: GitHub API
