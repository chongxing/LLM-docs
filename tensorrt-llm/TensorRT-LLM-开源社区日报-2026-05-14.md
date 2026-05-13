# TensorRT-LLM 开源社区日报

**日期**: 2026-05-14
**仓库**: NVIDIA/TensorRT-LLM

---

## 📊 今日概览

- **活跃PR数量**: ~60+ (Open)
- **今日新增PR**: 45+
- **今日已合并PR**: 24
- **主要方向**: AutoDeploy、DeepSeek-V4、NVFP4、PD 分离、CI/Infra

---

## 🔥 活跃PR列表 (Top Open PRs)

| # | 标题 | 作者 |
|---|------|------|
| #14069 | [fix] Fix Triton MOE memory free when no swizzling enabled | dongfengy |
| #14054 | [fix] Make mxfp4 H20 swizzle WAR more robust | dongfengy |
| #14107 | [chore] apply patches to bench_x branch | richardhuo-nv |
| #14004 | [feat] AutoDeploy re-onboard GPT_OSS | nvchenghaoz |
| #12635 | [infra] add LLM_SBSA_WHEEL_DOCKER_IMAGE | niukuo |
| #13964 | [test] promote DeepSeek-V4-Flash to MoE CI config subset | xxi-nv |
| #13745 | [feat] AutoDeploy: Support Gemma4 mixed-shape pools in KVCacheManager | eopXD |
| #14106 | [fix] Add SPDX Apache-2.0 headers and fix license compliance | bmarimuthu-nv |
| #14074 | [fix] Support DeepSeekV4 routing in perfect-router planner | qiaoxj07 |
| #13298 | [fix] refactor VisualGen examples | o-stoner |

---

## ✅ 今日新增PR (精选)

1. **#14107** - [chore] apply patches to bench_x branch
   - 作者: richardhuo-nv
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/14107

2. **#14106** - [fix] Add SPDX Apache-2.0 headers and fix license compliance for llm-c stack
   - 作者: bmarimuthu-nv
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/14106

3. **#14101** - [test] Speed up EPD disagg tests
   - 作者: 2ez4bz
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/14101

4. **#14096** - Codex/disagg router tokenlists prod 20260513
   - 作者: SimengLiu-nv
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/14096

5. **#14095** - [feat] Add offloading support for visual_gen
   - 作者: rahul-steiger-nv
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/14095

6. **#14092** - [fix] call _extract_metrics for /v1/responses success paths
   - 作者: DhineshPonnarasan
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/14092
   - 标签: Community want to contribute

7. **#14088** - [feat] Refactor to support legacy and 1.x modelopt quant config
   - 作者: Wanli-Jiang
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/14088

8. **#14085** - [feat] Refactor/disagg pool match key
   - 作者: chuangz0
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/14085

9. **#14084** - [fix] Avoid disagg hang on NIXL send failure
   - 作者: Shixiaowei02
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/14084

10. **#14079** - [feat] Add LoRA support to llmapi triton backend
    - 作者: karljang
    - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/14079

11. **#14073** - [Test] Enable DSV4-Flash-Base disaggregated test
    - 作者: Shixiaowei02
    - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/14073
    - 标签: deepseek-v4

12. **#14071** - [fix] Fix hybrid model prefix caching + MTP for sm120
    - 作者: pamelap-nvidia
    - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/14071

13. **#14070** - [perf] Speed up model init: cache support_nvlink()
    - 作者: yuantailing
    - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/14070

---

## ✅ 今日已合并PR (重点)

1. **#14064** - [infra] Add explicit llmapi-compatibility label gh check when applicable
   - 作者: venkywonka
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/14064

2. **#13649** - [feat] Emit per-rank Attention-DP iteration stats
   - 作者: indrajit96
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/13649

3. **#13285** - [feat] LTX2 pipeline refactor part1 - auto upgrade to two stages
   - 作者: yibinl-nvidia
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/13285

4. **#13052** - [feat] Fused cross-head QK Norm + RoPE kernel for WAN
   - 作者: anikaj-eng
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/13052
   - 标签: VisualGen

5. **#13405** - [fix] serve /metrics from tee buffer to avoid blocking
   - 作者: JunyiXu-nv
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/13405

6. **#13997** - [feat] enable TRTLLM-Gen internal routing
   - 作者: tcherckez-nvidia
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/13997

7. **#14026** - [feat] Support NVFP4 dsv4
   - 作者: Tracin
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/14026

8. **#14081** - [fix] AutoDeploy: unwaived test_fuse_qkv_passthrough
   - 作者: MrGeva
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/14081

9. **#14050** - [fix] AutoDeploy: Cleanup CUDA graph memory in shutdown
   - 作者: galagam
   - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/14050

10. **#14083** - [ci] move 3 python_scheduler chunked_prefill cases to post-merge
    - 作者: QiJune
    - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/14083

11. **#14077** - [chore] Make poetry.lock update opt-in in flashinfer-upgrade skip
    - 作者: yihwang-nv
    - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/14077

12. **#14067** - [fix] Fix workspace_size error when running qwen moe
    - 作者: byshiue
    - 链接: https://github.com/NVIDIA/TensorRT-LLM/pull/14067

---

## 🔍 技术趋势与洞察

### 1. DeepSeek-V4 全面支持
- DeepSeek-V4-Flash 被提升到 MoE CI config subset（#13964）
- 启用 DSV4-Flash-Base disaggregated 测试（#14073）
- NVFP4 dsv4 支持合并（#14026）
- DeepSeekV4 routing 在 perfect-router planner 中支持（#14074）
- Hybrid model prefix caching + MTP for SM120 修复（#14071）

### 2. AutoDeploy 生态扩展
- GPT_OSS 重新接入 AutoDeploy（#14004）
- Gemma4 mixed-shape pools 在 KVCacheManager 中支持（#13745）
- AutoDeploy CUDA graph 内存清理修复（#14050）
- test_fuse_qkv_passthrough 取消豁免（#14081）

### 3. PD 分离 (Disaggregation)
- EPD disagg 测试加速 2 倍（#14101）
- Disagg pool match key 重构（#14085）
- NIXL send failure 导致 hang 的修复（#14084）
- Disagg router tokenlists 生产更新（#14096）

### 4. 量化与压缩 (NVFP4 / MXFP4)
- NVFP4 dsv4 支持已合并（#14026）
- MXFP4 H20 swizzle WAR 更健壮（#14054）
- Triton MOE memory free 修复（#14069）
- ModelOpt 1.x quant config 重构支持（#14088）

### 5. 性能优化
- Model init 加速：缓存 support_nvlink()（#14070）
- Attention-DP per-rank iteration stats 发射（#13649）
- First-token early emission with overcommit（#14061）

### 6. 视觉生成 (VisualGen)
- LTX2 pipeline 重构（两阶段自动升级）（#13285）
- VisualGen 示例重构（#13298）
- WAN 模型 fused cross-head QK Norm + RoPE kernel（#13052）
- VisualGen offloading 支持（#14095）

### 7. 社区贡献
- **#14092** - DhineshPonnarasan 贡献的 `_extract_metrics` 修复（标记为 Community want to contribute）
- **#14079** - karljang 贡献的 LoRA support to llmapi triton backend

---

*报告生成时间: 2026-05-14 07:42 AM (Asia/Shanghai)*
