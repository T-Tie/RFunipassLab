; ModuleID = '/root/exp/RFunipassLab/external_datasets/build/ir_build/polybench_full/seidel-2d/seidel-2d.linked.bc'
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
  %tsteps = alloca i32, align 4
  %A = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8
  store i32 2000, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %tsteps) #8
  store i32 500, ptr %tsteps, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %A) #8
  %call = call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8)
  store ptr %call, ptr %A, align 8, !tbaa !9
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = load ptr, ptr %A, align 8, !tbaa !9
  %arraydecay = getelementptr inbounds [2000 x [2000 x double]], ptr %1, i64 0, i64 0
  call void @init_array(i32 noundef %0, ptr noundef %arraydecay)
  call void (...) @polybench_timer_start()
  %2 = load i32, ptr %tsteps, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = load ptr, ptr %A, align 8, !tbaa !9
  %arraydecay1 = getelementptr inbounds [2000 x [2000 x double]], ptr %4, i64 0, i64 0
  call void @kernel_seidel_2d(i32 noundef %2, i32 noundef %3, ptr noundef %arraydecay1)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %5 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %5, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %argv.addr, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx, align 8, !tbaa !29
  %call2 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str.5) #11
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %9 = load ptr, ptr %A, align 8, !tbaa !9
  %arraydecay3 = getelementptr inbounds [2000 x [2000 x double]], ptr %9, i64 0, i64 0
  call void @print_array(i32 noundef %8, ptr noundef %arraydecay3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load ptr, ptr %A, align 8, !tbaa !9
  call void @free(ptr noundef %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %A) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tsteps) #8
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
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %A, ptr %A.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end10

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
  %conv = sitofp i32 %4 to double
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %5, 2
  %conv4 = sitofp i32 %add to double
  %6 = call double @llvm.fmuladd.f64(double %conv, double %conv4, double 2.000000e+00)
  %7 = load i32, ptr %n.addr, align 4, !tbaa !5
  %conv5 = sitofp i32 %7 to double
  %div = fdiv double %6, %conv5
  %8 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [2000 x double], ptr %8, i64 %idxprom
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [2000 x double], ptr %arrayidx, i64 0, i64 %idxprom6
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
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kernel_seidel_2d(i32 noundef %tsteps, i32 noundef %n, ptr noundef %A) #0 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 8
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %tsteps, ptr %tsteps.addr, align 4, !tbaa !5
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %A, ptr %A.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  store i32 0, ptr %t, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc69, %entry
  %0 = load i32, ptr %t, align 4, !tbaa !5
  %1 = load i32, ptr %tsteps.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end71

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc66, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub2 = sub nsw i32 %3, 2
  %cmp3 = icmp sle i32 %2, %sub2
  br i1 %cmp3, label %for.body4, label %for.end68

for.body4:                                        ; preds = %for.cond1
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub6 = sub nsw i32 %5, 2
  %cmp7 = icmp sle i32 %4, %sub6
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond5
  %6 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %sub9 = sub nsw i32 %7, 1
  %idxprom = sext i32 %sub9 to i64
  %arrayidx = getelementptr inbounds [2000 x double], ptr %6, i64 %idxprom
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %sub10 = sub nsw i32 %8, 1
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds [2000 x double], ptr %arrayidx, i64 0, i64 %idxprom11
  %9 = load double, ptr %arrayidx12, align 8, !tbaa !12
  %10 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %sub13 = sub nsw i32 %11, 1
  %idxprom14 = sext i32 %sub13 to i64
  %arrayidx15 = getelementptr inbounds [2000 x double], ptr %10, i64 %idxprom14
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [2000 x double], ptr %arrayidx15, i64 0, i64 %idxprom16
  %13 = load double, ptr %arrayidx17, align 8, !tbaa !12
  %add = fadd double %9, %13
  %14 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %sub18 = sub nsw i32 %15, 1
  %idxprom19 = sext i32 %sub18 to i64
  %arrayidx20 = getelementptr inbounds [2000 x double], ptr %14, i64 %idxprom19
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %add21 = add nsw i32 %16, 1
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [2000 x double], ptr %arrayidx20, i64 0, i64 %idxprom22
  %17 = load double, ptr %arrayidx23, align 8, !tbaa !12
  %add24 = fadd double %add, %17
  %18 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [2000 x double], ptr %18, i64 %idxprom25
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %sub27 = sub nsw i32 %20, 1
  %idxprom28 = sext i32 %sub27 to i64
  %arrayidx29 = getelementptr inbounds [2000 x double], ptr %arrayidx26, i64 0, i64 %idxprom28
  %21 = load double, ptr %arrayidx29, align 8, !tbaa !12
  %add30 = fadd double %add24, %21
  %22 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %23 to i64
  %arrayidx32 = getelementptr inbounds [2000 x double], ptr %22, i64 %idxprom31
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom33 = sext i32 %24 to i64
  %arrayidx34 = getelementptr inbounds [2000 x double], ptr %arrayidx32, i64 0, i64 %idxprom33
  %25 = load double, ptr %arrayidx34, align 8, !tbaa !12
  %add35 = fadd double %add30, %25
  %26 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds [2000 x double], ptr %26, i64 %idxprom36
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %add38 = add nsw i32 %28, 1
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds [2000 x double], ptr %arrayidx37, i64 0, i64 %idxprom39
  %29 = load double, ptr %arrayidx40, align 8, !tbaa !12
  %add41 = fadd double %add35, %29
  %30 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %add42 = add nsw i32 %31, 1
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds [2000 x double], ptr %30, i64 %idxprom43
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %sub45 = sub nsw i32 %32, 1
  %idxprom46 = sext i32 %sub45 to i64
  %arrayidx47 = getelementptr inbounds [2000 x double], ptr %arrayidx44, i64 0, i64 %idxprom46
  %33 = load double, ptr %arrayidx47, align 8, !tbaa !12
  %add48 = fadd double %add41, %33
  %34 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %add49 = add nsw i32 %35, 1
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds [2000 x double], ptr %34, i64 %idxprom50
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom52 = sext i32 %36 to i64
  %arrayidx53 = getelementptr inbounds [2000 x double], ptr %arrayidx51, i64 0, i64 %idxprom52
  %37 = load double, ptr %arrayidx53, align 8, !tbaa !12
  %add54 = fadd double %add48, %37
  %38 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %add55 = add nsw i32 %39, 1
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds [2000 x double], ptr %38, i64 %idxprom56
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %add58 = add nsw i32 %40, 1
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds [2000 x double], ptr %arrayidx57, i64 0, i64 %idxprom59
  %41 = load double, ptr %arrayidx60, align 8, !tbaa !12
  %add61 = fadd double %add54, %41
  %div = fdiv double %add61, 9.000000e+00
  %42 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom62 = sext i32 %43 to i64
  %arrayidx63 = getelementptr inbounds [2000 x double], ptr %42, i64 %idxprom62
  %44 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom64 = sext i32 %44 to i64
  %arrayidx65 = getelementptr inbounds [2000 x double], ptr %arrayidx63, i64 0, i64 %idxprom64
  store double %div, ptr %arrayidx65, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %45, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !33

for.end:                                          ; preds = %for.cond5
  br label %for.inc66

for.inc66:                                        ; preds = %for.end
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %inc67 = add nsw i32 %46, 1
  store i32 %inc67, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !34

for.end68:                                        ; preds = %for.cond1
  br label %for.inc69

for.inc69:                                        ; preds = %for.end68
  %47 = load i32, ptr %t, align 4, !tbaa !5
  %inc70 = add nsw i32 %47, 1
  store i32 %inc70, ptr %t, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !35

for.end71:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #8
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
  br label %for.cond2, !llvm.loop !36

for.end:                                          ; preds = %for.cond2
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc11 = add nsw i32 %16, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !37

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
