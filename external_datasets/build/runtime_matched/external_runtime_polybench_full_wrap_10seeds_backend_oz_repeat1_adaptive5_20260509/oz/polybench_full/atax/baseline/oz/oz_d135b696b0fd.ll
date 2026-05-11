; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/atax.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@polybench_papi_counters_threadid = dso_local local_unnamed_addr global i32 0, align 4
@polybench_program_total_flops = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@polybench_t_start = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@polybench_t_end = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@polybench_c_start = dso_local local_unnamed_addr global i64 0, align 8
@polybench_c_end = dso_local local_unnamed_addr global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Error return from gettimeofday: %d\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.6 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2.7 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3.8 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.5.10 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #3 {
entry:
  %call = tail call fastcc double @rtclock()
  store double %call, ptr @polybench_t_start, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc double @rtclock() unnamed_addr #3 {
entry:
  %Tp = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp) #11
  %call = call i32 @gettimeofday(ptr noundef nonnull %Tp, ptr noundef null) #11
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i64, ptr %Tp, align 8, !tbaa !9
  %conv = sitofp i64 %0 to double
  %tv_usec = getelementptr inbounds nuw i8, ptr %Tp, i64 8
  %1 = load i64, ptr %tv_usec, align 8, !tbaa !12
  %conv2 = sitofp i64 %1 to double
  %2 = tail call double @llvm.fmuladd.f64(double %conv2, double 0x3EB0C6F7A0B5ED8D, double %conv)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp) #11
  ret double %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #3 {
entry:
  %call = tail call fastcc double @rtclock()
  store double %call, ptr @polybench_t_end, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #3 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !5
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !5
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %ptr) local_unnamed_addr #6 {
entry:
  tail call void @free(ptr noundef %ptr) #11
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #3 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i) #11
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i, i64 noundef 4096, i64 noundef %mul) #11
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %2 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %1) #12
  call void @exit(i32 noundef 1) #13
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i) #11
  ret ptr %0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readonly captures(none) %argv) local_unnamed_addr #8 {
entry:
  %call = tail call ptr @polybench_alloc_data(i64 noundef 3990000, i32 noundef 8)
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 2100, i32 noundef 8)
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 2100, i32 noundef 8)
  %call3 = tail call ptr @polybench_alloc_data(i64 noundef 1900, i32 noundef 8)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %entry ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 2100
  br i1 %exitcond.not.i, label %for.cond3.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %0 = trunc nuw nsw i64 %indvars.iv.i to i32
  %conv2.i = uitofp nneg i32 %0 to double
  %div.i = fdiv double %conv2.i, 2.100000e+03
  %add.i = fadd double %div.i, 1.000000e+00
  %arrayidx.i = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv.i
  store double %add.i, ptr %arrayidx.i, align 8, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond.i, !llvm.loop !17

for.cond3.i:                                      ; preds = %for.cond.i, %for.inc22.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc22.i ], [ 0, %for.cond.i ]
  %exitcond24.not.i = icmp eq i64 %indvars.iv21.i, 1900
  br i1 %exitcond24.not.i, label %init_array.exit, label %for.cond7.i

for.cond7.i:                                      ; preds = %for.cond3.i, %for.body10.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.body10.i ], [ 0, %for.cond3.i ]
  %exitcond20.not.i = icmp eq i64 %indvars.iv16.i, 2100
  br i1 %exitcond20.not.i, label %for.inc22.i, label %for.body10.i

for.body10.i:                                     ; preds = %for.cond7.i
  %1 = add nuw nsw i64 %indvars.iv16.i, %indvars.iv21.i
  %2 = trunc nuw nsw i64 %1 to i32
  %rem.i = urem i32 %2, 2100
  %conv12.i = uitofp nneg i32 %rem.i to double
  %div14.i = fdiv double %conv12.i, 9.500000e+03
  %arrayidx18.i = getelementptr inbounds nuw [2100 x double], ptr %call, i64 %indvars.iv21.i, i64 %indvars.iv16.i
  store double %div14.i, ptr %arrayidx18.i, align 8, !tbaa !5
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  br label %for.cond7.i, !llvm.loop !19

for.inc22.i:                                      ; preds = %for.cond7.i
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  br label %for.cond3.i, !llvm.loop !20

init_array.exit:                                  ; preds = %for.cond3.i
  %call.i = tail call fastcc double @rtclock()
  store double %call.i, ptr @polybench_t_start, align 8, !tbaa !5
  br label %for.cond.i11

for.cond.i11:                                     ; preds = %for.body.i14, %init_array.exit
  %indvars.iv.i12 = phi i64 [ %indvars.iv.next.i16, %for.body.i14 ], [ 0, %init_array.exit ]
  %exitcond.not.i13 = icmp eq i64 %indvars.iv.i12, 2100
  br i1 %exitcond.not.i13, label %for.cond1.i, label %for.body.i14

for.body.i14:                                     ; preds = %for.cond.i11
  %arrayidx.i15 = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv.i12
  store double 0.000000e+00, ptr %arrayidx.i15, align 8, !tbaa !5
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i12, 1
  br label %for.cond.i11, !llvm.loop !21

for.cond1.i:                                      ; preds = %for.cond.i11, %for.inc38.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %for.inc38.i ], [ 0, %for.cond.i11 ]
  %exitcond39.not.i = icmp eq i64 %indvars.iv36.i, 1900
  br i1 %exitcond39.not.i, label %kernel_atax.exit, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i
  %arrayidx5.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv36.i
  store double 0.000000e+00, ptr %arrayidx5.i, align 8, !tbaa !5
  br label %for.cond6.i

for.cond6.i:                                      ; preds = %for.body8.i, %for.body3.i
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i, %for.body8.i ], [ 0, %for.body3.i ]
  %3 = phi double [ %6, %for.body8.i ], [ 0.000000e+00, %for.body3.i ]
  %exitcond31.not.i = icmp eq i64 %indvars.iv28.i, 2100
  br i1 %exitcond31.not.i, label %for.cond22.i, label %for.body8.i

for.body8.i:                                      ; preds = %for.cond6.i
  %arrayidx14.i = getelementptr inbounds nuw [2100 x double], ptr %call, i64 %indvars.iv36.i, i64 %indvars.iv28.i
  %4 = load double, ptr %arrayidx14.i, align 8, !tbaa !5
  %arrayidx16.i = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv28.i
  %5 = load double, ptr %arrayidx16.i, align 8, !tbaa !5
  %6 = tail call double @llvm.fmuladd.f64(double %4, double %5, double %3)
  store double %6, ptr %arrayidx5.i, align 8, !tbaa !5
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1
  br label %for.cond6.i, !llvm.loop !22

for.cond22.i:                                     ; preds = %for.cond6.i, %for.body24.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %for.body24.i ], [ 0, %for.cond6.i ]
  %exitcond35.not.i = icmp eq i64 %indvars.iv32.i, 2100
  br i1 %exitcond35.not.i, label %for.inc38.i, label %for.body24.i

for.body24.i:                                     ; preds = %for.cond22.i
  %arrayidx26.i = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv32.i
  %7 = load double, ptr %arrayidx26.i, align 8, !tbaa !5
  %arrayidx30.i = getelementptr inbounds nuw [2100 x double], ptr %call, i64 %indvars.iv36.i, i64 %indvars.iv32.i
  %8 = load double, ptr %arrayidx30.i, align 8, !tbaa !5
  %9 = load double, ptr %arrayidx5.i, align 8, !tbaa !5
  %10 = tail call double @llvm.fmuladd.f64(double %8, double %9, double %7)
  store double %10, ptr %arrayidx26.i, align 8, !tbaa !5
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1
  br label %for.cond22.i, !llvm.loop !23

for.inc38.i:                                      ; preds = %for.cond22.i
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1
  br label %for.cond1.i, !llvm.loop !24

kernel_atax.exit:                                 ; preds = %for.cond1.i
  %call.i17 = tail call fastcc double @rtclock()
  store double %call.i17, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print()
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_atax.exit
  %11 = load ptr, ptr %argv, align 8, !tbaa !25
  %strcmpload = load i8, ptr %11, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(ptr noundef %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_atax.exit
  tail call void @free(ptr noundef nonnull %call) #11
  tail call void @free(ptr noundef nonnull %call1) #11
  tail call void @free(ptr noundef nonnull %call2) #11
  tail call void @free(ptr noundef nonnull %call3) #11
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %y) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #12
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #14
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 2100
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %rem.lhs.trunc = trunc i64 %indvars.iv to i16
  %rem4 = urem i16 %rem.lhs.trunc, 20
  %cmp2 = icmp eq i16 %rem4, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds nuw double, ptr %y, i64 %indvars.iv
  %5 = load double, ptr %arrayidx, align 8, !tbaa !5
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.5.10, double noundef %5) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #14
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %8 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %7) #12
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { cold nounwind }

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
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 omnipotent char", !14, i64 0}
!27 = distinct !{!27, !18}
