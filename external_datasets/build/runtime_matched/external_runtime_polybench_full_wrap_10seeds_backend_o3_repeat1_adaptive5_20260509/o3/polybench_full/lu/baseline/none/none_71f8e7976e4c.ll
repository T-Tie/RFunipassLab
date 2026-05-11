; ModuleID = '/root/exp/RFunipassLab/external_datasets/build/ir_build/polybench_full/lu/lu.linked.bc'
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
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %A = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8
  store i32 2000, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %A) #8
  %call = call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8)
  store ptr %call, ptr %A, align 8, !tbaa !9
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = load ptr, ptr %A, align 8, !tbaa !9
  %arraydecay = getelementptr inbounds [2000 x [2000 x double]], ptr %1, i64 0, i64 0
  call void @init_array(i32 noundef %0, ptr noundef %arraydecay)
  call void (...) @polybench_timer_start()
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = load ptr, ptr %A, align 8, !tbaa !9
  %arraydecay1 = getelementptr inbounds [2000 x [2000 x double]], ptr %3, i64 0, i64 0
  call void @kernel_lu(i32 noundef %2, ptr noundef %arraydecay1)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %4 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %4, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %argv.addr, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx, align 8, !tbaa !29
  %call2 = call i32 @strcmp(ptr noundef %6, ptr noundef @.str.5) #11
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %8 = load ptr, ptr %A, align 8, !tbaa !9
  %arraydecay3 = getelementptr inbounds [2000 x [2000 x double]], ptr %8, i64 0, i64 0
  call void @print_array(i32 noundef %7, ptr noundef %arraydecay3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load ptr, ptr %A, align 8, !tbaa !9
  call void @free(ptr noundef %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %A) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 noundef %n, ptr noundef %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  %B = alloca ptr, align 8
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %A, ptr %A.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %sub = sub nsw i32 0, %4
  %5 = load i32, ptr %n.addr, align 4, !tbaa !5
  %rem = srem i32 %sub, %5
  %conv = sitofp i32 %rem to double
  %6 = load i32, ptr %n.addr, align 4, !tbaa !5
  %conv4 = sitofp i32 %6 to double
  %div = fdiv double %conv, %conv4
  %add = fadd double %div, 1.000000e+00
  %7 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [2000 x double], ptr %7, i64 %idxprom
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [2000 x double], ptr %arrayidx, i64 0, i64 %idxprom5
  store double %add, ptr %arrayidx6, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !31

for.end:                                          ; preds = %for.cond1
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %add7 = add nsw i32 %11, 1
  store i32 %add7, ptr %j, align 4, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc16, %for.end
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %13 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %12, %13
  br i1 %cmp9, label %for.body11, label %for.end18

for.body11:                                       ; preds = %for.cond8
  %14 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [2000 x double], ptr %14, i64 %idxprom12
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds [2000 x double], ptr %arrayidx13, i64 0, i64 %idxprom14
  store double 0.000000e+00, ptr %arrayidx15, align 8, !tbaa !12
  br label %for.inc16

for.inc16:                                        ; preds = %for.body11
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %inc17 = add nsw i32 %17, 1
  store i32 %inc17, ptr %j, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !32

for.end18:                                        ; preds = %for.cond8
  %18 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds [2000 x double], ptr %18, i64 %idxprom19
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds [2000 x double], ptr %arrayidx20, i64 0, i64 %idxprom21
  store double 1.000000e+00, ptr %arrayidx22, align 8, !tbaa !12
  br label %for.inc23

for.inc23:                                        ; preds = %for.end18
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %inc24 = add nsw i32 %21, 1
  store i32 %inc24, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !33

for.end25:                                        ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %B) #8
  %call = call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8)
  store ptr %call, ptr %B, align 8, !tbaa !9
  store i32 0, ptr %r, align 4, !tbaa !5
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc41, %for.end25
  %22 = load i32, ptr %r, align 4, !tbaa !5
  %23 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %22, %23
  br i1 %cmp27, label %for.body29, label %for.end43

for.body29:                                       ; preds = %for.cond26
  store i32 0, ptr %s, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc38, %for.body29
  %24 = load i32, ptr %s, align 4, !tbaa !5
  %25 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %24, %25
  br i1 %cmp31, label %for.body33, label %for.end40

for.body33:                                       ; preds = %for.cond30
  %26 = load ptr, ptr %B, align 8, !tbaa !9
  %27 = load i32, ptr %r, align 4, !tbaa !5
  %idxprom34 = sext i32 %27 to i64
  %arrayidx35 = getelementptr inbounds [2000 x [2000 x double]], ptr %26, i64 0, i64 %idxprom34
  %28 = load i32, ptr %s, align 4, !tbaa !5
  %idxprom36 = sext i32 %28 to i64
  %arrayidx37 = getelementptr inbounds [2000 x double], ptr %arrayidx35, i64 0, i64 %idxprom36
  store double 0.000000e+00, ptr %arrayidx37, align 8, !tbaa !12
  br label %for.inc38

for.inc38:                                        ; preds = %for.body33
  %29 = load i32, ptr %s, align 4, !tbaa !5
  %inc39 = add nsw i32 %29, 1
  store i32 %inc39, ptr %s, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !34

for.end40:                                        ; preds = %for.cond30
  br label %for.inc41

for.inc41:                                        ; preds = %for.end40
  %30 = load i32, ptr %r, align 4, !tbaa !5
  %inc42 = add nsw i32 %30, 1
  store i32 %inc42, ptr %r, align 4, !tbaa !5
  br label %for.cond26, !llvm.loop !35

for.end43:                                        ; preds = %for.cond26
  store i32 0, ptr %t, align 4, !tbaa !5
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc74, %for.end43
  %31 = load i32, ptr %t, align 4, !tbaa !5
  %32 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %31, %32
  br i1 %cmp45, label %for.body47, label %for.end76

for.body47:                                       ; preds = %for.cond44
  store i32 0, ptr %r, align 4, !tbaa !5
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc71, %for.body47
  %33 = load i32, ptr %r, align 4, !tbaa !5
  %34 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %33, %34
  br i1 %cmp49, label %for.body51, label %for.end73

for.body51:                                       ; preds = %for.cond48
  store i32 0, ptr %s, align 4, !tbaa !5
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc68, %for.body51
  %35 = load i32, ptr %s, align 4, !tbaa !5
  %36 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %35, %36
  br i1 %cmp53, label %for.body55, label %for.end70

for.body55:                                       ; preds = %for.cond52
  %37 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %38 = load i32, ptr %r, align 4, !tbaa !5
  %idxprom56 = sext i32 %38 to i64
  %arrayidx57 = getelementptr inbounds [2000 x double], ptr %37, i64 %idxprom56
  %39 = load i32, ptr %t, align 4, !tbaa !5
  %idxprom58 = sext i32 %39 to i64
  %arrayidx59 = getelementptr inbounds [2000 x double], ptr %arrayidx57, i64 0, i64 %idxprom58
  %40 = load double, ptr %arrayidx59, align 8, !tbaa !12
  %41 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %42 = load i32, ptr %s, align 4, !tbaa !5
  %idxprom60 = sext i32 %42 to i64
  %arrayidx61 = getelementptr inbounds [2000 x double], ptr %41, i64 %idxprom60
  %43 = load i32, ptr %t, align 4, !tbaa !5
  %idxprom62 = sext i32 %43 to i64
  %arrayidx63 = getelementptr inbounds [2000 x double], ptr %arrayidx61, i64 0, i64 %idxprom62
  %44 = load double, ptr %arrayidx63, align 8, !tbaa !12
  %45 = load ptr, ptr %B, align 8, !tbaa !9
  %46 = load i32, ptr %r, align 4, !tbaa !5
  %idxprom64 = sext i32 %46 to i64
  %arrayidx65 = getelementptr inbounds [2000 x [2000 x double]], ptr %45, i64 0, i64 %idxprom64
  %47 = load i32, ptr %s, align 4, !tbaa !5
  %idxprom66 = sext i32 %47 to i64
  %arrayidx67 = getelementptr inbounds [2000 x double], ptr %arrayidx65, i64 0, i64 %idxprom66
  %48 = load double, ptr %arrayidx67, align 8, !tbaa !12
  %49 = call double @llvm.fmuladd.f64(double %40, double %44, double %48)
  store double %49, ptr %arrayidx67, align 8, !tbaa !12
  br label %for.inc68

for.inc68:                                        ; preds = %for.body55
  %50 = load i32, ptr %s, align 4, !tbaa !5
  %inc69 = add nsw i32 %50, 1
  store i32 %inc69, ptr %s, align 4, !tbaa !5
  br label %for.cond52, !llvm.loop !36

for.end70:                                        ; preds = %for.cond52
  br label %for.inc71

for.inc71:                                        ; preds = %for.end70
  %51 = load i32, ptr %r, align 4, !tbaa !5
  %inc72 = add nsw i32 %51, 1
  store i32 %inc72, ptr %r, align 4, !tbaa !5
  br label %for.cond48, !llvm.loop !37

for.end73:                                        ; preds = %for.cond48
  br label %for.inc74

for.inc74:                                        ; preds = %for.end73
  %52 = load i32, ptr %t, align 4, !tbaa !5
  %inc75 = add nsw i32 %52, 1
  store i32 %inc75, ptr %t, align 4, !tbaa !5
  br label %for.cond44, !llvm.loop !38

for.end76:                                        ; preds = %for.cond44
  store i32 0, ptr %r, align 4, !tbaa !5
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc96, %for.end76
  %53 = load i32, ptr %r, align 4, !tbaa !5
  %54 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp78 = icmp slt i32 %53, %54
  br i1 %cmp78, label %for.body80, label %for.end98

for.body80:                                       ; preds = %for.cond77
  store i32 0, ptr %s, align 4, !tbaa !5
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc93, %for.body80
  %55 = load i32, ptr %s, align 4, !tbaa !5
  %56 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp82 = icmp slt i32 %55, %56
  br i1 %cmp82, label %for.body84, label %for.end95

for.body84:                                       ; preds = %for.cond81
  %57 = load ptr, ptr %B, align 8, !tbaa !9
  %58 = load i32, ptr %r, align 4, !tbaa !5
  %idxprom85 = sext i32 %58 to i64
  %arrayidx86 = getelementptr inbounds [2000 x [2000 x double]], ptr %57, i64 0, i64 %idxprom85
  %59 = load i32, ptr %s, align 4, !tbaa !5
  %idxprom87 = sext i32 %59 to i64
  %arrayidx88 = getelementptr inbounds [2000 x double], ptr %arrayidx86, i64 0, i64 %idxprom87
  %60 = load double, ptr %arrayidx88, align 8, !tbaa !12
  %61 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %62 = load i32, ptr %r, align 4, !tbaa !5
  %idxprom89 = sext i32 %62 to i64
  %arrayidx90 = getelementptr inbounds [2000 x double], ptr %61, i64 %idxprom89
  %63 = load i32, ptr %s, align 4, !tbaa !5
  %idxprom91 = sext i32 %63 to i64
  %arrayidx92 = getelementptr inbounds [2000 x double], ptr %arrayidx90, i64 0, i64 %idxprom91
  store double %60, ptr %arrayidx92, align 8, !tbaa !12
  br label %for.inc93

for.inc93:                                        ; preds = %for.body84
  %64 = load i32, ptr %s, align 4, !tbaa !5
  %inc94 = add nsw i32 %64, 1
  store i32 %inc94, ptr %s, align 4, !tbaa !5
  br label %for.cond81, !llvm.loop !39

for.end95:                                        ; preds = %for.cond81
  br label %for.inc96

for.inc96:                                        ; preds = %for.end95
  %65 = load i32, ptr %r, align 4, !tbaa !5
  %inc97 = add nsw i32 %65, 1
  store i32 %inc97, ptr %r, align 4, !tbaa !5
  br label %for.cond77, !llvm.loop !40

for.end98:                                        ; preds = %for.cond77
  %66 = load ptr, ptr %B, align 8, !tbaa !9
  call void @free(ptr noundef %66) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %B) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kernel_lu(i32 noundef %n, ptr noundef %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %A, ptr %A.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc53, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end55

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc25, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end27

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [2000 x double], ptr %6, i64 %idxprom
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [2000 x double], ptr %arrayidx, i64 0, i64 %idxprom7
  %9 = load double, ptr %arrayidx8, align 8, !tbaa !12
  %10 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %11 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [2000 x double], ptr %10, i64 %idxprom9
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [2000 x double], ptr %arrayidx10, i64 0, i64 %idxprom11
  %13 = load double, ptr %arrayidx12, align 8, !tbaa !12
  %14 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [2000 x double], ptr %14, i64 %idxprom13
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [2000 x double], ptr %arrayidx14, i64 0, i64 %idxprom15
  %17 = load double, ptr %arrayidx16, align 8, !tbaa !12
  %neg = fneg double %9
  %18 = call double @llvm.fmuladd.f64(double %neg, double %13, double %17)
  store double %18, ptr %arrayidx16, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %19 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !41

for.end:                                          ; preds = %for.cond4
  %20 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom17 = sext i32 %21 to i64
  %arrayidx18 = getelementptr inbounds [2000 x double], ptr %20, i64 %idxprom17
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds [2000 x double], ptr %arrayidx18, i64 0, i64 %idxprom19
  %23 = load double, ptr %arrayidx20, align 8, !tbaa !12
  %24 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %25 to i64
  %arrayidx22 = getelementptr inbounds [2000 x double], ptr %24, i64 %idxprom21
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom23 = sext i32 %26 to i64
  %arrayidx24 = getelementptr inbounds [2000 x double], ptr %arrayidx22, i64 0, i64 %idxprom23
  %27 = load double, ptr %arrayidx24, align 8, !tbaa !12
  %div = fdiv double %27, %23
  store double %div, ptr %arrayidx24, align 8, !tbaa !12
  br label %for.inc25

for.inc25:                                        ; preds = %for.end
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %inc26 = add nsw i32 %28, 1
  store i32 %inc26, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !42

for.end27:                                        ; preds = %for.cond1
  %29 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %29, ptr %j, align 4, !tbaa !5
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc50, %for.end27
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %31 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %30, %31
  br i1 %cmp29, label %for.body30, label %for.end52

for.body30:                                       ; preds = %for.cond28
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc47, %for.body30
  %32 = load i32, ptr %k, align 4, !tbaa !5
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %32, %33
  br i1 %cmp32, label %for.body33, label %for.end49

for.body33:                                       ; preds = %for.cond31
  %34 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %35 to i64
  %arrayidx35 = getelementptr inbounds [2000 x double], ptr %34, i64 %idxprom34
  %36 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom36 = sext i32 %36 to i64
  %arrayidx37 = getelementptr inbounds [2000 x double], ptr %arrayidx35, i64 0, i64 %idxprom36
  %37 = load double, ptr %arrayidx37, align 8, !tbaa !12
  %38 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %39 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom38 = sext i32 %39 to i64
  %arrayidx39 = getelementptr inbounds [2000 x double], ptr %38, i64 %idxprom38
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom40 = sext i32 %40 to i64
  %arrayidx41 = getelementptr inbounds [2000 x double], ptr %arrayidx39, i64 0, i64 %idxprom40
  %41 = load double, ptr %arrayidx41, align 8, !tbaa !12
  %42 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %43 to i64
  %arrayidx43 = getelementptr inbounds [2000 x double], ptr %42, i64 %idxprom42
  %44 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom44 = sext i32 %44 to i64
  %arrayidx45 = getelementptr inbounds [2000 x double], ptr %arrayidx43, i64 0, i64 %idxprom44
  %45 = load double, ptr %arrayidx45, align 8, !tbaa !12
  %neg46 = fneg double %37
  %46 = call double @llvm.fmuladd.f64(double %neg46, double %41, double %45)
  store double %46, ptr %arrayidx45, align 8, !tbaa !12
  br label %for.inc47

for.inc47:                                        ; preds = %for.body33
  %47 = load i32, ptr %k, align 4, !tbaa !5
  %inc48 = add nsw i32 %47, 1
  store i32 %inc48, ptr %k, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !43

for.end49:                                        ; preds = %for.cond31
  br label %for.inc50

for.inc50:                                        ; preds = %for.end49
  %48 = load i32, ptr %j, align 4, !tbaa !5
  %inc51 = add nsw i32 %48, 1
  store i32 %inc51, ptr %j, align 4, !tbaa !5
  br label %for.cond28, !llvm.loop !44

for.end52:                                        ; preds = %for.cond28
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %49 = load i32, ptr %i, align 4, !tbaa !5
  %inc54 = add nsw i32 %49, 1
  store i32 %inc54, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !45

for.end55:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #7

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 noundef %n, ptr noundef %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %A, ptr %A.addr, align 8, !tbaa !9
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
  %11 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [2000 x double], ptr %11, i64 %idxprom
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds [2000 x double], ptr %arrayidx, i64 0, i64 %idxprom7
  %14 = load double, ptr %arrayidx8, align 8, !tbaa !12
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.5.10, double noundef %14) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !46

for.end:                                          ; preds = %for.cond2
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc11 = add nsw i32 %16, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !47

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
