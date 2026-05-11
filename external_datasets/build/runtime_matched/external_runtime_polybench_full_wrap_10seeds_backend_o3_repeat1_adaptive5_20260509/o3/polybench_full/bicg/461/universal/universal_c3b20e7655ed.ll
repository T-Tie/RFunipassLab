; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/bicg.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.4.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #5 {
entry:
  %call = tail call fastcc double @rtclock() #14
  store double %call, ptr @polybench_t_start, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc double @rtclock() unnamed_addr #5 {
entry:
  %Tp = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 16, ptr noundef nonnull align 8 %Tp) #15
  %call = call i32 @gettimeofday(ptr noundef nonnull align 8 captures(none) %Tp, ptr noundef null) #14
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i64, ptr %Tp, align 8, !tbaa !9
  %conv = sitofp i64 %0 to double
  %tv_usec = getelementptr inbounds nuw i8, ptr %Tp, i64 8
  %1 = load i64, ptr %tv_usec, align 8, !tbaa !12
  %conv2 = sitofp i64 %1 to double
  %2 = tail call double @llvm.fmuladd.f64(double %conv2, double noundef 0x3EB0C6F7A0B5ED8D, double %conv) #16
  call void @llvm.lifetime.end.p0(i64 noundef 16, ptr noundef nonnull %Tp) #14
  ret double %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #5 {
entry:
  %call = tail call fastcc double @rtclock() #14
  store double %call, ptr @polybench_t_end, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #5 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !5
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !5
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub) #14
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %ptr) local_unnamed_addr #8 {
entry:
  tail call void @free(ptr noundef captures(none) %ptr) #17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #5 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %ret.i) #15
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull align 8 %ret.i, i64 noundef 4096, i64 noundef %mul) #14
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  call void @outlined_ir_func_0.2(ptr nofree noundef nonnull readonly captures(none) dereferenceable(51) @.str.4) #18
  call void @exit(i32 noundef 1) #19
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %ret.i) #14
  ret ptr %0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readonly captures(none) %argv) local_unnamed_addr #10 {
entry:
  %call = tail call ptr @polybench_alloc_data(i64 noundef 3990000, i32 noundef 8) #14
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 1900, i32 noundef 8) #14
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 2100, i32 noundef 8) #14
  %call3 = tail call ptr @polybench_alloc_data(i64 noundef 1900, i32 noundef 8) #14
  %call4 = tail call ptr @polybench_alloc_data(i64 noundef 2100, i32 noundef 8) #14
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %entry
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %entry ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 1900
  br i1 %exitcond.not.i, label %for.cond2.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.cond.i
  %0 = trunc nuw nsw i64 %indvars.iv.i to i32
  %conv.i = uitofp nneg i32 %0 to double
  %div.i = fdiv double %conv.i, 1.900000e+03
  %arrayidx.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx.i, align 8, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond.i, !llvm.loop !15

for.cond2.i:                                      ; preds = %for.cond.i, %for.inc27.i
  %indvars.iv19.i = phi i64 [ %indvars.iv.next20.i, %for.inc27.i ], [ 0, %for.cond.i ]
  %exitcond22.not.i = icmp eq i64 %indvars.iv19.i, 2100
  br i1 %exitcond22.not.i, label %init_array.exit, label %for.body5.i

for.body5.i:                                      ; preds = %for.cond2.i
  %1 = trunc nuw nsw i64 %indvars.iv19.i to i32
  %conv7.i = uitofp nneg i32 %1 to double
  %div9.i = fdiv double %conv7.i, 2.100000e+03
  %arrayidx11.i = getelementptr inbounds nuw double, ptr %call4, i64 %indvars.iv19.i
  store double %div9.i, ptr %arrayidx11.i, align 8, !tbaa !5
  br label %for.cond12.i

for.cond12.i:                                     ; preds = %for.inc24.i, %for.body5.i
  %indvars.iv14.i = phi i64 [ %indvars.iv.next15.i, %for.inc24.i ], [ 0, %for.body5.i ]
  %exitcond18.not.i = icmp eq i64 %indvars.iv14.i, 1900
  br i1 %exitcond18.not.i, label %for.inc27.i, label %for.inc24.i

for.inc24.i:                                      ; preds = %for.cond12.i
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1
  %2 = mul nuw nsw i64 %indvars.iv.next15.i, %indvars.iv19.i
  %3 = trunc nuw nsw i64 %2 to i32
  %rem16.i = urem i32 %3, 2100
  %conv17.i = uitofp nneg i32 %rem16.i to double
  %div19.i = fdiv double %conv17.i, 2.100000e+03
  %arrayidx23.i = getelementptr inbounds nuw [1900 x double], ptr %call, i64 %indvars.iv19.i, i64 %indvars.iv14.i
  store double %div19.i, ptr %arrayidx23.i, align 8, !tbaa !5
  br label %for.cond12.i, !llvm.loop !17

for.inc27.i:                                      ; preds = %for.cond12.i
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1
  br label %for.cond2.i, !llvm.loop !18

init_array.exit:                                  ; preds = %for.cond2.i
  %call.i = tail call fastcc double @rtclock() #14
  store double %call.i, ptr @polybench_t_start, align 8, !tbaa !5
  br label %for.cond.i6

for.cond.i6:                                      ; preds = %for.inc.i9, %init_array.exit
  %indvars.iv.i7 = phi i64 [ %indvars.iv.next.i11, %for.inc.i9 ], [ 0, %init_array.exit ]
  %exitcond.not.i8 = icmp eq i64 %indvars.iv.i7, 1900
  br i1 %exitcond.not.i8, label %for.cond1.i, label %for.inc.i9

for.inc.i9:                                       ; preds = %for.cond.i6
  %arrayidx.i10 = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv.i7
  store double 0.000000e+00, ptr %arrayidx.i10, align 8, !tbaa !5
  %indvars.iv.next.i11 = add nuw nsw i64 %indvars.iv.i7, 1
  br label %for.cond.i6, !llvm.loop !19

for.cond1.i:                                      ; preds = %for.cond.i6, %for.inc32.i
  %indvars.iv22.i = phi i64 [ %indvars.iv.next23.i, %for.inc32.i ], [ 0, %for.cond.i6 ]
  %exitcond25.not.i = icmp eq i64 %indvars.iv22.i, 2100
  br i1 %exitcond25.not.i, label %kernel_bicg.exit, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i
  %arrayidx5.i = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv22.i
  store double 0.000000e+00, ptr %arrayidx5.i, align 8, !tbaa !5
  %arrayidx12.i = getelementptr inbounds nuw double, ptr %call4, i64 %indvars.iv22.i
  %4 = load double, ptr %arrayidx12.i, align 8, !tbaa !5, !invariant.load !20
  br label %for.cond6.i

for.cond6.i:                                      ; preds = %for.inc29.i, %for.body3.i
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.inc29.i ], [ 0, %for.body3.i ]
  %exitcond21.not.i = icmp eq i64 %indvars.iv18.i, 1900
  br i1 %exitcond21.not.i, label %for.inc32.i, label %for.inc29.i

for.inc29.i:                                      ; preds = %for.cond6.i
  %arrayidx10.i = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv18.i
  %5 = load double, ptr %arrayidx10.i, align 8, !tbaa !5, !invariant.load !20
  %arrayidx16.i = getelementptr inbounds nuw [1900 x double], ptr %call, i64 %indvars.iv22.i, i64 %indvars.iv18.i
  %6 = load double, ptr %arrayidx16.i, align 8, !tbaa !5, !invariant.load !20
  %7 = tail call double @llvm.fmuladd.f64(double %4, double %6, double %5) #20
  store double %7, ptr %arrayidx10.i, align 8, !tbaa !5
  %arrayidx26.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv18.i
  %8 = load double, ptr %arrayidx26.i, align 8, !tbaa !5, !invariant.load !20
  %9 = tail call double @llvm.fmuladd.f64(double %6, double %8, double noundef 0.000000e+00) #20
  store double %9, ptr %arrayidx5.i, align 8, !tbaa !5
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  br label %for.cond6.i, !llvm.loop !21

for.inc32.i:                                      ; preds = %for.cond6.i
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1
  br label %for.cond1.i, !llvm.loop !22

kernel_bicg.exit:                                 ; preds = %for.cond1.i
  %call.i20 = tail call fastcc double @rtclock() #14
  store double %call.i20, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print() #14
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_bicg.exit
  %10 = load ptr, ptr %argv, align 8, !tbaa !23
  %strcmpload = load i8, ptr %10, align 1, !invariant.load !20
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array() #21
  unreachable

if.end:                                           ; preds = %land.lhs.true, %kernel_bicg.exit
  tail call void @free(ptr noundef %call) #18
  tail call void @free(ptr noundef %call1) #18
  tail call void @free(ptr noundef %call2) #18
  tail call void @free(ptr noundef %call3) #18
  tail call void @free(ptr noundef %call4) #18
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: cold nofree noreturn nounwind memory(readwrite, argmem: none) uwtable
define internal fastcc void @print_array() unnamed_addr #12 {
entry:
  tail call void @outlined_ir_func_0.2(ptr nofree noundef nonnull readonly captures(none) dereferenceable(23) @.str.1.6) #18
  %0 = load ptr, ptr @stderr, align 8, !tbaa !25
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.7, ptr noundef nonnull dereferenceable(2) @.str.3.8) #22
  unreachable
}

; Function Attrs: cold minsize nofree nounwind optsize uwtable
define internal void @outlined_ir_func_0.2(ptr nofree noundef nonnull readonly captures(none) dereferenceable(23) %0) #13 {
if.then_after_outline.exitStub:
  %1 = load ptr, ptr @stderr, align 8, !tbaa !25
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull readonly captures(none) dereferenceable(23) %0) #22
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn nounwind memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold minsize nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nofree nounwind willreturn memory(readwrite) }
attributes #16 = { nofree }
attributes #17 = { nounwind willreturn }
attributes #18 = { nounwind }
attributes #19 = { cold nofree noreturn nounwind }
attributes #20 = { nofree nosync }
attributes #21 = { noreturn nounwind }
attributes #22 = { cold nofree nounwind }

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
!9 = !{!10, !11, i64 0}
!10 = !{!"timeval", !11, i64 0, !11, i64 8}
!11 = !{!"long", !7, i64 0}
!12 = !{!10, !11, i64 8}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = !{}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 omnipotent char", !14, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
