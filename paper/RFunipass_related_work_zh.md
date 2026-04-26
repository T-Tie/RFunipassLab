# RFunipass 相关工作筛选、论文指导与可选写法

> 生成日期：2026-04-26  
> 文献来源：`related/` 目录下的 PDF。  
> 用途：为 RFunipass 顶会论文的 Related Work、定位叙述、实验补强提供依据。  
> 说明：本文先过滤“排不上用场”的文献，再对高价值文献给出可借鉴点，最后提供三个不同版本的“相关工作”段落。

## 1. 筛选原则

RFunipass 当前论文主线是：

> 面向 LLVM New Pass Manager，学习一条跨程序泛化的通用 pass 序列；使用协同关系与贝叶斯优化搜索；以 `-Oz` 为强代码尺寸基线；在 POJ held-out test 与 full PolyBench/C 上验证 instruction-count 泛化。

因此，文献筛选按以下优先级进行：

| 等级 | 是否应进入论文 | 判断标准 |
| --- | --- | --- |
| A. 核心引用 | 必须进入 Related Work | 直接研究 compiler autotuning、LLVM pass ordering、代码尺寸优化、BOCA/BO/phase ordering |
| B. 强支撑引用 | 建议进入 Related Work | 研究 ML for compiler、program representation、compiler optimization environment，可支撑方法选择 |
| C. 可选引用 | 可放扩展版或背景段 | LLM for compiler/code optimization、通用 autotuning、RL 基础、系统调优启发 |
| D. 弱相关/剔除 | 不建议进入正文 | 数据库调优、二进制相似性、GC、一般代码大模型、编译器测试等，与本文主线距离较远 |

## 2. 文献筛选结果

### 2.1 A 类：核心引用，建议正文重点使用

这些文献与 RFunipass 的研究问题最接近，应进入 Related Work 主体。

| 文献 | 相关性 | 对 RFunipass 的作用 |
| --- | --- | --- |
| `Efficient Compiler Autotuning via Bayesian Optimization.pdf` | 极高 | BOCA 是本文贝叶斯优化思路的重要来源；但 BOCA 主要调 compiler flags，RFunipass 搜索通用 pass sequence |
| `Towards Efficient Compiler Auto-tuning.pdf` | 极高 | 直接研究 pass synergy search space；可用于凸显 RFunipass 的“协同关系”主线 |
| `s42514-024-00197-9.pdf` | 极高 | 通过 pass dependence / subsequence 建模优化 runtime 和 code size；与 RFunipass 的 pass 协同思想非常接近 |
| `Learning compiler pass orders using coreset and normalized value prediction.pdf` | 极高 | Meta/ICML 风格的 pass sequence code-size 工作；是 RFunipass 必须对比和定位的最近邻工作 |
| `FaustinoCC21.pdf` | 极高 | 系统探索 LLVM code-size optimization sequence space，提出 optimization cache 和 default covering set；与通用序列思想接近 |
| `AutoPhase.pdf` | 高 | RL 解决 LLVM phase ordering，强调泛化到未见程序；可作为 RL pass-ordering 对比 |
| `Static Neural Compiler Optimization via Deep Reinforcement Learning.pdf` | 高 | 静态神经编译优化与 phase ordering；用于说明 RL 类方法多为 program-dependent/policy-based |
| `OpenTuner.pdf` | 高 | 经典 autotuning 框架；可作为搜索框架和 multi-objective autotuning 背景 |
| `Compilergym.pdf` | 高 | 标准化 compiler optimization environment；可支撑实验可复现性和 compiler RL 环境背景 |
| `Compiler Auto-tuning through Multiple Phase Learning.pdf` | 高 | CompTuner 直接比较 BOCA、GCC/LLVM、cBench/PolyBench；可作为 compiler autotuning baseline 背景 |
| `A Collaborative Filtering Approach for the Automatic Tuning of Compiler Optimisations.pdf` | 高 | 使用 collaborative filtering 迁移优化经验；与 RFunipass 的跨程序泛化目标相关 |
| `Iterative compilation optimization based on metric learning and collaborative filtering.pdf` | 高 | 结合 metric learning 与 collaborative filtering；可放入“跨程序迁移/推荐式调优”段落 |
| `Iterative Compilation Optimization.pdf` | 高 | 迭代编译经典方向，可作为 phase ordering 和 autotuning 历史背景 |
| `A Graph-Based Algorithm for Optimizing GCC Compiler Flag Settings.pdf` | 中高 | graph-based compiler flag tuning，强调减少迭代次数；与 RFunipass 图式协同搜索有间接联系 |

### 2.2 B 类：强支撑引用，建议按主题选择性进入

这些文献不一定直接搜索 pass 序列，但能支撑 RFunipass 的特征表示、ML compiler 背景和 LLVM 生态定位。

| 文献 | 相关性 | 使用建议 |
| --- | --- | --- |
| `PROGRAML.pdf` | 高 | 经典 IR/program graph 表示，支撑“程序表示影响 ML 编译优化” |
| `PROGRAML2021.pdf` | 中高 | ProGraML 扩展/摘要版；与 `PROGRAML.pdf` 二选一即可 |
| `IR2Vec_A_Flow_Analysis_based_Scalable_Infrastructu.pdf` | 高 | LLVM IR embedding 代表作，可支撑 IR-level feature/embedding 背景 |
| `Compiler-based graph representations for deep learning models of code.pdf` | 中高 | 编译器图表示，支撑图表示方向 |
| `A Numerical Aware Program Graph Representation for Performance Optimization and Program Analysis (PERFOGRAPH).pdf` | 中高 | 数值感知程序图表示，适合在扩展版中提及 |
| `Multi-modal IR-based Pretrained Embeddings for Peformance Optimizations (MIREncoder).pdf` | 中高 | IR 多模态预训练 embedding，适合说明特征学习方向 |
| `Performance Optimization using Multimodal Modeling and Heterogeneous GNN.pdf` | 中 | HPC/heterogeneous GNN 调优，可作为 program representation 扩展引用 |
| `MLGO.pdf` | 高 | LLVM 中真实落地的 ML-guided optimization，适合说明 ML compiler 工业化趋势 |
| `MLGOPerf.pdf` | 中高 | MLGO 性能版，适合说明 ML-guided inliner 从 size 扩展到 performance |
| `The Next 700 ML-Enabled Compiler Optimizations.pdf` | 高 | ML-Compiler-Bridge 和 ML-enabled compiler 系统化趋势，适合放相关工作结尾 |
| `Learning to Make Compiler Optimizations More Effective.pdf` | 中高 | LoopLearner 源码级 loop transformation，说明“学习优化编译器效果”的另一条路径 |
| `NeuroVectorizer.pdf` | 中高 | 针对 loop vectorization 的 RL，适合放 ML compiler heuristic 段 |
| `Ithemal.pdf` | 中 | backend/basic-block throughput 预测，不是 pass ordering，但可作为 ML cost model 背景 |

### 2.3 C 类：可选引用，适合扩展版或背景段

这些文献与 RFunipass 主线有启发，但不建议在精简版 Related Work 中占太多篇幅。

| 文献 | 使用建议 |
| --- | --- |
| `Algorithms for Hyper-Parameter Optimization.pdf` | BO / expected improvement 的基础背景，可在方法或脚注引用 |
| `Autotuning Systems.pdf` | 通用 autotuning survey，可在引言或背景中引用一两句 |
| `LLM-Compiler-Survey.pdf` | 如果论文讨论 LLM compiler optimization，可作为综述引用 |
| `Foundation Language Models for Compiler Optimization.pdf` | Meta LLM Compiler，适合说明 LLM 可预测优化决策，但与 RFunipass 搜索式方法不同 |
| `Intent-Driven IR Optimization with Large Language Models.pdf` | LLM 直接优化 IR，适合作为新兴方向对比 |
| `Compiler-R1.pdf` | Agentic compiler auto-tuning with RL/LLM，和 pass sequence tuning 相关，但时间较新，需要谨慎定位 |
| `Search-based llms for code optimization.pdf` | 代码级搜索式 LLM 优化，适合扩展版提及 |
| `CodeBERT.pdf` | 通用 code representation 背景，不建议核心引用 |
| `GraphCodeBERT.pdf` | 数据流增强代码预训练，若写 code representation 可轻量引用 |
| `CodeGeeX.pdf` | 代码生成大模型，不建议正文使用 |
| `IRCoder.pdf` | IR 辅助 Code-LM，多语言 code generation，和 IR 表示有关但非编译优化主线 |
| `OctoPack.pdf` | Code LLM instruction tuning，弱相关 |
| `OBSCURACODER.pdf` | Code LM 预训练，弱相关 |
| `LANGUAGE-AGNOSTIC REPRESENTATION LEARNING.pdf` | AST/source 表示学习，弱到中等相关 |
| `How could Neural Networks understand Programs.pdf` | 程序理解综述/观点类，可选 |
| `Neural Code Comprehension.pdf` | 程序理解背景，可选 |
| `Unleashing the power of compiler intermediate representation to enhance neural program embeddings.pdf` | IR 提升程序 embedding，若写 IR representation 可选 |
| `Transferable Graph Optimizers for ML Compilers.pdf` | ML compiler 图优化，与通用 compiler pass sequence 不同，可作泛化/transfer 背景 |
| `TLM.pdf` | tensor program generation，和 compiler search 有启发，但领域偏 ML compiler/tensor |

### 2.4 D 类：建议过滤，不进入正文

这些文献与本文主线关系弱，放入 Related Work 会稀释叙事。

| 文献 | 过滤原因 |
| --- | --- |
| `GPTuner.pdf` | 数据库 knob tuning，不是 compiler pass ordering；最多作为“系统调优”类远背景 |
| `LATuner.pdf` | LLM-enhanced database tuning，非编译器 |
| `lambda-Tune.pdf` | 数据库调优，非编译器 |
| `explainable AI via L2O.pdf` | XAI/L2O 泛化主题，和本文关联过弱 |
| `Human-level control through deep reinforcement learning.pdf` | DQN 经典论文，但本文不用 RL，没必要正文引用 |
| `Proximal Policy Optimization Algorithms.pdf` | PPO 基础论文，除非实现 RL baseline，否则不引用 |
| `Bounding Space Usage of Conservative.pdf` | GC memory management，和本文无关 |
| `In-Memory Fuzzing for Binary Code Similarity.pdf` | binary similarity，非 compiler autotuning |
| `Representing binary program semantics for similarity analysis via a probabilistic execution model.pdf` | binary semantics/similarity，非本文主线 |
| `24650_Behavioral_Embeddings_of.pdf` | PDF 文本无法有效提取，且从文件名看更偏行为 embedding，不作为当前主引用 |
| `ECCO-ICML.pdf` | PDF 文本无法有效提取，当前无法可靠判断；暂不纳入 |
| `fse2026-paper3312.pdf` | PDF 文本无法有效提取，当前无法可靠判断；暂不纳入 |
| `INVESTIGATING THE EFFECT OF PEEPHOLE OPTIMIZATIONS ON BINARY CODE.pdf` | peephole/binary-code 影响分析，和 universal pass sequence 较远 |
| `Targeted Testing of Compiler Optimizations via Grammar-Level Composition Styles.pdf` | 编译器优化测试/fuzzing，非优化序列搜索；可作为 future safety work，不放核心相关工作 |

## 3. 对 RFunipass 论文的写作指导

### 3.1 论文最应该强调的差异点

现有文献可以帮助 RFunipass 建立一个清晰定位：

| 对比对象 | 他们做什么 | RFunipass 应强调什么 |
| --- | --- | --- |
| BOCA / CompTuner / OpenTuner | 多数调 compiler flags 或配置，通常面向单程序调优 | RFunipass 搜索 LLVM pass sequence，而且目标是跨程序通用序列 |
| AutoPhase / Static Neural Compiler Optimization | 学习 program-dependent phase-ordering policy | RFunipass 输出一条可部署的 universal sequence，不需要每个程序单独决策 |
| Coreset pass ordering | 学习从 coreset sequences 中为每个程序选择序列 | RFunipass 学的是单条通用序列，部署更简单，但牺牲 per-program optimality |
| Pass dependence / synergy search space | 将 pass 依赖或 pass pair 转为更小搜索空间 | RFunipass 也利用协同，但面向 validation-selected universal sequence 和 LLVM New PM legality |
| MLGO / The Next 700 | 替换特定 compiler heuristic 或提供 ML-compiler 接口 | RFunipass 不改写单个 heuristic，而是在 pass pipeline 层发现可复用组合 |
| Program representation 工作 | 关注 IR/graph embedding | RFunipass 可使用这些工作说明特征表示重要，但本文贡献不在 representation learning |
| LLM compiler optimization | 用 LLM 预测、生成或搜索优化 | RFunipass 是测量反馈驱动的 BO/search，不依赖 LLM 的语义生成能力 |

### 3.2 建议的 Related Work 组织结构

推荐顶会正文使用四段式：

1. **Compiler autotuning and iterative compilation。** 覆盖 OpenTuner、BOCA、CompTuner、collaborative filtering、graph-based flag tuning。
2. **Compiler phase ordering and pass-sequence search。** 覆盖 AutoPhase、Static Neural Compiler Optimization、Coreset、FaustinoCC21、pass dependence/synergy work。
3. **ML-guided compiler optimization and program representation。** 覆盖 MLGO、MLGOPerf、The Next 700、ProGraML、IR2Vec、MIREncoder。
4. **LLM-based compiler/code optimization。** 覆盖 LLM Compiler、Intent-Driven IR Optimization、Compiler-R1、Search-based LLMs，并强调 RFunipass 不依赖 LLM 生成代码。

如果篇幅紧张，可以合并第 3、4 段。

### 3.3 必须补强的实验暗示

相关工作也暴露了 RFunipass 当前实验缺口：

| 文献压力 | 审稿人可能问什么 | 建议补实验 |
| --- | --- | --- |
| BOCA / CompTuner | 为什么不用 BOCA-style baseline？ | 实现 no-synergy BOCA-like universal search |
| Coreset | 你的 universal sequence 是否不如 per-program sequence selection？ | 加 oracle/per-program 或 coreset-style baseline |
| FaustinoCC21 | random sequences 本来就可能超过 `-Oz`，你的方法是否只是幸运？ | 加 random universal sequence baseline，10 seeds |
| Pass dependence work | 你的协同图是否真的有效？ | no-synergy、no-self-loop、edge ablation |
| MLGO | IR instruction count 是否能转化为真实 binary size？ | 完成 `.text`、stripped size、runtime 或 compile-time 表 |
| CompilerGym | 实验是否可复现、是否有环境/timeout 记录？ | 保留 manifest，报告 LLVM 版本、valid/invalid/timeout |

## 4. 相关工作写法版本 A：精简版

> 适合论文篇幅紧张时使用，约 4 段。突出和本文最直接的差异。

编译器自动调优长期被用于替代人工选择优化参数。OpenTuner 提供了可扩展的程序调优框架，支持多种搜索策略和多目标优化；BOCA 将贝叶斯优化引入 compiler autotuning，通过树模型和搜索策略提升 compiler flag 调优效率；CompTuner 进一步使用多阶段学习减少运行时测量开销；协同过滤和 metric-learning 方法则尝试在程序之间迁移已有调优经验。这些工作主要关注 compiler flags 或程序相关配置，而 RFunipass 直接搜索 LLVM pass 序列，并学习一条可跨程序复用的通用 pipeline。

Phase ordering 是编译优化中的核心难题。AutoPhase 和 Static Neural Compiler Optimization 将 LLVM pass ordering 建模为强化学习问题，为不同程序生成优化序列；Coreset pass ordering 先挖掘一组有代表性的 pass sequences，再学习为每个程序选择序列；Faustino 等人系统探索 LLVM code-size optimization space，并提出 optimization cache 与 default covering set。与这些 program-dependent 方法不同，RFunipass 的目标不是为每个程序选择不同序列，而是学习单条 validation-selected universal sequence，并在 held-out 与外部分布上验证其泛化能力。

近期工作也开始显式建模 pass 之间的关系。Synergistic search space 和 pass-dependence modeling 通过 pass pair、subsequence 或 clustering 降低搜索空间复杂度，并在 CBench/PolyBench 上取得 runtime 或 code-size 收益。RFunipass 与这些工作共享“pass 之间存在可复用协同关系”的观察，但进一步面向 LLVM New Pass Manager 的合法 pipeline 生成，显式区分 raw sequence 与 effective sequence，并使用 `wrap` 策略处理 loop pass nesting。

机器学习编译优化还包括程序表示和编译器启发式替换。ProGraML、IR2Vec、MIREncoder 等工作研究如何从 IR 或程序图中学习可迁移表示；MLGO 和 MLGOPerf 展示了在 LLVM 中部署 ML-guided inlining 的可行性；LLM Compiler、Intent-Driven IR Optimization 和 Compiler-R1 则探索用大语言模型辅助编译优化。RFunipass 与这些方向互补：它不替换单个 compiler heuristic，也不依赖 LLM 生成代码，而是通过测量反馈和协同引导搜索发现可部署的通用 pass 序列。

## 5. 相关工作写法版本 B：标准版

> 适合当前 RFunipass 主论文。该版本分主题更清楚，更适合顶会 Related Work。

### Compiler autotuning and iterative compilation

编译器自动调优旨在自动搜索优化参数，以替代人工选择编译选项。早期 iterative compilation 通过反复编译和运行程序探索优化空间，但测量成本较高。OpenTuner 将 program autotuning 抽象为可扩展框架，允许用户定义领域相关配置空间，并同时运行多种搜索策略。BOCA 首次系统地将 Bayesian optimization 用于 compiler autotuning，通过 tree-based surrogate 和 exploitation/exploration 搜索策略提升 GCC/LLVM flag tuning 效率。后续 CompTuner 使用多阶段学习预测优化配置性能，降低实际运行测量成本。Collaborative filtering 和 metric-learning 方法进一步尝试复用跨程序调优经验，以减少新程序的搜索开销。

这些工作说明 compiler autotuning 具有显著收益，但它们通常以 compiler flags 或程序相关配置为搜索对象，并且多为 per-program tuning。RFunipass 研究一个不同目标：直接在 LLVM pass sequence 空间中搜索，并学习单条跨程序通用的优化序列。这使得调优成本可以在程序分布上摊销，最终序列也更接近生产系统中可部署的自定义优化级别。

### Phase ordering and pass-sequence optimization

LLVM phase ordering 问题受到长期关注。AutoPhase 将 pass ordering 表述为强化学习问题，并结合程序特征缩小动作空间；Static Neural Compiler Optimization 也使用 deep RL 为程序选择优化序列。Faustino 等人从 code-size reduction 角度大规模探索 LLVM optimization sequence space，指出随机序列在部分程序上可以超过默认优化级别，并提出 optimization cache 与 default covering set。Coreset pass ordering 进一步从大量 pass sequences 中挖掘小规模 coreset，并学习为每个程序预测最合适的序列，在大规模 unseen repository 上超过 `-Oz`。

RFunipass 与上述工作最主要的区别是优化对象和部署模型不同。AutoPhase、RL 方法和 coreset policy 通常需要为每个程序选择或生成不同序列；RFunipass 则学习单条 universal sequence，通过 validation split 选择后直接应用到 held-out 与 external programs。这一设定牺牲一部分 per-program optimality，但换来更低部署复杂度和更强可复现性。

### Pass synergy and dependence modeling

最近的 compiler autotuning 工作开始关注 pass 之间的协同关系。Synergistic search space 工作将 pass pair 或 chained synergy pass pairs 聚合为更小搜索空间，试图捕获跨程序共同优化模式。Pass-dependence modeling 则将 pass 组合划分为 subsequence 或 cluster，把原本巨大的 pass combination 问题转化为更小的组合选择问题，并在 runtime 和 code-size 任务上取得收益。

RFunipass 继承了“pass 之间的关系比单个 pass 更重要”的核心观察，但从 universal sequence 的角度重新组织该思想。它保留 self-loop 和 directed synergy edge，使重复 pass 或连续 pass pair 可以被显式搜索；同时，它处理 LLVM New Pass Manager 中 module、CGSCC、function、loop pass 的层级合法性，避免学习到的序列无法被 `opt` 执行。本文的 `LOOP_NESTING_POLICY=wrap` 使 raw learned sequence 和 effective executable pipeline 的关系透明可复现。

### ML-guided compiler optimization and program representation

另一类工作关注如何将机器学习模型嵌入编译器优化决策。MLGO 在 LLVM 中用 reinforcement learning 替代 size-oriented inlining heuristic，并展示了 ML-guided optimization 在真实编译器中落地的可能；MLGOPerf 将类似思想扩展到性能目标；The Next 700 ML-Enabled Compiler Optimizations 讨论了 ML 模型与传统编译器集成的工程问题。与此同时，ProGraML、IR2Vec、compiler-based graph representation、PERFOGRAPH 和 MIREncoder 等工作研究如何从 IR、data-flow 或 program graph 中学习程序表示，以支持优化预测和程序分析。

这些工作与 RFunipass 互补。RFunipass 当前不尝试替换某个单独 heuristic，也不把主要贡献放在学习新程序表示上；它把现有 LLVM passes 当作可组合构件，关注如何从测量反馈中发现可复用的 pass interaction。未来，RFunipass 可以吸收 IR2Vec、ProGraML 或 MIREncoder 风格的表示来改进候选序列预测。

### LLM-based compiler and code optimization

大语言模型也开始进入 compiler optimization。LLM Compiler 训练 foundation model 预测优化相关任务；Intent-Driven IR Optimization 尝试用 LLM 直接指导 IR 优化；Compiler-R1 使用 reinforcement learning 增强 agentic compiler auto-tuning；Search-based LLMs for Code Optimization 则将 LLM 与搜索结合，用于代码级性能优化。这些工作显示 LLM 可能成为 compiler optimization 的新接口，但也面临可靠性、环境交互、正确性验证和成本问题。

RFunipass 与 LLM-based 方法的关系是互补而非替代。RFunipass 不要求模型理解自然语言意图，也不直接生成源代码或 IR；它使用编译器真实反馈来评价候选 pass sequence，并输出可由 LLVM `opt` 执行的 pipeline。因此，RFunipass 更适合作为可复现、测量驱动的 compiler autotuning 基线，也可以在未来作为 LLM agent 的安全执行后端。

## 6. 相关工作写法版本 C：扩展版

> 适合论文长版、技术报告或 rebuttal 准备。该版本分类最完整，强调 RFunipass 与每类工作的边界。

### Autotuning frameworks

OpenTuner、BOCA、CompTuner 和 collaborative filtering compiler tuning 共同构成 RFunipass 的 autotuning 背景。OpenTuner 强调可扩展搜索框架和多策略 ensemble；BOCA 将 Bayesian optimization 用于 compiler flag tuning，并通过 tree-based surrogate 和特定搜索策略提高效率；CompTuner 通过多阶段学习减少昂贵 runtime measurement；协同过滤类方法将历史程序的调优结果迁移到新程序。RFunipass 借鉴这些工作中“通过少量测量反馈引导搜索”的思想，但搜索对象从 flags/configurations 转向 LLVM pass sequences，优化目标从单程序配置转向跨程序 universal sequence。

### Pass ordering and code-size optimization

LLVM pass ordering 是 RFunipass 最直接的相关方向。AutoPhase、Static Neural Compiler Optimization 和 Coreset pass ordering 都将 pass sequence 视为可学习对象。Faustino 等人的 code-size sequence space 探索尤其重要，因为它证明默认优化级别并非总是 code-size 最优，并展示了小规模 sequence ensemble 的潜力。Coreset 工作进一步说明，pass sequence space 中存在可泛化的高收益序列集合。RFunipass 站在这些观察之上，提出更激进的设定：不为每个程序选择序列，而是学习单条通用序列，并用 multi-seed held-out 与 external evaluation 检验其分布级收益。

### Synergy, dependence, and subsequences

Pass synergy 和 dependence modeling 工作与 RFunipass 的方法论高度相关。Synergistic search space 强调 pass pair 或 chained pass pair 可以捕获共同优化模式；pass dependence modeling 将 pass 聚类为 subsequence，降低组合搜索复杂度。这些工作支持 RFunipass 的基本假设：pass 的价值不仅来自单点效果，更来自序列上下文。RFunipass 的区别在于，它将协同关系用于构造 universal sequence，并处理 LLVM New PM 的实际执行约束，特别是 loop pass nesting。

### Program representation

ProGraML、IR2Vec、compiler-based graph representations、PERFOGRAPH 和 MIREncoder 表明，程序表示对 ML compiler optimization 至关重要。它们从 IR、data-flow、control-flow、program graph 或多模态信息中提取可学习表示，用于 downstream optimization 或 analysis。RFunipass 当前使用 lightweight feature mode，主要贡献不在表示学习；因此这些工作应作为支撑背景，而不应喧宾夺主。未来版本可以把 RFunipass 的 lite features 替换或增强为 IR2Vec/ProGraML/MIREncoder embedding，以检验是否改善 external transfer。

### ML-enabled compiler heuristics

MLGO、MLGOPerf、NeuroVectorizer、LoopLearner 和 The Next 700 ML-Enabled Compiler Optimizations 展示了 ML 在编译器内部 heuristic 上的应用：如 inlining、vectorization、loop transformation 和模型部署接口。这类工作通常优化某个局部决策或 compiler heuristic，而 RFunipass 在 pass pipeline 层进行全局序列搜索。二者可以结合：RFunipass 学到的 pipeline 可以包含 ML-guided passes，而 MLGO 风格的 heuristic 也可以作为 RFunipass 搜索空间中的 pass component。

### LLM-based optimization

LLM Compiler、Intent-Driven IR Optimization、Compiler-R1 和 Search-based LLMs for Code Optimization 代表了大模型进入 compiler/code optimization 的趋势。它们通常强调语言模型的知识、生成能力或 agentic interaction。RFunipass 的优势是更贴近传统 compiler evaluation：每个候选序列由 LLVM 工具链真实执行，结果由 instruction count、binary size 或 runtime 等客观指标决定。因此，RFunipass 可以作为 LLM-based compiler optimization 的可验证搜索后端，也可以为 LLM agent 提供高质量 pass-sequence 训练轨迹。

## 7. 推荐最终正文版本

如果当前论文目标是顶会投稿，建议采用**版本 B：标准版**作为正文 Related Work，因为它满足三个要求：

1. 覆盖 BOCA、OpenTuner、AutoPhase、Coreset、Faustino、MLGO、ProGraML、LLM Compiler 等关键审稿人熟悉的工作。
2. 明确说明 RFunipass 的差异：universal sequence、synergy-guided search、LLVM New PM legality、validation-selected external transfer。
3. 不会被 LLM/code model 或数据库 tuning 文献带偏。

版本 A 可用于 8 页以内短文；版本 C 可用于技术报告、论文附录或 rebuttal 中回答“你和 X 工作有什么区别”。

## 8. 建议加入正文参考文献的最小集合

如果 Related Work 篇幅有限，最小引用集合建议为：

1. `OpenTuner.pdf`
2. `Efficient Compiler Autotuning via Bayesian Optimization.pdf`
3. `Compiler Auto-tuning through Multiple Phase Learning.pdf`
4. `AutoPhase.pdf`
5. `Static Neural Compiler Optimization via Deep Reinforcement Learning.pdf`
6. `FaustinoCC21.pdf`
7. `Learning compiler pass orders using coreset and normalized value prediction.pdf`
8. `Towards Efficient Compiler Auto-tuning.pdf`
9. `s42514-024-00197-9.pdf`
10. `Compilergym.pdf`
11. `PROGRAML.pdf`
12. `IR2Vec_A_Flow_Analysis_based_Scalable_Infrastructu.pdf`
13. `MLGO.pdf`
14. `The Next 700 ML-Enabled Compiler Optimizations.pdf`
15. `Foundation Language Models for Compiler Optimization.pdf`
16. `Intent-Driven IR Optimization with Large Language Models.pdf`

## 9. 对后续实验和论文补强的直接建议

基于这些相关工作，RFunipass 下一步最应该补以下内容：

| 优先级 | 任务 | 原因 |
| --- | --- | --- |
| P0 | Random universal sequence baseline | FaustinoCC21 表明随机序列也可能超过默认优化级别，必须排除 lucky sequence 质疑 |
| P0 | No-synergy ablation | Synergy 是方法核心，必须证明有效 |
| P0 | No-self-loop ablation | 当前序列中重复 pass 较多，需要证明 self-loop 不是搜索噪声 |
| P0 | BOCA-style universal baseline | BOCA 是灵感来源，审稿人会要求直接对比 |
| P1 | Coreset/per-program upper bound | 说明 universal sequence 与 program-dependent selection 的差距 |
| P1 | Binary size evaluation | MLGO、Coreset 等多关注实际 code size，IR instruction count 还不够 |
| P1 | Runtime/compile-time overhead | 证明 sequence 不只是减少 IR 指令，也不会造成不可接受开销 |
| P2 | LLVM test-suite 或 MiBench | 扩展外部分布，避免只依赖 PolyBench/C |
| P2 | Program representation ablation | 对比 lite feature 与 IR2Vec/ProGraML-style feature 的潜力 |

## 10. 最终定位建议

RFunipass 最稳妥的论文定位是：

> RFunipass is a synergy-guided Bayesian optimization framework that learns a validation-selected universal LLVM pass sequence. Unlike per-program phase-ordering policies or compiler-flag autotuners, it optimizes a reusable pipeline that transfers across held-out and external programs while respecting LLVM New Pass Manager legality.

对应中文表述为：

> RFunipass 是一种协同引导的贝叶斯优化框架，用于学习验证集选择的 LLVM 通用 pass 序列。不同于 per-program phase-ordering policy 或 compiler-flag autotuner，RFunipass 优化的是一条可复用 pipeline，并在满足 LLVM New Pass Manager 合法性的同时迁移到 held-out 与外部程序。

