# TensorRT-LLM 开源社区日报

**日期**: 2026-05-13
**仓库**: https://github.com/NVIDIA/TensorRT-LLM

---

## 📊 今日概览

| 指标 | 数量 |
|------|------|
| 当前活跃 PR | 30 |
| 新增 PR（24h） | 44 |
| 已合并 PR（24h） | 9 |
| 新增 Commits | 30 |

---

## 🔥 活跃 PR 列表 (Open PRs)

- **#14058** | [fix] Unwaive the test_llm_disagg_streaming_gen_cancelle | by zheyuf | OPEN
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14058
- **#14057** | [feat] AutoDeploy: Basic Disagg Support | by govind-ramnarayan | OPEN
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14057
- **#14056** | [feat] Upgrade NIXL to v1.0.1 and UCX to v1.21.x | by nv-anants | OPEN
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14056
- **#14055** | [fix] Skip Qwen3.5-4B tests pre-hopper | by amukkara | OPEN
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14055
- **#14054** | [fix] Make mxfp4 H20 swizzle WAR more robust | by dongfengy | OPEN
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14054
- **#14053** | [perf] Add TRTLLM_DSV4_MEM_OPTS master switch for DSv4 memory optimization | by qiaoxj07 | OPEN
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14053
- **#14052** | [feat] add single-rank MPI sleep/wakeup and rank-0 collective_rpc shim | by hhzhang16 | OPEN
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14052
- **#14051** | [infra] Waive 1 failed cases for main in pre-merge 37780 | by ZhanruiSunCh | OPEN
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14051
- **#14050** | [fix] AutoDeploy: Cleanup CUDA graph memory in shutdown | by galagam | OPEN
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14050
- **#14049** | [fix] synchronize MLA cache reuse fallback metadata | by DhineshPonnarasan | OPEN
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14049

---

## ✅ 今日新增 PR

- **#14058** | [fix] Unwaive the test_llm_disagg_streaming_gen_cancelle | by zheyuf | OPEN
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14058
- **#14057** | [feat] AutoDeploy: Basic Disagg Support | by govind-ramnarayan | OPEN
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14057
- **#14056** | [feat] Upgrade NIXL to v1.0.1 and UCX to v1.21.x | by nv-anants | OPEN
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14056
- **#14055** | [fix] Skip Qwen3.5-4B tests pre-hopper | by amukkara | OPEN
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14055
- **#14054** | [fix] Make mxfp4 H20 swizzle WAR more robust | by dongfengy | OPEN
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14054
- **#14053** | [perf] Add TRTLLM_DSV4_MEM_OPTS master switch for DSv4 memory optimization | by qiaoxj07 | OPEN
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14053
- **#14052** | [feat] add single-rank MPI sleep/wakeup and rank-0 collective_rpc shim | by hhzhang16 | OPEN
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14052
- **#14051** | [infra] Waive 1 failed cases for main in pre-merge 37780 | by ZhanruiSunCh | OPEN
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14051
- **#14050** | [fix] AutoDeploy: Cleanup CUDA graph memory in shutdown | by galagam | OPEN
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14050
- **#14049** | [fix] synchronize MLA cache reuse fallback metadata | by DhineshPonnarasan | OPEN
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14049
- **#14048** | [fix] Disable block reuse in dsv4 agg tests | by lfr-0531 | OPEN
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14048
- **#14047** | Draft: Kv cache manager v2 cpp | by lowsfer | OPEN
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14047
- **#14046** | [infra] Waive 1 failed cases for main in pre-merge 37743 | by ZhanruiSunCh | OPEN
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14046
- **#14044** | [feat] LTX-2 Ulysses cross-attention for v2a with audio padding | by luyiyun1021 | OPEN
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14044

---

## ✅ 今日已合并 PR

- **#14045** | [infra] Waive 1 failed cases for main in pre-merge 37652 | by ZhanruiSunCh | MERGED
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14045
- **#14035** | [TRTLLM-12631][infra] Split some long stages | by EmmaQiaoCh | MERGED
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14035
- **#14034** | [infra] Waive 1 failed cases for main in pre-merge 37568 | by ZhanruiSunCh | MERGED
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14034
- **#14032** | [infra] Waive 10 failed cases for main in post-merge 2715 | by ZhanruiSunCh | MERGED
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14032
- **#14028** | [fix] Raise server_waiting_timeout to 3600s for DSv4 disagg tests | by Shixiaowei02 | MERGED
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14028
- **#14027** | [fix] unfuse transformers 5.x fused Mixtral MoE for mode | by longlee0622 | MERGED
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14027
- **#14024** | [chore] waive TestDeepSeekV4Flash::test_auto_dtype | by tburt-nv | MERGED
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14024
- **#14011** | [fix] Unwaive standalone llm-c package generation test | by bmarimuthu-nv | MERGED
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14011
- **#14007** | [infra] Waive 1 failed cases for main in pre-merge 37674 | by ZhanruiSunCh | MERGED
  - https://github.com/NVIDIA/TensorRT-LLM/pull/14007

---

## 📋 今日 Commit 摘要

| Commit | 作者 | 描述 |
|--------|------|------|
| 113bc64 | tcherckez-nvidia | [test] add Nemotron Ultra V3 AutoDeploy accuracy test (#13658) |
| 12f9da5 | Bala Marimuthu | [fix] Unwaive standalone llm-c package generation test (#14011) |
| ca876e0 | yuanjingx87 | [infra] Check license with both isPermissive and isProprietary flags (#139... |
| da31744 | Anurag Mukkara | [fix] Qwen3.5 DFlash (#13782) |
| 5c9de1c | William Zhang | [refactor] Add MultimodalModelMixin (#13866) |
| d39047d | Spurthi | [fix] Reuse hidden_states buffer across CUDA graph captures in Eagle3 (#... |
| fe4aa57 | Emma Qiao | [infra] Split some long stages (#14035) |
| 1eb420a | xiweny | [fix] CppMambaHybridCacheManager: handle ranks with zero local mamba layer |
| 0119a23 | mpikulski | [fix] only configure gc thresholds once (#13910) |
| 1118769 | Zhanrui Sun | [infra] Waive 1 failed cases for main in pre-merge 37652 (#14045) |

---

## 💡 社区洞察

### 技术趋势
1. **Disaggregation (P/D分离)** 持续成为热点：PR #14057 新增 AutoDeploy Basic Disagg Support，PR #14028 调整 DSv4 disagg 测试超时
2. **NIXL/UCX 升级**：PR #14056 将 NIXL 升级至 v1.0.1，UCX 升级至 v1.21.x，显示通信层持续演进
3. **内存优化**：PR #14053 引入 DSv4 内存优化主开关，针对 DeepSeek V4 的内存使用进行调优
4. **Qwen 系列支持**：PR #14055 跳过 Qwen3.5-4B pre-hopper 测试，PR #14024  waive DeepSeek V4 Flash 测试
5. **基础设施**：大量 waive 失败用例的 PR（ZhanruiSunCh 主导），显示 CI 稳定性仍是重点

### 值得关注
- **Kv cache manager v2 cpp** (#14047) - 草稿阶段，核心缓存管理重构
- **mxfp4 H20 swizzle WAR** (#14054) - H20 硬件相关的精度 workaround 增强
- **MultimodalModelMixin** (#13866) - 多模态模型支持的基础设施

---

*报告由 OpenClaw 自动生成*
