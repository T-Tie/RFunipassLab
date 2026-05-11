; ModuleID = '/root/exp/RFunipassLab/external_datasets/build/ir_build/polybench/symm/symm.linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@polybench_papi_counters_threadid = dso_local global i32 0, align 4
@polybench_program_total_flops = dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [12 x i8] c"tmp <= 10.0\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"/root/exp/RFunipassLab/external_datasets/sources/polybench/utilities/polybench.c\00", align 1
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"C\00", align 1
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
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %alpha = alloca double, align 8
  %beta = alloca double, align 8
  %C = alloca ptr, align 8
  %A = alloca ptr, align 8
  %B = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #8
  store i32 1000, ptr %m, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8
  store i32 1200, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %C) #8
  %call = call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8)
  store ptr %call, ptr %C, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %A) #8
  %call1 = call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8)
  store ptr %call1, ptr %A, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %B) #8
  %call2 = call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8)
  store ptr %call2, ptr %B, align 8, !tbaa !9
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = load ptr, ptr %C, align 8, !tbaa !9
  %arraydecay = getelementptr inbounds [1000 x [1200 x double]], ptr %2, i64 0, i64 0
  %3 = load ptr, ptr %A, align 8, !tbaa !9
  %arraydecay3 = getelementptr inbounds [1000 x [1000 x double]], ptr %3, i64 0, i64 0
  %4 = load ptr, ptr %B, align 8, !tbaa !9
  %arraydecay4 = getelementptr inbounds [1000 x [1200 x double]], ptr %4, i64 0, i64 0
  call void @init_array(i32 noundef %0, i32 noundef %1, ptr noundef %alpha, ptr noundef %beta, ptr noundef %arraydecay, ptr noundef %arraydecay3, ptr noundef %arraydecay4)
  call void (...) @polybench_timer_start()
  %5 = load i32, ptr %m, align 4, !tbaa !5
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %7 = load double, ptr %alpha, align 8, !tbaa !12
  %8 = load double, ptr %beta, align 8, !tbaa !12
  %9 = load ptr, ptr %C, align 8, !tbaa !9
  %arraydecay5 = getelementptr inbounds [1000 x [1200 x double]], ptr %9, i64 0, i64 0
  %10 = load ptr, ptr %A, align 8, !tbaa !9
  %arraydecay6 = getelementptr inbounds [1000 x [1000 x double]], ptr %10, i64 0, i64 0
  %11 = load ptr, ptr %B, align 8, !tbaa !9
  %arraydecay7 = getelementptr inbounds [1000 x [1200 x double]], ptr %11, i64 0, i64 0
  call void @kernel_symm(i32 noundef %5, i32 noundef %6, double noundef %7, double noundef %8, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %arraydecay7)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %12 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %12, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %13 = load ptr, ptr %argv.addr, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds ptr, ptr %13, i64 0
  %14 = load ptr, ptr %arrayidx, align 8, !tbaa !29
  %call8 = call i32 @strcmp(ptr noundef %14, ptr noundef @.str.5) #11
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %15 = load i32, ptr %m, align 4, !tbaa !5
  %16 = load i32, ptr %n, align 4, !tbaa !5
  %17 = load ptr, ptr %C, align 8, !tbaa !9
  %arraydecay9 = getelementptr inbounds [1000 x [1200 x double]], ptr %17, i64 0, i64 0
  call void @print_array(i32 noundef %15, i32 noundef %16, ptr noundef %arraydecay9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %18 = load ptr, ptr %C, align 8, !tbaa !9
  call void @free(ptr noundef %18) #8
  %19 = load ptr, ptr %A, align 8, !tbaa !9
  call void @free(ptr noundef %19) #8
  %20 = load ptr, ptr %B, align 8, !tbaa !9
  call void @free(ptr noundef %20) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %B) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %A) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %C) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 noundef %m, i32 noundef %n, ptr noundef %alpha, ptr noundef %beta, ptr noundef %C, ptr noundef %A, ptr noundef %B) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %C.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4, !tbaa !5
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %C, ptr %C.addr, align 8, !tbaa !9
  store ptr %A, ptr %A.addr, align 8, !tbaa !9
  store ptr %B, ptr %B.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  %0 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  store double 1.500000e+00, ptr %0, align 8, !tbaa !12
  %1 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  store double 1.200000e+00, ptr %1, align 8, !tbaa !12
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %m.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %6, %7
  %rem = srem i32 %add, 100
  %conv = sitofp i32 %rem to double
  %8 = load i32, ptr %m.addr, align 4, !tbaa !5
  %conv4 = sitofp i32 %8 to double
  %div = fdiv double %conv, %conv4
  %9 = load ptr, ptr %C.addr, align 8, !tbaa !9
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [1200 x double], ptr %9, i64 %idxprom
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [1200 x double], ptr %arrayidx, i64 0, i64 %idxprom5
  store double %div, ptr %arrayidx6, align 8, !tbaa !12
  %12 = load i32, ptr %n.addr, align 4, !tbaa !5
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %add7 = add nsw i32 %12, %13
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %sub = sub nsw i32 %add7, %14
  %rem8 = srem i32 %sub, 100
  %conv9 = sitofp i32 %rem8 to double
  %15 = load i32, ptr %m.addr, align 4, !tbaa !5
  %conv10 = sitofp i32 %15 to double
  %div11 = fdiv double %conv9, %conv10
  %16 = load ptr, ptr %B.addr, align 8, !tbaa !9
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds [1200 x double], ptr %16, i64 %idxprom12
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds [1200 x double], ptr %arrayidx13, i64 0, i64 %idxprom14
  store double %div11, ptr %arrayidx15, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !31

for.end:                                          ; preds = %for.cond1
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %inc17 = add nsw i32 %20, 1
  store i32 %inc17, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !32

for.end18:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc51, %for.end18
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %22 = load i32, ptr %m.addr, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %21, %22
  br i1 %cmp20, label %for.body22, label %for.end53

for.body22:                                       ; preds = %for.cond19
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc36, %for.body22
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %cmp24 = icmp sle i32 %23, %24
  br i1 %cmp24, label %for.body26, label %for.end38

for.body26:                                       ; preds = %for.cond23
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %add27 = add nsw i32 %25, %26
  %rem28 = srem i32 %add27, 100
  %conv29 = sitofp i32 %rem28 to double
  %27 = load i32, ptr %m.addr, align 4, !tbaa !5
  %conv30 = sitofp i32 %27 to double
  %div31 = fdiv double %conv29, %conv30
  %28 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %29 to i64
  %arrayidx33 = getelementptr inbounds [1000 x double], ptr %28, i64 %idxprom32
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds [1000 x double], ptr %arrayidx33, i64 0, i64 %idxprom34
  store double %div31, ptr %arrayidx35, align 8, !tbaa !12
  br label %for.inc36

for.inc36:                                        ; preds = %for.body26
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %inc37 = add nsw i32 %31, 1
  store i32 %inc37, ptr %j, align 4, !tbaa !5
  br label %for.cond23, !llvm.loop !33

for.end38:                                        ; preds = %for.cond23
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %add39 = add nsw i32 %32, 1
  store i32 %add39, ptr %j, align 4, !tbaa !5
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc48, %for.end38
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %34 = load i32, ptr %m.addr, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %33, %34
  br i1 %cmp41, label %for.body43, label %for.end50

for.body43:                                       ; preds = %for.cond40
  %35 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom44 = sext i32 %36 to i64
  %arrayidx45 = getelementptr inbounds [1000 x double], ptr %35, i64 %idxprom44
  %37 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom46 = sext i32 %37 to i64
  %arrayidx47 = getelementptr inbounds [1000 x double], ptr %arrayidx45, i64 0, i64 %idxprom46
  store double -9.990000e+02, ptr %arrayidx47, align 8, !tbaa !12
  br label %for.inc48

for.inc48:                                        ; preds = %for.body43
  %38 = load i32, ptr %j, align 4, !tbaa !5
  %inc49 = add nsw i32 %38, 1
  store i32 %inc49, ptr %j, align 4, !tbaa !5
  br label %for.cond40, !llvm.loop !34

for.end50:                                        ; preds = %for.cond40
  br label %for.inc51

for.inc51:                                        ; preds = %for.end50
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %inc52 = add nsw i32 %39, 1
  store i32 %inc52, ptr %i, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !35

for.end53:                                        ; preds = %for.cond19
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kernel_symm(i32 noundef %m, i32 noundef %n, double noundef %alpha, double noundef %beta, ptr noundef %C, ptr noundef %A, ptr noundef %B) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %beta.addr = alloca double, align 8
  %C.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %temp2 = alloca double, align 8
  store i32 %m, ptr %m.addr, align 4, !tbaa !5
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store double %alpha, ptr %alpha.addr, align 8, !tbaa !12
  store double %beta, ptr %beta.addr, align 8, !tbaa !12
  store ptr %C, ptr %C.addr, align 8, !tbaa !9
  store ptr %A, ptr %A.addr, align 8, !tbaa !9
  store ptr %B, ptr %B.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp2) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc50, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %m.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end52

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc47, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end49

for.body3:                                        ; preds = %for.cond1
  store double 0.000000e+00, ptr %temp2, align 8, !tbaa !12
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load double, ptr %alpha.addr, align 8, !tbaa !12
  %7 = load ptr, ptr %B.addr, align 8, !tbaa !9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [1200 x double], ptr %7, i64 %idxprom
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [1200 x double], ptr %arrayidx, i64 0, i64 %idxprom7
  %10 = load double, ptr %arrayidx8, align 8, !tbaa !12
  %mul = fmul double %6, %10
  %11 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [1000 x double], ptr %11, i64 %idxprom9
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds [1000 x double], ptr %arrayidx10, i64 0, i64 %idxprom11
  %14 = load double, ptr %arrayidx12, align 8, !tbaa !12
  %15 = load ptr, ptr %C.addr, align 8, !tbaa !9
  %16 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds [1200 x double], ptr %15, i64 %idxprom14
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds [1200 x double], ptr %arrayidx15, i64 0, i64 %idxprom16
  %18 = load double, ptr %arrayidx17, align 8, !tbaa !12
  %19 = call double @llvm.fmuladd.f64(double %mul, double %14, double %18)
  store double %19, ptr %arrayidx17, align 8, !tbaa !12
  %20 = load ptr, ptr %B.addr, align 8, !tbaa !9
  %21 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom18 = sext i32 %21 to i64
  %arrayidx19 = getelementptr inbounds [1200 x double], ptr %20, i64 %idxprom18
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds [1200 x double], ptr %arrayidx19, i64 0, i64 %idxprom20
  %23 = load double, ptr %arrayidx21, align 8, !tbaa !12
  %24 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds [1000 x double], ptr %24, i64 %idxprom22
  %26 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom24 = sext i32 %26 to i64
  %arrayidx25 = getelementptr inbounds [1000 x double], ptr %arrayidx23, i64 0, i64 %idxprom24
  %27 = load double, ptr %arrayidx25, align 8, !tbaa !12
  %28 = load double, ptr %temp2, align 8, !tbaa !12
  %29 = call double @llvm.fmuladd.f64(double %23, double %27, double %28)
  store double %29, ptr %temp2, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %30 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !36

for.end:                                          ; preds = %for.cond4
  %31 = load double, ptr %beta.addr, align 8, !tbaa !12
  %32 = load ptr, ptr %C.addr, align 8, !tbaa !9
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %33 to i64
  %arrayidx28 = getelementptr inbounds [1200 x double], ptr %32, i64 %idxprom27
  %34 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom29 = sext i32 %34 to i64
  %arrayidx30 = getelementptr inbounds [1200 x double], ptr %arrayidx28, i64 0, i64 %idxprom29
  %35 = load double, ptr %arrayidx30, align 8, !tbaa !12
  %36 = load double, ptr %alpha.addr, align 8, !tbaa !12
  %37 = load ptr, ptr %B.addr, align 8, !tbaa !9
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %38 to i64
  %arrayidx33 = getelementptr inbounds [1200 x double], ptr %37, i64 %idxprom32
  %39 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom34 = sext i32 %39 to i64
  %arrayidx35 = getelementptr inbounds [1200 x double], ptr %arrayidx33, i64 0, i64 %idxprom34
  %40 = load double, ptr %arrayidx35, align 8, !tbaa !12
  %mul36 = fmul double %36, %40
  %41 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom37 = sext i32 %42 to i64
  %arrayidx38 = getelementptr inbounds [1000 x double], ptr %41, i64 %idxprom37
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %43 to i64
  %arrayidx40 = getelementptr inbounds [1000 x double], ptr %arrayidx38, i64 0, i64 %idxprom39
  %44 = load double, ptr %arrayidx40, align 8, !tbaa !12
  %mul41 = fmul double %mul36, %44
  %45 = call double @llvm.fmuladd.f64(double %31, double %35, double %mul41)
  %46 = load double, ptr %alpha.addr, align 8, !tbaa !12
  %47 = load double, ptr %temp2, align 8, !tbaa !12
  %48 = call double @llvm.fmuladd.f64(double %46, double %47, double %45)
  %49 = load ptr, ptr %C.addr, align 8, !tbaa !9
  %50 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %50 to i64
  %arrayidx44 = getelementptr inbounds [1200 x double], ptr %49, i64 %idxprom43
  %51 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom45 = sext i32 %51 to i64
  %arrayidx46 = getelementptr inbounds [1200 x double], ptr %arrayidx44, i64 0, i64 %idxprom45
  store double %48, ptr %arrayidx46, align 8, !tbaa !12
  br label %for.inc47

for.inc47:                                        ; preds = %for.end
  %52 = load i32, ptr %j, align 4, !tbaa !5
  %inc48 = add nsw i32 %52, 1
  store i32 %inc48, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !37

for.end49:                                        ; preds = %for.cond1
  br label %for.inc50

for.inc50:                                        ; preds = %for.end49
  %53 = load i32, ptr %i, align 4, !tbaa !5
  %inc51 = add nsw i32 %53, 1
  store i32 %inc51, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !38

for.end52:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #7

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, ptr noundef %C) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %C.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4, !tbaa !5
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %C, ptr %C.addr, align 8, !tbaa !9
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
  %3 = load i32, ptr %m.addr, align 4, !tbaa !5
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
  %7 = load i32, ptr %m.addr, align 4, !tbaa !5
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
  %11 = load ptr, ptr %C.addr, align 8, !tbaa !9
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [1200 x double], ptr %11, i64 %idxprom
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds [1200 x double], ptr %arrayidx, i64 0, i64 %idxprom7
  %14 = load double, ptr %arrayidx8, align 8, !tbaa !12
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.5.10, double noundef %14) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !39

for.end:                                          ; preds = %for.cond2
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc11 = add nsw i32 %16, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !40

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
