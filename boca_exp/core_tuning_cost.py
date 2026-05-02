"""Core tuning-cost accounting for paper-facing reports.

This module intentionally tracks only high-level autotuning costs. It does not
break time down into LLVM opt/autophase/compile phases, because those details
are implementation diagnostics rather than the paper's search-cost metric.
"""

from __future__ import annotations

import csv
import time
from contextlib import contextmanager
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any, Iterator, Optional


_ACTIVE_RECORDER: Optional["CoreTuningCostRecorder"] = None


@dataclass
class CoreTuningCostRecorder:
    """Accumulates the minimal tuning-cost metrics used in paper tables."""

    method: str
    tuning_type: str
    program_count: int
    target_program_count: int = 0
    metadata: dict[str, Any] = field(default_factory=dict)
    total_tuning_time_s: float = 0.0
    ml_time_s: float = 0.0
    candidate_sequence_count: int = 0
    objective_eval_count: int = 0
    target_feedback_eval_count: int = 0
    _started_at: float | None = field(default=None, init=False, repr=False)

    def start(self) -> None:
        if self._started_at is None:
            self._started_at = time.perf_counter()

    def stop(self) -> None:
        if self._started_at is None:
            return
        self.total_tuning_time_s += time.perf_counter() - self._started_at
        self._started_at = None

    @contextmanager
    def ml_phase(self) -> Iterator[None]:
        started = time.perf_counter()
        try:
            yield
        finally:
            self.ml_time_s += time.perf_counter() - started

    def record_candidate_sequence(self, count: int = 1) -> None:
        if count > 0:
            self.candidate_sequence_count += int(count)

    def record_objective_eval(self, program_count: int) -> None:
        if program_count > 0:
            self.objective_eval_count += int(program_count)

    def to_row(self) -> dict[str, Any]:
        row = {
            "method": self.method,
            "tuning_type": self.tuning_type,
            "program_count": int(self.program_count),
            "target_program_count": int(self.target_program_count),
            "total_tuning_time_s": round(float(self.total_tuning_time_s), 6),
            "ml_time_s": round(float(self.ml_time_s), 6),
            "candidate_sequence_count": int(self.candidate_sequence_count),
            "objective_eval_count": int(self.objective_eval_count),
            "target_feedback_eval_count": int(self.target_feedback_eval_count),
        }
        row.update(self.metadata)
        return row


def set_active_core_tuning_cost(recorder: CoreTuningCostRecorder | None) -> None:
    global _ACTIVE_RECORDER
    _ACTIVE_RECORDER = recorder


def get_active_core_tuning_cost() -> CoreTuningCostRecorder | None:
    return _ACTIVE_RECORDER


def record_candidate_sequence(count: int = 1) -> None:
    recorder = get_active_core_tuning_cost()
    if recorder is not None:
        recorder.record_candidate_sequence(count)


def record_objective_eval(program_count: int) -> None:
    recorder = get_active_core_tuning_cost()
    if recorder is not None:
        recorder.record_objective_eval(program_count)


@contextmanager
def ml_phase() -> Iterator[None]:
    recorder = get_active_core_tuning_cost()
    if recorder is None:
        yield
        return
    with recorder.ml_phase():
        yield


def write_core_tuning_cost_json(path: Path, row: dict[str, Any]) -> None:
    import json

    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(row, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")


def write_core_tuning_cost_csv(path: Path, row: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", newline="", encoding="utf-8") as csv_file:
        writer = csv.DictWriter(csv_file, fieldnames=list(row.keys()))
        writer.writeheader()
        writer.writerow(row)
