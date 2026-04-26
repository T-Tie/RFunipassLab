# RFunipass 相关工作精筛、论文指导与中文写作版本

生成日期：2026-04-26  
文献来源：`/root/exp/RFunipassLab/related` 当前保留的 33 篇 PDF。  
生成方式：基于本地 PDF 的题名、摘要和前两页文本抽取进行人工归类；未联网补全 venue/DOI，因此正文引用时建议后续用 BibTeX 再统一校验出版信息。  
输出目标：先过滤不适合放入正文的文献，再用高价值文献支撑 RFunipass 的论文定位，并提供多个版本的“相关工作”中文草稿。

## 1. RFunipass 的论文主线

当前 RFunipass 最稳妥的顶会论文定位应当是：

> RFunipass 是一个面向 LLVM New Pass Manager 的协同引导贝叶斯优化框架，用于学习验证集选择的通用 LLVM pass 序列。不同于面向单个程序的 phase ordering policy 或 compiler flag autotuning，RFunipass 输出一条可复用的 effective pass pipeline，并在训练内 held-out programs 与外部数据集上验证泛化效果。

因此，相关工作不应泛泛讨论“机器学习编译器”或“代码大模型”，而应围绕以下问题组织：

| 论文问题 | 需要引用的文献类型 | RFunipass 的差异点 |
| --- | --- | --- |
| 如何自动调优编译器？ | OpenTuner、BOCA、CompTuner、协同过滤、iterative compilation | RFunipass 搜索 pass sequence，不是只调 flags/configs |
| 如何处理 phase ordering？ | AutoPhase、Static Neural Compiler Optimization、Coreset、FaustinoCC21 | RFunipass 学一条 universal sequence，而不是 per-program sequence |
| 如何建模 pass 之间的关系？ | Synergistic Search Space、pass dependence、Beyond Phase Ordering | RFunipass 显式利用协同边，并处理 New PM 层级合法性 |
| 如何说明 ML 编译优化背景？ | MLGO、MLGOPerf、The Next 700、CompilerGym | RFunipass 不替换单个 heuristic，而是在 pipeline 层搜索 |
| 如何说明程序表示？ | ProGraML、IR2Vec、MIREncoder、PERFOGRAPH | 这些可作为未来特征增强，不应喧宾夺主 |
| 如何处理 LLM 编译优化新方向？ | ECCO、LLM compiler semantics 类工作 | 作为新兴对比方向即可，不能成为本文核心背景 |

## 2. 文献过滤与使用等级

### 2.1 A 类：正文必须重点使用

这些文献直接定义 RFunipass 的问题背景、方法来源或最近邻对比。建议进入 Related Work 主体，并在 Introduction 或 Method 中适当回扣。

| 文献文件 | 建议引用角色 | 对 RFunipass 的启发与对比 |
| --- | --- | --- |
| `Efficient Compiler Autotuning via Bayesian Optimization.pdf` | BOCA，方法灵感核心 | 证明 Bayesian optimization 可以有效降低 compiler autotuning 搜索成本；RFunipass 应强调从 compiler flag tuning 扩展到 LLVM pass sequence，并从 per-program tuning 转向 universal sequence。 |
| `OpenTuner.pdf` | 通用 autotuning 框架 | 说明 autotuning 框架可以组合多种搜索策略；RFunipass 的差异是把搜索空间结构化为 New PM 合法 pass pipeline。 |
| `Compiler Auto-tuning through Multiple Phase Learning.pdf` | CompTuner，多阶段学习减少测量成本 | 可用于说明 compiler autotuning 的效率压力；RFunipass 的效率来源不是替代测量，而是通过协同图和 BO 缩小候选空间。 |
| `A Collaborative Filtering Approach for the Automatic Tuning of Compiler Optimisations.pdf` | 跨程序经验迁移 | 支撑“优化经验可在程序之间复用”的假设；RFunipass 更进一步输出单条可直接部署的通用序列。 |
| `Iterative compilation optimization based on metric learning and collaborative filtering.pdf` | metric learning + collaborative filtering | 说明 phase selection/order 可以通过程序相似性迁移；RFunipass 当前不依赖 per-program nearest-neighbor selection，而是学习分布级 sequence。 |
| `AutoPhase.pdf` | RL phase ordering 代表 | AutoPhase 为每个程序生成优化序列；RFunipass 应强调无需 test-time RL rollout，部署复杂度更低。 |
| `Static Neural Compiler Optimization via Deep Reinforcement Learning.pdf` | 静态 RL pass ordering | 作为 RL phase ordering 对比；RFunipass 不是在线或逐程序策略，而是 validation-selected universal pipeline。 |
| `Learning compiler pass orders using coreset and normalized value prediction.pdf` | 最近邻强相关工作 | 该工作证明小规模 pass sequence coreset 可泛化到 unseen repositories；RFunipass 的关键差异是选择单条 universal sequence，而不是为每个程序从 coreset 中选择。 |
| `FaustinoCC21.pdf` | LLVM code-size sequence space 系统探索 | 非常重要。它表明随机序列也可能击败默认优化级别，因此 RFunipass 必须补 random universal sequence baseline，避免“幸运序列”质疑。 |
| `Towards Efficient Compiler Auto-tuning.pdf` | pass synergy search space | 与 RFunipass 协同图思想最接近；RFunipass 应强调 directed synergy、self-loop、New PM 层级 legality 和 universal sequence。 |
| `s42514-024-00197-9.pdf` | pass dependence/subsequence modeling | 支撑 pass 依赖建模能缩小搜索空间；RFunipass 应说明自己不是固定 cluster/subsequence 组合，而是搜索完整 effective sequence。 |
| `Compilergym.pdf` | 编译优化环境和可复现性 | 可用于论证 compiler RL/autotuning 需要标准环境；RFunipass 的 manifest、multi-seed runner、external validation 是回应这一问题。 |
| `论文电子版_BeyondPhaseOrdering.pdf` | New PM 结构化 pipeline 最近邻 | 与 RFunipass 的 loop nesting / wrapper policy 高度相关。如果这是未发表或内部稿，不能作为强外部基线，只能作为并行/内部参考；若可引用，应突出 RFunipass 的 universal-sequence 和 empirical external-transfer 贡献。 |
| `论文电子版_GRACE.pdf` | cluster-specific sequence reuse 最近邻 | 与 coreset 和 sequence reuse 高度相关。如果是未发表匿名稿，不建议依赖其结论；可作为写作时检查 novelty 边界的高价值参考。 |

### 2.2 B 类：正文可选择性使用

这些文献可支撑背景、特征表示、ML 编译器落地或扩展方向。建议正文只选少量代表，避免 Related Work 发散。

| 文献文件 | 使用建议 | 原因 |
| --- | --- | --- |
| `MLGO.pdf` | 建议正文引用 | LLVM 中 ML-guided inlining 的代表，说明 ML 可以进入生产编译器。RFunipass 应强调其优化层级是 pipeline 级，而非单个 heuristic。 |
| `MLGOPerf.pdf` | 可与 MLGO 合并引用 | 说明 MLGO 思路从 size 扩展到 performance；如正文篇幅紧，可只在一句中带过。 |
| `The Next 700 ML-Enabled Compiler Optimizations.pdf` | 建议正文引用 | 用于相关工作结尾，说明 ML-enabled compiler 的工程集成趋势。 |
| `Revealing_computer_heuristics_SEEKER_DOA31072023_AFV_CC_BY.pdf` | 可选 | 关注自动发现和优化 compiler heuristics。可用于说明“编译器启发式可被自动化系统改进”，但不是 pass sequence 主线。 |
| `PROGRAML.pdf` | 建议正文引用 | 程序图表示代表作。若只保留一个 ProGraML 文献，优先用这一篇。 |
| `IR2Vec_A_Flow_Analysis_based_Scalable_Infrastructu.pdf` | 建议正文引用或 future work 引用 | LLVM IR embedding 代表，可用于说明未来替换 lite features 的方向。 |
| `Compiler-based graph representations for deep learning models of code.pdf` | 可选 | 支撑 compiler graph representation 背景。 |
| `A Numerical Aware Program Graph Representation for Performance Optimization and Program Analysis (PERFOGRAPH).pdf` | 可选 | 如果论文讨论数值特征或 PolyBench/HPC 外部泛化，可轻量引用。 |
| `Multi-modal IR-based Pretrained Embeddings for Peformance Optimizations (MIREncoder).pdf` | 可选 | 说明 IR 多模态预训练 embedding 是未来方向。 |
| `Learning to Make Compiler Optimizations More Effective.pdf` | 可选 | LoopLearner 可用于说明 ML 优化 loop transformation，与 RFunipass 的 loop pass policy 有间接联系。 |
| `NeuroVectorizer.pdf` | 可选 | loop vectorization RL 代表，适合作为 ML compiler heuristic 例子。 |
| `A Graph-Based Algorithm for Optimizing GCC Compiler Flag Settings.pdf` | 可选 | 图式 flag tuning，与 RFunipass 的协同图有弱联系，但对象是 GCC flags。 |
| `ECCO.pdf` | 可选，取决于论文截稿时间与可信引用状态 | LLM + causal reasoning + genetic search 的 compiler autotuning 新方向；可在 LLM/autotuning 段落中对比 RFunipass 的测量驱动、可执行 pipeline。 |

### 2.3 C 类：已从 `related/` 删除

这些文献不是完全无关，但放入主文 Related Work 会稀释 RFunipass 叙事。根据 2026-04-26 的清理请求，以下 C 类 PDF 已从 `related/` 目录删除。

| 文献文件 | 过滤原因 | 删除处理 |
| --- | --- | --- |
| `Introducing Compiler Semantics into Large Language_202509251540_44019.pdf` | 主题是用 LLM 做 C 到 x86 汇编翻译，重点不是 optimization sequence 或 compiler autotuning。 | 已删除。 |
| `Ithemal.pdf` | 预测 basic block throughput，属于 backend cost model；如果本文不做机器码性能预测，不应进入 Related Work 主体。 | 已删除。 |
| `Performance Optimization using Multimodal Modeling and Heterogeneous GNN.pdf` | 面向 parallel region/HPC 参数调优，距离 LLVM pass sequence 较远。 | 已删除。 |
| `A Hybrid Machine Learning Model for Code Optimization.pdf` | 题目相关但较泛，和 RFunipass 的 universal pass sequence 贡献不够近。 | 已删除。 |
| `PROGRAML2021.pdf` | 与 `PROGRAML.pdf` 内容高度重叠。 | 已删除，保留 `PROGRAML.pdf`。 |
| `Iterative Compilation Optimization.pdf` | 与 `Iterative compilation optimization based on metric learning and collaborative filtering.pdf` 基本为同一篇。 | 已删除，保留小写文件名版本。 |

## 3. 对 RFunipass 论文的直接指导

### 3.1 应该强调的优势

| 角度 | 可写成论文优势 | 支撑文献 |
| --- | --- | --- |
| 通用序列 | 不需要在每个 test program 上重新搜索或 rollout，部署成本低。 | Coreset、AutoPhase、Static Neural Compiler Optimization |
| 协同引导 | 从 pass interaction 而不是孤立 pass 效果中组织搜索空间。 | Towards Efficient Compiler Auto-tuning、pass dependence |
| LLVM New PM 合法性 | 处理 module/function/loop/CGSCC 层级，区分 raw sequence 与 effective pipeline。 | Beyond Phase Ordering、CompilerGym |
| 多 seed 与 external transfer | 不只报告单次最优结果，而是给出分布级稳定性。 | CompilerGym、FaustinoCC21 |
| 强基线 | 使用 `-Oz` 作为 instruction-count baseline，比只对比 `-O0` 更有说服力。 | Coreset、FaustinoCC21、MLGO |

### 3.2 当前最危险的审稿问题

| 审稿风险 | 为什么会被问 | 建议补强 |
| --- | --- | --- |
| 随机序列也能超过 `-Oz` | FaustinoCC21 已明确指出随机序列有概率超过默认优化级别。 | 加 `random universal sequence`，同样 10 seeds，同样 held-out/external。 |
| 协同图是否真的有用 | RFunipass 的方法贡献依赖 synergy。 | 加 `no-synergy`、`random-edge`、`no-self-loop` ablation。 |
| universal sequence 是否太弱 | Coreset/per-program policy 可能比单序列更强。 | 加 per-program oracle 或 coreset-style selection upper bound，说明效果/部署复杂度 trade-off。 |
| IR instruction count 是否等价于真实 size/runtime | 顶会审稿人会质疑 proxy objective。 | 用 `.text_bytes`、`dec_bytes`、`stripped_file_bytes` 与 runtime smoke 作为辅助表。 |
| New PM loop nesting 是否影响结论 | 已经出现 loop policy 讨论，必须透明。 | 在 manifest、summary、log 中固定 `LOOP_NESTING_POLICY=wrap` 并报告 effective sequence。 |
| `attributor` crash 是否污染搜索 | 之前实验中出现过 opt crash。 | 报告 invalid/timeout/crash 处理策略，说明失败候选如何赋惩罚值，最终序列是否可执行。 |

### 3.3 建议补充的实验表

| 优先级 | 实验 | 论文作用 |
| --- | --- | --- |
| P0 | POJ held-out：RFunipass vs `-Oz`/`-O3`/random universal/no-synergy | 主结果表。 |
| P0 | PolyBench full external：同一 10 seeds sequence 迁移测试 | 外部分布泛化主表。 |
| P0 | self-loop ablation，特别是 `module(attributor)` 连续重复 | 回答“重复 pass 是有效还是噪声”。 |
| P1 | Binary size：`.text`、`data`、`bss`、`dec`、stripped file | 证明 instruction-count 结果能部分转化为真实二进制效果。 |
| P1 | Sequence length / compile-time overhead | 防止优化序列太长、编译成本过高。 |
| P1 | Coreset/per-program upper bound | 展示 universal sequence 与更复杂部署方式的差距。 |
| P2 | 其他外部数据集：CBench、LLVM test-suite、MiBench/CHStone | 提升 external validity。 |
| P2 | Feature ablation：lite vs richer IR features | 支撑未来扩展和 ML 表示贡献。 |

## 4. Related Work 写作版本 A：精简版

适合 8 页短文或主文篇幅紧张时使用。特点是段落少、差异点明确，但覆盖文献较少。

### Compiler autotuning

编译器自动调优长期被用于替代人工选择优化参数。OpenTuner 提供了可扩展的程序自动调优框架，支持用户定义搜索空间和组合多种搜索策略；BOCA 将 Bayesian optimization 引入 compiler autotuning，以更少的评估次数搜索有效的 compiler flag 配置；CompTuner 和协同过滤类方法进一步尝试利用历史程序经验降低测量成本。这些工作主要面向 compiler flags 或程序相关配置，而 RFunipass 直接搜索 LLVM pass sequence，并学习一条可跨程序复用的通用 pipeline。

### Phase ordering

Phase ordering 是编译优化中的经典难题。AutoPhase 和 Static Neural Compiler Optimization 将 LLVM pass ordering 建模为强化学习问题，为不同程序生成优化序列；Coreset pass ordering 先挖掘一组代表性序列，再学习为每个程序选择序列；Faustino 等人系统探索 LLVM code-size optimization space，指出随机序列也可能超过默认优化级别。与这些 per-program 方法不同，RFunipass 的目标是学习单条 validation-selected universal sequence，并在 held-out 与 external programs 上验证分布级泛化。

### Pass interaction

近期工作开始显式建模 pass 之间的关系。Synergistic search space 和 pass-dependence modeling 通过 pass pair、subsequence 或 cluster 降低搜索复杂度，并在 runtime 或 code-size 任务上取得收益。RFunipass 与这些工作共享“pass interaction 可复用”的观察，但进一步处理 LLVM New Pass Manager 的 module、CGSCC、function 和 loop 层级合法性，区分 raw learned sequence 与实际执行的 effective pipeline。

### ML compiler

MLGO、MLGOPerf 和 The Next 700 ML-Enabled Compiler Optimizations 展示了机器学习模型进入 LLVM 生产编译器的可行性；ProGraML、IR2Vec 和 MIREncoder 等工作则研究适合编译优化的 IR/program representation。RFunipass 与这些方向互补：它不替换单个 compiler heuristic，也不依赖复杂程序表示作为主要贡献，而是把现有 LLVM passes 当作可组合构件，通过测量反馈发现可部署的通用 pass 序列。

## 5. Related Work 写作版本 B：标准顶会版

这是推荐放入当前 RFunipass 主论文的版本。特点是分类完整、叙事稳定、每段都能自然落到 RFunipass 的差异点。

### Compiler autotuning and iterative compilation

Compiler autotuning aims to automatically search optimization configurations that outperform fixed compiler defaults. Early iterative compilation repeatedly compiled and measured programs under different optimization settings, but suffered from a large search space and high measurement cost. OpenTuner generalized this process into an extensible autotuning framework that can combine multiple search techniques over user-defined configuration spaces. BOCA introduced Bayesian optimization into compiler autotuning and showed that surrogate-guided search can reduce the number of expensive evaluations for compiler flag tuning. CompTuner further used multiple-phase learning to reduce runtime measurement cost, while collaborative filtering and metric-learning based approaches reused optimization experience across programs.

这些工作证明了自动调优编译器的价值，但它们通常以 compiler flags 或 per-program configuration 为对象。RFunipass 研究的是不同问题：在 LLVM pass sequence 空间中搜索一条跨程序复用的 universal sequence。这样的设定将调优成本从单个程序摊销到程序分布上，最终产物也更接近生产编译器中可部署的自定义优化级别。

### Phase ordering and pass-sequence optimization

Pass ordering has been studied as a central challenge in compiler optimization. AutoPhase and Static Neural Compiler Optimization formulate LLVM phase ordering as a reinforcement-learning problem and generate program-specific optimization sequences. Faustino et al. systematically explored the LLVM code-size optimization sequence space and showed that random sequences can sometimes outperform default optimization levels, which highlights both the opportunity and the evaluation risk in pass-sequence search. Coreset-based pass ordering learns a small set of representative pass sequences and predicts, for each unseen program, which sequence in the coreset should be used.

RFunipass differs from these program-dependent approaches in its deployment model. Instead of rolling out a policy or selecting a sequence for each test program, RFunipass selects a single sequence on validation data and applies it unchanged to held-out and external programs. This design may sacrifice per-program optimality, but it gives a lower-cost and more reproducible optimization pipeline. Therefore, RFunipass should be evaluated not only by peak improvement, but also by multi-seed stability, valid-rate, timeout-rate, and external transfer.

### Pass synergy, dependence, and New Pass Manager structure

Recent work has shown that compiler passes should not be treated as independent actions. Synergistic search-space methods build pass-pair or chained-pair structures to capture beneficial interactions between passes. Pass-dependence modeling groups passes into subsequences or clusters, reducing the original combinatorial search problem into a smaller selection problem. These studies support the hypothesis that reusable pass interactions exist across programs.

RFunipass follows this hypothesis but adapts it to a stricter target: generating an executable LLVM New Pass Manager pipeline. In LLVM New PM, module, CGSCC, function, and loop passes live in different managers, so a linear list of pass names is not necessarily a legal executable pipeline. RFunipass therefore distinguishes the raw searched sequence from the effective sequence after nesting repair, and fixes the loop nesting policy in the experiment manifest. This is important because pass order alone is insufficient when the pipeline structure itself changes optimization behavior.

### ML-guided compiler optimization and program representation

Another line of work integrates machine learning into compiler decisions. MLGO replaces LLVM's heuristic inliner with a learned policy for code-size optimization, and MLGOPerf extends the idea toward performance-oriented inlining. The Next 700 ML-Enabled Compiler Optimizations discusses how ML models can be integrated with production compilers through robust compiler/model interfaces. Meanwhile, ProGraML, IR2Vec, compiler-based graph representations, PERFOGRAPH, and MIREncoder study program representations that capture control flow, data flow, and IR semantics for downstream optimization tasks.

RFunipass is complementary to these efforts. It does not replace a single compiler heuristic, nor does it claim that representation learning is the main contribution. Instead, it treats existing LLVM passes as reusable components and searches for a high-value composition of those components. Richer IR embeddings such as IR2Vec or ProGraML-style graphs are natural future extensions for improving RFunipass's candidate modeling, but the current contribution is the synergy-guided universal pipeline search and its reproducible evaluation.

### LLM-based compiler optimization

Recent LLM-based systems explore compiler optimization from a different direction. ECCO combines LLM-guided reasoning with search for compiler optimization, while compiler-semantics work studies whether large language models can learn low-level translation behavior such as C-to-assembly generation. These systems suggest that language models may become useful interfaces or priors for compiler optimization, but they also raise concerns about correctness, reproducibility, and measurement cost.

RFunipass should be positioned as a measurement-driven and compiler-executable alternative. It does not ask an LLM to directly generate optimized code or IR; every candidate is evaluated through the actual LLVM toolchain, and the final output is an `opt`-executable pass pipeline. This makes RFunipass a useful baseline and potential backend for future LLM-assisted compiler autotuning systems.

## 6. Related Work 写作版本 C：强差异化版

适合 rebuttal、introduction 后半部分或希望强力突出 novelty 的版本。特点是每段都明确指出“已有工作做了什么，但没有做什么”。

### Autotuning is not enough: flags differ from pass pipelines

OpenTuner、BOCA、CompTuner 和协同过滤式 compiler tuning 都证明了自动调优可以改进编译器默认设置。然而，这些工作多数在 compiler flags 或 coarse-grained configurations 上搜索。Flag tuning 的空间结构与 LLVM New Pass Manager pipeline 不同：后者不仅涉及 pass selection 和 ordering，还涉及 module/function/loop/CGSCC managers 之间的合法嵌套。因此，RFunipass 不是简单把 BOCA 套到另一个参数空间，而是把搜索对象提升为可执行 pass pipeline。

### Per-program policies differ from universal deployment

AutoPhase、Static Neural Compiler Optimization 和 coreset pass ordering 都把 pass sequence 视为可学习对象，但它们通常在 test time 仍需要根据具体程序选择或生成序列。这一设定适合追求 per-program optimality，却会带来部署复杂度和额外推理/测量成本。RFunipass 选择另一个点：只输出一条 universal sequence。这个目标更严格，因为单条序列必须在程序分布上稳定有效；但如果成功，它更容易部署，也更容易复现。

### Synergy must be executable under New PM

Synergistic search space 和 pass-dependence modeling 已经说明 pass interaction 是降低搜索复杂度的关键。但 LLVM New Pass Manager 使 interaction 的含义更复杂：一个 loop pass 放在 function manager 内、包装成 adaptor、或与相邻 function pass 合并，可能产生不同的 effective pipeline。RFunipass 的 `LOOP_NESTING_POLICY=wrap`、effective sequence logging 和 manifest 记录，正是为了把“协同边”转化成可执行、可复现实验对象。

### ML compiler work is complementary, not competing

MLGO、MLGOPerf、NeuroVectorizer 和 LoopLearner 说明 ML 可以替换局部 compiler heuristic；ProGraML、IR2Vec 和 MIREncoder 说明程序表示会影响优化预测质量。这些工作不直接回答“是否存在一条跨程序复用的 LLVM pass pipeline”。RFunipass 的贡献在 pipeline composition 层，而不是单个 heuristic 或 representation learning 层。未来可以把这些表示或 ML-guided passes 接入 RFunipass，但它们不是当前方法成立的前提。

### LLM work changes the interface, but not the evaluation burden

ECCO 和 compiler-semantics LLM 工作展示了语言模型参与编译优化的潜力。但对于顶会审稿，核心问题仍然是候选优化是否可执行、是否正确、是否在未见程序上稳定提升。RFunipass 保留传统 autotuning 的强约束：每个候选序列都由 LLVM 执行，并由 instruction count、binary size 或 runtime 指标评价。这种测量驱动方式牺牲了一部分生成灵活性，但换来更强的可复现性和可审计性。

## 7. Related Work 写作版本 D：长版技术报告

适合论文附录、技术报告或内部提案。该版本覆盖更多文献，但不建议原样放入主文。

### Autotuning frameworks and transfer

Program autotuning frameworks such as OpenTuner show that no single search technique dominates all optimization spaces, motivating extensible systems that combine domain-specific representations with multiple search strategies. BOCA narrows this idea to compiler autotuning and uses Bayesian optimization to search compiler flag configurations efficiently. CompTuner, collaborative filtering, and metric-learning approaches further reduce tuning cost by learning from historical programs or by transferring optimization knowledge across similar programs. These works motivate RFunipass's use of measurement feedback and cross-program reuse, but they do not directly handle LLVM pass-sequence legality or universal deployment.

### Sequence search, coreset, and reuse

The phase-ordering literature shows that pass sequence matters. Reinforcement-learning approaches such as AutoPhase and Static Neural Compiler Optimization learn policies for generating optimization sequences. FaustinoCC21 exposes the richness of LLVM's code-size optimization space and warns that strong evaluation must include random-sequence controls. Coreset-based pass ordering and GRACE-style cluster-specific reuse suggest that a small number of sequences can cover many programs. RFunipass occupies a stricter design point in this space: it learns one sequence rather than a set or a cluster-specific mapping. This makes its empirical claim narrower but easier to deploy.

### Structural pipeline synthesis

Pass synergy, pass dependence, and Beyond Phase Ordering-style structure-aware tuning all point to the same limitation of flat phase ordering: a pipeline is not merely a list. LLVM New PM requires passes to be nested under appropriate managers, and nesting topology can affect the final optimization result. RFunipass should therefore present its `fix_loop_nesting` / `LOOP_NESTING_POLICY=wrap` mechanism as part of the method, not as an implementation detail. Logs and result tables should always report the effective sequence because that is what LLVM actually executes.

### Program representation and ML-guided heuristics

Program representations such as ProGraML, IR2Vec, compiler-based graph representations, PERFOGRAPH, and MIREncoder provide useful tools for learning optimization behavior from source or IR. ML-guided compiler systems such as MLGO, MLGOPerf, LoopLearner, NeuroVectorizer, SEEKER, and The Next 700 demonstrate that compiler heuristics can be learned and integrated. These works justify the broader ML-for-compilers context. However, RFunipass should avoid overclaiming in this direction unless it adds representation ablations. The safest framing is that RFunipass currently uses lightweight features and leaves richer representations as future work.

### LLM and causal optimization

ECCO and LLM compiler-semantics papers represent a newer trend: using language models to reason about optimization choices or low-level compiler behavior. These papers are useful for positioning RFunipass as a reliable, measurement-driven counterpart. If the final paper includes them, the text should be conservative: LLMs may provide priors, mutation operators, or explanations, but the current RFunipass contribution is not LLM-based.

## 8. 推荐正文采用方案

建议主论文采用“版本 B：标准顶会版”，原因如下：

1. 它覆盖了审稿人最可能期待的四类文献：autotuning、phase ordering、pass interaction、ML compiler。
2. 它明确划清 RFunipass 与 BOCA、AutoPhase、Coreset、MLGO、ProGraML、LLM compiler 的边界。
3. 它不会把论文带偏到 LLM/code model 或一般程序表示学习。
4. 它自然引出 RFunipass 当前最关键的实验：multi-seed、external transfer、random/no-synergy ablation、binary size。

如果主文空间有限，可以把版本 B 压缩成版本 A。  
如果审稿人质疑 novelty，可以在 rebuttal 或 appendix 使用版本 C 的强差异化表述。  
如果写技术报告或开题材料，可以使用版本 D。

## 9. 最小引用集合

如果正文只能容纳 12 到 16 篇最关键相关工作，建议最小集合为：

| 优先级 | 文献 |
| --- | --- |
| 必引 | `Efficient Compiler Autotuning via Bayesian Optimization.pdf` |
| 必引 | `OpenTuner.pdf` |
| 必引 | `Compiler Auto-tuning through Multiple Phase Learning.pdf` |
| 必引 | `AutoPhase.pdf` |
| 必引 | `Static Neural Compiler Optimization via Deep Reinforcement Learning.pdf` |
| 必引 | `FaustinoCC21.pdf` |
| 必引 | `Learning compiler pass orders using coreset and normalized value prediction.pdf` |
| 必引 | `Towards Efficient Compiler Auto-tuning.pdf` |
| 必引 | `s42514-024-00197-9.pdf` |
| 强烈建议 | `Compilergym.pdf` |
| 强烈建议 | `MLGO.pdf` |
| 强烈建议 | `The Next 700 ML-Enabled Compiler Optimizations.pdf` |
| 强烈建议 | `PROGRAML.pdf` |
| 强烈建议 | `IR2Vec_A_Flow_Analysis_based_Scalable_Infrastructu.pdf` |
| 视篇幅 | `A Collaborative Filtering Approach for the Automatic Tuning of Compiler Optimisations.pdf` |
| 视篇幅 | `Iterative compilation optimization based on metric learning and collaborative filtering.pdf` |

## 10. 最终写作建议

RFunipass 不应把自己写成“又一个 compiler autotuner”，而应写成：

> 一个面向 LLVM New Pass Manager 的 universal pass-pipeline synthesis system。它使用 pass synergy 和 Bayesian optimization 从程序分布中学习一条可部署的 effective sequence，并通过 multi-seed、held-out 和 external validation 证明这条序列不是单程序过拟合结果。

对应论文贡献建议写成三点：

1. **Problem formulation。** 提出 universal LLVM pass sequence search，并把 New PM 层级合法性纳入搜索产物定义。
2. **Method。** 使用 synergy-guided Bayesian optimization 发现 reusable pass interactions，并通过 effective sequence repair/logging 保证可执行和可复现。
3. **Evaluation。** 在 POJ held-out 和 PolyBench full 等外部数据集上进行 multi-seed 验证，并与 `-Oz`、random universal、no-synergy、binary-size 指标进行对比。

当前最需要补齐的不是更多 Related Work，而是能防住审稿质疑的实验：random universal baseline、no-synergy/no-self-loop ablation、binary-size 主表和 compile-time overhead。只要这些补齐，RFunipass 的相关工作叙事会更稳定，论文贡献边界也会更清楚。
