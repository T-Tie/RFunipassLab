; ModuleID = '/root/exp/RFunipassLab/external_datasets/build/ir_build/polybench_full/adi/adi.linked.bc'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"u\00", align 1
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
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %tsteps = alloca i32, align 4
  %u = alloca ptr, align 8
  %v = alloca ptr, align 8
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8
  store i32 1000, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %tsteps) #8
  store i32 500, ptr %tsteps, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %u) #8
  %call = call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8)
  store ptr %call, ptr %u, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #8
  %call1 = call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8)
  store ptr %call1, ptr %v, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8
  %call2 = call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8)
  store ptr %call2, ptr %p, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #8
  %call3 = call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8)
  store ptr %call3, ptr %q, align 8, !tbaa !9
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = load ptr, ptr %u, align 8, !tbaa !9
  %arraydecay = getelementptr inbounds [1000 x [1000 x double]], ptr %1, i64 0, i64 0
  call void @init_array(i32 noundef %0, ptr noundef %arraydecay)
  call void (...) @polybench_timer_start()
  %2 = load i32, ptr %tsteps, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = load ptr, ptr %u, align 8, !tbaa !9
  %arraydecay4 = getelementptr inbounds [1000 x [1000 x double]], ptr %4, i64 0, i64 0
  %5 = load ptr, ptr %v, align 8, !tbaa !9
  %arraydecay5 = getelementptr inbounds [1000 x [1000 x double]], ptr %5, i64 0, i64 0
  %6 = load ptr, ptr %p, align 8, !tbaa !9
  %arraydecay6 = getelementptr inbounds [1000 x [1000 x double]], ptr %6, i64 0, i64 0
  %7 = load ptr, ptr %q, align 8, !tbaa !9
  %arraydecay7 = getelementptr inbounds [1000 x [1000 x double]], ptr %7, i64 0, i64 0
  call void @kernel_adi(i32 noundef %2, i32 noundef %3, ptr noundef %arraydecay4, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %arraydecay7)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %8 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %8, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load ptr, ptr %argv.addr, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 0
  %10 = load ptr, ptr %arrayidx, align 8, !tbaa !29
  %call8 = call i32 @strcmp(ptr noundef %10, ptr noundef @.str.5) #11
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %12 = load ptr, ptr %u, align 8, !tbaa !9
  %arraydecay9 = getelementptr inbounds [1000 x [1000 x double]], ptr %12, i64 0, i64 0
  call void @print_array(i32 noundef %11, ptr noundef %arraydecay9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %13 = load ptr, ptr %u, align 8, !tbaa !9
  call void @free(ptr noundef %13) #8
  %14 = load ptr, ptr %v, align 8, !tbaa !9
  call void @free(ptr noundef %14) #8
  %15 = load ptr, ptr %p, align 8, !tbaa !9
  call void @free(ptr noundef %15) #8
  %16 = load ptr, ptr %q, align 8, !tbaa !9
  call void @free(ptr noundef %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %u) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tsteps) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 noundef %n, ptr noundef %u) #0 {
entry:
  %n.addr = alloca i32, align 4
  %u.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %u, ptr %u.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %n.addr, align 4, !tbaa !5
  %add = add nsw i32 %4, %5
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %sub = sub nsw i32 %add, %6
  %conv = sitofp i32 %sub to double
  %7 = load i32, ptr %n.addr, align 4, !tbaa !5
  %conv4 = sitofp i32 %7 to double
  %div = fdiv double %conv, %conv4
  %8 = load ptr, ptr %u.addr, align 8, !tbaa !9
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [1000 x double], ptr %8, i64 %idxprom
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [1000 x double], ptr %arrayidx, i64 0, i64 %idxprom5
  store double %div, ptr %arrayidx6, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !31

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %inc8 = add nsw i32 %12, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !32

for.end9:                                         ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kernel_adi(i32 noundef %tsteps, i32 noundef %n, ptr noundef %u, ptr noundef %v, ptr noundef %p, ptr noundef %q) #0 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %DX = alloca double, align 8
  %DY = alloca double, align 8
  %DT = alloca double, align 8
  %B1 = alloca double, align 8
  %B2 = alloca double, align 8
  %mul1 = alloca double, align 8
  %mul2 = alloca double, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %d = alloca double, align 8
  %e = alloca double, align 8
  %f = alloca double, align 8
  store i32 %tsteps, ptr %tsteps.addr, align 4, !tbaa !5
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %u, ptr %u.addr, align 8, !tbaa !9
  store ptr %v, ptr %v.addr, align 8, !tbaa !9
  store ptr %p, ptr %p.addr, align 8, !tbaa !9
  store ptr %q, ptr %q.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %DX) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %DY) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %DT) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %B1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %B2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %mul1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %mul2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #8
  %0 = load i32, ptr %n.addr, align 4, !tbaa !5
  %conv = sitofp i32 %0 to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, ptr %DX, align 8, !tbaa !12
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %conv1 = sitofp i32 %1 to double
  %div2 = fdiv double 1.000000e+00, %conv1
  store double %div2, ptr %DY, align 8, !tbaa !12
  %2 = load i32, ptr %tsteps.addr, align 4, !tbaa !5
  %conv3 = sitofp i32 %2 to double
  %div4 = fdiv double 1.000000e+00, %conv3
  store double %div4, ptr %DT, align 8, !tbaa !12
  store double 2.000000e+00, ptr %B1, align 8, !tbaa !12
  store double 1.000000e+00, ptr %B2, align 8, !tbaa !12
  %3 = load double, ptr %B1, align 8, !tbaa !12
  %4 = load double, ptr %DT, align 8, !tbaa !12
  %mul = fmul double %3, %4
  %5 = load double, ptr %DX, align 8, !tbaa !12
  %6 = load double, ptr %DX, align 8, !tbaa !12
  %mul5 = fmul double %5, %6
  %div6 = fdiv double %mul, %mul5
  store double %div6, ptr %mul1, align 8, !tbaa !12
  %7 = load double, ptr %B2, align 8, !tbaa !12
  %8 = load double, ptr %DT, align 8, !tbaa !12
  %mul7 = fmul double %7, %8
  %9 = load double, ptr %DY, align 8, !tbaa !12
  %10 = load double, ptr %DY, align 8, !tbaa !12
  %mul8 = fmul double %9, %10
  %div9 = fdiv double %mul7, %mul8
  store double %div9, ptr %mul2, align 8, !tbaa !12
  %11 = load double, ptr %mul1, align 8, !tbaa !12
  %fneg = fneg double %11
  %div10 = fdiv double %fneg, 2.000000e+00
  store double %div10, ptr %a, align 8, !tbaa !12
  %12 = load double, ptr %mul1, align 8, !tbaa !12
  %add = fadd double 1.000000e+00, %12
  store double %add, ptr %b, align 8, !tbaa !12
  %13 = load double, ptr %a, align 8, !tbaa !12
  store double %13, ptr %c, align 8, !tbaa !12
  %14 = load double, ptr %mul2, align 8, !tbaa !12
  %fneg11 = fneg double %14
  %div12 = fdiv double %fneg11, 2.000000e+00
  store double %div12, ptr %d, align 8, !tbaa !12
  %15 = load double, ptr %mul2, align 8, !tbaa !12
  %add13 = fadd double 1.000000e+00, %15
  store double %add13, ptr %e, align 8, !tbaa !12
  %16 = load double, ptr %d, align 8, !tbaa !12
  store double %16, ptr %f, align 8, !tbaa !12
  store i32 1, ptr %t, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc225, %entry
  %17 = load i32, ptr %t, align 4, !tbaa !5
  %18 = load i32, ptr %tsteps.addr, align 4, !tbaa !5
  %cmp = icmp sle i32 %17, %18
  br i1 %cmp, label %for.body, label %for.end227

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc113, %for.body
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %20 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %20, 1
  %cmp16 = icmp slt i32 %19, %sub
  br i1 %cmp16, label %for.body18, label %for.end115

for.body18:                                       ; preds = %for.cond15
  %21 = load ptr, ptr %v.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds [1000 x double], ptr %21, i64 0
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds [1000 x double], ptr %arrayidx, i64 0, i64 %idxprom
  store double 1.000000e+00, ptr %arrayidx19, align 8, !tbaa !12
  %23 = load ptr, ptr %p.addr, align 8, !tbaa !9
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %24 to i64
  %arrayidx21 = getelementptr inbounds [1000 x double], ptr %23, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [1000 x double], ptr %arrayidx21, i64 0, i64 0
  store double 0.000000e+00, ptr %arrayidx22, align 8, !tbaa !12
  %25 = load ptr, ptr %v.addr, align 8, !tbaa !9
  %arrayidx23 = getelementptr inbounds [1000 x double], ptr %25, i64 0
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom24 = sext i32 %26 to i64
  %arrayidx25 = getelementptr inbounds [1000 x double], ptr %arrayidx23, i64 0, i64 %idxprom24
  %27 = load double, ptr %arrayidx25, align 8, !tbaa !12
  %28 = load ptr, ptr %q.addr, align 8, !tbaa !9
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %29 to i64
  %arrayidx27 = getelementptr inbounds [1000 x double], ptr %28, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [1000 x double], ptr %arrayidx27, i64 0, i64 0
  store double %27, ptr %arrayidx28, align 8, !tbaa !12
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc, %for.body18
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %31 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub30 = sub nsw i32 %31, 1
  %cmp31 = icmp slt i32 %30, %sub30
  br i1 %cmp31, label %for.body33, label %for.end

for.body33:                                       ; preds = %for.cond29
  %32 = load double, ptr %c, align 8, !tbaa !12
  %fneg34 = fneg double %32
  %33 = load double, ptr %a, align 8, !tbaa !12
  %34 = load ptr, ptr %p.addr, align 8, !tbaa !9
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %35 to i64
  %arrayidx36 = getelementptr inbounds [1000 x double], ptr %34, i64 %idxprom35
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %sub37 = sub nsw i32 %36, 1
  %idxprom38 = sext i32 %sub37 to i64
  %arrayidx39 = getelementptr inbounds [1000 x double], ptr %arrayidx36, i64 0, i64 %idxprom38
  %37 = load double, ptr %arrayidx39, align 8, !tbaa !12
  %38 = load double, ptr %b, align 8, !tbaa !12
  %39 = call double @llvm.fmuladd.f64(double %33, double %37, double %38)
  %div41 = fdiv double %fneg34, %39
  %40 = load ptr, ptr %p.addr, align 8, !tbaa !9
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %41 to i64
  %arrayidx43 = getelementptr inbounds [1000 x double], ptr %40, i64 %idxprom42
  %42 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom44 = sext i32 %42 to i64
  %arrayidx45 = getelementptr inbounds [1000 x double], ptr %arrayidx43, i64 0, i64 %idxprom44
  store double %div41, ptr %arrayidx45, align 8, !tbaa !12
  %43 = load double, ptr %d, align 8, !tbaa !12
  %fneg46 = fneg double %43
  %44 = load ptr, ptr %u.addr, align 8, !tbaa !9
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom47 = sext i32 %45 to i64
  %arrayidx48 = getelementptr inbounds [1000 x double], ptr %44, i64 %idxprom47
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %sub49 = sub nsw i32 %46, 1
  %idxprom50 = sext i32 %sub49 to i64
  %arrayidx51 = getelementptr inbounds [1000 x double], ptr %arrayidx48, i64 0, i64 %idxprom50
  %47 = load double, ptr %arrayidx51, align 8, !tbaa !12
  %48 = load double, ptr %d, align 8, !tbaa !12
  %49 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %48, double 1.000000e+00)
  %50 = load ptr, ptr %u.addr, align 8, !tbaa !9
  %51 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom54 = sext i32 %51 to i64
  %arrayidx55 = getelementptr inbounds [1000 x double], ptr %50, i64 %idxprom54
  %52 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom56 = sext i32 %52 to i64
  %arrayidx57 = getelementptr inbounds [1000 x double], ptr %arrayidx55, i64 0, i64 %idxprom56
  %53 = load double, ptr %arrayidx57, align 8, !tbaa !12
  %mul58 = fmul double %49, %53
  %54 = call double @llvm.fmuladd.f64(double %fneg46, double %47, double %mul58)
  %55 = load double, ptr %f, align 8, !tbaa !12
  %56 = load ptr, ptr %u.addr, align 8, !tbaa !9
  %57 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom59 = sext i32 %57 to i64
  %arrayidx60 = getelementptr inbounds [1000 x double], ptr %56, i64 %idxprom59
  %58 = load i32, ptr %i, align 4, !tbaa !5
  %add61 = add nsw i32 %58, 1
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds [1000 x double], ptr %arrayidx60, i64 0, i64 %idxprom62
  %59 = load double, ptr %arrayidx63, align 8, !tbaa !12
  %neg = fneg double %55
  %60 = call double @llvm.fmuladd.f64(double %neg, double %59, double %54)
  %61 = load double, ptr %a, align 8, !tbaa !12
  %62 = load ptr, ptr %q.addr, align 8, !tbaa !9
  %63 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom65 = sext i32 %63 to i64
  %arrayidx66 = getelementptr inbounds [1000 x double], ptr %62, i64 %idxprom65
  %64 = load i32, ptr %j, align 4, !tbaa !5
  %sub67 = sub nsw i32 %64, 1
  %idxprom68 = sext i32 %sub67 to i64
  %arrayidx69 = getelementptr inbounds [1000 x double], ptr %arrayidx66, i64 0, i64 %idxprom68
  %65 = load double, ptr %arrayidx69, align 8, !tbaa !12
  %neg71 = fneg double %61
  %66 = call double @llvm.fmuladd.f64(double %neg71, double %65, double %60)
  %67 = load double, ptr %a, align 8, !tbaa !12
  %68 = load ptr, ptr %p.addr, align 8, !tbaa !9
  %69 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom72 = sext i32 %69 to i64
  %arrayidx73 = getelementptr inbounds [1000 x double], ptr %68, i64 %idxprom72
  %70 = load i32, ptr %j, align 4, !tbaa !5
  %sub74 = sub nsw i32 %70, 1
  %idxprom75 = sext i32 %sub74 to i64
  %arrayidx76 = getelementptr inbounds [1000 x double], ptr %arrayidx73, i64 0, i64 %idxprom75
  %71 = load double, ptr %arrayidx76, align 8, !tbaa !12
  %72 = load double, ptr %b, align 8, !tbaa !12
  %73 = call double @llvm.fmuladd.f64(double %67, double %71, double %72)
  %div78 = fdiv double %66, %73
  %74 = load ptr, ptr %q.addr, align 8, !tbaa !9
  %75 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom79 = sext i32 %75 to i64
  %arrayidx80 = getelementptr inbounds [1000 x double], ptr %74, i64 %idxprom79
  %76 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom81 = sext i32 %76 to i64
  %arrayidx82 = getelementptr inbounds [1000 x double], ptr %arrayidx80, i64 0, i64 %idxprom81
  store double %div78, ptr %arrayidx82, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body33
  %77 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %77, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond29, !llvm.loop !33

for.end:                                          ; preds = %for.cond29
  %78 = load ptr, ptr %v.addr, align 8, !tbaa !9
  %79 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub83 = sub nsw i32 %79, 1
  %idxprom84 = sext i32 %sub83 to i64
  %arrayidx85 = getelementptr inbounds [1000 x double], ptr %78, i64 %idxprom84
  %80 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom86 = sext i32 %80 to i64
  %arrayidx87 = getelementptr inbounds [1000 x double], ptr %arrayidx85, i64 0, i64 %idxprom86
  store double 1.000000e+00, ptr %arrayidx87, align 8, !tbaa !12
  %81 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub88 = sub nsw i32 %81, 2
  store i32 %sub88, ptr %j, align 4, !tbaa !5
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc111, %for.end
  %82 = load i32, ptr %j, align 4, !tbaa !5
  %cmp90 = icmp sge i32 %82, 1
  br i1 %cmp90, label %for.body92, label %for.end112

for.body92:                                       ; preds = %for.cond89
  %83 = load ptr, ptr %p.addr, align 8, !tbaa !9
  %84 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom93 = sext i32 %84 to i64
  %arrayidx94 = getelementptr inbounds [1000 x double], ptr %83, i64 %idxprom93
  %85 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom95 = sext i32 %85 to i64
  %arrayidx96 = getelementptr inbounds [1000 x double], ptr %arrayidx94, i64 0, i64 %idxprom95
  %86 = load double, ptr %arrayidx96, align 8, !tbaa !12
  %87 = load ptr, ptr %v.addr, align 8, !tbaa !9
  %88 = load i32, ptr %j, align 4, !tbaa !5
  %add97 = add nsw i32 %88, 1
  %idxprom98 = sext i32 %add97 to i64
  %arrayidx99 = getelementptr inbounds [1000 x double], ptr %87, i64 %idxprom98
  %89 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom100 = sext i32 %89 to i64
  %arrayidx101 = getelementptr inbounds [1000 x double], ptr %arrayidx99, i64 0, i64 %idxprom100
  %90 = load double, ptr %arrayidx101, align 8, !tbaa !12
  %91 = load ptr, ptr %q.addr, align 8, !tbaa !9
  %92 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom103 = sext i32 %92 to i64
  %arrayidx104 = getelementptr inbounds [1000 x double], ptr %91, i64 %idxprom103
  %93 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom105 = sext i32 %93 to i64
  %arrayidx106 = getelementptr inbounds [1000 x double], ptr %arrayidx104, i64 0, i64 %idxprom105
  %94 = load double, ptr %arrayidx106, align 8, !tbaa !12
  %95 = call double @llvm.fmuladd.f64(double %86, double %90, double %94)
  %96 = load ptr, ptr %v.addr, align 8, !tbaa !9
  %97 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom107 = sext i32 %97 to i64
  %arrayidx108 = getelementptr inbounds [1000 x double], ptr %96, i64 %idxprom107
  %98 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom109 = sext i32 %98 to i64
  %arrayidx110 = getelementptr inbounds [1000 x double], ptr %arrayidx108, i64 0, i64 %idxprom109
  store double %95, ptr %arrayidx110, align 8, !tbaa !12
  br label %for.inc111

for.inc111:                                       ; preds = %for.body92
  %99 = load i32, ptr %j, align 4, !tbaa !5
  %dec = add nsw i32 %99, -1
  store i32 %dec, ptr %j, align 4, !tbaa !5
  br label %for.cond89, !llvm.loop !34

for.end112:                                       ; preds = %for.cond89
  br label %for.inc113

for.inc113:                                       ; preds = %for.end112
  %100 = load i32, ptr %i, align 4, !tbaa !5
  %inc114 = add nsw i32 %100, 1
  store i32 %inc114, ptr %i, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !35

for.end115:                                       ; preds = %for.cond15
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond116

for.cond116:                                      ; preds = %for.inc222, %for.end115
  %101 = load i32, ptr %i, align 4, !tbaa !5
  %102 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub117 = sub nsw i32 %102, 1
  %cmp118 = icmp slt i32 %101, %sub117
  br i1 %cmp118, label %for.body120, label %for.end224

for.body120:                                      ; preds = %for.cond116
  %103 = load ptr, ptr %u.addr, align 8, !tbaa !9
  %104 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom121 = sext i32 %104 to i64
  %arrayidx122 = getelementptr inbounds [1000 x double], ptr %103, i64 %idxprom121
  %arrayidx123 = getelementptr inbounds [1000 x double], ptr %arrayidx122, i64 0, i64 0
  store double 1.000000e+00, ptr %arrayidx123, align 8, !tbaa !12
  %105 = load ptr, ptr %p.addr, align 8, !tbaa !9
  %106 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom124 = sext i32 %106 to i64
  %arrayidx125 = getelementptr inbounds [1000 x double], ptr %105, i64 %idxprom124
  %arrayidx126 = getelementptr inbounds [1000 x double], ptr %arrayidx125, i64 0, i64 0
  store double 0.000000e+00, ptr %arrayidx126, align 8, !tbaa !12
  %107 = load ptr, ptr %u.addr, align 8, !tbaa !9
  %108 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom127 = sext i32 %108 to i64
  %arrayidx128 = getelementptr inbounds [1000 x double], ptr %107, i64 %idxprom127
  %arrayidx129 = getelementptr inbounds [1000 x double], ptr %arrayidx128, i64 0, i64 0
  %109 = load double, ptr %arrayidx129, align 8, !tbaa !12
  %110 = load ptr, ptr %q.addr, align 8, !tbaa !9
  %111 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom130 = sext i32 %111 to i64
  %arrayidx131 = getelementptr inbounds [1000 x double], ptr %110, i64 %idxprom130
  %arrayidx132 = getelementptr inbounds [1000 x double], ptr %arrayidx131, i64 0, i64 0
  store double %109, ptr %arrayidx132, align 8, !tbaa !12
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond133

for.cond133:                                      ; preds = %for.inc188, %for.body120
  %112 = load i32, ptr %j, align 4, !tbaa !5
  %113 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub134 = sub nsw i32 %113, 1
  %cmp135 = icmp slt i32 %112, %sub134
  br i1 %cmp135, label %for.body137, label %for.end190

for.body137:                                      ; preds = %for.cond133
  %114 = load double, ptr %f, align 8, !tbaa !12
  %fneg138 = fneg double %114
  %115 = load double, ptr %d, align 8, !tbaa !12
  %116 = load ptr, ptr %p.addr, align 8, !tbaa !9
  %117 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom139 = sext i32 %117 to i64
  %arrayidx140 = getelementptr inbounds [1000 x double], ptr %116, i64 %idxprom139
  %118 = load i32, ptr %j, align 4, !tbaa !5
  %sub141 = sub nsw i32 %118, 1
  %idxprom142 = sext i32 %sub141 to i64
  %arrayidx143 = getelementptr inbounds [1000 x double], ptr %arrayidx140, i64 0, i64 %idxprom142
  %119 = load double, ptr %arrayidx143, align 8, !tbaa !12
  %120 = load double, ptr %e, align 8, !tbaa !12
  %121 = call double @llvm.fmuladd.f64(double %115, double %119, double %120)
  %div145 = fdiv double %fneg138, %121
  %122 = load ptr, ptr %p.addr, align 8, !tbaa !9
  %123 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom146 = sext i32 %123 to i64
  %arrayidx147 = getelementptr inbounds [1000 x double], ptr %122, i64 %idxprom146
  %124 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom148 = sext i32 %124 to i64
  %arrayidx149 = getelementptr inbounds [1000 x double], ptr %arrayidx147, i64 0, i64 %idxprom148
  store double %div145, ptr %arrayidx149, align 8, !tbaa !12
  %125 = load double, ptr %a, align 8, !tbaa !12
  %fneg150 = fneg double %125
  %126 = load ptr, ptr %v.addr, align 8, !tbaa !9
  %127 = load i32, ptr %i, align 4, !tbaa !5
  %sub151 = sub nsw i32 %127, 1
  %idxprom152 = sext i32 %sub151 to i64
  %arrayidx153 = getelementptr inbounds [1000 x double], ptr %126, i64 %idxprom152
  %128 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom154 = sext i32 %128 to i64
  %arrayidx155 = getelementptr inbounds [1000 x double], ptr %arrayidx153, i64 0, i64 %idxprom154
  %129 = load double, ptr %arrayidx155, align 8, !tbaa !12
  %130 = load double, ptr %a, align 8, !tbaa !12
  %131 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %130, double 1.000000e+00)
  %132 = load ptr, ptr %v.addr, align 8, !tbaa !9
  %133 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom158 = sext i32 %133 to i64
  %arrayidx159 = getelementptr inbounds [1000 x double], ptr %132, i64 %idxprom158
  %134 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom160 = sext i32 %134 to i64
  %arrayidx161 = getelementptr inbounds [1000 x double], ptr %arrayidx159, i64 0, i64 %idxprom160
  %135 = load double, ptr %arrayidx161, align 8, !tbaa !12
  %mul162 = fmul double %131, %135
  %136 = call double @llvm.fmuladd.f64(double %fneg150, double %129, double %mul162)
  %137 = load double, ptr %c, align 8, !tbaa !12
  %138 = load ptr, ptr %v.addr, align 8, !tbaa !9
  %139 = load i32, ptr %i, align 4, !tbaa !5
  %add163 = add nsw i32 %139, 1
  %idxprom164 = sext i32 %add163 to i64
  %arrayidx165 = getelementptr inbounds [1000 x double], ptr %138, i64 %idxprom164
  %140 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom166 = sext i32 %140 to i64
  %arrayidx167 = getelementptr inbounds [1000 x double], ptr %arrayidx165, i64 0, i64 %idxprom166
  %141 = load double, ptr %arrayidx167, align 8, !tbaa !12
  %neg169 = fneg double %137
  %142 = call double @llvm.fmuladd.f64(double %neg169, double %141, double %136)
  %143 = load double, ptr %d, align 8, !tbaa !12
  %144 = load ptr, ptr %q.addr, align 8, !tbaa !9
  %145 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom170 = sext i32 %145 to i64
  %arrayidx171 = getelementptr inbounds [1000 x double], ptr %144, i64 %idxprom170
  %146 = load i32, ptr %j, align 4, !tbaa !5
  %sub172 = sub nsw i32 %146, 1
  %idxprom173 = sext i32 %sub172 to i64
  %arrayidx174 = getelementptr inbounds [1000 x double], ptr %arrayidx171, i64 0, i64 %idxprom173
  %147 = load double, ptr %arrayidx174, align 8, !tbaa !12
  %neg176 = fneg double %143
  %148 = call double @llvm.fmuladd.f64(double %neg176, double %147, double %142)
  %149 = load double, ptr %d, align 8, !tbaa !12
  %150 = load ptr, ptr %p.addr, align 8, !tbaa !9
  %151 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom177 = sext i32 %151 to i64
  %arrayidx178 = getelementptr inbounds [1000 x double], ptr %150, i64 %idxprom177
  %152 = load i32, ptr %j, align 4, !tbaa !5
  %sub179 = sub nsw i32 %152, 1
  %idxprom180 = sext i32 %sub179 to i64
  %arrayidx181 = getelementptr inbounds [1000 x double], ptr %arrayidx178, i64 0, i64 %idxprom180
  %153 = load double, ptr %arrayidx181, align 8, !tbaa !12
  %154 = load double, ptr %e, align 8, !tbaa !12
  %155 = call double @llvm.fmuladd.f64(double %149, double %153, double %154)
  %div183 = fdiv double %148, %155
  %156 = load ptr, ptr %q.addr, align 8, !tbaa !9
  %157 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom184 = sext i32 %157 to i64
  %arrayidx185 = getelementptr inbounds [1000 x double], ptr %156, i64 %idxprom184
  %158 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom186 = sext i32 %158 to i64
  %arrayidx187 = getelementptr inbounds [1000 x double], ptr %arrayidx185, i64 0, i64 %idxprom186
  store double %div183, ptr %arrayidx187, align 8, !tbaa !12
  br label %for.inc188

for.inc188:                                       ; preds = %for.body137
  %159 = load i32, ptr %j, align 4, !tbaa !5
  %inc189 = add nsw i32 %159, 1
  store i32 %inc189, ptr %j, align 4, !tbaa !5
  br label %for.cond133, !llvm.loop !36

for.end190:                                       ; preds = %for.cond133
  %160 = load ptr, ptr %u.addr, align 8, !tbaa !9
  %161 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom191 = sext i32 %161 to i64
  %arrayidx192 = getelementptr inbounds [1000 x double], ptr %160, i64 %idxprom191
  %162 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub193 = sub nsw i32 %162, 1
  %idxprom194 = sext i32 %sub193 to i64
  %arrayidx195 = getelementptr inbounds [1000 x double], ptr %arrayidx192, i64 0, i64 %idxprom194
  store double 1.000000e+00, ptr %arrayidx195, align 8, !tbaa !12
  %163 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub196 = sub nsw i32 %163, 2
  store i32 %sub196, ptr %j, align 4, !tbaa !5
  br label %for.cond197

for.cond197:                                      ; preds = %for.inc219, %for.end190
  %164 = load i32, ptr %j, align 4, !tbaa !5
  %cmp198 = icmp sge i32 %164, 1
  br i1 %cmp198, label %for.body200, label %for.end221

for.body200:                                      ; preds = %for.cond197
  %165 = load ptr, ptr %p.addr, align 8, !tbaa !9
  %166 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom201 = sext i32 %166 to i64
  %arrayidx202 = getelementptr inbounds [1000 x double], ptr %165, i64 %idxprom201
  %167 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom203 = sext i32 %167 to i64
  %arrayidx204 = getelementptr inbounds [1000 x double], ptr %arrayidx202, i64 0, i64 %idxprom203
  %168 = load double, ptr %arrayidx204, align 8, !tbaa !12
  %169 = load ptr, ptr %u.addr, align 8, !tbaa !9
  %170 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom205 = sext i32 %170 to i64
  %arrayidx206 = getelementptr inbounds [1000 x double], ptr %169, i64 %idxprom205
  %171 = load i32, ptr %j, align 4, !tbaa !5
  %add207 = add nsw i32 %171, 1
  %idxprom208 = sext i32 %add207 to i64
  %arrayidx209 = getelementptr inbounds [1000 x double], ptr %arrayidx206, i64 0, i64 %idxprom208
  %172 = load double, ptr %arrayidx209, align 8, !tbaa !12
  %173 = load ptr, ptr %q.addr, align 8, !tbaa !9
  %174 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom211 = sext i32 %174 to i64
  %arrayidx212 = getelementptr inbounds [1000 x double], ptr %173, i64 %idxprom211
  %175 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom213 = sext i32 %175 to i64
  %arrayidx214 = getelementptr inbounds [1000 x double], ptr %arrayidx212, i64 0, i64 %idxprom213
  %176 = load double, ptr %arrayidx214, align 8, !tbaa !12
  %177 = call double @llvm.fmuladd.f64(double %168, double %172, double %176)
  %178 = load ptr, ptr %u.addr, align 8, !tbaa !9
  %179 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom215 = sext i32 %179 to i64
  %arrayidx216 = getelementptr inbounds [1000 x double], ptr %178, i64 %idxprom215
  %180 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom217 = sext i32 %180 to i64
  %arrayidx218 = getelementptr inbounds [1000 x double], ptr %arrayidx216, i64 0, i64 %idxprom217
  store double %177, ptr %arrayidx218, align 8, !tbaa !12
  br label %for.inc219

for.inc219:                                       ; preds = %for.body200
  %181 = load i32, ptr %j, align 4, !tbaa !5
  %dec220 = add nsw i32 %181, -1
  store i32 %dec220, ptr %j, align 4, !tbaa !5
  br label %for.cond197, !llvm.loop !37

for.end221:                                       ; preds = %for.cond197
  br label %for.inc222

for.inc222:                                       ; preds = %for.end221
  %182 = load i32, ptr %i, align 4, !tbaa !5
  %inc223 = add nsw i32 %182, 1
  store i32 %inc223, ptr %i, align 4, !tbaa !5
  br label %for.cond116, !llvm.loop !38

for.end224:                                       ; preds = %for.cond116
  br label %for.inc225

for.inc225:                                       ; preds = %for.end224
  %183 = load i32, ptr %t, align 4, !tbaa !5
  %inc226 = add nsw i32 %183, 1
  store i32 %inc226, ptr %t, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !39

for.end227:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %mul2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %mul1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %B2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %B1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %DT) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %DY) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %DX) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #8
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #7

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 noundef %n, ptr noundef %u) #0 {
entry:
  %n.addr = alloca i32, align 4
  %u.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %u, ptr %u.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  %0 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.1.6) #8
  %1 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.2.7, ptr noundef @.str.3.8) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %n.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %6, %7
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %mul, %8
  %rem = srem i32 %add, 20
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %9 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.4.9) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  %10 = load ptr, ptr @stderr, align 8, !tbaa !24
  %11 = load ptr, ptr %u.addr, align 8, !tbaa !9
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [1000 x double], ptr %11, i64 %idxprom
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds [1000 x double], ptr %arrayidx, i64 0, i64 %idxprom7
  %14 = load double, ptr %arrayidx8, align 8, !tbaa !12
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.5.10, double noundef %14) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !40

for.end:                                          ; preds = %for.cond2
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc11 = add nsw i32 %16, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !41

for.end12:                                        ; preds = %for.cond
  %17 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.6, ptr noundef @.str.3.8) #8
  %18 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.7) #8
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
!26 = !{!27, !27, i64 0}
!27 = !{!"p2 omnipotent char", !28, i64 0}
!28 = !{!"any p2 pointer", !11, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 omnipotent char", !11, i64 0}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !15}
