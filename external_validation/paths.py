from __future__ import annotations

from pathlib import Path


LAB_ROOT = Path(__file__).resolve().parent.parent
EXTERNAL_ROOT = LAB_ROOT / "external_datasets"
SOURCES_DIR = EXTERNAL_ROOT / "sources"
UPSTREAM_CACHE_DIR = EXTERNAL_ROOT / "upstream_cache"
IR_DIR = EXTERNAL_ROOT / "ir"
BUILD_DIR = EXTERNAL_ROOT / "build"
MANIFESTS_DIR = EXTERNAL_ROOT / "manifests"
REPORTS_DIR = EXTERNAL_ROOT / "reports"


def ensure_layout() -> None:
    for path in (
        EXTERNAL_ROOT,
        SOURCES_DIR,
        UPSTREAM_CACHE_DIR,
        IR_DIR,
        BUILD_DIR,
        MANIFESTS_DIR,
        REPORTS_DIR,
    ):
        path.mkdir(parents=True, exist_ok=True)

