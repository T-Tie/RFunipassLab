# RFunipass：面向跨程序泛化的协同引导贝叶斯优化 LLVM 通用 Pass 序列搜索

> 中文草稿版本：2026-04-25  
> 目标会议：PLDI / OOPSLA / CGO / ASPLOS / ICSE 经验研究方向  
> 当前定位：已有较强论文雏形，但距离顶会投稿仍需补充 baseline、ablation、artifact-level 指标与更广泛外部数据集。

## 摘要

现代优化编译器包含大量 transformation pass 与 analysis pass。一个 pass 的效果不仅取决于它是否被启用，也高度依赖其在优化流水线中的位置。已有编译器自动调优系统通常针对单个程序搜索编译选项或 pass 序列，能够获得较强效果，但需要对每个程序单独调优，部署成本较高。本文研究一个互补问题：是否可以学习一条**跨程序通用的 LLVM pass 序列**，使其在未见过的程序上仍能超过强代码尺寸基线 `-Oz`？

本文提出 **RFunipass**，一种面向 LLVM New Pass Manager 的协同引导贝叶斯优化框架，用于搜索通用 pass 序列。RFunipass 将 pass 之间的相互作用建模为有向协同图，结合程序特征和迭代评估结果生成候选序列，并通过 legality-aware pass nesting 将抽象序列转换为 LLVM 可执行的 module、CGSCC、function 与 loop 层级 pipeline。最终序列仅依据验证集选择，再在 held-out 测试集与外部 benchmark 上报告泛化效果。

在 `instrcount-lite`、`LOOP_NESTING_POLICY=wrap`、10 个随机种子的实验中，RFunipass 将 POJ held-out 测试集上的 IR instruction count 降至 `-Oz` 的 `0.7737× ± 0.0563×`，平均减少 `22.63%`。验证集最优 seed 在 POJ 测试集上达到 `0.7102×`，即相对 `-Oz` 减少 `28.98%`。无需任何额外外部数据集调优，同一组 10 条通用序列迁移到完整 30-program PolyBench/C 4.2.1 后，达到 `0.6019× ± 0.1260×`，平均减少 `39.81%`，且 `30/30` 程序均有效、无 timeout。这些结果表明，从一个程序分布中学习到的 compiler pass 协同关系可以形成紧凑、可迁移的通用优化 pipeline。

## 1. 引言

编译器优化本质上是一个 phase-ordering 问题：一个 pass 是否有效，往往取决于它前后执行了哪些 pass。随着 LLVM 等现代编译器中 pass 数量增加，优化序列搜索空间呈组合爆炸。生产编译器通常采用人工设计的固定优化级别，例如 `-O2`、`-O3`、`-Os` 和 `-Oz`。这些 pipeline 稳定可靠，但也不可避免地较为保守，难以充分利用不同 pass 之间的复杂交互。

编译器自动调优试图通过自动搜索改善这一问题。MILEPOST GCC 学习编译器启发式以优化运行时间、代码尺寸或编译时间；OpenTuner 提供了可扩展的多策略程序调优框架；BOCA 将贝叶斯优化引入 compiler autotuning；AutoPhase 探索基于强化学习的 LLVM phase ordering；CompilerGym 提供面向机器学习编译优化的标准化环境；近年来 Coreset pass ordering 与 LLM-based compiler optimization 也在代码尺寸优化上取得进展。然而，这些工作多数关注单程序调优、程序相关策略选择，或需要对每个程序执行大量编译与评估。

本文研究另一个操作点：**分布级别的通用 pass 序列学习**。RFunipass 不为每个程序单独搜索序列，而是在训练分布上学习一条紧凑通用序列，并检验它能否迁移到 held-out 程序和外部分布。这一设定适用于 per-program tuning 成本过高、构建系统需要稳定单一 pipeline、或研究者希望发现可复用 pass 协同关系的场景。

RFunipass 基于三个设计原则：

1. **关注 pass 协同而非单 pass 重要性。** 某些 pass 单独效果有限，但在其他 pass 暴露优化机会后会变得重要。因此，pass ordering 应被视为交互学习问题。
2. **生成 LLVM 合法 pipeline。** LLVM New Pass Manager 区分 module、CGSCC、function 与 loop pass。RFunipass 将学习到的抽象序列转换为合法可执行 pipeline。
3. **以验证集选择、测试集报告。** 最终序列仅由验证集 objective 选择；测试集和外部数据集只用于报告泛化效果，避免外部测试集泄漏。

本文贡献如下：

- **问题定义。** 将 LLVM pass 序列搜索表述为分布级通用优化，而非单程序调优。
- **方法。** 提出协同图引导的贝叶斯优化循环，学习紧凑通用 pass 序列，并显式处理 LLVM New PM 层级合法性。
- **工程系统。** 构建可复现实验框架，统一记录 seed、split、objective、baseline、backend level、loop policy、最终序列与外部验证 manifest。
- **实验结果。** 报告 POJ 10-seed held-out test 结果，以及到完整 PolyBench/C 4.2.1 的 out-of-distribution transfer 结果。
- **分析。** 总结当前不足，包括 runtime、binary size、更强 baseline、更广泛外部数据集与 timeout/safety 处理。

## 2. 背景与动机

### 2.1 LLVM pass ordering

LLVM 优化 pipeline 包含多个粒度。Module pass 可以观察和转换整个 module；CGSCC pass 作用于调用图强连通分量；function pass 作用于单个函数；loop pass 必须嵌入 function-level loop adaptor。这个层级结构意味着，不能简单把任意 pass 列表直接传给 `opt -passes=...`。

因此，RFunipass 区分**原始学习序列**和**实际可执行 pipeline**。当前推荐策略是 `LOOP_NESTING_POLICY=wrap`，即将 loop pass 显式包装到合法 function adaptor 中，而不是依赖相邻 function pass 进行启发式嵌入。这样可以保证日志、manifest 和真实执行的 LLVM pipeline 一致。

### 2.2 为什么研究通用 pass 序列？

Per-program autotuning 可以很强，但代价昂贵。实际构建系统通常无法为每个程序执行数百或数千次编译。通用序列将搜索成本分摊到多个程序上：一旦学习完成，就可以像自定义优化级别一样应用。它牺牲一部分单程序最优性，换取部署性、可复现性和可解释性。

RFunipass 的核心假设是：

> 一条紧凑的 LLVM pass 序列可以捕获跨程序可复用的优化协同关系，并在 held-out 和外部程序上超过 `-Oz` 的代码尺寸相关目标。

## 3. 方法

### 3.1 搜索空间

RFunipass 搜索 LLVM New Pass Manager pass 序列。每个 pass 标注其作用域，例如 `module(globalopt)`、`function(newgvn)`、`function(dse)`、`cgscc(attributor-cgscc)` 和 `function(loop(loop-simplifycfg))`。候选序列首先表示为抽象有序列表，然后被规范化为 LLVM 可执行 pipeline。

### 3.2 优化目标

当前论文草稿的主目标是相对 `-Oz` 的 IR instruction count。对程序 `p`，令 `I_s(p)` 表示候选序列 `s` 优化后的 instruction count，`I_Oz(p)` 表示 `-Oz` 后的 instruction count。归一化比例为：

```text
r_s(p) = I_s(p) / I_Oz(p)
```

该值越低越好。报告指标为 `mean_norm`；提升比例为：

```text
Improve vs Oz = 1 - mean_norm
```

内部 objective 还包含 worsen penalty，以惩罚使较多程序变差的序列。

### 3.3 协同引导贝叶斯优化

RFunipass 的搜索循环受到 BOCA 式贝叶斯优化启发，但目标从单程序编译选项调优变为通用序列发现。每轮迭代中，系统在训练 split 上评估候选 pass 序列，更新 pass 与序列效用估计，并偏向生成具有高潜在收益的 pass 交互组合。

RFunipass 使用有向协同图保留 pass 间关系，包括 self-loop 与 pairwise benefit。例如重复执行 `attributor`，或组合 `gvn-hoist → newgvn → dse`，可能只有在前序 pass 改写 IR 后才产生新的事实传播或冗余清理机会。

### 3.4 合法 loop nesting

LLVM loop pass 不能任意出现在 module scope。早期实验中曾探索 `legacy_previous_function` 与 `attach_next_synergy` 等策略；当前默认采用 `wrap`，保证 effective pipeline 显式、稳定且合法。对实验复现而言，这一点非常关键：论文和日志中报告的序列必须与 `opt` 真正执行的 pipeline 一致。

### 3.5 可复现实验基础设施

RFunipass 提供统一 multi-seed runner。每次运行记录：

- experiment seed 与 split seed；
- objective kind 与 baseline；
- feature mode；
- backend optimization level；
- loop nesting policy；
- final raw/effective pass sequence；
- validation/test metrics；
- external validation reports 与 manifests。

这对顶会级经验研究至关重要，因为 pass ordering 结果对 seed、split、LLVM 版本和 timeout policy 都很敏感。

## 4. 实验设置

### 4.1 编译器与工具链

实验使用 LLVM 21.1.8 assertions build。当前项目默认 LLVM 工具路径为：

```text
/root/llvm/llvm-project-21/build/bin
```

外部 linked LLVM IR 使用 canonical frontend mode 生成：

```text
clang -O1 -Xclang -disable-llvm-passes -emit-llvm
```

这样避免 `-O0` 产生 `optnone` 阻止后续 pass，同时避免提前运行完整 LLVM middle-end，为 RFunipass 序列保留优化空间。

### 4.2 训练分布

主训练/评估分布为 POJ。每个 seed 生成 search-train、validation 和 test split。最终序列仅依据 validation 选择，test 保持 held-out。

主配置为：

```text
OBJECTIVE_KIND=instrcount
OBJECTIVE_BASELINE=oz
FEATURE_MODE=lite
LOOP_NESTING_POLICY=wrap
BACKEND_OPT_LEVEL=-O0
seeds = 456..465
```

### 4.3 外部分布

外部验证使用 `external_datasets`。当前最强外部结果来自完整 PolyBench/C 4.2.1：

- suite：`polybench_full`；
- programs：30；
- baseline：`-Oz`；
- timeout：120s；
- workers：4；
- 外部程序不参与调优或 seed 选择。

## 5. 实验结果

### 5.1 POJ held-out 测试集上的分布内泛化

在 10 个独立 seed 上，RFunipass 将 POJ held-out 测试集 instruction count 降至 `-Oz` 的 `0.7737× ± 0.0563×`，即平均减少 `22.63%`。测试集 worsen rate 为 `9.40% ± 5.58%`，最终序列长度为 `14.80 ± 4.29`。

| 指标 | Mean ± Std | Best | Worst |
| --- | ---: | ---: | ---: |
| Validation mean_norm | 0.7482 ± 0.0417 | 0.6635 | 0.8135 |
| Test mean_norm | 0.7737 ± 0.0563 | 0.7102 | 0.8598 |
| Test improvement vs `-Oz` | 22.63% ± 5.63% | 28.98% | 14.02% |
| Test worsen rate | 9.40% ± 5.58% | 2.00% | 18.00% |
| Sequence length | 14.80 ± 4.29 | 8 | 22 |

验证集最优 seed 为 `463`，validation mean_norm 为 `0.6635`，POJ test mean_norm 为 `0.7102`，即相对 `-Oz` 减少 `28.98%`。

### 5.2 迁移到完整 PolyBench/C 4.2.1

将同一组从 POJ 学到的 10 条序列直接迁移到完整 30-program PolyBench/C 4.2.1，不进行任何外部数据集调优。RFunipass 达到 `0.6019× ± 0.1260×` normalized instruction count，即相对 `-Oz` 平均减少 `39.81% ± 12.60%`。所有程序均有效，没有 invalid 或 timeout。

| Suite | Programs | Valid | Seeds | Mean Norm ↓ | Improve vs `-Oz` ↑ | Worsen Rate ↓ | Invalid | Timeout |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| PolyBench/C 4.2.1 full | 30 | 30.00 ± 0.00 | 10 | 0.6019 ± 0.1260 | 39.81% ± 12.60% | 19.00% ± 14.49% | 0.00 ± 0.00 | 0.00 ± 0.00 |

验证集最优 seed `463` 在完整 PolyBench/C 上表现尤其突出：mean_norm 为 `0.4602×`，相对 `-Oz` 减少 `53.98%`，worsen rate 仅 `6.67%`。另一个有趣现象是，seed `457` 在 POJ validation 中排名第 9，但在 PolyBench/C 上也表现很强。这说明 validation ranking 有参考价值，但对外部分布 ranking 的预测并不完美。

### 5.3 结果解释

完整 PolyBench/C 结果是当前最有说服力的外部证据。PolyBench/C 以循环和数组密集型数值程序为主，而 POJ 是更混合的程序竞赛风格分布。POJ 上学到的通用序列能够在完整 PolyBench/C 上无额外调优地取得大幅 instruction-count 降低，说明 RFunipass 并非只记忆 POJ 的局部分布特征，而是捕获了可复用的 IR 简化与代码尺寸优化协同关系。

同时，方法并非对所有程序都更好。POJ test 和 PolyBench/C full 上都存在一定 worsen rate。这是通用序列的自然代价：一条固定 pipeline 很难在每个程序上都优于 `-Oz`。因此，RFunipass 的目标不是 per-program optimality，而是在平均收益、稳定性和部署成本之间取得更优折中。

## 6. 消融与分析计划

当前实现已经具备支持下列消融实验的基础，但顶会投稿前仍需系统完成：

1. **无协同图。** 不使用 pass-interaction edge 生成候选序列。
2. **无 self-loop。** 移除 `attributor → attributor` 等重复 pass 转移。
3. **无 loop pass。** 比较去除 loop pass 或错误嵌入 loop pass 的影响。
4. **loop policy 对比。** 比较 `wrap`、`legacy_previous_function` 与 `attach_next_synergy`。
5. **无 validation selection。** 使用 train-best 或 final-iteration 序列，量化过拟合。
6. **随机搜索 / BOCA-style baseline。** 与随机通用序列、非协同 BOCA 式 universal search 对比。
7. **LLVM 默认优化级别。** 与 `-O0`、`-O1`、`-O2`、`-O3`、`-Os`、`-Oz` 统一比较。
8. **Binary-size side metrics。** 报告 `.text`、`.data`、`.bss`、`dec` 和 stripped file size。
9. **Runtime validation。** 检验 instruction-count 减少是否转化为 runtime 改善，还是主要反映 IR size 降低。

## 7. 相关工作

**编译器自动调优。** MILEPOST GCC 是较早的 machine-learning-based self-tuning compiler，学习编译启发式以优化运行时间、代码尺寸或编译时间。OpenTuner 提供通用 autotuning 框架，支持不同配置空间和搜索策略组合。BOCA 使用贝叶斯优化进行 compiler autotuning，并在效率上优于 RIO、GA、Irace 和通用 Bayesian 方法。

**Phase ordering 与强化学习。** AutoPhase 将 LLVM phase ordering 建模为强化学习问题，在 HLS-oriented LLVM pipeline 上展示了 deep RL 的潜力。CompilerGym 提供可复现、鲁棒的 production-compiler optimization environment，推动机器学习编译优化研究。

**代码尺寸导向 pass 选择。** Coreset-based pass ordering 通过选择较小候选 pass 集并学习策略选择序列来降低 action space。LLM-based compiler optimization 则训练模型预测有利于代码尺寸的编译选项。这些方法多数仍是 program-dependent decision，而 RFunipass 关注 reusable universal sequence。

**RFunipass 的定位。** 与上述工作相比，RFunipass 聚焦分布级通用 pass 序列、显式 pass 协同结构、LLVM New PM 合法性，以及 multi-seed validation/test 报告。它的优势在于部署简单：一旦学到序列，就可以像自定义优化级别一样应用。

## 8. 局限性

当前证据有潜力，但还不足以直接支撑顶会最终投稿。

- 主指标仍是 IR instruction count，而非 executable size 或 runtime。
- 外部泛化在完整 PolyBench/C 上很强，但 CBench 和 Csmith 仍需更干净、timeout 更少的结果。
- baseline 还不够强，缺少 random universal search、OpenTuner-style search、BOCA-style per-program tuning、Coreset-style sequence selection 等对比。
- 统计检验仍不完整，需要 confidence interval、paired test 和 per-program distribution。
- 方法需要更系统处理 LLVM assertions，尤其是 `attributor` 相关 crash/timeout。
- 在 binary size 和 runtime 实验完成前，不应过度声称实际可执行文件尺寸或运行时间收益。

## 9. 结论

RFunipass 展示了从一个程序分布中学习通用 LLVM pass 序列，并迁移到外部 benchmark 的可行性。当前 10-seed 实验表明，RFunipass 在 POJ held-out test 上稳定超过 `-Oz`；完整 PolyBench/C 4.2.1 结果进一步显示其 out-of-distribution transfer 能力，并且无 invalid/timeout。为了达到顶会投稿标准，下一步应重点补充强 baseline、系统消融、binary-size/runtime 指标和失败案例分析。

## 参考文献

- Efficient Compiler Autotuning via Bayesian Optimization (BOCA), ICSE 2021: https://tjusail.github.io/people/chenjunjie/files/ICSE21-BOCA.pdf
- OpenTuner: An Extensible Framework for Program Autotuning, PACT 2014: https://commit.csail.mit.edu/papers/2014/ansel-pact14-opentuner.pdf
- MILEPOST GCC: Machine Learning Based Research Compiler: https://research.ibm.com/publications/milepost-gcc-machine-learning-based-research-compiler
- CompilerGym: Robust, Performant Compiler Optimization Environments for AI Research: https://arxiv.org/abs/2109.08267
- AutoPhase: Compiler Phase-Ordering for High Level Synthesis with Deep Reinforcement Learning: https://arxiv.org/abs/1901.04615
- Learning Compiler Pass Orders using Coreset and Normalized Value Prediction: https://arxiv.org/abs/2301.05104
- Large Language Models for Compiler Optimization: https://arxiv.org/abs/2309.07062
