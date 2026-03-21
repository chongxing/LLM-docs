# TensorRT-LLM 开源社区日报

📅 **日期**: 2026-03-21  
📊 **统计周期**: 2026-03-20 03:06 UTC 至 2026-03-21 03:06 UTC

---

## 📈 今日概览

| 指标 | 数量 |
|------|------|
| 📝 新增 Issues | 42 |
| 🔀 新增 Pull Requests | 35 |
| ✅ 合并 Commits | 16 |
| 🐛 Bug 修复 | 8 |
| ✨ 新功能 | 15 |

---

## 🔥 重要更新

### 1. 新分片基础设施 (New Sharding Infrastructure)
- **PR**: [#12419](https://github.com/NVIDIA/TensorRT-LLM/pull/12419)
- **作者**: @greg-kwasniewski1
- **标签**: `[TRTLLM-12291][feat]`
- **状态**: 开放中
- **描述**: 引入新的分片基础设施，用于提升大规模模型推理性能

### 2. 交互式配方选择器
- **Commit**: `85c89d8`
- **作者**: Venky
- **描述**: 推出带有精心策划配置和按钮网格UI的交互式配方选择器 (#11917)

### 3. 修复分布式服务中的 OOM 问题
- **PR**: [#12377](https://github.com/NVIDIA/TensorRT-LLM/pull/12377) (已合并)
- **作者**: @yingguo-trt
- **标签**: `[https://nvbugs/5814350][fix]`
- **描述**: 修复在分布式服务器中加载权重时的内存溢出(OOM)问题

---

## 🐛 Bug 修复

| PR | 标题 | 作者 | 状态 |
|----|------|------|------|
| #12403 | 修复 PP + ADP + disagg + block reuse 下的虚拟请求崩溃 | @Tabrizian | ✅ 已合并 |
| #12377 | 修复分布式服务中权重加载时的 OOM 问题 | @yingguo-trt | ✅ 已合并 |
| #12397 | 修复 Triton resmooth kernel 在 SM100f 大 MoE 网格上的崩溃 | @Barry-Delaney | 🔄 开放 |
| #12367 | 修复 gemma3 fp8 在 torch.compile=True 时的 inference_mode | @amukkara | 🔄 开放 |
| #12366 | BREAKING: 默认不规范化对数概率 | @achartier | 🔄 开放 |
| #12370 | 将 CUDA_VISIBLE_DEVICES 作为脚本参数传递 | @qiaoxj07 | ✅ 已合并 |
| #12404 | 修复角落情况下的块重用计数 | @tongyuantongyu | 🔄 开放 |
| #12400 | 取消 test_fused_moe_w4a8_nvfp4_fp8[TRTLLM] 的豁免 | @xxi-nv | 🔄 开放 |

---

## ✨ 新功能

| PR | 标题 | 作者 | 状态 |
|----|------|------|------|
| #12419 | 新分片基础设施 | @greg-kwasniewski1 | 🔄 开放 |
| #12416 | 启用 overlap scheduler 的块重用 | @chienchunhung | 🔄 开放 |
| #12414 | 为 Nemotron 模型启用分块前缀 (sm120) | @pamelap-nvidia | 🔄 开放 |
| #12413 | 更好的 KV 缓存统计监控 | @eopXD | 🔄 开放 |
| #12410 | 为 nemotron_h 模型融合 all_reduce 与 norm | @Wanli-Jiang | 🔄 开放 |
| #12385 | 稀疏注意力的时间相关启发式引导 TopK | @longcheng-nv | 🔄 开放 |
| #12384 | 添加 NvTelemetry/GXT 兼容的使用遥测 | @venkywonka | 🔄 开放 |
| #12383 | 在 TrtllmGen 注意力后端支持 MLA | @yihwang-nv | 🔄 开放 |
| #12368 | AutoDeploy: 默认启用 gather logits 和分段 cg | @nvchenghaoz | 🔄 开放 |
| #12362 | 在 LLM API 中添加请求优先级支持 | @pcastonguay | 🔄 开放 |
| #12376-#12371 | 添加多个 Triton 后端支持 | @nvchenghaoz | 🔄 开放 |
| #11917 | 交互式配方选择器 | Venky | ✅ 已合并 |

---

## 🔧 基础设施与维护

| PR | 标题 | 作者 | 状态 |
|----|------|------|------|
| #12415 | 升级 setuptools | @tburt-nv | 🔄 开放 |
| #12418 | 从 ad-run-agent 中移除 gpu-shell 工具 | @govind-ramnarayan | 🔄 开放 |
| #12407 | 重构 M… 中的 warmup 编排 | @liji-nv | 🔄 开放 |
| #12406 | 增强测试重试逻辑 | @yiqingy0 | 🔄 开放 |
| #12402 | 重构安装文档 | @bobboli | 🔄 开放 |
| #12386 | 优化技术博客序列 | @nv-guomingz | ✅ 已合并 |

---

## 📚 文档更新

- **#12402**: 重构安装文档 - @bobboli
- **#12386**: 优化技术博客序列 - @nv-guomingz (已合并)

---

## 📝 测试改进

- **#12408**: 添加 load_state_dict safetensors 回退的单元测试 - @crazydemo
- **#12409**: 修复 LoRA 配置数量不足的测试 - @yufeiwu-nv
- **#12405**: 从豁免列表中移除 test_fused_moe_alltoall_fp4[DeepEP] - @xxi-nv

---

## 🎯 社区亮点

### 活跃贡献者
- **@xinhe-nv**: 多个基础设施豁免 PR
- **@nvchenghaoz**: AutoDeploy 相关多个功能更新
- **@xxi-nv**: 测试豁免和修复

### 新特性预览
1. **交互式配方选择器** - 提供更好的用户体验
2. **请求优先级支持** - 提升多用户场景下的服务质量
3. **稀疏注意力优化** - 针对大模型的内存效率改进

---

## 📋 待解决问题

| Issue | 标题 | 作者 |
|-------|------|------|
| #12420 | trtllm serve 与 gpt-oss-20b 的问题 | @geraldstanje1 |
| #12412 | 在 H200 上支持 GLM-4.7 模型 | @nimkothari |
| #12411 | NVFP4 static _input_prepare 在 RTX 5080 上导致非法内存访问 | @lucaspirola |
| #12401 | 在 H200 上支持 GLM-5 模型 | @bobbych94 |

---

## 🔗 相关链接

- [TensorRT-LLM GitHub 仓库](https://github.com/NVIDIA/TensorRT-LLM)
- [官方文档](https://nvidia.github.io/TensorRT-LLM/)
- [发布说明](https://github.com/NVIDIA/TensorRT-LLM/releases)

---

*本日报由 AI 自动生成，数据来源于 GitHub API*  
*生成时间: 2026-03-21 11:06 CST*
