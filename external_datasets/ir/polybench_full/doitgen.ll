; ModuleID = '/root/exp/RFunipassLab/external_datasets/build/ir_build/polybench_full/doitgen/doitgen.linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@polybench_papi_counters_threadid = dso_local global i32 0, align 4
@polybench_program_total_flops = dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [12 x i8] c"tmp <= 10.0\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"/root/exp/RFunipassLab/external_datasets/sources/polybench_full/utilities/polybench.c\00", align 1
@__PRETTY_FUNCTION__.polybench_flush_cache = private unnamed_addr constant [29 x i8] c"void polybench_flush_cache()\00", align 1
@polybench_t_start = dso_local global double 0.000000e+00, align 8
@polybench_t_end = dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@polybench_c_start = dso_local global i64 0, align 8
@polybench_c_end = dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Error return from gettimeofday: %d\00", align 1
@polybench_inter_array_padding_sz = internal global i64 0, align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external global ptr, align 8
@.str.1.6 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2.7 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3.8 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @polybench_flush_cache() #0 {
entry:
  %cs = alloca i32, align 4
  %flush = alloca ptr, align 8
  %i = alloca i32, align 4
  %tmp = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %cs) #8
  store i32 4194560, ptr %cs, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %flush) #8
  %0 = load i32, ptr %cs, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %call = call noalias ptr @calloc(i64 noundef %conv, i64 noundef 8) #9
  store ptr %call, ptr %flush, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #8
  store double 0.000000e+00, ptr %tmp, align 8, !tbaa !12
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr %cs, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %flush, align 8, !tbaa !9
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds double, ptr %3, i64 %idxprom
  %5 = load double, ptr %arrayidx, align 8, !tbaa !12
  %6 = load double, ptr %tmp, align 8, !tbaa !12
  %add = fadd double %6, %5
  store double %add, ptr %tmp, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %8 = load double, ptr %tmp, align 8, !tbaa !12
  %cmp2 = fcmp ole double %8, 1.000000e+01
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  br label %if.end

if.else:                                          ; preds = %for.end
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 123, ptr noundef @__PRETTY_FUNCTION__.polybench_flush_cache) #10
  unreachable

if.end:                                           ; preds = %if.then
  %9 = load ptr, ptr %flush, align 8, !tbaa !9
  call void @free(ptr noundef %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %flush) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %cs) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @polybench_prepare_instruments() #0 {
entry:
  call void @polybench_flush_cache()
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_start() #0 {
entry:
  call void @polybench_prepare_instruments()
  %call = call double @rtclock()
  store double %call, ptr @polybench_t_start, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @rtclock() #0 {
entry:
  %Tp = alloca %struct.timeval, align 8
  %stat = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr %Tp) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %stat) #8
  %call = call i32 @gettimeofday(ptr noundef %Tp, ptr noundef null) #8
  store i32 %call, ptr %stat, align 4, !tbaa !5
  %0 = load i32, ptr %stat, align 4, !tbaa !5
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %stat, align 4, !tbaa !5
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tv_sec = getelementptr inbounds nuw %struct.timeval, ptr %Tp, i32 0, i32 0
  %2 = load i64, ptr %tv_sec, align 8, !tbaa !16
  %conv = sitofp i64 %2 to double
  %tv_usec = getelementptr inbounds nuw %struct.timeval, ptr %Tp, i32 0, i32 1
  %3 = load i64, ptr %tv_usec, align 8, !tbaa !19
  %conv2 = sitofp i64 %3 to double
  %4 = call double @llvm.fmuladd.f64(double %conv2, double 0x3EB0C6F7A0B5ED8D, double %conv)
  call void @llvm.lifetime.end.p0(i64 4, ptr %stat) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %Tp) #8
  ret double %4
}

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) #4

declare i32 @printf(ptr noundef, ...) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_stop() #0 {
entry:
  %call = call double @rtclock()
  store double %call, ptr @polybench_t_end, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_print() #0 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !12
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !12
  %sub = fsub double %0, %1
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %sub)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_free_data(ptr noundef %ptr) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !20
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !20
  call void @free(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) #0 {
entry:
  %n.addr = alloca i64, align 8
  %elt_size.addr = alloca i32, align 4
  %val = alloca i64, align 8
  %ret = alloca ptr, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !21
  store i32 %elt_size, ptr %elt_size.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #8
  %0 = load i64, ptr %n.addr, align 8, !tbaa !21
  store i64 %0, ptr %val, align 8, !tbaa !23
  %1 = load i32, ptr %elt_size.addr, align 4, !tbaa !5
  %conv = sext i32 %1 to i64
  %2 = load i64, ptr %val, align 8, !tbaa !23
  %mul = mul i64 %2, %conv
  store i64 %mul, ptr %val, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %3 = load i64, ptr %val, align 8, !tbaa !23
  %call = call ptr @xmalloc(i64 noundef %3)
  store ptr %call, ptr %ret, align 8, !tbaa !20
  %4 = load ptr, ptr %ret, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #8
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define internal ptr @xmalloc(i64 noundef %alloc_sz) #0 {
entry:
  %alloc_sz.addr = alloca i64, align 8
  %ret = alloca ptr, align 8
  %padded_sz = alloca i64, align 8
  %err = alloca i32, align 4
  store i64 %alloc_sz, ptr %alloc_sz.addr, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  store ptr null, ptr %ret, align 8, !tbaa !20
  %0 = load i64, ptr @polybench_inter_array_padding_sz, align 8, !tbaa !23
  %add = add i64 %0, 0
  store i64 %add, ptr @polybench_inter_array_padding_sz, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 8, ptr %padded_sz) #8
  %1 = load i64, ptr %alloc_sz.addr, align 8, !tbaa !23
  %2 = load i64, ptr @polybench_inter_array_padding_sz, align 8, !tbaa !23
  %add1 = add i64 %1, %2
  store i64 %add1, ptr %padded_sz, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8
  %3 = load i64, ptr %padded_sz, align 8, !tbaa !23
  %call = call i32 @posix_memalign(ptr noundef %ret, i64 noundef 4096, i64 noundef %3) #8
  store i32 %call, ptr %err, align 4, !tbaa !5
  %4 = load ptr, ptr %ret, align 8, !tbaa !20
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, ptr %err, align 4, !tbaa !5
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.4) #8
  call void @exit(i32 noundef 1) #10
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %7 = load ptr, ptr %ret, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %padded_sz) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  ret ptr %7
}

; Function Attrs: nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @kernel_doitgen(i32 noundef %nr, i32 noundef %nq, i32 noundef %np, ptr noundef %A, ptr noundef %C4, ptr noundef %sum) #0 {
entry:
  %nr.addr = alloca i32, align 4
  %nq.addr = alloca i32, align 4
  %np.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 8
  %C4.addr = alloca ptr, align 8
  %sum.addr = alloca ptr, align 8
  %r = alloca i32, align 4
  %q = alloca i32, align 4
  %p = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %nr, ptr %nr.addr, align 4, !tbaa !5
  store i32 %nq, ptr %nq.addr, align 4, !tbaa !5
  store i32 %np, ptr %np.addr, align 4, !tbaa !5
  store ptr %A, ptr %A.addr, align 8, !tbaa !9
  store ptr %C4, ptr %C4.addr, align 8, !tbaa !9
  store ptr %sum, ptr %sum.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #8
  store i32 0, ptr %r, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %0 = load i32, ptr %r, align 4, !tbaa !5
  %1 = load i32, ptr %nr.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %q, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc39, %for.body
  %2 = load i32, ptr %q, align 4, !tbaa !5
  %3 = load i32, ptr %nq.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end41

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %p, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc22, %for.body3
  %4 = load i32, ptr %p, align 4, !tbaa !5
  %5 = load i32, ptr %np.addr, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end24

for.body6:                                        ; preds = %for.cond4
  %6 = load ptr, ptr %sum.addr, align 8, !tbaa !9
  %7 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds double, ptr %6, i64 %idxprom
  store double 0.000000e+00, ptr %arrayidx, align 8, !tbaa !12
  store i32 0, ptr %s, align 4, !tbaa !5
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %8 = load i32, ptr %s, align 4, !tbaa !5
  %9 = load i32, ptr %np.addr, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %10 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %11 = load i32, ptr %r, align 4, !tbaa !5
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [140 x [160 x double]], ptr %10, i64 %idxprom10
  %12 = load i32, ptr %q, align 4, !tbaa !5
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [140 x [160 x double]], ptr %arrayidx11, i64 0, i64 %idxprom12
  %13 = load i32, ptr %s, align 4, !tbaa !5
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [160 x double], ptr %arrayidx13, i64 0, i64 %idxprom14
  %14 = load double, ptr %arrayidx15, align 8, !tbaa !12
  %15 = load ptr, ptr %C4.addr, align 8, !tbaa !9
  %16 = load i32, ptr %s, align 4, !tbaa !5
  %idxprom16 = sext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [160 x double], ptr %15, i64 %idxprom16
  %17 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom18 = sext i32 %17 to i64
  %arrayidx19 = getelementptr inbounds [160 x double], ptr %arrayidx17, i64 0, i64 %idxprom18
  %18 = load double, ptr %arrayidx19, align 8, !tbaa !12
  %19 = load ptr, ptr %sum.addr, align 8, !tbaa !9
  %20 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds double, ptr %19, i64 %idxprom20
  %21 = load double, ptr %arrayidx21, align 8, !tbaa !12
  %22 = call double @llvm.fmuladd.f64(double %14, double %18, double %21)
  store double %22, ptr %arrayidx21, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %23 = load i32, ptr %s, align 4, !tbaa !5
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %s, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !26

for.end:                                          ; preds = %for.cond7
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  %24 = load i32, ptr %p, align 4, !tbaa !5
  %inc23 = add nsw i32 %24, 1
  store i32 %inc23, ptr %p, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !27

for.end24:                                        ; preds = %for.cond4
  store i32 0, ptr %p, align 4, !tbaa !5
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc36, %for.end24
  %25 = load i32, ptr %p, align 4, !tbaa !5
  %26 = load i32, ptr %np.addr, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %25, %26
  br i1 %cmp26, label %for.body27, label %for.end38

for.body27:                                       ; preds = %for.cond25
  %27 = load ptr, ptr %sum.addr, align 8, !tbaa !9
  %28 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom28 = sext i32 %28 to i64
  %arrayidx29 = getelementptr inbounds double, ptr %27, i64 %idxprom28
  %29 = load double, ptr %arrayidx29, align 8, !tbaa !12
  %30 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %31 = load i32, ptr %r, align 4, !tbaa !5
  %idxprom30 = sext i32 %31 to i64
  %arrayidx31 = getelementptr inbounds [140 x [160 x double]], ptr %30, i64 %idxprom30
  %32 = load i32, ptr %q, align 4, !tbaa !5
  %idxprom32 = sext i32 %32 to i64
  %arrayidx33 = getelementptr inbounds [140 x [160 x double]], ptr %arrayidx31, i64 0, i64 %idxprom32
  %33 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom34 = sext i32 %33 to i64
  %arrayidx35 = getelementptr inbounds [160 x double], ptr %arrayidx33, i64 0, i64 %idxprom34
  store double %29, ptr %arrayidx35, align 8, !tbaa !12
  br label %for.inc36

for.inc36:                                        ; preds = %for.body27
  %34 = load i32, ptr %p, align 4, !tbaa !5
  %inc37 = add nsw i32 %34, 1
  store i32 %inc37, ptr %p, align 4, !tbaa !5
  br label %for.cond25, !llvm.loop !28

for.end38:                                        ; preds = %for.cond25
  br label %for.inc39

for.inc39:                                        ; preds = %for.end38
  %35 = load i32, ptr %q, align 4, !tbaa !5
  %inc40 = add nsw i32 %35, 1
  store i32 %inc40, ptr %q, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !29

for.end41:                                        ; preds = %for.cond1
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %36 = load i32, ptr %r, align 4, !tbaa !5
  %inc43 = add nsw i32 %36, 1
  store i32 %inc43, ptr %r, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !30

for.end44:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %nr = alloca i32, align 4
  %nq = alloca i32, align 4
  %np = alloca i32, align 4
  %A = alloca ptr, align 8
  %sum = alloca ptr, align 8
  %C4 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr) #8
  store i32 150, ptr %nr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nq) #8
  store i32 140, ptr %nq, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %np) #8
  store i32 160, ptr %np, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %A) #8
  %call = call ptr @polybench_alloc_data(i64 noundef 3360000, i32 noundef 8)
  store ptr %call, ptr %A, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #8
  %call1 = call ptr @polybench_alloc_data(i64 noundef 160, i32 noundef 8)
  store ptr %call1, ptr %sum, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %C4) #8
  %call2 = call ptr @polybench_alloc_data(i64 noundef 25600, i32 noundef 8)
  store ptr %call2, ptr %C4, align 8, !tbaa !9
  %0 = load i32, ptr %nr, align 4, !tbaa !5
  %1 = load i32, ptr %nq, align 4, !tbaa !5
  %2 = load i32, ptr %np, align 4, !tbaa !5
  %3 = load ptr, ptr %A, align 8, !tbaa !9
  %arraydecay = getelementptr inbounds [150 x [140 x [160 x double]]], ptr %3, i64 0, i64 0
  %4 = load ptr, ptr %C4, align 8, !tbaa !9
  %arraydecay3 = getelementptr inbounds [160 x [160 x double]], ptr %4, i64 0, i64 0
  call void @init_array(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %arraydecay, ptr noundef %arraydecay3)
  call void (...) @polybench_timer_start()
  %5 = load i32, ptr %nr, align 4, !tbaa !5
  %6 = load i32, ptr %nq, align 4, !tbaa !5
  %7 = load i32, ptr %np, align 4, !tbaa !5
  %8 = load ptr, ptr %A, align 8, !tbaa !9
  %arraydecay4 = getelementptr inbounds [150 x [140 x [160 x double]]], ptr %8, i64 0, i64 0
  %9 = load ptr, ptr %C4, align 8, !tbaa !9
  %arraydecay5 = getelementptr inbounds [160 x [160 x double]], ptr %9, i64 0, i64 0
  %10 = load ptr, ptr %sum, align 8, !tbaa !9
  %arraydecay6 = getelementptr inbounds [160 x double], ptr %10, i64 0, i64 0
  call void @kernel_doitgen(i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %arraydecay4, ptr noundef %arraydecay5, ptr noundef %arraydecay6)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %11 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %11, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %12 = load ptr, ptr %argv.addr, align 8, !tbaa !31
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 0
  %13 = load ptr, ptr %arrayidx, align 8, !tbaa !34
  %call7 = call i32 @strcmp(ptr noundef %13, ptr noundef @.str.5) #11
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %14 = load i32, ptr %nr, align 4, !tbaa !5
  %15 = load i32, ptr %nq, align 4, !tbaa !5
  %16 = load i32, ptr %np, align 4, !tbaa !5
  %17 = load ptr, ptr %A, align 8, !tbaa !9
  %arraydecay8 = getelementptr inbounds [150 x [140 x [160 x double]]], ptr %17, i64 0, i64 0
  call void @print_array(i32 noundef %14, i32 noundef %15, i32 noundef %16, ptr noundef %arraydecay8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %18 = load ptr, ptr %A, align 8, !tbaa !9
  call void @free(ptr noundef %18) #8
  %19 = load ptr, ptr %sum, align 8, !tbaa !9
  call void @free(ptr noundef %19) #8
  %20 = load ptr, ptr %C4, align 8, !tbaa !9
  call void @free(ptr noundef %20) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %C4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %A) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %np) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %nq) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 noundef %nr, i32 noundef %nq, i32 noundef %np, ptr noundef %A, ptr noundef %C4) #0 {
entry:
  %nr.addr = alloca i32, align 4
  %nq.addr = alloca i32, align 4
  %np.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 8
  %C4.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %nr, ptr %nr.addr, align 4, !tbaa !5
  store i32 %nq, ptr %nq.addr, align 4, !tbaa !5
  store i32 %np, ptr %np.addr, align 4, !tbaa !5
  store ptr %A, ptr %A.addr, align 8, !tbaa !9
  store ptr %C4, ptr %C4.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %nr.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %nq.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end14

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %5 = load i32, ptr %np.addr, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %mul = mul nsw i32 %6, %7
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %add = add nsw i32 %mul, %8
  %9 = load i32, ptr %np.addr, align 4, !tbaa !5
  %rem = srem i32 %add, %9
  %conv = sitofp i32 %rem to double
  %10 = load i32, ptr %np.addr, align 4, !tbaa !5
  %conv7 = sitofp i32 %10 to double
  %div = fdiv double %conv, %conv7
  %11 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [140 x [160 x double]], ptr %11, i64 %idxprom
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [140 x [160 x double]], ptr %arrayidx, i64 0, i64 %idxprom8
  %14 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [160 x double], ptr %arrayidx9, i64 0, i64 %idxprom10
  store double %div, ptr %arrayidx11, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !36

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %inc13 = add nsw i32 %16, 1
  store i32 %inc13, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !37

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc16 = add nsw i32 %17, 1
  store i32 %inc16, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !38

for.end17:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc38, %for.end17
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %19 = load i32, ptr %np.addr, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %18, %19
  br i1 %cmp19, label %for.body21, label %for.end40

for.body21:                                       ; preds = %for.cond18
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc35, %for.body21
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %21 = load i32, ptr %np.addr, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %20, %21
  br i1 %cmp23, label %for.body25, label %for.end37

for.body25:                                       ; preds = %for.cond22
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %mul26 = mul nsw i32 %22, %23
  %24 = load i32, ptr %np.addr, align 4, !tbaa !5
  %rem27 = srem i32 %mul26, %24
  %conv28 = sitofp i32 %rem27 to double
  %25 = load i32, ptr %np.addr, align 4, !tbaa !5
  %conv29 = sitofp i32 %25 to double
  %div30 = fdiv double %conv28, %conv29
  %26 = load ptr, ptr %C4.addr, align 8, !tbaa !9
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %27 to i64
  %arrayidx32 = getelementptr inbounds [160 x double], ptr %26, i64 %idxprom31
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom33 = sext i32 %28 to i64
  %arrayidx34 = getelementptr inbounds [160 x double], ptr %arrayidx32, i64 0, i64 %idxprom33
  store double %div30, ptr %arrayidx34, align 8, !tbaa !12
  br label %for.inc35

for.inc35:                                        ; preds = %for.body25
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %inc36 = add nsw i32 %29, 1
  store i32 %inc36, ptr %j, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !39

for.end37:                                        ; preds = %for.cond22
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %inc39 = add nsw i32 %30, 1
  store i32 %inc39, ptr %i, align 4, !tbaa !5
  br label %for.cond18, !llvm.loop !40

for.end40:                                        ; preds = %for.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #7

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 noundef %nr, i32 noundef %nq, i32 noundef %np, ptr noundef %A) #0 {
entry:
  %nr.addr = alloca i32, align 4
  %nq.addr = alloca i32, align 4
  %np.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %nr, ptr %nr.addr, align 4, !tbaa !5
  store i32 %nq, ptr %nq.addr, align 4, !tbaa !5
  store i32 %np, ptr %np.addr, align 4, !tbaa !5
  store ptr %A, ptr %A.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8
  %0 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.1.6) #8
  %1 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.2.7, ptr noundef @.str.3.8) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %nr.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc18, %for.body
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %nq.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end20

for.body4:                                        ; preds = %for.cond2
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %6 = load i32, ptr %k, align 4, !tbaa !5
  %7 = load i32, ptr %np.addr, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %6, %7
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %nq.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %8, %9
  %10 = load i32, ptr %np.addr, align 4, !tbaa !5
  %mul8 = mul nsw i32 %mul, %10
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %12 = load i32, ptr %np.addr, align 4, !tbaa !5
  %mul9 = mul nsw i32 %11, %12
  %add = add nsw i32 %mul8, %mul9
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %add10 = add nsw i32 %add, %13
  %rem = srem i32 %add10, 20
  %cmp11 = icmp eq i32 %rem, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %14 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.4.9) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  %15 = load ptr, ptr @stderr, align 8, !tbaa !24
  %16 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [140 x [160 x double]], ptr %16, i64 %idxprom
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds [140 x [160 x double]], ptr %arrayidx, i64 0, i64 %idxprom13
  %19 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds [160 x double], ptr %arrayidx14, i64 0, i64 %idxprom15
  %20 = load double, ptr %arrayidx16, align 8, !tbaa !12
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.5.10, double noundef %20) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !41

for.end:                                          ; preds = %for.cond5
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %inc19 = add nsw i32 %22, 1
  store i32 %inc19, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !42

for.end20:                                        ; preds = %for.cond2
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %inc22 = add nsw i32 %23, 1
  store i32 %inc22, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !43

for.end23:                                        ; preds = %for.cond
  %24 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.6, ptr noundef @.str.3.8) #8
  %25 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0,1) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 double", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!17, !18, i64 0}
!17 = !{!"timeval", !18, i64 0, !18, i64 8}
!18 = !{!"long", !7, i64 0}
!19 = !{!17, !18, i64 8}
!20 = !{!11, !11, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"long long", !7, i64 0}
!23 = !{!18, !18, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = !{!32, !32, i64 0}
!32 = !{!"p2 omnipotent char", !33, i64 0}
!33 = !{!"any p2 pointer", !11, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 omnipotent char", !11, i64 0}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !15}
!42 = distinct !{!42, !15}
!43 = distinct !{!43, !15}
