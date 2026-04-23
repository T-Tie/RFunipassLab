; ModuleID = '/root/exp/RFunipassLab/external_datasets/build/ir_build/polybench/heat-3d/heat-3d.linked.bc'
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
  %B = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8
  store i32 120, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %tsteps) #8
  store i32 500, ptr %tsteps, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %A) #8
  %call = call ptr @polybench_alloc_data(i64 noundef 1728000, i32 noundef 8)
  store ptr %call, ptr %A, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %B) #8
  %call1 = call ptr @polybench_alloc_data(i64 noundef 1728000, i32 noundef 8)
  store ptr %call1, ptr %B, align 8, !tbaa !9
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = load ptr, ptr %A, align 8, !tbaa !9
  %arraydecay = getelementptr inbounds [120 x [120 x [120 x double]]], ptr %1, i64 0, i64 0
  %2 = load ptr, ptr %B, align 8, !tbaa !9
  %arraydecay2 = getelementptr inbounds [120 x [120 x [120 x double]]], ptr %2, i64 0, i64 0
  call void @init_array(i32 noundef %0, ptr noundef %arraydecay, ptr noundef %arraydecay2)
  call void (...) @polybench_timer_start()
  %3 = load i32, ptr %tsteps, align 4, !tbaa !5
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %5 = load ptr, ptr %A, align 8, !tbaa !9
  %arraydecay3 = getelementptr inbounds [120 x [120 x [120 x double]]], ptr %5, i64 0, i64 0
  %6 = load ptr, ptr %B, align 8, !tbaa !9
  %arraydecay4 = getelementptr inbounds [120 x [120 x [120 x double]]], ptr %6, i64 0, i64 0
  call void @kernel_heat_3d(i32 noundef %3, i32 noundef %4, ptr noundef %arraydecay3, ptr noundef %arraydecay4)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %7 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %7, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load ptr, ptr %argv.addr, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 0
  %9 = load ptr, ptr %arrayidx, align 8, !tbaa !29
  %call5 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str.5) #11
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %11 = load ptr, ptr %A, align 8, !tbaa !9
  %arraydecay6 = getelementptr inbounds [120 x [120 x [120 x double]]], ptr %11, i64 0, i64 0
  call void @print_array(i32 noundef %10, ptr noundef %arraydecay6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load ptr, ptr %A, align 8, !tbaa !9
  call void @free(ptr noundef %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %B) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %A) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tsteps) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 noundef %n, ptr noundef %A, ptr noundef %B) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %A, ptr %A.addr, align 8, !tbaa !9
  store ptr %B, ptr %B.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc19, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end21

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %5 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %6, %7
  %8 = load i32, ptr %n.addr, align 4, !tbaa !5
  %9 = load i32, ptr %k, align 4, !tbaa !5
  %sub = sub nsw i32 %8, %9
  %add7 = add nsw i32 %add, %sub
  %conv = sitofp i32 %add7 to double
  %mul = fmul double %conv, 1.000000e+01
  %10 = load i32, ptr %n.addr, align 4, !tbaa !5
  %conv8 = sitofp i32 %10 to double
  %div = fdiv double %mul, %conv8
  %11 = load ptr, ptr %B.addr, align 8, !tbaa !9
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [120 x [120 x double]], ptr %11, i64 %idxprom
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx, i64 0, i64 %idxprom9
  %14 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds [120 x double], ptr %arrayidx10, i64 0, i64 %idxprom11
  store double %div, ptr %arrayidx12, align 8, !tbaa !12
  %15 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [120 x [120 x double]], ptr %15, i64 %idxprom13
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom15 = sext i32 %17 to i64
  %arrayidx16 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx14, i64 0, i64 %idxprom15
  %18 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds [120 x double], ptr %arrayidx16, i64 0, i64 %idxprom17
  store double %div, ptr %arrayidx18, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %19 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !31

for.end:                                          ; preds = %for.cond4
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %inc20 = add nsw i32 %20, 1
  store i32 %inc20, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !32

for.end21:                                        ; preds = %for.cond1
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %inc23 = add nsw i32 %21, 1
  store i32 %inc23, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !33

for.end24:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kernel_heat_3d(i32 noundef %tsteps, i32 noundef %n, ptr noundef %A, ptr noundef %B) #0 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %tsteps, ptr %tsteps.addr, align 4, !tbaa !5
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %A, ptr %A.addr, align 8, !tbaa !9
  store ptr %B, ptr %B.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8
  store i32 1, ptr %t, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc192, %entry
  %0 = load i32, ptr %t, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, 500
  br i1 %cmp, label %for.body, label %for.end194

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc90, %for.body
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %2, 1
  %cmp2 = icmp slt i32 %1, %sub
  br i1 %cmp2, label %for.body3, label %for.end92

for.body3:                                        ; preds = %for.cond1
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc87, %for.body3
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %4 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub5 = sub nsw i32 %4, 1
  %cmp6 = icmp slt i32 %3, %sub5
  br i1 %cmp6, label %for.body7, label %for.end89

for.body7:                                        ; preds = %for.cond4
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body7
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %6 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %6, 1
  %cmp10 = icmp slt i32 %5, %sub9
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond8
  %7 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %8, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [120 x [120 x double]], ptr %7, i64 %idxprom
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx, i64 0, i64 %idxprom12
  %10 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [120 x double], ptr %arrayidx13, i64 0, i64 %idxprom14
  %11 = load double, ptr %arrayidx15, align 8, !tbaa !12
  %12 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [120 x [120 x double]], ptr %12, i64 %idxprom16
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx17, i64 0, i64 %idxprom18
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [120 x double], ptr %arrayidx19, i64 0, i64 %idxprom20
  %16 = load double, ptr %arrayidx21, align 8, !tbaa !12
  %17 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %16, double %11)
  %18 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %sub22 = sub nsw i32 %19, 1
  %idxprom23 = sext i32 %sub22 to i64
  %arrayidx24 = getelementptr inbounds [120 x [120 x double]], ptr %18, i64 %idxprom23
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom25 = sext i32 %20 to i64
  %arrayidx26 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx24, i64 0, i64 %idxprom25
  %21 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom27 = sext i32 %21 to i64
  %arrayidx28 = getelementptr inbounds [120 x double], ptr %arrayidx26, i64 0, i64 %idxprom27
  %22 = load double, ptr %arrayidx28, align 8, !tbaa !12
  %add29 = fadd double %17, %22
  %23 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %24 to i64
  %arrayidx31 = getelementptr inbounds [120 x [120 x double]], ptr %23, i64 %idxprom30
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %add32 = add nsw i32 %25, 1
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx31, i64 0, i64 %idxprom33
  %26 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom35 = sext i32 %26 to i64
  %arrayidx36 = getelementptr inbounds [120 x double], ptr %arrayidx34, i64 0, i64 %idxprom35
  %27 = load double, ptr %arrayidx36, align 8, !tbaa !12
  %28 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom37 = sext i32 %29 to i64
  %arrayidx38 = getelementptr inbounds [120 x [120 x double]], ptr %28, i64 %idxprom37
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom39 = sext i32 %30 to i64
  %arrayidx40 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx38, i64 0, i64 %idxprom39
  %31 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom41 = sext i32 %31 to i64
  %arrayidx42 = getelementptr inbounds [120 x double], ptr %arrayidx40, i64 0, i64 %idxprom41
  %32 = load double, ptr %arrayidx42, align 8, !tbaa !12
  %33 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %32, double %27)
  %34 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom44 = sext i32 %35 to i64
  %arrayidx45 = getelementptr inbounds [120 x [120 x double]], ptr %34, i64 %idxprom44
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %sub46 = sub nsw i32 %36, 1
  %idxprom47 = sext i32 %sub46 to i64
  %arrayidx48 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx45, i64 0, i64 %idxprom47
  %37 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom49 = sext i32 %37 to i64
  %arrayidx50 = getelementptr inbounds [120 x double], ptr %arrayidx48, i64 0, i64 %idxprom49
  %38 = load double, ptr %arrayidx50, align 8, !tbaa !12
  %add51 = fadd double %33, %38
  %mul52 = fmul double 1.250000e-01, %add51
  %39 = call double @llvm.fmuladd.f64(double 1.250000e-01, double %add29, double %mul52)
  %40 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %41 to i64
  %arrayidx54 = getelementptr inbounds [120 x [120 x double]], ptr %40, i64 %idxprom53
  %42 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom55 = sext i32 %42 to i64
  %arrayidx56 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx54, i64 0, i64 %idxprom55
  %43 = load i32, ptr %k, align 4, !tbaa !5
  %add57 = add nsw i32 %43, 1
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds [120 x double], ptr %arrayidx56, i64 0, i64 %idxprom58
  %44 = load double, ptr %arrayidx59, align 8, !tbaa !12
  %45 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom60 = sext i32 %46 to i64
  %arrayidx61 = getelementptr inbounds [120 x [120 x double]], ptr %45, i64 %idxprom60
  %47 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom62 = sext i32 %47 to i64
  %arrayidx63 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx61, i64 0, i64 %idxprom62
  %48 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom64 = sext i32 %48 to i64
  %arrayidx65 = getelementptr inbounds [120 x double], ptr %arrayidx63, i64 0, i64 %idxprom64
  %49 = load double, ptr %arrayidx65, align 8, !tbaa !12
  %50 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %49, double %44)
  %51 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %52 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom66 = sext i32 %52 to i64
  %arrayidx67 = getelementptr inbounds [120 x [120 x double]], ptr %51, i64 %idxprom66
  %53 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom68 = sext i32 %53 to i64
  %arrayidx69 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx67, i64 0, i64 %idxprom68
  %54 = load i32, ptr %k, align 4, !tbaa !5
  %sub70 = sub nsw i32 %54, 1
  %idxprom71 = sext i32 %sub70 to i64
  %arrayidx72 = getelementptr inbounds [120 x double], ptr %arrayidx69, i64 0, i64 %idxprom71
  %55 = load double, ptr %arrayidx72, align 8, !tbaa !12
  %add73 = fadd double %50, %55
  %56 = call double @llvm.fmuladd.f64(double 1.250000e-01, double %add73, double %39)
  %57 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %58 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom74 = sext i32 %58 to i64
  %arrayidx75 = getelementptr inbounds [120 x [120 x double]], ptr %57, i64 %idxprom74
  %59 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom76 = sext i32 %59 to i64
  %arrayidx77 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx75, i64 0, i64 %idxprom76
  %60 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom78 = sext i32 %60 to i64
  %arrayidx79 = getelementptr inbounds [120 x double], ptr %arrayidx77, i64 0, i64 %idxprom78
  %61 = load double, ptr %arrayidx79, align 8, !tbaa !12
  %add80 = fadd double %56, %61
  %62 = load ptr, ptr %B.addr, align 8, !tbaa !9
  %63 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom81 = sext i32 %63 to i64
  %arrayidx82 = getelementptr inbounds [120 x [120 x double]], ptr %62, i64 %idxprom81
  %64 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom83 = sext i32 %64 to i64
  %arrayidx84 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx82, i64 0, i64 %idxprom83
  %65 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom85 = sext i32 %65 to i64
  %arrayidx86 = getelementptr inbounds [120 x double], ptr %arrayidx84, i64 0, i64 %idxprom85
  store double %add80, ptr %arrayidx86, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %66 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %66, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !34

for.end:                                          ; preds = %for.cond8
  br label %for.inc87

for.inc87:                                        ; preds = %for.end
  %67 = load i32, ptr %j, align 4, !tbaa !5
  %inc88 = add nsw i32 %67, 1
  store i32 %inc88, ptr %j, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !35

for.end89:                                        ; preds = %for.cond4
  br label %for.inc90

for.inc90:                                        ; preds = %for.end89
  %68 = load i32, ptr %i, align 4, !tbaa !5
  %inc91 = add nsw i32 %68, 1
  store i32 %inc91, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !36

for.end92:                                        ; preds = %for.cond1
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc189, %for.end92
  %69 = load i32, ptr %i, align 4, !tbaa !5
  %70 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub94 = sub nsw i32 %70, 1
  %cmp95 = icmp slt i32 %69, %sub94
  br i1 %cmp95, label %for.body96, label %for.end191

for.body96:                                       ; preds = %for.cond93
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc186, %for.body96
  %71 = load i32, ptr %j, align 4, !tbaa !5
  %72 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub98 = sub nsw i32 %72, 1
  %cmp99 = icmp slt i32 %71, %sub98
  br i1 %cmp99, label %for.body100, label %for.end188

for.body100:                                      ; preds = %for.cond97
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond101

for.cond101:                                      ; preds = %for.inc183, %for.body100
  %73 = load i32, ptr %k, align 4, !tbaa !5
  %74 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub102 = sub nsw i32 %74, 1
  %cmp103 = icmp slt i32 %73, %sub102
  br i1 %cmp103, label %for.body104, label %for.end185

for.body104:                                      ; preds = %for.cond101
  %75 = load ptr, ptr %B.addr, align 8, !tbaa !9
  %76 = load i32, ptr %i, align 4, !tbaa !5
  %add105 = add nsw i32 %76, 1
  %idxprom106 = sext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds [120 x [120 x double]], ptr %75, i64 %idxprom106
  %77 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom108 = sext i32 %77 to i64
  %arrayidx109 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx107, i64 0, i64 %idxprom108
  %78 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom110 = sext i32 %78 to i64
  %arrayidx111 = getelementptr inbounds [120 x double], ptr %arrayidx109, i64 0, i64 %idxprom110
  %79 = load double, ptr %arrayidx111, align 8, !tbaa !12
  %80 = load ptr, ptr %B.addr, align 8, !tbaa !9
  %81 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom112 = sext i32 %81 to i64
  %arrayidx113 = getelementptr inbounds [120 x [120 x double]], ptr %80, i64 %idxprom112
  %82 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom114 = sext i32 %82 to i64
  %arrayidx115 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx113, i64 0, i64 %idxprom114
  %83 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom116 = sext i32 %83 to i64
  %arrayidx117 = getelementptr inbounds [120 x double], ptr %arrayidx115, i64 0, i64 %idxprom116
  %84 = load double, ptr %arrayidx117, align 8, !tbaa !12
  %85 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %84, double %79)
  %86 = load ptr, ptr %B.addr, align 8, !tbaa !9
  %87 = load i32, ptr %i, align 4, !tbaa !5
  %sub118 = sub nsw i32 %87, 1
  %idxprom119 = sext i32 %sub118 to i64
  %arrayidx120 = getelementptr inbounds [120 x [120 x double]], ptr %86, i64 %idxprom119
  %88 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom121 = sext i32 %88 to i64
  %arrayidx122 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx120, i64 0, i64 %idxprom121
  %89 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom123 = sext i32 %89 to i64
  %arrayidx124 = getelementptr inbounds [120 x double], ptr %arrayidx122, i64 0, i64 %idxprom123
  %90 = load double, ptr %arrayidx124, align 8, !tbaa !12
  %add125 = fadd double %85, %90
  %91 = load ptr, ptr %B.addr, align 8, !tbaa !9
  %92 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom126 = sext i32 %92 to i64
  %arrayidx127 = getelementptr inbounds [120 x [120 x double]], ptr %91, i64 %idxprom126
  %93 = load i32, ptr %j, align 4, !tbaa !5
  %add128 = add nsw i32 %93, 1
  %idxprom129 = sext i32 %add128 to i64
  %arrayidx130 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx127, i64 0, i64 %idxprom129
  %94 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom131 = sext i32 %94 to i64
  %arrayidx132 = getelementptr inbounds [120 x double], ptr %arrayidx130, i64 0, i64 %idxprom131
  %95 = load double, ptr %arrayidx132, align 8, !tbaa !12
  %96 = load ptr, ptr %B.addr, align 8, !tbaa !9
  %97 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom133 = sext i32 %97 to i64
  %arrayidx134 = getelementptr inbounds [120 x [120 x double]], ptr %96, i64 %idxprom133
  %98 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom135 = sext i32 %98 to i64
  %arrayidx136 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx134, i64 0, i64 %idxprom135
  %99 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom137 = sext i32 %99 to i64
  %arrayidx138 = getelementptr inbounds [120 x double], ptr %arrayidx136, i64 0, i64 %idxprom137
  %100 = load double, ptr %arrayidx138, align 8, !tbaa !12
  %101 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %100, double %95)
  %102 = load ptr, ptr %B.addr, align 8, !tbaa !9
  %103 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom140 = sext i32 %103 to i64
  %arrayidx141 = getelementptr inbounds [120 x [120 x double]], ptr %102, i64 %idxprom140
  %104 = load i32, ptr %j, align 4, !tbaa !5
  %sub142 = sub nsw i32 %104, 1
  %idxprom143 = sext i32 %sub142 to i64
  %arrayidx144 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx141, i64 0, i64 %idxprom143
  %105 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom145 = sext i32 %105 to i64
  %arrayidx146 = getelementptr inbounds [120 x double], ptr %arrayidx144, i64 0, i64 %idxprom145
  %106 = load double, ptr %arrayidx146, align 8, !tbaa !12
  %add147 = fadd double %101, %106
  %mul148 = fmul double 1.250000e-01, %add147
  %107 = call double @llvm.fmuladd.f64(double 1.250000e-01, double %add125, double %mul148)
  %108 = load ptr, ptr %B.addr, align 8, !tbaa !9
  %109 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom149 = sext i32 %109 to i64
  %arrayidx150 = getelementptr inbounds [120 x [120 x double]], ptr %108, i64 %idxprom149
  %110 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom151 = sext i32 %110 to i64
  %arrayidx152 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx150, i64 0, i64 %idxprom151
  %111 = load i32, ptr %k, align 4, !tbaa !5
  %add153 = add nsw i32 %111, 1
  %idxprom154 = sext i32 %add153 to i64
  %arrayidx155 = getelementptr inbounds [120 x double], ptr %arrayidx152, i64 0, i64 %idxprom154
  %112 = load double, ptr %arrayidx155, align 8, !tbaa !12
  %113 = load ptr, ptr %B.addr, align 8, !tbaa !9
  %114 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom156 = sext i32 %114 to i64
  %arrayidx157 = getelementptr inbounds [120 x [120 x double]], ptr %113, i64 %idxprom156
  %115 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom158 = sext i32 %115 to i64
  %arrayidx159 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx157, i64 0, i64 %idxprom158
  %116 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom160 = sext i32 %116 to i64
  %arrayidx161 = getelementptr inbounds [120 x double], ptr %arrayidx159, i64 0, i64 %idxprom160
  %117 = load double, ptr %arrayidx161, align 8, !tbaa !12
  %118 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %117, double %112)
  %119 = load ptr, ptr %B.addr, align 8, !tbaa !9
  %120 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom162 = sext i32 %120 to i64
  %arrayidx163 = getelementptr inbounds [120 x [120 x double]], ptr %119, i64 %idxprom162
  %121 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom164 = sext i32 %121 to i64
  %arrayidx165 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx163, i64 0, i64 %idxprom164
  %122 = load i32, ptr %k, align 4, !tbaa !5
  %sub166 = sub nsw i32 %122, 1
  %idxprom167 = sext i32 %sub166 to i64
  %arrayidx168 = getelementptr inbounds [120 x double], ptr %arrayidx165, i64 0, i64 %idxprom167
  %123 = load double, ptr %arrayidx168, align 8, !tbaa !12
  %add169 = fadd double %118, %123
  %124 = call double @llvm.fmuladd.f64(double 1.250000e-01, double %add169, double %107)
  %125 = load ptr, ptr %B.addr, align 8, !tbaa !9
  %126 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom170 = sext i32 %126 to i64
  %arrayidx171 = getelementptr inbounds [120 x [120 x double]], ptr %125, i64 %idxprom170
  %127 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom172 = sext i32 %127 to i64
  %arrayidx173 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx171, i64 0, i64 %idxprom172
  %128 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom174 = sext i32 %128 to i64
  %arrayidx175 = getelementptr inbounds [120 x double], ptr %arrayidx173, i64 0, i64 %idxprom174
  %129 = load double, ptr %arrayidx175, align 8, !tbaa !12
  %add176 = fadd double %124, %129
  %130 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %131 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom177 = sext i32 %131 to i64
  %arrayidx178 = getelementptr inbounds [120 x [120 x double]], ptr %130, i64 %idxprom177
  %132 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom179 = sext i32 %132 to i64
  %arrayidx180 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx178, i64 0, i64 %idxprom179
  %133 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom181 = sext i32 %133 to i64
  %arrayidx182 = getelementptr inbounds [120 x double], ptr %arrayidx180, i64 0, i64 %idxprom181
  store double %add176, ptr %arrayidx182, align 8, !tbaa !12
  br label %for.inc183

for.inc183:                                       ; preds = %for.body104
  %134 = load i32, ptr %k, align 4, !tbaa !5
  %inc184 = add nsw i32 %134, 1
  store i32 %inc184, ptr %k, align 4, !tbaa !5
  br label %for.cond101, !llvm.loop !37

for.end185:                                       ; preds = %for.cond101
  br label %for.inc186

for.inc186:                                       ; preds = %for.end185
  %135 = load i32, ptr %j, align 4, !tbaa !5
  %inc187 = add nsw i32 %135, 1
  store i32 %inc187, ptr %j, align 4, !tbaa !5
  br label %for.cond97, !llvm.loop !38

for.end188:                                       ; preds = %for.cond97
  br label %for.inc189

for.inc189:                                       ; preds = %for.end188
  %136 = load i32, ptr %i, align 4, !tbaa !5
  %inc190 = add nsw i32 %136, 1
  store i32 %inc190, ptr %i, align 4, !tbaa !5
  br label %for.cond93, !llvm.loop !39

for.end191:                                       ; preds = %for.cond93
  br label %for.inc192

for.inc192:                                       ; preds = %for.end191
  %137 = load i32, ptr %t, align 4, !tbaa !5
  %inc193 = add nsw i32 %137, 1
  store i32 %inc193, ptr %t, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !40

for.end194:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8
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
  %k = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
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
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc18, %for.body
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end20

for.body4:                                        ; preds = %for.cond2
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %6 = load i32, ptr %k, align 4, !tbaa !5
  %7 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %6, %7
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %n.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %8, %9
  %10 = load i32, ptr %n.addr, align 4, !tbaa !5
  %mul8 = mul nsw i32 %mul, %10
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %12 = load i32, ptr %n.addr, align 4, !tbaa !5
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
  %arrayidx = getelementptr inbounds [120 x [120 x double]], ptr %16, i64 %idxprom
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds [120 x [120 x double]], ptr %arrayidx, i64 0, i64 %idxprom13
  %19 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds [120 x double], ptr %arrayidx14, i64 0, i64 %idxprom15
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
