# RFunipass: Synergy-Guided Bayesian Optimization for Distribution-General Universal LLVM Pass Sequences

> Draft version: 2026-04-25  
> Target venues: PLDI / OOPSLA / CGO / ASPLOS / ICSE-SEIP-style empirical compiler track  
> Current status: strong workshop/early-conference draft; several experiments are still needed before top-tier submission.

## Abstract

Modern optimizing compilers expose hundreds of transformation and analysis passes. Their effectiveness depends not only on whether a pass is enabled, but also on where it appears in the optimization pipeline. Existing compiler autotuning systems usually search program-specific flag combinations or pass sequences, which can achieve strong performance but requires per-program tuning and therefore limits deployment. This paper studies a complementary problem: can we learn a *single universal LLVM pass sequence* that generalizes across programs and improves over a strong size-oriented baseline such as `-Oz`?

We present **RFunipass**, a synergy-guided Bayesian optimization framework for learning universal pass sequences under LLVM's New Pass Manager. RFunipass models pass interactions as a directed synergy graph, uses program features and iterative measurements to guide candidate generation, and applies legality-aware pass nesting to make learned sequences executable under LLVM's module, CGSCC, function, and loop pass scopes. The learned sequence is selected only on a validation split and is then evaluated on held-out programs and external benchmark suites.

On a 10-seed `instrcount-lite` study with `LOOP_NESTING_POLICY=wrap`, RFunipass reduces held-out POJ test-set IR instruction count to `0.7737× ± 0.0563×` of `-Oz`, corresponding to a `22.63%` average reduction. The best validation-selected seed achieves `0.7102×` on POJ test programs, or a `28.98%` reduction. Without further tuning, the same 10 learned sequences transfer to the full 30-program PolyBench/C 4.2.1 suite, where they achieve `0.6019× ± 0.1260×` normalized instruction count, a `39.81%` average reduction over `-Oz`, with `30/30` valid programs and no timeouts. These results suggest that compiler-pass synergies learned from one program distribution can form compact universal optimization pipelines with strong out-of-distribution effectiveness.

## 1. Introduction

Compiler optimization is a phase-ordering problem: the benefit of a pass depends on the transformations that precede and follow it. This problem is known to be difficult because the search space grows combinatorially with the number of available passes and sequence length. Production compilers therefore rely on carefully engineered fixed pipelines such as `-O2`, `-O3`, `-Os`, and `-Oz`. These pipelines are robust, but they are necessarily conservative and cannot fully adapt to the interaction patterns exposed by modern workloads.

Compiler autotuning has addressed this challenge by automatically searching for better optimization configurations. Prior systems such as MILEPOST GCC learn compiler heuristics for execution time, code size, or compilation time; OpenTuner provides an extensible multi-strategy autotuning framework; BOCA introduces Bayesian optimization for compiler autotuning; AutoPhase explores reinforcement learning for LLVM phase ordering; and recent systems such as Coreset-based pass ordering and LLM-based compiler optimization target code-size reduction. However, most approaches either tune individual programs, require many compilation calls per program, or learn policies that still select program-dependent pass sequences.

This paper studies a different operating point: **distribution-general universal pass tuning**. Instead of choosing a different sequence for each program, RFunipass searches for one compact pass sequence that performs well on a training distribution and then transfers to held-out and external programs. This formulation matters in settings where per-program autotuning is too expensive, where build systems need a single stable optimization pipeline, or where a compiler engineer wants to discover reusable pass interactions rather than isolated program-specific wins.

RFunipass builds on three design principles:

1. **Synergy over individual pass importance.** A pass may be weak in isolation but valuable after another pass exposes its opportunity. RFunipass therefore treats pass sequencing as an interaction-learning problem.
2. **Legality-aware pipeline synthesis.** LLVM New Pass Manager distinguishes module, CGSCC, function, and loop passes. RFunipass converts learned abstract sequences into executable pipelines using explicit loop-nesting policies.
3. **Validation-first reporting.** The sequence is chosen by validation objective only; held-out and external test results are reported after selection to avoid external-test leakage.

The main contributions are:

- **Problem formulation.** We formalize universal LLVM pass-sequence search as distribution-level optimization rather than per-program tuning.
- **Method.** We introduce a synergy-guided Bayesian optimization loop that learns compact pass sequences while respecting LLVM New Pass Manager legality constraints.
- **Engineering.** We build a reproducible multi-seed experimental runner that records seed, split, objective, baseline, backend level, loop policy, sequence, and external validation manifests.
- **Evaluation.** We report 10-seed held-out POJ results and out-of-distribution transfer to the full PolyBench/C 4.2.1 suite.
- **Analysis.** We identify remaining weaknesses, including runtime validation, binary-size validation, broader external datasets, and timeout/safety handling on CBench and Csmith.

## 2. Background and Motivation

### 2.1 LLVM pass ordering

LLVM optimization pipelines consist of passes at multiple granularities. A module pass can inspect and transform the whole module; a CGSCC pass works over call-graph SCCs; a function pass transforms individual functions; loop passes must be embedded in function-level loop adaptors. This hierarchy makes naive sequence search invalid: a learned list containing `loop(...)` cannot always be directly passed to `opt -passes=...` unless it is nested legally.

RFunipass therefore distinguishes the *raw learned sequence* from the *effective executable pipeline*. The current recommended policy is `LOOP_NESTING_POLICY=wrap`, which wraps loop passes into legal function adaptors instead of attaching them heuristically to neighboring function passes. This makes logs, manifests, and external validation consistent with the actual pipeline evaluated by LLVM.

### 2.2 Why universal pass sequences?

Per-program autotuning is powerful but expensive. A production build pipeline often cannot afford hundreds or thousands of compilations for every program. A universal sequence amortizes the search cost across many programs: once learned, it can be applied like a custom optimization level. This trades some program-specific optimality for deployability, reproducibility, and interpretability.

The central hypothesis of RFunipass is:

> A compact sequence of LLVM passes can capture reusable cross-program optimization synergies that improve code-size-oriented objectives beyond `-Oz` on held-out and external programs.

## 3. Method

### 3.1 Search space

RFunipass searches over sequences of LLVM New Pass Manager passes. Passes are annotated with their scope, e.g., `module(globalopt)`, `function(newgvn)`, `function(dse)`, `cgscc(attributor-cgscc)`, and `function(loop(loop-simplifycfg))`. A candidate sequence is first represented as an abstract ordered list and then normalized into an executable LLVM pipeline.

### 3.2 Objective

The main objective in the current paper draft is IR instruction count relative to `-Oz`. For a program `p`, let `I_s(p)` be the instruction count after applying candidate sequence `s`, and let `I_Oz(p)` be the instruction count under `-Oz`. RFunipass computes a normalized ratio:

```text
r_s(p) = I_s(p) / I_Oz(p)
```

Lower is better. The aggregate metric is the mean ratio over the evaluated program set, with an additional worsen penalty in the internal objective. The paper-facing metric is `mean_norm`; improvement is reported as:

```text
Improve vs Oz = 1 - mean_norm
```

### 3.3 Synergy-guided Bayesian optimization

The search loop follows a BOCA-inspired iterative optimization structure, but changes the target from program-specific compiler option tuning to universal sequence discovery. At each iteration, the system evaluates candidate pass sequences on the training split, updates a model of pass/sequence utility, and proposes new candidates biased toward promising pass interactions.

RFunipass uses a directed synergy graph to preserve relationships such as self-loops and pairwise benefits. This is important because repeated passes such as `attributor` or repeated combinations such as `gvn-hoist → newgvn → dse` may expose new facts or cleanup opportunities only after earlier passes transform the IR.

### 3.4 Legality-aware loop nesting

LLVM loop passes cannot appear arbitrarily at module scope. Earlier experimental variants used policies such as `legacy_previous_function` and `attach_next_synergy`; the current default is `wrap`, which makes the effective pipeline explicit and stable. This matters both scientifically and practically: the sequence reported in logs must match the sequence actually executed by `opt`.

### 3.5 Reproducibility infrastructure

RFunipass includes a unified multi-seed runner. Each run records:

- experiment seed and split seed;
- objective kind and baseline;
- feature mode;
- backend optimization level;
- loop nesting policy;
- final raw and effective pass sequence;
- validation and test metrics;
- external validation reports and manifests.

This infrastructure is essential for top-tier empirical compiler work because pass-ordering results are sensitive to seeds, splits, LLVM versions, and timeout policies.

## 4. Experimental Setup

### 4.1 Compiler and tooling

Experiments use LLVM 21.1.8 with assertions enabled. The project default tool path is:

```text
/root/llvm/llvm-project-21/build/bin
```

External linked LLVM IR is generated with the canonical frontend mode:

```text
clang -O1 -Xclang -disable-llvm-passes -emit-llvm
```

This avoids `-O0` `optnone` while not running the full LLVM middle-end before RFunipass applies its learned sequence.

### 4.2 Training distribution

The main training/evaluation distribution is POJ. Each seed creates a search-train, validation, and test split. Sequence selection uses validation only; test is held out.

The main configuration is:

```text
OBJECTIVE_KIND=instrcount
OBJECTIVE_BASELINE=oz
FEATURE_MODE=lite
LOOP_NESTING_POLICY=wrap
BACKEND_OPT_LEVEL=-O0
seeds = 456..465
```

### 4.3 External distribution

External validation uses `external_datasets`. The strongest current external result is on the complete PolyBench/C 4.2.1 suite:

- suite: `polybench_full`;
- programs: 30;
- baseline: `-Oz`;
- timeout: 120s;
- workers: 4;
- no external program is used for tuning or seed selection.

## 5. Results

### 5.1 In-distribution generalization on held-out POJ programs

Across 10 independent seeds, RFunipass reduces held-out POJ test instruction count to `0.7737× ± 0.0563×` of `-Oz`, corresponding to a `22.63%` average reduction. The test worsen rate is `9.40% ± 5.58%`, and the final sequence length is `14.80 ± 4.29` passes.

| Metric | Mean ± Std | Best | Worst |
| --- | ---: | ---: | ---: |
| Validation mean_norm | 0.7482 ± 0.0417 | 0.6635 | 0.8135 |
| Test mean_norm | 0.7737 ± 0.0563 | 0.7102 | 0.8598 |
| Test improvement vs `-Oz` | 22.63% ± 5.63% | 28.98% | 14.02% |
| Test worsen rate | 9.40% ± 5.58% | 2.00% | 18.00% |
| Sequence length | 14.80 ± 4.29 | 8 | 22 |

The validation-selected best seed is `463`, with validation mean_norm `0.6635` and POJ test mean_norm `0.7102`, or `28.98%` reduction over `-Oz`.

### 5.2 Out-of-distribution transfer to full PolyBench/C

The same 10 sequences, learned from POJ and selected without PolyBench feedback, are evaluated on the full 30-program PolyBench/C 4.2.1 suite. RFunipass achieves `0.6019× ± 0.1260×` normalized instruction count, corresponding to `39.81% ± 12.60%` reduction over `-Oz`. All programs are valid and no timeouts occur.

| Suite | Programs | Valid | Seeds | Mean Norm ↓ | Improve vs `-Oz` ↑ | Worsen Rate ↓ | Invalid | Timeout |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| PolyBench/C 4.2.1 full | 30 | 30.00 ± 0.00 | 10 | 0.6019 ± 0.1260 | 39.81% ± 12.60% | 19.00% ± 14.49% | 0.00 ± 0.00 | 0.00 ± 0.00 |

The validation-selected seed `463` transfers particularly well: `0.4602×` mean_norm, `53.98%` reduction, and only `6.67%` worsen rate on the full suite. Seed `457` also transfers strongly despite ranking ninth on POJ validation, suggesting that validation ranking is useful but not perfectly predictive of external ranking.

### 5.3 Interpretation

The full PolyBench result is the most compelling evidence so far. PolyBench/C is loop- and array-heavy, while POJ contains diverse programming-contest-style programs. The fact that a POJ-trained universal sequence improves a full numerical benchmark suite without external tuning suggests that RFunipass is not merely memorizing POJ idiosyncrasies. Instead, it appears to discover reusable IR simplification and size-reduction patterns.

At the same time, the method is not uniformly beneficial. The POJ test worsen rate and PolyBench full worsen rate indicate that universal sequences still hurt some programs. This is expected: a single pipeline cannot dominate `-Oz` on every program. The goal is therefore not per-program optimality, but strong average improvement with acceptable failure modes.

## 6. Ablation and Analysis Plan

The current implementation supports, but has not yet fully completed, the following ablations required for a top-tier submission:

1. **No synergy graph.** Candidate generation without pass-interaction edges.
2. **No self-loop.** Remove repeated pass transitions such as `attributor → attributor`.
3. **No loop-pass support.** Compare `wrap` against policies that suppress or misplace loop passes.
4. **No validation selection.** Use final-iteration or train-best sequence to quantify overfitting.
5. **Random search / BOCA-style baseline.** Compare against randomly sampled universal sequences and BOCA-inspired but non-synergy universal search.
6. **Default LLVM baselines.** Compare against `-O0`, `-O1`, `-O2`, `-O3`, `-Os`, and `-Oz`, not only `-Oz`.
7. **Binary-size side metrics.** Report `.text`, `.data`, `.bss`, `dec`, and stripped file size.
8. **Runtime validation.** Evaluate whether instruction-count reductions translate to runtime improvement or merely reduce IR size.

## 7. Related Work

**Compiler autotuning.** MILEPOST GCC pioneered machine-learning-based self-tuning compilers that adjust heuristics to improve execution time, code size, or compilation time. OpenTuner generalized autotuning through extensible configuration representations and ensembles of search techniques. BOCA introduced a Bayesian optimization approach tailored to compiler autotuning and demonstrated improved efficiency over RIO, GA, Irace, and generic Bayesian methods.

**Phase ordering and reinforcement learning.** AutoPhase frames LLVM phase ordering as a reinforcement learning problem and shows that deep RL can outperform conventional search for HLS-oriented LLVM pipelines. CompilerGym provides robust, production-compiler environments for ML-driven compiler optimization and emphasizes reproducibility, fault tolerance, and large optimization spaces.

**Code-size-oriented pass selection.** Coreset-based pass ordering reduces the raw action space by selecting a small set of candidate pass sequences and learning a policy to choose among them. Large-language-model approaches train on LLVM assembly or IR to predict compiler options for code-size optimization. These systems generally target program-dependent optimization decisions, whereas RFunipass targets a reusable universal sequence.

**Positioning of RFunipass.** RFunipass differs from these lines of work by focusing on distribution-level universal pass sequences, explicit pass-synergy structure, LLVM New Pass Manager legality, and multi-seed validation/test reporting. Its strength is deployability: once learned, the sequence can be used like a custom optimization level.

## 8. Limitations

The current evidence is promising but not yet sufficient for a top-tier conference without further work.

- The main objective is IR instruction count, not executable size or runtime.
- External generalization is strong on full PolyBench/C, but CBench and Csmith still need cleaner results with fewer timeouts.
- The comparison set lacks strong baselines such as random universal search, OpenTuner-style search, BOCA-style program-specific tuning, and Coreset-style sequence selection.
- Statistical testing is not yet complete; confidence intervals, paired tests, and per-program distributions should be included.
- The method requires careful handling of LLVM assertions, especially around passes such as `attributor`.
- The current paper story should avoid overclaiming runtime or binary-size improvements until those experiments are completed.

## 9. Conclusion

RFunipass demonstrates that universal LLVM pass sequences can be learned from one program distribution and transferred to external benchmarks. The current 10-seed experiments show consistent held-out POJ improvement over `-Oz`, and the full PolyBench/C 4.2.1 evaluation provides strong out-of-distribution evidence with no invalid programs or timeouts. The next step toward top-tier publication is to strengthen the experimental matrix: add robust baselines, complete binary-size/runtime evaluation, perform ablations, and analyze failure cases.

## References

- Efficient Compiler Autotuning via Bayesian Optimization (BOCA), ICSE 2021: https://tjusail.github.io/people/chenjunjie/files/ICSE21-BOCA.pdf
- OpenTuner: An Extensible Framework for Program Autotuning, PACT 2014: https://commit.csail.mit.edu/papers/2014/ansel-pact14-opentuner.pdf
- MILEPOST GCC: Machine Learning Based Research Compiler: https://research.ibm.com/publications/milepost-gcc-machine-learning-based-research-compiler
- CompilerGym: Robust, Performant Compiler Optimization Environments for AI Research: https://arxiv.org/abs/2109.08267
- AutoPhase: Compiler Phase-Ordering for High Level Synthesis with Deep Reinforcement Learning: https://arxiv.org/abs/1901.04615
- Learning Compiler Pass Orders using Coreset and Normalized Value Prediction: https://arxiv.org/abs/2301.05104
- Large Language Models for Compiler Optimization: https://arxiv.org/abs/2309.07062
