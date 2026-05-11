; ModuleID = '/root/exp/RFunipassLab/external_datasets/build/ir_build/polybench_full/gemver/gemver.linked.bc'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
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
  %alpha = alloca double, align 8
  %beta = alloca double, align 8
  %A = alloca ptr, align 8
  %u1 = alloca ptr, align 8
  %v1 = alloca ptr, align 8
  %u2 = alloca ptr, align 8
  %v2 = alloca ptr, align 8
  %w = alloca ptr, align 8
  %x = alloca ptr, align 8
  %y = alloca ptr, align 8
  %z = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8
  store i32 2000, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %A) #8
  %call = call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8)
  store ptr %call, ptr %A, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %u1) #8
  %call1 = call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  store ptr %call1, ptr %u1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %v1) #8
  %call2 = call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  store ptr %call2, ptr %v1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %u2) #8
  %call3 = call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  store ptr %call3, ptr %u2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %v2) #8
  %call4 = call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  store ptr %call4, ptr %v2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #8
  %call5 = call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  store ptr %call5, ptr %w, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #8
  %call6 = call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  store ptr %call6, ptr %x, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #8
  %call7 = call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  store ptr %call7, ptr %y, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %z) #8
  %call8 = call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  store ptr %call8, ptr %z, align 8, !tbaa !9
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = load ptr, ptr %A, align 8, !tbaa !9
  %arraydecay = getelementptr inbounds [2000 x [2000 x double]], ptr %1, i64 0, i64 0
  %2 = load ptr, ptr %u1, align 8, !tbaa !9
  %arraydecay9 = getelementptr inbounds [2000 x double], ptr %2, i64 0, i64 0
  %3 = load ptr, ptr %v1, align 8, !tbaa !9
  %arraydecay10 = getelementptr inbounds [2000 x double], ptr %3, i64 0, i64 0
  %4 = load ptr, ptr %u2, align 8, !tbaa !9
  %arraydecay11 = getelementptr inbounds [2000 x double], ptr %4, i64 0, i64 0
  %5 = load ptr, ptr %v2, align 8, !tbaa !9
  %arraydecay12 = getelementptr inbounds [2000 x double], ptr %5, i64 0, i64 0
  %6 = load ptr, ptr %w, align 8, !tbaa !9
  %arraydecay13 = getelementptr inbounds [2000 x double], ptr %6, i64 0, i64 0
  %7 = load ptr, ptr %x, align 8, !tbaa !9
  %arraydecay14 = getelementptr inbounds [2000 x double], ptr %7, i64 0, i64 0
  %8 = load ptr, ptr %y, align 8, !tbaa !9
  %arraydecay15 = getelementptr inbounds [2000 x double], ptr %8, i64 0, i64 0
  %9 = load ptr, ptr %z, align 8, !tbaa !9
  %arraydecay16 = getelementptr inbounds [2000 x double], ptr %9, i64 0, i64 0
  call void @init_array(i32 noundef %0, ptr noundef %alpha, ptr noundef %beta, ptr noundef %arraydecay, ptr noundef %arraydecay9, ptr noundef %arraydecay10, ptr noundef %arraydecay11, ptr noundef %arraydecay12, ptr noundef %arraydecay13, ptr noundef %arraydecay14, ptr noundef %arraydecay15, ptr noundef %arraydecay16)
  call void (...) @polybench_timer_start()
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %11 = load double, ptr %alpha, align 8, !tbaa !12
  %12 = load double, ptr %beta, align 8, !tbaa !12
  %13 = load ptr, ptr %A, align 8, !tbaa !9
  %arraydecay17 = getelementptr inbounds [2000 x [2000 x double]], ptr %13, i64 0, i64 0
  %14 = load ptr, ptr %u1, align 8, !tbaa !9
  %arraydecay18 = getelementptr inbounds [2000 x double], ptr %14, i64 0, i64 0
  %15 = load ptr, ptr %v1, align 8, !tbaa !9
  %arraydecay19 = getelementptr inbounds [2000 x double], ptr %15, i64 0, i64 0
  %16 = load ptr, ptr %u2, align 8, !tbaa !9
  %arraydecay20 = getelementptr inbounds [2000 x double], ptr %16, i64 0, i64 0
  %17 = load ptr, ptr %v2, align 8, !tbaa !9
  %arraydecay21 = getelementptr inbounds [2000 x double], ptr %17, i64 0, i64 0
  %18 = load ptr, ptr %w, align 8, !tbaa !9
  %arraydecay22 = getelementptr inbounds [2000 x double], ptr %18, i64 0, i64 0
  %19 = load ptr, ptr %x, align 8, !tbaa !9
  %arraydecay23 = getelementptr inbounds [2000 x double], ptr %19, i64 0, i64 0
  %20 = load ptr, ptr %y, align 8, !tbaa !9
  %arraydecay24 = getelementptr inbounds [2000 x double], ptr %20, i64 0, i64 0
  %21 = load ptr, ptr %z, align 8, !tbaa !9
  %arraydecay25 = getelementptr inbounds [2000 x double], ptr %21, i64 0, i64 0
  call void @kernel_gemver(i32 noundef %10, double noundef %11, double noundef %12, ptr noundef %arraydecay17, ptr noundef %arraydecay18, ptr noundef %arraydecay19, ptr noundef %arraydecay20, ptr noundef %arraydecay21, ptr noundef %arraydecay22, ptr noundef %arraydecay23, ptr noundef %arraydecay24, ptr noundef %arraydecay25)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %22 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %22, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %23 = load ptr, ptr %argv.addr, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds ptr, ptr %23, i64 0
  %24 = load ptr, ptr %arrayidx, align 8, !tbaa !29
  %call26 = call i32 @strcmp(ptr noundef %24, ptr noundef @.str.5) #11
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %25 = load i32, ptr %n, align 4, !tbaa !5
  %26 = load ptr, ptr %w, align 8, !tbaa !9
  %arraydecay27 = getelementptr inbounds [2000 x double], ptr %26, i64 0, i64 0
  call void @print_array(i32 noundef %25, ptr noundef %arraydecay27)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %27 = load ptr, ptr %A, align 8, !tbaa !9
  call void @free(ptr noundef %27) #8
  %28 = load ptr, ptr %u1, align 8, !tbaa !9
  call void @free(ptr noundef %28) #8
  %29 = load ptr, ptr %v1, align 8, !tbaa !9
  call void @free(ptr noundef %29) #8
  %30 = load ptr, ptr %u2, align 8, !tbaa !9
  call void @free(ptr noundef %30) #8
  %31 = load ptr, ptr %v2, align 8, !tbaa !9
  call void @free(ptr noundef %31) #8
  %32 = load ptr, ptr %w, align 8, !tbaa !9
  call void @free(ptr noundef %32) #8
  %33 = load ptr, ptr %x, align 8, !tbaa !9
  call void @free(ptr noundef %33) #8
  %34 = load ptr, ptr %y, align 8, !tbaa !9
  call void @free(ptr noundef %34) #8
  %35 = load ptr, ptr %z, align 8, !tbaa !9
  call void @free(ptr noundef %35) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %z) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %v2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %u2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %v1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %u1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %A) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 noundef %n, ptr noundef %alpha, ptr noundef %beta, ptr noundef %A, ptr noundef %u1, ptr noundef %v1, ptr noundef %u2, ptr noundef %v2, ptr noundef %w, ptr noundef %x, ptr noundef %y, ptr noundef %z) #0 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %u1.addr = alloca ptr, align 8
  %v1.addr = alloca ptr, align 8
  %u2.addr = alloca ptr, align 8
  %v2.addr = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fn = alloca double, align 8
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %A, ptr %A.addr, align 8, !tbaa !9
  store ptr %u1, ptr %u1.addr, align 8, !tbaa !9
  store ptr %v1, ptr %v1.addr, align 8, !tbaa !9
  store ptr %u2, ptr %u2.addr, align 8, !tbaa !9
  store ptr %v2, ptr %v2.addr, align 8, !tbaa !9
  store ptr %w, ptr %w.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store ptr %z, ptr %z.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  %0 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  store double 1.500000e+00, ptr %0, align 8, !tbaa !12
  %1 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  store double 1.200000e+00, ptr %1, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %fn) #8
  %2 = load i32, ptr %n.addr, align 4, !tbaa !5
  %conv = sitofp i32 %2 to double
  store double %conv, ptr %fn, align 8, !tbaa !12
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc46, %entry
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %4 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end48

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %conv2 = sitofp i32 %5 to double
  %6 = load ptr, ptr %u1.addr, align 8, !tbaa !9
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds double, ptr %6, i64 %idxprom
  store double %conv2, ptr %arrayidx, align 8, !tbaa !12
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %8, 1
  %conv3 = sitofp i32 %add to double
  %9 = load double, ptr %fn, align 8, !tbaa !12
  %div = fdiv double %conv3, %9
  %div4 = fdiv double %div, 2.000000e+00
  %10 = load ptr, ptr %u2.addr, align 8, !tbaa !9
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds double, ptr %10, i64 %idxprom5
  store double %div4, ptr %arrayidx6, align 8, !tbaa !12
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %add7 = add nsw i32 %12, 1
  %conv8 = sitofp i32 %add7 to double
  %13 = load double, ptr %fn, align 8, !tbaa !12
  %div9 = fdiv double %conv8, %13
  %div10 = fdiv double %div9, 4.000000e+00
  %14 = load ptr, ptr %v1.addr, align 8, !tbaa !9
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds double, ptr %14, i64 %idxprom11
  store double %div10, ptr %arrayidx12, align 8, !tbaa !12
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %add13 = add nsw i32 %16, 1
  %conv14 = sitofp i32 %add13 to double
  %17 = load double, ptr %fn, align 8, !tbaa !12
  %div15 = fdiv double %conv14, %17
  %div16 = fdiv double %div15, 6.000000e+00
  %18 = load ptr, ptr %v2.addr, align 8, !tbaa !9
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds double, ptr %18, i64 %idxprom17
  store double %div16, ptr %arrayidx18, align 8, !tbaa !12
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %add19 = add nsw i32 %20, 1
  %conv20 = sitofp i32 %add19 to double
  %21 = load double, ptr %fn, align 8, !tbaa !12
  %div21 = fdiv double %conv20, %21
  %div22 = fdiv double %div21, 8.000000e+00
  %22 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %23 to i64
  %arrayidx24 = getelementptr inbounds double, ptr %22, i64 %idxprom23
  store double %div22, ptr %arrayidx24, align 8, !tbaa !12
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %add25 = add nsw i32 %24, 1
  %conv26 = sitofp i32 %add25 to double
  %25 = load double, ptr %fn, align 8, !tbaa !12
  %div27 = fdiv double %conv26, %25
  %div28 = fdiv double %div27, 9.000000e+00
  %26 = load ptr, ptr %z.addr, align 8, !tbaa !9
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %27 to i64
  %arrayidx30 = getelementptr inbounds double, ptr %26, i64 %idxprom29
  store double %div28, ptr %arrayidx30, align 8, !tbaa !12
  %28 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %29 to i64
  %arrayidx32 = getelementptr inbounds double, ptr %28, i64 %idxprom31
  store double 0.000000e+00, ptr %arrayidx32, align 8, !tbaa !12
  %30 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %31 to i64
  %arrayidx34 = getelementptr inbounds double, ptr %30, i64 %idxprom33
  store double 0.000000e+00, ptr %arrayidx34, align 8, !tbaa !12
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc, %for.body
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %33 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %32, %33
  br i1 %cmp36, label %for.body38, label %for.end

for.body38:                                       ; preds = %for.cond35
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %35 = load i32, ptr %j, align 4, !tbaa !5
  %mul = mul nsw i32 %34, %35
  %36 = load i32, ptr %n.addr, align 4, !tbaa !5
  %rem = srem i32 %mul, %36
  %conv39 = sitofp i32 %rem to double
  %37 = load i32, ptr %n.addr, align 4, !tbaa !5
  %conv40 = sitofp i32 %37 to double
  %div41 = fdiv double %conv39, %conv40
  %38 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %39 to i64
  %arrayidx43 = getelementptr inbounds [2000 x double], ptr %38, i64 %idxprom42
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom44 = sext i32 %40 to i64
  %arrayidx45 = getelementptr inbounds [2000 x double], ptr %arrayidx43, i64 0, i64 %idxprom44
  store double %div41, ptr %arrayidx45, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body38
  %41 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %41, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond35, !llvm.loop !31

for.end:                                          ; preds = %for.cond35
  br label %for.inc46

for.inc46:                                        ; preds = %for.end
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %inc47 = add nsw i32 %42, 1
  store i32 %inc47, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !32

for.end48:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %fn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kernel_gemver(i32 noundef %n, double noundef %alpha, double noundef %beta, ptr noundef %A, ptr noundef %u1, ptr noundef %v1, ptr noundef %u2, ptr noundef %v2, ptr noundef %w, ptr noundef %x, ptr noundef %y, ptr noundef %z) #0 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %beta.addr = alloca double, align 8
  %A.addr = alloca ptr, align 8
  %u1.addr = alloca ptr, align 8
  %v1.addr = alloca ptr, align 8
  %u2.addr = alloca ptr, align 8
  %v2.addr = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store double %alpha, ptr %alpha.addr, align 8, !tbaa !12
  store double %beta, ptr %beta.addr, align 8, !tbaa !12
  store ptr %A, ptr %A.addr, align 8, !tbaa !9
  store ptr %u1, ptr %u1.addr, align 8, !tbaa !9
  store ptr %v1, ptr %v1.addr, align 8, !tbaa !9
  store ptr %u2, ptr %u2.addr, align 8, !tbaa !9
  store ptr %v2, ptr %v2.addr, align 8, !tbaa !9
  store ptr %w, ptr %w.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store ptr %z, ptr %z.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [2000 x double], ptr %4, i64 %idxprom
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [2000 x double], ptr %arrayidx, i64 0, i64 %idxprom4
  %7 = load double, ptr %arrayidx5, align 8, !tbaa !12
  %8 = load ptr, ptr %u1.addr, align 8, !tbaa !9
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds double, ptr %8, i64 %idxprom6
  %10 = load double, ptr %arrayidx7, align 8, !tbaa !12
  %11 = load ptr, ptr %v1.addr, align 8, !tbaa !9
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds double, ptr %11, i64 %idxprom8
  %13 = load double, ptr %arrayidx9, align 8, !tbaa !12
  %14 = call double @llvm.fmuladd.f64(double %10, double %13, double %7)
  %15 = load ptr, ptr %u2.addr, align 8, !tbaa !9
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds double, ptr %15, i64 %idxprom10
  %17 = load double, ptr %arrayidx11, align 8, !tbaa !12
  %18 = load ptr, ptr %v2.addr, align 8, !tbaa !9
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom12 = sext i32 %19 to i64
  %arrayidx13 = getelementptr inbounds double, ptr %18, i64 %idxprom12
  %20 = load double, ptr %arrayidx13, align 8, !tbaa !12
  %21 = call double @llvm.fmuladd.f64(double %17, double %20, double %14)
  %22 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %23 to i64
  %arrayidx15 = getelementptr inbounds [2000 x double], ptr %22, i64 %idxprom14
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom16 = sext i32 %24 to i64
  %arrayidx17 = getelementptr inbounds [2000 x double], ptr %arrayidx15, i64 0, i64 %idxprom16
  store double %21, ptr %arrayidx17, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !33

for.end:                                          ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %inc19 = add nsw i32 %26, 1
  store i32 %inc19, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !34

for.end20:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc41, %for.end20
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %28 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %27, %28
  br i1 %cmp22, label %for.body23, label %for.end43

for.body23:                                       ; preds = %for.cond21
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc38, %for.body23
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %30 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %29, %30
  br i1 %cmp25, label %for.body26, label %for.end40

for.body26:                                       ; preds = %for.cond24
  %31 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %32 to i64
  %arrayidx28 = getelementptr inbounds double, ptr %31, i64 %idxprom27
  %33 = load double, ptr %arrayidx28, align 8, !tbaa !12
  %34 = load double, ptr %beta.addr, align 8, !tbaa !12
  %35 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom29 = sext i32 %36 to i64
  %arrayidx30 = getelementptr inbounds [2000 x double], ptr %35, i64 %idxprom29
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %37 to i64
  %arrayidx32 = getelementptr inbounds [2000 x double], ptr %arrayidx30, i64 0, i64 %idxprom31
  %38 = load double, ptr %arrayidx32, align 8, !tbaa !12
  %mul = fmul double %34, %38
  %39 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom33 = sext i32 %40 to i64
  %arrayidx34 = getelementptr inbounds double, ptr %39, i64 %idxprom33
  %41 = load double, ptr %arrayidx34, align 8, !tbaa !12
  %42 = call double @llvm.fmuladd.f64(double %mul, double %41, double %33)
  %43 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %44 to i64
  %arrayidx37 = getelementptr inbounds double, ptr %43, i64 %idxprom36
  store double %42, ptr %arrayidx37, align 8, !tbaa !12
  br label %for.inc38

for.inc38:                                        ; preds = %for.body26
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %inc39 = add nsw i32 %45, 1
  store i32 %inc39, ptr %j, align 4, !tbaa !5
  br label %for.cond24, !llvm.loop !35

for.end40:                                        ; preds = %for.cond24
  br label %for.inc41

for.inc41:                                        ; preds = %for.end40
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %inc42 = add nsw i32 %46, 1
  store i32 %inc42, ptr %i, align 4, !tbaa !5
  br label %for.cond21, !llvm.loop !36

for.end43:                                        ; preds = %for.cond21
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc53, %for.end43
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %48 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %47, %48
  br i1 %cmp45, label %for.body46, label %for.end55

for.body46:                                       ; preds = %for.cond44
  %49 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %50 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom47 = sext i32 %50 to i64
  %arrayidx48 = getelementptr inbounds double, ptr %49, i64 %idxprom47
  %51 = load double, ptr %arrayidx48, align 8, !tbaa !12
  %52 = load ptr, ptr %z.addr, align 8, !tbaa !9
  %53 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom49 = sext i32 %53 to i64
  %arrayidx50 = getelementptr inbounds double, ptr %52, i64 %idxprom49
  %54 = load double, ptr %arrayidx50, align 8, !tbaa !12
  %add = fadd double %51, %54
  %55 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %56 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom51 = sext i32 %56 to i64
  %arrayidx52 = getelementptr inbounds double, ptr %55, i64 %idxprom51
  store double %add, ptr %arrayidx52, align 8, !tbaa !12
  br label %for.inc53

for.inc53:                                        ; preds = %for.body46
  %57 = load i32, ptr %i, align 4, !tbaa !5
  %inc54 = add nsw i32 %57, 1
  store i32 %inc54, ptr %i, align 4, !tbaa !5
  br label %for.cond44, !llvm.loop !37

for.end55:                                        ; preds = %for.cond44
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc77, %for.end55
  %58 = load i32, ptr %i, align 4, !tbaa !5
  %59 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp57 = icmp slt i32 %58, %59
  br i1 %cmp57, label %for.body58, label %for.end79

for.body58:                                       ; preds = %for.cond56
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc74, %for.body58
  %60 = load i32, ptr %j, align 4, !tbaa !5
  %61 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp60 = icmp slt i32 %60, %61
  br i1 %cmp60, label %for.body61, label %for.end76

for.body61:                                       ; preds = %for.cond59
  %62 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %63 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom62 = sext i32 %63 to i64
  %arrayidx63 = getelementptr inbounds double, ptr %62, i64 %idxprom62
  %64 = load double, ptr %arrayidx63, align 8, !tbaa !12
  %65 = load double, ptr %alpha.addr, align 8, !tbaa !12
  %66 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %67 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom64 = sext i32 %67 to i64
  %arrayidx65 = getelementptr inbounds [2000 x double], ptr %66, i64 %idxprom64
  %68 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom66 = sext i32 %68 to i64
  %arrayidx67 = getelementptr inbounds [2000 x double], ptr %arrayidx65, i64 0, i64 %idxprom66
  %69 = load double, ptr %arrayidx67, align 8, !tbaa !12
  %mul68 = fmul double %65, %69
  %70 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %71 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom69 = sext i32 %71 to i64
  %arrayidx70 = getelementptr inbounds double, ptr %70, i64 %idxprom69
  %72 = load double, ptr %arrayidx70, align 8, !tbaa !12
  %73 = call double @llvm.fmuladd.f64(double %mul68, double %72, double %64)
  %74 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %75 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom72 = sext i32 %75 to i64
  %arrayidx73 = getelementptr inbounds double, ptr %74, i64 %idxprom72
  store double %73, ptr %arrayidx73, align 8, !tbaa !12
  br label %for.inc74

for.inc74:                                        ; preds = %for.body61
  %76 = load i32, ptr %j, align 4, !tbaa !5
  %inc75 = add nsw i32 %76, 1
  store i32 %inc75, ptr %j, align 4, !tbaa !5
  br label %for.cond59, !llvm.loop !38

for.end76:                                        ; preds = %for.cond59
  br label %for.inc77

for.inc77:                                        ; preds = %for.end76
  %77 = load i32, ptr %i, align 4, !tbaa !5
  %inc78 = add nsw i32 %77, 1
  store i32 %inc78, ptr %i, align 4, !tbaa !5
  br label %for.cond56, !llvm.loop !39

for.end79:                                        ; preds = %for.cond56
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #7

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 noundef %n, ptr noundef %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %w, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  %0 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.1.6) #8
  %1 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.2.7, ptr noundef @.str.3.8) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %rem = srem i32 %4, 20
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.4.9) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %6 = load ptr, ptr @stderr, align 8, !tbaa !24
  %7 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds double, ptr %7, i64 %idxprom
  %9 = load double, ptr %arrayidx, align 8, !tbaa !12
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.5.10, double noundef %9) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !40

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.6, ptr noundef @.str.3.8) #8
  %12 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.7) #8
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
