; ModuleID = '/root/exp/RFunipassLab/external_datasets/build/ir_build/polybench_full/durbin/durbin.linked.bc'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"y\00", align 1
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
  %r = alloca ptr, align 8
  %y = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8
  store i32 2000, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #8
  %call = call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  store ptr %call, ptr %r, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #8
  %call1 = call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  store ptr %call1, ptr %y, align 8, !tbaa !9
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = load ptr, ptr %r, align 8, !tbaa !9
  %arraydecay = getelementptr inbounds [2000 x double], ptr %1, i64 0, i64 0
  call void @init_array(i32 noundef %0, ptr noundef %arraydecay)
  call void (...) @polybench_timer_start()
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = load ptr, ptr %r, align 8, !tbaa !9
  %arraydecay2 = getelementptr inbounds [2000 x double], ptr %3, i64 0, i64 0
  %4 = load ptr, ptr %y, align 8, !tbaa !9
  %arraydecay3 = getelementptr inbounds [2000 x double], ptr %4, i64 0, i64 0
  call void @kernel_durbin(i32 noundef %2, ptr noundef %arraydecay2, ptr noundef %arraydecay3)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %5 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %5, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %argv.addr, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx, align 8, !tbaa !29
  %call4 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str.5) #11
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %9 = load ptr, ptr %y, align 8, !tbaa !9
  %arraydecay5 = getelementptr inbounds [2000 x double], ptr %9, i64 0, i64 0
  call void @print_array(i32 noundef %8, ptr noundef %arraydecay5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load ptr, ptr %r, align 8, !tbaa !9
  call void @free(ptr noundef %10) #8
  %11 = load ptr, ptr %y, align 8, !tbaa !9
  call void @free(ptr noundef %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 noundef %n, ptr noundef %r) #0 {
entry:
  %n.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %r, ptr %r.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %n.addr, align 4, !tbaa !5
  %add = add nsw i32 %2, 1
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %sub = sub nsw i32 %add, %3
  %conv = sitofp i32 %sub to double
  %4 = load ptr, ptr %r.addr, align 8, !tbaa !9
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds double, ptr %4, i64 %idxprom
  store double %conv, ptr %arrayidx, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kernel_durbin(i32 noundef %n, ptr noundef %r, ptr noundef %y) #0 {
entry:
  %n.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %z = alloca [2000 x double], align 16
  %alpha = alloca double, align 8
  %beta = alloca double, align 8
  %sum = alloca double, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %r, ptr %r.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16000, ptr %z) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8
  %0 = load ptr, ptr %r.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds double, ptr %0, i64 0
  %1 = load double, ptr %arrayidx, align 8, !tbaa !12
  %fneg = fneg double %1
  %2 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx1 = getelementptr inbounds double, ptr %2, i64 0
  store double %fneg, ptr %arrayidx1, align 8, !tbaa !12
  store double 1.000000e+00, ptr %beta, align 8, !tbaa !12
  %3 = load ptr, ptr %r.addr, align 8, !tbaa !9
  %arrayidx2 = getelementptr inbounds double, ptr %3, i64 0
  %4 = load double, ptr %arrayidx2, align 8, !tbaa !12
  %fneg3 = fneg double %4
  store double %fneg3, ptr %alpha, align 8, !tbaa !12
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %6 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  %7 = load double, ptr %alpha, align 8, !tbaa !12
  %8 = load double, ptr %alpha, align 8, !tbaa !12
  %neg = fneg double %7
  %9 = call double @llvm.fmuladd.f64(double %neg, double %8, double 1.000000e+00)
  %10 = load double, ptr %beta, align 8, !tbaa !12
  %mul = fmul double %9, %10
  store double %mul, ptr %beta, align 8, !tbaa !12
  store double 0.000000e+00, ptr %sum, align 8, !tbaa !12
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %12 = load i32, ptr %k, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %11, %12
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %13 = load ptr, ptr %r.addr, align 8, !tbaa !9
  %14 = load i32, ptr %k, align 4, !tbaa !5
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %sub = sub nsw i32 %14, %15
  %sub7 = sub nsw i32 %sub, 1
  %idxprom = sext i32 %sub7 to i64
  %arrayidx8 = getelementptr inbounds double, ptr %13, i64 %idxprom
  %16 = load double, ptr %arrayidx8, align 8, !tbaa !12
  %17 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds double, ptr %17, i64 %idxprom9
  %19 = load double, ptr %arrayidx10, align 8, !tbaa !12
  %20 = load double, ptr %sum, align 8, !tbaa !12
  %21 = call double @llvm.fmuladd.f64(double %16, double %19, double %20)
  store double %21, ptr %sum, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !32

for.end:                                          ; preds = %for.cond4
  %23 = load ptr, ptr %r.addr, align 8, !tbaa !9
  %24 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom12 = sext i32 %24 to i64
  %arrayidx13 = getelementptr inbounds double, ptr %23, i64 %idxprom12
  %25 = load double, ptr %arrayidx13, align 8, !tbaa !12
  %26 = load double, ptr %sum, align 8, !tbaa !12
  %add = fadd double %25, %26
  %fneg14 = fneg double %add
  %27 = load double, ptr %beta, align 8, !tbaa !12
  %div = fdiv double %fneg14, %27
  store double %div, ptr %alpha, align 8, !tbaa !12
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.end
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %29 = load i32, ptr %k, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %28, %29
  br i1 %cmp16, label %for.body17, label %for.end29

for.body17:                                       ; preds = %for.cond15
  %30 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %31 to i64
  %arrayidx19 = getelementptr inbounds double, ptr %30, i64 %idxprom18
  %32 = load double, ptr %arrayidx19, align 8, !tbaa !12
  %33 = load double, ptr %alpha, align 8, !tbaa !12
  %34 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %35 = load i32, ptr %k, align 4, !tbaa !5
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %sub20 = sub nsw i32 %35, %36
  %sub21 = sub nsw i32 %sub20, 1
  %idxprom22 = sext i32 %sub21 to i64
  %arrayidx23 = getelementptr inbounds double, ptr %34, i64 %idxprom22
  %37 = load double, ptr %arrayidx23, align 8, !tbaa !12
  %38 = call double @llvm.fmuladd.f64(double %33, double %37, double %32)
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %39 to i64
  %arrayidx26 = getelementptr inbounds [2000 x double], ptr %z, i64 0, i64 %idxprom25
  store double %38, ptr %arrayidx26, align 8, !tbaa !12
  br label %for.inc27

for.inc27:                                        ; preds = %for.body17
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %inc28 = add nsw i32 %40, 1
  store i32 %inc28, ptr %i, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !33

for.end29:                                        ; preds = %for.cond15
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc37, %for.end29
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %42 = load i32, ptr %k, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %41, %42
  br i1 %cmp31, label %for.body32, label %for.end39

for.body32:                                       ; preds = %for.cond30
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %43 to i64
  %arrayidx34 = getelementptr inbounds [2000 x double], ptr %z, i64 0, i64 %idxprom33
  %44 = load double, ptr %arrayidx34, align 8, !tbaa !12
  %45 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %46 to i64
  %arrayidx36 = getelementptr inbounds double, ptr %45, i64 %idxprom35
  store double %44, ptr %arrayidx36, align 8, !tbaa !12
  br label %for.inc37

for.inc37:                                        ; preds = %for.body32
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %inc38 = add nsw i32 %47, 1
  store i32 %inc38, ptr %i, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !34

for.end39:                                        ; preds = %for.cond30
  %48 = load double, ptr %alpha, align 8, !tbaa !12
  %49 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %50 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom40 = sext i32 %50 to i64
  %arrayidx41 = getelementptr inbounds double, ptr %49, i64 %idxprom40
  store double %48, ptr %arrayidx41, align 8, !tbaa !12
  br label %for.inc42

for.inc42:                                        ; preds = %for.end39
  %51 = load i32, ptr %k, align 4, !tbaa !5
  %inc43 = add nsw i32 %51, 1
  store i32 %inc43, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !35

for.end44:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha) #8
  call void @llvm.lifetime.end.p0(i64 16000, ptr %z) #8
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #7

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 noundef %n, ptr noundef %y) #0 {
entry:
  %n.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
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
  %7 = load ptr, ptr %y.addr, align 8, !tbaa !9
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
  br label %for.cond, !llvm.loop !36

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
