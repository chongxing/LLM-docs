# TensorRT-LLM 开源社区日报

**日期**: 2026-04-09
**仓库**: https://github.com/NVIDIA/TensorRT-LLM

## 📊 今日概览
- 新增PR数量: 2
- 已合并数量: 20
- 已关闭数量: 0
- 当前活跃PR数: 30

## 🔥 活跃PR列表 (Open PRs)

| PR | 标题 | 作者 | 状态 | 标签 |
|----|------|------|------|------|
| [#12860](https://github.com/NVIDIA/TensorRT-LLM/pull/12860) | Increase FMHA test timeout | djns99 | OPEN | - |
| [#12760](https://github.com/NVIDIA/TensorRT-LLM/pull/12760) | feat: add Prometheus metrics collection for gRPC server mode | ConnorLi96 | OPEN | Community want to contribute |
| [#12787](https://github.com/NVIDIA/TensorRT-LLM/pull/12787) | [None][feat] Add the invocation path for mamba2 mtp custom op | JadoTu | OPEN | - |
| [#12471](https://github.com/NVIDIA/TensorRT-LLM/pull/12471) | [None][fix] Add bounded timeout to gen-side KV transfer in Python transceiver | yifjiang | OPEN | Community want to contribute |
| [#12834](https://github.com/NVIDIA/TensorRT-LLM/pull/12834) | [#11879][fix] Fix free-block counter corruption in getFreeBlock offload path | eopXD | OPEN | - |
| [#12545](https://github.com/NVIDIA/TensorRT-LLM/pull/12545) | [None][feat] Add production-level Prometheus metrics | nvyutwu | OPEN | Community want to contribute |
| [#12602](https://github.com/NVIDIA/TensorRT-LLM/pull/12602) | [TRTLLM-11608][feat] Chunked KV cache transfer with early block release | chienchunhung | OPEN | - |
| [#12798](https://github.com/NVIDIA/TensorRT-LLM/pull/12798) | [None][fix] Fix Qwen3 QuantConfig when rope_scaling is None | yilin-void | OPEN | Community want to contribute |
| [#12651](https://github.com/NVIDIA/TensorRT-LLM/pull/12651) | [None][feat] A2A Benchmark with Custom Config Support | jacekcy | OPEN | Community want to contribute |
| [#12853](https://github.com/NVIDIA/TensorRT-LLM/pull/12853) | Fix: Prevent Unused Input Tensor from Being Pruned in XQA | flynnfeng | OPEN | Community want to contribute |
| [#12610](https://github.com/NVIDIA/TensorRT-LLM/pull/12610) | Fix: [https://nvbugs/5300809] DeepSeek-R1 FP8 Perf drop | jacekcy | OPEN | Community want to contribute |
| [#12737](https://github.com/NVIDIA/TensorRT-LLM/pull/12737) | Update dbrx op for sagemaker executor | eric8455 | OPEN | Community want to contribute |
| [#12814](https://github.com/NVIDIA/TensorRT-LLM/pull/12814) | [feat] Add abtstrap && SBS support | Yingli-Nvidia | OPEN | - |
| [#12648](https://github.com/NVIDIA/TensorRT-LLM/pull/12648) | [None][fix] Fix potential performance issues of warmup in multi-node setting | liyangsigma | OPEN | - |
| [#12855](https://github.com/NVIDIA/TensorRT-LLM/pull/12855) | [None][fix] Reduce FP8 gemm tile size limit from 64 to 32 | mathis-pandelon | OPEN | - |
| [#12495](https://github.com/NVIDIA/TensorRT-LLM/pull/12495) | [feat] Fix tixormers for enable_attention_dp | yd210 | OPEN | - |
| [#12417](https://github.com/NVIDIA/TensorRT-LLM/pull/12417) | Add Neural Engine Torch.compile backend for dbrx models | gavinchen44 | OPEN | Community want to contribute |
| [#12649](https://github.com/NVIDIA/TensorRT-LLM/pull/12649) | Add max_batch_size attribute for max_batch_size config | eric8455 | OPEN | Community want to contribute |
| [#12591](https://github.com/NVIDIA/TensorRT-LLM/pull/12591) | Fix internal reshape plugin attrs | eric8455 | OPEN | Community want to contribute |
| [#12644](https://github.com/NVIDIA/TensorRT-LLM/pull/12644) | Add llava 4 support | 77paolo | OPEN | - |
| [#12663](https://github.com/NVIDIA/TensorRT-LLM/pull/12663) | [None][fix] Fix bug for LoRA weight order mismatch in Qwen3 | yilin-void | OPEN | Community want to contribute |
| [#12414](https://github.com/NVIDIA/TensorRT-LLM/pull/12414) | chore: use highlevel triton.autotune | LLevella | OPEN | Community want to contribute |
| [#12543](https://github.com/NVIDIA/TensorRT-LLM/pull/12543) | Enable VLM support in SageMaker executor | eric8455 | OPEN | Community want to contribute |
| [#12283](https://github.com/NVIDIA/TensorRT-LLM/pull/12283) | Fix crash: check generation length before use last_generation in get_or_generate_last_generation_output_ids | forresti | OPEN | Community want to contribute |
| [#12468](https://github.com/NVIDIA/TensorRT-LLM/pull/12468) | [feat] Fix DeepseekV3 INT8 SmoothQuant accuracy problem | silvasean | OPEN | Community want to contribute |
| [#12629](https://github.com/NVIDIA/TensorRT-LLM/pull/12629) | [None][fix] get NvCompVersion and use in gpt manager build | dejankalin | OPEN | Community want to contribute |
| [#12599](https://github.com/NVIDIA/TensorRT-LLM/pull/12599) | Fixed lack of ability to change Accept header by OpenAI client | Urov | OPEN | Community want to contribute |
| [#12722](https://github.com/NVIDIA/TensorRT-LLM/pull/12722) | [None][fix] Fix beam search misalignment issues | liyangsigma | OPEN | - |
| [#12633](https://github.com/NVIDIA/TensorRT-LLM/pull/12633) | [fix] Remove logical redundancy in ensemble_attn_logit soft cap | overjjang | OPEN | Community want to contribute |
| [#12578](https://github.com/NVIDIA/TensorRT-LLM/pull/12578) | Remove on demand loading for guided decoding (sagemaker executor) | jaiton | OPEN | Community want to contribute |

## ✅ 今日新增PR

| PR | 标题 | 作者 | 描述 |
|----|------|------|------|
| [#12860](https://github.com/NVIDIA/TensorRT-LLM/pull/12860) | Increase FMHA test timeout | djns99 | 增加FMHA测试超时时间 |
| [#12834](https://github.com/NVIDIA/TensorRT-LLM/pull/12834) | Fix free-block counter corruption in getFreeBlock offload path | eopXD | 修复KV Cache卸载路径中的空闲块计数器损坏问题，根因是claimBlock()调用顺序问题 |

## ✅ 今日已合并PR

| PR | 标题 | 作者 | 描述 |
|----|------|------|------|
| [#12664](https://github.com/NVIDIA/TensorRT-LLM/pull/12664) | AutoDeploy: Add the Triton kernel for MLA | nvchenghaoz | 为MLA添加Triton内核支持 |
| [#12815](https://github.com/NVIDIA/TensorRT-LLM/pull/12815) | Fix OOM with large number of LoRA adapters | brb-nv | 修复大量LoRA适配器导致的OOM问题 |
| [#12594](https://github.com/NVIDIA/TensorRT-LLM/pull/12594) | Bump etcd to 3.6.9 to involve grpc fix | yuanjingx87 | 升级etcd到3.6.9修复grpc问题 |
| [#12669](https://github.com/NVIDIA/TensorRT-LLM/pull/12669) | Make trust_remote_code opt-in in MultimodalModelRunner | yibinl-nvidia | 多模态模型运行器中将trust_remote_code改为可选 |
| [#12697](https://github.com/NVIDIA/TensorRT-LLM/pull/12697) | Fix flaky ray test failure | brb-nv | 修复不稳定的Ray测试失败 |
| [#11922](https://github.com/NVIDIA/TensorRT-LLM/pull/11922) | Clamp usedNumBlocks to non-negative in KV cache stats | wojciech-wais | KV缓存统计中将usedNumBlocks限制为非负数 |
| [#12831](https://github.com/NVIDIA/TensorRT-LLM/pull/12831) | Add Claude Code agents and skills for kernel dev, perf analysis, and compilation | kaiyux | 添加Claude Code代理和技能，用于内核开发、性能分析和编译 |
| [#12710](https://github.com/NVIDIA/TensorRT-LLM/pull/12710) | AutoDeploy: Add Gemma4 Support | bmarimuthu-nv | AutoDeploy添加Gemma4模型支持 |
| [#12361](https://github.com/NVIDIA/TensorRT-LLM/pull/12361) | LTX-2 Two Stage pipeline support | yibinl-nvidia | LTX-2两阶段流水线支持 |
| [#12785](https://github.com/NVIDIA/TensorRT-LLM/pull/12785) | Fix LoRA support for Qwen3 models | achartier | 修复Qwen3模型的LoRA支持 |
| [#12800](https://github.com/NVIDIA/TensorRT-LLM/pull/12800) | Remove RTX-6000 OOM test cases | yufeiwu-nv | 移除RTX-6000 OOM测试用例 |
| [#12766](https://github.com/NVIDIA/TensorRT-LLM/pull/12766) | Remove closed bugs | xinhe-nv | 清理已关闭的bug |
| [#12619](https://github.com/NVIDIA/TensorRT-LLM/pull/12619) | add cuda set device before load_remote_agent | chuangz0 | 在加载远程代理前设置CUDA设备 |
| [#12821](https://github.com/NVIDIA/TensorRT-LLM/pull/12821) | Waive hanging Nemotron Super test | brb-nv | 豁免卡住的Nemotron Super测试 |
| [#12761](https://github.com/NVIDIA/TensorRT-LLM/pull/12761) | Add missing allow_partial_loading param to CuteDSL and ConfigurableMoE load_weights | qiaoxj07 | 为CuteDSL和ConfigurableMoE load_weights添加缺失的allow_partial_loading参数 |
| [#12680](https://github.com/NVIDIA/TensorRT-LLM/pull/12680) | Enable HMAC authentication in VisualGen ZMQ IPC channels | yibinl-nvidia | 在VisualGen ZMQ IPC通道中启用HMAC认证 |
| [#12466](https://github.com/NVIDIA/TensorRT-LLM/pull/12466) | Prebuild disagg ctx response to avoid ctx_request_id race | peihu-nv | 预构建disagg ctx响应以避免ctx_request_id竞争 |
| [#12740](https://github.com/NVIDIA/TensorRT-LLM/pull/12740) | Optimize qwen3.5 decode delta kernel | nv-guomingz | 优化Qwen3.5解码delta内核 |
| [#12717](https://github.com/NVIDIA/TensorRT-LLM/pull/12717) | Fix SigLIP test failure | tijyojwad | 修复SigLIP测试失败 |

## 📋 今日Commit摘要

- `2fe39c16` - [None][feat] AutoDeploy: Add the Triton kernel for MLA (#12664) (nvchenghaoz)
- `5344dc90` - [https://nvbugs/5658258][fix] Fix OOM with large number of LoRA adapters (#12815) (brb-nv)
- `9fed1ef0` - [None][infra] Bump etcd to 3.6.9 to involve grpc fix (#12594) (yuanjingx87)
- `01cf581d` - [https://nvbugs/5813192][fix] Make trust_remote_code opt-in in MultimodalModelRunner (#12669) (yibinl-nvidia)
- `72226d98` - [https://nvbugs/6029864][fix] Fix flaky ray test failure (#12697) (brb-nv)
- `67768573` - [#11879][fix] Clamp usedNumBlocks to non-negative in KV cache stats (#11922) (wojciech-wais)
- `04cf8851` - [None][feat] Add Claude Code agents and skills for kernel dev, perf analysis, and compilation (#12831) (kaiyux)
- `0b5289f7` - [#12808][feat] AutoDeploy: Add Gemma4 Support (#12710) (bmarimuthu-nv)
- `51db0605` - [TRTLLM-11343][feat] LTX-2 Two Stage pipeline support (#12361) (yibinl-nvidia)
- `ae86b91e` - [None][fix] Fix LoRA support for Qwen3 models (#12785) (achartier)
- `31062c12` - [None][infra] Check in most recent lock file from nightly pipeline (tensorrt-cicd)
- `6175e2c6` - [None][test] Remove RTX-6000 OOM test cases (#12800) (yufeiwu-nv)
- `4311c113` - [None][chore] Remove closed bugs (#12766) (xinhe-nv)
- `026621d4` - [None][fix] add cuda set device before load_remote_agent (#12619) (chuangz0)
- `adc7af69` - [None][chore] Waive hanging Nemotron Super test (#12821) (brb-nv)
- `eb9ffd5c` - [None][fix] Add missing allow_partial_loading param to CuteDSL and ConfigurableMoE load_weights (#12761) (qiaoxj07)
- `1431153f` - [https://nvbugs/5922880][fix] Enable HMAC authentication in VisualGen ZMQ IPC channels (#12680) (yibinl-nvidia)
- `3bd37ae0` - [https://nvbugs/5961736][fix] Prebuild disagg ctx response to avoid ctx_request_id race (#12466) (peihu-nv)
- `2ff65f55` - [None][feat] Optimize qwen3.5 decode delta kernel (#12740) (nv-guomingz)
- `a1777fdc` - [https://nvbugs/5941242][fix] Fix SigLIP test failure (#12717) (tijyojwad)

## 💡 技术趋势洞察

### 1. **P/D分离 (Prefill/Decode Disaggregation) 持续优化**
- **Chunked KV Cache Transfer** (#12602): 实现了分块KV缓存传输，支持早期块释放，显著提升长上下文场景下的显存利用率
- **KV Transfer Timeout修复** (#12471): 为gen-side KV传输添加超时机制，防止解码worker在prefill失败时无限期阻塞
- **Disagg响应预构建** (#12466): 避免ctx_request_id竞争条件，提升分离式推理的稳定性

### 2. **KV Cache管理改进**
- **空闲块计数器修复** (#12834): 修复了`getFreeBlock`卸载路径中的计数器损坏问题，这是生产环境中导致负值统计的根本原因
- **usedNumBlocks非负限制** (#11922): 对KV缓存统计中的usedNumBlocks进行非负限制，增强系统鲁棒性

### 3. **性能优化与量化**
- **Qwen3.5解码内核优化** (#12740): 针对Qwen3.5模型的解码delta内核进行优化
- **FP8 Gemm瓦片大小调整** (#12855): 将FP8 gemm瓦片大小限制从64降低到32
- **DeepSeek-R1 FP8性能修复** (#12610): 社区贡献修复DeepSeek-R1 FP8性能下降问题

### 4. **模型支持与AutoDeploy**
- **Gemma4支持** (#12710): AutoDeploy框架新增对Gemma4模型的支持
- **MLA Triton内核** (#12664): 为Multi-Head Latent Attention添加Triton内核实现
- **Qwen3 LoRA修复** (#12785, #12663): 修复Qwen3模型的LoRA支持相关问题

### 5. **可观测性与监控**
- **Prometheus指标增强** (#12545): 新增生产级Prometheus指标，包括迭代统计、配置信息、token计数器和阶段直方图
- **gRPC指标收集** (#12760): 社区贡献为gRPC服务器模式添加Prometheus指标收集

### 6. **社区贡献活跃**
今日新增2个PR，合并19个PR，其中大量来自社区贡献者，涵盖性能优化、bug修复、模型支持等多个维度，社区活跃度持续提升。

---
*报告生成时间: 2026-04-09 07:40 AM GMT+8*
