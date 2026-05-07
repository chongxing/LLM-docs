# TensorRT-LLM 开源社区日报

**日期**: 2026-05-08
**仓库**: https://github.com/NVIDIA/TensorRT-LLM
**Stars**: 13,575 | **Forks**: 2,359 | **Open Issues**: 1,417

---

## 📊 今日概览

- **新增PR**: 1
- **已合并**: 2
- **活跃PR总数**: 大量（最新 #13856）

---

## 🔥 活跃PR列表 (Open PRs)

### #13779 [TRTLLM-12287][feat] support per-request media_io_kwargs in chat completions
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/13779
- **作者**: aswinvisva
- **状态**: OPEN
- **描述**: 允许客户端在 `ChatCompletionRequest` 中通过新的 `media_io_kwargs` 字段按请求覆盖 media loader 参数。按模态替换语义：请求中指定的模态完全替换该模态的服务器默认值；未提及的模态回退到服务器默认。解析逻辑在 `resolve_media_io_kwargs` (chat_utils.py) 中实现，贯穿 `MultimodalDataTracker` 和 `parse_chat_messages_coroutines` 到 image/video/audio loaders。向后兼容，未指定覆盖时保持现有行为。

### #13856 [https://nvbugs/6130334][fix] Fix index error of shared expert when loading weights
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/13856
- **作者**: shuyixiong
- **状态**: OPEN
- **描述**: 修复加载权重时 shared expert 的索引错误。新增 NVFP4 Fused Mixture of Experts 的条件动态量化支持，并改进了权重量化处理流程中的 alpha 计算逻辑。

---

## ✅ 今日新增PR

### #13856 [fix] Fix index error of shared expert when loading weights
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/13856
- **作者**: shuyixiong
- **状态**: OPEN
- **关键改动**: shared expert 权重加载索引修复、NVFP4 Fused MoE 条件动态量化、alpha 计算逻辑增强

---

## ✅ 今日已合并PR

### #12829 [None][feat] Upgrade transformers dependency to 5.3.0
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/12829
- **作者**: longlee0622 (Jonas Li) 等 7 位贡献者
- **状态**: MERGED (2026-05-07 22:36:58Z)
- **规模**: 116 files, +1521 / -560
- **描述**: 将 `transformers` 从 4.x 升级到 **5.3.0**，适配大量 API 移除、重命名和行为变更。关键修复：
  - **RoPE 配置重构**: `rope_scaling` 变为计算属性委托到 `rope_parameters` dict，`rope_type` 替代 `type`
  - **ByteLevel tokenizer 修复** (by @dc3671): LlamaTokenizer 在 v5 中静默替换 ByteLevel pre-tokenizer 为 Metaspace，导致 DeepSeek-V3 GSM8K 精度从 ~63% 暴跌到 ~25%，修复后恢复
  - **rope_theta 保留**: 清除默认 `rope_scaling` 时保留 `rope_theta`，修复 Qwen3-8B 精度从 73%→87%、Qwen3-30B-A3B 从 57%→83%
  - **Fused MoE 权重解融合**: Mixtral/Qwen3Moe/Qwen3Next/Qwen3VL 的 fused expert weights 需拆分 `gate_up_proj` → `w1`/`w3`，FP8 scale 张量也需解融合
  - **移除 API 替换**: `batch_encode_plus`→`__call__`, `HybridCache`→`StaticCache`, `no_init_weights` 移除等
  - **多模态/VL 适配**: Qwen2.5-VL/Qwen3-VL 的 config 字段从新位置解析

### #13861 [https://nvbugs/6143879][fix] add a fixed random seed for the test
- **链接**: https://github.com/NVIDIA/TensorRT-LLM/pull/13861
- **作者**: nvchenghaoz (Chenghao Zhang)
- **状态**: MERGED (2026-05-07 22:56:26Z)
- **描述**: 为 FP8 BMM 量化测试添加固定随机种子，提升测试确定性。本地运行 40 次未复现错误，通过固定 seed 增强测试稳定性。

---

## 📋 今日Commit摘要

```
39f938e - [fix] add a fixed random seed for the test (#13861)
0a6090d - [feat] Upgrade transformers dependency to 5.3.0 (#12829)
fd2eb03 - [infra] Waive 1 failed cases for main in pre-merge 37091 (#13865)
e4e5d31 - [infra] Check in most recent lock file from nightly pipeline
2f79ebb - [chore] add visual gen dir in getMultiGpuFileChanged (#13512)
47d7ecc - [feat] Implement SWA prefill memory reuse (scratch slots) (#13368)
89b9ec0 - [tests] Add E2E accuracy test for nano v3 omni (#13616)
84c69de - [fix] Fix GPT OSS 120B GB200 Test Regression (#13743)
159ba11 - [perf] Offload KvCacheAwareRouter tokenize+block-hash to a thread (#13377)
897c4bf - [feat] Integrate FP4 indexer for DSA on Blackwell (#13340)
```

**关键方向**:
- **生态升级**: transformers 5.3.0 大版本升级 (#12829)，跨 116 个文件，修复多个静默精度回归
- **KV Cache 优化**: SWA prefill memory reuse scratch slots (#13368)、KvCacheAwareRouter tokenize+block-hash 线程卸载 (#13377)
- **Blackwell 硬件**: FP4 indexer 集成用于 DSA (#13340)
- **模型支持**: GPT OSS 120B GB200 测试回归修复 (#13743)、nano v3 omni E2E 精度测试 (#13616)
- **多模态**: per-request media_io_kwargs 支持 (#13779)
- **基础设施**: 预合并失败用例豁免 (#13865)、nightly lock file 更新、visual gen 目录加入多 GPU 变更检测 (#13512)

---

## 🔍 社区洞察

1. **transformers 5.3.0 升级是今日最大事件** — 116 文件改动，耗时近一个月（4/8 创建→5/7 合并）。修复了多个**静默精度回归**（无异常但输出质量暴跌），特别是 ByteLevel tokenizer 和 rope_theta 保留问题。说明大版本依赖升级在推理框架中的风险极高。

2. **KV Cache 持续优化** — SWA prefill memory reuse (scratch slots) 和 KvCacheAwareRouter 的线程卸载，表明 PD 分离场景下的前缀缓存和调度性能是核心优化方向。

3. **Blackwell FP4 生态建设** — FP4 indexer for DSA 集成，NVIDIA 在 Blackwell 新硬件的 FP4 量化推理上持续投入。

4. **多模态 API 精细化** — per-request media_io_kwargs 允许按请求覆盖图像/视频/音频加载参数，说明多模态生产部署需要更细粒度的控制能力。

5. **测试稳定性重视** — 固定随机种子、E2E 精度测试、测试回归快速修复，TRT-LLM 在测试基础设施上保持高投入。

---

*报告自动生成于 2026-05-08 07:40 AM (Asia/Shanghai)*
