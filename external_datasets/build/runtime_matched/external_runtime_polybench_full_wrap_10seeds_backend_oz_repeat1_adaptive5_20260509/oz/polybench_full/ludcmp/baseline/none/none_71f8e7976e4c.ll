; ModuleID = '/root/exp/RFunipassLab/external_datasets/build/ir_build/polybench_full/ludcmp/ludcmp.linked.bc'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"x\00", align 1
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
  %b = alloca ptr, align 8
  %x = alloca ptr, align 8
  %y = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8
  store i32 2000, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %A) #8
  %call = call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8)
  store ptr %call, ptr %A, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #8
  %call1 = call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  store ptr %call1, ptr %b, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #8
  %call2 = call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  store ptr %call2, ptr %x, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #8
  %call3 = call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  store ptr %call3, ptr %y, align 8, !tbaa !9
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = load ptr, ptr %A, align 8, !tbaa !9
  %arraydecay = getelementptr inbounds [2000 x [2000 x double]], ptr %1, i64 0, i64 0
  %2 = load ptr, ptr %b, align 8, !tbaa !9
  %arraydecay4 = getelementptr inbounds [2000 x double], ptr %2, i64 0, i64 0
  %3 = load ptr, ptr %x, align 8, !tbaa !9
  %arraydecay5 = getelementptr inbounds [2000 x double], ptr %3, i64 0, i64 0
  %4 = load ptr, ptr %y, align 8, !tbaa !9
  %arraydecay6 = getelementptr inbounds [2000 x double], ptr %4, i64 0, i64 0
  call void @init_array(i32 noundef %0, ptr noundef %arraydecay, ptr noundef %arraydecay4, ptr noundef %arraydecay5, ptr noundef %arraydecay6)
  call void (...) @polybench_timer_start()
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %6 = load ptr, ptr %A, align 8, !tbaa !9
  %arraydecay7 = getelementptr inbounds [2000 x [2000 x double]], ptr %6, i64 0, i64 0
  %7 = load ptr, ptr %b, align 8, !tbaa !9
  %arraydecay8 = getelementptr inbounds [2000 x double], ptr %7, i64 0, i64 0
  %8 = load ptr, ptr %x, align 8, !tbaa !9
  %arraydecay9 = getelementptr inbounds [2000 x double], ptr %8, i64 0, i64 0
  %9 = load ptr, ptr %y, align 8, !tbaa !9
  %arraydecay10 = getelementptr inbounds [2000 x double], ptr %9, i64 0, i64 0
  call void @kernel_ludcmp(i32 noundef %5, ptr noundef %arraydecay7, ptr noundef %arraydecay8, ptr noundef %arraydecay9, ptr noundef %arraydecay10)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %10 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %10, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %11 = load ptr, ptr %argv.addr, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 0
  %12 = load ptr, ptr %arrayidx, align 8, !tbaa !29
  %call11 = call i32 @strcmp(ptr noundef %12, ptr noundef @.str.5) #11
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %14 = load ptr, ptr %x, align 8, !tbaa !9
  %arraydecay12 = getelementptr inbounds [2000 x double], ptr %14, i64 0, i64 0
  call void @print_array(i32 noundef %13, ptr noundef %arraydecay12)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %15 = load ptr, ptr %A, align 8, !tbaa !9
  call void @free(ptr noundef %15) #8
  %16 = load ptr, ptr %b, align 8, !tbaa !9
  call void @free(ptr noundef %16) #8
  %17 = load ptr, ptr %x, align 8, !tbaa !9
  call void @free(ptr noundef %17) #8
  %18 = load ptr, ptr %y, align 8, !tbaa !9
  call void @free(ptr noundef %18) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %A) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 noundef %n, ptr noundef %A, ptr noundef %b, ptr noundef %x, ptr noundef %y) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fn = alloca double, align 8
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  %B = alloca ptr, align 8
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %A, ptr %A.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %fn) #8
  %0 = load i32, ptr %n.addr, align 4, !tbaa !5
  %conv = sitofp i32 %0 to double
  store double %conv, ptr %fn, align 8, !tbaa !12
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds double, ptr %3, i64 %idxprom
  store double 0.000000e+00, ptr %arrayidx, align 8, !tbaa !12
  %5 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds double, ptr %5, i64 %idxprom2
  store double 0.000000e+00, ptr %arrayidx3, align 8, !tbaa !12
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %7, 1
  %conv4 = sitofp i32 %add to double
  %8 = load double, ptr %fn, align 8, !tbaa !12
  %div = fdiv double %conv4, %8
  %div5 = fdiv double %div, 2.000000e+00
  %add6 = fadd double %div5, 4.000000e+00
  %9 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds double, ptr %9, i64 %idxprom7
  store double %add6, ptr %arrayidx8, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc44, %for.end
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %13 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %12, %13
  br i1 %cmp10, label %for.body12, label %for.end46

for.body12:                                       ; preds = %for.cond9
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc25, %for.body12
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %cmp14 = icmp sle i32 %14, %15
  br i1 %cmp14, label %for.body16, label %for.end27

for.body16:                                       ; preds = %for.cond13
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %sub = sub nsw i32 0, %16
  %17 = load i32, ptr %n.addr, align 4, !tbaa !5
  %rem = srem i32 %sub, %17
  %conv17 = sitofp i32 %rem to double
  %18 = load i32, ptr %n.addr, align 4, !tbaa !5
  %conv18 = sitofp i32 %18 to double
  %div19 = fdiv double %conv17, %conv18
  %add20 = fadd double %div19, 1.000000e+00
  %19 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds [2000 x double], ptr %19, i64 %idxprom21
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom23 = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds [2000 x double], ptr %arrayidx22, i64 0, i64 %idxprom23
  store double %add20, ptr %arrayidx24, align 8, !tbaa !12
  br label %for.inc25

for.inc25:                                        ; preds = %for.body16
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %inc26 = add nsw i32 %22, 1
  store i32 %inc26, ptr %j, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !32

for.end27:                                        ; preds = %for.cond13
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %add28 = add nsw i32 %23, 1
  store i32 %add28, ptr %j, align 4, !tbaa !5
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc37, %for.end27
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %25 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %24, %25
  br i1 %cmp30, label %for.body32, label %for.end39

for.body32:                                       ; preds = %for.cond29
  %26 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %27 to i64
  %arrayidx34 = getelementptr inbounds [2000 x double], ptr %26, i64 %idxprom33
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom35 = sext i32 %28 to i64
  %arrayidx36 = getelementptr inbounds [2000 x double], ptr %arrayidx34, i64 0, i64 %idxprom35
  store double 0.000000e+00, ptr %arrayidx36, align 8, !tbaa !12
  br label %for.inc37

for.inc37:                                        ; preds = %for.body32
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %inc38 = add nsw i32 %29, 1
  store i32 %inc38, ptr %j, align 4, !tbaa !5
  br label %for.cond29, !llvm.loop !33

for.end39:                                        ; preds = %for.cond29
  %30 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %31 to i64
  %arrayidx41 = getelementptr inbounds [2000 x double], ptr %30, i64 %idxprom40
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %32 to i64
  %arrayidx43 = getelementptr inbounds [2000 x double], ptr %arrayidx41, i64 0, i64 %idxprom42
  store double 1.000000e+00, ptr %arrayidx43, align 8, !tbaa !12
  br label %for.inc44

for.inc44:                                        ; preds = %for.end39
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %inc45 = add nsw i32 %33, 1
  store i32 %inc45, ptr %i, align 4, !tbaa !5
  br label %for.cond9, !llvm.loop !34

for.end46:                                        ; preds = %for.cond9
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %B) #8
  %call = call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8)
  store ptr %call, ptr %B, align 8, !tbaa !9
  store i32 0, ptr %r, align 4, !tbaa !5
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc62, %for.end46
  %34 = load i32, ptr %r, align 4, !tbaa !5
  %35 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %34, %35
  br i1 %cmp48, label %for.body50, label %for.end64

for.body50:                                       ; preds = %for.cond47
  store i32 0, ptr %s, align 4, !tbaa !5
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc59, %for.body50
  %36 = load i32, ptr %s, align 4, !tbaa !5
  %37 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %36, %37
  br i1 %cmp52, label %for.body54, label %for.end61

for.body54:                                       ; preds = %for.cond51
  %38 = load ptr, ptr %B, align 8, !tbaa !9
  %39 = load i32, ptr %r, align 4, !tbaa !5
  %idxprom55 = sext i32 %39 to i64
  %arrayidx56 = getelementptr inbounds [2000 x [2000 x double]], ptr %38, i64 0, i64 %idxprom55
  %40 = load i32, ptr %s, align 4, !tbaa !5
  %idxprom57 = sext i32 %40 to i64
  %arrayidx58 = getelementptr inbounds [2000 x double], ptr %arrayidx56, i64 0, i64 %idxprom57
  store double 0.000000e+00, ptr %arrayidx58, align 8, !tbaa !12
  br label %for.inc59

for.inc59:                                        ; preds = %for.body54
  %41 = load i32, ptr %s, align 4, !tbaa !5
  %inc60 = add nsw i32 %41, 1
  store i32 %inc60, ptr %s, align 4, !tbaa !5
  br label %for.cond51, !llvm.loop !35

for.end61:                                        ; preds = %for.cond51
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %42 = load i32, ptr %r, align 4, !tbaa !5
  %inc63 = add nsw i32 %42, 1
  store i32 %inc63, ptr %r, align 4, !tbaa !5
  br label %for.cond47, !llvm.loop !36

for.end64:                                        ; preds = %for.cond47
  store i32 0, ptr %t, align 4, !tbaa !5
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc95, %for.end64
  %43 = load i32, ptr %t, align 4, !tbaa !5
  %44 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %43, %44
  br i1 %cmp66, label %for.body68, label %for.end97

for.body68:                                       ; preds = %for.cond65
  store i32 0, ptr %r, align 4, !tbaa !5
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc92, %for.body68
  %45 = load i32, ptr %r, align 4, !tbaa !5
  %46 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp70 = icmp slt i32 %45, %46
  br i1 %cmp70, label %for.body72, label %for.end94

for.body72:                                       ; preds = %for.cond69
  store i32 0, ptr %s, align 4, !tbaa !5
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc89, %for.body72
  %47 = load i32, ptr %s, align 4, !tbaa !5
  %48 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp74 = icmp slt i32 %47, %48
  br i1 %cmp74, label %for.body76, label %for.end91

for.body76:                                       ; preds = %for.cond73
  %49 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %50 = load i32, ptr %r, align 4, !tbaa !5
  %idxprom77 = sext i32 %50 to i64
  %arrayidx78 = getelementptr inbounds [2000 x double], ptr %49, i64 %idxprom77
  %51 = load i32, ptr %t, align 4, !tbaa !5
  %idxprom79 = sext i32 %51 to i64
  %arrayidx80 = getelementptr inbounds [2000 x double], ptr %arrayidx78, i64 0, i64 %idxprom79
  %52 = load double, ptr %arrayidx80, align 8, !tbaa !12
  %53 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %54 = load i32, ptr %s, align 4, !tbaa !5
  %idxprom81 = sext i32 %54 to i64
  %arrayidx82 = getelementptr inbounds [2000 x double], ptr %53, i64 %idxprom81
  %55 = load i32, ptr %t, align 4, !tbaa !5
  %idxprom83 = sext i32 %55 to i64
  %arrayidx84 = getelementptr inbounds [2000 x double], ptr %arrayidx82, i64 0, i64 %idxprom83
  %56 = load double, ptr %arrayidx84, align 8, !tbaa !12
  %57 = load ptr, ptr %B, align 8, !tbaa !9
  %58 = load i32, ptr %r, align 4, !tbaa !5
  %idxprom85 = sext i32 %58 to i64
  %arrayidx86 = getelementptr inbounds [2000 x [2000 x double]], ptr %57, i64 0, i64 %idxprom85
  %59 = load i32, ptr %s, align 4, !tbaa !5
  %idxprom87 = sext i32 %59 to i64
  %arrayidx88 = getelementptr inbounds [2000 x double], ptr %arrayidx86, i64 0, i64 %idxprom87
  %60 = load double, ptr %arrayidx88, align 8, !tbaa !12
  %61 = call double @llvm.fmuladd.f64(double %52, double %56, double %60)
  store double %61, ptr %arrayidx88, align 8, !tbaa !12
  br label %for.inc89

for.inc89:                                        ; preds = %for.body76
  %62 = load i32, ptr %s, align 4, !tbaa !5
  %inc90 = add nsw i32 %62, 1
  store i32 %inc90, ptr %s, align 4, !tbaa !5
  br label %for.cond73, !llvm.loop !37

for.end91:                                        ; preds = %for.cond73
  br label %for.inc92

for.inc92:                                        ; preds = %for.end91
  %63 = load i32, ptr %r, align 4, !tbaa !5
  %inc93 = add nsw i32 %63, 1
  store i32 %inc93, ptr %r, align 4, !tbaa !5
  br label %for.cond69, !llvm.loop !38

for.end94:                                        ; preds = %for.cond69
  br label %for.inc95

for.inc95:                                        ; preds = %for.end94
  %64 = load i32, ptr %t, align 4, !tbaa !5
  %inc96 = add nsw i32 %64, 1
  store i32 %inc96, ptr %t, align 4, !tbaa !5
  br label %for.cond65, !llvm.loop !39

for.end97:                                        ; preds = %for.cond65
  store i32 0, ptr %r, align 4, !tbaa !5
  br label %for.cond98

for.cond98:                                       ; preds = %for.inc117, %for.end97
  %65 = load i32, ptr %r, align 4, !tbaa !5
  %66 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp99 = icmp slt i32 %65, %66
  br i1 %cmp99, label %for.body101, label %for.end119

for.body101:                                      ; preds = %for.cond98
  store i32 0, ptr %s, align 4, !tbaa !5
  br label %for.cond102

for.cond102:                                      ; preds = %for.inc114, %for.body101
  %67 = load i32, ptr %s, align 4, !tbaa !5
  %68 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp103 = icmp slt i32 %67, %68
  br i1 %cmp103, label %for.body105, label %for.end116

for.body105:                                      ; preds = %for.cond102
  %69 = load ptr, ptr %B, align 8, !tbaa !9
  %70 = load i32, ptr %r, align 4, !tbaa !5
  %idxprom106 = sext i32 %70 to i64
  %arrayidx107 = getelementptr inbounds [2000 x [2000 x double]], ptr %69, i64 0, i64 %idxprom106
  %71 = load i32, ptr %s, align 4, !tbaa !5
  %idxprom108 = sext i32 %71 to i64
  %arrayidx109 = getelementptr inbounds [2000 x double], ptr %arrayidx107, i64 0, i64 %idxprom108
  %72 = load double, ptr %arrayidx109, align 8, !tbaa !12
  %73 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %74 = load i32, ptr %r, align 4, !tbaa !5
  %idxprom110 = sext i32 %74 to i64
  %arrayidx111 = getelementptr inbounds [2000 x double], ptr %73, i64 %idxprom110
  %75 = load i32, ptr %s, align 4, !tbaa !5
  %idxprom112 = sext i32 %75 to i64
  %arrayidx113 = getelementptr inbounds [2000 x double], ptr %arrayidx111, i64 0, i64 %idxprom112
  store double %72, ptr %arrayidx113, align 8, !tbaa !12
  br label %for.inc114

for.inc114:                                       ; preds = %for.body105
  %76 = load i32, ptr %s, align 4, !tbaa !5
  %inc115 = add nsw i32 %76, 1
  store i32 %inc115, ptr %s, align 4, !tbaa !5
  br label %for.cond102, !llvm.loop !40

for.end116:                                       ; preds = %for.cond102
  br label %for.inc117

for.inc117:                                       ; preds = %for.end116
  %77 = load i32, ptr %r, align 4, !tbaa !5
  %inc118 = add nsw i32 %77, 1
  store i32 %inc118, ptr %r, align 4, !tbaa !5
  br label %for.cond98, !llvm.loop !41

for.end119:                                       ; preds = %for.cond98
  %78 = load ptr, ptr %B, align 8, !tbaa !9
  call void @free(ptr noundef %78) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %B) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %fn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kernel_ludcmp(i32 noundef %n, ptr noundef %A, ptr noundef %b, ptr noundef %x, ptr noundef %y) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %w = alloca double, align 8
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %A, ptr %A.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc57, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end59

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc25, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end27

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [2000 x double], ptr %4, i64 %idxprom
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [2000 x double], ptr %arrayidx, i64 0, i64 %idxprom4
  %7 = load double, ptr %arrayidx5, align 8, !tbaa !12
  store double %7, ptr %w, align 8, !tbaa !12
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body3
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %8, %9
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %10 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [2000 x double], ptr %10, i64 %idxprom9
  %12 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [2000 x double], ptr %arrayidx10, i64 0, i64 %idxprom11
  %13 = load double, ptr %arrayidx12, align 8, !tbaa !12
  %14 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [2000 x double], ptr %14, i64 %idxprom13
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [2000 x double], ptr %arrayidx14, i64 0, i64 %idxprom15
  %17 = load double, ptr %arrayidx16, align 8, !tbaa !12
  %18 = load double, ptr %w, align 8, !tbaa !12
  %neg = fneg double %13
  %19 = call double @llvm.fmuladd.f64(double %neg, double %17, double %18)
  store double %19, ptr %w, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %20 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !42

for.end:                                          ; preds = %for.cond6
  %21 = load double, ptr %w, align 8, !tbaa !12
  %22 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom17 = sext i32 %23 to i64
  %arrayidx18 = getelementptr inbounds [2000 x double], ptr %22, i64 %idxprom17
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom19 = sext i32 %24 to i64
  %arrayidx20 = getelementptr inbounds [2000 x double], ptr %arrayidx18, i64 0, i64 %idxprom19
  %25 = load double, ptr %arrayidx20, align 8, !tbaa !12
  %div = fdiv double %21, %25
  %26 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %27 to i64
  %arrayidx22 = getelementptr inbounds [2000 x double], ptr %26, i64 %idxprom21
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom23 = sext i32 %28 to i64
  %arrayidx24 = getelementptr inbounds [2000 x double], ptr %arrayidx22, i64 0, i64 %idxprom23
  store double %div, ptr %arrayidx24, align 8, !tbaa !12
  br label %for.inc25

for.inc25:                                        ; preds = %for.end
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %inc26 = add nsw i32 %29, 1
  store i32 %inc26, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !43

for.end27:                                        ; preds = %for.cond1
  %30 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %30, ptr %j, align 4, !tbaa !5
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc54, %for.end27
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %32 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %31, %32
  br i1 %cmp29, label %for.body30, label %for.end56

for.body30:                                       ; preds = %for.cond28
  %33 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %34 to i64
  %arrayidx32 = getelementptr inbounds [2000 x double], ptr %33, i64 %idxprom31
  %35 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom33 = sext i32 %35 to i64
  %arrayidx34 = getelementptr inbounds [2000 x double], ptr %arrayidx32, i64 0, i64 %idxprom33
  %36 = load double, ptr %arrayidx34, align 8, !tbaa !12
  store double %36, ptr %w, align 8, !tbaa !12
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc47, %for.body30
  %37 = load i32, ptr %k, align 4, !tbaa !5
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %37, %38
  br i1 %cmp36, label %for.body37, label %for.end49

for.body37:                                       ; preds = %for.cond35
  %39 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom38 = sext i32 %40 to i64
  %arrayidx39 = getelementptr inbounds [2000 x double], ptr %39, i64 %idxprom38
  %41 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom40 = sext i32 %41 to i64
  %arrayidx41 = getelementptr inbounds [2000 x double], ptr %arrayidx39, i64 0, i64 %idxprom40
  %42 = load double, ptr %arrayidx41, align 8, !tbaa !12
  %43 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %44 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom42 = sext i32 %44 to i64
  %arrayidx43 = getelementptr inbounds [2000 x double], ptr %43, i64 %idxprom42
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom44 = sext i32 %45 to i64
  %arrayidx45 = getelementptr inbounds [2000 x double], ptr %arrayidx43, i64 0, i64 %idxprom44
  %46 = load double, ptr %arrayidx45, align 8, !tbaa !12
  %47 = load double, ptr %w, align 8, !tbaa !12
  %neg46 = fneg double %42
  %48 = call double @llvm.fmuladd.f64(double %neg46, double %46, double %47)
  store double %48, ptr %w, align 8, !tbaa !12
  br label %for.inc47

for.inc47:                                        ; preds = %for.body37
  %49 = load i32, ptr %k, align 4, !tbaa !5
  %inc48 = add nsw i32 %49, 1
  store i32 %inc48, ptr %k, align 4, !tbaa !5
  br label %for.cond35, !llvm.loop !44

for.end49:                                        ; preds = %for.cond35
  %50 = load double, ptr %w, align 8, !tbaa !12
  %51 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %52 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom50 = sext i32 %52 to i64
  %arrayidx51 = getelementptr inbounds [2000 x double], ptr %51, i64 %idxprom50
  %53 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom52 = sext i32 %53 to i64
  %arrayidx53 = getelementptr inbounds [2000 x double], ptr %arrayidx51, i64 0, i64 %idxprom52
  store double %50, ptr %arrayidx53, align 8, !tbaa !12
  br label %for.inc54

for.inc54:                                        ; preds = %for.end49
  %54 = load i32, ptr %j, align 4, !tbaa !5
  %inc55 = add nsw i32 %54, 1
  store i32 %inc55, ptr %j, align 4, !tbaa !5
  br label %for.cond28, !llvm.loop !45

for.end56:                                        ; preds = %for.cond28
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %55 = load i32, ptr %i, align 4, !tbaa !5
  %inc58 = add nsw i32 %55, 1
  store i32 %inc58, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !46

for.end59:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc80, %for.end59
  %56 = load i32, ptr %i, align 4, !tbaa !5
  %57 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %56, %57
  br i1 %cmp61, label %for.body62, label %for.end82

for.body62:                                       ; preds = %for.cond60
  %58 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %59 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom63 = sext i32 %59 to i64
  %arrayidx64 = getelementptr inbounds double, ptr %58, i64 %idxprom63
  %60 = load double, ptr %arrayidx64, align 8, !tbaa !12
  store double %60, ptr %w, align 8, !tbaa !12
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc75, %for.body62
  %61 = load i32, ptr %j, align 4, !tbaa !5
  %62 = load i32, ptr %i, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %61, %62
  br i1 %cmp66, label %for.body67, label %for.end77

for.body67:                                       ; preds = %for.cond65
  %63 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %64 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom68 = sext i32 %64 to i64
  %arrayidx69 = getelementptr inbounds [2000 x double], ptr %63, i64 %idxprom68
  %65 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom70 = sext i32 %65 to i64
  %arrayidx71 = getelementptr inbounds [2000 x double], ptr %arrayidx69, i64 0, i64 %idxprom70
  %66 = load double, ptr %arrayidx71, align 8, !tbaa !12
  %67 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %68 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom72 = sext i32 %68 to i64
  %arrayidx73 = getelementptr inbounds double, ptr %67, i64 %idxprom72
  %69 = load double, ptr %arrayidx73, align 8, !tbaa !12
  %70 = load double, ptr %w, align 8, !tbaa !12
  %neg74 = fneg double %66
  %71 = call double @llvm.fmuladd.f64(double %neg74, double %69, double %70)
  store double %71, ptr %w, align 8, !tbaa !12
  br label %for.inc75

for.inc75:                                        ; preds = %for.body67
  %72 = load i32, ptr %j, align 4, !tbaa !5
  %inc76 = add nsw i32 %72, 1
  store i32 %inc76, ptr %j, align 4, !tbaa !5
  br label %for.cond65, !llvm.loop !47

for.end77:                                        ; preds = %for.cond65
  %73 = load double, ptr %w, align 8, !tbaa !12
  %74 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %75 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom78 = sext i32 %75 to i64
  %arrayidx79 = getelementptr inbounds double, ptr %74, i64 %idxprom78
  store double %73, ptr %arrayidx79, align 8, !tbaa !12
  br label %for.inc80

for.inc80:                                        ; preds = %for.end77
  %76 = load i32, ptr %i, align 4, !tbaa !5
  %inc81 = add nsw i32 %76, 1
  store i32 %inc81, ptr %i, align 4, !tbaa !5
  br label %for.cond60, !llvm.loop !48

for.end82:                                        ; preds = %for.cond60
  %77 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %77, 1
  store i32 %sub, ptr %i, align 4, !tbaa !5
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc108, %for.end82
  %78 = load i32, ptr %i, align 4, !tbaa !5
  %cmp84 = icmp sge i32 %78, 0
  br i1 %cmp84, label %for.body85, label %for.end109

for.body85:                                       ; preds = %for.cond83
  %79 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %80 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom86 = sext i32 %80 to i64
  %arrayidx87 = getelementptr inbounds double, ptr %79, i64 %idxprom86
  %81 = load double, ptr %arrayidx87, align 8, !tbaa !12
  store double %81, ptr %w, align 8, !tbaa !12
  %82 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %82, 1
  store i32 %add, ptr %j, align 4, !tbaa !5
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc98, %for.body85
  %83 = load i32, ptr %j, align 4, !tbaa !5
  %84 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp89 = icmp slt i32 %83, %84
  br i1 %cmp89, label %for.body90, label %for.end100

for.body90:                                       ; preds = %for.cond88
  %85 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %86 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom91 = sext i32 %86 to i64
  %arrayidx92 = getelementptr inbounds [2000 x double], ptr %85, i64 %idxprom91
  %87 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom93 = sext i32 %87 to i64
  %arrayidx94 = getelementptr inbounds [2000 x double], ptr %arrayidx92, i64 0, i64 %idxprom93
  %88 = load double, ptr %arrayidx94, align 8, !tbaa !12
  %89 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %90 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom95 = sext i32 %90 to i64
  %arrayidx96 = getelementptr inbounds double, ptr %89, i64 %idxprom95
  %91 = load double, ptr %arrayidx96, align 8, !tbaa !12
  %92 = load double, ptr %w, align 8, !tbaa !12
  %neg97 = fneg double %88
  %93 = call double @llvm.fmuladd.f64(double %neg97, double %91, double %92)
  store double %93, ptr %w, align 8, !tbaa !12
  br label %for.inc98

for.inc98:                                        ; preds = %for.body90
  %94 = load i32, ptr %j, align 4, !tbaa !5
  %inc99 = add nsw i32 %94, 1
  store i32 %inc99, ptr %j, align 4, !tbaa !5
  br label %for.cond88, !llvm.loop !49

for.end100:                                       ; preds = %for.cond88
  %95 = load double, ptr %w, align 8, !tbaa !12
  %96 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %97 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom101 = sext i32 %97 to i64
  %arrayidx102 = getelementptr inbounds [2000 x double], ptr %96, i64 %idxprom101
  %98 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom103 = sext i32 %98 to i64
  %arrayidx104 = getelementptr inbounds [2000 x double], ptr %arrayidx102, i64 0, i64 %idxprom103
  %99 = load double, ptr %arrayidx104, align 8, !tbaa !12
  %div105 = fdiv double %95, %99
  %100 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %101 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom106 = sext i32 %101 to i64
  %arrayidx107 = getelementptr inbounds double, ptr %100, i64 %idxprom106
  store double %div105, ptr %arrayidx107, align 8, !tbaa !12
  br label %for.inc108

for.inc108:                                       ; preds = %for.end100
  %102 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %102, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  br label %for.cond83, !llvm.loop !50

for.end109:                                       ; preds = %for.cond83
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #7

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 noundef %n, ptr noundef %x) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
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
  %7 = load ptr, ptr %x.addr, align 8, !tbaa !9
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
  br label %for.cond, !llvm.loop !51

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
!51 = distinct !{!51, !15}
