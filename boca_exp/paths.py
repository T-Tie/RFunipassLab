"""路径常量集中定义，便于实验和论文复现时统一定位文件。"""

from __future__ import annotations

from pathlib import Path

LAB_ROOT = Path(__file__).resolve().parents[1]
WORKSPACE_ROOT = LAB_ROOT.parent
REFERENCE_PROJECT_DIR = WORKSPACE_ROOT / 'RFunipass'
DEFAULT_DATA_DIR = LAB_ROOT / 'data'
RESULTS_DIR = LAB_ROOT / 'results'
INSTRCOUNT_RESULTS_DIR = RESULTS_DIR / 'instrcount'
RUNTIME_RESULTS_DIR = RESULTS_DIR / 'runtime'
BINARY_SIZE_RESULTS_DIR = RESULTS_DIR / 'binary_size'
INTERPRETABILITY_RESULTS_DIR = RESULTS_DIR / 'interpretability'
INSTRCOUNT_SUMMARIES_DIR = INSTRCOUNT_RESULTS_DIR / 'summaries'
RUNTIME_SUMMARIES_DIR = RUNTIME_RESULTS_DIR / 'summaries'
RUNTIME_MANIFESTS_DIR = RUNTIME_RESULTS_DIR / 'manifests'
RUNTIME_CACHE_DIR = RUNTIME_RESULTS_DIR / 'cache'
BINARY_SIZE_CACHE_DIR = BINARY_SIZE_RESULTS_DIR / 'cache'


def normalize_objective_kind(objective_kind: str) -> str:
    resolved = (objective_kind or 'instrcount').strip().lower()
    if resolved not in {'instrcount', 'runtime'}:
        raise ValueError(f'Unsupported objective kind: {objective_kind!r}')
    return resolved



def objective_results_dir(objective_kind: str) -> Path:
    resolved = normalize_objective_kind(objective_kind)
    return RUNTIME_RESULTS_DIR if resolved == 'runtime' else INSTRCOUNT_RESULTS_DIR



def objective_summary_dir(objective_kind: str) -> Path:
    resolved = normalize_objective_kind(objective_kind)
    return RUNTIME_SUMMARIES_DIR if resolved == 'runtime' else INSTRCOUNT_SUMMARIES_DIR



def default_result_json_path(objective_kind: str, run_id: str) -> Path:
    return objective_summary_dir(objective_kind) / f'{run_id}.json'



def default_runtime_manifest_path() -> Path:
    return RUNTIME_MANIFESTS_DIR / 'runtime_manifest.json'



def ensure_results_layout() -> None:
    for path in (
        RESULTS_DIR,
        INSTRCOUNT_RESULTS_DIR,
        RUNTIME_RESULTS_DIR,
        BINARY_SIZE_RESULTS_DIR,
        INTERPRETABILITY_RESULTS_DIR,
        INSTRCOUNT_SUMMARIES_DIR,
        RUNTIME_SUMMARIES_DIR,
        RUNTIME_MANIFESTS_DIR,
        RUNTIME_CACHE_DIR,
        BINARY_SIZE_CACHE_DIR,
    ):
        path.mkdir(parents=True, exist_ok=True)
