; ModuleID = '/root/exp/RFunipassLab/external_datasets/build/ir_build/polybench/nussinov/nussinov.linked.bc'
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
@.str.3.8 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.4.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
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
  %seq = alloca ptr, align 8
  %table = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8
  store i32 2500, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %seq) #8
  %call = call ptr @polybench_alloc_data(i64 noundef 2500, i32 noundef 1)
  store ptr %call, ptr %seq, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #8
  %call1 = call ptr @polybench_alloc_data(i64 noundef 6250000, i32 noundef 4)
  store ptr %call1, ptr %table, align 8, !tbaa !31
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = load ptr, ptr %seq, align 8, !tbaa !29
  %arraydecay = getelementptr inbounds [2500 x i8], ptr %1, i64 0, i64 0
  %2 = load ptr, ptr %table, align 8, !tbaa !31
  %arraydecay2 = getelementptr inbounds [2500 x [2500 x i32]], ptr %2, i64 0, i64 0
  call void @init_array(i32 noundef %0, ptr noundef %arraydecay, ptr noundef %arraydecay2)
  call void (...) @polybench_timer_start()
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = load ptr, ptr %seq, align 8, !tbaa !29
  %arraydecay3 = getelementptr inbounds [2500 x i8], ptr %4, i64 0, i64 0
  %5 = load ptr, ptr %table, align 8, !tbaa !31
  %arraydecay4 = getelementptr inbounds [2500 x [2500 x i32]], ptr %5, i64 0, i64 0
  call void @kernel_nussinov(i32 noundef %3, ptr noundef %arraydecay3, ptr noundef %arraydecay4)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %6 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %6, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load ptr, ptr %argv.addr, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 0
  %8 = load ptr, ptr %arrayidx, align 8, !tbaa !29
  %call5 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.5) #11
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %10 = load ptr, ptr %table, align 8, !tbaa !31
  %arraydecay6 = getelementptr inbounds [2500 x [2500 x i32]], ptr %10, i64 0, i64 0
  call void @print_array(i32 noundef %9, ptr noundef %arraydecay6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %11 = load ptr, ptr %seq, align 8, !tbaa !29
  call void @free(ptr noundef %11) #8
  %12 = load ptr, ptr %table, align 8, !tbaa !31
  call void @free(ptr noundef %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %seq) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 noundef %n, ptr noundef %seq, ptr noundef %table) #0 {
entry:
  %n.addr = alloca i32, align 4
  %seq.addr = alloca ptr, align 8
  %table.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %seq, ptr %seq.addr, align 8, !tbaa !29
  store ptr %table, ptr %table.addr, align 8, !tbaa !31
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
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %2, 1
  %rem = srem i32 %add, 4
  %conv = trunc i32 %rem to i8
  %3 = load ptr, ptr %seq.addr, align 8, !tbaa !29
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !33
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc16, %for.end
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body4, label %for.end18

for.body4:                                        ; preds = %for.cond1
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %for.body4
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %9 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %8, %9
  br i1 %cmp6, label %for.body8, label %for.end15

for.body8:                                        ; preds = %for.cond5
  %10 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [2500 x i32], ptr %10, i64 %idxprom9
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [2500 x i32], ptr %arrayidx10, i64 0, i64 %idxprom11
  store i32 0, ptr %arrayidx12, align 4, !tbaa !5
  br label %for.inc13

for.inc13:                                        ; preds = %for.body8
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %inc14 = add nsw i32 %13, 1
  store i32 %inc14, ptr %j, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !35

for.end15:                                        ; preds = %for.cond5
  br label %for.inc16

for.inc16:                                        ; preds = %for.end15
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %inc17 = add nsw i32 %14, 1
  store i32 %inc17, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !36

for.end18:                                        ; preds = %for.cond1
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kernel_nussinov(i32 noundef %n, ptr noundef %seq, ptr noundef %table) #0 {
entry:
  %n.addr = alloca i32, align 4
  %seq.addr = alloca ptr, align 8
  %table.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %seq, ptr %seq.addr, align 8, !tbaa !29
  store ptr %table, ptr %table.addr, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8
  %0 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %0, 1
  store i32 %sub, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc195, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end196

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %2, 1
  store i32 %add, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc192, %for.body
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %4 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body3, label %for.end194

for.body3:                                        ; preds = %for.cond1
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %sub4 = sub nsw i32 %5, 1
  %cmp5 = icmp sge i32 %sub4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %6 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [2500 x i32], ptr %6, i64 %idxprom
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [2500 x i32], ptr %arrayidx, i64 0, i64 %idxprom6
  %9 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %10 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds [2500 x i32], ptr %10, i64 %idxprom8
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %sub10 = sub nsw i32 %12, 1
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds [2500 x i32], ptr %arrayidx9, i64 0, i64 %idxprom11
  %13 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp sge i32 %9, %13
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %14 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds [2500 x i32], ptr %14, i64 %idxprom14
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom16 = sext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [2500 x i32], ptr %arrayidx15, i64 0, i64 %idxprom16
  %17 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %18 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds [2500 x i32], ptr %18, i64 %idxprom18
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %sub20 = sub nsw i32 %20, 1
  %idxprom21 = sext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds [2500 x i32], ptr %arrayidx19, i64 0, i64 %idxprom21
  %21 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %21, %cond.false ]
  %22 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %23 to i64
  %arrayidx24 = getelementptr inbounds [2500 x i32], ptr %22, i64 %idxprom23
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom25 = sext i32 %24 to i64
  %arrayidx26 = getelementptr inbounds [2500 x i32], ptr %arrayidx24, i64 0, i64 %idxprom25
  store i32 %cond, ptr %arrayidx26, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %cond.end, %for.body3
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %add27 = add nsw i32 %25, 1
  %26 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %add27, %26
  br i1 %cmp28, label %if.then29, label %if.end57

if.then29:                                        ; preds = %if.end
  %27 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %28 to i64
  %arrayidx31 = getelementptr inbounds [2500 x i32], ptr %27, i64 %idxprom30
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom32 = sext i32 %29 to i64
  %arrayidx33 = getelementptr inbounds [2500 x i32], ptr %arrayidx31, i64 0, i64 %idxprom32
  %30 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %31 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %add34 = add nsw i32 %32, 1
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds [2500 x i32], ptr %31, i64 %idxprom35
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom37 = sext i32 %33 to i64
  %arrayidx38 = getelementptr inbounds [2500 x i32], ptr %arrayidx36, i64 0, i64 %idxprom37
  %34 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %cmp39 = icmp sge i32 %30, %34
  br i1 %cmp39, label %cond.true40, label %cond.false45

cond.true40:                                      ; preds = %if.then29
  %35 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom41 = sext i32 %36 to i64
  %arrayidx42 = getelementptr inbounds [2500 x i32], ptr %35, i64 %idxprom41
  %37 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom43 = sext i32 %37 to i64
  %arrayidx44 = getelementptr inbounds [2500 x i32], ptr %arrayidx42, i64 0, i64 %idxprom43
  %38 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  br label %cond.end51

cond.false45:                                     ; preds = %if.then29
  %39 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %add46 = add nsw i32 %40, 1
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds [2500 x i32], ptr %39, i64 %idxprom47
  %41 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom49 = sext i32 %41 to i64
  %arrayidx50 = getelementptr inbounds [2500 x i32], ptr %arrayidx48, i64 0, i64 %idxprom49
  %42 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  br label %cond.end51

cond.end51:                                       ; preds = %cond.false45, %cond.true40
  %cond52 = phi i32 [ %38, %cond.true40 ], [ %42, %cond.false45 ]
  %43 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %44 to i64
  %arrayidx54 = getelementptr inbounds [2500 x i32], ptr %43, i64 %idxprom53
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom55 = sext i32 %45 to i64
  %arrayidx56 = getelementptr inbounds [2500 x i32], ptr %arrayidx54, i64 0, i64 %idxprom55
  store i32 %cond52, ptr %arrayidx56, align 4, !tbaa !5
  br label %if.end57

if.end57:                                         ; preds = %cond.end51, %if.end
  %46 = load i32, ptr %j, align 4, !tbaa !5
  %sub58 = sub nsw i32 %46, 1
  %cmp59 = icmp sge i32 %sub58, 0
  br i1 %cmp59, label %land.lhs.true, label %if.end148

land.lhs.true:                                    ; preds = %if.end57
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %add60 = add nsw i32 %47, 1
  %48 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %add60, %48
  br i1 %cmp61, label %if.then62, label %if.end148

if.then62:                                        ; preds = %land.lhs.true
  %49 = load i32, ptr %i, align 4, !tbaa !5
  %50 = load i32, ptr %j, align 4, !tbaa !5
  %sub63 = sub nsw i32 %50, 1
  %cmp64 = icmp slt i32 %49, %sub63
  br i1 %cmp64, label %if.then65, label %if.else

if.then65:                                        ; preds = %if.then62
  %51 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %52 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom66 = sext i32 %52 to i64
  %arrayidx67 = getelementptr inbounds [2500 x i32], ptr %51, i64 %idxprom66
  %53 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom68 = sext i32 %53 to i64
  %arrayidx69 = getelementptr inbounds [2500 x i32], ptr %arrayidx67, i64 0, i64 %idxprom68
  %54 = load i32, ptr %arrayidx69, align 4, !tbaa !5
  %55 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %56 = load i32, ptr %i, align 4, !tbaa !5
  %add70 = add nsw i32 %56, 1
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds [2500 x i32], ptr %55, i64 %idxprom71
  %57 = load i32, ptr %j, align 4, !tbaa !5
  %sub73 = sub nsw i32 %57, 1
  %idxprom74 = sext i32 %sub73 to i64
  %arrayidx75 = getelementptr inbounds [2500 x i32], ptr %arrayidx72, i64 0, i64 %idxprom74
  %58 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  %59 = load ptr, ptr %seq.addr, align 8, !tbaa !29
  %60 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom76 = sext i32 %60 to i64
  %arrayidx77 = getelementptr inbounds i8, ptr %59, i64 %idxprom76
  %61 = load i8, ptr %arrayidx77, align 1, !tbaa !33
  %conv = sext i8 %61 to i32
  %62 = load ptr, ptr %seq.addr, align 8, !tbaa !29
  %63 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom78 = sext i32 %63 to i64
  %arrayidx79 = getelementptr inbounds i8, ptr %62, i64 %idxprom78
  %64 = load i8, ptr %arrayidx79, align 1, !tbaa !33
  %conv80 = sext i8 %64 to i32
  %add81 = add nsw i32 %conv, %conv80
  %cmp82 = icmp eq i32 %add81, 3
  %65 = zext i1 %cmp82 to i64
  %cond84 = select i1 %cmp82, i32 1, i32 0
  %add85 = add nsw i32 %58, %cond84
  %cmp86 = icmp sge i32 %54, %add85
  br i1 %cmp86, label %cond.true88, label %cond.false93

cond.true88:                                      ; preds = %if.then65
  %66 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %67 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom89 = sext i32 %67 to i64
  %arrayidx90 = getelementptr inbounds [2500 x i32], ptr %66, i64 %idxprom89
  %68 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom91 = sext i32 %68 to i64
  %arrayidx92 = getelementptr inbounds [2500 x i32], ptr %arrayidx90, i64 0, i64 %idxprom91
  %69 = load i32, ptr %arrayidx92, align 4, !tbaa !5
  br label %cond.end111

cond.false93:                                     ; preds = %if.then65
  %70 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %71 = load i32, ptr %i, align 4, !tbaa !5
  %add94 = add nsw i32 %71, 1
  %idxprom95 = sext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds [2500 x i32], ptr %70, i64 %idxprom95
  %72 = load i32, ptr %j, align 4, !tbaa !5
  %sub97 = sub nsw i32 %72, 1
  %idxprom98 = sext i32 %sub97 to i64
  %arrayidx99 = getelementptr inbounds [2500 x i32], ptr %arrayidx96, i64 0, i64 %idxprom98
  %73 = load i32, ptr %arrayidx99, align 4, !tbaa !5
  %74 = load ptr, ptr %seq.addr, align 8, !tbaa !29
  %75 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom100 = sext i32 %75 to i64
  %arrayidx101 = getelementptr inbounds i8, ptr %74, i64 %idxprom100
  %76 = load i8, ptr %arrayidx101, align 1, !tbaa !33
  %conv102 = sext i8 %76 to i32
  %77 = load ptr, ptr %seq.addr, align 8, !tbaa !29
  %78 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom103 = sext i32 %78 to i64
  %arrayidx104 = getelementptr inbounds i8, ptr %77, i64 %idxprom103
  %79 = load i8, ptr %arrayidx104, align 1, !tbaa !33
  %conv105 = sext i8 %79 to i32
  %add106 = add nsw i32 %conv102, %conv105
  %cmp107 = icmp eq i32 %add106, 3
  %80 = zext i1 %cmp107 to i64
  %cond109 = select i1 %cmp107, i32 1, i32 0
  %add110 = add nsw i32 %73, %cond109
  br label %cond.end111

cond.end111:                                      ; preds = %cond.false93, %cond.true88
  %cond112 = phi i32 [ %69, %cond.true88 ], [ %add110, %cond.false93 ]
  %81 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %82 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom113 = sext i32 %82 to i64
  %arrayidx114 = getelementptr inbounds [2500 x i32], ptr %81, i64 %idxprom113
  %83 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom115 = sext i32 %83 to i64
  %arrayidx116 = getelementptr inbounds [2500 x i32], ptr %arrayidx114, i64 0, i64 %idxprom115
  store i32 %cond112, ptr %arrayidx116, align 4, !tbaa !5
  br label %if.end147

if.else:                                          ; preds = %if.then62
  %84 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %85 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom117 = sext i32 %85 to i64
  %arrayidx118 = getelementptr inbounds [2500 x i32], ptr %84, i64 %idxprom117
  %86 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom119 = sext i32 %86 to i64
  %arrayidx120 = getelementptr inbounds [2500 x i32], ptr %arrayidx118, i64 0, i64 %idxprom119
  %87 = load i32, ptr %arrayidx120, align 4, !tbaa !5
  %88 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %89 = load i32, ptr %i, align 4, !tbaa !5
  %add121 = add nsw i32 %89, 1
  %idxprom122 = sext i32 %add121 to i64
  %arrayidx123 = getelementptr inbounds [2500 x i32], ptr %88, i64 %idxprom122
  %90 = load i32, ptr %j, align 4, !tbaa !5
  %sub124 = sub nsw i32 %90, 1
  %idxprom125 = sext i32 %sub124 to i64
  %arrayidx126 = getelementptr inbounds [2500 x i32], ptr %arrayidx123, i64 0, i64 %idxprom125
  %91 = load i32, ptr %arrayidx126, align 4, !tbaa !5
  %cmp127 = icmp sge i32 %87, %91
  br i1 %cmp127, label %cond.true129, label %cond.false134

cond.true129:                                     ; preds = %if.else
  %92 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %93 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom130 = sext i32 %93 to i64
  %arrayidx131 = getelementptr inbounds [2500 x i32], ptr %92, i64 %idxprom130
  %94 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom132 = sext i32 %94 to i64
  %arrayidx133 = getelementptr inbounds [2500 x i32], ptr %arrayidx131, i64 0, i64 %idxprom132
  %95 = load i32, ptr %arrayidx133, align 4, !tbaa !5
  br label %cond.end141

cond.false134:                                    ; preds = %if.else
  %96 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %97 = load i32, ptr %i, align 4, !tbaa !5
  %add135 = add nsw i32 %97, 1
  %idxprom136 = sext i32 %add135 to i64
  %arrayidx137 = getelementptr inbounds [2500 x i32], ptr %96, i64 %idxprom136
  %98 = load i32, ptr %j, align 4, !tbaa !5
  %sub138 = sub nsw i32 %98, 1
  %idxprom139 = sext i32 %sub138 to i64
  %arrayidx140 = getelementptr inbounds [2500 x i32], ptr %arrayidx137, i64 0, i64 %idxprom139
  %99 = load i32, ptr %arrayidx140, align 4, !tbaa !5
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false134, %cond.true129
  %cond142 = phi i32 [ %95, %cond.true129 ], [ %99, %cond.false134 ]
  %100 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %101 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom143 = sext i32 %101 to i64
  %arrayidx144 = getelementptr inbounds [2500 x i32], ptr %100, i64 %idxprom143
  %102 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom145 = sext i32 %102 to i64
  %arrayidx146 = getelementptr inbounds [2500 x i32], ptr %arrayidx144, i64 0, i64 %idxprom145
  store i32 %cond142, ptr %arrayidx146, align 4, !tbaa !5
  br label %if.end147

if.end147:                                        ; preds = %cond.end141, %cond.end111
  br label %if.end148

if.end148:                                        ; preds = %if.end147, %land.lhs.true, %if.end57
  %103 = load i32, ptr %i, align 4, !tbaa !5
  %add149 = add nsw i32 %103, 1
  store i32 %add149, ptr %k, align 4, !tbaa !5
  br label %for.cond150

for.cond150:                                      ; preds = %for.inc, %if.end148
  %104 = load i32, ptr %k, align 4, !tbaa !5
  %105 = load i32, ptr %j, align 4, !tbaa !5
  %cmp151 = icmp slt i32 %104, %105
  br i1 %cmp151, label %for.body153, label %for.end

for.body153:                                      ; preds = %for.cond150
  %106 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %107 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom154 = sext i32 %107 to i64
  %arrayidx155 = getelementptr inbounds [2500 x i32], ptr %106, i64 %idxprom154
  %108 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom156 = sext i32 %108 to i64
  %arrayidx157 = getelementptr inbounds [2500 x i32], ptr %arrayidx155, i64 0, i64 %idxprom156
  %109 = load i32, ptr %arrayidx157, align 4, !tbaa !5
  %110 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %111 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom158 = sext i32 %111 to i64
  %arrayidx159 = getelementptr inbounds [2500 x i32], ptr %110, i64 %idxprom158
  %112 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom160 = sext i32 %112 to i64
  %arrayidx161 = getelementptr inbounds [2500 x i32], ptr %arrayidx159, i64 0, i64 %idxprom160
  %113 = load i32, ptr %arrayidx161, align 4, !tbaa !5
  %114 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %115 = load i32, ptr %k, align 4, !tbaa !5
  %add162 = add nsw i32 %115, 1
  %idxprom163 = sext i32 %add162 to i64
  %arrayidx164 = getelementptr inbounds [2500 x i32], ptr %114, i64 %idxprom163
  %116 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom165 = sext i32 %116 to i64
  %arrayidx166 = getelementptr inbounds [2500 x i32], ptr %arrayidx164, i64 0, i64 %idxprom165
  %117 = load i32, ptr %arrayidx166, align 4, !tbaa !5
  %add167 = add nsw i32 %113, %117
  %cmp168 = icmp sge i32 %109, %add167
  br i1 %cmp168, label %cond.true170, label %cond.false175

cond.true170:                                     ; preds = %for.body153
  %118 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %119 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom171 = sext i32 %119 to i64
  %arrayidx172 = getelementptr inbounds [2500 x i32], ptr %118, i64 %idxprom171
  %120 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom173 = sext i32 %120 to i64
  %arrayidx174 = getelementptr inbounds [2500 x i32], ptr %arrayidx172, i64 0, i64 %idxprom173
  %121 = load i32, ptr %arrayidx174, align 4, !tbaa !5
  br label %cond.end186

cond.false175:                                    ; preds = %for.body153
  %122 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %123 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom176 = sext i32 %123 to i64
  %arrayidx177 = getelementptr inbounds [2500 x i32], ptr %122, i64 %idxprom176
  %124 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom178 = sext i32 %124 to i64
  %arrayidx179 = getelementptr inbounds [2500 x i32], ptr %arrayidx177, i64 0, i64 %idxprom178
  %125 = load i32, ptr %arrayidx179, align 4, !tbaa !5
  %126 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %127 = load i32, ptr %k, align 4, !tbaa !5
  %add180 = add nsw i32 %127, 1
  %idxprom181 = sext i32 %add180 to i64
  %arrayidx182 = getelementptr inbounds [2500 x i32], ptr %126, i64 %idxprom181
  %128 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom183 = sext i32 %128 to i64
  %arrayidx184 = getelementptr inbounds [2500 x i32], ptr %arrayidx182, i64 0, i64 %idxprom183
  %129 = load i32, ptr %arrayidx184, align 4, !tbaa !5
  %add185 = add nsw i32 %125, %129
  br label %cond.end186

cond.end186:                                      ; preds = %cond.false175, %cond.true170
  %cond187 = phi i32 [ %121, %cond.true170 ], [ %add185, %cond.false175 ]
  %130 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %131 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom188 = sext i32 %131 to i64
  %arrayidx189 = getelementptr inbounds [2500 x i32], ptr %130, i64 %idxprom188
  %132 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom190 = sext i32 %132 to i64
  %arrayidx191 = getelementptr inbounds [2500 x i32], ptr %arrayidx189, i64 0, i64 %idxprom190
  store i32 %cond187, ptr %arrayidx191, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %cond.end186
  %133 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %133, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond150, !llvm.loop !37

for.end:                                          ; preds = %for.cond150
  br label %for.inc192

for.inc192:                                       ; preds = %for.end
  %134 = load i32, ptr %j, align 4, !tbaa !5
  %inc193 = add nsw i32 %134, 1
  store i32 %inc193, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !38

for.end194:                                       ; preds = %for.cond1
  br label %for.inc195

for.inc195:                                       ; preds = %for.end194
  %135 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %135, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !39

for.end196:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #7

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 noundef %n, ptr noundef %table) #0 {
entry:
  %n.addr = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %table, ptr %table.addr, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #8
  store i32 0, ptr %t, align 4, !tbaa !5
  %0 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.1.6) #8
  %1 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.2.7, ptr noundef @.str.3.8) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %4, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %6 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %7 = load i32, ptr %t, align 4, !tbaa !5
  %rem = srem i32 %7, 20
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.4.9) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  %9 = load ptr, ptr @stderr, align 8, !tbaa !24
  %10 = load ptr, ptr %table.addr, align 8, !tbaa !31
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [2500 x i32], ptr %10, i64 %idxprom
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [2500 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %13 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.5.10, i32 noundef %13) #8
  %14 = load i32, ptr %t, align 4, !tbaa !5
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %t, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %inc10 = add nsw i32 %15, 1
  store i32 %inc10, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !40

for.end:                                          ; preds = %for.cond2
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc12 = add nsw i32 %16, 1
  store i32 %inc12, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !41

for.end13:                                        ; preds = %for.cond
  %17 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.6, ptr noundef @.str.3.8) #8
  %18 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #8
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
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 int", !11, i64 0}
!33 = !{!7, !7, i64 0}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !15}
