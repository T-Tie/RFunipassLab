"""路径常量集中定义，便于实验和论文复现时统一定位文件。"""

from pathlib import Path

LAB_ROOT = Path(__file__).resolve().parents[1]
WORKSPACE_ROOT = LAB_ROOT.parent
REFERENCE_PROJECT_DIR = WORKSPACE_ROOT / "RFunipass"
DEFAULT_DATA_DIR = LAB_ROOT / "data"
