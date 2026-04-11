"""共享的 pass 词表与协同图状态。"""

from __future__ import annotations

all_passes: list[str] = []
pass_to_idx: dict[str, int] = {}
synergy_graph: dict[str, set[str]] = {}
synergy_edges: list[tuple[str, str]] = []
synergy_self: set[str] = set()


def reset_state() -> None:
    """清空共享状态，便于后续做不同数据集/消融实验时重复初始化。"""
    all_passes.clear()
    pass_to_idx.clear()
    synergy_graph.clear()
    synergy_edges.clear()
    synergy_self.clear()
