# /// script
# requires-python = ">=3.14"
# dependencies = ["numpy", "scikit-learn"]
# ///

"""RFunipassLab 的薄入口壳。

真实实验逻辑已经按职责拆到 `boca_exp/` 目录：
- `settings.py`：超参数
- `data.py`：数据/状态初始化
- `objective.py`：多目标指标
- `operators.py` / `search.py`：GA + BO 搜索
- `selection.py`：最终选择与消融
- `runner.py`：实验主流程

这样做的目标，是让后续论文写作、消融实验和定向替换模块时更轻松。
"""

from boca_exp.runner import cli_main, main

__all__ = ["cli_main", "main"]


if __name__ == '__main__':
    raise SystemExit(cli_main())
