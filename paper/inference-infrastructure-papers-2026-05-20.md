# ArXiv 推理基础设施论文日报

**日期**: 2026-05-20
**关键词**: inference serving, GPU kernel, distributed inference, LLM serving, attention optimization, speculative decoding

## ⚠️ 数据获取异常

今日 ArXiv API 因速率限制 (Rate exceeded) 暂时不可用，无法获取论文列表。

**原因**: 短时间内多次请求导致 IP 被限流。
**建议**: 稍后手动刷新或等待限流解除后重新获取。

## 📋 备用数据源

- ArXiv 官网: https://arxiv.org/list/cs.DC/recent
- ArXiv API: http://export.arxiv.org/api/query
- 限流规则: 建议间隔 3 秒以上再请求

## 💡 技术趋势观察

近期社区关注的推理基础设施方向：
1. **框架层面**: SGLang/vLLM 竞争白热化，Gemma4/Qwen3.5 等新模型支持
2. **算子优化**: FlashMLA、MoE kernel 融合、BF16 hot-update
3. **编译优化**: IREE/TorchInductor 对 GEMM/Attention 的 codegen 改进
4. **分布式**: Pipeline Parallelism、Ring Attention、PD 分离
5. **投机解码**: EAGLE-3、FlashMLA speculative decoding v2

---

> 记录时间: 2026-05-20 09:03
> 状态: ArXiv API 限流，报告生成失败
