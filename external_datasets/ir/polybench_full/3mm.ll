; ModuleID = '/root/exp/RFunipassLab/external_datasets/build/ir_build/polybench_full/3mm/3mm.linked.bc'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"G\00", align 1
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
  %ni = alloca i32, align 4
  %nj = alloca i32, align 4
  %nk = alloca i32, align 4
  %nl = alloca i32, align 4
  %nm = alloca i32, align 4
  %E = alloca ptr, align 8
  %A = alloca ptr, align 8
  %B = alloca ptr, align 8
  %F = alloca ptr, align 8
  %C = alloca ptr, align 8
  %D = alloca ptr, align 8
  %G = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %ni) #8
  store i32 800, ptr %ni, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nj) #8
  store i32 900, ptr %nj, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nk) #8
  store i32 1000, ptr %nk, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nl) #8
  store i32 1100, ptr %nl, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nm) #8
  store i32 1200, ptr %nm, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %E) #8
  %call = call ptr @polybench_alloc_data(i64 noundef 720000, i32 noundef 8)
  store ptr %call, ptr %E, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %A) #8
  %call1 = call ptr @polybench_alloc_data(i64 noundef 800000, i32 noundef 8)
  store ptr %call1, ptr %A, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %B) #8
  %call2 = call ptr @polybench_alloc_data(i64 noundef 900000, i32 noundef 8)
  store ptr %call2, ptr %B, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %F) #8
  %call3 = call ptr @polybench_alloc_data(i64 noundef 990000, i32 noundef 8)
  store ptr %call3, ptr %F, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %C) #8
  %call4 = call ptr @polybench_alloc_data(i64 noundef 1080000, i32 noundef 8)
  store ptr %call4, ptr %C, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %D) #8
  %call5 = call ptr @polybench_alloc_data(i64 noundef 1320000, i32 noundef 8)
  store ptr %call5, ptr %D, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %G) #8
  %call6 = call ptr @polybench_alloc_data(i64 noundef 880000, i32 noundef 8)
  store ptr %call6, ptr %G, align 8, !tbaa !9
  %0 = load i32, ptr %ni, align 4, !tbaa !5
  %1 = load i32, ptr %nj, align 4, !tbaa !5
  %2 = load i32, ptr %nk, align 4, !tbaa !5
  %3 = load i32, ptr %nl, align 4, !tbaa !5
  %4 = load i32, ptr %nm, align 4, !tbaa !5
  %5 = load ptr, ptr %A, align 8, !tbaa !9
  %arraydecay = getelementptr inbounds [800 x [1000 x double]], ptr %5, i64 0, i64 0
  %6 = load ptr, ptr %B, align 8, !tbaa !9
  %arraydecay7 = getelementptr inbounds [1000 x [900 x double]], ptr %6, i64 0, i64 0
  %7 = load ptr, ptr %C, align 8, !tbaa !9
  %arraydecay8 = getelementptr inbounds [900 x [1200 x double]], ptr %7, i64 0, i64 0
  %8 = load ptr, ptr %D, align 8, !tbaa !9
  %arraydecay9 = getelementptr inbounds [1200 x [1100 x double]], ptr %8, i64 0, i64 0
  call void @init_array(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %arraydecay, ptr noundef %arraydecay7, ptr noundef %arraydecay8, ptr noundef %arraydecay9)
  call void (...) @polybench_timer_start()
  %9 = load i32, ptr %ni, align 4, !tbaa !5
  %10 = load i32, ptr %nj, align 4, !tbaa !5
  %11 = load i32, ptr %nk, align 4, !tbaa !5
  %12 = load i32, ptr %nl, align 4, !tbaa !5
  %13 = load i32, ptr %nm, align 4, !tbaa !5
  %14 = load ptr, ptr %E, align 8, !tbaa !9
  %arraydecay10 = getelementptr inbounds [800 x [900 x double]], ptr %14, i64 0, i64 0
  %15 = load ptr, ptr %A, align 8, !tbaa !9
  %arraydecay11 = getelementptr inbounds [800 x [1000 x double]], ptr %15, i64 0, i64 0
  %16 = load ptr, ptr %B, align 8, !tbaa !9
  %arraydecay12 = getelementptr inbounds [1000 x [900 x double]], ptr %16, i64 0, i64 0
  %17 = load ptr, ptr %F, align 8, !tbaa !9
  %arraydecay13 = getelementptr inbounds [900 x [1100 x double]], ptr %17, i64 0, i64 0
  %18 = load ptr, ptr %C, align 8, !tbaa !9
  %arraydecay14 = getelementptr inbounds [900 x [1200 x double]], ptr %18, i64 0, i64 0
  %19 = load ptr, ptr %D, align 8, !tbaa !9
  %arraydecay15 = getelementptr inbounds [1200 x [1100 x double]], ptr %19, i64 0, i64 0
  %20 = load ptr, ptr %G, align 8, !tbaa !9
  %arraydecay16 = getelementptr inbounds [800 x [1100 x double]], ptr %20, i64 0, i64 0
  call void @kernel_3mm(i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef %arraydecay10, ptr noundef %arraydecay11, ptr noundef %arraydecay12, ptr noundef %arraydecay13, ptr noundef %arraydecay14, ptr noundef %arraydecay15, ptr noundef %arraydecay16)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %21 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %21, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %22 = load ptr, ptr %argv.addr, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds ptr, ptr %22, i64 0
  %23 = load ptr, ptr %arrayidx, align 8, !tbaa !29
  %call17 = call i32 @strcmp(ptr noundef %23, ptr noundef @.str.5) #11
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %24 = load i32, ptr %ni, align 4, !tbaa !5
  %25 = load i32, ptr %nl, align 4, !tbaa !5
  %26 = load ptr, ptr %G, align 8, !tbaa !9
  %arraydecay18 = getelementptr inbounds [800 x [1100 x double]], ptr %26, i64 0, i64 0
  call void @print_array(i32 noundef %24, i32 noundef %25, ptr noundef %arraydecay18)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %27 = load ptr, ptr %E, align 8, !tbaa !9
  call void @free(ptr noundef %27) #8
  %28 = load ptr, ptr %A, align 8, !tbaa !9
  call void @free(ptr noundef %28) #8
  %29 = load ptr, ptr %B, align 8, !tbaa !9
  call void @free(ptr noundef %29) #8
  %30 = load ptr, ptr %F, align 8, !tbaa !9
  call void @free(ptr noundef %30) #8
  %31 = load ptr, ptr %C, align 8, !tbaa !9
  call void @free(ptr noundef %31) #8
  %32 = load ptr, ptr %D, align 8, !tbaa !9
  call void @free(ptr noundef %32) #8
  %33 = load ptr, ptr %G, align 8, !tbaa !9
  call void @free(ptr noundef %33) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %G) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %D) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %C) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %F) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %B) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %A) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %E) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %nm) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %nl) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %nk) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %nj) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ni) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, ptr noundef %A, ptr noundef %B, ptr noundef %C, ptr noundef %D) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %nm.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %C.addr = alloca ptr, align 8
  %D.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, ptr %ni.addr, align 4, !tbaa !5
  store i32 %nj, ptr %nj.addr, align 4, !tbaa !5
  store i32 %nk, ptr %nk.addr, align 4, !tbaa !5
  store i32 %nl, ptr %nl.addr, align 4, !tbaa !5
  store i32 %nm, ptr %nm.addr, align 4, !tbaa !5
  store ptr %A, ptr %A.addr, align 8, !tbaa !9
  store ptr %B, ptr %B.addr, align 8, !tbaa !9
  store ptr %C, ptr %C.addr, align 8, !tbaa !9
  store ptr %D, ptr %D.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %ni.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %nk.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %mul = mul nsw i32 %4, %5
  %add = add nsw i32 %mul, 1
  %6 = load i32, ptr %ni.addr, align 4, !tbaa !5
  %rem = srem i32 %add, %6
  %conv = sitofp i32 %rem to double
  %7 = load i32, ptr %ni.addr, align 4, !tbaa !5
  %mul4 = mul nsw i32 5, %7
  %conv5 = sitofp i32 %mul4 to double
  %div = fdiv double %conv, %conv5
  %8 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [1000 x double], ptr %8, i64 %idxprom
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [1000 x double], ptr %arrayidx, i64 0, i64 %idxprom6
  store double %div, ptr %arrayidx7, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !31

for.end:                                          ; preds = %for.cond1
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %inc9 = add nsw i32 %12, 1
  store i32 %inc9, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !32

for.end10:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc34, %for.end10
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %14 = load i32, ptr %nk.addr, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %13, %14
  br i1 %cmp12, label %for.body14, label %for.end36

for.body14:                                       ; preds = %for.cond11
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc31, %for.body14
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %16 = load i32, ptr %nj.addr, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %15, %16
  br i1 %cmp16, label %for.body18, label %for.end33

for.body18:                                       ; preds = %for.cond15
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %add19 = add nsw i32 %18, 1
  %mul20 = mul nsw i32 %17, %add19
  %add21 = add nsw i32 %mul20, 2
  %19 = load i32, ptr %nj.addr, align 4, !tbaa !5
  %rem22 = srem i32 %add21, %19
  %conv23 = sitofp i32 %rem22 to double
  %20 = load i32, ptr %nj.addr, align 4, !tbaa !5
  %mul24 = mul nsw i32 5, %20
  %conv25 = sitofp i32 %mul24 to double
  %div26 = fdiv double %conv23, %conv25
  %21 = load ptr, ptr %B.addr, align 8, !tbaa !9
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds [900 x double], ptr %21, i64 %idxprom27
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom29 = sext i32 %23 to i64
  %arrayidx30 = getelementptr inbounds [900 x double], ptr %arrayidx28, i64 0, i64 %idxprom29
  store double %div26, ptr %arrayidx30, align 8, !tbaa !12
  br label %for.inc31

for.inc31:                                        ; preds = %for.body18
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %inc32 = add nsw i32 %24, 1
  store i32 %inc32, ptr %j, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !33

for.end33:                                        ; preds = %for.cond15
  br label %for.inc34

for.inc34:                                        ; preds = %for.end33
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %inc35 = add nsw i32 %25, 1
  store i32 %inc35, ptr %i, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !34

for.end36:                                        ; preds = %for.cond11
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc59, %for.end36
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %27 = load i32, ptr %nj.addr, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %26, %27
  br i1 %cmp38, label %for.body40, label %for.end61

for.body40:                                       ; preds = %for.cond37
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc56, %for.body40
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %29 = load i32, ptr %nm.addr, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %28, %29
  br i1 %cmp42, label %for.body44, label %for.end58

for.body44:                                       ; preds = %for.cond41
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %add45 = add nsw i32 %31, 3
  %mul46 = mul nsw i32 %30, %add45
  %32 = load i32, ptr %nl.addr, align 4, !tbaa !5
  %rem47 = srem i32 %mul46, %32
  %conv48 = sitofp i32 %rem47 to double
  %33 = load i32, ptr %nl.addr, align 4, !tbaa !5
  %mul49 = mul nsw i32 5, %33
  %conv50 = sitofp i32 %mul49 to double
  %div51 = fdiv double %conv48, %conv50
  %34 = load ptr, ptr %C.addr, align 8, !tbaa !9
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom52 = sext i32 %35 to i64
  %arrayidx53 = getelementptr inbounds [1200 x double], ptr %34, i64 %idxprom52
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom54 = sext i32 %36 to i64
  %arrayidx55 = getelementptr inbounds [1200 x double], ptr %arrayidx53, i64 0, i64 %idxprom54
  store double %div51, ptr %arrayidx55, align 8, !tbaa !12
  br label %for.inc56

for.inc56:                                        ; preds = %for.body44
  %37 = load i32, ptr %j, align 4, !tbaa !5
  %inc57 = add nsw i32 %37, 1
  store i32 %inc57, ptr %j, align 4, !tbaa !5
  br label %for.cond41, !llvm.loop !35

for.end58:                                        ; preds = %for.cond41
  br label %for.inc59

for.inc59:                                        ; preds = %for.end58
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %inc60 = add nsw i32 %38, 1
  store i32 %inc60, ptr %i, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !36

for.end61:                                        ; preds = %for.cond37
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc85, %for.end61
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %40 = load i32, ptr %nm.addr, align 4, !tbaa !5
  %cmp63 = icmp slt i32 %39, %40
  br i1 %cmp63, label %for.body65, label %for.end87

for.body65:                                       ; preds = %for.cond62
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc82, %for.body65
  %41 = load i32, ptr %j, align 4, !tbaa !5
  %42 = load i32, ptr %nl.addr, align 4, !tbaa !5
  %cmp67 = icmp slt i32 %41, %42
  br i1 %cmp67, label %for.body69, label %for.end84

for.body69:                                       ; preds = %for.cond66
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %44 = load i32, ptr %j, align 4, !tbaa !5
  %add70 = add nsw i32 %44, 2
  %mul71 = mul nsw i32 %43, %add70
  %add72 = add nsw i32 %mul71, 2
  %45 = load i32, ptr %nk.addr, align 4, !tbaa !5
  %rem73 = srem i32 %add72, %45
  %conv74 = sitofp i32 %rem73 to double
  %46 = load i32, ptr %nk.addr, align 4, !tbaa !5
  %mul75 = mul nsw i32 5, %46
  %conv76 = sitofp i32 %mul75 to double
  %div77 = fdiv double %conv74, %conv76
  %47 = load ptr, ptr %D.addr, align 8, !tbaa !9
  %48 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom78 = sext i32 %48 to i64
  %arrayidx79 = getelementptr inbounds [1100 x double], ptr %47, i64 %idxprom78
  %49 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom80 = sext i32 %49 to i64
  %arrayidx81 = getelementptr inbounds [1100 x double], ptr %arrayidx79, i64 0, i64 %idxprom80
  store double %div77, ptr %arrayidx81, align 8, !tbaa !12
  br label %for.inc82

for.inc82:                                        ; preds = %for.body69
  %50 = load i32, ptr %j, align 4, !tbaa !5
  %inc83 = add nsw i32 %50, 1
  store i32 %inc83, ptr %j, align 4, !tbaa !5
  br label %for.cond66, !llvm.loop !37

for.end84:                                        ; preds = %for.cond66
  br label %for.inc85

for.inc85:                                        ; preds = %for.end84
  %51 = load i32, ptr %i, align 4, !tbaa !5
  %inc86 = add nsw i32 %51, 1
  store i32 %inc86, ptr %i, align 4, !tbaa !5
  br label %for.cond62, !llvm.loop !38

for.end87:                                        ; preds = %for.cond62
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kernel_3mm(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, ptr noundef %E, ptr noundef %A, ptr noundef %B, ptr noundef %F, ptr noundef %C, ptr noundef %D, ptr noundef %G) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %nm.addr = alloca i32, align 4
  %E.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %F.addr = alloca ptr, align 8
  %C.addr = alloca ptr, align 8
  %D.addr = alloca ptr, align 8
  %G.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %ni, ptr %ni.addr, align 4, !tbaa !5
  store i32 %nj, ptr %nj.addr, align 4, !tbaa !5
  store i32 %nk, ptr %nk.addr, align 4, !tbaa !5
  store i32 %nl, ptr %nl.addr, align 4, !tbaa !5
  store i32 %nm, ptr %nm.addr, align 4, !tbaa !5
  store ptr %E, ptr %E.addr, align 8, !tbaa !9
  store ptr %A, ptr %A.addr, align 8, !tbaa !9
  store ptr %B, ptr %B.addr, align 8, !tbaa !9
  store ptr %F, ptr %F.addr, align 8, !tbaa !9
  store ptr %C, ptr %C.addr, align 8, !tbaa !9
  store ptr %D, ptr %D.addr, align 8, !tbaa !9
  store ptr %G, ptr %G.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %ni.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc21, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %nj.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end23

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %E.addr, align 8, !tbaa !9
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [900 x double], ptr %4, i64 %idxprom
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [900 x double], ptr %arrayidx, i64 0, i64 %idxprom4
  store double 0.000000e+00, ptr %arrayidx5, align 8, !tbaa !12
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body3
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %8 = load i32, ptr %nk.addr, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %7, %8
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %9 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [1000 x double], ptr %9, i64 %idxprom9
  %11 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [1000 x double], ptr %arrayidx10, i64 0, i64 %idxprom11
  %12 = load double, ptr %arrayidx12, align 8, !tbaa !12
  %13 = load ptr, ptr %B.addr, align 8, !tbaa !9
  %14 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds [900 x double], ptr %13, i64 %idxprom13
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [900 x double], ptr %arrayidx14, i64 0, i64 %idxprom15
  %16 = load double, ptr %arrayidx16, align 8, !tbaa !12
  %17 = load ptr, ptr %E.addr, align 8, !tbaa !9
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds [900 x double], ptr %17, i64 %idxprom17
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds [900 x double], ptr %arrayidx18, i64 0, i64 %idxprom19
  %20 = load double, ptr %arrayidx20, align 8, !tbaa !12
  %21 = call double @llvm.fmuladd.f64(double %12, double %16, double %20)
  store double %21, ptr %arrayidx20, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %22 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !39

for.end:                                          ; preds = %for.cond6
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %inc22 = add nsw i32 %23, 1
  store i32 %inc22, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !40

for.end23:                                        ; preds = %for.cond1
  br label %for.inc24

for.inc24:                                        ; preds = %for.end23
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %inc25 = add nsw i32 %24, 1
  store i32 %inc25, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !41

for.end26:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc58, %for.end26
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %26 = load i32, ptr %nj.addr, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %25, %26
  br i1 %cmp28, label %for.body29, label %for.end60

for.body29:                                       ; preds = %for.cond27
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc55, %for.body29
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %28 = load i32, ptr %nl.addr, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %27, %28
  br i1 %cmp31, label %for.body32, label %for.end57

for.body32:                                       ; preds = %for.cond30
  %29 = load ptr, ptr %F.addr, align 8, !tbaa !9
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %30 to i64
  %arrayidx34 = getelementptr inbounds [1100 x double], ptr %29, i64 %idxprom33
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom35 = sext i32 %31 to i64
  %arrayidx36 = getelementptr inbounds [1100 x double], ptr %arrayidx34, i64 0, i64 %idxprom35
  store double 0.000000e+00, ptr %arrayidx36, align 8, !tbaa !12
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc52, %for.body32
  %32 = load i32, ptr %k, align 4, !tbaa !5
  %33 = load i32, ptr %nm.addr, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %32, %33
  br i1 %cmp38, label %for.body39, label %for.end54

for.body39:                                       ; preds = %for.cond37
  %34 = load ptr, ptr %C.addr, align 8, !tbaa !9
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %35 to i64
  %arrayidx41 = getelementptr inbounds [1200 x double], ptr %34, i64 %idxprom40
  %36 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom42 = sext i32 %36 to i64
  %arrayidx43 = getelementptr inbounds [1200 x double], ptr %arrayidx41, i64 0, i64 %idxprom42
  %37 = load double, ptr %arrayidx43, align 8, !tbaa !12
  %38 = load ptr, ptr %D.addr, align 8, !tbaa !9
  %39 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom44 = sext i32 %39 to i64
  %arrayidx45 = getelementptr inbounds [1100 x double], ptr %38, i64 %idxprom44
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom46 = sext i32 %40 to i64
  %arrayidx47 = getelementptr inbounds [1100 x double], ptr %arrayidx45, i64 0, i64 %idxprom46
  %41 = load double, ptr %arrayidx47, align 8, !tbaa !12
  %42 = load ptr, ptr %F.addr, align 8, !tbaa !9
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %43 to i64
  %arrayidx49 = getelementptr inbounds [1100 x double], ptr %42, i64 %idxprom48
  %44 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom50 = sext i32 %44 to i64
  %arrayidx51 = getelementptr inbounds [1100 x double], ptr %arrayidx49, i64 0, i64 %idxprom50
  %45 = load double, ptr %arrayidx51, align 8, !tbaa !12
  %46 = call double @llvm.fmuladd.f64(double %37, double %41, double %45)
  store double %46, ptr %arrayidx51, align 8, !tbaa !12
  br label %for.inc52

for.inc52:                                        ; preds = %for.body39
  %47 = load i32, ptr %k, align 4, !tbaa !5
  %inc53 = add nsw i32 %47, 1
  store i32 %inc53, ptr %k, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !42

for.end54:                                        ; preds = %for.cond37
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %48 = load i32, ptr %j, align 4, !tbaa !5
  %inc56 = add nsw i32 %48, 1
  store i32 %inc56, ptr %j, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !43

for.end57:                                        ; preds = %for.cond30
  br label %for.inc58

for.inc58:                                        ; preds = %for.end57
  %49 = load i32, ptr %i, align 4, !tbaa !5
  %inc59 = add nsw i32 %49, 1
  store i32 %inc59, ptr %i, align 4, !tbaa !5
  br label %for.cond27, !llvm.loop !44

for.end60:                                        ; preds = %for.cond27
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc92, %for.end60
  %50 = load i32, ptr %i, align 4, !tbaa !5
  %51 = load i32, ptr %ni.addr, align 4, !tbaa !5
  %cmp62 = icmp slt i32 %50, %51
  br i1 %cmp62, label %for.body63, label %for.end94

for.body63:                                       ; preds = %for.cond61
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc89, %for.body63
  %52 = load i32, ptr %j, align 4, !tbaa !5
  %53 = load i32, ptr %nl.addr, align 4, !tbaa !5
  %cmp65 = icmp slt i32 %52, %53
  br i1 %cmp65, label %for.body66, label %for.end91

for.body66:                                       ; preds = %for.cond64
  %54 = load ptr, ptr %G.addr, align 8, !tbaa !9
  %55 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom67 = sext i32 %55 to i64
  %arrayidx68 = getelementptr inbounds [1100 x double], ptr %54, i64 %idxprom67
  %56 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom69 = sext i32 %56 to i64
  %arrayidx70 = getelementptr inbounds [1100 x double], ptr %arrayidx68, i64 0, i64 %idxprom69
  store double 0.000000e+00, ptr %arrayidx70, align 8, !tbaa !12
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc86, %for.body66
  %57 = load i32, ptr %k, align 4, !tbaa !5
  %58 = load i32, ptr %nj.addr, align 4, !tbaa !5
  %cmp72 = icmp slt i32 %57, %58
  br i1 %cmp72, label %for.body73, label %for.end88

for.body73:                                       ; preds = %for.cond71
  %59 = load ptr, ptr %E.addr, align 8, !tbaa !9
  %60 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom74 = sext i32 %60 to i64
  %arrayidx75 = getelementptr inbounds [900 x double], ptr %59, i64 %idxprom74
  %61 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom76 = sext i32 %61 to i64
  %arrayidx77 = getelementptr inbounds [900 x double], ptr %arrayidx75, i64 0, i64 %idxprom76
  %62 = load double, ptr %arrayidx77, align 8, !tbaa !12
  %63 = load ptr, ptr %F.addr, align 8, !tbaa !9
  %64 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom78 = sext i32 %64 to i64
  %arrayidx79 = getelementptr inbounds [1100 x double], ptr %63, i64 %idxprom78
  %65 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom80 = sext i32 %65 to i64
  %arrayidx81 = getelementptr inbounds [1100 x double], ptr %arrayidx79, i64 0, i64 %idxprom80
  %66 = load double, ptr %arrayidx81, align 8, !tbaa !12
  %67 = load ptr, ptr %G.addr, align 8, !tbaa !9
  %68 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom82 = sext i32 %68 to i64
  %arrayidx83 = getelementptr inbounds [1100 x double], ptr %67, i64 %idxprom82
  %69 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom84 = sext i32 %69 to i64
  %arrayidx85 = getelementptr inbounds [1100 x double], ptr %arrayidx83, i64 0, i64 %idxprom84
  %70 = load double, ptr %arrayidx85, align 8, !tbaa !12
  %71 = call double @llvm.fmuladd.f64(double %62, double %66, double %70)
  store double %71, ptr %arrayidx85, align 8, !tbaa !12
  br label %for.inc86

for.inc86:                                        ; preds = %for.body73
  %72 = load i32, ptr %k, align 4, !tbaa !5
  %inc87 = add nsw i32 %72, 1
  store i32 %inc87, ptr %k, align 4, !tbaa !5
  br label %for.cond71, !llvm.loop !45

for.end88:                                        ; preds = %for.cond71
  br label %for.inc89

for.inc89:                                        ; preds = %for.end88
  %73 = load i32, ptr %j, align 4, !tbaa !5
  %inc90 = add nsw i32 %73, 1
  store i32 %inc90, ptr %j, align 4, !tbaa !5
  br label %for.cond64, !llvm.loop !46

for.end91:                                        ; preds = %for.cond64
  br label %for.inc92

for.inc92:                                        ; preds = %for.end91
  %74 = load i32, ptr %i, align 4, !tbaa !5
  %inc93 = add nsw i32 %74, 1
  store i32 %inc93, ptr %i, align 4, !tbaa !5
  br label %for.cond61, !llvm.loop !47

for.end94:                                        ; preds = %for.cond61
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #7

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nl, ptr noundef %G) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %G.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, ptr %ni.addr, align 4, !tbaa !5
  store i32 %nl, ptr %nl.addr, align 4, !tbaa !5
  store ptr %G, ptr %G.addr, align 8, !tbaa !9
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
  %3 = load i32, ptr %ni.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %nl.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %ni.addr, align 4, !tbaa !5
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
  %11 = load ptr, ptr %G.addr, align 8, !tbaa !9
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [1100 x double], ptr %11, i64 %idxprom
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds [1100 x double], ptr %arrayidx, i64 0, i64 %idxprom7
  %14 = load double, ptr %arrayidx8, align 8, !tbaa !12
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.5.10, double noundef %14) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !48

for.end:                                          ; preds = %for.cond2
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc11 = add nsw i32 %16, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !49

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
!42 = distinct !{!42, !15}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15}
!49 = distinct !{!49, !15}
