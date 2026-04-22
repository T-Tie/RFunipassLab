from __future__ import annotations

import json
import math
import shlex
import shutil
import statistics
import subprocess
import threading
import time
from concurrent.futures import ThreadPoolExecutor
from dataclasses import asdict, dataclass
from pathlib import Path
from typing import Any, Dict, Iterable, List, Sequence

from boca_exp.objective_common import compose_metrics
from boca_exp.objective_instr import InstructionCountBackend
from boca_exp.runtime import detect_target_triple, fix_loop_nesting, get_inst_count, normalize_pass_sequence
from boca_exp.settings import llvm_tools_path

from .paths import BUILD_DIR, IR_DIR, MANIFESTS_DIR, REPORTS_DIR, SOURCES_DIR, UPSTREAM_CACHE_DIR, ensure_layout
from .registry import (
    CompileSpec,
    benchmark_filter_map,
    build_suite_specs,
    dataset_upstreams,
    parse_cbench_dataset,
    rewrite_cbench_command,
    suite_names,
)


LOCAL_BOCA_ROOT = Path("/root/projects/BOCA")
LOCAL_CSMITH_RUNTIME = Path("/root/projects/datasets/csmith/runtime")
DEFAULT_IR_FRONTEND_MODE = "canonical"
DEFAULT_INSTRCOUNT_TIMEOUT = 60.0
DEFAULT_INSTRCOUNT_MAX_WORKERS = 4


@dataclass
class RatioSummary:
    count: int
    mean_ratio: float | None
    median_ratio: float | None
    improved: int
    tied: int
    worsened: int


def _timestamp() -> str:
    return time.strftime("%Y%m%d_%H%M%S")


def _tool_bin(tool: str) -> str:
    candidate = Path(llvm_tools_path) / tool
    if candidate.is_file():
        return str(candidate)
    return tool


def _frontend_ir_compile_prefix(mode: str) -> list[str]:
    normalized = (mode or DEFAULT_IR_FRONTEND_MODE).strip().lower()
    if normalized == "canonical":
        # Use O1 to enable frontend canonicalization and metadata generation,
        # but disable LLVM optimization passes so the universal pass sequence
        # still sees largely unoptimized IR.
        return ["-O1", "-Xclang", "-disable-llvm-passes"]
    if normalized == "raw":
        # Keep IR close to source form while removing O0's `optnone`, which
        # would otherwise block many opt passes during instrcount validation.
        return ["-O0", "-Xclang", "-disable-O0-optnone"]
    raise ValueError(
        f"unsupported IR frontend mode: {mode!r}; expected 'canonical' or 'raw'"
    )


def _run_checked(command: Sequence[str], cwd: Path | None = None) -> None:
    completed = subprocess.run(
        list(command),
        cwd=str(cwd) if cwd else None,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
        check=False,
    )
    if completed.returncode != 0:
        raise RuntimeError(
            "command failed\n"
            f"cwd: {cwd or Path.cwd()}\n"
            f"command: {' '.join(command)}\n"
            f"returncode: {completed.returncode}\n"
            f"stdout:\n{completed.stdout}\n"
            f"stderr:\n{completed.stderr}"
        )


def _run_and_measure(
    command: Sequence[str] | str,
    cwd: Path,
    timeout: float,
    stdout_path: Path,
    stderr_path: Path,
    *,
    shell: bool = False,
) -> float:
    start = time.perf_counter()
    with stdout_path.open("w", encoding="utf-8") as stdout_file, stderr_path.open(
        "w", encoding="utf-8"
    ) as stderr_file:
        completed = subprocess.run(
            command,
            cwd=str(cwd),
            timeout=timeout,
            stdout=stdout_file,
            stderr=stderr_file,
            shell=shell,
            executable="/bin/bash" if shell else None,
            check=False,
        )
    elapsed = time.perf_counter() - start
    if completed.returncode != 0:
        cmd_text = command if isinstance(command, str) else " ".join(command)
        raise RuntimeError(
            "benchmark execution failed\n"
            f"cwd: {cwd}\n"
            f"command: {cmd_text}\n"
            f"returncode: {completed.returncode}\n"
            f"stdout: {stdout_path}\n"
            f"stderr: {stderr_path}"
        )
    return elapsed


def _safe_copytree(src: Path, dst: Path) -> None:
    if dst.exists():
        shutil.rmtree(dst)
    shutil.copytree(src, dst)


def _resolve_boca_root() -> tuple[Path, str]:
    if LOCAL_BOCA_ROOT.is_dir():
        return LOCAL_BOCA_ROOT, "local:/root/projects/BOCA"

    cloned_root = UPSTREAM_CACHE_DIR / "BOCA"
    if not cloned_root.is_dir():
        _run_checked(
            [
                "git",
                "clone",
                "--depth",
                "1",
                dataset_upstreams()["boca_repo"]["url"],
                str(cloned_root),
            ]
        )
    return cloned_root, dataset_upstreams()["boca_repo"]["url"]


def _resolve_csmith_runtime_root() -> tuple[Path, str]:
    if LOCAL_CSMITH_RUNTIME.is_dir():
        return LOCAL_CSMITH_RUNTIME, "local:/root/projects/datasets/csmith/runtime"

    cloned_root = UPSTREAM_CACHE_DIR / "csmith"
    if not cloned_root.is_dir():
        _run_checked(
            [
                "git",
                "clone",
                "--depth",
                "1",
                dataset_upstreams()["csmith_runtime"]["url"],
                str(cloned_root),
            ]
        )
    runtime_dir = cloned_root / "runtime"
    if not runtime_dir.is_dir():
        raise FileNotFoundError(f"missing runtime/ in cloned csmith repository: {cloned_root}")
    return runtime_dir, dataset_upstreams()["csmith_runtime"]["url"]


def sync_external_sources(
    selected_suites: Sequence[str] | None = None,
    exclude_suites: Sequence[str] | None = None,
    *,
    force: bool = False,
) -> dict[str, Any]:
    ensure_layout()
    suites = suite_names(selected_suites, exclude_suites)
    boca_root, boca_origin = _resolve_boca_root()
    csmith_runtime_root, csmith_origin = _resolve_csmith_runtime_root()

    copied: dict[str, Any] = {}
    if "cbench" in suites:
        dst_root = SOURCES_DIR / "cbench"
        if force and dst_root.exists():
            shutil.rmtree(dst_root)
        dst_root.mkdir(parents=True, exist_ok=True)
        for name in (
            "consumer_jpeg_c",
            "security_sha",
            "automotive_bitcount",
            "automotive_susan_e",
            "automotive_susan_c",
            "automotive_susan_s",
            "bzip2e",
            "consumer_tiff2rgba",
            "telecom_adpcm_c",
            "office_rsynth",
        ):
            src_dir = boca_root / "cbench" / name
            dst_dir = dst_root / name
            if force or not dst_dir.exists():
                _safe_copytree(src_dir, dst_dir)
        for data_dir_name in (
            "automotive_qsort_data",
            "automotive_susan_data",
            "bzip2_data",
            "consumer_data",
            "consumer_jpeg_data",
            "consumer_tiff_data",
            "office_data",
            "telecom_data",
        ):
            src_dir = boca_root / "cbench" / data_dir_name
            dst_dir = dst_root / data_dir_name
            if src_dir.is_dir() and (force or not dst_dir.exists()):
                _safe_copytree(src_dir, dst_dir)
        copied["cbench"] = {"origin": boca_origin, "source_root": str(dst_root)}

    if "polybench" in suites:
        poly_root = SOURCES_DIR / "polybench"
        if force and poly_root.exists():
            shutil.rmtree(poly_root)
        (poly_root / "utilities").mkdir(parents=True, exist_ok=True)
        utilities_src = boca_root / "polybench" / "utilities"
        if force or not (poly_root / "utilities").exists() or not any((poly_root / "utilities").iterdir()):
            _safe_copytree(utilities_src, poly_root / "utilities")
        for relpath in (
            "polybench/linear-algebra/kernels/2mm",
            "polybench/linear-algebra/kernels/3mm",
            "polybench/linear-algebra/solvers/cholesky",
            "polybench/linear-algebra/solvers/lu",
            "polybench/linear-algebra/blas/symm",
            "polybench/stencils/jacobi-2d",
            "polybench/stencils/heat-3d",
            "polybench/medley/nussinov",
            "polybench/datamining/correlation",
            "polybench/datamining/covariance",
        ):
            src_dir = boca_root / relpath
            dst_dir = SOURCES_DIR / relpath
            if force or not dst_dir.exists():
                _safe_copytree(src_dir, dst_dir)
        copied["polybench"] = {"origin": boca_origin, "source_root": str(poly_root)}

    if "csmith" in suites:
        csmith_root = SOURCES_DIR / "csmith"
        if force and csmith_root.exists():
            shutil.rmtree(csmith_root)
        csmith_root.mkdir(parents=True, exist_ok=True)
        for index in range(1, 6):
            src_file = boca_root / "Csmith" / f"trainprogram{index}.c"
            dst_file = csmith_root / src_file.name
            if force or not dst_file.is_file():
                shutil.copy2(src_file, dst_file)
        runtime_root = SOURCES_DIR / "csmith_runtime"
        if force or not runtime_root.is_dir():
            if runtime_root.exists():
                shutil.rmtree(runtime_root)
            _safe_copytree(csmith_runtime_root, runtime_root)
        copied["csmith"] = {
            "origin": boca_origin,
            "source_root": str(csmith_root),
            "runtime_origin": csmith_origin,
            "runtime_root": str(runtime_root),
        }

    manifest = {
        "generated_at": time.strftime("%Y-%m-%d %H:%M:%S"),
        "suites": suites,
        "copied": copied,
    }
    manifest_path = MANIFESTS_DIR / "external_source_sync.json"
    manifest_path.write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    manifest["manifest_path"] = str(manifest_path)
    return manifest


def _compile_to_linked_ir(spec: CompileSpec, output_dir: Path, frontend_mode: str) -> str:
    build_dir = output_dir / spec.suite / spec.name
    if build_dir.exists():
        shutil.rmtree(build_dir)
    build_dir.mkdir(parents=True, exist_ok=True)

    clang_bin = _tool_bin("clang")
    llvm_link_bin = _tool_bin("llvm-link")
    llvm_dis_bin = _tool_bin("llvm-dis")
    compile_prefix = _frontend_ir_compile_prefix(frontend_mode)

    include_flags = [flag for inc in spec.include_dirs for flag in ("-I", str(inc))]
    define_flags = [f"-D{macro}" for macro in spec.compile_defines]

    bitcodes: list[Path] = []
    for index, source_file in enumerate(spec.source_files):
        bitcode_path = build_dir / f"{index:02d}_{source_file.stem}.bc"
        command = [
            clang_bin,
            *compile_prefix,
            *spec.compile_flags,
            "-emit-llvm",
            *define_flags,
            *include_flags,
            "-c",
            str(source_file),
            "-o",
            str(bitcode_path),
        ]
        _run_checked(command, cwd=build_dir)
        bitcodes.append(bitcode_path)

    linked_bc = build_dir / f"{spec.name}.linked.bc"
    linked_ll = (IR_DIR / spec.suite / f"{spec.name}.ll").resolve()
    linked_ll.parent.mkdir(parents=True, exist_ok=True)
    _run_checked([llvm_link_bin, *(str(path) for path in bitcodes), "-o", str(linked_bc)], cwd=build_dir)
    _run_checked([llvm_dis_bin, str(linked_bc), "-o", str(linked_ll)], cwd=build_dir)
    return str(linked_ll)


def _load_existing_ir_records() -> dict[tuple[str, str], dict[str, Any]]:
    manifest_path = MANIFESTS_DIR / "external_ir_manifest.json"
    if not manifest_path.is_file():
        return {}
    try:
        payload = json.loads(manifest_path.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError):
        return {}

    raw_records = payload.get("records")
    if not isinstance(raw_records, dict):
        return {}

    records: dict[tuple[str, str], dict[str, Any]] = {}
    for suite, suite_records in raw_records.items():
        if not isinstance(suite_records, list):
            continue
        for record in suite_records:
            if not isinstance(record, dict):
                continue
            name = record.get("name")
            if isinstance(name, str):
                records[(suite, name)] = record
    return records


def build_external_ir(
    selected_suites: Sequence[str] | None = None,
    exclude_suites: Sequence[str] | None = None,
    *,
    benchmarks: Sequence[str] | None = None,
    dataset_id: int = 1,
    force_sync: bool = False,
    force_rebuild: bool = False,
    frontend_mode: str = DEFAULT_IR_FRONTEND_MODE,
) -> dict[str, Any]:
    ensure_layout()
    suites = suite_names(selected_suites, exclude_suites)
    sync_external_sources(suites, force=force_sync)
    runtime_root = SOURCES_DIR / "csmith_runtime"
    build_output = BUILD_DIR / "ir_build"
    benchmark_map = benchmark_filter_map(suites, benchmarks)
    existing_records = _load_existing_ir_records()

    records: dict[str, Any] = {}
    for suite in suites:
        specs = build_suite_specs(
            suite,
            source_root=SOURCES_DIR,
            runtime_root=runtime_root,
            selected_names=benchmark_map[suite],
            dataset_id=dataset_id,
        )
        suite_records: list[dict[str, Any]] = []
        for spec in specs:
            ll_path = (IR_DIR / spec.suite / f"{spec.name}.ll").resolve()
            existing_record = existing_records.get((spec.suite, spec.name))
            recorded_ll = None
            if isinstance(existing_record, dict) and existing_record.get("ll_path"):
                recorded_ll = Path(existing_record["ll_path"]).resolve()
            can_reuse = (
                not force_rebuild
                and ll_path.is_file()
                and isinstance(existing_record, dict)
                and existing_record.get("frontend_mode") == frontend_mode
                and recorded_ll == ll_path
            )
            if not can_reuse:
                ll_path_str = _compile_to_linked_ir(spec, build_output, frontend_mode)
            else:
                ll_path_str = str(ll_path)
            suite_records.append(
                {
                    "suite": spec.suite,
                    "name": spec.name,
                    "ll_path": ll_path_str,
                    "source_files": [str(path) for path in spec.source_files],
                    "frontend_mode": frontend_mode,
                }
            )
        records[suite] = suite_records

    manifest = {
        "generated_at": time.strftime("%Y-%m-%d %H:%M:%S"),
        "suites": suites,
        "frontend_mode": frontend_mode,
        "records": records,
    }
    manifest_path = MANIFESTS_DIR / "external_ir_manifest.json"
    manifest_path.write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    manifest["manifest_path"] = str(manifest_path)
    return manifest


def load_sequence_from_result(
    result_json_path: str | Path | None,
    *,
    sequence_text: str | None = None,
) -> dict[str, Any]:
    if sequence_text:
        sequence = normalize_pass_sequence(sequence_text)
        return {
            "sequence": sequence,
            "sequence_source": "inline",
            "source_payload": {"sequence_text": sequence_text},
        }

    if result_json_path is None:
        raise ValueError("either result_json_path or sequence_text must be provided")

    payload = json.loads(Path(result_json_path).read_text(encoding="utf-8"))
    sequence = None
    if isinstance(payload.get("best_result"), dict):
        sequence = payload["best_result"].get("final_sequence")
    if sequence is None:
        sequence = payload.get("final_sequence")
    if sequence is None:
        raise KeyError(f"cannot find final_sequence in {result_json_path}")

    return {
        "sequence": normalize_pass_sequence(sequence),
        "sequence_source": str(Path(result_json_path).resolve()),
        "source_payload": {
            "objective_kind": payload.get("objective_kind"),
            "tuning_csv": payload.get("tuning_csv"),
            "selection_split": payload.get("best_result", {}).get("selection_split")
            if isinstance(payload.get("best_result"), dict) else None,
        },
    }


def sequence_to_pipeline(sequence: Sequence[str] | str | None) -> str:
    sequence_list = normalize_pass_sequence(sequence)
    if not sequence_list:
        return ""
    if len(sequence_list) == 1 and sequence_list[0] in {"-Oz", "-O3", "default<Oz>", "default<O3>"}:
        return sequence_list[0]
    return fix_loop_nesting(",".join(sequence_list))


def _ratio_summary(
    better_values: Sequence[float],
    baseline_values: Sequence[float],
    *,
    tolerance: float = 1e-12,
) -> RatioSummary:
    ratios: list[float] = []
    improved = tied = worsened = 0
    for better, baseline in zip(better_values, baseline_values):
        if not math.isfinite(float(better)) or not math.isfinite(float(baseline)) or baseline <= 0:
            ratio = float("inf")
        else:
            ratio = float(better) / float(baseline)
        ratios.append(ratio)
        if math.isfinite(float(better)) and math.isfinite(float(baseline)) and better < baseline - tolerance:
            improved += 1
        elif math.isfinite(float(better)) and math.isfinite(float(baseline)) and abs(better - baseline) <= tolerance:
            tied += 1
        else:
            worsened += 1
    return RatioSummary(
        count=len(ratios),
        mean_ratio=float(statistics.fmean(ratios)) if ratios else None,
        median_ratio=float(statistics.median(ratios)) if ratios else None,
        improved=improved,
        tied=tied,
        worsened=worsened,
    )


def _as_ratio_dict(summary: RatioSummary) -> dict[str, Any]:
    return asdict(summary)


def _safe_ratio_value(numerator: float, denominator: float) -> float:
    if not math.isfinite(float(numerator)) or not math.isfinite(float(denominator)) or denominator <= 0:
        return float("inf")
    return float(numerator) / float(denominator)


def _format_opt_failure(
    cmd_opt: Sequence[str],
    pipeline: str,
    resolved_target_triple: str | None,
    *,
    returncode: int,
    stdout_text: str,
    stderr_text: str,
) -> str:
    detail = (stderr_text or "").strip() or (stdout_text or "").strip() or "<no stdout/stderr captured>"
    detail_lines = "\n".join(detail.splitlines()[:20])
    return (
        f"opt failed for pipeline={pipeline!r}, "
        f"target_triple={resolved_target_triple or '<not found>'}, "
        f"returncode={returncode}, cmd={' '.join(cmd_opt)}\n"
        f"{detail_lines}"
    )


def _transform_ir_for_instrcount(
    ir_code: str,
    pass_sequence: Sequence[str],
    *,
    opt_timeout: float,
) -> str:
    sequence_list = normalize_pass_sequence(pass_sequence)
    if not sequence_list:
        return ir_code

    pipeline = ",".join(sequence_list)
    resolved_target_triple = detect_target_triple(ir_code)
    if pipeline not in {"default<Oz>", "default<O3>", "-Oz", "-O3"}:
        pipeline = fix_loop_nesting(pipeline)

    opt_bin = _tool_bin("opt")
    if pipeline in {"default<Oz>", "-Oz"}:
        cmd_opt = [opt_bin, "-Oz", "-S"]
    elif pipeline in {"default<O3>", "-O3"}:
        cmd_opt = [opt_bin, "-O3", "-S"]
    else:
        cmd_opt = [opt_bin, "-S", f"-passes={pipeline}"]
    if resolved_target_triple:
        cmd_opt.append(f"--mtriple={resolved_target_triple}")

    try:
        result = subprocess.run(
            cmd_opt,
            input=ir_code,
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            check=False,
            timeout=opt_timeout,
        )
    except subprocess.TimeoutExpired as exc:
        raise TimeoutError(
            f"opt timed out after {opt_timeout:.1f}s for pipeline={pipeline!r}, "
            f"target_triple={resolved_target_triple or '<not found>'}, cmd={' '.join(cmd_opt)}"
        ) from exc

    if result.returncode != 0:
        raise RuntimeError(
            _format_opt_failure(
                cmd_opt,
                pipeline,
                resolved_target_triple,
                returncode=result.returncode,
                stdout_text=result.stdout,
                stderr_text=result.stderr,
            )
        )
    return result.stdout


def _safe_count_program(
    backend: InstructionCountBackend,
    program: str,
    pass_sequence: Sequence[str],
    *,
    opt_timeout: float,
    value_cache: dict[tuple[str, tuple[str, ...]], dict[str, Any]],
    cache_lock: threading.Lock,
) -> dict[str, Any]:
    key = (program, tuple(normalize_pass_sequence(pass_sequence)))
    with cache_lock:
        cached = value_cache.get(key)
    if cached is not None:
        return cached

    ir_text = backend._load_program_text(program)
    try:
        optimized_ir = _transform_ir_for_instrcount(
            ir_text,
            pass_sequence,
            opt_timeout=opt_timeout,
        )
        result = {"value": float(get_inst_count(optimized_ir)), "status": "ok"}
    except Exception as exc:
        result = {"value": float("inf"), "status": str(exc)}
    with cache_lock:
        value_cache[key] = result
    return result


def _count_programs_safe(
    backend: InstructionCountBackend,
    programs: Sequence[str],
    pass_sequence: Sequence[str],
    *,
    opt_timeout: float,
    max_workers: int,
    value_cache: dict[tuple[str, tuple[str, ...]], dict[str, Any]],
    cache_lock: threading.Lock,
) -> list[dict[str, Any]]:
    if not programs:
        return []
    worker_count = max(1, min(int(max_workers), len(programs)))
    with ThreadPoolExecutor(max_workers=worker_count) as executor:
        return list(
            executor.map(
                lambda program: _safe_count_program(
                    backend,
                    program,
                    pass_sequence,
                    opt_timeout=opt_timeout,
                    value_cache=value_cache,
                    cache_lock=cache_lock,
                ),
                programs,
            )
        )


def _compose_instrcount_metrics(
    programs: Sequence[str],
    baseline_results: Sequence[dict[str, Any]],
    sequence_results: Sequence[dict[str, Any]],
    pass_sequence: Sequence[str],
    *,
    max_seq_len: int,
    worsen_weight: float,
) -> dict[str, Any]:
    if not programs:
        return compose_metrics(
            [],
            pass_sequence,
            [],
            0,
            0,
            0,
            {},
            0,
            high_variance=0,
            max_seq_len=max_seq_len,
            worsen_weight=worsen_weight,
        )

    ratios: list[float] = []
    improved = tied = worsened = invalid = 0
    per_program: dict[str, Any] = {}

    for program, baseline_result, sequence_result in zip(programs, baseline_results, sequence_results):
        baseline_value = float(baseline_result["value"])
        sequence_value = float(sequence_result["value"])
        baseline_status = baseline_result["status"]
        sequence_status = sequence_result["status"]

        if (
            baseline_status != "ok"
            or sequence_status != "ok"
            or not math.isfinite(baseline_value)
            or not math.isfinite(sequence_value)
            or baseline_value <= 0
        ):
            invalid += 1
            worsened += 1
            per_program[program] = {
                "ratio": float("inf"),
                "raw_value": sequence_value,
                "status": sequence_status if sequence_status != "ok" else baseline_status,
                "variance_pct": 0.0,
            }
            continue

        ratio = sequence_value / baseline_value
        ratios.append(float(ratio))
        if sequence_value < baseline_value:
            improved += 1
        elif sequence_value == baseline_value:
            tied += 1
        else:
            worsened += 1

        per_program[program] = {
            "ratio": float(ratio),
            "raw_value": float(sequence_value),
            "status": "ok",
            "variance_pct": 0.0,
        }

    return compose_metrics(
        programs,
        pass_sequence,
        ratios,
        improved,
        tied,
        worsened,
        per_program,
        invalid,
        high_variance=0,
        max_seq_len=max_seq_len,
        worsen_weight=worsen_weight,
    )


def _compile_pipeline_to_binary(spec: CompileSpec, pass_pipeline: str, output_root: Path) -> dict[str, Any]:
    build_dir = (output_root / spec.suite / spec.name / "build").resolve()
    run_root = (output_root / spec.suite / spec.name / "runs").resolve()
    if build_dir.exists():
        shutil.rmtree(build_dir)
    if run_root.exists():
        shutil.rmtree(run_root)
    build_dir.mkdir(parents=True, exist_ok=True)
    run_root.mkdir(parents=True, exist_ok=True)

    include_flags = [flag for include_dir in spec.include_dirs for flag in ("-I", str(include_dir))]
    define_flags = [f"-D{macro}" for macro in spec.compile_defines]

    clang_bin = _tool_bin("clang")
    opt_bin = _tool_bin("opt")
    llc_bin = _tool_bin("llc")

    object_files: list[Path] = []
    started = time.perf_counter()
    for index, source_file in enumerate(spec.source_files):
        stem = f"{index:02d}_{source_file.stem}"
        bitcode_path = build_dir / f"{stem}.bc"
        optimized_path = build_dir / f"{stem}.opt.bc"
        object_path = build_dir / f"{stem}.o"

        _run_checked(
            [
                clang_bin,
                "-O0",
                *spec.compile_flags,
                "-emit-llvm",
                *define_flags,
                *include_flags,
                "-c",
                str(source_file),
                "-o",
                str(bitcode_path),
            ],
            cwd=build_dir,
        )

        if not pass_pipeline:
            shutil.copy2(bitcode_path, optimized_path)
        elif pass_pipeline in {"default<Oz>", "-Oz"}:
            _run_checked([opt_bin, "-Oz", str(bitcode_path), "-o", str(optimized_path)], cwd=build_dir)
        elif pass_pipeline in {"default<O3>", "-O3"}:
            _run_checked([opt_bin, "-O3", str(bitcode_path), "-o", str(optimized_path)], cwd=build_dir)
        else:
            _run_checked(
                [opt_bin, f"-passes={pass_pipeline}", str(bitcode_path), "-o", str(optimized_path)],
                cwd=build_dir,
            )

        _run_checked(
            [
                llc_bin,
                "-O2",
                "-relocation-model=pic",
                "-filetype=obj",
                str(optimized_path),
                "-o",
                str(object_path),
            ],
            cwd=build_dir,
        )
        object_files.append(object_path)

    binary_path = build_dir / "a.out"
    _run_checked(
        [
            clang_bin,
            "-fPIE",
            "-pie",
            *(str(path) for path in object_files),
            "-lm",
            "-o",
            str(binary_path),
        ],
        cwd=build_dir,
    )

    return {
        "suite": spec.suite,
        "name": spec.name,
        "binary_path": str(binary_path),
        "run_root": str(run_root),
        "source_dir": str(spec.source_dir),
        "dataset_id": spec.dataset_id,
        "build_seconds": time.perf_counter() - started,
    }


def _run_plain_binary(binary_path: Path, run_root: Path, repeat: int, timeout: float) -> list[float]:
    timings: list[float] = []
    for run_index in range(repeat):
        run_dir = run_root / f"run_{run_index + 1:02d}"
        if run_dir.exists():
            shutil.rmtree(run_dir)
        run_dir.mkdir(parents=True, exist_ok=True)
        timings.append(
            _run_and_measure(
                [str(binary_path)],
                cwd=run_dir,
                timeout=timeout,
                stdout_path=run_dir / "stdout.txt",
                stderr_path=run_dir / "stderr.txt",
            )
        )
    return timings


def _measure_compiled_record(
    record: dict[str, Any],
    *,
    suite: str,
    repeat: int,
    timeout: float,
    source_root: Path,
) -> dict[str, Any]:
    binary_path = Path(record["binary_path"]).resolve()
    run_root = Path(record["run_root"]).resolve()

    if suite == "cbench":
        dataset_id = int(record.get("dataset_id") or 1)
        source_dir = Path(record["source_dir"]).resolve()
        raw_command, loop_wrap = parse_cbench_dataset(source_dir, dataset_id)
        shell_args = rewrite_cbench_command(raw_command, source_dir, source_root)
        timings: list[float] = []
        for run_index in range(repeat):
            run_dir = run_root / f"run_{run_index + 1:02d}"
            if run_dir.exists():
                shutil.rmtree(run_dir)
            run_dir.mkdir(parents=True, exist_ok=True)
            (run_dir / "_finfo_dataset").write_text(loop_wrap + "\n", encoding="utf-8")
            shell_command = shlex.quote(str(binary_path))
            if shell_args:
                shell_command += " " + shell_args
            timings.append(
                _run_and_measure(
                    shell_command,
                    cwd=run_dir,
                    timeout=timeout,
                    stdout_path=run_dir / "stdout.txt",
                    stderr_path=run_dir / "stderr.txt",
                    shell=True,
                )
            )
    else:
        timings = _run_plain_binary(binary_path, run_root, repeat, timeout)

    return {
        "suite": suite,
        "name": record["name"],
        "binary_path": str(binary_path),
        "run_seconds": timings,
        "median_run_seconds": float(statistics.median(timings)),
        "build_seconds": float(record.get("build_seconds", 0.0)),
    }


def evaluate_external_instrcount(
    *,
    sequence: Sequence[str],
    selected_suites: Sequence[str] | None = None,
    exclude_suites: Sequence[str] | None = None,
    benchmarks: Sequence[str] | None = None,
    objective_baseline: str = "oz",
    dataset_id: int = 1,
    force_sync: bool = False,
    force_ir: bool = False,
    frontend_mode: str = DEFAULT_IR_FRONTEND_MODE,
    instrcount_timeout: float = DEFAULT_INSTRCOUNT_TIMEOUT,
    instrcount_workers: int = DEFAULT_INSTRCOUNT_MAX_WORKERS,
) -> dict[str, Any]:
    ensure_layout()
    suites = suite_names(selected_suites, exclude_suites)
    ir_manifest = build_external_ir(
        suites,
        benchmarks=benchmarks,
        dataset_id=dataset_id,
        force_sync=force_sync,
        force_rebuild=force_ir,
        frontend_mode=frontend_mode,
    )
    backend = InstructionCountBackend(objective_baseline=objective_baseline)
    sequence = list(sequence)
    baseline_sequence = [backend.baseline_pipeline]
    value_cache: dict[tuple[str, tuple[str, ...]], dict[str, Any]] = {}
    cache_lock = threading.Lock()

    suite_results: dict[str, Any] = {}
    combined_programs: list[str] = []
    combined_baseline_results: list[dict[str, Any]] = []
    combined_seq_results: list[dict[str, Any]] = []
    combined_seq_values: list[float] = []
    combined_none_values: list[float] = []
    combined_oz_values: list[float] = []
    combined_o3_values: list[float] = []
    for suite in suites:
        program_paths = [entry["ll_path"] for entry in ir_manifest["records"][suite]]
        combined_programs.extend(program_paths)
        baseline_results = _count_programs_safe(
            backend,
            program_paths,
            baseline_sequence,
            opt_timeout=instrcount_timeout,
            max_workers=instrcount_workers,
            value_cache=value_cache,
            cache_lock=cache_lock,
        )
        seq_results = _count_programs_safe(
            backend,
            program_paths,
            sequence,
            opt_timeout=instrcount_timeout,
            max_workers=instrcount_workers,
            value_cache=value_cache,
            cache_lock=cache_lock,
        )
        none_results = _count_programs_safe(
            backend,
            program_paths,
            [],
            opt_timeout=instrcount_timeout,
            max_workers=instrcount_workers,
            value_cache=value_cache,
            cache_lock=cache_lock,
        )
        oz_results = (
            baseline_results
            if backend.baseline_pipeline == "-Oz"
            else _count_programs_safe(
                backend,
                program_paths,
                ["-Oz"],
                opt_timeout=instrcount_timeout,
                max_workers=instrcount_workers,
                value_cache=value_cache,
                cache_lock=cache_lock,
            )
        )
        o3_results = (
            baseline_results
            if backend.baseline_pipeline == "-O3"
            else _count_programs_safe(
                backend,
                program_paths,
                ["-O3"],
                opt_timeout=instrcount_timeout,
                max_workers=instrcount_workers,
                value_cache=value_cache,
                cache_lock=cache_lock,
            )
        )
        metrics = _compose_instrcount_metrics(
            program_paths,
            baseline_results,
            seq_results,
            sequence,
            max_seq_len=backend.max_seq_len,
            worsen_weight=backend.worsen_weight,
        )
        combined_baseline_results.extend(baseline_results)
        combined_seq_results.extend(seq_results)

        seq_values = [entry["value"] for entry in seq_results]
        none_values = [entry["value"] for entry in none_results]
        oz_values = [entry["value"] for entry in oz_results]
        o3_values = [entry["value"] for entry in o3_results]
        combined_seq_values.extend(seq_values)
        combined_none_values.extend(none_values)
        combined_oz_values.extend(oz_values)
        combined_o3_values.extend(o3_values)

        per_program = []
        failures = []
        for entry, seq_result, none_result, oz_result, o3_result in zip(
            ir_manifest["records"][suite],
            seq_results,
            none_results,
            oz_results,
            o3_results,
        ):
            seq_value = float(seq_result["value"])
            none_value = float(none_result["value"])
            oz_value = float(oz_result["value"])
            o3_value = float(o3_result["value"])
            if seq_result["status"] != "ok":
                failures.append(
                    {
                        "suite": suite,
                        "name": entry["name"],
                        "pipeline": "universal",
                        "error": seq_result["status"],
                    }
                )
            if none_result["status"] != "ok":
                failures.append(
                    {
                        "suite": suite,
                        "name": entry["name"],
                        "pipeline": "none",
                        "error": none_result["status"],
                    }
                )
            if oz_result["status"] != "ok":
                failures.append(
                    {
                        "suite": suite,
                        "name": entry["name"],
                        "pipeline": "oz",
                        "error": oz_result["status"],
                    }
                )
            if o3_result["status"] != "ok":
                failures.append(
                    {
                        "suite": suite,
                        "name": entry["name"],
                        "pipeline": "o3",
                        "error": o3_result["status"],
                    }
                )
            per_program.append(
                {
                    "suite": suite,
                    "name": entry["name"],
                    "ll_path": entry["ll_path"],
                    "universal": seq_value,
                    "none": none_value,
                    "oz": oz_value,
                    "o3": o3_value,
                    "universal_status": seq_result["status"],
                    "none_status": none_result["status"],
                    "oz_status": oz_result["status"],
                    "o3_status": o3_result["status"],
                    "ratio_vs_none": _safe_ratio_value(seq_value, none_value),
                    "ratio_vs_oz": _safe_ratio_value(seq_value, oz_value),
                    "ratio_vs_o3": _safe_ratio_value(seq_value, o3_value),
                }
            )

        suite_results[suite] = {
            "count": len(program_paths),
            "selected_names": [entry["name"] for entry in ir_manifest["records"][suite]],
            "primary_metrics": metrics,
            "fixed_baselines": {
                "none": _as_ratio_dict(_ratio_summary(seq_values, none_values)),
                "oz": _as_ratio_dict(_ratio_summary(seq_values, oz_values)),
                "o3": _as_ratio_dict(_ratio_summary(seq_values, o3_values)),
            },
            "per_program": per_program,
            "failures": failures,
        }

    combined_metrics = _compose_instrcount_metrics(
        combined_programs,
        combined_baseline_results,
        combined_seq_results,
        sequence,
        max_seq_len=backend.max_seq_len,
        worsen_weight=backend.worsen_weight,
    )

    return {
        "mode": "instrcount",
        "objective_baseline": objective_baseline,
        "suites": suites,
        "sequence": sequence,
        "frontend_mode": frontend_mode,
        "instrcount_timeout": instrcount_timeout,
        "instrcount_workers": instrcount_workers,
        "ir_manifest_path": ir_manifest["manifest_path"],
        "suite_results": suite_results,
        "combined": {
            "count": len(combined_programs),
            "primary_metrics": combined_metrics,
            "fixed_baselines": {
                "none": _as_ratio_dict(_ratio_summary(combined_seq_values, combined_none_values)),
                "oz": _as_ratio_dict(_ratio_summary(combined_seq_values, combined_oz_values)),
                "o3": _as_ratio_dict(_ratio_summary(combined_seq_values, combined_o3_values)),
            },
        },
    }


def evaluate_external_runtime(
    *,
    sequence: Sequence[str],
    selected_suites: Sequence[str] | None = None,
    exclude_suites: Sequence[str] | None = None,
    benchmarks: Sequence[str] | None = None,
    repeat: int = 1,
    timeout: float = 300.0,
    dataset_id: int = 1,
    force_sync: bool = False,
) -> dict[str, Any]:
    ensure_layout()
    suites = suite_names(selected_suites, exclude_suites)
    sync_external_sources(suites, force=force_sync)
    runtime_root = SOURCES_DIR / "csmith_runtime"
    benchmark_map = benchmark_filter_map(suites, benchmarks)
    universal_pipeline = sequence_to_pipeline(sequence)

    pipeline_defs = {
        "universal": universal_pipeline,
        "none": "",
        "oz": "default<Oz>",
        "o3": "default<O3>",
    }

    suite_results: dict[str, Any] = {}
    combined_universal: list[float] = []
    combined_baselines: dict[str, list[float]] = {"none": [], "oz": [], "o3": []}

    for suite in suites:
        specs = build_suite_specs(
            suite,
            source_root=SOURCES_DIR,
            runtime_root=runtime_root,
            selected_names=benchmark_map[suite],
            dataset_id=dataset_id,
        )

        pipeline_records: dict[str, list[dict[str, Any]]] = {}
        pipeline_results: dict[str, dict[str, Any]] = {}
        failures: list[dict[str, Any]] = []

        for label, pipeline in pipeline_defs.items():
            out_root = BUILD_DIR / "runtime" / suite / label
            compiled_records: list[dict[str, Any]] = []
            measured_records: list[dict[str, Any]] = []
            for spec in specs:
                try:
                    compiled = _compile_pipeline_to_binary(spec, pipeline, out_root)
                    measured = _measure_compiled_record(
                        compiled,
                        suite=suite,
                        repeat=repeat,
                        timeout=timeout,
                        source_root=SOURCES_DIR,
                    )
                    compiled_records.append(compiled)
                    measured_records.append(measured)
                except Exception as exc:
                    failures.append(
                        {
                            "suite": suite,
                            "pipeline_label": label,
                            "benchmark": spec.name,
                            "error": str(exc),
                        }
                    )
            pipeline_records[label] = compiled_records
            pipeline_results[label] = {record["name"]: record for record in measured_records}

        common_names = sorted(
            set(pipeline_results["universal"].keys())
            & set(pipeline_results["none"].keys())
            & set(pipeline_results["oz"].keys())
            & set(pipeline_results["o3"].keys())
        )

        per_benchmark: list[dict[str, Any]] = []
        universal_values: list[float] = []
        baseline_values: dict[str, list[float]] = {"none": [], "oz": [], "o3": []}
        for name in common_names:
            uni = float(pipeline_results["universal"][name]["median_run_seconds"])
            none = float(pipeline_results["none"][name]["median_run_seconds"])
            oz = float(pipeline_results["oz"][name]["median_run_seconds"])
            o3 = float(pipeline_results["o3"][name]["median_run_seconds"])
            per_benchmark.append(
                {
                    "suite": suite,
                    "name": name,
                    "universal": uni,
                    "none": none,
                    "oz": oz,
                    "o3": o3,
                    "ratio_vs_none": uni / none if none > 0 else float("inf"),
                    "ratio_vs_oz": uni / oz if oz > 0 else float("inf"),
                    "ratio_vs_o3": uni / o3 if o3 > 0 else float("inf"),
                }
            )
            universal_values.append(uni)
            baseline_values["none"].append(none)
            baseline_values["oz"].append(oz)
            baseline_values["o3"].append(o3)
            combined_universal.append(uni)
            combined_baselines["none"].append(none)
            combined_baselines["oz"].append(oz)
            combined_baselines["o3"].append(o3)

        suite_results[suite] = {
            "count": len(common_names),
            "selected_names": [spec.name for spec in specs],
            "pipeline_defs": pipeline_defs,
            "per_benchmark": per_benchmark,
            "fixed_baselines": {
                "none": _as_ratio_dict(_ratio_summary(universal_values, baseline_values["none"])),
                "oz": _as_ratio_dict(_ratio_summary(universal_values, baseline_values["oz"])),
                "o3": _as_ratio_dict(_ratio_summary(universal_values, baseline_values["o3"])),
            },
            "failures": failures,
        }

    return {
        "mode": "runtime",
        "repeat": repeat,
        "timeout": timeout,
        "suites": suites,
        "sequence": list(sequence),
        "universal_pipeline": universal_pipeline,
        "suite_results": suite_results,
        "combined": {
            "count": len(combined_universal),
            "fixed_baselines": {
                "none": _as_ratio_dict(_ratio_summary(combined_universal, combined_baselines["none"])),
                "oz": _as_ratio_dict(_ratio_summary(combined_universal, combined_baselines["oz"])),
                "o3": _as_ratio_dict(_ratio_summary(combined_universal, combined_baselines["o3"])),
            },
        },
    }


def write_report_files(
    payload: dict[str, Any],
    *,
    tag: str,
) -> dict[str, str]:
    ensure_layout()
    json_path = REPORTS_DIR / f"{tag}.json"
    md_path = REPORTS_DIR / f"{tag}.md"
    json_path.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")

    lines = [
        "# External Validation Report",
        "",
        f"- Generated at: {payload['generated_at']}",
        f"- Mode: {payload['mode']}",
        f"- Sequence source: {payload['sequence_source']}",
        f"- Suites: {', '.join(payload['suites'])}",
        f"- Sequence length: {len(payload['sequence'])}",
        "",
        "## Sequence",
        "",
        "```text",
        ",".join(payload["sequence"]),
        "```",
        "",
        "## Combined",
        "",
        "```json",
        json.dumps(payload.get("combined", {}), indent=2, ensure_ascii=False),
        "```",
        "",
        "## Per Suite",
        "",
    ]
    for suite in payload["suites"]:
        lines.append(f"### {suite}")
        lines.append("")
        lines.append("```json")
        lines.append(json.dumps(payload["suite_results"][suite], indent=2, ensure_ascii=False))
        lines.append("```")
        lines.append("")
    md_path.write_text("\n".join(lines), encoding="utf-8")
    return {"json_path": str(json_path), "markdown_path": str(md_path)}


def run_external_validation(
    *,
    mode: str,
    result_json_path: str | Path | None,
    sequence_text: str | None,
    selected_suites: Sequence[str] | None,
    exclude_suites: Sequence[str] | None,
    benchmarks: Sequence[str] | None,
    objective_baseline: str,
    repeat: int,
    timeout: float,
    dataset_id: int,
    force_sync: bool,
    force_ir: bool,
    tag: str | None,
    frontend_mode: str,
    instrcount_timeout: float,
    instrcount_workers: int,
) -> dict[str, Any]:
    sequence_info = load_sequence_from_result(result_json_path, sequence_text=sequence_text)
    suites = suite_names(selected_suites, exclude_suites)

    if mode == "instrcount":
        eval_payload = evaluate_external_instrcount(
            sequence=sequence_info["sequence"],
            selected_suites=suites,
            benchmarks=benchmarks,
            objective_baseline=objective_baseline,
            dataset_id=dataset_id,
            force_sync=force_sync,
            force_ir=force_ir,
            frontend_mode=frontend_mode,
            instrcount_timeout=instrcount_timeout,
            instrcount_workers=instrcount_workers,
        )
    elif mode == "runtime":
        eval_payload = evaluate_external_runtime(
            sequence=sequence_info["sequence"],
            selected_suites=suites,
            benchmarks=benchmarks,
            repeat=repeat,
            timeout=timeout,
            dataset_id=dataset_id,
            force_sync=force_sync,
        )
    else:
        raise ValueError(f"unsupported mode: {mode}")

    final_payload = {
        "generated_at": time.strftime("%Y-%m-%d %H:%M:%S"),
        "mode": mode,
        "sequence_source": sequence_info["sequence_source"],
        "sequence_source_payload": sequence_info["source_payload"],
        "sequence": sequence_info["sequence"],
        "suites": suites,
        **eval_payload,
    }
    resolved_tag = tag or f"external_validation_{mode}_{_timestamp()}"
    final_payload.update(write_report_files(final_payload, tag=resolved_tag))
    return final_payload
