# RFunipass Top-Conference Gap Analysis and Upgrade Plan

> Date: 2026-04-25

## Executive Summary

RFunipass already has a credible top-conference direction: it learns compact universal LLVM pass sequences and shows both in-distribution POJ generalization and strong out-of-distribution transfer to full PolyBench/C 4.2.1. The strongest current result is the full PolyBench external evaluation: `0.6019 ± 0.1260` mean_norm over 30 programs and 10 seeds, equivalent to `39.81%` average IR instruction-count reduction over `-Oz`, with zero invalid cases and zero timeouts.

However, the current project is not yet submission-ready. The main missing pieces are stronger baselines, broader external datasets, ablation studies, binary/runtime validation, and more rigorous statistical reporting.

## Current Strengths

1. **Clear research gap.** Most compiler autotuning work is per-program; RFunipass targets a reusable universal pass sequence.
2. **Strong initial results.** POJ test improves by `22.63%` on average; full PolyBench/C improves by `39.81%` on average.
3. **Reproducibility infrastructure.** Multi-seed runner records seed, split, objective, baseline, loop policy, backend level, and manifest paths.
4. **LLVM New Pass Manager awareness.** `LOOP_NESTING_POLICY=wrap` fixes a real legality issue for loop passes.
5. **External validation framework.** `run_external_multi_seed.py` and `external_datasets` make external testing repeatable.
6. **No PolyBench full failures.** Full PolyBench/C has `30/30` valid programs for all 10 seeds.

## Critical Missing Pieces

### 1. Strong baselines

Required before submission:

- `-O0`, `-O1`, `-O2`, `-O3`, `-Os`, `-Oz` baselines under the same frontend/backend protocol.
- Random universal pass sequences with the same length budget.
- BOCA-inspired search without synergy graph.
- Greedy or beam-search pass construction.
- Per-program oracle or per-program tuned upper bound.
- Existing pass-ordering baselines if feasible: Coreset-style fixed candidate set, CompilerGym random/greedy baselines, or OpenTuner-style search.

### 2. Ablation studies

At minimum:

- Full RFunipass vs no synergy graph.
- Full RFunipass vs no self-loop edges.
- Full RFunipass vs no loop passes.
- `wrap` vs `legacy_previous_function` vs `attach_next_synergy`.
- Validation-selected sequence vs train-best sequence.
- Lite features vs richer features.

### 3. Objective breadth

Current main result is IR instruction count. Top venues will ask whether this translates to actual artifacts.

Needed:

- Binary size: `.text`, `.data`, `.bss`, `dec`, stripped file bytes.
- Runtime: at least PolyBench full and a stable subset of CBench.
- Compile time / opt time: sequence overhead relative to `-Oz`.

### 4. Dataset breadth

Current strong external evidence is full PolyBench/C. Need more diversity:

- CBench: fix timeout-heavy cases and report stable subset if necessary.
- Csmith: separate stress-testing from real workload claims.
- LLVM test-suite: ideal next target for credibility.
- MiBench or CHStone: useful for embedded/size-oriented claims.
- More POJ split seeds: current 10 seeds are good, but split diversity should be explicit.

### 5. Statistical rigor

Add:

- 95% confidence intervals.
- Paired per-program comparisons against `-Oz`.
- Wilcoxon signed-rank or bootstrap tests.
- Per-program violin/box plots.
- Validation-test rank correlation.
- External transfer correlation between POJ validation and PolyBench full.

### 6. Safety and failure analysis

Needed for credibility:

- Timeout-aware objective or pass blacklist/penalty.
- Detailed `attributor` crash/timeout handling.
- Sequence legality proof sketch for LLVM New PM scopes.
- Report invalid/timeout rates in all tables.
- Identify programs worsened by RFunipass and categorize why.

## Paper Positioning Advice

### Strongest story

The best current story is not “RFunipass beats every compiler on runtime.” The stronger and more defensible story is:

> RFunipass discovers compact universal LLVM pass sequences that reduce IR instruction count beyond `-Oz` and transfer from POJ to full PolyBench/C without external tuning.

### Avoid overclaiming

Do not claim yet:

- Runtime speedup.
- Binary-size improvement.
- Generalization to all C programs.
- Superiority over all autotuners.
- Replacement for `-Oz` in production.

### Claim confidently

Can claim now:

- Universal sequence learning is feasible.
- Validation-selected sequences improve held-out POJ instruction count.
- POJ-trained sequences transfer strongly to full PolyBench/C instruction count.
- The infrastructure supports reproducible multi-seed evaluation.

## Recommended Experiment Roadmap

### Phase 1: Finish instruction-count paper core

1. Run random universal sequence baseline, 10 seeds.
2. Run no-synergy ablation, 10 seeds.
3. Run no-self-loop ablation, 10 seeds.
4. Run wrap/legacy/attach loop policy comparison.
5. Generate consolidated POJ + PolyBench full main table.

### Phase 2: Artifact-level validation

1. Binary-size evaluation for best validation sequence and all top-5 sequences.
2. Report `.text`, stripped size, and `dec` as primary artifact metrics.
3. Runtime smoke on PolyBench full with small/medium datasets.
4. Compile-time overhead table.

### Phase 3: Broader external generalization

1. Expand CBench stable subset and diagnose timeout cases.
2. Add LLVM test-suite subset.
3. Add MiBench/CHStone if available.
4. Report external valid/invalid/timeout explicitly.

### Phase 4: Writing polish

1. Add method pseudocode.
2. Add pass synergy graph visualization.
3. Add sequence examples and pass-family frequency analysis.
4. Add negative results section for CBench/Csmith timeout behavior.
5. Add artifact appendix with exact commands and manifests.

## Suggested Top-Conference Table Set

### Main Table 1: In-distribution POJ

Columns:

- Method
- Seeds
- Validation mean_norm
- Test mean_norm
- Test improvement vs `-Oz`
- Worsen rate
- Sequence length

### Main Table 2: External transfer

Columns:

- Dataset
- Programs
- Valid
- Seeds
- Mean_norm
- Improvement vs `-Oz`
- Worsen rate
- Invalid
- Timeout

### Main Table 3: Baselines and ablations

Rows:

- `-Oz`
- Random universal
- No synergy graph
- No self-loop
- No loop passes
- RFunipass full

### Main Table 4: Artifact metrics

Columns:

- Dataset
- `.text`
- stripped file bytes
- `dec`
- compile time
- runtime if available

## Bottom Line

RFunipass has a promising top-conference core, especially after the full PolyBench/C result. The paper should now focus on rigor rather than adding more features. The most important missing work is a strong baseline/ablation matrix and artifact-level validation beyond IR instruction count.
