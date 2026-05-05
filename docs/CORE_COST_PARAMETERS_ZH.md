# RFunipassLab 与 PerProgramAutoTune 核心 Cost 指标及相关参数

本文档记录当前两个项目中与核心调优成本相关的指标、参数和公平对比口径。目标是为后续论文实验设计、实验命令配置和结果解释提供统一依据。

## 1. 核心 Cost 指标

目前建议只使用以下核心指标进入论文主表或正式实验报告。

| 指标 | 含义 |
| --- | --- |
| `total_tuning_time_s` | 调优搜索总时间。RFunipassLab 中表示一次通用序列离线搜索时间；PerProgramAutoTune 中表示所有目标程序 per-program 搜索时间之和。 |
| `ml_time_s` | RFunipassLab 中机器学习部分耗时，包括 RF 特征提取、RF 拟合、EI/acquisition 和 GA 候选生成。PerProgramAutoTune 当前记为 `N/A`。 |
| `candidate_sequence_count` | 调优过程中被纳入真实评估的候选 pass 序列数量。 |
| `objective_eval_count` | 调优过程中 objective 被调用的次数。RFunipassLab 中一条候选序列通常会在多个 search_train/validation 程序上评估，因此该值可能大于候选序列数。 |
| `target_feedback_eval_count` | 在目标测试/外部程序上用于搜索反馈的 objective 评估次数。RFunipassLab 为 `0`；PerProgramAutoTune 约为 `budget × target_programs`。 |

不建议在论文主表中展示 LLVM 内部阶段耗时，例如：

```text
llvm_opt_time_s
autophase_time_s
compile_time_s
runtime_time_s
```

这些指标可以保留为调试信息，但不应作为论文中搜索成本对比的核心指标。

## 2. RFunipassLab Cost 口径

RFunipassLab 学习一条通用 pass 序列。它的 cost 口径是“一次离线搜索成本”。

当前 `total_tuning_time_s` 覆盖：

1. 初始 seed 序列评估。
2. BO/RF 主循环中的候选序列生成和评估。
3. validation 选择。
4. ablation 后处理。

当前 `total_tuning_time_s` 不覆盖：

1. baseline 预计算。
2. test/external final evaluation。
3. binary-size 旁路评估。
4. 报告写盘。

RFunipassLab 的关键性质：

```text
target_feedback_eval_count = 0
```

因为测试集和外部数据集只用于最终评估，不参与搜索反馈。

## 3. PerProgramAutoTune Cost 口径

PerProgramAutoTune 为每个目标程序单独搜索一条 pass 序列。它的 cost 口径是“目标程序 online tuning 成本”。

当前 `total_tuning_time_s` 定义为：

```text
sum(per_program.search_time_s)
```

即所有目标程序搜索时间之和，而不是受 `--jobs` 并行度影响的真实 elapsed wall-clock。

PerProgramAutoTune 的关键性质：

```text
target_feedback_eval_count = objective_eval_count
```

因为每次 objective 评估都来自目标程序自身，并且用于选择该目标程序的最优 pass 序列。

理论上，在没有大量去重失败、搜索提前停止或异常退出时：

```text
candidate_sequence_count ≈ budget × program_count
objective_eval_count ≈ budget × program_count
target_feedback_eval_count ≈ budget × program_count
```

## 4. RFunipassLab 中影响 Cost 的参数

| 参数 | 影响的指标 | 说明 |
| --- | --- | --- |
| `TRAIN_TOPK` | `objective_eval_count`, `total_tuning_time_s` | 进入 search_train + validation 的总程序数。程序越多，每条候选序列评估成本越高。 |
| `VAL_RATIO` | `objective_eval_count`, `total_tuning_time_s` | 决定 validation 数量。RFunipassLab 每条候选通常会在 search_train 和 validation 上评估。 |
| `MIN_VAL_PROGRAMS` | `objective_eval_count`, `total_tuning_time_s` | validation 最小数量。 |
| `SEED_TOPK` | `candidate_sequence_count`, `objective_eval_count`, `total_tuning_time_s` | 初始 seed 序列数量。`SEED_TOPK=0` 时通常等于 `TRAIN_TOPK`。 |
| `ITERS` | `candidate_sequence_count`, `objective_eval_count`, `ml_time_s`, `total_tuning_time_s` | BO/RF 主循环轮数。每轮通常新增一条候选序列，并触发一次 RF/GA 候选生成。 |
| `GA_POP` | `ml_time_s`, `total_tuning_time_s` | RFunipassLab 中 GA 候选搜索种群大小。 |
| `GA_GEN` | `ml_time_s`, `total_tuning_time_s` | GA 进化代数。 |
| `RNUM` | `ml_time_s`, `total_tuning_time_s` | 控制每轮候选扩展规模，影响 GA population 上限。 |
| `DECAY` | `ml_time_s` | 控制 `rnum` 衰减调度，间接影响候选生成成本。 |
| `SCALE` | `ml_time_s` | 控制 `rnum` 衰减调度，间接影响候选生成成本。 |
| `OFFSET` | `ml_time_s` | 控制 `rnum` 衰减调度，间接影响候选生成成本。 |
| `FEATURE_MODE` | `ml_time_s` | 特征维度和特征提取成本。 |
| `MAX_SEQ_LEN` | `total_tuning_time_s`, `objective_eval_count` | 序列越长，LLVM `opt` 评估通常越慢；也会影响 ablation 尝试次数。 |
| `LOOP_NESTING_POLICY` | `total_tuning_time_s` | 改变 pipeline 合法化方式，可能影响 opt 成功率和耗时。正式实验建议固定为 `wrap`。 |
| `OBJECTIVE_KIND` | `total_tuning_time_s`, `objective_eval_count` | `instrcount`、`runtime`、`binary size` 的评估成本不同。正式 cost 对比建议固定为 `instrcount`。 |
| `OBJECTIVE_BASELINE` | `total_tuning_time_s` | baseline 为 `-Oz` 或 `-O3` 会影响归一化和 baseline 计算。 |
| `LLVM_TOOLS_PATH` | `total_tuning_time_s` | 工具链不同会影响 opt 行为和速度。正式实验应固定为 LLVM21。 |
| `SPLIT_SEED` | `objective_eval_count`, `total_tuning_time_s` | 改变 search_train/validation/test 具体程序，程序复杂度不同会影响耗时。 |
| `EXPERIMENT_SEED` | `candidate_sequence_count`, `ml_time_s`, `total_tuning_time_s` | 改变搜索轨迹，候选序列复杂度可能不同。 |

## 5. PerProgramAutoTune 中影响 Cost 的参数

| 参数 | 影响的指标 | 说明 |
| --- | --- | --- |
| `--budget` | `candidate_sequence_count`, `objective_eval_count`, `target_feedback_eval_count`, `total_tuning_time_s` | 最核心参数。每个程序最多评估 `budget` 条候选序列。 |
| `--suite` | 所有 cost 指标 | 决定目标程序集合。 |
| `--program-csv` | 所有 cost 指标 | 决定目标程序集合。 |
| `--limit` | 所有 cost 指标 | 限制目标程序数量。 |
| `--strategy` | 所有 cost 指标 | 不同策略的候选生成、模型训练、搜索路径不同。 |
| `--seed` | `total_tuning_time_s`, `candidate_sequence_count` | 改变每个程序的搜索轨迹。 |
| `--baseline` | `total_tuning_time_s` | baseline 计算和归一化基准。正式实验建议固定为 `oz`。 |
| `--max-seq-len` | `total_tuning_time_s` | 限制候选序列长度；长序列通常更慢。 |
| `--population-size` | `total_tuning_time_s` | 影响 GA / CFSAT-GA population。 |
| `--mutation-rate` | `total_tuning_time_s` | 影响 GA 搜索轨迹和去重效率。 |
| `--candidate-pool` | `total_tuning_time_s` | 主要影响 `boca_flat` 的候选池大小和 acquisition 成本。 |
| `--loop-policy` | `total_tuning_time_s` | 当前正式口径应固定为 `wrap`。 |
| `--llvm-tools` | `total_tuning_time_s` | 应固定为 `/root/llvm/llvm-project-21/build/bin`。 |
| `--timeout-sec` | `objective_eval_count`, `total_tuning_time_s` | 影响 opt 超时和 invalid candidate。 |
| `--jobs` | 不应影响核心 cost 指标 | 只影响真实 wall-clock 运行时间；论文主表应使用 `sum(search_time_s)`。 |

## 6. 公平对比时必须固定的参数

正式比较 RFunipassLab 和 PerProgramAutoTune 时，建议固定：

```text
LLVM_TOOLS_PATH / --llvm-tools = /root/llvm/llvm-project-21/build/bin
OBJECTIVE_KIND = instrcount
OBJECTIVE_BASELINE / --baseline = oz
LOOP_NESTING_POLICY / --loop-policy = wrap
SPLIT_SEED = same
目标程序集合 = same
```

如果目标是比较算法搜索成本，不应混用不同 objective，例如把 RFunipassLab 的 instrcount 结果和 PerProgramAutoTune 的 runtime 结果放在同一张 cost 表中。

## 7. 重点调节参数

RFunipassLab 中最值得调节的是：

```text
ITERS
SEED_TOPK
TRAIN_TOPK
VAL_RATIO
GA_POP
GA_GEN
```

PerProgramAutoTune 中最值得调节的是：

```text
--budget
--strategy
--program set
--candidate-pool
--population-size
```

其中最关键的是：

```text
RFunipassLab: ITERS + SEED_TOPK
PerProgramAutoTune: --budget × program_count
```

这两者直接决定候选序列评估规模。

## 8. 推荐论文表述

可以这样描述 cost 对比：

```text
RFunipass pays a one-time offline search cost to obtain a universal pass sequence.
After that, it requires zero target-program feedback evaluations on unseen programs.

Per-program autotuning searches a separate pass sequence for every target program.
With a per-program budget B and N target programs, it requires approximately B × N target-feedback evaluations.
```

中文表述：

```text
RFunipass 的成本是一笔一次性离线搜索成本；在测试集和外部数据集上不需要任何目标程序反馈。
per-program autotuning 的成本随目标程序数量线性增长：若每个程序预算为 B，目标程序数为 N，则需要约 B × N 次目标程序 feedback evaluation。
```

## 9. 推荐主表字段

成本对比主表建议使用：

| Method | Type | Total Tuning Time(s) | ML Time(s) | Candidate Sequences | Objective Evals | Target Feedback Evals |
| --- | --- | ---: | ---: | ---: | ---: | ---: |
| RFunipass | universal offline | `T_rfunipass` | `T_ml` | `K` | `M` | `0` |
| rio_random | per-program online | `T_random` | `N/A` | `B × N` | `B × N` | `B × N` |
| ga_bitvector | per-program online | `T_ga` | `N/A` | `B × N` | `B × N` | `B × N` |
| boca_flat | per-program online | `T_boca` | `N/A` | `B × N` | `B × N` | `B × N` |

其中：

```text
K = RFunipassLab 调优过程中候选序列数量
M = RFunipassLab 调优过程中程序-序列 objective eval 数量
B = per-program budget
N = target program count
```

注意：`objective_eval_count` 在两个系统中的语义需要解释清楚。RFunipassLab 的一次候选序列会在多个训练/验证程序上评估；PerProgramAutoTune 的一次候选序列只在当前目标程序上评估。

## 10. 当前输出位置

RFunipassLab 每次实验会在 result JSON 旁输出：

```text
*_core_tuning_cost.json
*_core_tuning_cost.csv
```

PerProgramAutoTune 每次实验会在 run directory 下输出：

```text
core_tuning_cost.json
core_tuning_cost.csv
```

PerProgramAutoTune 的正式报告 `REPORT.md` 也会展示 core tuning cost 表。

