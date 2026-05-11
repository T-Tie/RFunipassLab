; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/durbin.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@polybench_papi_counters_threadid = dso_local local_unnamed_addr global i32 0, align 4
@polybench_program_total_flops = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [12 x i8] c"tmp <= 10.0\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"/root/exp/RFunipassLab/external_datasets/sources/polybench_full/utilities/polybench.c\00", align 1
@__PRETTY_FUNCTION__.polybench_flush_cache = private unnamed_addr constant [29 x i8] c"void polybench_flush_cache()\00", align 1
@polybench_t_start = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@polybench_t_end = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@polybench_c_start = dso_local local_unnamed_addr global i64 0, align 8
@polybench_c_end = dso_local local_unnamed_addr global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Error return from gettimeofday: %d\00", align 1
@polybench_inter_array_padding_sz = internal unnamed_addr global i64 0, align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.6 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2.7 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3.8 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.4.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(33556480) ptr @calloc(i64 noundef 4194560, i64 noundef 8) #10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %tmp.0 = phi double [ %add, %for.inc ], [ 0.000000e+00, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 4194560
  br i1 %exitcond.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw double, ptr %call, i64 %indvars.iv
  %0 = load double, ptr %arrayidx, align 8, !tbaa !5, !invariant.load !9
  %add = fadd double %tmp.0, %0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %cmp2 = fcmp ugt double %tmp.0, 1.000000e+01
  br i1 %cmp2, label %if.else, label %if.end

if.else:                                          ; preds = %for.end
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 123, ptr noundef nonnull @__PRETTY_FUNCTION__.polybench_flush_cache) #11
  unreachable

if.end:                                           ; preds = %for.end
  tail call void @free(ptr noundef %call) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 {
entry:
  tail call void @polybench_flush_cache() #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #0 {
entry:
  tail call void @polybench_flush_cache() #12
  %call = tail call fastcc double @rtclock() #12
  store double %call, ptr @polybench_t_start, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc double @rtclock() unnamed_addr #0 {
entry:
  %Tp = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 16, ptr noundef nonnull align 8 %Tp) #13
  %call = call i32 @gettimeofday(ptr noundef nonnull align 8 %Tp, ptr noundef null) #12
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i64, ptr %Tp, align 8, !tbaa !12
  %conv = sitofp i64 %0 to double
  %tv_usec = getelementptr inbounds nuw i8, ptr %Tp, i64 8
  %1 = load i64, ptr %tv_usec, align 8, !tbaa !15
  %conv2 = sitofp i64 %1 to double
  %2 = call double @llvm.fmuladd.f64(double %conv2, double noundef 0x3EB0C6F7A0B5ED8D, double %conv)
  call void @llvm.lifetime.end.p0(i64 noundef 16, ptr noundef nonnull %Tp) #12
  ret double %2
}

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #0 {
entry:
  %call = tail call fastcc double @rtclock() #12
  store double %call, ptr @polybench_t_end, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #0 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !5
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !5
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_free_data(ptr noundef %ptr) local_unnamed_addr #0 {
entry:
  tail call void @free(ptr noundef %ptr) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #0 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %ret.i) #13
  store ptr null, ptr %ret.i, align 8, !tbaa !16
  %call.i = call i32 @posix_memalign(ptr noundef nonnull align 8 %ret.i, i64 noundef 4096, i64 noundef %mul) #12
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !16
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  call void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(51) @.str.4) #12
  call void @exit(i32 noundef 1) #14
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %ret.i) #12
  ret ptr %0
}

; Function Attrs: nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readonly captures(none) %argv) local_unnamed_addr #0 {
entry:
  %z.i = alloca [2000 x double], align 16
  %call = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #12
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #12
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %entry ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 2000
  br i1 %exitcond.not.i, label %init_array.exit, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %0 = trunc nuw nsw i64 %indvars.iv.i to i32
  %sub.i = sub i32 2001, %0
  %conv.i = sitofp i32 %sub.i to double
  %arrayidx.i = getelementptr inbounds nuw double, ptr %call, i64 %indvars.iv.i
  store double %conv.i, ptr %arrayidx.i, align 8, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond.i

init_array.exit:                                  ; preds = %for.cond.i
  tail call void @polybench_timer_start() #12
  call void @llvm.lifetime.start.p0(i64 noundef 16000, ptr noundef nonnull align 16 %z.i) #15
  %1 = load double, ptr %call, align 8, !tbaa !5, !invariant.load !9
  %fneg.i = fneg double %1
  store double %fneg.i, ptr %call1, align 8, !tbaa !5
  br label %for.cond.i2

for.cond.i2:                                      ; preds = %for.end39.i, %init_array.exit
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %for.end39.i ], [ 1, %init_array.exit ]
  %alpha.0.i = phi double [ %div.i, %for.end39.i ], [ %fneg.i, %init_array.exit ]
  %beta.0.i = phi double [ %mul.i, %for.end39.i ], [ 1.000000e+00, %init_array.exit ]
  %exitcond52.not.i = icmp eq i64 %indvars.iv48.i, 2000
  br i1 %exitcond52.not.i, label %kernel_durbin.exit, label %for.body.i3

for.body.i3:                                      ; preds = %for.cond.i2
  %2 = getelementptr double, ptr %call, i64 %indvars.iv48.i
  br label %for.cond4.i

for.cond4.i:                                      ; preds = %for.inc.i, %for.body.i3
  %indvars.iv.i4 = phi i64 [ %indvars.iv.next.i6, %for.inc.i ], [ 0, %for.body.i3 ]
  %sum.0.i = phi double [ %6, %for.inc.i ], [ 0.000000e+00, %for.body.i3 ]
  %exitcond.not.i5 = icmp eq i64 %indvars.iv.i4, %indvars.iv48.i
  br i1 %exitcond.not.i5, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.cond4.i
  %3 = xor i64 %indvars.iv.i4, -1
  %arrayidx8.i = getelementptr double, ptr %2, i64 %3
  %4 = load double, ptr %arrayidx8.i, align 8, !tbaa !5, !invariant.load !9
  %arrayidx10.i = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv.i4
  %5 = load double, ptr %arrayidx10.i, align 8, !tbaa !5, !invariant.load !9
  %6 = tail call double @llvm.fmuladd.f64(double %4, double %5, double %sum.0.i) #16
  %indvars.iv.next.i6 = add nuw nsw i64 %indvars.iv.i4, 1
  br label %for.cond4.i, !llvm.loop !18

for.end.i:                                        ; preds = %for.cond4.i
  %neg.i = fneg double %alpha.0.i
  %7 = tail call double @llvm.fmuladd.f64(double %neg.i, double %alpha.0.i, double 1.000000e+00)
  %mul.i = fmul double %7, %beta.0.i
  %8 = load double, ptr %2, align 8, !tbaa !5, !invariant.load !9
  %add.i7 = fadd double %sum.0.i, %8
  %fneg14.i = fneg double %add.i7
  %div.i = fdiv double %fneg14.i, %mul.i
  %9 = getelementptr double, ptr %call1, i64 %indvars.iv48.i
  br label %for.cond15.i

for.cond15.i:                                     ; preds = %for.body17.i, %for.end.i
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %for.body17.i ], [ 0, %for.end.i ]
  %exitcond42.not.i = icmp eq i64 %indvars.iv37.i, %indvars.iv48.i
  br i1 %exitcond42.not.i, label %for.cond30.i, label %for.body17.i

for.body17.i:                                     ; preds = %for.cond15.i
  %arrayidx19.i = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv37.i
  %10 = load double, ptr %arrayidx19.i, align 8, !tbaa !5, !invariant.load !9
  %11 = xor i64 %indvars.iv37.i, -1
  %arrayidx23.i = getelementptr double, ptr %9, i64 %11
  %12 = load double, ptr %arrayidx23.i, align 8, !tbaa !5, !invariant.load !9
  %13 = tail call double @llvm.fmuladd.f64(double %div.i, double %12, double %10)
  %arrayidx26.i = getelementptr inbounds nuw [2000 x double], ptr %z.i, i64 0, i64 %indvars.iv37.i
  store double %13, ptr %arrayidx26.i, align 8, !tbaa !5
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1
  br label %for.cond15.i

for.cond30.i:                                     ; preds = %for.cond15.i, %for.inc37.i
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i, %for.inc37.i ], [ 0, %for.cond15.i ]
  %exitcond47.not.i = icmp eq i64 %indvars.iv43.i, %indvars.iv48.i
  br i1 %exitcond47.not.i, label %for.end39.i, label %for.inc37.i

for.inc37.i:                                      ; preds = %for.cond30.i
  %arrayidx34.i = getelementptr inbounds nuw [2000 x double], ptr %z.i, i64 0, i64 %indvars.iv43.i
  %14 = load double, ptr %arrayidx34.i, align 8, !tbaa !5
  %arrayidx36.i = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv43.i
  store double %14, ptr %arrayidx36.i, align 8, !tbaa !5
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1
  br label %for.cond30.i, !llvm.loop !19

for.end39.i:                                      ; preds = %for.cond30.i
  store double %div.i, ptr %9, align 8, !tbaa !5
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1
  br label %for.cond.i2

kernel_durbin.exit:                               ; preds = %for.cond.i2
  call void @llvm.lifetime.end.p0(i64 16000, ptr nonnull align 16 %z.i) #12
  %call.i = tail call fastcc double @rtclock() #12
  store double %call.i, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print() #12
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_durbin.exit
  %15 = load ptr, ptr %argv, align 8, !tbaa !20
  %strcmpload = load i8, ptr %15, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(i32 noundef 2000, ptr noundef nonnull %call1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_durbin.exit
  tail call void @free(ptr noundef nonnull %call) #12
  tail call void @free(ptr noundef nonnull %call1) #12
  ret i32 0
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define internal fastcc void @print_array(i32 noundef %n, ptr noundef readonly captures(none) %y) unnamed_addr #8 {
entry:
  tail call void @outlined_ir_func_0(ptr nonnull @.str.1.6)
  %0 = load ptr, ptr @stderr, align 8, !tbaa !22
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #17
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %1 = trunc nuw nsw i64 %indvars.iv to i32
  %rem = urem i32 %1, 20
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  tail call void @outlined_ir_func_0(ptr nonnull @.str.4.9)
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %2 = load ptr, ptr @stderr, align 8, !tbaa !22
  %arrayidx = getelementptr inbounds nuw double, ptr %y, i64 %indvars.iv
  %3 = load double, ptr %arrayidx, align 8, !tbaa !5
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.5.10, double noundef %3) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  %4 = load ptr, ptr @stderr, align 8, !tbaa !22
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #17
  tail call void @outlined_ir_func_0(ptr nonnull @.str.7)
  ret void
}

; Function Attrs: cold minsize nounwind optsize uwtable
define internal void @outlined_ir_func_0(ptr %0) #9 {
if.then_after_outline.exitStub:
  %1 = load ptr, ptr @stderr, align 8, !tbaa !22
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef %0) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold minsize nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }
attributes #13 = { nofree nounwind willreturn memory(readwrite) }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nofree nounwind memory(readwrite) }
attributes #16 = { nofree nosync }
attributes #17 = { cold nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !14, i64 0}
!13 = !{!"timeval", !14, i64 0, !14, i64 8}
!14 = !{!"long", !7, i64 0}
!15 = !{!13, !14, i64 8}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 omnipotent char", !17, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!24 = distinct !{!24, !11}
