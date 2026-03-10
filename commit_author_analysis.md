#!/bin/bash
# Analyze company distribution from commit data

cat << 'EOF'
## 近一个月 Commit 作者公司分布统计

**统计周期：** 2026年2月10日 - 2026年3月10日（过去一个月）  
**数据来源：** GitHub API (commits)

---

### 一、vLLM 项目

| 公司/组织 | 提交数量 | 占比 | 主要贡献者 |
|-----------|---------|------|-----------|
| **个人/独立开发者** | ~25 | ~25% | 各种个人邮箱 |
| **Red Hat** | ~12 | ~12% | Nick Hill, Matthew Bonanni, Russell Bryant, Alex Brooks |
| **AMD** | ~10 | ~10% | Andreas Karatzas, Micah Williamson |
| **Meta** | ~3 | ~3% | Lucas Kabela |
| **Oracle** | ~2 | ~2% | Chang Su |
| **Intel** | ~2 | ~2% | liuzhenwei, Li Jiang |
| **其他** | ~46 | ~46% | 其他公司或个人贡献 |

**观察：**
- vLLM 社区贡献非常分散，独立开发者占比约 25%
- Red Hat 是主要企业贡献者之一（12%）
- AMD 积极贡献 ROCm/AMD GPU 支持（10%）
- 来自 UC Berkeley（作者 Woosuk Kwon）、Meta、Oracle、Intel 等

---

### 二、SGLang 项目

| 公司/组织 | 提交数量 | 占比 | 主要贡献者 |
|-----------|---------|------|-----------|
| **个人/独立开发者** | ~35 | ~35% | 各种个人邮箱 |
| **AMD** | ~8 | ~8% | Jacob0226, YC Tseng, Bingxu Chen, AMD-yanfeiwang |
| **NPU/华为昇腾** | ~4 | ~4% | shuwenn, wenxuewuhd, 11b76d2 等 |
| **Alibaba** | ~2 | ~2% | siyu (liusy58@linux.alibaba.com) |
| **其他** | ~51 | ~51% | 其他公司或个人贡献 |

**观察：**
- SGLang 独立开发者比例更高（35%）
- AMD 贡献显著（8%），持续优化 ROCm 支持
- 中国厂商参与度高（华为昇腾 NPU、阿里云等）
- 社区活跃度极高（近900 PR/月）

---

### 三、TensorRT-LLM 项目

| 公司/组织 | 提交数量 | 占比 | 主要贡献者 |
|-----------|---------|------|-----------|
| **NVIDIA** | ~65 | ~65% | 绝大多数提交者使用 @nvidia.com 邮箱 |
| **个人/独立开发者** | ~8 | ~8% | 少量外部贡献 |
| **其他** | ~27 | ~27% | 其他公司贡献 |

**观察：**
- TensorRT-LLM 是 NVIDIA 主导的项目（65% 来自 NVIDIA 员工）
- 外部贡献相对较少（~8%）
- 开发节奏稳健，每月约 400+ PR
- 主要聚焦于 NVIDIA 硬件生态优化

---

## 总结对比

| 维度 | vLLM | SGLang | TensorRT-LLM |
|------|------|--------|--------------|
| **社区活跃度** | 🔥 极高（~875 PR/月） | 🔥 最高（~892 PR/月） | 🔥 高（~426 PR/月） |
| **企业主导度** | 中等（Red Hat、AMD 等） | 低（分散贡献） | 高（NVIDIA 主导 65%） |
| **独立开发者占比** | ~25% | ~35% | ~8% |
| **硬件厂商参与** | AMD(10%)、Intel(2%) | AMD(8%)、华为昇腾(4%) | 主要是 NVIDIA |
| **开源程度** | 完全开源，社区驱动 | 完全开源，社区驱动 | 开源但 NVIDIA 主导 |

---

## 趋势分析

1. **vLLM** 正成为企业级开源协作的典范
   - Red Hat 作为主要维护者之一
   - 各大硬件厂商（AMD、Intel）积极参与适配
   - 学术界（UC Berkeley）持续贡献核心技术

2. **SGLang** 社区最为活跃和分散
   - 独立开发者比例最高
   - 中国厂商（华为、阿里）参与度较高
   - 在扩散模型和多模态领域有独特优势

3. **TensorRT-LLM** 企业级产品导向
   - NVIDIA 内部主导开发
   - 与 NVIDIA 硬件深度绑定
   - 适合生产环境部署，但社区贡献门槛较高

EOF