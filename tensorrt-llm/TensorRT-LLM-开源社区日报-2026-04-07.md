# TensorRT-LLM 开源社区日报 (2026-04-07)

> 本报告由 OpenClaw 自动生成
> 数据来源: NVIDIA/TensorRT-LLM GitHub 仓库
> 生成时间: 2026-04-07 07:40 GMT+8

---

## 📊 今日概览

| 指标 | 数值 |
|------|------|
| 今日新增 PR | 2 |
| 今日已合并 PR | 1 |
| 今日已关闭 PR | 1 |
| 当前活跃 Open PRs | 7 |

---

## 🔥 活跃 PR 列表

按更新时间排序的当前活跃 Pull Requests:

1. **[#12419](https://github.com/NVIDIA/TensorRT-LLM/pull/12419)** [TRTLLM-12291][feat] New sharding infrastructure
   - 作者: greg-kwasniewski1
   - 更新于: 2026-04-06 22:36
   - 描述: 新增分片基础设施，支持30+模型架构的部署配置和Tensor并行优化

2. **[#12781](https://github.com/NVIDIA/TensorRT-LLM/pull/12781)** [TRTLLM-11608][feat] pipelined prefill transfer ⭐ *NEW*
   - 作者: chienchunhung
   - 更新于: 2026-04-06 22:34 (今日创建)
   - 描述: 实现解耦服务中的流水线预填充传输，重叠GPU计算与RDMA传输，隐藏传输延迟

3. **[#12750](https://github.com/NVIDIA/TensorRT-LLM/pull/12750)** [https://nvbugs/5940460][fix] Harden FP8 quant fusion matching after PyTorch 26.02 update
   - 作者: dhansen-nvidia
   - 更新于: 2026-04-06 22:30
   - 描述: 修复PyTorch 26.02更新后FP8量化融合匹配问题

4. **[#12552](https://github.com/NVIDIA/TensorRT-LLM/pull/12552)** [None][chore] Better Empty File Error Handling for trtllm-bench
   - 作者: yijingl-nvidia
   - 更新于: 2026-04-06 22:30
   - 描述: 改进 trtllm-bench 的空文件错误处理

5. **[#12782](https://github.com/NVIDIA/TensorRT-LLM/pull/12782)** [None][fix] Fix Nano chunked prefill ⭐ *NEW*
   - 作者: 2ez4bz
   - 更新于: 2026-04-06 22:29 (今日创建)
   - 描述: 修复支持音频和视觉模态的新模型在chunked prefill下的多模态token计数错误

6. **[#12265](https://github.com/NVIDIA/TensorRT-LLM/pull/12265)** [#11548][feat] AutoDeploy: Optimize Qwen3.5 perf
   - 作者: taylor-yb-lee
   - 更新于: 2026-04-06 22:24
   - 描述: 为Qwen3_5MoeModel启用lm_head分片，支持TP8 MoE和NVFP4量化

7. **[#12272](https://github.com/NVIDIA/TensorRT-LLM/pull/12272)** [TRTLLM-10703][feature] abort, resume for Async RL in verl
   - 作者: hchings
   - 更新于: 2026-04-06 22:23
   - 描述: 为verl中的异步RL添加暂停/恢复和中止所有生成功能

---

## ✅ 今日新增 PR

| PR # | 标题 | 作者 | 链接 |
|------|------|------|------|
| #12781 | [TRTLLM-11608][feat] pipelined prefill transfer | chienchunhung | https://github.com/NVIDIA/TensorRT-LLM/pull/12781 |
| #12782 | [None][fix] Fix Nano chunked prefill | 2ez4bz | https://github.com/NVIDIA/TensorRT-LLM/pull/12782 |

---

## ✅ 今日已合并 PR

| PR # | 标题 | 作者 | 合并时间 | 链接 |
|------|------|------|----------|------|
| #12418 | [None][chore] Remove gpu-shell tool from ad-run-agent | govind-ramnarayan | 2026-04-06 20:01 | https://github.com/NVIDIA/TensorRT-LLM/pull/12418 |

---

## ❌ 今日已关闭 PR (未合并)

| PR # | 标题 | 作者 | 链接 |
|------|------|------|------|
| #11923 | [TRTLLM-11189][fix] VisualGen TeaCache + updates tests | o-stoner | https://github.com/NVIDIA/TensorRT-LLM/pull/11923 |

---

## 📋 今日 Commit 摘要

今日 main 分支新增 5 个 commits:

| Commit | 作者 | 摘要 |
|--------|------|------|
| [2b80f8d](https://github.com/NVIDIA/TensorRT-LLM/commit/2b80f8d15f8cb24ab39c6efb194b3c40285e0194) | William Zhang | [#9306][cleanup] 移除重新定义默认值的字段 |
| [889b81c](https://github.com/NVIDIA/TensorRT-LLM/commit/889b81cd65ab53eece322355b19ad78f0c2b32ea) | govind-ramnarayan | [None][chore] 从ad-run-agent中移除gpu-shell工具 |
| [9457816](https://github.com/NVIDIA/TensorRT-LLM/commit/9457816067b42aaf0c62ff7f3343c804a41f6ada) | yuanjingx87 | [None][infra] 修复源代码扫描 |
| [8b7cc40](https://github.com/NVIDIA/TensorRT-LLM/commit/8b7cc4041bdbbaf8906f93bc948b1cb3370eefc7) | Eran Geva | [#11094][feat] AutoDeploy: silu+mul融合转换 |
| [9321e44](https://github.com/NVIDIA/TensorRT-LLM/commit/9321e44d790cffa56b5a254be7634a60fca818fd) | dongfengy | [https://nvbugs/5849648][fix] 修复GPTOSS Chat Template用于Disagg测试 |

---

## 📈 统计数据

- **Stars**: 13,301 ⭐
- **Forks**: 2,257 🍴
- **Open Issues**: 1,234
- **Watchers**: 13,301

---

*报告由 OpenClaw 自动生成*  
*数据来源: https://github.com/NVIDIA/TensorRT-LLM*
