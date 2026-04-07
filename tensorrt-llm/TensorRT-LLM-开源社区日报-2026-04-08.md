# TensorRT-LLM 开源社区日报

**Date:** 2026-04-08

---

## 📊 Overview Stats

| Metric | Count |
|--------|-------|
| Open PRs | 50 |
| Merged Yesterday (Apr 7) | 20 |
| Total Closed Yesterday | 20 |

---

## 🔥 Active PRs (Top 20 by Recent Activity)

| # | Title | Author | Labels | Link |
|---|-------|--------|--------|------|
| 12545 | [None][feat] Add production-level Prometheus metrics (iteration stats, config info, token counters, phase histograms) | nvyutwu | Community want to contribute | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12545) |
| 12548 | [TRTLLM-11403][feat] VisualGen Cache-DiT + unified cache accelerator | o-stoner | VisualGen | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12548) |
| 12509 | [TRTLLM-11532][refactor] Unify VisualGen parallelism | NVShreyas | VisualGen | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12509) |
| 12419 | [TRTLLM-12291][feat] New sharding infrastructure | greg-kwasniewski1 | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12419) |
| 12819 | [https://nvbugs/6025177][fix] Fix KV cache issue (cherry-pick to release/1.3.0rc5.post2) | thorjohnsen | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12819) |
| 12770 | [https://nvbugs/6025177][fix] Cherry-pick KV cache corruption fix to release/1.2.1 | thorjohnsen | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12770) |
| 12718 | [https://nvbugs/6043291][fix] Add fatal error detection to prevent zombie worker pods | chienchunhung | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12718) |
| 12554 | [None][chore] Fix failing KV Cache Transceiver Tests from #11574 | ekou24 | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12554) |
| 12811 | [None][infra] Bump xgrammar | yuanjingx87 | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12811) |
| 12640 | [https://nvbugs/6000658][fix] Fix disagg gen-only hang where 10s sleep in can_forward blocks KV transfers and overflows CTX memory | peihu-nv | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12640) |
| 12789 | [https://nvbugs/5910749][https://nvbugs/5995486][test] Fix Qwen3 skip softmax attention CI tests | bobboli | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12789) |
| 12697 | [https://nvbugs/6029864][fix] Fix flaky ray test failure | brb-nv | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12697) |
| 12265 | [#11548][feat] AutoDeploy: Optimize Qwen3.5 perf | taylor-yb-lee | AutoDeploy, AutoDeploy/llmc-blocker | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12265) |
| 12812 | [None][feat] Upgrade xgrammar and lock pillow | yuanjingx87 | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12812) |
| 12817 | [https://nvbugs/5448464][fix] Partially fix LoRA overallocation for Nemotron NAS | brb-nv | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12817) |
| 12637 | [None][feat] opentelemetry metrics for num_postproc_workers > 0 disagg | karen-sy | Community want to contribute | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12637) |
| 12626 | [None][feat] KVConnector shorthand paths for "lmcache" and "kvbm" with examples | sammshen | Community want to contribute | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12626) |
| 12801 | [None][feat] Add llm.encode() fast path for encoder-only models | tingyangk | Community want to contribute | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12801) |
| 12810 | [None][feat] AutoDeploy: Gemma4 vision support | bmarimuthu-nv | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12810) |
| 12601 | [#12593][feat] AutoDeploy: onboard DeepSeek-R1 | galagam | gagam-slack-watch | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12601) |

---

## ✅ Merged PRs (Last 24-48 Hours)

| # | Title | Author | Labels | Link |
|---|-------|--------|--------|------|
| 12717 | [https://nvbugs/5941242][fix] Fix SigLIP test failure | tijyojwad | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12717) |
| 12670 | [https://nvbugs/5883590][fix] Generate HMAC key for MGMN IPC server in disaggregated serving | yibinl-nvidia | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12670) |
| 12513 | [https://nvbugs/5991957][fix] Propagate disaggregated_params through PostprocWorker | peihu-nv | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12513) |
| 12806 | [None][fix] Pre-subtract non-first-chunk context costs in reuse budget | liji-nv | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12806) |
| 12580 | [https://nvbugs/5997543][fix] unwaive test_disaggregated_overlap_transceiver_runtime_python | chuangz0 | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12580) |
| 12693 | [None][doc] add attention developer guide | QiJune | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12693) |
| 12430 | [TRTLLM-11574][feat] Some updates on Perf Sanity System codes | chenfeiz0326 | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12430) |
| 11236 | [None][test] Unwaive Nemotron H flaky case | nv-guomingz | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/11236) |
| 12609 | [https://nvbugs/6011284][fix] Fix Qwen2.5 mixed precision accuracy issue | Tracin | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12609) |
| 12687 | [None][fix] Remove clone in fp8 quant | Tracin | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12687) |
| 12623 | [https://nvbugs/6008468][fix] Fix top-K logprobs size for PP | pengbowang-nv | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12623) |
| 12776 | [TRTLLM-11768][fix] Config updates to enable NVFP4 | 2ez4bz | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12776) |
| 12615 | [TRTLLM-9948][infra] Move to use FlexCache in Austin for 5080 nodes | EmmaQiaoCh | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12615) |
| 12739 | [None][feat] retune causalConv1d fwd dispatch for varlen and short sequences | nv-guomingz | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12739) |
| 12612 | [None][feat] Trtllm-gen FMHA JIT support | yunruis | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12612) |
| 12276 | [None][fix] Fix outdated argument of readme.md for executorExampleDisaggregated.cpp | Fan-Yunfan | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12276) |
| 9654 | [https://nvbugs/5781731][fix] Unwaive Ray test | dominicshanshan | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/9654) |
| 12736 | [None][feat] fix mamba metadata prefill bubble in chunked prefill serving | nv-guomingz | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12736) |
| 12737 | [None][feat] reuse triton slicing kernel for GDN prefill transpose | nv-guomingz | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12737) |
| 12418 | [None][chore] Remove gpu-shell tool from ad-run-agent | govind-ramnarayan | - | [Link](https://github.com/NVIDIA/TensorRT-LLM/pull/12418) |

---

## 📝 Recent Commits (main branch)

| Commit | Message | Author | Date |
|--------|---------|--------|------|
| a1777fdc | [https://nvbugs/5941242][fix] Fix SigLIP test failure (#12717) | Joyjit Daw | 2026-04-07 |
| 5b475d74 | [https://nvbugs/5883590][fix] Generate HMAC key for MGMN IPC server in disaggregated serving (#12670) | Yibin Li | 2026-04-07 |
| 89640821 | [https://nvbugs/5991957][fix] Propagate disaggregated_params through PostprocWorker (#12513) | peihengh | 2026-04-07 |
| ace1338a | [None][doc] add attention developer guide (#12693) | QI JUN | 2026-04-07 |
| 390c0936 | [TRTLLM-11574][feat] Some updates on Perf Sanity System codes (#12430) | chenfeiz0326 | 2026-04-07 |
| 54d182a5 | [https://nvbugs/5997543][fix] unwaive test_disaggregated_overlap_transceiver_runtime_python (#12580) | Chuang Zhu | 2026-04-07 |
| 63cb1f9a | [None][test] Unwaive Nemotron H flaky case (#11236) | Guoming Zhang | 2026-04-07 |
| 4e69c14f | [https://nvbugs/6011284][fix] Fix Qwen2.5 mixed precision accuracy issue. (#12609) | Qi Zhang (qizh) | 2026-04-07 |
| 740f110c | [None][Fix] Remove clone in fp8 quant. (#12687) | Qi Zhang (qizh) | 2026-04-07 |
| 576816da | [https://nvbugs/6008468][fix] Fix top-K logprobs size for PP (#12623) | Pengbo Wang | 2026-04-07 |
| ba5c79cf | [TRTLLM-11768][fix] Config updates to enable NVFP4 (#12776) | William Zhang | 2026-04-07 |
| b5e97e78 | [TRTLLM-9948][infra] Move to use FlexCache in Austin for 5080 nodes (#12615) | Emma Qiao | 2026-04-07 |
| a03aeb1b | [None][feat] retune causalConv1d fwd dispatch for varlen and short sequences (#12739) | Guoming Zhang | 2026-04-07 |
| ac3dbf11 | [None][infra] Check in most recent lock file from nightly pipeline | TensorRT LLM | 2026-04-07 |
| 88bbb4de | [None][feat] Trtllm-gen FMHA JIT support (#12612) | yunruis | 2026-04-07 |
| e8785610 | [None][fix] Fix outdated argument of readme.md for executorExampleDisaggregated.cpp (#12276) | Fan - Yunfan | 2026-04-07 |
| dfdc81cd | [https://nvbugs/5781731][fix] Unwaive Ray test (#9654) | dominicshanshan | 2026-04-07 |
| 4496e693 | [None][feat] fix mamba metadata prefill bubble in chunked prefill serving (#12736) | Guoming Zhang | 2026-04-07 |
| 6488d7f5 | [None][feat] reuse triton slicing kernel for GDN prefill transpose (#12737) | Guoming Zhang | 2026-04-07 |
| b4b59a62 | [None][infra] Check in most recent lock file from nightly pipeline | TensorRT LLM | 2026-04-07 |

---

## 💡 Technical Insights

### Key Highlights

1. **Disaggregated Serving Improvements**: Multiple PRs focused on improving disaggregated serving capabilities:
   - HMAC key generation for MGMN IPC server (#12670)
   - Propagation of disaggregated_params through PostprocWorker (#12513)
   - Fix for gen-only hang issue with KV transfers (#12640)

2. **Performance & Optimization**:
   - Trtllm-gen FMHA JIT support added (#12612)
   - Mamba metadata prefill bubble fix in chunked prefill serving (#12736)
   - FP8 quantization optimization by removing unnecessary clone (#12687)
   - CausalConv1D dispatch retuning for varlen and short sequences (#12739)

3. **Model Support**:
   - Qwen2.5 mixed precision accuracy fix (#12609)
   - Qwen3 test improvements (#12789)
   - DeepSeek-R1 AutoDeploy onboarding (#12601)
   - Gemma4 vision support in AutoDeploy (#12810)

4. **Observability & Metrics**:
   - Production-level Prometheus metrics (#12545)
   - OpenTelemetry metrics for disaggregated serving (#12637)

5. **Infrastructure**:
   - Migration to FlexCache for 5080 nodes (#12615)
   - NVFP4 configuration updates (#12776)
   - XGrammar upgrades (#12811, #12812)

### Community Contributions

Notable community contributions marked with "Community want to contribute" label:
- Prometheus metrics implementation
- KVConnector shorthand paths for lmcache and kvbm
- llm.encode() fast path for encoder-only models
- OpenTelemetry metrics improvements

---

*Generated by OpenClaw Bot on 2026-04-08*
