# TensorRT-LLM 开源社区日报

**日期**: 2026-03-14  
**仓库**: https://github.com/NVIDIA/TensorRT-LLM

---

## 📈 今日概览

| 指标 | 数值 |
|------|------|
| 新增 PR | 24 个 |
| 已合并 | 1 个 |
| 已关闭 | 2 个 |

---

## 🔥 重点 PR

### 🤖 AutoDeploy 模型支持

**#12210** - [None][feat] Add support for Phi4 family in AutoDeploy
- 作者: bmarimuthu-nv
- 状态: OPEN

**#12205** - [None][feat] Add support for Gemma3n and sharedKV cache attention
- 作者: bmarimuthu-nv
- 状态: OPEN

**#12203** - [None][feat] Support Qwen3.5 Dense and MoE Models in Pytorch Backend
- 作者: keddyjin
- 状态: OPEN

**#12191** - [TRTLLM-11267][feat] Add audio support for nemotron
- 作者: 2ez4bz
- 状态: OPEN

---

### ⚡ 性能优化

**#12201** - [None][feat] Add fused allreduce+RMSNorm op
- 作者: lfr-0531
- 状态: OPEN

**#12198** - [None][perf] Fuse and optimize DSA indexer gather/scatter kernels
- 作者: kaiyux
- 状态: OPEN

**#12194** - [TRTLLM-9019][feat] Expose video_pruning_rate as llmargs
- 作者: Wanli-Jiang
- 状态: OPEN

---

### 🔧 核心修复

**#12208** - [TRTLLM-11492][fix] Replace blocking fill loop with non-blocking can_forward gate
- 作者: chienchunhung
- 状态: OPEN

**#12188** - [None][fix] Fix KV cache V2 OOM with separate draft KV cache (EAGLE3/MTP)
- 作者: yizhang-nv
- 状态: OPEN

**#12179** - [None][fix] fix KVCacheManager race conditions via withSequence callback API
- 作者: thorjohnsen
- 状态: OPEN

---

### 🎯 新特性

**#12199** - [TRTLLM-11357][feat] Support interleaved thinking for trtllm-serve
- 作者: JunyiXu-nv
- 状态: OPEN

**#12175** - [None][feat] Add mix-precision checkpoint support in AutoDeploy
- 作者: Frida Hou
- 状态: OPEN

**#12173** - [None][fix] Handle anyOf parameter schemas in Qwen3Coder tool parser
- 作者: Joyjit Daw
- 状态: OPEN

**#10860** - [TRTLLM-10319][feat] Dynamic draft length on spec decode one-model path
- 作者: Zheyu Fu
- 状态: OPEN

---

## 📋 今日 Commit

| SHA | 作者 | 消息 |
|-----|------|------|
| 390a7fd | Suyog Gupta | [None][feat] Qwen3.5 perf optimizations ✅ |
| 1a2849a | Wanli Jiang | [None][fix] Fixed mamba cache issue for pp>1 |
| 3fb931a | Perkz Zheng | [None][feat] add trtllm-gen kernels for glm4.7 |
| fb7c634 | Zheyu Fu | [TRTLLM-10319][feat] Dynamic draft length |
| 9a9dc3c | Joyjit Daw | [None][fix] Handle anyOf in Qwen3Coder tool parser |
| 7754c66 | Frida Hou | [None][feat] Mix-precision checkpoint in AutoDeploy |

---

*报告生成时间: 2026-03-14 09:27*  
*数据来源: GitHub API*
