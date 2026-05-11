# Runtime Results and Synergy-Guided GA Report

Generated at: 2026-05-09

## 1. Scope

This report summarizes the runtime-objective experiments currently available in `results/runtime/summaries` and explains how the pass synergy graph is used inside the genetic search operators.

Runtime experiment sources:

- `results/runtime/summaries/20260411_182810_593755_runtime_baseline.json`
- `results/runtime/summaries/20260413_201615_919211_runtime_feature_lite.json`
- `results/runtime/summaries/20260413_221921_490713_runtime_feature_lite.json`
- `results/runtime/summaries/20260413_222129_558671_runtime_feature_lite.json`
- `results/runtime/summaries/20260413_222233_545217_runtime_baseline.json`
- `results/runtime/summaries/20260414_151923_015709_runtime_baseline.json`
- `results/runtime/summaries/20260414_152009_809370_runtime_feature_lite.json`
- `results/runtime/summaries/20260415_140602_990467_runtime_feature_lite.json`

One runtime run did not produce a summary because it failed before BO search:

- `results/logs/20260415_154027_060050_runtime_baseline.log`
- Failure reason: `ModuleNotFoundError: No module named 'sklearn'`

## 2. Runtime Objective Definition

Runtime metrics are normalized against the selected runtime baseline:

```text
runtime_mean_norm = optimized_runtime / selected_baseline_runtime
```

The scalar objective is:

```text
objective = mean_norm
          + OBJ_WORSEN_W * worsen_rate
          + OBJ_HIGHVAR_W * high_variance_rate
```

The key interpretation is:

- `mean_norm < 1.0`: faster than the selected baseline.
- `mean_norm > 1.0`: slower than the selected baseline.
- `worsen_rate`: fraction of programs slower than the selected baseline.
- `high_variance_rate`: fraction of programs whose runtime measurement exceeded the configured variance threshold.

Because some runs use `-Oz` as the runtime baseline and some use `-O3`, their `mean_norm` values are not directly comparable unless the baseline is stated.

## 3. Runtime Results Summary

### 3.1 Runs Using `-Oz` as Runtime Baseline

These runs optimize normalized runtime against the `-Oz` fixed pipeline. The `vs_none`, `vs_oz`, and `vs_o3` columns are normalized to fixed baselines measured on the same test split.

| Run | Feature | HV weight | Test mean vs selected baseline | Test worsen | Test high-var | Test vs none | Test vs Oz | Test vs O3 | Val mean | Val worsen | Len |
| --- | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| `20260413_201615_919211_runtime_feature_lite` | lite | 0.05 | 0.9979 | 50.0% | 20.0% | 0.8991 | 0.9979 | 1.0825 | 0.9239 | 32.0% | 18 |
| `20260413_221921_490713_runtime_feature_lite` | lite | 0.05 | 0.9920 | 42.0% | 22.0% | 0.8901 | 0.9920 | 1.1035 | 0.9534 | 21.0% | 10 |
| `20260413_222129_558671_runtime_feature_lite` | lite | 0.01 | 0.9493 | 16.0% | 30.0% | 0.8491 | 0.9493 | 1.0508 | 0.9245 | 12.0% | 28 |
| `20260413_222233_545217_runtime_baseline` | full | 0.01 | 0.9687 | 30.0% | 28.0% | 0.8981 | 0.9687 | 1.0300 | 0.9623 | 24.0% | 44 |

Main observations for `-Oz` baseline:

- The best runtime run against `-Oz` is `20260413_222129_558671_runtime_feature_lite`.
- It achieves `test_mean=0.9493`, meaning about `5.1%` faster than `-Oz`.
- It also has the lowest test worsen rate among these runs: `16.0%`.
- However, it is still slower than `-O3`: `test_vs_o3=1.0508`, about `5.1%` slower than `-O3`.
- The fixed baseline panel shows that `-O3` is already much stronger than `-Oz` on this runtime pool, so beating `-Oz` does not imply beating `-O3`.

### 3.2 Runs Using `-O3` as Runtime Baseline

These runs optimize normalized runtime against the `-O3` fixed pipeline.

| Run | Feature | HV weight | Test mean vs O3 | Test worsen | Test high-var | Test vs none | Test vs Oz | Test vs O3 | Val mean | Val worsen | Len |
| --- | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| `20260414_151923_015709_runtime_baseline` | full | 0.01 | 1.2307 | 74.0% | 24.0% | 0.9927 | 1.1064 | 1.2307 | 1.1690 | 58.0% | 8 |
| `20260414_152009_809370_runtime_feature_lite` | lite | 0.01 | 1.1936 | 78.0% | 24.0% | 0.9628 | 1.0730 | 1.1936 | 1.2264 | 72.0% | 17 |
| `20260415_140602_990467_runtime_feature_lite` | lite | 0.10 | 1.2359 | 78.0% | 22.0% | 0.9969 | 1.1110 | 1.2359 | 1.2581 | 67.0% | 12 |

Main observations for `-O3` baseline:

- None of the available runtime-tuned universal sequences beats `-O3`.
- The best `-O3`-baseline run by test mean is `20260414_152009_809370_runtime_feature_lite`, with `test_mean=1.1936`.
- This is about `19.4%` slower than `-O3`.
- The test worsen rate is very high: `78.0%`.
- Even when the sequence is slightly faster than no-pass or near no-pass, it remains much worse than `-O3`.

## 4. Overall Runtime Findings

The runtime direction is currently much weaker than the instruction-count direction.

Positive signals:

- Runtime evaluation infrastructure is functional: it builds runtime harnesses, calibrates repeated execution, validates stdout stability, tracks high variance, and stores fixed `none/Oz/O3` baselines.
- Against `-Oz`, the lite runtime run `20260413_222129_558671_runtime_feature_lite` finds a universal sequence that improves average runtime by about `5.1%` and worsens only `16%` of test programs.
- Lite features can work for runtime under the easier `-Oz` target.

Negative signals:

- Against `-O3`, all available runtime runs are substantially worse than the baseline.
- Runtime measurements show high variance rates around `20-30%` in many runs.
- Validation-to-test transfer is unstable. For example, the `-O3` baseline full run has `validation_mean=1.1690` but `test_mean=1.2307`.
- Runtime objective is expensive: full runs cost roughly 5.5 to 9 hours in the available logs.
- One run failed due to environment inconsistency: missing `sklearn`.

The current conclusion should be conservative:

> RFunipassLab's current universal-sequence framework can produce runtime improvements over `-Oz` on the internal runtime pool, but it does not yet compete with LLVM `-O3` for runtime. Runtime should be presented as exploratory or secondary unless more robust multi-seed evidence is added.

## 5. Why Runtime Is Harder Than IR Instruction Count

Runtime is noisier and more target-dependent than IR instruction count:

- Runtime depends on backend code generation, instruction scheduling, cache behavior, branch behavior, input size, and measurement noise.
- A pass sequence that reduces IR instruction count may still hurt machine-level performance.
- `-O3` already includes a mature, target-aware optimization pipeline, so a short universal IR pass sequence has a much harder baseline to beat.
- The current backend is fixed at `-O0` after custom IR optimization, which isolates IR-pass effects but may also prevent backend optimizations from recovering performance.

For paper positioning, runtime should not be used as the main claim unless the method is extended with:

- 10-seed runtime experiments.
- External runtime datasets.
- Lower measurement variance.
- A stronger runtime-specific objective or pass vocabulary.
- A fair comparison against per-program runtime tuning.

## 6. Synergy Graph Usage in Genetic Search

The synergy graph is loaded from `data/Step3_EnumeratedPairs.csv` and stored as:

- `synergy_graph`: adjacency map, meaning `A -> B` suggests that putting pass `A` before pass `B` is beneficial.
- `synergy_edges`: explicit edge list.
- `synergy_self`: passes with useful self-loops.
- `all_passes`: pass vocabulary used by random generation, insertion, and replacement.

In the current GA implementation, the synergy graph is not a hard constraint. It is a soft inductive bias used to generate better candidate sequences.

### 6.1 Synergy-Guided Crossover

One crossover operator is `xover_synergy_guided_merge`.

Its probability among crossover operators is `25%`.

Process:

1. Count pass frequencies in two parent sequences.
2. Build a pool that keeps the maximum frequency of each pass across the two parents.
3. If the pool is too long, truncate to `MAX_SEQ_LEN`.
4. Sort the pool using `synergy_greedy_sort`.

The sorting score is:

```text
score(pass p) = 2 * predecessors_satisfied(p) + future_benefit(p)
```

where:

- `predecessors_satisfied(p)` counts how many already placed passes have synergy edges into `p`.
- `future_benefit(p)` counts how many remaining passes could benefit from placing `p` now.

This means the algorithm tries to place useful predecessor passes earlier and preserve edge directions suggested by the synergy graph.

### 6.2 Synergy-Aware Mutation

One mutation operator is `mut_synergy_reorder`.

The mutation operator itself has `25%` probability among mutation types. Since mutation is triggered with `GA_MUTATE_RATE=0.8`, the effective chance of applying synergy reorder to a child is approximately:

```text
0.8 * 0.25 = 20%
```

Process:

1. Traverse adjacent pass pairs.
2. For adjacent pair `(a, b)`, check if the reverse edge `b -> a` exists.
3. If `b -> a` exists and `a -> b` does not exist, swap them.
4. Repeat for up to 3 local passes over the sequence.

This is a local repair operator. It does not change which passes appear; it only changes the order to satisfy more synergy edges.

### 6.3 Feature-Level Use by the RF Surrogate

Although not strictly part of mutation, the synergy graph also affects GA through the RF surrogate's feature representation:

- In `full` mode, the feature vector contains an explicit satisfaction bit for every synergy edge.
- In `lite` mode, the feature vector keeps a scalar `synergy_rate`, plus self-loop and scope-ratio statistics.

Because GA ranks candidates by Expected Improvement predicted from the RF model, any synergy-derived feature that the RF learns to associate with good objective values will indirectly influence which GA candidates survive tournament selection and elite selection.

### 6.4 Logging and Diagnostics

Each candidate sequence logs `syn_rate`, the fraction of synergy edges satisfied by that sequence.

Important caveat:

- `syn_rate` is not the final objective.
- A higher `syn_rate` does not guarantee better runtime or instruction count.
- It is a diagnostic and search-bias signal, not a correctness rule.

This is visible in runtime logs: some high-synergy sequences still perform poorly against `-O3`, which means the synergy graph learned from pass-pair statistics is not sufficient to solve runtime optimization by itself.

## 7. Paper-Level Guidance

For the current paper, runtime should be framed as follows:

- Main result: instruction-count and binary-size directions.
- Runtime result: exploratory extension showing the infrastructure can optimize measured execution time, but the current universal-sequence search is not yet competitive with `-O3`.
- Important negative result: beating `-Oz` does not imply beating `-O3`; runtime needs a stronger objective and more robust evaluation.
- Methodological contribution: the synergy graph is used both as a feature signal for the RF surrogate and as a structural prior in GA crossover/mutation.

Recommended next experiments:

1. Run runtime with 10 seeds under `OBJECTIVE_BASELINE=oz` first, because this is the only setting that currently shows positive signal.
2. Separately run `OBJECTIVE_BASELINE=o3`, but treat it as a stress test.
3. Add a runtime-specific pass vocabulary rather than reusing the instruction-count-oriented vocabulary unchanged.
4. Report `mean_norm`, `worsen_rate`, and `high_variance_rate` separately.
5. Add per-program runtime autotuning as a comparison, because runtime may benefit more from program-specific sequences than from one universal sequence.

