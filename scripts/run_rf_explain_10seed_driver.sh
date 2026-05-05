#!/usr/bin/env bash
set -uo pipefail

cd /root/exp/RFunipassLab

RUN_TAG="${RUN_TAG:?RUN_TAG must be set}"
SEED_START="${SEED_START:-456}"
SEED_COUNT="${SEED_COUNT:-10}"
SPLIT_SEED_OFFSET="${SPLIT_SEED_OFFSET:-0}"
TOPK="${RF_IMPORTANCE_CI_TOPK:-30}"

printf '# run_tag: %s\n' "$RUN_TAG"
printf '# started_at: %s\n' "$(date --iso-8601=seconds)"
printf '# python: %s\n' "$(command -v python)"
python --version

env \
  LD_PRELOAD="${LD_PRELOAD:-/usr/lib/x86_64-linux-gnu/libstdc++.so.6}" \
  LLVM_TOOLS_PATH="${LLVM_TOOLS_PATH:-/root/llvm/llvm-project-21/build/bin}" \
  LOOP_NESTING_POLICY="${LOOP_NESTING_POLICY:-wrap}" \
  OBJECTIVE_KIND="${OBJECTIVE_KIND:-instrcount}" \
  OBJECTIVE_BASELINE="${OBJECTIVE_BASELINE:-oz}" \
  BACKEND_OPT_LEVEL="${BACKEND_OPT_LEVEL:--O0}" \
  FEATURE_MODE="${FEATURE_MODE:-lite}" \
  RF_EXPLAIN_ENABLE="${RF_EXPLAIN_ENABLE:-1}" \
  RF_EXPLAIN_MODE="${RF_EXPLAIN_MODE:-final}" \
  RF_EXPLAIN_HOLDOUT_RATIO="${RF_EXPLAIN_HOLDOUT_RATIO:-0.3}" \
  RF_EXPLAIN_PERM_REPEATS="${RF_EXPLAIN_PERM_REPEATS:-10}" \
  RF_EXPLAIN_TOPK="${RF_EXPLAIN_TOPK:-20}" \
  RF_EXPLAIN_MIN_SAMPLES="${RF_EXPLAIN_MIN_SAMPLES:-20}" \
  RF_EXPLAIN_COUNTERFACTUAL_ENABLE="${RF_EXPLAIN_COUNTERFACTUAL_ENABLE:-1}" \
  RF_EXPLAIN_COUNTERFACTUAL_TOPK="${RF_EXPLAIN_COUNTERFACTUAL_TOPK:-5}" \
  RF_EXPLAIN_COUNTERFACTUAL_MAX_EVALS="${RF_EXPLAIN_COUNTERFACTUAL_MAX_EVALS:-20}" \
  RF_EXPLAIN_COUNTERFACTUAL_SPLIT="${RF_EXPLAIN_COUNTERFACTUAL_SPLIT:-selection}" \
  python -u run_multi_seed.py \
    --name feature_lite \
    --seed-start "$SEED_START" \
    --seed-count "$SEED_COUNT" \
    --split-seed-offset "$SPLIT_SEED_OFFSET" \
    --tag "$RUN_TAG" \
    --continue-on-error
RUN_STATUS=$?
printf '# run_multi_seed_exit: %s\n' "$RUN_STATUS"

BATCH_MANIFEST=$(ls -t "results/manifests/"*"feature_lite_multiseed_${RUN_TAG}.json" 2>/dev/null | head -n 1 || true)
printf '# batch_manifest: %s\n' "$BATCH_MANIFEST"
if [[ -n "$BATCH_MANIFEST" ]]; then
  python scripts/aggregate_rf_importance_ci.py \
    --batch-manifest "$BATCH_MANIFEST" \
    --output-prefix "results/reports/${RUN_TAG}_rf_importance_ci" \
    --topk "$TOPK"
  AGG_STATUS=$?
else
  printf '# aggregate_skipped: batch manifest not found\n'
  AGG_STATUS=2
fi
printf '# aggregate_exit: %s\n' "$AGG_STATUS"
printf '# finished_at: %s\n' "$(date --iso-8601=seconds)"

exit "$RUN_STATUS"
