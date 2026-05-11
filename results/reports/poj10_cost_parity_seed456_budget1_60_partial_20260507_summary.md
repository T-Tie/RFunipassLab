# RFunipass vs Per-Program Cost-Parity Summary

- Match rule: `perprogram_objective <= rfunipass_objective + 0.005`
- Safety rule: `perprogram_worsen_rate <= rfunipass_worsen_rate + 0.02`
- RFunipass mean objective: `0.7693`
- RFunipass mean core eval count: `40600.0`
- Mean target programs per seed: `50.0`

![Cost parity curve](poj10_cost_parity_seed456_budget1_60_partial_20260507_curve.svg)

## Equivalent Budget By Strategy

| Strategy | Seeds | Matched | Median B_eq | Per-program evals [95% CI] | RFunipass evals | Eval ratio [95% CI] |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| `cfsat_ga` | 1 | 1 | 16 | 800.0 [800.0, 800.0] | 40600.0 | 0.0197 [0.0197, 0.0197] |
| `ga_bitvector` | 1 | 0 | None | 3000.0 [3000.0, 3000.0] | 40600.0 | 0.0739 [0.0739, 0.0739] |
| `rio_random` | 1 | 0 | None | 3000.0 [3000.0, 3000.0] | 40600.0 | 0.0739 [0.0739, 0.0739] |

## Per-Seed Equivalent Budgets

| Strategy | Seed | Matched | B_eq | Per-program evals | RFunipass evals | Per-program objective | RFunipass objective |
| --- | ---: | --- | ---: | ---: | ---: | ---: | ---: |
| `cfsat_ga` | 456 | True | 16 | 800.0 | 40600.0 | 0.7262 | 0.7693 |
| `ga_bitvector` | 456 | False | >60 | 3000.0 | 40600.0 | 0.9593 | 0.7693 |
| `rio_random` | 456 | False | >60 | 3000.0 | 40600.0 | 0.9601 | 0.7693 |

## Interpretation

RFunipass pays a fixed offline cost to learn one universal sequence. Per-program tuning pays target feedback cost for every target program, so its evaluation count scales as budget times target set size. When a per-program method matches RFunipass at budget B_eq, the relevant comparison is B_eq * N target evaluations versus RFunipass's offline core evaluations and zero target-feedback evaluations after deployment.
