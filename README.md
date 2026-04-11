# RFunipassLab

这是一个**与 `RFunipass` 平级**的、面向实验阶段的轻量级外壳。

它的目标不是重写 `RFunipass`，而是把实验过程中最常见的几件事单独整理出来：

1. 用一个清晰的地方管理实验配置；
2. 用一个简单的入口运行单个实验；
3. 用一个批处理入口执行一组实验；
4. 自动把日志汇总成便于查看的 `csv` / `md` 报告；
5. 全程**不改动任何 `RFunipass` 现有文件**。

## 设计原则

- **足够简单**：只使用 Python 标准库，不引入额外依赖。
- **足够清楚**：核心配置都在 `configs.py` 里，便于直接改。
- **足够稳妥**：运行前做一层轻量参数校验，尽早发现明显错误。
- **足够可追踪**：每次运行都会保存一份 manifest，便于论文实验复现。

## 目录结构

```text
RFunipassLab/
├── README.md
├── boca.py
├── boca_exp/
│   ├── config-like modules
│   └── runner/search/data/...
├── configs.py
├── run_one.py
├── run_sweep.py
├── summarize.py
├── data/
└── results/
    ├── logs/
    ├── manifests/
    └── reports/
```

## 每个文件负责什么

- `boca.py`
  - `RFunipassLab` 自带的实验主逻辑副本
  - 不再依赖从原项目导入主脚本
- `configs.py`
  - 保存基础环境变量 `BASE_ENV`
  - 保存实验列表 `EXPERIMENTS`
  - 负责路径定义、目录创建、轻量参数校验
- `run_one.py`
  - 运行一个实验
  - 自动生成日志和 manifest
- `run_sweep.py`
  - 批量运行多个实验
  - 运行结束后自动调用汇总逻辑
- `summarize.py`
  - 解析 `boca.py` 产生的日志
  - 生成机器可读的 `summary.csv`
  - 生成方便人工阅读的 `summary.md`

## 你通常只需要改哪里

大多数情况下，只需要改 `configs.py` 里的两处内容：

1. `BASE_ENV`
   - 控制默认实验参数
2. `EXPERIMENTS`
   - 控制要跑哪些实验，以及每个实验覆盖哪些参数

也就是说，这个小框架故意把“入口”和“配置”分开，但不把事情做复杂。


## 为什么现在更适合做论文/消融

- `boca.py` 现在只是薄入口，主逻辑拆分到了 `boca_exp/`
- 数据加载、目标函数、搜索算子、最终选择已经按职责拆开
- 做 ablation 时可以直接替换某一层模块，而不必在一个超大文件里找位置
- 论文写作时也更容易对应成“数据层 / 特征层 / 搜索层 / 选择层”的方法章节

## 使用方式

### 1. 查看有哪些实验

```bash
python RFunipassLab/run_one.py --list
```

### 2. 运行单个实验

```bash
python RFunipassLab/run_one.py --name baseline
```

### 3. 只看解析后的环境变量，不真正运行

```bash
python RFunipassLab/run_one.py --name valratio_020 --show-env --dry-run
```

### 4. 批量运行全部实验

```bash
python RFunipassLab/run_sweep.py
```

### 5. 只运行部分实验

```bash
python RFunipassLab/run_sweep.py --names baseline valratio_020 rnum_128
```

### 6. 重新汇总已有日志

```bash
python RFunipassLab/summarize.py
```

## 数据输入位置

- 默认读取 `RFunipassLab/data/tuning_results.csv`
- 默认读取 `RFunipassLab/data/Step3_EnumeratedPairs.csv`
- 如果你的数据不放在这里，可以通过环境变量 `TUNING_CSV` 和 `SYNERGY_CSV` 显式指定
- `boca.py` 的 autophase 动态库路径也可通过 `AUTOPHASE_LIB` 覆盖

## 结果输出位置

- 原始日志：`RFunipassLab/results/logs/`
- 运行清单：`RFunipassLab/results/manifests/`
- 汇总报告：`RFunipassLab/results/reports/`

## 关于 manifest

每次运行都会产生一份 manifest，里面记录：

- 实验名称
- 覆盖参数
- 实际使用的环境变量
- 运行命令
- 日志路径
- 开始/结束时间
- 退出码

这对论文写作和实验复现实用价值很高，而且实现成本很低，所以这里保留了。

## 为什么不用更复杂的配置系统

你当前阶段需要的是**实验级框架**，不是通用软件平台，所以这里刻意不做下面这些事情：

- 不引入 YAML / Pydantic
- 不引入插件系统
- 不拆很多层目录
- 不重写 `RFunipass/boca.py`

如果后面研究真的扩展到多目标、多数据集、多后端，再往上升级也来得及。
