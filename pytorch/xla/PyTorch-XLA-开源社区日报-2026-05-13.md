# PyTorch/XLA 开源社区日报
**日期**: 2026-05-13
**仓库**: pytorch/xla
**默认分支**: master

## 📊 今日概览
- 新增PR数量: 0
- 已合并数量: 0
- 已关闭数量: 0
- 当前Open PR总数: 10

## 🔥 活跃PR列表 (Open PRs)

| PR | 标题 | 作者 | 创建时间 | 状态 |
|---|---|---|---|---|
| [#9764](https://github.com/pytorch/xla/pull/9764) | fix: add missing Float8 tensor type mappings to StableHLO to prevent process-wide abort | hassanaymanelprens58-maker | 2026-04-30 | OPEN |
| [#9763](https://github.com/pytorch/xla/pull/9763) | security: fix integer overflow in as_strided and OOM in JSON parsing | hassanaymanelprens58-maker | 2026-04-29 | OPEN |
| [#9760](https://github.com/pytorch/xla/pull/9760) | Fix composite pass missing captured values in ops with nested regions | mstojkovicTT | 2026-03-30 | OPEN |
| [#9759](https://github.com/pytorch/xla/pull/9759) | Fix persistent compilation cache not working on TPU | shr1ram | 2026-03-23 | OPEN |
| [#9758](https://github.com/pytorch/xla/pull/9758) | Fix scan_layers to support layers with no weights | kredd2506 | 2026-03-21 | OPEN |
| [#9757](https://github.com/pytorch/xla/pull/9757) | Make a function wrapper for _get_xla_sharding_specs | ajakovljevicTT | 2026-03-17 | OPEN |
| [#9728](https://github.com/pytorch/xla/pull/9728) | Optimize as_strided_copy fast path to support offset | Zantares | 2025-12-10 | OPEN |
| [#9720](https://github.com/pytorch/xla/pull/9720) | Expose torch_xla.runtime.clear_computation_cache binding to clear computation cache | jameszianxuTT | 2025-11-24 | OPEN |
| [#9718](https://github.com/pytorch/xla/pull/9718) | Fix typo in warning message for SPMD mode | ddilbazTT | 2025-11-20 | OPEN |
| [#9683](https://github.com/pytorch/xla/pull/9683) | implement `XLAHooks` and register it to PyTorch when loaded | iwknow | 2025-10-20 | OPEN |

## ✅ 今日新增PR
无

## ✅ 今日已合并PR
无

## 📋 今日Commit摘要
- 默认分支 `master` 自 2026-05-12 以来无新 commits

## 💡 社区洞察
- 近期社区活动较为平缓，无新的 PR 创建或合并
- 最活跃的开放 PR 集中在 StableHLO 映射修复和安全漏洞修复方面
- TPU 相关修复（persistent compilation cache）仍在等待 review

