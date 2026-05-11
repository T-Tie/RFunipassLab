#!/usr/bin/env bash
set -uo pipefail

cd /root/exp/RFunipassLab
python scripts/cost_parity/run_perprogram_budget_sweep.py "$@"
