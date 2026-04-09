# TensorRT-LLM 开源社区日报

**日期**: 2026-04-10  
**仓库**: https://github.com/NVIDIA/TensorRT-LLM

---

## 📊 今日概览

| 指标 | 数值 |
|------|------|
| 活跃PR总数 | 691 |
| 今日新增PR | 12 |
| 今日已合并PR | 5 |
| 今日已关闭PR | 0 |

---

## 🔥 活跃PR列表 (Open PRs)

近期活跃的开放PR（按更新时间排序）：

1. **[#12905](https://github.com/NVIDIA/TensorRT-LLM/pull/12905)** - Acceptance rate based speculation off in one model path  
   作者: zheyuf | 状态: OPEN | [TRTLLM-11558][feat]

2. **[#12862](https://github.com/NVIDIA/TensorRT-LLM/pull/12862)** - VisualGen metadata updates  
   作者: o-stoner | 状态: OPEN | [None][fix]

3. **[#12128](https://github.com/NVIDIA/TensorRT-LLM/pull/12128)** - Wan tests refactor + small transformer fix  
   作者: o-stoner | 状态: OPEN | [TRTLLM-11339][fix]

4. **[#12906](https://github.com/NVIDIA/TensorRT-LLM/pull/12906)** - Unwaive tests after fix  
   作者: dongfengy | 状态: OPEN | [https://nvbugs/5996776][fix]

5. **[#12649](https://github.com/NVIDIA/TensorRT-LLM/pull/12649)** - Video temporal compression to Nemotron Nano and RADIO  
   作者: 2ez4bz | 状态: OPEN | [TRTLLM-11268][feat]

6. **[#12864](https://github.com/NVIDIA/TensorRT-LLM/pull/12864)** - Register AutoDeploy accuracy tests in CI  
   作者: bmarimuthu-nv | 状态: OPEN | [None][fix]

7. **[#12907](https://github.com/NVIDIA/TensorRT-LLM/pull/12907)** - Chunked transfer + early block release for cpp transceiver  
   作者: chienchunhung | 状态: OPEN | [TRTLLM-11608][feat]

8. **[#12827](https://github.com/NVIDIA/TensorRT-LLM/pull/12827)** - Account for the existing multimodal placeholder tokens in a text prompt  
   作者: moraxu | 状态: OPEN | [TRTLLM-11272][fix]

9. **[#12602](https://github.com/NVIDIA/TensorRT-LLM/pull/12602)** - Chunked KV cache transfer with early block release  
   作者: chienchunhung | 状态: OPEN | [TRTLLM-11608][feat]

10. **[#12890](https://github.com/NVIDIA/TensorRT-LLM/pull/12890)** - Update moe hidden_size in communicator for nemotron-h  
    作者: Wanli-Jiang | 状态: OPEN | [None][fix]

11. **[#12855](https://github.com/NVIDIA/TensorRT-LLM/pull/12855)** - fix kv cache allocation is double the budget for vswa + eagle  
    作者: dongfengy | 状态: OPEN | [https://nvbugs/6013562][fix]

12. **[#12419](https://github.com/NVIDIA/TensorRT-LLM/pull/12419)** - New sharding infrastructure  
    作者: greg-kwasniewski1 | 状态: OPEN | [TRTLLM-12291][feat]

13. **[#12548](https://github.com/NVIDIA/TensorRT-LLM/pull/12548)** - VisualGen Cache-DiT + unified cache accelerator  
    作者: o-stoner | 状态: OPEN | [TRTLLM-11403][feat]

14. **[#12421](https://github.com/NVIDIA/TensorRT-LLM/pull/12421)** - Remove deprecated head_first support from fla chunk  
    作者: Bias92 | 状态: OPEN | [None][fix]

15. **[#12866](https://github.com/NVIDIA/TensorRT-LLM/pull/12866)** - AutoDeploy: Onboard google/gemma-4-31B-it dense model, including nvfp4  
    作者: suyoggupta | 状态: OPEN | [None][feat]

> 完整活跃PR列表（691个）请访问: https://github.com/NVIDIA/TensorRT-LLM/pulls

---

## ✅ 今日新增PR

今日共新增 **12** 个PR：

1. **[#12907](https://github.com/NVIDIA/TensorRT-LLM/pull/12907)** - Chunked transfer + early block release for cpp transceiver  
   作者: chienchunhung | 创建: 2026-04-10 07:23 (CST)

2. **[#12906](https://github.com/NVIDIA/TensorRT-LLM/pull/12906)** - Unwaive tests after fix  
   作者: dongfengy | 创建: 2026-04-10 07:13 (CST)

3. **[#12905](https://github.com/NVIDIA/TensorRT-LLM/pull/12905)** - Acceptance rate based speculation off in one model path  
   作者: zheyuf | 创建: 2026-04-10 05:52 (CST)

4. **[#12904](https://github.com/NVIDIA/TensorRT-LLM/pull/12904)** - More vulnerability fix for release/1.2.1  
   作者: yuanjingx87 | 创建: 2026-04-10 05:29 (CST)

5. **[#12903](https://github.com/NVIDIA/TensorRT-LLM/pull/12903)** - Eliminate double PNG encoding in visual gen serving  
   作者: karljang | 创建: 2026-04-10 04:52 (CST)

6. **[#12902](https://github.com/NVIDIA/TensorRT-LLM/pull/12902)** - disable NCCL_SYMMETRIC tactic on GB10 (DGX Spark)  
   作者: nv-lschneider | 创建: 2026-04-10 04:37 (CST)

7. **[#12901](https://github.com/NVIDIA/TensorRT-LLM/pull/12901)** - Skip nvfp4 fused norm if the dim doesn't meet the requirement  
   作者: pamelap-nvidia | 创建: 2026-04-10 04:12 (CST)

8. **[#12899](https://github.com/NVIDIA/TensorRT-LLM/pull/12899)** - Bump CUTLASS from v4.4.1 to v4.4.2  
   作者: mihai-chiorean | 创建: 2026-04-10 03:58 (CST)

9. **[#12898](https://github.com/NVIDIA/TensorRT-LLM/pull/12898)** - ModelExpres - Add PRESHARDED LoadFormat for zero-disk P2P RDMA weight loading  
   作者: KavinKrishnan | 创建: 2026-04-10 02:56 (CST)

10. **[#12897](https://github.com/NVIDIA/TensorRT-LLM/pull/12897)** - Update CUTLASS C++ to 4.4.2  
    作者: depaulmillz | 创建: 2026-04-10 01:45 (CST)

11. **[#12896](https://github.com/NVIDIA/TensorRT-LLM/pull/12896)** - Enable mamba/linear attention cache reuse in scheduler  
    作者: VALLIS-NERIA | 创建: 2026-04-10 01:36 (CST)

12. **[#12895](https://github.com/NVIDIA/TensorRT-LLM/pull/12895)** - Use +64 batch sizes for padding-enabled CUDA graphs  
    作者: yijingl-nvidia | 创建: 2026-04-10 00:52 (CST)

---

## ✅ 今日已合并PR

今日共合并 **5** 个PR：

1. **[#12894](https://github.com/NVIDIA/TensorRT-LLM/pull/12894)** - Revert "[None][infra] Bump black and tornado (#12876)"  
   作者: niukuo | 合并: 2026-04-10 04:25 (CST)

2. **[#12867](https://github.com/NVIDIA/TensorRT-LLM/pull/12867)** - Cherry pick fix for 1.2.0rc6.post4  
   作者: yuanjingx87 | 合并: 2026-04-10 04:40 (CST)

3. **[#12856](https://github.com/NVIDIA/TensorRT-LLM/pull/12856)** - Fix test OOM  
   作者: dongfengy | 合并: 2026-04-10 07:07 (CST)

4. **[#12836](https://github.com/NVIDIA/TensorRT-LLM/pull/12836)** - Set the use_one_model flag to True by default on llm api  
   作者: nv-guomingz | 合并: 2026-04-10 02:16 (CST)

5. **[#12792](https://github.com/NVIDIA/TensorRT-LLM/pull/12792)** - unwaive TestNemotronNanoV3 fp8 tests  
   作者: tcherckez-nvidia | 合并: 2026-04-10 03:51 (CST)

---

## 📋 今日Commit摘要

今日主要提交：

| Commit | 描述 | 作者 |
|--------|------|------|
| `2a0be45b` | Fix test OOM (#12856) | dongfengy |
| `0de88a28` | Add NvTelemetry/GXT-compliant usage telemetry (#12384) | Venky |
| `aed6b6aa` | unwaive TestNemotronNanoV3 fp8 tests (#12792) | tcherckez-nvidia |
| `f8d2090e` | Set use_one_model flag to True by default (#12836) | Guoming Zhang |
| `19363670` | AutoDeploy: Optimize Qwen3.5 perf (#12265) | Taylor Yeonbok Lee |

---

## 🎯 技术亮点

- **KV Cache 传输优化**: PR #12907 和 #12602 聚焦于分块KV缓存传输和早期块释放，这对Disaggregated Serving场景的性能提升至关重要
- **CUTLASS 升级**: 多个PR推动CUTLASS从v4.4.1升级到v4.4.2，带来更好的kernel性能
- **模型支持扩展**: 新增对Gemma-4-31B、DeepSeek-V32等模型的支持
- **Telemetry 集成**: 新增NvTelemetry/GXT合规的使用遥测功能

---

*报告自动生成于 2026-04-10*
