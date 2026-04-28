# TensorRT-LLM 开源社区日报

**日期**: 2026-04-29
**仓库**: [NVIDIA/TensorRT-LLM](https://github.com/NVIDIA/TensorRT-LLM)

---

## 📊 今日概览

- **新增PR数量**: ~42
- **已合并数量**: 4
- **已关闭数量**: 4
- **活跃Commits**: 20+

---

## 🔥 活跃PR列表 (Open PRs)

### 高优先级 / 重点方向

| PR | 标题 | 作者 | 状态 | 标签 |
|----|------|------|------|------|
| [#13563](https://github.com/NVIDIA/TensorRT-LLM/pull/13563) | Required changes for DeepSeek‑V4 Disaggregated Serving | Shixiaowei02 | OPEN | DeepSeek, Disagg |
| [#12602](https://github.com/NVIDIA/TensorRT-LLM/pull/12602) | Chunked KV cache transfer with early block release | chienchunhung | OPEN | KV Cache, Disagg |
| [#13579](https://github.com/NVIDIA/TensorRT-LLM/pull/13579) | Dynamo KV cache event support for KVCacheManagerV2 | peihu-nv | OPEN | Dynamo, KV Cache |
| [#13575](https://github.com/NVIDIA/TensorRT-LLM/pull/13575) | Support FP4 indexer | mikeiovine | OPEN | FP4, Quantization |
| [#13531](https://github.com/NVIDIA/TensorRT-LLM/pull/13531) | Add MX-only P2P checkpoint loading support | chienchunhung | OPEN | MX, Checkpoint |
| [#13570](https://github.com/NVIDIA/TensorRT-LLM/pull/13570) | enable SageAttention for Wan/FLUX | xrq-phys | OPEN | SageAttention, VisualGen |
| [#13546](https://github.com/NVIDIA/TensorRT-LLM/pull/13546) | disagg support of cpp/KVCacheManager+LinearAttention | VALLIS-NERIA | OPEN | Disagg, LinearAttention |
| [#12944](https://github.com/NVIDIA/TensorRT-LLM/pull/12944) | Chunked prefill for non-contiguous multimodal data | venkywonka | OPEN | ChunkedPrefill, Multimodal |
| [#13549](https://github.com/NVIDIA/TensorRT-LLM/pull/13549) | Improve memory calculation for mamba hybrid models | VALLIS-NERIA | OPEN | Mamba, Memory |
| [#13547](https://github.com/NVIDIA/TensorRT-LLM/pull/13547) | Blogpost for Helix Parallelism | brb-nv | OPEN | Doc, Helix |
| [#13532](https://github.com/NVIDIA/TensorRT-LLM/pull/13532) | AutoDeploy: Remove Two Model Speculative Decoding Support | govind-ramnarayan | OPEN | AutoDeploy, SpecDec |
| [#13542](https://github.com/NVIDIA/TensorRT-LLM/pull/13542) | Convert cubins in repository to compressed archives | tongyuantongyu | OPEN | Build, Cubin |

### DeepSeek 相关

| PR | 标题 | 作者 | 状态 |
|----|------|------|------|
| [#13563](https://github.com/NVIDIA/TensorRT-LLM/pull/13563) | Required changes for DeepSeek‑V4 Disaggregated Serving | Shixiaowei02 | OPEN |
| [#13576](https://github.com/NVIDIA/TensorRT-LLM/pull/13576) | add kv_scales/inv_kv_scales to FP8BlockScalesLinearMethod | jjia-droid | OPEN |
| [#13539](https://github.com/NVIDIA/TensorRT-LLM/pull/13539) | Waive accuracy/test_disaggregated_serving.py::TestDeepSeekV32Exp | yihwang-nv | MERGED |
| [#13533](https://github.com/NVIDIA/TensorRT-LLM/pull/13533) | Reserve activation memory in KV cache budget | tensorrt-cicd | OPEN |

### AutoDeploy / 编译优化

| PR | 标题 | 作者 | 状态 |
|----|------|------|------|
| [#13575](https://github.com/NVIDIA/TensorRT-LLM/pull/13575) | Support FP4 indexer | mikeiovine | OPEN |
| [#13574](https://github.com/NVIDIA/TensorRT-LLM/pull/13574) | Broader capture of piecewise cudagraph | brb-nv | OPEN |
| [#13532](https://github.com/NVIDIA/TensorRT-LLM/pull/13532) | AutoDeploy: Remove Two Model Speculative Decoding Support | govind-ramnarayan | OPEN |
| [#12745](https://github.com/NVIDIA/TensorRT-LLM/pull/12745) | AutoDeploy: Support torch-cudagraph for Eagle | govind-ramnarayan | OPEN |
| [#12864](https://github.com/NVIDIA/TensorRT-LLM/pull/12864) | Register AutoDeploy accuracy tests in CI | bmarimuthu-nv | OPEN |
| [#13418](https://github.com/NVIDIA/TensorRT-LLM/pull/13418) | Remove EdgeLLM ONNX export pipeline from AutoDeploy | nvyocox | OPEN |

---

## ✅ 今日已合并PR

| PR | 标题 | 作者 | 合并时间 |
|----|------|------|----------|
| [#13573](https://github.com/NVIDIA/TensorRT-LLM/pull/13573) | Revert 'Add TestServePrefixAwareScheduling base on LMBenchmark/synth' | tburt-nv | 2026-04-28 |
| [#13548](https://github.com/NVIDIA/TensorRT-LLM/pull/13548) | Waive 2 failed cases for main in post-merge 2696 | ZhanruiSunCh | 2026-04-28 |
| [#13539](https://github.com/NVIDIA/TensorRT-LLM/pull/13539) | Waive accuracy/test_disaggregated_serving.py::TestDeepSeekV32Exp | yihwang-nv | 2026-04-28 |
| [#13526](https://github.com/NVIDIA/TensorRT-LLM/pull/13526) | Upload rendered HTML failure analysis | dpitman-nvda | 2026-04-28 |

**重点分析**:
- **#13526**: 新增 CI 失败分析的 HTML 报告渲染功能，提升调试效率。
- **#13539**: DeepSeekV32 分离式服务测试豁免，表明该功能仍在稳定化阶段。

---

## 📋 今日Commit摘要

```
b5c41f2 | 20:50 | tburt-nv        | [None][fix] Revert 'Add TestServePrefixAwareScheduling' (#13573)
c30d9c7 | 19:48 | SimengLiu-nv    | [None][tests] Add TestServePrefixAwareScheduling base (#13578)
da35deb | 18:28 | dpitman-nvda    | [TRTLLMINF-45][infra] Upload rendered HTML failure analysis (#13526)
4b6d431 | 17:20 | nvyocox         | [None][refactor] Remove EdgeLLM ONNX export pipeline from AutoDeploy (#13418)
cbbf8ee | 17:03 | govind-ramnarayan | [None][chore] AutoDeploy: Relax standalone test timeout (#13514)
1e8640c | 09:36 | crazydemo       | [TRTLLM-12092][infra] Add PR Base Freshness Check Action (#13430)
8e0d4e7 | 08:52 | crazydemo       | [https://nvbugs/5880745][test] GPT-OSS piecewise CUDA graph regression (#13406)
4e830bb | 07:58 | xinhe-nv        | [TRTLLM-12090][infra] add static tests validation hook (#13423)
a1e53a3 | 07:38 | ZhanruiSunCh    | [None][infra] Waive 2 failed cases for main in post-merge 2696 (#13548)
9405224 | 07:28 | yihwang-nv      | [None][chore] Introduce flashinfer-upgrade skill for automated version bumps (#1
4b39c38 | 06:41 | xinhe-nv        | [None][test] Waive 2 failed cases for main in QA CI (#13508)
b82fec0 | 06:17 | crazydemo       | [None][test] Waive failed cases for main in QA CI (#13504)
f3270f9 | 06:03 | bobboli         | [None][infra] enable CUDA line info by default for Debug/RelWithDebInfo (#13334)
a1ccfc8 | 05:36 | galagam         | [None][feat] Reduce sampler overhead with min_tokens (#13480)
0b9dfdc | 03:13 | tensorrt-cicd   | [None][infra] Check in most recent lock file from nightly pipeline
2b7871f | 03:06 | yihwang-nv      | [None][chore] Waive accuracy/test_disaggregated_serving.py::TestDeepSeekV32Exp::
3a790bd | 02:47 | tianyuxbear     | [TRTLLM-10491][test] unwaive DeepSeekV3Lite nvfp4 4gpus test (flaky, self-healed
39294db | 02:41 | EmmaQiaoCh      | [None][infra] Move some tests to post-merge (#13376)
ee6a7b7 | 02:25 | byshiue         | [https://nvbugs/6037654][fix] Set DeepEP low-latency token limit for qwen3 CI to
a761368 | 02:13 | ruodil          | [None][test] add unit test and e2e test for gpt_oss_20b MHA kernel (#12796)
```

---

## 🏷️ 技术方向洞察

### 1. DeepSeek V4 分离式服务 (Disaggregated Serving)
- **#13563**: DeepSeek‑V4 分离式服务的核心变更，社区最关注的功能方向
- **#12602**: Chunked KV cache transfer + early block release，为分离式服务提供底层支持
- **#13546**: cpp/KVCacheManager + LinearAttention 的分离式支持
- **#13579**: Dynamo KV cache event support for KVCacheManagerV2

### 2. FP4 量化与索引器
- **#13575**: FP4 indexer 支持，进一步推进低精度推理
- **#13576**: FP8BlockScalesLinearMethod 添加 kv_scales/inv_kv_scales

### 3. SageAttention 视觉生成模型
- **#13570**: 为 Wan/FLUX 启用 SageAttention 优化
- **#13565**: Eagle3 one-model acceptance rate threshold 调整

### 4. Helix Parallelism
- **#13547**: 新增 Helix Parallelism 博客文章，展示 NVIDIA 的并行推理新方案

### 5. 构建与CI优化
- **#13542**: Cubin 文件转为压缩存档，减少仓库体积
- **#13526**: CI 失败分析 HTML 报告
- **#13430**: PR Base Freshness Check Action

---

*报告生成时间: 2026-04-29 07:40 AM (Asia/Shanghai)*
*数据来源: GitHub API*
