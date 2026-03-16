# LLM-Docs

本仓库收录了大语言模型（LLM）推理框架的深度调研报告、技术分析和趋势洞察。

## 📁 仓库结构

```
LLM-docs/
├── README.md                           # 本文件
├── sglang/                             # SGLang 开源社区日报
├── vllm/                               # vLLM 开源社区日报
├── tensorrt-llm/                       # TensorRT-LLM 开源社区日报
├── pytorch/                            # PyTorch 开源社区日报
├── iree/                               # IREE 开源社区日报
└── others/                             # 其他专题分析文档
    ├── LLM_Inference_Framework_Monthly_Summary.md    # 月度汇总报告
    ├── contributor_company_analysis.md                # 贡献者公司分布统计
    ├── commit_author_analysis.md                      # 提交作者分析
    └── tpu_architecture_analysis.md                   # TPU架构深度分析
```

## 📊 日报监控（自动更新）

每日自动生成以下框架的社区日报：

| 框架 | 目录 | 监控内容 |
|------|------|----------|
| **SGLang** | `sglang/` | PR、Commits、技术动态 |
| **vLLM** | `vllm/` | PR、Commits、性能优化 |
| **TensorRT-LLM** | `tensorrt-llm/` | PR、Commits、NVIDIA生态 |
| **PyTorch** | `pytorch/` | PR、Commits、分布式训练 |
| **IREE** | `iree/` | PR、Commits、MLIR编译器 |

**文件名格式**: `框架名-开源社区日报-YYYY-MM-DD.md`

## 📑 专题分析文档（others/）

| 文件 | 描述 |
|------|------|
| **LLM_Inference_Framework_Monthly_Summary.md** | vLLM、SGLang、TensorRT-LLM 月度汇总报告（PR统计、主要工作方向、趋势分析） |
| **contributor_company_analysis.md** | 三大框架贡献者公司/组织分布统计（基于GitHub commit邮箱分析） |
| **commit_author_analysis.md** | 提交作者详细分析（早期版本，已合并到 contributor_company_analysis.md） |
| **tpu_architecture_analysis.md** | TPU后端架构深度分析（与GPU架构差异、性能优化策略） |

## 🎯 调研范围

### 核心框架
- **vLLM** - 开源LLM推理引擎，PagedAttention开创者
- **SGLang** - 高性能推理框架，多模态/扩散模型优化
- **TensorRT-LLM** - NVIDIA企业级推理优化方案
- **PyTorch** - 深度学习框架，分布式训练支持
- **IREE** - MLIR-based 机器学习编译器

### 分析维度
- 📊 社区活跃度（PR数量、提交频率）
- 🏢 企业参与情况（公司分布、贡献比例）
- 🔧 技术演进方向（硬件支持、性能优化、新特性）
- 📈 架构趋势（分离式推理、量化技术、多模态）

## 📊 最新统计（2026年2月-3月）

| 框架 | 月提交数 | 主要贡献者 | 特点 |
|------|---------|-----------|------|
| vLLM | 877 | Red Hat(14.6%), AMD(8.8%), Intel(7.2%) | 企业协作典范，多硬件支持 |
| SGLang | 896 | 个人开发者(44.9%), AMD(5.1%) | 社区驱动，多模态领先 |
| TensorRT-LLM | 437 | NVIDIA(66.8%) | 企业级产品，NVIDIA生态核心 |

## 🔍 使用场景

- **技术选型参考** - 了解各框架优势与适用场景
- **行业趋势分析** - 追踪LLM推理技术发展方向
- **社区贡献洞察** - 识别主要厂商和技术生态
- **架构设计借鉴** - 学习先进推理系统设计思想

## 📝 更新频率

- **日报** - 每天 08:00 自动生成五大框架的社区日报
- **月度报告** - 每月初更新三大框架活跃度统计
- **专题分析** - 针对热点技术（如TPU支持、新模型适配）不定期发布深度分析

## 🤝 贡献

报告基于GitHub公开数据分析生成，欢迎提出改进建议或补充其他框架的调研。

---

*最后更新：2026年3月16日*  
*数据来源：GitHub API*  
*生成工具：OpenClaw*
