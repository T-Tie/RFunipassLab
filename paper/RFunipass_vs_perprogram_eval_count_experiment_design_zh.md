# RFunipass 与 Per-Program AutoTuning 的 IR 指令数评估次数对比实验设计

## 1. 实验目标

本实验要回答的问题是：

> 在达到相同或不差于 RFunipass 的调优效果时，per-program auto-tuning 需要多少次真实 IR 指令数量评估？该数量与 RFunipass 学习一条通用 pass 序列所需的真实 IR 指令数量评估次数相比如何？

这里的“真实 IR 指令数量评估”指实际运行 LLVM pass pipeline 并调用 instruction count 逻辑得到优化后 IR 指令数的次数，不包括 RF/GA/CFSAT 的模型预测、候选生成、排序或其它不调用 LLVM 指令计数的计算。

## 2. 核心比较口径

### 2.1 RFunipassLab 的计数口径

RFunipassLab 中已有 `core_tuning_cost`：

- `candidate_sequence_count`: 真实进入 objective evaluation 的候选通用序列数量。
- `objective_eval_count`: 候选通用序列在程序集合上的真实 IR 指令数评估次数。
- `target_feedback_eval_count`: RFunipass 对最终 test target 的反馈使用次数，当前为 0。

源码语义：

- `/root/exp/RFunipassLab/boca_exp/objective.py` 中 `evaluate_sequence_metrics()` 每被调用一次，会按 `len(programs)` 累加 `objective_eval_count`。
- RFunipass 每条候选通用序列会在 `search_train` 和 `validation` 上评估。
- 最终 test evaluation、Top-5 test evaluation、binary-size test 等报告性评估不计入 core tuning cost。

因此 RFunipass 的主成本指标为：

```text
RFunipass_core_eval_count = best_core_tuning_cost.objective_eval_count
```

论文解释：

这是 RFunipass 为学习一条通用序列而消耗的真实 IR 指令数反馈成本。该成本与未来部署到新程序数量无关，属于 offline universal tuning cost。

### 2.2 PerProgramAutoTune 的计数口径

PerProgramAutoTune 中已有 `core_tuning_cost`：

- `candidate_sequence_count`: 所有程序上尝试的候选序列总数。
- `objective_eval_count`: 当前等于所有程序的 `evaluations` 总和。
- `target_feedback_eval_count`: 当前等于 `objective_eval_count`，因为 per-program tuning 直接在目标程序上搜索和反馈。

源码语义：

- `/root/exp/PerProgramAutoTune/perprog_tune/evaluator.py` 中每个程序的候选序列会调用 `LLVMRunner.instruction_count()`。
- `/root/exp/PerProgramAutoTune/perprog_tune/core_tuning_cost.py` 将 `per_program.csv` 中每行 `evaluations` 汇总为 `objective_eval_count`。

因此 per-program 的主成本指标为：

```text
PerProgram_core_eval_count(budget B, target size N) = sum_program evaluations
                                                   ~= B * N
```

论文解释：

这是 per-program tuner 为每个目标程序单独搜索时消耗的真实 IR 指令数反馈成本。它随目标程序数量线性增长。

### 2.3 主表建议同时报告两个成本

| 成本指标 | RFunipass | Per-program |
| --- | --- | --- |
| `core_objective_eval_count` | 搜索通用序列使用的真实 IR 指令数评估 | 所有目标程序单独调优使用的真实 IR 指令数评估 |
| `target_feedback_eval_count` | 0 | 等于 `core_objective_eval_count` |
| `amortized_eval_per_target` | `core_objective_eval_count / target_program_count` | `core_objective_eval_count / target_program_count` |

其中 `target_feedback_eval_count` 是 RFunipass 最重要的优势之一：RFunipass 在 test 程序上只应用已有通用序列，不需要根据 test 程序反馈继续搜索；per-program tuner 必须对每个目标程序消耗反馈。

## 3. “达到相同调优效果”的定义

为了避免只凭单个均值判断，建议设置三层判定。

### 3.1 主判定：mean norm 不差于 RFunipass

对同一个 target set `T`，设：

```text
R_s = RFunipass 在 seed s 的 target/test mean_norm
P_s(B, M) = per-program 方法 M 在 budget B 下的 target/test mean_norm
```

最小等效预算定义为：

```text
B_eq(s, M) = min B such that P_s(B, M) <= R_s + epsilon
```

推荐默认：

```text
epsilon = 0.005
```

理由：

- IR 指令数是离散计数，过严的完全相等不稳定。
- `0.005` 表示 0.5% normalized instruction count 容忍度，足够严格。

### 3.2 安全判定：worsen rate 不显著更差

同时要求：

```text
PerProgram_worsen_rate(B) <= RFunipass_worsen_rate + 0.02
```

该条件避免 per-program 方法通过极端改善少数程序但显著退化更多程序来达到相同 mean norm。

### 3.3 扩展判定：objective 不差于 RFunipass

如果希望完全复用 RFunipass 的多目标 objective，则使用：

```text
objective = mean_norm + 0.15 * worsen_rate
```

等效预算定义为：

```text
B_eq_obj(s, M) = min B such that P_objective_s(B, M) <= R_objective_s + epsilon_obj
```

推荐：

```text
epsilon_obj = 0.005
```

论文主表建议用 objective，附表报告 mean_norm 和 worsen_rate。

## 4. 实验数据集与 split

### 4.1 主实验：Poj 内部分布 test set

使用 RFunipass 10-seed 正式实验中的同一批 test programs：

```text
results/manifests/20260505_021422_538199_feature_lite_multiseed_rf_explain_formal_10seeds_20260505_021421.json
```

对每个 seed：

- 读取对应 RFunipass result JSON。
- 提取 `test_programs` 作为 per-program target set。
- 提取 RFunipass `final_test_metrics` 作为效果阈值。
- 提取 RFunipass `best_core_tuning_cost.objective_eval_count` 作为 offline tuning eval cost。

优点：

- 与 RFunipass 正式主实验完全对齐。
- 每个 seed 的 split、target set、baseline 和 LLVM 工具链一致。
- 可以得到 10-seed 均值与置信区间。

### 4.2 外部分布扩展实验

对 external datasets 复用同一逻辑：

- `polybench_full`
- cBench
- CSmith 或其它 IR-only 外部集

外部实验有两种口径：

- RFunipass 不重新调优，只把 Poj 上学到的通用序列应用到外部 target set。
- Per-program tuner 在每个外部程序上单独搜索。

此时成本解释更鲜明：

```text
RFunipass external target_feedback_eval_count = 0
PerProgram external target_feedback_eval_count = B * N_external
```

## 5. Per-program budget sweep 设计

### 5.1 预算列表

推荐使用指数型预算扫描：

```text
B = [1, 2, 4, 8, 16, 30, 60, 100]
```

如果资源允许，增加：

```text
B = [1, 2, 4, 8, 16, 30, 60, 100, 200]
```

理由：

- 小预算段能找到与 RFunipass 相当的临界点。
- 大预算段能观察 per-program 方法上限。
- 指数扫描比线性扫描更省资源。

### 5.2 策略选择

主实验建议只选两个代表性 per-program 方法：

| 方法 | 用途 |
| --- | --- |
| `rio_random` | 简单强 baseline，最稳定，解释成本清楚 |
| `ga_bitvector` | 启发式搜索 baseline，代表较强 per-program tuner |

扩展实验再加入：

| 方法 | 用途 |
| --- | --- |
| `boca_flat` | 与 BOCA 灵感相关的 per-program 对比 |
| `cfsat_*` | 若 CFSAT 标签和 GNN artifacts 稳定后加入 |

不建议一开始把所有方法都放进主表，否则实验矩阵过大，且会掩盖核心问题。

### 5.3 每个 seed 的运行方式

对 RFunipass seed `s`：

1. 导出该 seed 的 test programs 为 CSV。
2. 对每个 budget `B` 和 per-program strategy `M`：
3. 在同一 target CSV 上运行 PerProgramAutoTune。
4. 记录 `summary.csv`、`per_program.csv`、`core_tuning_cost.json`。
5. 汇总 `mean_norm`、`worsen_rate`、`objective_eval_count`。

PerProgramAutoTune 运行模板：

```bash
cd /root/exp/PerProgramAutoTune

python run_per_program_autotune.py \
  --program-csv /root/exp/RFunipassLab/results/cost_parity/seed${SEED}_test_programs.csv \
  --program-csv-column filename \
  --program-csv-suite rfunipass_seed${SEED}_test \
  --strategy rio_random \
  --strategy ga_bitvector \
  --budget ${BUDGET} \
  --seed ${SEED} \
  --baseline oz \
  --llvm-tools /root/llvm/llvm-project-21/build/bin \
  --loop-policy wrap \
  --jobs 1 \
  --tag cost_parity_seed${SEED}_budget${BUDGET}
```

`--jobs 1` 是论文复现实验推荐设置；如只做探索可提高 jobs，但 manifest 必须记录。

## 6. RFunipass 侧导出信息

需要从每个 RFunipass result JSON 提取：

```text
seed
split_seed
test_programs
final_sequence
final_test_metrics.mean_norm
final_test_metrics.worsen_rate
final_test_metrics.objective
best_core_tuning_cost.objective_eval_count
best_core_tuning_cost.candidate_sequence_count
best_core_tuning_cost.target_feedback_eval_count
```

建议生成：

```text
results/cost_parity/rfunipass_seed${SEED}_target_manifest.json
results/cost_parity/seed${SEED}_test_programs.csv
```

CSV 格式：

```csv
filename
/abs/path/to/program1.ll
/abs/path/to/program2.ll
...
```

## 7. 汇总指标

对每个 seed、strategy、budget 汇总：

| 字段 | 含义 |
| --- | --- |
| `seed` | RFunipass / per-program 共享 seed |
| `strategy` | per-program 方法 |
| `budget` | 每程序真实候选评估预算 |
| `target_program_count` | target set 大小 |
| `perprogram_mean_norm` | per-program 平均 normalized instruction count |
| `perprogram_worsen_rate` | per-program 退化率 |
| `perprogram_objective` | `mean_norm + 0.15*worsen_rate` |
| `perprogram_eval_count` | per-program `objective_eval_count` |
| `rfunipass_mean_norm` | RFunipass target/test mean norm |
| `rfunipass_worsen_rate` | RFunipass target/test worsen rate |
| `rfunipass_objective` | RFunipass target/test objective |
| `rfunipass_eval_count` | RFunipass tuning `objective_eval_count` |
| `matched_by_mean` | 是否达到 mean_norm 阈值 |
| `matched_by_objective` | 是否达到 objective 阈值 |
| `eval_ratio_vs_rfunipass` | `perprogram_eval_count / rfunipass_eval_count` |
| `target_feedback_ratio` | per-program target feedback / RFunipass target feedback；RFunipass 为 0 时单独报告 |

### 7.1 最小等效预算

对每个 seed 和 strategy，选出：

```text
B_eq = min budget satisfying matched_by_objective
```

如果预算列表中没有达到：

```text
B_eq = > max_budget
```

并报告 lower bound：

```text
perprogram_eval_count > max_budget * target_program_count
```

## 8. 主表设计

### 8.1 Cost-to-match 主表

| Method | Seeds | Target N | Mean target objective | Equivalent budget | Eval count to match | RFunipass eval count | Eval ratio |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| RFunipass | 10 | 50 | 0.7782 | N/A | 41190 | 41190 | 1.00x |
| Per-program random | 10 | 50 | ... | B_eq | ... | 41190 | ... |
| Per-program GA | 10 | 50 | ... | B_eq | ... | 41190 | ... |

注意：

- RFunipass eval count 是学习通用序列的 offline 成本。
- Per-program eval count 是为了在同一 target set 上达到同等效果所需的 target feedback 成本。
- 对 Per-program 来说 `Eval count to match = B_eq * N`，如果使用实际 `evaluations` 则以 `core_tuning_cost.json` 为准。

### 8.2 Budget-effect curve 图

横轴：

```text
True IR instruction-count evaluations
```

纵轴：

```text
Target objective 或 mean_norm
```

图中：

- RFunipass 是一条水平线，表示其 target/test objective。
- Per-program 每个策略是一条曲线，点为不同 budget。
- 标出首次达到 RFunipass 线的预算点。

该图最直观回答“达到同等效果需要多少 eval”。

### 8.3 Target feedback 图

另一张图专门强调 target feedback：

| Method | Target feedback evals |
| --- | ---: |
| RFunipass | 0 |
| Per-program @ B_eq | `B_eq * N` |

该图适合放在 Discussion 或 Motivation，说明 universal sequence 的部署优势。

## 9. 关键公平性控制

必须固定以下变量：

| 变量 | 设置 |
| --- | --- |
| LLVM tools | `/root/llvm/llvm-project-21/build/bin` |
| Baseline | `oz` |
| Objective | `instrcount` |
| Backend opt level | 与当前项目一致，记录为 `-O0` |
| Loop policy | `wrap` |
| Target programs | 与对应 RFunipass seed 的 `test_programs` 完全一致 |
| Pass vocabulary | 与 RFunipassLab 当前 LLVM21 pass space 一致 |
| Timeout | 与 PerProgramAutoTune 当前默认一致，并写入 manifest |
| Invalid sequence | 计入实际 eval cost，因为它已经消耗 LLVM 调用 |
| Reporting eval | 不计入 tuning cost；只用于最终评估 |

## 10. 需要注意的解释边界

### 10.1 RFunipass 和 per-program 的目标不同

RFunipass 学一条通用序列；per-program 为每个程序搜索专属序列。因此 per-program 通常可以达到更强的最终效果，但代价是对每个目标程序都需要反馈。

论文中不能写：

```text
RFunipass 比 per-program tuning 更强
```

更准确的写法：

```text
RFunipass achieves competitive average improvement with substantially fewer or zero target-program feedback evaluations, while per-program tuning can further improve individual programs at a cost that scales linearly with the number of target programs.
```

### 10.2 离线成本和部署成本要分开

RFunipass 的 offline 成本不为 0，但一旦学到通用序列，部署到新 target set 不需要搜索反馈。per-program 的成本每换一个 target set 都要重新支付。

因此建议同时报告：

- offline tuning eval count
- target feedback eval count
- amortized eval per target

### 10.3 “相同效果”应使用同一 target set

不要拿 RFunipass Poj test 结果和 PerProgramAutoTune 在另一个数据集上的结果直接比较。必须导出同一批 `.ll` 文件作为 target set。

## 11. 建议实现模块

建议新增一个只做调度和汇总的轻量实验模块，不修改已有调优逻辑：

```text
RFunipassLab/scripts/cost_parity/
  export_rfunipass_targets.py
  run_perprogram_budget_sweep.sh
  summarize_cost_parity.py
```

### 11.1 `export_rfunipass_targets.py`

输入：

```text
--batch-manifest results/manifests/<rfunipass_10seed>.json
--output-dir results/cost_parity/<tag>
```

输出：

```text
seed456_test_programs.csv
seed456_rfunipass_target.json
...
```

### 11.2 `run_perprogram_budget_sweep.sh`

输入：

```text
--target-dir results/cost_parity/<tag>
--budgets 1,2,4,8,16,30,60,100
--strategies rio_random,ga_bitvector
```

功能：

- 逐 seed / budget / strategy 调用 PerProgramAutoTune。
- 不并行启动过多正式实验，默认 `jobs=1`。
- 每个 run 写入独立 tag。

### 11.3 `summarize_cost_parity.py`

输入：

```text
--rfunipass-target-dir results/cost_parity/<tag>
--perprogram-results-root /root/exp/PerProgramAutoTune/results
```

输出：

```text
results/reports/<tag>_cost_parity_curve.csv
results/reports/<tag>_cost_parity_equivalent_budget.csv
results/reports/<tag>_cost_parity_summary.md
results/reports/<tag>_cost_parity_curve.svg
```

## 12. 推荐执行顺序

### 阶段 A：smoke test

目的：验证流程与字段。

设置：

```text
seeds = [456]
target_n = 10
budgets = [1, 2, 4]
strategies = [rio_random]
```

成功标准：

- 可以导出 target CSV。
- PerProgramAutoTune 可以读取同一批 target programs。
- summary 能算出 eval count 和 mean_norm。

### 阶段 B：正式 Poj 10-seed cost parity

设置：

```text
seeds = 456..465
target_n = 50
budgets = [1, 2, 4, 8, 16, 30, 60, 100]
strategies = [rio_random, ga_bitvector]
```

输出：

- cost-to-match 主表
- budget-effect curve
- target feedback 对比图

### 阶段 C：外部分布扩展

设置：

```text
datasets = [polybench_full, cbench, csmith]
budgets = [1, 2, 4, 8, 16, 30, 60, 100]
strategies = [rio_random, ga_bitvector]
```

输出：

- external cost-to-match 表
- RFunipass zero-target-feedback 部署优势分析

## 13. 论文中可直接使用的实验表述

```text
To compare search efficiency, we measure the number of true LLVM instruction-count evaluations required to reach the same target-set objective as RFunipass. For RFunipass, this count is the number of candidate-sequence-by-program evaluations used during universal offline tuning. For per-program autotuning, this count is the sum of candidate evaluations over all target programs. We sweep the per-program budget and report the smallest budget whose target objective matches or improves upon the RFunipass objective under the same LLVM21 toolchain, baseline, pass vocabulary, and target program set.
```

中文表述：

```text
为了比较搜索效率，我们统计达到与 RFunipass 相同 target-set objective 所需的真实 LLVM IR 指令数评估次数。对 RFunipass，该次数是通用离线调优阶段候选序列在训练/验证程序上的真实评估次数；对 per-program autotuning，该次数是所有目标程序上候选序列评估次数之和。我们扫描 per-program 的每程序预算，并报告在相同 LLVM21 工具链、baseline、pass 空间和 target program set 下，首次达到或超过 RFunipass 效果所需的最小预算与评估次数。
```

## 14. 预期结论形式

如果实验结果符合预期，可以形成如下结论：

```text
RFunipass pays a fixed offline cost to learn a universal sequence, whereas per-program tuning pays a cost proportional to the number of target programs. When matching RFunipass's target objective, per-program methods require B_eq evaluations per target program, resulting in B_eq * N true instruction-count evaluations on a target set of N programs. In contrast, RFunipass requires zero target-feedback evaluations after the universal sequence is learned.
```

需要避免的过度结论：

- 不要声称 per-program 一定更差；它可能在高预算下效果更好。
- 不要只比较 wall-clock time；主问题是真实 IR 指令数评估次数。
- 不要把 RFunipass 的 offline cost 和 per-program 的 target feedback cost混为同一种部署成本；应同时报告并解释。
