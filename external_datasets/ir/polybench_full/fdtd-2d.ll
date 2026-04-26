; ModuleID = '/root/exp/RFunipassLab/external_datasets/build/ir_build/polybench_full/fdtd-2d/fdtd-2d.linked.bc'
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
@.str.3.8 = private unnamed_addr constant [3 x i8] c"ex\00", align 1
@.str.4.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"ey\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"hz\00", align 1

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
  %tmax = alloca i32, align 4
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %ex = alloca ptr, align 8
  %ey = alloca ptr, align 8
  %hz = alloca ptr, align 8
  %_fict_ = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmax) #8
  store i32 500, ptr %tmax, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nx) #8
  store i32 1000, ptr %nx, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ny) #8
  store i32 1200, ptr %ny, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ex) #8
  %call = call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8)
  store ptr %call, ptr %ex, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %ey) #8
  %call1 = call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8)
  store ptr %call1, ptr %ey, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %hz) #8
  %call2 = call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8)
  store ptr %call2, ptr %hz, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %_fict_) #8
  %call3 = call ptr @polybench_alloc_data(i64 noundef 500, i32 noundef 8)
  store ptr %call3, ptr %_fict_, align 8, !tbaa !9
  %0 = load i32, ptr %tmax, align 4, !tbaa !5
  %1 = load i32, ptr %nx, align 4, !tbaa !5
  %2 = load i32, ptr %ny, align 4, !tbaa !5
  %3 = load ptr, ptr %ex, align 8, !tbaa !9
  %arraydecay = getelementptr inbounds [1000 x [1200 x double]], ptr %3, i64 0, i64 0
  %4 = load ptr, ptr %ey, align 8, !tbaa !9
  %arraydecay4 = getelementptr inbounds [1000 x [1200 x double]], ptr %4, i64 0, i64 0
  %5 = load ptr, ptr %hz, align 8, !tbaa !9
  %arraydecay5 = getelementptr inbounds [1000 x [1200 x double]], ptr %5, i64 0, i64 0
  %6 = load ptr, ptr %_fict_, align 8, !tbaa !9
  %arraydecay6 = getelementptr inbounds [500 x double], ptr %6, i64 0, i64 0
  call void @init_array(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %arraydecay, ptr noundef %arraydecay4, ptr noundef %arraydecay5, ptr noundef %arraydecay6)
  call void (...) @polybench_timer_start()
  %7 = load i32, ptr %tmax, align 4, !tbaa !5
  %8 = load i32, ptr %nx, align 4, !tbaa !5
  %9 = load i32, ptr %ny, align 4, !tbaa !5
  %10 = load ptr, ptr %ex, align 8, !tbaa !9
  %arraydecay7 = getelementptr inbounds [1000 x [1200 x double]], ptr %10, i64 0, i64 0
  %11 = load ptr, ptr %ey, align 8, !tbaa !9
  %arraydecay8 = getelementptr inbounds [1000 x [1200 x double]], ptr %11, i64 0, i64 0
  %12 = load ptr, ptr %hz, align 8, !tbaa !9
  %arraydecay9 = getelementptr inbounds [1000 x [1200 x double]], ptr %12, i64 0, i64 0
  %13 = load ptr, ptr %_fict_, align 8, !tbaa !9
  %arraydecay10 = getelementptr inbounds [500 x double], ptr %13, i64 0, i64 0
  call void @kernel_fdtd_2d(i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %arraydecay7, ptr noundef %arraydecay8, ptr noundef %arraydecay9, ptr noundef %arraydecay10)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %14 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %14, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %15 = load ptr, ptr %argv.addr, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds ptr, ptr %15, i64 0
  %16 = load ptr, ptr %arrayidx, align 8, !tbaa !29
  %call11 = call i32 @strcmp(ptr noundef %16, ptr noundef @.str.5) #11
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %17 = load i32, ptr %nx, align 4, !tbaa !5
  %18 = load i32, ptr %ny, align 4, !tbaa !5
  %19 = load ptr, ptr %ex, align 8, !tbaa !9
  %arraydecay12 = getelementptr inbounds [1000 x [1200 x double]], ptr %19, i64 0, i64 0
  %20 = load ptr, ptr %ey, align 8, !tbaa !9
  %arraydecay13 = getelementptr inbounds [1000 x [1200 x double]], ptr %20, i64 0, i64 0
  %21 = load ptr, ptr %hz, align 8, !tbaa !9
  %arraydecay14 = getelementptr inbounds [1000 x [1200 x double]], ptr %21, i64 0, i64 0
  call void @print_array(i32 noundef %17, i32 noundef %18, ptr noundef %arraydecay12, ptr noundef %arraydecay13, ptr noundef %arraydecay14)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %22 = load ptr, ptr %ex, align 8, !tbaa !9
  call void @free(ptr noundef %22) #8
  %23 = load ptr, ptr %ey, align 8, !tbaa !9
  call void @free(ptr noundef %23) #8
  %24 = load ptr, ptr %hz, align 8, !tbaa !9
  call void @free(ptr noundef %24) #8
  %25 = load ptr, ptr %_fict_, align 8, !tbaa !9
  call void @free(ptr noundef %25) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_fict_) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %hz) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ey) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ex) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ny) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %nx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmax) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 noundef %tmax, i32 noundef %nx, i32 noundef %ny, ptr noundef %ex, ptr noundef %ey, ptr noundef %hz, ptr noundef %_fict_) #0 {
entry:
  %tmax.addr = alloca i32, align 4
  %nx.addr = alloca i32, align 4
  %ny.addr = alloca i32, align 4
  %ex.addr = alloca ptr, align 8
  %ey.addr = alloca ptr, align 8
  %hz.addr = alloca ptr, align 8
  %_fict_.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %tmax, ptr %tmax.addr, align 4, !tbaa !5
  store i32 %nx, ptr %nx.addr, align 4, !tbaa !5
  store i32 %ny, ptr %ny.addr, align 4, !tbaa !5
  store ptr %ex, ptr %ex.addr, align 8, !tbaa !9
  store ptr %ey, ptr %ey.addr, align 8, !tbaa !9
  store ptr %hz, ptr %hz.addr, align 8, !tbaa !9
  store ptr %_fict_, ptr %_fict_.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %tmax.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %conv = sitofp i32 %2 to double
  %3 = load ptr, ptr %_fict_.addr, align 8, !tbaa !9
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds double, ptr %3, i64 %idxprom
  store double %conv, ptr %arrayidx, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc39, %for.end
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %nx.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body4, label %for.end41

for.body4:                                        ; preds = %for.cond1
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc36, %for.body4
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %9 = load i32, ptr %ny.addr, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %8, %9
  br i1 %cmp6, label %for.body8, label %for.end38

for.body8:                                        ; preds = %for.cond5
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %conv9 = sitofp i32 %10 to double
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %11, 1
  %conv10 = sitofp i32 %add to double
  %mul = fmul double %conv9, %conv10
  %12 = load i32, ptr %nx.addr, align 4, !tbaa !5
  %conv11 = sitofp i32 %12 to double
  %div = fdiv double %mul, %conv11
  %13 = load ptr, ptr %ex.addr, align 8, !tbaa !9
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [1200 x double], ptr %13, i64 %idxprom12
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds [1200 x double], ptr %arrayidx13, i64 0, i64 %idxprom14
  store double %div, ptr %arrayidx15, align 8, !tbaa !12
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %conv16 = sitofp i32 %16 to double
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %add17 = add nsw i32 %17, 2
  %conv18 = sitofp i32 %add17 to double
  %mul19 = fmul double %conv16, %conv18
  %18 = load i32, ptr %ny.addr, align 4, !tbaa !5
  %conv20 = sitofp i32 %18 to double
  %div21 = fdiv double %mul19, %conv20
  %19 = load ptr, ptr %ey.addr, align 8, !tbaa !9
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds [1200 x double], ptr %19, i64 %idxprom22
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom24 = sext i32 %21 to i64
  %arrayidx25 = getelementptr inbounds [1200 x double], ptr %arrayidx23, i64 0, i64 %idxprom24
  store double %div21, ptr %arrayidx25, align 8, !tbaa !12
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %conv26 = sitofp i32 %22 to double
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %add27 = add nsw i32 %23, 3
  %conv28 = sitofp i32 %add27 to double
  %mul29 = fmul double %conv26, %conv28
  %24 = load i32, ptr %nx.addr, align 4, !tbaa !5
  %conv30 = sitofp i32 %24 to double
  %div31 = fdiv double %mul29, %conv30
  %25 = load ptr, ptr %hz.addr, align 8, !tbaa !9
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds [1200 x double], ptr %25, i64 %idxprom32
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom34 = sext i32 %27 to i64
  %arrayidx35 = getelementptr inbounds [1200 x double], ptr %arrayidx33, i64 0, i64 %idxprom34
  store double %div31, ptr %arrayidx35, align 8, !tbaa !12
  br label %for.inc36

for.inc36:                                        ; preds = %for.body8
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %inc37 = add nsw i32 %28, 1
  store i32 %inc37, ptr %j, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !32

for.end38:                                        ; preds = %for.cond5
  br label %for.inc39

for.inc39:                                        ; preds = %for.end38
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %inc40 = add nsw i32 %29, 1
  store i32 %inc40, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !33

for.end41:                                        ; preds = %for.cond1
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kernel_fdtd_2d(i32 noundef %tmax, i32 noundef %nx, i32 noundef %ny, ptr noundef %ex, ptr noundef %ey, ptr noundef %hz, ptr noundef %_fict_) #0 {
entry:
  %tmax.addr = alloca i32, align 4
  %nx.addr = alloca i32, align 4
  %ny.addr = alloca i32, align 4
  %ex.addr = alloca ptr, align 8
  %ey.addr = alloca ptr, align 8
  %hz.addr = alloca ptr, align 8
  %_fict_.addr = alloca ptr, align 8
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %tmax, ptr %tmax.addr, align 4, !tbaa !5
  store i32 %nx, ptr %nx.addr, align 4, !tbaa !5
  store i32 %ny, ptr %ny.addr, align 4, !tbaa !5
  store ptr %ex, ptr %ex.addr, align 8, !tbaa !9
  store ptr %ey, ptr %ey.addr, align 8, !tbaa !9
  store ptr %hz, ptr %hz.addr, align 8, !tbaa !9
  store ptr %_fict_, ptr %_fict_.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  store i32 0, ptr %t, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc108, %entry
  %0 = load i32, ptr %t, align 4, !tbaa !5
  %1 = load i32, ptr %tmax.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end110

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %ny.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %_fict_.addr, align 8, !tbaa !9
  %5 = load i32, ptr %t, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds double, ptr %4, i64 %idxprom
  %6 = load double, ptr %arrayidx, align 8, !tbaa !12
  %7 = load ptr, ptr %ey.addr, align 8, !tbaa !9
  %arrayidx4 = getelementptr inbounds [1200 x double], ptr %7, i64 0
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [1200 x double], ptr %arrayidx4, i64 0, i64 %idxprom5
  store double %6, ptr %arrayidx6, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !34

for.end:                                          ; preds = %for.cond1
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc33, %for.end
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %11 = load i32, ptr %nx.addr, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %10, %11
  br i1 %cmp8, label %for.body9, label %for.end35

for.body9:                                        ; preds = %for.cond7
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc30, %for.body9
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %13 = load i32, ptr %ny.addr, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %12, %13
  br i1 %cmp11, label %for.body12, label %for.end32

for.body12:                                       ; preds = %for.cond10
  %14 = load ptr, ptr %ey.addr, align 8, !tbaa !9
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [1200 x double], ptr %14, i64 %idxprom13
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [1200 x double], ptr %arrayidx14, i64 0, i64 %idxprom15
  %17 = load double, ptr %arrayidx16, align 8, !tbaa !12
  %18 = load ptr, ptr %hz.addr, align 8, !tbaa !9
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds [1200 x double], ptr %18, i64 %idxprom17
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom19 = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds [1200 x double], ptr %arrayidx18, i64 0, i64 %idxprom19
  %21 = load double, ptr %arrayidx20, align 8, !tbaa !12
  %22 = load ptr, ptr %hz.addr, align 8, !tbaa !9
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %sub = sub nsw i32 %23, 1
  %idxprom21 = sext i32 %sub to i64
  %arrayidx22 = getelementptr inbounds [1200 x double], ptr %22, i64 %idxprom21
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom23 = sext i32 %24 to i64
  %arrayidx24 = getelementptr inbounds [1200 x double], ptr %arrayidx22, i64 0, i64 %idxprom23
  %25 = load double, ptr %arrayidx24, align 8, !tbaa !12
  %sub25 = fsub double %21, %25
  %26 = call double @llvm.fmuladd.f64(double -5.000000e-01, double %sub25, double %17)
  %27 = load ptr, ptr %ey.addr, align 8, !tbaa !9
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %28 to i64
  %arrayidx27 = getelementptr inbounds [1200 x double], ptr %27, i64 %idxprom26
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom28 = sext i32 %29 to i64
  %arrayidx29 = getelementptr inbounds [1200 x double], ptr %arrayidx27, i64 0, i64 %idxprom28
  store double %26, ptr %arrayidx29, align 8, !tbaa !12
  br label %for.inc30

for.inc30:                                        ; preds = %for.body12
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %inc31 = add nsw i32 %30, 1
  store i32 %inc31, ptr %j, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !35

for.end32:                                        ; preds = %for.cond10
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %inc34 = add nsw i32 %31, 1
  store i32 %inc34, ptr %i, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !36

for.end35:                                        ; preds = %for.cond7
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc63, %for.end35
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %33 = load i32, ptr %nx.addr, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %32, %33
  br i1 %cmp37, label %for.body38, label %for.end65

for.body38:                                       ; preds = %for.cond36
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc60, %for.body38
  %34 = load i32, ptr %j, align 4, !tbaa !5
  %35 = load i32, ptr %ny.addr, align 4, !tbaa !5
  %cmp40 = icmp slt i32 %34, %35
  br i1 %cmp40, label %for.body41, label %for.end62

for.body41:                                       ; preds = %for.cond39
  %36 = load ptr, ptr %ex.addr, align 8, !tbaa !9
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %37 to i64
  %arrayidx43 = getelementptr inbounds [1200 x double], ptr %36, i64 %idxprom42
  %38 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom44 = sext i32 %38 to i64
  %arrayidx45 = getelementptr inbounds [1200 x double], ptr %arrayidx43, i64 0, i64 %idxprom44
  %39 = load double, ptr %arrayidx45, align 8, !tbaa !12
  %40 = load ptr, ptr %hz.addr, align 8, !tbaa !9
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom46 = sext i32 %41 to i64
  %arrayidx47 = getelementptr inbounds [1200 x double], ptr %40, i64 %idxprom46
  %42 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom48 = sext i32 %42 to i64
  %arrayidx49 = getelementptr inbounds [1200 x double], ptr %arrayidx47, i64 0, i64 %idxprom48
  %43 = load double, ptr %arrayidx49, align 8, !tbaa !12
  %44 = load ptr, ptr %hz.addr, align 8, !tbaa !9
  %45 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom50 = sext i32 %45 to i64
  %arrayidx51 = getelementptr inbounds [1200 x double], ptr %44, i64 %idxprom50
  %46 = load i32, ptr %j, align 4, !tbaa !5
  %sub52 = sub nsw i32 %46, 1
  %idxprom53 = sext i32 %sub52 to i64
  %arrayidx54 = getelementptr inbounds [1200 x double], ptr %arrayidx51, i64 0, i64 %idxprom53
  %47 = load double, ptr %arrayidx54, align 8, !tbaa !12
  %sub55 = fsub double %43, %47
  %48 = call double @llvm.fmuladd.f64(double -5.000000e-01, double %sub55, double %39)
  %49 = load ptr, ptr %ex.addr, align 8, !tbaa !9
  %50 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom56 = sext i32 %50 to i64
  %arrayidx57 = getelementptr inbounds [1200 x double], ptr %49, i64 %idxprom56
  %51 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom58 = sext i32 %51 to i64
  %arrayidx59 = getelementptr inbounds [1200 x double], ptr %arrayidx57, i64 0, i64 %idxprom58
  store double %48, ptr %arrayidx59, align 8, !tbaa !12
  br label %for.inc60

for.inc60:                                        ; preds = %for.body41
  %52 = load i32, ptr %j, align 4, !tbaa !5
  %inc61 = add nsw i32 %52, 1
  store i32 %inc61, ptr %j, align 4, !tbaa !5
  br label %for.cond39, !llvm.loop !37

for.end62:                                        ; preds = %for.cond39
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %53 = load i32, ptr %i, align 4, !tbaa !5
  %inc64 = add nsw i32 %53, 1
  store i32 %inc64, ptr %i, align 4, !tbaa !5
  br label %for.cond36, !llvm.loop !38

for.end65:                                        ; preds = %for.cond36
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc105, %for.end65
  %54 = load i32, ptr %i, align 4, !tbaa !5
  %55 = load i32, ptr %nx.addr, align 4, !tbaa !5
  %sub67 = sub nsw i32 %55, 1
  %cmp68 = icmp slt i32 %54, %sub67
  br i1 %cmp68, label %for.body69, label %for.end107

for.body69:                                       ; preds = %for.cond66
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc102, %for.body69
  %56 = load i32, ptr %j, align 4, !tbaa !5
  %57 = load i32, ptr %ny.addr, align 4, !tbaa !5
  %sub71 = sub nsw i32 %57, 1
  %cmp72 = icmp slt i32 %56, %sub71
  br i1 %cmp72, label %for.body73, label %for.end104

for.body73:                                       ; preds = %for.cond70
  %58 = load ptr, ptr %hz.addr, align 8, !tbaa !9
  %59 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom74 = sext i32 %59 to i64
  %arrayidx75 = getelementptr inbounds [1200 x double], ptr %58, i64 %idxprom74
  %60 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom76 = sext i32 %60 to i64
  %arrayidx77 = getelementptr inbounds [1200 x double], ptr %arrayidx75, i64 0, i64 %idxprom76
  %61 = load double, ptr %arrayidx77, align 8, !tbaa !12
  %62 = load ptr, ptr %ex.addr, align 8, !tbaa !9
  %63 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom78 = sext i32 %63 to i64
  %arrayidx79 = getelementptr inbounds [1200 x double], ptr %62, i64 %idxprom78
  %64 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %64, 1
  %idxprom80 = sext i32 %add to i64
  %arrayidx81 = getelementptr inbounds [1200 x double], ptr %arrayidx79, i64 0, i64 %idxprom80
  %65 = load double, ptr %arrayidx81, align 8, !tbaa !12
  %66 = load ptr, ptr %ex.addr, align 8, !tbaa !9
  %67 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom82 = sext i32 %67 to i64
  %arrayidx83 = getelementptr inbounds [1200 x double], ptr %66, i64 %idxprom82
  %68 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom84 = sext i32 %68 to i64
  %arrayidx85 = getelementptr inbounds [1200 x double], ptr %arrayidx83, i64 0, i64 %idxprom84
  %69 = load double, ptr %arrayidx85, align 8, !tbaa !12
  %sub86 = fsub double %65, %69
  %70 = load ptr, ptr %ey.addr, align 8, !tbaa !9
  %71 = load i32, ptr %i, align 4, !tbaa !5
  %add87 = add nsw i32 %71, 1
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds [1200 x double], ptr %70, i64 %idxprom88
  %72 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom90 = sext i32 %72 to i64
  %arrayidx91 = getelementptr inbounds [1200 x double], ptr %arrayidx89, i64 0, i64 %idxprom90
  %73 = load double, ptr %arrayidx91, align 8, !tbaa !12
  %add92 = fadd double %sub86, %73
  %74 = load ptr, ptr %ey.addr, align 8, !tbaa !9
  %75 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom93 = sext i32 %75 to i64
  %arrayidx94 = getelementptr inbounds [1200 x double], ptr %74, i64 %idxprom93
  %76 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom95 = sext i32 %76 to i64
  %arrayidx96 = getelementptr inbounds [1200 x double], ptr %arrayidx94, i64 0, i64 %idxprom95
  %77 = load double, ptr %arrayidx96, align 8, !tbaa !12
  %sub97 = fsub double %add92, %77
  %78 = call double @llvm.fmuladd.f64(double 0xBFE6666666666666, double %sub97, double %61)
  %79 = load ptr, ptr %hz.addr, align 8, !tbaa !9
  %80 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom98 = sext i32 %80 to i64
  %arrayidx99 = getelementptr inbounds [1200 x double], ptr %79, i64 %idxprom98
  %81 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom100 = sext i32 %81 to i64
  %arrayidx101 = getelementptr inbounds [1200 x double], ptr %arrayidx99, i64 0, i64 %idxprom100
  store double %78, ptr %arrayidx101, align 8, !tbaa !12
  br label %for.inc102

for.inc102:                                       ; preds = %for.body73
  %82 = load i32, ptr %j, align 4, !tbaa !5
  %inc103 = add nsw i32 %82, 1
  store i32 %inc103, ptr %j, align 4, !tbaa !5
  br label %for.cond70, !llvm.loop !39

for.end104:                                       ; preds = %for.cond70
  br label %for.inc105

for.inc105:                                       ; preds = %for.end104
  %83 = load i32, ptr %i, align 4, !tbaa !5
  %inc106 = add nsw i32 %83, 1
  store i32 %inc106, ptr %i, align 4, !tbaa !5
  br label %for.cond66, !llvm.loop !40

for.end107:                                       ; preds = %for.cond66
  br label %for.inc108

for.inc108:                                       ; preds = %for.end107
  %84 = load i32, ptr %t, align 4, !tbaa !5
  %inc109 = add nsw i32 %84, 1
  store i32 %inc109, ptr %t, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !41

for.end110:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #8
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #7

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 noundef %nx, i32 noundef %ny, ptr noundef %ex, ptr noundef %ey, ptr noundef %hz) #0 {
entry:
  %nx.addr = alloca i32, align 4
  %ny.addr = alloca i32, align 4
  %ex.addr = alloca ptr, align 8
  %ey.addr = alloca ptr, align 8
  %hz.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %nx, ptr %nx.addr, align 4, !tbaa !5
  store i32 %ny, ptr %ny.addr, align 4, !tbaa !5
  store ptr %ex, ptr %ex.addr, align 8, !tbaa !9
  store ptr %ey, ptr %ey.addr, align 8, !tbaa !9
  store ptr %hz, ptr %hz.addr, align 8, !tbaa !9
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
  %3 = load i32, ptr %nx.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %ny.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %nx.addr, align 4, !tbaa !5
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
  %11 = load ptr, ptr %ex.addr, align 8, !tbaa !9
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
  br label %for.cond2, !llvm.loop !42

for.end:                                          ; preds = %for.cond2
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc11 = add nsw i32 %16, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !43

for.end12:                                        ; preds = %for.cond
  %17 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.6, ptr noundef @.str.3.8) #8
  %18 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.7) #8
  %19 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.2.7, ptr noundef @.str.8) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc37, %for.end12
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %21 = load i32, ptr %nx.addr, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %20, %21
  br i1 %cmp17, label %for.body18, label %for.end39

for.body18:                                       ; preds = %for.cond16
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc34, %for.body18
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %23 = load i32, ptr %ny.addr, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %22, %23
  br i1 %cmp20, label %for.body21, label %for.end36

for.body21:                                       ; preds = %for.cond19
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %25 = load i32, ptr %nx.addr, align 4, !tbaa !5
  %mul22 = mul nsw i32 %24, %25
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %add23 = add nsw i32 %mul22, %26
  %rem24 = srem i32 %add23, 20
  %cmp25 = icmp eq i32 %rem24, 0
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %for.body21
  %27 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.4.9) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %for.body21
  %28 = load ptr, ptr @stderr, align 8, !tbaa !24
  %29 = load ptr, ptr %ey.addr, align 8, !tbaa !9
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %30 to i64
  %arrayidx30 = getelementptr inbounds [1200 x double], ptr %29, i64 %idxprom29
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom31 = sext i32 %31 to i64
  %arrayidx32 = getelementptr inbounds [1200 x double], ptr %arrayidx30, i64 0, i64 %idxprom31
  %32 = load double, ptr %arrayidx32, align 8, !tbaa !12
  %call33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.5.10, double noundef %32) #8
  br label %for.inc34

for.inc34:                                        ; preds = %if.end28
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %inc35 = add nsw i32 %33, 1
  store i32 %inc35, ptr %j, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !44

for.end36:                                        ; preds = %for.cond19
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %inc38 = add nsw i32 %34, 1
  store i32 %inc38, ptr %i, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !45

for.end39:                                        ; preds = %for.cond16
  %35 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.6, ptr noundef @.str.8) #8
  %36 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.2.7, ptr noundef @.str.9) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc63, %for.end39
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %38 = load i32, ptr %nx.addr, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %37, %38
  br i1 %cmp43, label %for.body44, label %for.end65

for.body44:                                       ; preds = %for.cond42
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc60, %for.body44
  %39 = load i32, ptr %j, align 4, !tbaa !5
  %40 = load i32, ptr %ny.addr, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %39, %40
  br i1 %cmp46, label %for.body47, label %for.end62

for.body47:                                       ; preds = %for.cond45
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %42 = load i32, ptr %nx.addr, align 4, !tbaa !5
  %mul48 = mul nsw i32 %41, %42
  %43 = load i32, ptr %j, align 4, !tbaa !5
  %add49 = add nsw i32 %mul48, %43
  %rem50 = srem i32 %add49, 20
  %cmp51 = icmp eq i32 %rem50, 0
  br i1 %cmp51, label %if.then52, label %if.end54

if.then52:                                        ; preds = %for.body47
  %44 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.4.9) #8
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %for.body47
  %45 = load ptr, ptr @stderr, align 8, !tbaa !24
  %46 = load ptr, ptr %hz.addr, align 8, !tbaa !9
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom55 = sext i32 %47 to i64
  %arrayidx56 = getelementptr inbounds [1200 x double], ptr %46, i64 %idxprom55
  %48 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom57 = sext i32 %48 to i64
  %arrayidx58 = getelementptr inbounds [1200 x double], ptr %arrayidx56, i64 0, i64 %idxprom57
  %49 = load double, ptr %arrayidx58, align 8, !tbaa !12
  %call59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.5.10, double noundef %49) #8
  br label %for.inc60

for.inc60:                                        ; preds = %if.end54
  %50 = load i32, ptr %j, align 4, !tbaa !5
  %inc61 = add nsw i32 %50, 1
  store i32 %inc61, ptr %j, align 4, !tbaa !5
  br label %for.cond45, !llvm.loop !46

for.end62:                                        ; preds = %for.cond45
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %51 = load i32, ptr %i, align 4, !tbaa !5
  %inc64 = add nsw i32 %51, 1
  store i32 %inc64, ptr %i, align 4, !tbaa !5
  br label %for.cond42, !llvm.loop !47

for.end65:                                        ; preds = %for.cond42
  %52 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @.str.6, ptr noundef @.str.9) #8
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
