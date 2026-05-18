# TensorRT-LLM 开源社区日报

**日期**: 2026-05-19
**仓库**: [NVIDIA/TensorRT-LLM](https://github.com/NVIDIA/TensorRT-LLM)

---

## 📊 今日概览

- **新增PR**: 48
- **已合并**: 12
- **活跃Open PR**: 50+
- **核心动态**: DeepSeek-V4 持续修复、AutoDeploy 模型覆盖扩展、CuteDSL/NVF4 优化、Disagg KV 生命周期加固

---

## 🔥 活跃PR列表 (Open)

### 高优先级 / 值得关注

1. **[#14057] [#11423][feat] AutoDeploy: Basic Disagg Support** | @govind-ramnarayan
   - AutoDeploy 基础 PD 分离支持（草案）
   - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14057

2. **[#13630] [#13580][fix] AutoDeploy: Support Gemma3n/4 E2B variants** | @bmarimuthu-nv
   - Gemma3n/4 E2B 变体模型支持
   - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/13630

3. **[#13713] [fix] Disaggregated KV transfer: lifecycle, cancellation, and quiescence hardening** | @chienchunhung
   - PD 分离 KV 传输生命周期、取消和静默加固
   - 标签: `nvbugs/6104831`
   - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/13713

4. **[#14008] [fix] AutoDeploy: Fix Eagle cu_seqlen data race** | @govind-ramnarayan
   - AutoDeploy Eagle cu_seqlen 数据竞争修复
   - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14008

5. **[#14268] [feat] Indexer TopK: opt-in multi-pass radix + fused split-work paths** | @dcampora
   - TopK 索引器多通道 radix + 融合 split-work 路径
   - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14268

6. **[#14250] [perf] fuse quant into norm and rope** | @mingyangHao
   - 量化融合到 norm 和 rope
   - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14250

7. **[#14256] [feat] Add swiglu clamp to CuteDSL NVF4 MOE FC1 kernels** | @liyuhannnnn
   - CuteDSL NVF4 MOE FC1 kernel 添加 swiglu clamp
   - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14256

8. **[#14241] [perf] DSv4 mem-opts: RoPE cap + MHC pool routing** | @lancelly
   - DeepSeek-V4 内存优化：RoPE cap + MHC 池路由
   - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14241

9. **[#14240] [fix] Autotuner deadlock fixes** | @lancelly
   - Autotuner 死锁修复
   - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14240

10. **[#14264] [feat] Pre-allocate multimodal encoder attention workspace** | @yechank-nvidia
    - 多模态编码器注意力工作区预分配
    - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14264

11. **[#14263] [feat] Generalize encoder pre-allocation to multiple modalities** | @yechank-nvidia
    - 编码器预分配泛化到多模态
    - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14263

12. **[#14246] [feat] visual-gen /metrics iteration stats producer** | @JunyiXu-nv
    - Visual Gen 指标迭代统计生产者
    - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14246

13. **[#14277] [feat] add Visual Gen Auto path for Diffusers transformers** | @karljang
    - Visual Gen Auto 路径支持 Diffusers transformers（草案）
    - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14277

14. **[#14278] [test] Add Qwen3-32B FP8 disagg stress test** | @brnguyen2
    - Qwen3-32B FP8 PD 分离压力测试（草案）
    - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14278

15. **[#14245] [fix] Fence V2 KV cache block-offset H2D copy on KV manager stream** | @Barry-Delaney
    - V2 KV cache block-offset H2D 复制 fence
    - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14245

### DeepSeek-V4 系列修复

16. **[#14254] [fix] DSv4 o_a_proj: decouple from use_cute_dsl_blockscaling_bmm** | @lishicheng1996-nv | 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14254
17. **[#14238] [fix] Restore DSV4 routed-expert swiglu_limit on TRTLLM-Gen** | @Barry-Delaney | 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14238
18. **[#14261] [fix] DeepSeek-V3.2 tokenizer load on transformers 5.x** | @Hudayday | 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14261
19. **[#14236] [test] Add DeepSeek V4 Pro disagg tests** | @lfr-0531 | 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14236
20. **[#14232] [fix] DeepSeek-V3 OOM and artifacts path** | @dominicshanshan | 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14232
21. **[#14251] [fix] fix cache transceiver for dsv4 branch** | @chuangz0 | 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14251
22. **[#14231] [fix] Auto-disable kv_cache_config.enable_block_reuse for multimodal models** | @ssam18 | 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14231

### 其他活跃PR

23. **[#14247] [chore] Update flashinfer-python from 0.6.10 to 0.6.11** | @lfr-0531 | 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14247
24. **[#14249] [fix] Exclude UCX tcp transport in disagg unit tests** | @Shixiaowei02 | 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14249
25. **[#14248] [fix] Restore Mistral Large 3 text-only processor** | @byshiue | 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14248
26. **[#14242] [fix] Update JIT libs using upgraded NVCC version 13.2** | @heyuhhh | 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14242
27. **[#14244] [refactor] clean up AttentionForwardArgs** | @yuxianq | 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14244
28. **[#14230] [refactor] avoid TrtllmAttentionArgs by sourcing thop kwargs from existing objects** | @yuxianq | 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14230
29. **[#14275] [chore] Drop sink_token_length from PyTorch attention surface** | @yuxianq | 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14275
30. **[#14159] [doc] Add Configuration Schema for LlmArgs, AutoDeploy, and VisualGeneration Classes** | @arysef | 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14159
31. **[#13917] [doc] Add guide for integrating custom kernels in PyTorch backend** | @chang-l | 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/13917
32. **[#13919] [feat] Support T5 encoder-decoder models in the PyTorch backend** | @cascade812 | 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/13919
33. **[#13401] [feat] add W4A8_MXFP4_FP8 MoE unit test support** | @xxi-nv | 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/13401
34. **[#13736] [chore] Import torchvision when used, not at module-level** | @tfogal | 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/13736
35. **[#14151] [refactor] Delegate MX checkpoint loading to ModelExpress** | @zhengluo-nv | 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14151

---

## ✅ 今日已合并PR

1. **[#14252] [fix] Revert PR13758's code changes on Limiting maximum warmup token count** | @chenfeiz0326
   - 回滚最大 warmup token 数量限制
   - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14252

2. **[#14243] [fix] AutoDeploy: skip bf16 Nemotron-Nano-V3 accuracy test on <80GB GPUs** | @galagam
   - 80GB 以下 GPU 跳过 Nemotron-Nano-V3 bf16 精度测试
   - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14243

3. **[#14235] [infra] Waive 13 failed cases for main in post-merge 2722** | @ZhanruiSunCh
   - CI 豁免 13 个失败用例
   - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14235

4. **[#14234] [chore] Rename .claude skills with trtllm- prefix and drop ci-failure-retrieval** | @kaiyux
   - .claude skills 重命名 + 清理 ci-failure-retrieval
   - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14234

5. **[#14228] [fix] Unwaive test_autodeploy_from_registry[google_gemma-3-1b]** | @marinayanov
   - 恢复 Gemma-3-1b AutoDeploy 注册表测试
   - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14228

6. **[#14195] [doc] Update spec dec support matrices** | @mikeiovine
   - 投机解码支持矩阵更新
   - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14195

7. **[#14193] [fix] Add SPDX Apache-2.0 headers to auto_deploy test files** | @bmarimuthu-nv
   - AutoDeploy 测试文件添加 Apache-2.0 头
   - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14193

8. **[#14179] [fix] swap layer.mlp in place for Mixtral modelopt export** | @longlee0622
   - Mixtral modelopt 导出时 mlp 原地交换
   - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14179

9. **[#14178] [test] add metric for trtllm-bench** | @ruodil
   - trtllm-bench 指标添加
   - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14178

10. **[#14220] [chore] AutoDeploy: Removed perf tests from L0** | @MrGeva
    - AutoDeploy L0 级别移除性能测试
    - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14220

11. **[#14221] [test] Waive 1 failed cases for main in QA CI** | @xinhe-nv
    - QA CI 豁免 1 个失败用例
    - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14221

12. **[#14211] [chore] gitignore NFS system temporary files** | @zhenhuaw-me
    - gitignore NFS 临时文件
    - 🔗 https://github.com/NVIDIA/TensorRT-LLM/pull/14211

---

## 📋 今日Commit摘要 (main分支)

| Commit | 作者 | 摘要 |
|--------|------|------|
| `1f1e9aa` | @janbernloehr | [#13076][fix] Destroy torch distributed process groups on PyExecutor shutdown |
| `355ba94` | @cascade812 | [TRTLLM-12462][fix] Fix FP8 block scaling GEMM autotuner cache growth |
| `ca0aad2` | @kaiyux | [None][chore] Rename .claude skills with trtllm- prefix |
| `e4c9a7c` | @mikeiovine | [None][doc] Update spec dec support matrices |
| `98359d8` | @marinayanov | [fix] Unwaive test_autodeploy_from_registry[google_gemma-3-1b] |
| `d42ec3d` | @chenfeiz0326 | [fix] Revert PR13758's code changes on Limiting maximum warmup token count |
| `a6fc155` | @xinhe-nv | [test] Waive 1 failed cases for main in QA CI |
| `4abc1fd` | @galagam | [fix] AutoDeploy: skip bf16 Nemotron-Nano-V3 accuracy test on <80GB GPUs |
| `c681127` | @MrGeva | [#8542][feat] AutoDeploy: add DeepSeek-R1 FP8 perf test on 8x B200 post merge |
| `f830224` | @bmarimuthu-nv | [fix] Add SPDX Apache-2.0 headers to auto_deploy test files |
| `bd54511` | @MrGeva | [#14173][chore] AutoDeploy: Removed perf tests from L0 |
| `2ad0060` | @zhenhuaw-me | [chore] gitignore NFS system temporary files |
| `7095183` | @Wanli-Jiang | [fix] Fix bugs related with nemotron-nas model |
| `61a64e6` | @lowsfer | [chore] Refactor salting support for KVCacheManagerV2 |
| `371c126` | @brb-nv | [fix] Beam history copies only on terminal steps |

---

## 🎯 技术趋势与洞察

### 1. DeepSeek-V4 生态系统持续深耕
TensorRT-LLM 对 DeepSeek 系列模型的投入持续加大：
- **内存优化**: RoPE cap + MHC pool routing（#14241）
- **死锁修复**: Autotuner deadlock（#14240）
- **Tokenizer 兼容性**: Transformers 5.x 适配（#14261）
- **PD 分离**: V4 Pro disagg 测试（#14236）、cache transceiver 修复（#14251）、KV block-offset H2D fence（#14245）
- **量化融合**: quant 融合到 norm 和 rope（#14250）
- **routed-expert 修复**: swiglu_limit 恢复（#14238）、o_a_proj 解耦（#14254）

### 2. AutoDeploy 架构演进
- **PD 分离基础**: Basic Disagg Support 草案（#14057）
- **模型覆盖**: Gemma3n/4 E2B 变体（#13630）、Eagle cu_seqlen 数据竞争修复（#14008）
- **测试稳定**: Transformers 5.5.3 单元测试修复（#14273）、Nemotron-Nano-V3 80GB GPU 适配（#14243）
- **合规**: 测试文件添加 Apache-2.0 头（#14193）

### 3. 多模态 / Visual Generation
- **工作区预分配**: 多模态编码器注意力预分配（#14264）泛化到多模态（#14263）
- **Visual Gen Auto 路径**: Diffusers transformers 支持（#14277）
- **/metrics 迭代统计**: Visual Gen 指标生产者（#14246）
- **配置文档**: LlmArgs、AutoDeploy、VisualGeneration 配置模式（#14159）

### 4. CuteDSL / NVF4 性能优化
- **swiglu clamp**: CuteDSL NVF4 MOE FC1 kernel 添加 clamp（#14256）
- **量化融合**: quant 融合到 norm 和 rope（#14250）
- **Indexer TopK**: 多通道 radix + 融合 split-work 路径（#14268）
- **FP8 autotuner**: 缓存增长修复（355ba94）

### 5. 基础设施与稳定性
- **PyExecutor**: torch 分布式进程组在 shutdown 时正确销毁（1f1e9aa）
- **NVCC 13.2**: JIT 库升级（#14242）
- **KVCacheManagerV2**: salting 支持重构（61a64e6）
- **FlashInfer**: 0.6.10 → 0.6.11 升级（#14247）
- **CI 清理**: 大量 QA 失败用例豁免清理（xinhe-nv、ZhanruiSunCh 系列）

---

> 📌 **数据来源**: GitHub API | 生成时间: 2026-05-19 07:40 CST
