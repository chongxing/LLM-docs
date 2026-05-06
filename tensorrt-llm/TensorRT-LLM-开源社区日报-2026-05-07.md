# TensorRT-LLM 开源社区日报

**日期**: 2026-05-07
**仓库**: [NVIDIA/TensorRT-LLM](https://github.com/NVIDIA/TensorRT-LLM)
**Stars**: 13,567 ⭐ | **Forks**: 2,353 | **Open Issues**: 1,410

---

## 📊 今日概览

- 新增PR: **36** (过去24小时)
- 已合并PR: **25**
- 当前Open PR: **~30**
- 新增Issues: **2**

---

## 🔥 活跃PR列表 (Open PRs)

| # | 标题 | 作者 | 标签 |
|---|------|------|------|
| [#13616](https://github.com/NVIDIA/TensorRT-LLM/pull/13616) | [TRTLLM-12173][tests] Add E2E accuracy test for nano v3 omni | 2ez4bz | |
| [#13800](https://github.com/NVIDIA/TensorRT-LLM/pull/13800) | [TRTLLM-12466][refactor] Refactor hashing with new container types | 2ez4bz | |
| [#13788](https://github.com/NVIDIA/TensorRT-LLM/pull/13788) | [None][fix] make FA4 proper pip dependency | o-stoner | |
| [#13478](https://github.com/NVIDIA/TensorRT-LLM/pull/13478) | [TRTLLM-13429][feat] Switch DeepSeek/NemotronH/Qwen3/Qwen3.5-MoE to sh | greg-kwasniewski1 | |
| [#13809](https://github.com/NVIDIA/TensorRT-LLM/pull/13809) | [TRTLLMINF-54][feat] SlurmConfig boundary throws typed InfraFailure | dpitman-nvda | |
| [#12946](https://github.com/NVIDIA/TensorRT-LLM/pull/12946) | [#12784][feat] AutoDeploy: Optimize DeepSeek-R1 model performance | taylor-yb-lee | |
| [#13813](https://github.com/NVIDIA/TensorRT-LLM/pull/13813) | [None][feat] Add MegaMoEFusedMoE backend for DeepSeek V4 | Tabrizian | |
| [#13820](https://github.com/NVIDIA/TensorRT-LLM/pull/13820) | [https://nvbugs/6144226][fix] Add runtime check `or hidden_states_sf i | tensorrt-cicd | |
| [#13630](https://github.com/NVIDIA/TensorRT-LLM/pull/13630) | [#13580][fix] AutoDeploy: Fix Gemma3n/4 E2B variants | bmarimuthu-nv | |
| [#13782](https://github.com/NVIDIA/TensorRT-LLM/pull/13782) | [None][fix] Qwen3.5 DFlash | amukkara | |
| [#13618](https://github.com/NVIDIA/TensorRT-LLM/pull/13618) | [https://nvbugs/6079901][fix] Avoid divide-by-zero in KVCacheTransfer… | farazkh80 | |
| [#13347](https://github.com/NVIDIA/TensorRT-LLM/pull/13347) | [https://nvbugs/6093911][fix] Fix disagg gen-only benchmark hang under | chienchunhung | |
| [#13649](https://github.com/NVIDIA/TensorRT-LLM/pull/13649) | [None][feat] Emit per-rank Attention-DP iteration stats | indrajit96 | |
| [#13808](https://github.com/NVIDIA/TensorRT-LLM/pull/13808) | [None][feat] Update FMHA cubins for head_dim 80 | yuxianq | |
| [#13743](https://github.com/NVIDIA/TensorRT-LLM/pull/13743) | [https://nvbugs/6115290][fix] Fix GPT OSS 120B GB200 Test Regression | yijingl-nvidia | |

---

## ✅ 今日新增PR (部分精选)

| # | 标题 | 作者 | 标签 |
|---|------|------|------|
| [#13820](https://github.com/NVIDIA/TensorRT-LLM/pull/13820) | [https://nvbugs/6144226][fix] Add runtime check `or hidden_states_sf i | tensorrt-cicd | |
| [#13818](https://github.com/NVIDIA/TensorRT-LLM/pull/13818) | [https://nvbugs/6104831][feat] [wedge-trace] heartbeats at disagg KV t | yifjiang | Community want to contribute |
| [#13817](https://github.com/NVIDIA/TensorRT-LLM/pull/13817) | [https://nvbugs/6126378][fix] Skip dataset generation if the destinati | tensorrt-cicd | |
| [#13815](https://github.com/NVIDIA/TensorRT-LLM/pull/13815) | [None][feat] Exact multimodal KV blockhashing | venkywonka | |
| [#13814](https://github.com/NVIDIA/TensorRT-LLM/pull/13814) | [https://nvbugs/6108841][fix] Merge Moe Kernel for GLM 5 | yijingl-nvidia | |
| [#13813](https://github.com/NVIDIA/TensorRT-LLM/pull/13813) | [None][feat] Add MegaMoEFusedMoE backend for DeepSeek V4 | Tabrizian | |
| [#13812](https://github.com/NVIDIA/TensorRT-LLM/pull/13812) | [None][chore] update CI allowlist 2026-05-06 | tburt-nv | |
| [#13811](https://github.com/NVIDIA/TensorRT-LLM/pull/13811) | [None][feat] Indexer topk opt | pcastonguay | |
| [#13810](https://github.com/NVIDIA/TensorRT-LLM/pull/13810) | [#13560][fix] AutoDeploy: cut per-iter host overhead | MrGeva | |
| [#13809](https://github.com/NVIDIA/TensorRT-LLM/pull/13809) | [TRTLLMINF-54][feat] SlurmConfig boundary throws typed InfraFailure | dpitman-nvda | |

---

## ✅ 今日已合并PR (部分精选)

| # | 标题 | 作者 | 标签 |
|---|------|------|------|
| [#13585](https://github.com/NVIDIA/TensorRT-LLM/pull/13585) | [TRTLLM-12297][fix] Multimodal hash for VideoData ignores extracted au | moraxu | |
| [#13569](https://github.com/NVIDIA/TensorRT-LLM/pull/13569) | [TRTLLM-12390][feat] Support fractional synthetic acceptance rates | mikeiovine | |
| [#13739](https://github.com/NVIDIA/TensorRT-LLM/pull/13739) | [None][test] Add Wan 2.2 5B TI2V pipeline test in CI | chang-l | |
| [#13531](https://github.com/NVIDIA/TensorRT-LLM/pull/13531) | [TRTLLM-11851][feat] Add MX-only P2P checkpoint loading support for TR | chienchunhung | |
| [#13812](https://github.com/NVIDIA/TensorRT-LLM/pull/13812) | [None][chore] update CI allowlist 2026-05-06 | tburt-nv | |
| [#13549](https://github.com/NVIDIA/TensorRT-LLM/pull/13549) | [None][feat] Improve memory calculation for mamba hybrid models when b | VALLIS-NERIA | |
| [#13410](https://github.com/NVIDIA/TensorRT-LLM/pull/13410) | [None][fix] Add support for context multiCtaKv sparse fmha | heyuhhh | |
| [#13684](https://github.com/NVIDIA/TensorRT-LLM/pull/13684) | [https://nvbugs/6082303][fix] Treat <tool_call> as implicit end-of-rea | tijyojwad | |
| [#13780](https://github.com/NVIDIA/TensorRT-LLM/pull/13780) | [TRTLLMINF-54][feat] Migrate retry consumers to classify() + isFinalAt | dpitman-nvda | |
| [#12743](https://github.com/NVIDIA/TensorRT-LLM/pull/12743) | [https://nvbugs/5969216][fix] Ministral3 loading fix | evezhier | |

---

## 📋 今日Commit摘要

```
bf61b67 [TRTLLM-12297][fix] Multimodal hash for VideoData ignores extracted au (#13585) — moraxu
a13c19b [TRTLLM-12390][feat] Support fractional synthetic acceptance rates (#13569) — mikeiovine
d4b64e3 [None][test] Add Wan 2.2 5B TI2V pipeline test in CI (#13739) — chang-l
84aeb9d [TRTLLM-11851][feat] Add MX-only P2P checkpoint loading support for TR (#13531) — chienchunhung
6b10fc3 [None][chore] update CI allowlist 2026-05-06 (#13812) — tburt-nv
2899e92 [None][feat] Improve memory calculation for mamba hybrid models when b (#13549) — VALLIS-NERIA
901c223 [None][fix] Add support for context multiCtaKv sparse fmha (#13410) — heyuhhh
49f1ebb [https://nvbugs/6082303][fix] Treat <tool_call> as implicit end-of-rea (#13684) — tijyojwad
06fc27b [TRTLLMINF-54][feat] Migrate retry consumers to classify() + isFinalAt (#13780) — dpitman-nvda
651853b [https://nvbugs/5969216][fix] Ministral3 loading fix (#12743) — evezhier
```

---

## 🔍 重点Issues讨论

| # | 标题 | 作者 | 标签 |
|---|------|------|------|
| [#13819](https://github.com/NVIDIA/TensorRT-LLM/issues/13819) | [Feature]: Enabled MTP for qwen3.5 | suyoggupta | feature request, Speculative Decoding |
| [#13816](https://github.com/NVIDIA/TensorRT-LLM/issues/13816) | [Feature]: [AutoDeploy] GPT-OSS-120b perf analysis | taylor-yb-lee | feature request, AutoDeploy |

---

## 🎯 社区洞察

### 技术方向趋势

1. **DeepSeek V4 / MoE 优化** — NVIDIA 持续推进：
   - [#13813](https://github.com/NVIDIA/TensorRT-LLM/pull/13813) **Add MegaMoEFusedMoE backend for DeepSeek V4** — Tabrizian 提交，为 DeepSeek V4 引入新的融合 MoE 后端，预计显著提升 MoE 推理效率
   - [#13478](https://github.com/NVIDIA/TensorRT-LLM/pull/13478) 切换 DeepSeek/NemotronH/Qwen3/Qwen3.5-MoE 到新的共享 MoE 路径，减少内存占用
   - AutoDeploy 持续优化 DeepSeek-R1 性能 [#12946](https://github.com/NVIDIA/TensorRT-LLM/pull/12946)

2. **推测解码 (Speculative Decoding)** — 活跃度提升：
   - [#13569](https://github.com/NVIDIA/TensorRT-LLM/pull/13569) 已合并：支持 fractional synthetic acceptance rates，提升 draft model 接受率控制精度
   - [#13819](https://github.com/NVIDIA/TensorRT-LLM/issues/13819) 新 feature request：为 Qwen3.5 启用 MTP (Multi-Token Prediction)

3. **PD 分离 / Disaggregation** — 工程化进展：
   - [#13818](https://github.com/NVIDIA/TensorRT-LLM/pull/13818) 社区贡献：在 disagg KV transfer 中添加 heartbeat 追踪
   - [#13618](https://github.com/NVIDIA/TensorRT-LLM/pull/13618) 修复 KVCacheTransfer 中的除零错误
   - [#13347](https://github.com/NVIDIA/TensorRT-LLM/pull/13347) 修复 disagg gen-only benchmark 在 profile 模式下的 hang 问题

4. **多模态 & 视觉模型** — 持续完善：
   - [#13585](https://github.com/NVIDIA/TensorRT-LLM/pull/13585) 已合并：修复 VideoData 多模态 hash 忽略提取音频的问题
   - [#13739](https://github.com/NVIDIA/TensorRT-LLM/pull/13739) 已合并：为 Wan 2.2 5B TI2V 添加 CI pipeline 测试
   - [#13815](https://github.com/NVIDIA/TensorRT-LLM/pull/13815) 新增：精确的多模态 KV blockhashing

5. **工具调用 / 推理协议** — 协议层优化：
   - [#13684](https://github.com/NVIDIA/TensorRT-LLM/pull/13684) 已合并：将 `<tool_call>` 视为隐式的 end-of-reasoning，改善工具调用流的推理终止逻辑

6. **Attention / FMHA Kernel** — 底层优化：
   - [#13808](https://github.com/NVIDIA/TensorRT-LLM/pull/13808) 更新 FMHA cubins 支持 head_dim=80
   - [#13410](https://github.com/NVIDIA/TensorRT-LLM/pull/13410) 已合并：支持 context multiCtaKv sparse fmha
   - [#13649](https://github.com/NVIDIA/TensorRT-LLM/pull/13649) 新增：per-rank Attention-DP 迭代统计信息

---

## 📈 数据统计

| 指标 | 数值 | 日变化 |
|------|------|--------|
| Stars | 13,567 | 稳定 |
| Forks | 2,353 | 稳定 |
| Open Issues | 1,410 | 稳定 |
| Open PRs | ~30 | 活跃 |
| 24h 新增PR | 36 | 活跃 |
| 24h 合并PR | 25 | 活跃 |

---

> 📌 **注意**: 本报告基于 GitHub API 自动生成，PR/Issue 数据可能存在延迟。如有遗漏请补充。
> 
> 生成时间: 2026-05-07 07:40 AM (Asia/Shanghai)
