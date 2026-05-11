; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/atax.ll'
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
  %call = tail call noalias dereferenceable_or_null(33556480) ptr @calloc(i64 noundef 4194560, i64 noundef 8) #11
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %tmp.0 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 4194560
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw double, ptr %call, i64 %indvars.iv
  %0 = load double, ptr %arrayidx, align 8, !tbaa !5, !invariant.load !9
  %add = fadd double %tmp.0, %0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %cmp2 = fcmp ugt double %tmp.0, 1.000000e+01
  br i1 %cmp2, label %if.else, label %if.end

if.else:                                          ; preds = %for.end
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 123, ptr noundef nonnull @__PRETTY_FUNCTION__.polybench_flush_cache) #12
  unreachable

if.end:                                           ; preds = %for.end
  tail call void @free(ptr noundef %call) #13
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
  tail call void @polybench_flush_cache() #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #0 {
entry:
  tail call void @polybench_flush_cache() #13
  %call = tail call fastcc double @rtclock() #13
  store double %call, ptr @polybench_t_start, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc double @rtclock() unnamed_addr #0 {
entry:
  %Tp = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 16, ptr noundef nonnull align 8 %Tp) #14
  %call = call i32 @gettimeofday(ptr noundef nonnull align 8 %Tp, ptr noundef null) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i64, ptr %Tp, align 8, !tbaa !10
  %conv = sitofp i64 %0 to double
  %tv_usec = getelementptr inbounds nuw i8, ptr %Tp, i64 8
  %1 = load i64, ptr %tv_usec, align 8, !tbaa !13
  %conv2 = sitofp i64 %1 to double
  %2 = call double @llvm.fmuladd.f64(double %conv2, double noundef 0x3EB0C6F7A0B5ED8D, double %conv)
  call void @llvm.lifetime.end.p0(i64 noundef 16, ptr noundef nonnull %Tp) #13
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
  %call = tail call fastcc double @rtclock() #13
  store double %call, ptr @polybench_t_end, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #0 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !5
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !5
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_free_data(ptr noundef %ptr) local_unnamed_addr #0 {
entry:
  tail call void @free(ptr noundef %ptr) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #0 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %ret.i) #14
  store ptr null, ptr %ret.i, align 8, !tbaa !14
  %call.i = call i32 @posix_memalign(ptr noundef nonnull align 8 %ret.i, i64 noundef 4096, i64 noundef %mul) #13
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !14
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  call void @outlined_ir_func_1(ptr noundef nonnull dereferenceable(51) @.str.4) #13
  call void @exit(i32 noundef 1) #15
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %ret.i) #13
  ret ptr %0
}

; Function Attrs: nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readonly captures(none) %argv) local_unnamed_addr #0 {
entry:
  %call = tail call ptr @polybench_alloc_data(i64 noundef 3990000, i32 noundef 8) #13
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 2100, i32 noundef 8) #13
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 2100, i32 noundef 8) #13
  %call3 = tail call ptr @polybench_alloc_data(i64 noundef 1900, i32 noundef 8) #13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %entry
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %entry ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 2100
  br i1 %exitcond.not.i, label %for.cond3.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.cond.i
  %0 = trunc nuw nsw i64 %indvars.iv.i to i32
  %conv2.i = uitofp nneg i32 %0 to double
  %div.i = fdiv double %conv2.i, 2.100000e+03
  %add.i = fadd double %div.i, 1.000000e+00
  %arrayidx.i = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv.i
  store double %add.i, ptr %arrayidx.i, align 8, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond.i, !llvm.loop !16

for.cond3.i:                                      ; preds = %for.cond.i, %for.end21.i
  %indvars.iv17.i = phi i64 [ %indvars.iv.next18.i, %for.end21.i ], [ 0, %for.cond.i ]
  %exitcond20.not.i = icmp eq i64 %indvars.iv17.i, 1900
  br i1 %exitcond20.not.i, label %init_array.exit, label %for.cond7.i

for.cond7.i:                                      ; preds = %for.cond3.i, %for.inc19.i
  %indvars.iv12.i = phi i64 [ %indvars.iv.next13.i, %for.inc19.i ], [ 0, %for.cond3.i ]
  %exitcond16.not.i = icmp eq i64 %indvars.iv12.i, 2100
  br i1 %exitcond16.not.i, label %for.end21.i, label %for.inc19.i

for.inc19.i:                                      ; preds = %for.cond7.i
  %1 = add nuw nsw i64 %indvars.iv12.i, %indvars.iv17.i
  %2 = trunc nuw nsw i64 %1 to i32
  %rem.i = urem i32 %2, 2100
  %conv12.i = uitofp nneg i32 %rem.i to double
  %div14.i = fdiv double %conv12.i, 9.500000e+03
  %arrayidx18.i = getelementptr inbounds nuw [2100 x double], ptr %call, i64 %indvars.iv17.i, i64 %indvars.iv12.i
  store double %div14.i, ptr %arrayidx18.i, align 8, !tbaa !5
  %indvars.iv.next13.i = add nuw nsw i64 %indvars.iv12.i, 1
  br label %for.cond7.i, !llvm.loop !18

for.end21.i:                                      ; preds = %for.cond7.i
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1
  br label %for.cond3.i

init_array.exit:                                  ; preds = %for.cond3.i
  tail call void @polybench_timer_start() #13
  br label %for.cond.i3

for.cond.i3:                                      ; preds = %for.inc.i6, %init_array.exit
  %indvars.iv.i4 = phi i64 [ %indvars.iv.next.i8, %for.inc.i6 ], [ 0, %init_array.exit ]
  %exitcond.not.i5 = icmp eq i64 %indvars.iv.i4, 2100
  br i1 %exitcond.not.i5, label %for.cond1.i, label %for.inc.i6

for.inc.i6:                                       ; preds = %for.cond.i3
  %arrayidx.i7 = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv.i4
  store double 0.000000e+00, ptr %arrayidx.i7, align 8, !tbaa !5
  %indvars.iv.next.i8 = add nuw nsw i64 %indvars.iv.i4, 1
  br label %for.cond.i3, !llvm.loop !19

for.cond1.i:                                      ; preds = %for.cond.i3, %for.end37.i
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i, %for.end37.i ], [ 0, %for.cond.i3 ]
  %exitcond31.not.i = icmp eq i64 %indvars.iv28.i, 1900
  br i1 %exitcond31.not.i, label %kernel_atax.exit, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i
  %arrayidx5.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv28.i
  store double 0.000000e+00, ptr %arrayidx5.i, align 8, !tbaa !5
  br label %for.cond6.i

for.cond6.i:                                      ; preds = %for.inc19.i9, %for.body3.i
  %indvars.iv20.i = phi i64 [ %indvars.iv.next21.i, %for.inc19.i9 ], [ 0, %for.body3.i ]
  %exitcond23.not.i = icmp eq i64 %indvars.iv20.i, 2100
  br i1 %exitcond23.not.i, label %for.cond22.i, label %for.inc19.i9

for.inc19.i9:                                     ; preds = %for.cond6.i
  %arrayidx14.i = getelementptr inbounds nuw [2100 x double], ptr %call, i64 %indvars.iv28.i, i64 %indvars.iv20.i
  %3 = load double, ptr %arrayidx14.i, align 8, !tbaa !5, !invariant.load !9
  %arrayidx16.i = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv20.i
  %4 = load double, ptr %arrayidx16.i, align 8, !tbaa !5, !invariant.load !9
  %5 = tail call double @llvm.fmuladd.f64(double %3, double %4, double 0.000000e+00) #16
  store double %5, ptr %arrayidx5.i, align 8, !tbaa !5
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1
  br label %for.cond6.i, !llvm.loop !20

for.cond22.i:                                     ; preds = %for.cond6.i, %for.inc35.i
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %for.inc35.i ], [ 0, %for.cond6.i ]
  %exitcond27.not.i = icmp eq i64 %indvars.iv24.i, 2100
  br i1 %exitcond27.not.i, label %for.end37.i, label %for.inc35.i

for.inc35.i:                                      ; preds = %for.cond22.i
  %arrayidx26.i = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv24.i
  %6 = load double, ptr %arrayidx26.i, align 8, !tbaa !5, !invariant.load !9
  %arrayidx30.i = getelementptr inbounds nuw [2100 x double], ptr %call, i64 %indvars.iv28.i, i64 %indvars.iv24.i
  %7 = load double, ptr %arrayidx30.i, align 8, !tbaa !5, !invariant.load !9
  %8 = tail call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %6) #16
  store double %8, ptr %arrayidx26.i, align 8, !tbaa !5
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1
  br label %for.cond22.i, !llvm.loop !21

for.end37.i:                                      ; preds = %for.cond22.i
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1
  br label %for.cond1.i

kernel_atax.exit:                                 ; preds = %for.cond1.i
  %call.i = tail call fastcc double @rtclock() #13
  store double %call.i, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print() #13
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_atax.exit
  %9 = load ptr, ptr %argv, align 8, !tbaa !22, !invariant.load !9
  %strcmpload = load i8, ptr %9, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(i32 noundef 2100, ptr nofree noundef readonly captures(none) %call2) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_atax.exit
  tail call void @free(ptr noundef %call) #13
  tail call void @free(ptr noundef %call1) #13
  tail call void @free(ptr noundef %call2) #13
  tail call void @free(ptr noundef %call3) #13
  ret i32 0
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define internal fastcc void @print_array(i32 noundef %n, ptr nofree noundef readonly captures(none) %y) unnamed_addr #8 {
entry:
  tail call void @outlined_ir_func_1(ptr noundef nonnull dereferenceable(23) @.str.1.6) #13
  %0 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #17
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %1 = trunc nuw nsw i64 %indvars.iv to i32
  %rem = urem i32 %1, 20
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  tail call void @outlined_ir_func_1(ptr noundef nonnull dereferenceable(2) @.str.4.9) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %2 = load ptr, ptr @stderr, align 8, !tbaa !24
  %arrayidx = getelementptr inbounds nuw double, ptr %y, i64 %indvars.iv
  %3 = load double, ptr %arrayidx, align 8, !tbaa !5, !invariant.load !9
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.5.10, double noundef %3) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #17
  tail call void @outlined_ir_func_1(ptr noundef nonnull dereferenceable(23) @.str.7) #13
  ret void
}

; Function Attrs: cold minsize nounwind optsize uwtable
define internal void @outlined_ir_func_1(ptr noundef nonnull dereferenceable(2) %0) #9 {
if.then_after_outline.exitStub:
  %1 = load ptr, ptr @stderr, align 8, !tbaa !24
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull dereferenceable(2) %0) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

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
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }
attributes #14 = { nofree nounwind willreturn memory(readwrite) }
attributes #15 = { cold noreturn nounwind }
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
!10 = !{!11, !12, i64 0}
!11 = !{!"timeval", !12, i64 0, !12, i64 8}
!12 = !{!"long", !7, i64 0}
!13 = !{!11, !12, i64 8}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 omnipotent char", !15, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
