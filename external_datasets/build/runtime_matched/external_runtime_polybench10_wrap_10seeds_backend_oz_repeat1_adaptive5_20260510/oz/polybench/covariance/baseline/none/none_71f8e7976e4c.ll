; ModuleID = '/root/exp/RFunipassLab/external_datasets/build/ir_build/polybench/covariance/covariance.linked.bc'
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
@.str.3.8 = private unnamed_addr constant [4 x i8] c"cov\00", align 1
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
  %m = alloca i32, align 4
  %float_n = alloca double, align 8
  %data = alloca ptr, align 8
  %cov = alloca ptr, align 8
  %mean = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8
  store i32 1400, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #8
  store i32 1200, ptr %m, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %float_n) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #8
  %call = call ptr @polybench_alloc_data(i64 noundef 1680000, i32 noundef 8)
  store ptr %call, ptr %data, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %cov) #8
  %call1 = call ptr @polybench_alloc_data(i64 noundef 1440000, i32 noundef 8)
  store ptr %call1, ptr %cov, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %mean) #8
  %call2 = call ptr @polybench_alloc_data(i64 noundef 1200, i32 noundef 8)
  store ptr %call2, ptr %mean, align 8, !tbaa !9
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = load ptr, ptr %data, align 8, !tbaa !9
  %arraydecay = getelementptr inbounds [1400 x [1200 x double]], ptr %2, i64 0, i64 0
  call void @init_array(i32 noundef %0, i32 noundef %1, ptr noundef %float_n, ptr noundef %arraydecay)
  call void (...) @polybench_timer_start()
  %3 = load i32, ptr %m, align 4, !tbaa !5
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %5 = load double, ptr %float_n, align 8, !tbaa !12
  %6 = load ptr, ptr %data, align 8, !tbaa !9
  %arraydecay3 = getelementptr inbounds [1400 x [1200 x double]], ptr %6, i64 0, i64 0
  %7 = load ptr, ptr %cov, align 8, !tbaa !9
  %arraydecay4 = getelementptr inbounds [1200 x [1200 x double]], ptr %7, i64 0, i64 0
  %8 = load ptr, ptr %mean, align 8, !tbaa !9
  %arraydecay5 = getelementptr inbounds [1200 x double], ptr %8, i64 0, i64 0
  call void @kernel_covariance(i32 noundef %3, i32 noundef %4, double noundef %5, ptr noundef %arraydecay3, ptr noundef %arraydecay4, ptr noundef %arraydecay5)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %9 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %9, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load ptr, ptr %argv.addr, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 0
  %11 = load ptr, ptr %arrayidx, align 8, !tbaa !29
  %call6 = call i32 @strcmp(ptr noundef %11, ptr noundef @.str.5) #11
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %12 = load i32, ptr %m, align 4, !tbaa !5
  %13 = load ptr, ptr %cov, align 8, !tbaa !9
  %arraydecay7 = getelementptr inbounds [1200 x [1200 x double]], ptr %13, i64 0, i64 0
  call void @print_array(i32 noundef %12, ptr noundef %arraydecay7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %14 = load ptr, ptr %data, align 8, !tbaa !9
  call void @free(ptr noundef %14) #8
  %15 = load ptr, ptr %cov, align 8, !tbaa !9
  call void @free(ptr noundef %15) #8
  %16 = load ptr, ptr %mean, align 8, !tbaa !9
  call void @free(ptr noundef %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %mean) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %cov) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %float_n) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 noundef %m, i32 noundef %n, ptr noundef %float_n, ptr noundef %data) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %float_n.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4, !tbaa !5
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %float_n, ptr %float_n.addr, align 8, !tbaa !9
  store ptr %data, ptr %data.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  %0 = load i32, ptr %n.addr, align 4, !tbaa !5
  %conv = sitofp i32 %0 to double
  %1 = load ptr, ptr %float_n.addr, align 8, !tbaa !9
  store double %conv, ptr %1, align 8, !tbaa !12
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, 1400
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %3, 1200
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %conv6 = sitofp i32 %4 to double
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %conv7 = sitofp i32 %5 to double
  %mul = fmul double %conv6, %conv7
  %div = fdiv double %mul, 1.200000e+03
  %6 = load ptr, ptr %data.addr, align 8, !tbaa !9
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [1200 x double], ptr %6, i64 %idxprom
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [1200 x double], ptr %arrayidx, i64 0, i64 %idxprom8
  store double %div, ptr %arrayidx9, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !31

for.end:                                          ; preds = %for.cond2
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !32

for.end12:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kernel_covariance(i32 noundef %m, i32 noundef %n, double noundef %float_n, ptr noundef %data, ptr noundef %cov, ptr noundef %mean) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %float_n.addr = alloca double, align 8
  %data.addr = alloca ptr, align 8
  %cov.addr = alloca ptr, align 8
  %mean.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4, !tbaa !5
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store double %float_n, ptr %float_n.addr, align 8, !tbaa !12
  store ptr %data, ptr %data.addr, align 8, !tbaa !9
  store ptr %cov, ptr %cov.addr, align 8, !tbaa !9
  store ptr %mean, ptr %mean.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, ptr %j, align 4, !tbaa !5
  %1 = load i32, ptr %m.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %mean.addr, align 8, !tbaa !9
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds double, ptr %2, i64 %idxprom
  store double 0.000000e+00, ptr %arrayidx, align 8, !tbaa !12
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load ptr, ptr %data.addr, align 8, !tbaa !9
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [1200 x double], ptr %6, i64 %idxprom4
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [1200 x double], ptr %arrayidx5, i64 0, i64 %idxprom6
  %9 = load double, ptr %arrayidx7, align 8, !tbaa !12
  %10 = load ptr, ptr %mean.addr, align 8, !tbaa !9
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds double, ptr %10, i64 %idxprom8
  %12 = load double, ptr %arrayidx9, align 8, !tbaa !12
  %add = fadd double %12, %9
  store double %add, ptr %arrayidx9, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !33

for.end:                                          ; preds = %for.cond1
  %14 = load double, ptr %float_n.addr, align 8, !tbaa !12
  %15 = load ptr, ptr %mean.addr, align 8, !tbaa !9
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds double, ptr %15, i64 %idxprom10
  %17 = load double, ptr %arrayidx11, align 8, !tbaa !12
  %div = fdiv double %17, %14
  store double %div, ptr %arrayidx11, align 8, !tbaa !12
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %inc13 = add nsw i32 %18, 1
  store i32 %inc13, ptr %j, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !34

for.end14:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc30, %for.end14
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %20 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %19, %20
  br i1 %cmp16, label %for.body17, label %for.end32

for.body17:                                       ; preds = %for.cond15
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc27, %for.body17
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %22 = load i32, ptr %m.addr, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %21, %22
  br i1 %cmp19, label %for.body20, label %for.end29

for.body20:                                       ; preds = %for.cond18
  %23 = load ptr, ptr %mean.addr, align 8, !tbaa !9
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom21 = sext i32 %24 to i64
  %arrayidx22 = getelementptr inbounds double, ptr %23, i64 %idxprom21
  %25 = load double, ptr %arrayidx22, align 8, !tbaa !12
  %26 = load ptr, ptr %data.addr, align 8, !tbaa !9
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %27 to i64
  %arrayidx24 = getelementptr inbounds [1200 x double], ptr %26, i64 %idxprom23
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom25 = sext i32 %28 to i64
  %arrayidx26 = getelementptr inbounds [1200 x double], ptr %arrayidx24, i64 0, i64 %idxprom25
  %29 = load double, ptr %arrayidx26, align 8, !tbaa !12
  %sub = fsub double %29, %25
  store double %sub, ptr %arrayidx26, align 8, !tbaa !12
  br label %for.inc27

for.inc27:                                        ; preds = %for.body20
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %inc28 = add nsw i32 %30, 1
  store i32 %inc28, ptr %j, align 4, !tbaa !5
  br label %for.cond18, !llvm.loop !35

for.end29:                                        ; preds = %for.cond18
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %inc31 = add nsw i32 %31, 1
  store i32 %inc31, ptr %i, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !36

for.end32:                                        ; preds = %for.cond15
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc78, %for.end32
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %33 = load i32, ptr %m.addr, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %32, %33
  br i1 %cmp34, label %for.body35, label %for.end80

for.body35:                                       ; preds = %for.cond33
  %34 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %34, ptr %j, align 4, !tbaa !5
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc75, %for.body35
  %35 = load i32, ptr %j, align 4, !tbaa !5
  %36 = load i32, ptr %m.addr, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %35, %36
  br i1 %cmp37, label %for.body38, label %for.end77

for.body38:                                       ; preds = %for.cond36
  %37 = load ptr, ptr %cov.addr, align 8, !tbaa !9
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %38 to i64
  %arrayidx40 = getelementptr inbounds [1200 x double], ptr %37, i64 %idxprom39
  %39 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom41 = sext i32 %39 to i64
  %arrayidx42 = getelementptr inbounds [1200 x double], ptr %arrayidx40, i64 0, i64 %idxprom41
  store double 0.000000e+00, ptr %arrayidx42, align 8, !tbaa !12
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc58, %for.body38
  %40 = load i32, ptr %k, align 4, !tbaa !5
  %41 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %40, %41
  br i1 %cmp44, label %for.body45, label %for.end60

for.body45:                                       ; preds = %for.cond43
  %42 = load ptr, ptr %data.addr, align 8, !tbaa !9
  %43 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom46 = sext i32 %43 to i64
  %arrayidx47 = getelementptr inbounds [1200 x double], ptr %42, i64 %idxprom46
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %44 to i64
  %arrayidx49 = getelementptr inbounds [1200 x double], ptr %arrayidx47, i64 0, i64 %idxprom48
  %45 = load double, ptr %arrayidx49, align 8, !tbaa !12
  %46 = load ptr, ptr %data.addr, align 8, !tbaa !9
  %47 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom50 = sext i32 %47 to i64
  %arrayidx51 = getelementptr inbounds [1200 x double], ptr %46, i64 %idxprom50
  %48 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom52 = sext i32 %48 to i64
  %arrayidx53 = getelementptr inbounds [1200 x double], ptr %arrayidx51, i64 0, i64 %idxprom52
  %49 = load double, ptr %arrayidx53, align 8, !tbaa !12
  %50 = load ptr, ptr %cov.addr, align 8, !tbaa !9
  %51 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom54 = sext i32 %51 to i64
  %arrayidx55 = getelementptr inbounds [1200 x double], ptr %50, i64 %idxprom54
  %52 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom56 = sext i32 %52 to i64
  %arrayidx57 = getelementptr inbounds [1200 x double], ptr %arrayidx55, i64 0, i64 %idxprom56
  %53 = load double, ptr %arrayidx57, align 8, !tbaa !12
  %54 = call double @llvm.fmuladd.f64(double %45, double %49, double %53)
  store double %54, ptr %arrayidx57, align 8, !tbaa !12
  br label %for.inc58

for.inc58:                                        ; preds = %for.body45
  %55 = load i32, ptr %k, align 4, !tbaa !5
  %inc59 = add nsw i32 %55, 1
  store i32 %inc59, ptr %k, align 4, !tbaa !5
  br label %for.cond43, !llvm.loop !37

for.end60:                                        ; preds = %for.cond43
  %56 = load double, ptr %float_n.addr, align 8, !tbaa !12
  %sub61 = fsub double %56, 1.000000e+00
  %57 = load ptr, ptr %cov.addr, align 8, !tbaa !9
  %58 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom62 = sext i32 %58 to i64
  %arrayidx63 = getelementptr inbounds [1200 x double], ptr %57, i64 %idxprom62
  %59 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom64 = sext i32 %59 to i64
  %arrayidx65 = getelementptr inbounds [1200 x double], ptr %arrayidx63, i64 0, i64 %idxprom64
  %60 = load double, ptr %arrayidx65, align 8, !tbaa !12
  %div66 = fdiv double %60, %sub61
  store double %div66, ptr %arrayidx65, align 8, !tbaa !12
  %61 = load ptr, ptr %cov.addr, align 8, !tbaa !9
  %62 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom67 = sext i32 %62 to i64
  %arrayidx68 = getelementptr inbounds [1200 x double], ptr %61, i64 %idxprom67
  %63 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom69 = sext i32 %63 to i64
  %arrayidx70 = getelementptr inbounds [1200 x double], ptr %arrayidx68, i64 0, i64 %idxprom69
  %64 = load double, ptr %arrayidx70, align 8, !tbaa !12
  %65 = load ptr, ptr %cov.addr, align 8, !tbaa !9
  %66 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom71 = sext i32 %66 to i64
  %arrayidx72 = getelementptr inbounds [1200 x double], ptr %65, i64 %idxprom71
  %67 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom73 = sext i32 %67 to i64
  %arrayidx74 = getelementptr inbounds [1200 x double], ptr %arrayidx72, i64 0, i64 %idxprom73
  store double %64, ptr %arrayidx74, align 8, !tbaa !12
  br label %for.inc75

for.inc75:                                        ; preds = %for.end60
  %68 = load i32, ptr %j, align 4, !tbaa !5
  %inc76 = add nsw i32 %68, 1
  store i32 %inc76, ptr %j, align 4, !tbaa !5
  br label %for.cond36, !llvm.loop !38

for.end77:                                        ; preds = %for.cond36
  br label %for.inc78

for.inc78:                                        ; preds = %for.end77
  %69 = load i32, ptr %i, align 4, !tbaa !5
  %inc79 = add nsw i32 %69, 1
  store i32 %inc79, ptr %i, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !39

for.end80:                                        ; preds = %for.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #7

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 noundef %m, ptr noundef %cov) #0 {
entry:
  %m.addr = alloca i32, align 4
  %cov.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4, !tbaa !5
  store ptr %cov, ptr %cov.addr, align 8, !tbaa !9
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
  %5 = load i32, ptr %m.addr, align 4, !tbaa !5
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
  %11 = load ptr, ptr %cov.addr, align 8, !tbaa !9
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
