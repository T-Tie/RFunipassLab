; ModuleID = '/root/exp/RFunipassLab/external_datasets/build/ir_build/polybench_full/deriche/deriche.linked.bc'
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
@.str.3.8 = private unnamed_addr constant [7 x i8] c"imgOut\00", align 1
@.str.4.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [7 x i8] c"%0.2f \00", align 1
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
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %alpha = alloca float, align 4
  %imgIn = alloca ptr, align 8
  %imgOut = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %y2 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #8
  store i32 4096, ptr %w, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #8
  store i32 2160, ptr %h, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %imgIn) #8
  %call = call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4)
  store ptr %call, ptr %imgIn, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %imgOut) #8
  %call1 = call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4)
  store ptr %call1, ptr %imgOut, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #8
  %call2 = call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4)
  store ptr %call2, ptr %y1, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %y2) #8
  %call3 = call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4)
  store ptr %call3, ptr %y2, align 8, !tbaa !29
  %0 = load i32, ptr %w, align 4, !tbaa !5
  %1 = load i32, ptr %h, align 4, !tbaa !5
  %2 = load ptr, ptr %imgIn, align 8, !tbaa !29
  %arraydecay = getelementptr inbounds [4096 x [2160 x float]], ptr %2, i64 0, i64 0
  %3 = load ptr, ptr %imgOut, align 8, !tbaa !29
  %arraydecay4 = getelementptr inbounds [4096 x [2160 x float]], ptr %3, i64 0, i64 0
  call void @init_array(i32 noundef %0, i32 noundef %1, ptr noundef %alpha, ptr noundef %arraydecay, ptr noundef %arraydecay4)
  call void (...) @polybench_timer_start()
  %4 = load i32, ptr %w, align 4, !tbaa !5
  %5 = load i32, ptr %h, align 4, !tbaa !5
  %6 = load float, ptr %alpha, align 4, !tbaa !31
  %7 = load ptr, ptr %imgIn, align 8, !tbaa !29
  %arraydecay5 = getelementptr inbounds [4096 x [2160 x float]], ptr %7, i64 0, i64 0
  %8 = load ptr, ptr %imgOut, align 8, !tbaa !29
  %arraydecay6 = getelementptr inbounds [4096 x [2160 x float]], ptr %8, i64 0, i64 0
  %9 = load ptr, ptr %y1, align 8, !tbaa !29
  %arraydecay7 = getelementptr inbounds [4096 x [2160 x float]], ptr %9, i64 0, i64 0
  %10 = load ptr, ptr %y2, align 8, !tbaa !29
  %arraydecay8 = getelementptr inbounds [4096 x [2160 x float]], ptr %10, i64 0, i64 0
  call void @kernel_deriche(i32 noundef %4, i32 noundef %5, float noundef %6, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %arraydecay7, ptr noundef %arraydecay8)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %11 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %11, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %12 = load ptr, ptr %argv.addr, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 0
  %13 = load ptr, ptr %arrayidx, align 8, !tbaa !33
  %call9 = call i32 @strcmp(ptr noundef %13, ptr noundef @.str.5) #11
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %14 = load i32, ptr %w, align 4, !tbaa !5
  %15 = load i32, ptr %h, align 4, !tbaa !5
  %16 = load ptr, ptr %imgOut, align 8, !tbaa !29
  %arraydecay10 = getelementptr inbounds [4096 x [2160 x float]], ptr %16, i64 0, i64 0
  call void @print_array(i32 noundef %14, i32 noundef %15, ptr noundef %arraydecay10)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %17 = load ptr, ptr %imgIn, align 8, !tbaa !29
  call void @free(ptr noundef %17) #8
  %18 = load ptr, ptr %imgOut, align 8, !tbaa !29
  call void @free(ptr noundef %18) #8
  %19 = load ptr, ptr %y1, align 8, !tbaa !29
  call void @free(ptr noundef %19) #8
  %20 = load ptr, ptr %y2, align 8, !tbaa !29
  call void @free(ptr noundef %20) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %y2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %imgOut) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %imgIn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 noundef %w, i32 noundef %h, ptr noundef %alpha, ptr noundef %imgIn, ptr noundef %imgOut) #0 {
entry:
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %imgIn.addr = alloca ptr, align 8
  %imgOut.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %w, ptr %w.addr, align 4, !tbaa !5
  store i32 %h, ptr %h.addr, align 4, !tbaa !5
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !29
  store ptr %imgIn, ptr %imgIn.addr, align 8, !tbaa !29
  store ptr %imgOut, ptr %imgOut.addr, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  %0 = load ptr, ptr %alpha.addr, align 8, !tbaa !29
  store float 2.500000e-01, ptr %0, align 4, !tbaa !31
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr %w.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %4 = load i32, ptr %h.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %mul = mul nsw i32 313, %5
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %mul4 = mul nsw i32 991, %6
  %add = add nsw i32 %mul, %mul4
  %rem = srem i32 %add, 65536
  %conv = sitofp i32 %rem to float
  %div = fdiv float %conv, 6.553500e+04
  %7 = load ptr, ptr %imgIn.addr, align 8, !tbaa !29
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [2160 x float], ptr %7, i64 %idxprom
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [2160 x float], ptr %arrayidx, i64 0, i64 %idxprom5
  store float %div, ptr %arrayidx6, align 4, !tbaa !31
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !35

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %inc8 = add nsw i32 %11, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !36

for.end9:                                         ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kernel_deriche(i32 noundef %w, i32 noundef %h, float noundef %alpha, ptr noundef %imgIn, ptr noundef %imgOut, ptr noundef %y1, ptr noundef %y2) #0 {
entry:
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %imgIn.addr = alloca ptr, align 8
  %imgOut.addr = alloca ptr, align 8
  %y1.addr = alloca ptr, align 8
  %y2.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %xm1 = alloca float, align 4
  %tm1 = alloca float, align 4
  %ym1 = alloca float, align 4
  %ym2 = alloca float, align 4
  %xp1 = alloca float, align 4
  %xp2 = alloca float, align 4
  %tp1 = alloca float, align 4
  %tp2 = alloca float, align 4
  %yp1 = alloca float, align 4
  %yp2 = alloca float, align 4
  %k = alloca float, align 4
  %a1 = alloca float, align 4
  %a2 = alloca float, align 4
  %a3 = alloca float, align 4
  %a4 = alloca float, align 4
  %a5 = alloca float, align 4
  %a6 = alloca float, align 4
  %a7 = alloca float, align 4
  %a8 = alloca float, align 4
  %b1 = alloca float, align 4
  %b2 = alloca float, align 4
  %c1 = alloca float, align 4
  %c2 = alloca float, align 4
  store i32 %w, ptr %w.addr, align 4, !tbaa !5
  store i32 %h, ptr %h.addr, align 4, !tbaa !5
  store float %alpha, ptr %alpha.addr, align 4, !tbaa !31
  store ptr %imgIn, ptr %imgIn.addr, align 8, !tbaa !29
  store ptr %imgOut, ptr %imgOut.addr, align 8, !tbaa !29
  store ptr %y1, ptr %y1.addr, align 8, !tbaa !29
  store ptr %y2, ptr %y2.addr, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %xm1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %tm1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ym1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ym2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %xp1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %xp2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %tp1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %tp2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %yp1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %yp2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %a1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %a2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %a3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %a4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %a5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %a6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %a7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %a8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %b1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %b2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %c1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %c2) #8
  %0 = load float, ptr %alpha.addr, align 4, !tbaa !31
  %fneg = fneg float %0
  %call = call float @expf(float noundef %fneg) #8, !tbaa !5
  %sub = fsub float 1.000000e+00, %call
  %1 = load float, ptr %alpha.addr, align 4, !tbaa !31
  %fneg1 = fneg float %1
  %call2 = call float @expf(float noundef %fneg1) #8, !tbaa !5
  %sub3 = fsub float 1.000000e+00, %call2
  %mul = fmul float %sub, %sub3
  %2 = load float, ptr %alpha.addr, align 4, !tbaa !31
  %mul4 = fmul float 2.000000e+00, %2
  %3 = load float, ptr %alpha.addr, align 4, !tbaa !31
  %fneg5 = fneg float %3
  %call6 = call float @expf(float noundef %fneg5) #8, !tbaa !5
  %4 = call float @llvm.fmuladd.f32(float %mul4, float %call6, float 1.000000e+00)
  %5 = load float, ptr %alpha.addr, align 4, !tbaa !31
  %mul8 = fmul float 2.000000e+00, %5
  %call9 = call float @expf(float noundef %mul8) #8, !tbaa !5
  %sub10 = fsub float %4, %call9
  %div = fdiv float %mul, %sub10
  store float %div, ptr %k, align 4, !tbaa !31
  %6 = load float, ptr %k, align 4, !tbaa !31
  store float %6, ptr %a5, align 4, !tbaa !31
  store float %6, ptr %a1, align 4, !tbaa !31
  %7 = load float, ptr %k, align 4, !tbaa !31
  %8 = load float, ptr %alpha.addr, align 4, !tbaa !31
  %fneg11 = fneg float %8
  %call12 = call float @expf(float noundef %fneg11) #8, !tbaa !5
  %mul13 = fmul float %7, %call12
  %9 = load float, ptr %alpha.addr, align 4, !tbaa !31
  %sub14 = fsub float %9, 1.000000e+00
  %mul15 = fmul float %mul13, %sub14
  store float %mul15, ptr %a6, align 4, !tbaa !31
  store float %mul15, ptr %a2, align 4, !tbaa !31
  %10 = load float, ptr %k, align 4, !tbaa !31
  %11 = load float, ptr %alpha.addr, align 4, !tbaa !31
  %fneg16 = fneg float %11
  %call17 = call float @expf(float noundef %fneg16) #8, !tbaa !5
  %mul18 = fmul float %10, %call17
  %12 = load float, ptr %alpha.addr, align 4, !tbaa !31
  %add = fadd float %12, 1.000000e+00
  %mul19 = fmul float %mul18, %add
  store float %mul19, ptr %a7, align 4, !tbaa !31
  store float %mul19, ptr %a3, align 4, !tbaa !31
  %13 = load float, ptr %k, align 4, !tbaa !31
  %fneg20 = fneg float %13
  %14 = load float, ptr %alpha.addr, align 4, !tbaa !31
  %mul21 = fmul float -2.000000e+00, %14
  %call22 = call float @expf(float noundef %mul21) #8, !tbaa !5
  %mul23 = fmul float %fneg20, %call22
  store float %mul23, ptr %a8, align 4, !tbaa !31
  store float %mul23, ptr %a4, align 4, !tbaa !31
  %15 = load float, ptr %alpha.addr, align 4, !tbaa !31
  %fneg24 = fneg float %15
  %call25 = call float @powf(float noundef 2.000000e+00, float noundef %fneg24) #8, !tbaa !5
  store float %call25, ptr %b1, align 4, !tbaa !31
  %16 = load float, ptr %alpha.addr, align 4, !tbaa !31
  %mul26 = fmul float -2.000000e+00, %16
  %call27 = call float @expf(float noundef %mul26) #8, !tbaa !5
  %fneg28 = fneg float %call27
  store float %fneg28, ptr %b2, align 4, !tbaa !31
  store float 1.000000e+00, ptr %c2, align 4, !tbaa !31
  store float 1.000000e+00, ptr %c1, align 4, !tbaa !31
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc50, %entry
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %18 = load i32, ptr %w.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %17, %18
  br i1 %cmp, label %for.body, label %for.end52

for.body:                                         ; preds = %for.cond
  store float 0.000000e+00, ptr %ym1, align 4, !tbaa !31
  store float 0.000000e+00, ptr %ym2, align 4, !tbaa !31
  store float 0.000000e+00, ptr %xm1, align 4, !tbaa !31
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc, %for.body
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %20 = load i32, ptr %h.addr, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %19, %20
  br i1 %cmp30, label %for.body31, label %for.end

for.body31:                                       ; preds = %for.cond29
  %21 = load float, ptr %a1, align 4, !tbaa !31
  %22 = load ptr, ptr %imgIn.addr, align 8, !tbaa !29
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds [2160 x float], ptr %22, i64 %idxprom
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom32 = sext i32 %24 to i64
  %arrayidx33 = getelementptr inbounds [2160 x float], ptr %arrayidx, i64 0, i64 %idxprom32
  %25 = load float, ptr %arrayidx33, align 4, !tbaa !31
  %26 = load float, ptr %a2, align 4, !tbaa !31
  %27 = load float, ptr %xm1, align 4, !tbaa !31
  %mul35 = fmul float %26, %27
  %28 = call float @llvm.fmuladd.f32(float %21, float %25, float %mul35)
  %29 = load float, ptr %b1, align 4, !tbaa !31
  %30 = load float, ptr %ym1, align 4, !tbaa !31
  %31 = call float @llvm.fmuladd.f32(float %29, float %30, float %28)
  %32 = load float, ptr %b2, align 4, !tbaa !31
  %33 = load float, ptr %ym2, align 4, !tbaa !31
  %34 = call float @llvm.fmuladd.f32(float %32, float %33, float %31)
  %35 = load ptr, ptr %y1.addr, align 8, !tbaa !29
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom38 = sext i32 %36 to i64
  %arrayidx39 = getelementptr inbounds [2160 x float], ptr %35, i64 %idxprom38
  %37 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom40 = sext i32 %37 to i64
  %arrayidx41 = getelementptr inbounds [2160 x float], ptr %arrayidx39, i64 0, i64 %idxprom40
  store float %34, ptr %arrayidx41, align 4, !tbaa !31
  %38 = load ptr, ptr %imgIn.addr, align 8, !tbaa !29
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %39 to i64
  %arrayidx43 = getelementptr inbounds [2160 x float], ptr %38, i64 %idxprom42
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom44 = sext i32 %40 to i64
  %arrayidx45 = getelementptr inbounds [2160 x float], ptr %arrayidx43, i64 0, i64 %idxprom44
  %41 = load float, ptr %arrayidx45, align 4, !tbaa !31
  store float %41, ptr %xm1, align 4, !tbaa !31
  %42 = load float, ptr %ym1, align 4, !tbaa !31
  store float %42, ptr %ym2, align 4, !tbaa !31
  %43 = load ptr, ptr %y1.addr, align 8, !tbaa !29
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom46 = sext i32 %44 to i64
  %arrayidx47 = getelementptr inbounds [2160 x float], ptr %43, i64 %idxprom46
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom48 = sext i32 %45 to i64
  %arrayidx49 = getelementptr inbounds [2160 x float], ptr %arrayidx47, i64 0, i64 %idxprom48
  %46 = load float, ptr %arrayidx49, align 4, !tbaa !31
  store float %46, ptr %ym1, align 4, !tbaa !31
  br label %for.inc

for.inc:                                          ; preds = %for.body31
  %47 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %47, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond29, !llvm.loop !37

for.end:                                          ; preds = %for.cond29
  br label %for.inc50

for.inc50:                                        ; preds = %for.end
  %48 = load i32, ptr %i, align 4, !tbaa !5
  %inc51 = add nsw i32 %48, 1
  store i32 %inc51, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !38

for.end52:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc78, %for.end52
  %49 = load i32, ptr %i, align 4, !tbaa !5
  %50 = load i32, ptr %w.addr, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %49, %50
  br i1 %cmp54, label %for.body55, label %for.end80

for.body55:                                       ; preds = %for.cond53
  store float 0.000000e+00, ptr %yp1, align 4, !tbaa !31
  store float 0.000000e+00, ptr %yp2, align 4, !tbaa !31
  store float 0.000000e+00, ptr %xp1, align 4, !tbaa !31
  store float 0.000000e+00, ptr %xp2, align 4, !tbaa !31
  %51 = load i32, ptr %h.addr, align 4, !tbaa !5
  %sub56 = sub nsw i32 %51, 1
  store i32 %sub56, ptr %j, align 4, !tbaa !5
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc76, %for.body55
  %52 = load i32, ptr %j, align 4, !tbaa !5
  %cmp58 = icmp sge i32 %52, 0
  br i1 %cmp58, label %for.body59, label %for.end77

for.body59:                                       ; preds = %for.cond57
  %53 = load float, ptr %a3, align 4, !tbaa !31
  %54 = load float, ptr %xp1, align 4, !tbaa !31
  %55 = load float, ptr %a4, align 4, !tbaa !31
  %56 = load float, ptr %xp2, align 4, !tbaa !31
  %mul61 = fmul float %55, %56
  %57 = call float @llvm.fmuladd.f32(float %53, float %54, float %mul61)
  %58 = load float, ptr %b1, align 4, !tbaa !31
  %59 = load float, ptr %yp1, align 4, !tbaa !31
  %60 = call float @llvm.fmuladd.f32(float %58, float %59, float %57)
  %61 = load float, ptr %b2, align 4, !tbaa !31
  %62 = load float, ptr %yp2, align 4, !tbaa !31
  %63 = call float @llvm.fmuladd.f32(float %61, float %62, float %60)
  %64 = load ptr, ptr %y2.addr, align 8, !tbaa !29
  %65 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom64 = sext i32 %65 to i64
  %arrayidx65 = getelementptr inbounds [2160 x float], ptr %64, i64 %idxprom64
  %66 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom66 = sext i32 %66 to i64
  %arrayidx67 = getelementptr inbounds [2160 x float], ptr %arrayidx65, i64 0, i64 %idxprom66
  store float %63, ptr %arrayidx67, align 4, !tbaa !31
  %67 = load float, ptr %xp1, align 4, !tbaa !31
  store float %67, ptr %xp2, align 4, !tbaa !31
  %68 = load ptr, ptr %imgIn.addr, align 8, !tbaa !29
  %69 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom68 = sext i32 %69 to i64
  %arrayidx69 = getelementptr inbounds [2160 x float], ptr %68, i64 %idxprom68
  %70 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom70 = sext i32 %70 to i64
  %arrayidx71 = getelementptr inbounds [2160 x float], ptr %arrayidx69, i64 0, i64 %idxprom70
  %71 = load float, ptr %arrayidx71, align 4, !tbaa !31
  store float %71, ptr %xp1, align 4, !tbaa !31
  %72 = load float, ptr %yp1, align 4, !tbaa !31
  store float %72, ptr %yp2, align 4, !tbaa !31
  %73 = load ptr, ptr %y2.addr, align 8, !tbaa !29
  %74 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom72 = sext i32 %74 to i64
  %arrayidx73 = getelementptr inbounds [2160 x float], ptr %73, i64 %idxprom72
  %75 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom74 = sext i32 %75 to i64
  %arrayidx75 = getelementptr inbounds [2160 x float], ptr %arrayidx73, i64 0, i64 %idxprom74
  %76 = load float, ptr %arrayidx75, align 4, !tbaa !31
  store float %76, ptr %yp1, align 4, !tbaa !31
  br label %for.inc76

for.inc76:                                        ; preds = %for.body59
  %77 = load i32, ptr %j, align 4, !tbaa !5
  %dec = add nsw i32 %77, -1
  store i32 %dec, ptr %j, align 4, !tbaa !5
  br label %for.cond57, !llvm.loop !39

for.end77:                                        ; preds = %for.cond57
  br label %for.inc78

for.inc78:                                        ; preds = %for.end77
  %78 = load i32, ptr %i, align 4, !tbaa !5
  %inc79 = add nsw i32 %78, 1
  store i32 %inc79, ptr %i, align 4, !tbaa !5
  br label %for.cond53, !llvm.loop !40

for.end80:                                        ; preds = %for.cond53
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc104, %for.end80
  %79 = load i32, ptr %i, align 4, !tbaa !5
  %80 = load i32, ptr %w.addr, align 4, !tbaa !5
  %cmp82 = icmp slt i32 %79, %80
  br i1 %cmp82, label %for.body83, label %for.end106

for.body83:                                       ; preds = %for.cond81
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond84

for.cond84:                                       ; preds = %for.inc101, %for.body83
  %81 = load i32, ptr %j, align 4, !tbaa !5
  %82 = load i32, ptr %h.addr, align 4, !tbaa !5
  %cmp85 = icmp slt i32 %81, %82
  br i1 %cmp85, label %for.body86, label %for.end103

for.body86:                                       ; preds = %for.cond84
  %83 = load float, ptr %c1, align 4, !tbaa !31
  %84 = load ptr, ptr %y1.addr, align 8, !tbaa !29
  %85 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom87 = sext i32 %85 to i64
  %arrayidx88 = getelementptr inbounds [2160 x float], ptr %84, i64 %idxprom87
  %86 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom89 = sext i32 %86 to i64
  %arrayidx90 = getelementptr inbounds [2160 x float], ptr %arrayidx88, i64 0, i64 %idxprom89
  %87 = load float, ptr %arrayidx90, align 4, !tbaa !31
  %88 = load ptr, ptr %y2.addr, align 8, !tbaa !29
  %89 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom91 = sext i32 %89 to i64
  %arrayidx92 = getelementptr inbounds [2160 x float], ptr %88, i64 %idxprom91
  %90 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom93 = sext i32 %90 to i64
  %arrayidx94 = getelementptr inbounds [2160 x float], ptr %arrayidx92, i64 0, i64 %idxprom93
  %91 = load float, ptr %arrayidx94, align 4, !tbaa !31
  %add95 = fadd float %87, %91
  %mul96 = fmul float %83, %add95
  %92 = load ptr, ptr %imgOut.addr, align 8, !tbaa !29
  %93 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom97 = sext i32 %93 to i64
  %arrayidx98 = getelementptr inbounds [2160 x float], ptr %92, i64 %idxprom97
  %94 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom99 = sext i32 %94 to i64
  %arrayidx100 = getelementptr inbounds [2160 x float], ptr %arrayidx98, i64 0, i64 %idxprom99
  store float %mul96, ptr %arrayidx100, align 4, !tbaa !31
  br label %for.inc101

for.inc101:                                       ; preds = %for.body86
  %95 = load i32, ptr %j, align 4, !tbaa !5
  %inc102 = add nsw i32 %95, 1
  store i32 %inc102, ptr %j, align 4, !tbaa !5
  br label %for.cond84, !llvm.loop !41

for.end103:                                       ; preds = %for.cond84
  br label %for.inc104

for.inc104:                                       ; preds = %for.end103
  %96 = load i32, ptr %i, align 4, !tbaa !5
  %inc105 = add nsw i32 %96, 1
  store i32 %inc105, ptr %i, align 4, !tbaa !5
  br label %for.cond81, !llvm.loop !42

for.end106:                                       ; preds = %for.cond81
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond107

for.cond107:                                      ; preds = %for.inc136, %for.end106
  %97 = load i32, ptr %j, align 4, !tbaa !5
  %98 = load i32, ptr %h.addr, align 4, !tbaa !5
  %cmp108 = icmp slt i32 %97, %98
  br i1 %cmp108, label %for.body109, label %for.end138

for.body109:                                      ; preds = %for.cond107
  store float 0.000000e+00, ptr %tm1, align 4, !tbaa !31
  store float 0.000000e+00, ptr %ym1, align 4, !tbaa !31
  store float 0.000000e+00, ptr %ym2, align 4, !tbaa !31
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond110

for.cond110:                                      ; preds = %for.inc133, %for.body109
  %99 = load i32, ptr %i, align 4, !tbaa !5
  %100 = load i32, ptr %w.addr, align 4, !tbaa !5
  %cmp111 = icmp slt i32 %99, %100
  br i1 %cmp111, label %for.body112, label %for.end135

for.body112:                                      ; preds = %for.cond110
  %101 = load float, ptr %a5, align 4, !tbaa !31
  %102 = load ptr, ptr %imgOut.addr, align 8, !tbaa !29
  %103 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom113 = sext i32 %103 to i64
  %arrayidx114 = getelementptr inbounds [2160 x float], ptr %102, i64 %idxprom113
  %104 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom115 = sext i32 %104 to i64
  %arrayidx116 = getelementptr inbounds [2160 x float], ptr %arrayidx114, i64 0, i64 %idxprom115
  %105 = load float, ptr %arrayidx116, align 4, !tbaa !31
  %106 = load float, ptr %a6, align 4, !tbaa !31
  %107 = load float, ptr %tm1, align 4, !tbaa !31
  %mul118 = fmul float %106, %107
  %108 = call float @llvm.fmuladd.f32(float %101, float %105, float %mul118)
  %109 = load float, ptr %b1, align 4, !tbaa !31
  %110 = load float, ptr %ym1, align 4, !tbaa !31
  %111 = call float @llvm.fmuladd.f32(float %109, float %110, float %108)
  %112 = load float, ptr %b2, align 4, !tbaa !31
  %113 = load float, ptr %ym2, align 4, !tbaa !31
  %114 = call float @llvm.fmuladd.f32(float %112, float %113, float %111)
  %115 = load ptr, ptr %y1.addr, align 8, !tbaa !29
  %116 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom121 = sext i32 %116 to i64
  %arrayidx122 = getelementptr inbounds [2160 x float], ptr %115, i64 %idxprom121
  %117 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom123 = sext i32 %117 to i64
  %arrayidx124 = getelementptr inbounds [2160 x float], ptr %arrayidx122, i64 0, i64 %idxprom123
  store float %114, ptr %arrayidx124, align 4, !tbaa !31
  %118 = load ptr, ptr %imgOut.addr, align 8, !tbaa !29
  %119 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom125 = sext i32 %119 to i64
  %arrayidx126 = getelementptr inbounds [2160 x float], ptr %118, i64 %idxprom125
  %120 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom127 = sext i32 %120 to i64
  %arrayidx128 = getelementptr inbounds [2160 x float], ptr %arrayidx126, i64 0, i64 %idxprom127
  %121 = load float, ptr %arrayidx128, align 4, !tbaa !31
  store float %121, ptr %tm1, align 4, !tbaa !31
  %122 = load float, ptr %ym1, align 4, !tbaa !31
  store float %122, ptr %ym2, align 4, !tbaa !31
  %123 = load ptr, ptr %y1.addr, align 8, !tbaa !29
  %124 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom129 = sext i32 %124 to i64
  %arrayidx130 = getelementptr inbounds [2160 x float], ptr %123, i64 %idxprom129
  %125 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom131 = sext i32 %125 to i64
  %arrayidx132 = getelementptr inbounds [2160 x float], ptr %arrayidx130, i64 0, i64 %idxprom131
  %126 = load float, ptr %arrayidx132, align 4, !tbaa !31
  store float %126, ptr %ym1, align 4, !tbaa !31
  br label %for.inc133

for.inc133:                                       ; preds = %for.body112
  %127 = load i32, ptr %i, align 4, !tbaa !5
  %inc134 = add nsw i32 %127, 1
  store i32 %inc134, ptr %i, align 4, !tbaa !5
  br label %for.cond110, !llvm.loop !43

for.end135:                                       ; preds = %for.cond110
  br label %for.inc136

for.inc136:                                       ; preds = %for.end135
  %128 = load i32, ptr %j, align 4, !tbaa !5
  %inc137 = add nsw i32 %128, 1
  store i32 %inc137, ptr %j, align 4, !tbaa !5
  br label %for.cond107, !llvm.loop !44

for.end138:                                       ; preds = %for.cond107
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond139

for.cond139:                                      ; preds = %for.inc165, %for.end138
  %129 = load i32, ptr %j, align 4, !tbaa !5
  %130 = load i32, ptr %h.addr, align 4, !tbaa !5
  %cmp140 = icmp slt i32 %129, %130
  br i1 %cmp140, label %for.body141, label %for.end167

for.body141:                                      ; preds = %for.cond139
  store float 0.000000e+00, ptr %tp1, align 4, !tbaa !31
  store float 0.000000e+00, ptr %tp2, align 4, !tbaa !31
  store float 0.000000e+00, ptr %yp1, align 4, !tbaa !31
  store float 0.000000e+00, ptr %yp2, align 4, !tbaa !31
  %131 = load i32, ptr %w.addr, align 4, !tbaa !5
  %sub142 = sub nsw i32 %131, 1
  store i32 %sub142, ptr %i, align 4, !tbaa !5
  br label %for.cond143

for.cond143:                                      ; preds = %for.inc162, %for.body141
  %132 = load i32, ptr %i, align 4, !tbaa !5
  %cmp144 = icmp sge i32 %132, 0
  br i1 %cmp144, label %for.body145, label %for.end164

for.body145:                                      ; preds = %for.cond143
  %133 = load float, ptr %a7, align 4, !tbaa !31
  %134 = load float, ptr %tp1, align 4, !tbaa !31
  %135 = load float, ptr %a8, align 4, !tbaa !31
  %136 = load float, ptr %tp2, align 4, !tbaa !31
  %mul147 = fmul float %135, %136
  %137 = call float @llvm.fmuladd.f32(float %133, float %134, float %mul147)
  %138 = load float, ptr %b1, align 4, !tbaa !31
  %139 = load float, ptr %yp1, align 4, !tbaa !31
  %140 = call float @llvm.fmuladd.f32(float %138, float %139, float %137)
  %141 = load float, ptr %b2, align 4, !tbaa !31
  %142 = load float, ptr %yp2, align 4, !tbaa !31
  %143 = call float @llvm.fmuladd.f32(float %141, float %142, float %140)
  %144 = load ptr, ptr %y2.addr, align 8, !tbaa !29
  %145 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom150 = sext i32 %145 to i64
  %arrayidx151 = getelementptr inbounds [2160 x float], ptr %144, i64 %idxprom150
  %146 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom152 = sext i32 %146 to i64
  %arrayidx153 = getelementptr inbounds [2160 x float], ptr %arrayidx151, i64 0, i64 %idxprom152
  store float %143, ptr %arrayidx153, align 4, !tbaa !31
  %147 = load float, ptr %tp1, align 4, !tbaa !31
  store float %147, ptr %tp2, align 4, !tbaa !31
  %148 = load ptr, ptr %imgOut.addr, align 8, !tbaa !29
  %149 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom154 = sext i32 %149 to i64
  %arrayidx155 = getelementptr inbounds [2160 x float], ptr %148, i64 %idxprom154
  %150 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom156 = sext i32 %150 to i64
  %arrayidx157 = getelementptr inbounds [2160 x float], ptr %arrayidx155, i64 0, i64 %idxprom156
  %151 = load float, ptr %arrayidx157, align 4, !tbaa !31
  store float %151, ptr %tp1, align 4, !tbaa !31
  %152 = load float, ptr %yp1, align 4, !tbaa !31
  store float %152, ptr %yp2, align 4, !tbaa !31
  %153 = load ptr, ptr %y2.addr, align 8, !tbaa !29
  %154 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom158 = sext i32 %154 to i64
  %arrayidx159 = getelementptr inbounds [2160 x float], ptr %153, i64 %idxprom158
  %155 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom160 = sext i32 %155 to i64
  %arrayidx161 = getelementptr inbounds [2160 x float], ptr %arrayidx159, i64 0, i64 %idxprom160
  %156 = load float, ptr %arrayidx161, align 4, !tbaa !31
  store float %156, ptr %yp1, align 4, !tbaa !31
  br label %for.inc162

for.inc162:                                       ; preds = %for.body145
  %157 = load i32, ptr %i, align 4, !tbaa !5
  %dec163 = add nsw i32 %157, -1
  store i32 %dec163, ptr %i, align 4, !tbaa !5
  br label %for.cond143, !llvm.loop !45

for.end164:                                       ; preds = %for.cond143
  br label %for.inc165

for.inc165:                                       ; preds = %for.end164
  %158 = load i32, ptr %j, align 4, !tbaa !5
  %inc166 = add nsw i32 %158, 1
  store i32 %inc166, ptr %j, align 4, !tbaa !5
  br label %for.cond139, !llvm.loop !46

for.end167:                                       ; preds = %for.cond139
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond168

for.cond168:                                      ; preds = %for.inc191, %for.end167
  %159 = load i32, ptr %i, align 4, !tbaa !5
  %160 = load i32, ptr %w.addr, align 4, !tbaa !5
  %cmp169 = icmp slt i32 %159, %160
  br i1 %cmp169, label %for.body170, label %for.end193

for.body170:                                      ; preds = %for.cond168
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond171

for.cond171:                                      ; preds = %for.inc188, %for.body170
  %161 = load i32, ptr %j, align 4, !tbaa !5
  %162 = load i32, ptr %h.addr, align 4, !tbaa !5
  %cmp172 = icmp slt i32 %161, %162
  br i1 %cmp172, label %for.body173, label %for.end190

for.body173:                                      ; preds = %for.cond171
  %163 = load float, ptr %c2, align 4, !tbaa !31
  %164 = load ptr, ptr %y1.addr, align 8, !tbaa !29
  %165 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom174 = sext i32 %165 to i64
  %arrayidx175 = getelementptr inbounds [2160 x float], ptr %164, i64 %idxprom174
  %166 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom176 = sext i32 %166 to i64
  %arrayidx177 = getelementptr inbounds [2160 x float], ptr %arrayidx175, i64 0, i64 %idxprom176
  %167 = load float, ptr %arrayidx177, align 4, !tbaa !31
  %168 = load ptr, ptr %y2.addr, align 8, !tbaa !29
  %169 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom178 = sext i32 %169 to i64
  %arrayidx179 = getelementptr inbounds [2160 x float], ptr %168, i64 %idxprom178
  %170 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom180 = sext i32 %170 to i64
  %arrayidx181 = getelementptr inbounds [2160 x float], ptr %arrayidx179, i64 0, i64 %idxprom180
  %171 = load float, ptr %arrayidx181, align 4, !tbaa !31
  %add182 = fadd float %167, %171
  %mul183 = fmul float %163, %add182
  %172 = load ptr, ptr %imgOut.addr, align 8, !tbaa !29
  %173 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom184 = sext i32 %173 to i64
  %arrayidx185 = getelementptr inbounds [2160 x float], ptr %172, i64 %idxprom184
  %174 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom186 = sext i32 %174 to i64
  %arrayidx187 = getelementptr inbounds [2160 x float], ptr %arrayidx185, i64 0, i64 %idxprom186
  store float %mul183, ptr %arrayidx187, align 4, !tbaa !31
  br label %for.inc188

for.inc188:                                       ; preds = %for.body173
  %175 = load i32, ptr %j, align 4, !tbaa !5
  %inc189 = add nsw i32 %175, 1
  store i32 %inc189, ptr %j, align 4, !tbaa !5
  br label %for.cond171, !llvm.loop !47

for.end190:                                       ; preds = %for.cond171
  br label %for.inc191

for.inc191:                                       ; preds = %for.end190
  %176 = load i32, ptr %i, align 4, !tbaa !5
  %inc192 = add nsw i32 %176, 1
  store i32 %inc192, ptr %i, align 4, !tbaa !5
  br label %for.cond168, !llvm.loop !48

for.end193:                                       ; preds = %for.cond168
  call void @llvm.lifetime.end.p0(i64 4, ptr %c2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %c1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %b2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %b1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %a8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %a7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %a6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %a5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %a4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %a3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %a2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %a1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %yp2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %yp1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tp2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tp1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %xp2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %xp1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ym2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ym1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tm1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %xm1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #7

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 noundef %w, i32 noundef %h, ptr noundef %imgOut) #0 {
entry:
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %imgOut.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %w, ptr %w.addr, align 4, !tbaa !5
  store i32 %h, ptr %h.addr, align 4, !tbaa !5
  store ptr %imgOut, ptr %imgOut.addr, align 8, !tbaa !29
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
  %3 = load i32, ptr %w.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %h.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %h.addr, align 4, !tbaa !5
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
  %11 = load ptr, ptr %imgOut.addr, align 8, !tbaa !29
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [2160 x float], ptr %11, i64 %idxprom
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds [2160 x float], ptr %arrayidx, i64 0, i64 %idxprom7
  %14 = load float, ptr %arrayidx8, align 4, !tbaa !31
  %conv = fpext float %14 to double
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.5.10, double noundef %conv) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !49

for.end:                                          ; preds = %for.cond2
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc11 = add nsw i32 %16, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !50

for.end12:                                        ; preds = %for.cond
  %17 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.6, ptr noundef @.str.3.8) #8
  %18 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nounwind
declare float @expf(float noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nounwind
declare float @powf(float noundef, float noundef) #4

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
!30 = !{!"p1 float", !11, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"float", !7, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 omnipotent char", !11, i64 0}
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
!50 = distinct !{!50, !15}
