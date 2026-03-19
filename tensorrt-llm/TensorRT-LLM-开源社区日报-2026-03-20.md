# TensorRT-LLM 开源社区日报

**日期**: 2026-03-20  
**仓库**: [NVIDIA/TensorRT-LLM](https://github.com/NVIDIA/TensorRT-LLM)  
**报告周期**: 2026-03-19 至 2026-03-20

---

## 📊 今日概览

| 指标 | 数量 |
|------|------|
| 新增PR | 24 |
| 已合并PR | 9 |
| 已关闭PR | 3 |
| 活跃Open PR | 50+ |

---

## 🔥 活跃PR列表 (Open PRs)

### 高优先级/新提交PR

1. **[#12369](https://github.com/NVIDIA/TensorRT-LLM/pull/12369)** - fix: Run shape_prop to populate metadata of torch cached attention ops in autodeploy
   - 作者: Dheeraj Peri
   - 状态: OPEN

2. **[#12368](https://github.com/NVIDIA/TensorRT-LLM/pull/12368)** - [#12049][feat] AutoDeploy: Enable the gather logits and piecewise cg by default
   - 作者: Chenghao Zhang
   - 状态: OPEN

3. **[#12367](https://github.com/NVIDIA/TensorRT-LLM/pull/12367)** - [None][fix] skip inference_mode() when torch.compile=True for gemma3 fp8
   - 作者: Anurag Mukkara
   - 状态: OPEN

4. **[#12366](https://github.com/NVIDIA/TensorRT-LLM/pull/12366)** - [https://nvbugs/5987470][fix] Do not normalize log probs by default
   - 作者: Aurelien Chartier
   - 状态: OPEN

5. **[#12365](https://github.com/NVIDIA/TensorRT-LLM/pull/12365)** - [None][perf] Add Pingpong schedule and expanded tile configs for SM120 NVFP4 GEMM
   - 作者: Pamela Peng
   - 状态: OPEN

6. **[#12364](https://github.com/NVIDIA/TensorRT-LLM/pull/12364)** - [None][fix]fix nemotron bench
   - 作者: Pamela Peng
   - 状态: OPEN

7. **[#12362](https://github.com/NVIDIA/TensorRT-LLM/pull/12362)** - [https://nvbugs/5998489][feat] Adding support for request priority in LLM API
   - 作者: Patrice Castonguay
   - 状态: OPEN

8. **[#12361](https://github.com/NVIDIA/TensorRT-LLM/pull/12361)** - [TRTLLM-11343][feat] LTX-2 Two Stage pipeline support
   - 作者: Yibin Li
   - 状态: OPEN

9. **[#12360](https://github.com/NVIDIA/TensorRT-LLM/pull/12360)** - [https://nvbugs/5964329][fix] fix PARD accuracy issue
   - 作者: Guiju Zhang
   - 状态: OPEN

10. **[#12358](https://github.com/NVIDIA/TensorRT-LLM/pull/12358)** - [#12324][fix] Fixed min_tokens not working correctly in PyTorch backend sampler
    - 作者: Eran Geva
    - 状态: OPEN

11. **[#12357](https://github.com/NVIDIA/TensorRT-LLM/pull/12357)** - [#4674][feat] enabled qkv fusion with trtllm attention
    - 作者: Eran Geva
    - 状态: OPEN

12. **[#12356](https://github.com/NVIDIA/TensorRT-LLM/pull/12356)** - [None][feat] EdgeLLM ONNX: VLM dual export + fuse_rope VLM fixes
    - 作者: nvyocox
    - 状态: OPEN

13. **[#12354](https://github.com/NVIDIA/TensorRT-LLM/pull/12354)** - [TRTLLM-10407][perf] Add cute dsl single pass multi cta cluster topk
    - 作者: Li Min
    - 状态: OPEN

14. **[#12353](https://github.com/NVIDIA/TensorRT-LLM/pull/12353)** - [TRTLLM-11508][refactor] Merge eagle mtp
    - 作者: zhaoyangwang-nvidia
    - 状态: OPEN

15. **[#12351](https://github.com/NVIDIA/TensorRT-LLM/pull/12351)** - [TRTLLM-11497][fix] Add I2V warmup to prevent torch.compile recompilation
    - 作者: Yiyun Lu
    - 状态: OPEN

16. **[#12350](https://github.com/NVIDIA/TensorRT-LLM/pull/12350)** - [TRTLLM-11579][feat] VisualGen batch inference support in serve module
    - 作者: JunyiXu-nv
    - 状态: OPEN

17. **[#12348](https://github.com/NVIDIA/TensorRT-LLM/pull/12348)** - [https://nvbugs/5948878][fix] fix lost requests
    - 作者: Bo Deng
    - 状态: OPEN

18. **[#12347](https://github.com/NVIDIA/TensorRT-LLM/pull/12347)** - [https://nvbugs/5997090][fix] Fix B200 Aggregated CI Perf Test MPI Issue
    - 作者: chenfeiz0326
    - 状态: OPEN

19. **[#12343](https://github.com/NVIDIA/TensorRT-LLM/pull/12343)** - [None][chore] Organize the upper-layer transceiver logic
    - 作者: Shi Xiaowei
    - 状态: OPEN

20. **[#12342](https://github.com/NVIDIA/TensorRT-LLM/pull/12342)** - [TRTLLM-9523][chore] PyTransceiver code consolidation
    - 作者: Shi Xiaowei
    - 状态: OPEN

### 社区贡献PR

21. **[#12330](https://github.com/NVIDIA/TensorRT-LLM/pull/12330)** - [#11992][fix] Handle GUIDE_TYPE_STRUCTURAL_TAG in gRPC request manager
    - 作者: Chang Su
    - 标签: Community want to contribute
    - 状态: OPEN

22. **[#12310](https://github.com/NVIDIA/TensorRT-LLM/pull/12310)** - [#12230][fix] Add bounds checking in autotuner _find_nearest_profile for SM121
    - 作者: Mihai Chiorean
    - 标签: Community want to contribute
    - 状态: OPEN

23. **[#12309](https://github.com/NVIDIA/TensorRT-LLM/pull/12309)** - [#11932][fix] Enable FP4 MoE dispatch for SM120/SM121 (DGX Spark)
    - 作者: Mihai Chiorean
    - 标签: Community want to contribute
    - 状态: OPEN

24. **[#12301](https://github.com/NVIDIA/TensorRT-LLM/pull/12301)** - [None][perf] Optimize KV cache for unified memory systems (DGX Spark)
    - 作者: Mihai Chiorean
    - 标签: Community want to contribute
    - 状态: OPEN

25. **[#12294](https://github.com/NVIDIA/TensorRT-LLM/pull/12294)** - [#3237][fix] Support negative numbers in MajorityVote digit validation
    - 作者: Niket Jain
    - 标签: Community want to contribute
    - 状态: OPEN

26. **[#12284](https://github.com/NVIDIA/TensorRT-LLM/pull/12284)** - [None][fix] Fix VLM guided decoding startup crash due to missing vocab_size_padded property
    - 作者: Stefan Pantic
    - 标签: Community want to contribute
    - 状态: OPEN

### 其他活跃PR

27. **[#12341](https://github.com/NVIDIA/TensorRT-LLM/pull/12341)** - [TRTLLM-11508][refactor] decouple MTP num_nextn_predict_layers from max_draft_len
    - 作者: zhaoyangwang-nvidia
    - 状态: OPEN

28. **[#12340](https://github.com/NVIDIA/TensorRT-LLM/pull/12340)** - [None][docs] Update supported models matrix with AD-onboarded architectures
    - 作者: Bala Marimuthu
    - 状态: OPEN

29. **[#12338](https://github.com/NVIDIA/TensorRT-LLM/pull/12338)** - [None][doc] fix outdated code references in tech blogs 2, 3, 4, 8, 9, 11
    - 作者: Sharan Chetlur
    - 状态: OPEN

30. **[#12337](https://github.com/NVIDIA/TensorRT-LLM/pull/12337)** - [None][fix] fix disagg kvcache router for chat API and add disagg benchmark for ai_perf
    - 作者: Lizhi Zhou
    - 状态: OPEN

31. **[#12336](https://github.com/NVIDIA/TensorRT-LLM/pull/12336)** - [TRTLLM-11523][feat] Handle different chat template types
    - 作者: William Zhang
    - 状态: OPEN

32. **[#12326](https://github.com/NVIDIA/TensorRT-LLM/pull/12326)** - [#12332][feat] AutoDeploy: SuperV3 MTP Support
    - 作者: gramnarayan
    - 状态: OPEN

33. **[#12325](https://github.com/NVIDIA/TensorRT-LLM/pull/12325)** - Fix pinBlocks/unpinBlocksById to correctly handle multiple window sizes
    - 作者: Thor Johnsen
    - 状态: OPEN

34. **[#12322](https://github.com/NVIDIA/TensorRT-LLM/pull/12322)** - [None][perf] Kernel fusions in _gather_k_cache_for_chunk of Indexer in DSA
    - 作者: Yukun He
    - 状态: OPEN

35. **[#12320](https://github.com/NVIDIA/TensorRT-LLM/pull/12320)** - [None][feat] Support update weight for nvfp4
    - 作者: shuyixiong
    - 状态: OPEN

36. **[#12319](https://github.com/NVIDIA/TensorRT-LLM/pull/12319)** - [batch_manager] Remove redundant mManagedSequences from BlockManager
    - 作者: Thor Johnsen
    - 状态: OPEN

37. **[#12315](https://github.com/NVIDIA/TensorRT-LLM/pull/12315)** - [None][feat] KV cache-aware ADP router for prefix-affinity request routing
    - 作者: Liao Lanyu
    - 状态: OPEN

38. **[#12314](https://github.com/NVIDIA/TensorRT-LLM/pull/12314)** - [NVBug 5969206][fix] Force-terminate in-flight KV transfers on abort
    - 作者: Yuewei Na
    - 状态: OPEN

39. **[#12313](https://github.com/NVIDIA/TensorRT-LLM/pull/12313)** - [NVBug 5969206][fix] Break circular dependency in disagg KV transfer timeout cleanup
    - 作者: Yuewei Na
    - 状态: OPEN

40. **[#12302](https://github.com/NVIDIA/TensorRT-LLM/pull/12302)** - [TRTLLM-11544][feat] Add Qwen 3.5 supporting
    - 作者: Guoming Zhang
    - 状态: OPEN

---

## ✅ 今日新增PR (2026-03-19)

1. **[#12369](https://github.com/NVIDIA/TensorRT-LLM/pull/12369)** - fix: Run shape_prop to populate metadata of torch cached attention ops in autodeploy
   - 作者: Dheeraj Peri | 状态: OPEN

2. **[#12368](https://github.com/NVIDIA/TensorRT-LLM/pull/12368)** - [#12049][feat] AutoDeploy: Enable the gather logits and piecewise cg by default
   - 作者: Chenghao Zhang | 状态: OPEN

3. **[#12367](https://github.com/NVIDIA/TensorRT-LLM/pull/12367)** - [None][fix] skip inference_mode() when torch.compile=True for gemma3 fp8
   - 作者: Anurag Mukkara | 状态: OPEN

4. **[#12366](https://github.com/NVIDIA/TensorRT-LLM/pull/12366)** - [https://nvbugs/5987470][fix] Do not normalize log probs by default
   - 作者: Aurelien Chartier | 状态: OPEN

5. **[#12365](https://github.com/NVIDIA/TensorRT-LLM/pull/12365)** - [None][perf] Add Pingpong schedule and expanded tile configs for SM120 NVFP4 GEMM
   - 作者: Pamela Peng | 状态: OPEN

6. **[#12364](https://github.com/NVIDIA/TensorRT-LLM/pull/12364)** - [None][fix]fix nemotron bench
   - 作者: Pamela Peng | 状态: OPEN

7. **[#12363](https://github.com/NVIDIA/TensorRT-LLM/pull/12363)** - [None][chore] Add failed cases into waives.txt
   - 作者: xinhe-nv | 状态: OPEN

8. **[#12362](https://github.com/NVIDIA/TensorRT-LLM/pull/12362)** - [https://nvbugs/5998489][feat] Adding support for request priority in LLM API
   - 作者: Patrice Castonguay | 状态: OPEN

9. **[#12361](https://github.com/NVIDIA/TensorRT-LLM/pull/12361)** - [TRTLLM-11343][feat] LTX-2 Two Stage pipeline support
   - 作者: Yibin Li | 状态: OPEN

10. **[#12360](https://github.com/NVIDIA/TensorRT-LLM/pull/12360)** - [https://nvbugs/5964329][fix] fix PARD accuracy issue
    - 作者: Guiju Zhang | 状态: OPEN

11. **[#12358](https://github.com/NVIDIA/TensorRT-LLM/pull/12358)** - [#12324][fix] Fixed min_tokens not working correctly in PyTorch backend sampler
    - 作者: Eran Geva | 状态: OPEN

12. **[#12357](https://github.com/NVIDIA/TensorRT-LLM/pull/12357)** - [#4674][feat] enabled qkv fusion with trtllm attention
    - 作者: Eran Geva | 状态: OPEN

13. **[#12356](https://github.com/NVIDIA/TensorRT-LLM/pull/12356)** - [None][feat] EdgeLLM ONNX: VLM dual export + fuse_rope VLM fixes
    - 作者: nvyocox | 状态: OPEN

14. **[#12355](https://github.com/NVIDIA/TensorRT-LLM/pull/12355)** - [None][fix] Use pre-quant dispatch when hidden_states_sf is None
    - 作者: Li Min | 状态: OPEN

15. **[#12354](https://github.com/NVIDIA/TensorRT-LLM/pull/12354)** - [TRTLLM-10407][perf] Add cute dsl single pass multi cta cluster topk
    - 作者: Li Min | 状态: OPEN

16. **[#12353](https://github.com/NVIDIA/TensorRT-LLM/pull/12353)** - [TRTLLM-11508][refactor] Merge eagle mtp
    - 作者: zhaoyangwang-nvidia | 状态: OPEN

17. **[#12352](https://github.com/NVIDIA/TensorRT-LLM/pull/12352)** - [None][infra] Waive 1 failed cases for main in post-merge
    - 作者: xinhe-nv | 状态: CLOSED

18. **[#12351](https://github.com/NVIDIA/TensorRT-LLM/pull/12351)** - [TRTLLM-11497][fix] Add I2V warmup to prevent torch.compile recompilation
    - 作者: Yiyun Lu | 状态: OPEN

19. **[#12350](https://github.com/NVIDIA/TensorRT-LLM/pull/12350)** - [TRTLLM-11579][feat] VisualGen batch inference support in serve module
    - 作者: JunyiXu-nv | 状态: OPEN

20. **[#12349](https://github.com/NVIDIA/TensorRT-LLM/pull/12349)** - visual-gen-api-refactor.md
    - 作者: Zhenhua Wang | 状态: CLOSED

21. **[#12348](https://github.com/NVIDIA/TensorRT-LLM/pull/12348)** - [https://nvbugs/5948878][fix] fix lost requests
    - 作者: Bo Deng | 状态: OPEN

22. **[#12347](https://github.com/NVIDIA/TensorRT-LLM/pull/12347)** - [https://nvbugs/5997090][fix] Fix B200 Aggregated CI Perf Test MPI Issue
    - 作者: chenfeiz0326 | 状态: OPEN

23. **[#12345](https://github.com/NVIDIA/TensorRT-LLM/pull/12345)** - [None][infra] Waive 5 failed cases for main in post-merge 2604
    - 作者: Zhanrui Sun | 状态: MERGED

24. **[#12344](https://github.com/NVIDIA/TensorRT-LLM/pull/12344)** - [https://nvbugs/5725811][test] Remove outdated llama-v4 and ministral-8b models out of QA scope
    - 作者: yufeiwu-nv | 状态: OPEN

---

## ✅ 今日已合并PR

1. **[#12345](https://github.com/NVIDIA/TensorRT-LLM/pull/12345)** - [None][infra] Waive 5 failed cases for main in post-merge 2604
   - 作者: Zhanrui Sun | 合并时间: 2026-03-19T07:49:16Z

2. **[#12334](https://github.com/NVIDIA/TensorRT-LLM/pull/12334)** - [None][infra] Waive 4 failed cases for main in post-merge 2603
   - 作者: Zhanrui Sun | 合并时间: 2026-03-19T03:02:22Z

3. **[#12331](https://github.com/NVIDIA/TensorRT-LLM/pull/12331)** - [None][fix] Properly raise errors from multimodal loading
   - 作者: William Zhang | 合并时间: 2026-03-19T21:58:22Z

4. **[#12328](https://github.com/NVIDIA/TensorRT-LLM/pull/12328)** - [None][chore] Add failed cases into waives.txt
   - 作者: xinhe-nv | 合并时间: 2026-03-19T09:07:03Z

5. **[#12318](https://github.com/NVIDIA/TensorRT-LLM/pull/12318)** - [https://nvbugs/5979443][chore] Refine the trtllm MoE unit test
   - 作者: Leslie Fang | 合并时间: 2026-03-18T23:22:41Z

6. **[#12317](https://github.com/NVIDIA/TensorRT-LLM/pull/12317)** - [https://nvbugs/5808603][fix] Add bias support to WeightOnlyQuantLinearMethod
   - 作者: Stefan Niebler | 合并时间: 2026-03-19T09:49:48Z

7. **[#12316](https://github.com/NVIDIA/TensorRT-LLM/pull/12316)** - [https://nvbugs/5949524][fix] Fix hang issue on DGX-Spark multinode
   - 作者: JennyLiu | 合并时间: 2026-03-19T13:21:58Z

8. **[#12307](https://github.com/NVIDIA/TensorRT-LLM/pull/12307)** - [None][doc] Update README
   - 作者: Bo Li | 合并时间: 2026-03-18T06:07:39Z

9. **[#12305](https://github.com/NVIDIA/TensorRT-LLM/pull/12305)** - [TRTLLM-10363][feat] Add instructions to run Cosmos Predict2.5 on DGX Spark
   - 作者: Pamela Peng | 合并时间: 2026-03-18T14:48:40Z

---

## 📋 今日Commit摘要

| Commit | 描述 | 作者 |
|--------|------|------|
| [ed0f14e7](https://github.com/NVIDIA/TensorRT-LLM/commit/ed0f14e7) | [None][fix] Properly raise errors from multimodal loading (#12331) | William Zhang |
| [e37493ae](https://github.com/NVIDIA/TensorRT-LLM/commit/e37493ae) | [https://nvbugs/5875031][fix] Compile XQA with sm_120f (#12170) | Pamela Peng |
| [46f4ca35](https://github.com/NVIDIA/TensorRT-LLM/commit/46f4ca35) | [None][perf] enable flashinfer mlp activation and fix piecewise graph for gemma3-1B (#12131) | Anurag Mukkara |
| [1ad97140](https://github.com/NVIDIA/TensorRT-LLM/commit/1ad97140) | [TRTLLM-11358][test] Add trtllm-serve e2e tests for FLUX (#12153) | JunyiXu-nv |
| [9f0c2048](https://github.com/NVIDIA/TensorRT-LLM/commit/9f0c2048) | [#12183][fix] Fix TRTLLM-Gen NVFP4 MoE scales for mixed-precision che… (#12240) | tcherckez-nvidia |
| [c7cb5760](https://github.com/NVIDIA/TensorRT-LLM/commit/c7cb5760) | [#10607][feat] added AutoDeploy serving perf test with Super test (#12287) | Eran Geva |
| [65b1f56a](https://github.com/NVIDIA/TensorRT-LLM/commit/65b1f56a) | [None][chore] Improved test coverage for Python KV Transceiver (#11574) | Ethan Kou |
| [14201521](https://github.com/NVIDIA/TensorRT-LLM/commit/14201521) | [https://nvbugspro.nvidia.com/bug/5949524][None] Fix hang issue on DGX-Spark multinode (#12316) | JennyLiu |
| [eb5b6021](https://github.com/NVIDIA/TensorRT-LLM/commit/eb5b6021) | [https://nvbugs/5808603][fix] Add bias support to WeightOnlyQuantLinearMethod (#12317) | Stefan Niebler |
| [42ba371b](https://github.com/NVIDIA/TensorRT-LLM/commit/42ba371b) | [None][chore] Add failed cases into waives.txt (#12328) | xinhe-nv |
| [19e2030f](https://github.com/NVIDIA/TensorRT-LLM/commit/19e2030f) | [https://nvbugs/5893116][fix] fix disagg llama oom (#12281) | Chuang Zhu |
| [db927610](https://github.com/NVIDIA/TensorRT-LLM/commit/db927610) | [None][feat] Enable speculative decoding in TrtllmGen attention backend (#12267) | Yihan Wang |
| [f7dedd04](https://github.com/NVIDIA/TensorRT-LLM/commit/f7dedd04) | [None][infra] Waive 5 failed cases for main in post-merge 2604 (#12345) | Zhanrui Sun |
| [88be1344](https://github.com/NVIDIA/TensorRT-LLM/commit/88be1344) | [None][feat] Constraint-based memory partitioning to KVCacheManagerV2 (#12212) | Yao Yao |
| [b3d446b3](https://github.com/NVIDIA/TensorRT-LLM/commit/b3d446b3) | [None][chore] Refine kv cache buffer calculation (#12274) | Yihan Wang |
| [9db8487c](https://github.com/NVIDIA/TensorRT-LLM/commit/9db8487c) | [TRTLLM-10076][feat] Serve CLI improvements: renames, new flags, and mm_embedding_serve enhancements (#12105) | JunyiXu-nv |
| [2fb5e805](https://github.com/NVIDIA/TensorRT-LLM/commit/2fb5e805) | [None][test] Add DSA host cache offload tests to CI and QA test lists (#12278) | Jonas Li |
| [e940e58e](https://github.com/NVIDIA/TensorRT-LLM/commit/e940e58e) | [TRTLLM-10407][perf] Enable CuteDSL indexer_top_k in model (#12236) | Li Min |
| [32be345e](https://github.com/NVIDIA/TensorRT-LLM/commit/32be345e) | [#11526][chore] AutoDeploy accuracy tests: use nemotron-3 official checkpoints (#12243) | Gal Hubara-Agam |
| [11f6cf70](https://github.com/NVIDIA/TensorRT-LLM/commit/11f6cf70) | [https://nvbugs/5389100][test] Remove TensorRT integration test list and add trtllm-serve for test_perf.py (#12277) | yufeiwu-nv |
| [4c01298f](https://github.com/NVIDIA/TensorRT-LLM/commit/4c01298f) | [None][infra] Check in most recent lock file from nightly pipeline | TensorRT LLM |
| [9c2857dc](https://github.com/NVIDIA/TensorRT-LLM/commit/9c2857dc) | [https://nvbugs/5937478][test] Add RCCA test for DeepSeek-V3.2 multi-turn tool_call encoding (#12279) | Ivy Zhang |
| [dfc7cb5e](https://github.com/NVIDIA/TensorRT-LLM/commit/dfc7cb5e) - [None][infra] Waive 4 failed cases for main in post-merge 2603 (#12334) | Zhanrui Sun |
| [b3de2533](https://github.com/NVIDIA/TensorRT-LLM/commit/b3de2533) | [None][fix] Fix the issue of excluding all context attention kernels when building for sm103 (#12248) | yifeizhang-c |
| [5ac6a1b7](https://github.com/NVIDIA/TensorRT-LLM/commit/5ac6a1b7) | [None][test] Fix mpi-type issue and add wideep acc test to dev's l0 local flow (#12300) | fredricz-20070104 |
| [067e9b16](https://github.com/NVIDIA/TensorRT-LLM/commit/067e9b16) | [TRTLLM-11257][fix] release GPU memory and FDs in MnnvlMemory on pidfd failure to prevent leak (#11979) | zhaoyangwang-nvidia |

---

## 🔍 技术亮点分析

### 1. AutoDeploy 功能增强
- [#12368](https://github.com/NVIDIA/TensorRT-LLM/pull/12368) 默认启用 gather logits 和 piecewise cg
- [#12369](https://github.com/NVIDIA/TensorRT-LLM/pull/12369) 修复 autodeploy 中 shape_prop 元数据问题
- [#12326](https://github.com/NVIDIA/TensorRT-LLM/pull/12326) SuperV3 MTP 支持

### 2. 性能优化
- [#12365](https://github.com/NVIDIA/TensorRT-LLM/pull/12365) SM120 NVFP4 GEMM 的 Pingpong 调度优化
- [#12354](https://github.com/NVIDIA/TensorRT-LLM/pull/12354) CuteDSL single pass multi CTA cluster topk
- [#12357](https://github.com/NVIDIA/TensorRT-LLM/pull/12357) QKV fusion 与 trtllm attention 集成

### 3. 分布式与KV Cache
- [#12360](https://github.com/NVIDIA/TensorRT-LLM/pull/12360) PARD 精度问题修复
- [#12343](https://github.com/NVIDIA/TensorRT-LLM/pull/12343) transceiver 逻辑优化
- [#12342](https://github.com/NVIDIA/TensorRT-LLM/pull/12342) PyTransceiver 代码整合
- [#12315](https://github.com/NVIDIA/TensorRT-LLM/pull/12315) KV cache-aware ADP router

### 4. 模型支持
- [#12302](https://github.com/NVIDIA/TensorRT-LLM/pull/12302) Qwen 3.5 支持
- [#12361](https://github.com/NVIDIA/TensorRT-LLM/pull/12361) LTX-2 两阶段 pipeline 支持

### 5. DGX Spark 相关
- [#12316](https://github.com/NVIDIA/TensorRT-LLM/pull/12316) DGX-Spark 多节点 hang 问题修复
- [#12301](https://github.com/NVIDIA/TensorRT-LLM/pull/12301) 统一内存系统 KV cache 优化
- [#12309](https://github.com/NVIDIA/TensorRT-LLM/pull/12309) SM120/SM121 FP4 MoE dispatch 支持

---

*报告生成时间: 2026-03-20 07:40 AM (Asia/Shanghai)*  
*数据来源: [NVIDIA/TensorRT-LLM](https://github.com/NVIDIA/TensorRT-LLM)*
