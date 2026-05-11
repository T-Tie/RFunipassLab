; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/doitgen.ll'
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

; Function Attrs: noreturn nounwind uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(33556480) ptr @calloc(i64 noundef 4194560, i64 noundef 8) #11
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  br label %for.body
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 {
entry:
  tail call void @polybench_flush_cache() #12
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #0 {
entry:
  tail call void @polybench_prepare_instruments() #12
  unreachable
}

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #6 {
entry:
  %Tp.i = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 16, ptr noundef nonnull align 8 %Tp.i) #13
  %call.i = call i32 @gettimeofday(ptr noundef nonnull align 8 %Tp.i, ptr noundef null) #14
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %rtclock.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call1.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i) #14
  br label %rtclock.exit

rtclock.exit:                                     ; preds = %entry, %if.then.i
  %0 = load i64, ptr %Tp.i, align 8, !tbaa !5
  %conv.i = sitofp i64 %0 to double
  %tv_usec.i = getelementptr inbounds nuw i8, ptr %Tp.i, i64 8
  %1 = load i64, ptr %tv_usec.i, align 8, !tbaa !10
  %conv2.i = sitofp i64 %1 to double
  %2 = call double @llvm.fmuladd.f64(double %conv2.i, double noundef 0x3EB0C6F7A0B5ED8D, double %conv.i)
  call void @llvm.lifetime.end.p0(i64 noundef 16, ptr noundef nonnull %Tp.i) #14
  store double %2, ptr @polybench_t_end, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #6 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !11
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_free_data(ptr noundef %ptr) local_unnamed_addr #6 {
entry:
  tail call void @free(ptr noundef %ptr) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #6 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %ret.i) #13
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull align 8 %ret.i, i64 noundef 4096, i64 noundef %mul) #14
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  call fastcc void @outlined_ir_func_1() #14
  call void @exit(i32 noundef 1) #15
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %ret.i) #14
  ret ptr %0
}

; Function Attrs: nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @kernel_doitgen(i32 noundef %nr, i32 noundef %nq, i32 noundef %np, ptr nofree noundef captures(none) %A, ptr nofree noundef readonly captures(none) %C4, ptr nofree noundef captures(none) %sum) local_unnamed_addr #8 {
entry:
  %smax = call i32 @llvm.smax.i32(i32 noundef %np, i32 noundef 0)
  %smax21 = call i32 @llvm.smax.i32(i32 noundef %nq, i32 noundef 0)
  %smax27 = call i32 @llvm.smax.i32(i32 noundef %nr, i32 noundef 0)
  %wide.trip.count28 = zext nneg i32 %smax27 to i64
  %wide.trip.count22 = zext nneg i32 %smax21 to i64
  %wide.trip.count11 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %np to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end41, %entry
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.end41 ], [ 0, %entry ]
  %exitcond29.not = icmp eq i64 %indvars.iv24, %wide.trip.count28
  br i1 %exitcond29.not, label %for.end44, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.end38
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.end38 ], [ 0, %for.cond ]
  %exitcond23.not = icmp eq i64 %indvars.iv18, %wide.trip.count22
  br i1 %exitcond23.not, label %for.end41, label %for.cond4

for.cond4:                                        ; preds = %for.cond1, %for.end
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.end ], [ 0, %for.cond1 ]
  %exitcond12.not = icmp eq i64 %indvars.iv8, %wide.trip.count11
  br i1 %exitcond12.not, label %for.cond25, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds nuw double, ptr %sum, i64 %indvars.iv8
  store double 0.000000e+00, ptr %arrayidx, align 8, !tbaa !11
  br label %for.cond7

for.cond7:                                        ; preds = %for.body9, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body9 ], [ 0, %for.body6 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body9

for.body9:                                        ; preds = %for.cond7
  %arrayidx15 = getelementptr inbounds nuw [140 x [160 x double]], ptr %A, i64 %indvars.iv24, i64 %indvars.iv18, i64 %indvars.iv
  %0 = load double, ptr %arrayidx15, align 8, !tbaa !11, !invariant.load !15
  %arrayidx19 = getelementptr inbounds nuw [160 x double], ptr %C4, i64 %indvars.iv, i64 %indvars.iv8
  %1 = load double, ptr %arrayidx19, align 8, !tbaa !11, !invariant.load !15
  %2 = tail call double @llvm.fmuladd.f64(double %0, double %1, double noundef 0.000000e+00) #16
  store double %2, ptr %arrayidx, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond7, !llvm.loop !16

for.end:                                          ; preds = %for.cond7
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond4, !llvm.loop !18

for.cond25:                                       ; preds = %for.cond4, %for.body27
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %for.body27 ], [ 0, %for.cond4 ]
  %exitcond17.not = icmp eq i64 %indvars.iv13, %wide.trip.count11
  br i1 %exitcond17.not, label %for.end38, label %for.body27

for.body27:                                       ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds nuw double, ptr %sum, i64 %indvars.iv13
  %3 = load double, ptr %arrayidx29, align 8, !tbaa !11, !invariant.load !15
  %arrayidx35 = getelementptr inbounds nuw [140 x [160 x double]], ptr %A, i64 %indvars.iv24, i64 %indvars.iv18, i64 %indvars.iv13
  store double %3, ptr %arrayidx35, align 8, !tbaa !11
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond25, !llvm.loop !19

for.end38:                                        ; preds = %for.cond25
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond1, !llvm.loop !20

for.end41:                                        ; preds = %for.cond1
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond

for.end44:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %call = tail call nonnull ptr @polybench_alloc_data(i64 noundef 3360000, i32 noundef 8) #14
  %call1 = tail call nonnull ptr @polybench_alloc_data(i64 noundef 160, i32 noundef 8) #14
  %call2 = tail call nonnull ptr @polybench_alloc_data(i64 noundef 25600, i32 noundef 8) #14
  tail call fastcc void @init_array(ptr nofree noundef nonnull writeonly captures(none) %call, ptr nofree noundef nonnull writeonly captures(none) %call2) #17
  tail call void @polybench_timer_start() #12
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nofree noundef nonnull writeonly captures(none) %A, ptr nofree noundef nonnull writeonly captures(none) %C4) unnamed_addr #9 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.end14, %entry
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.end14 ], [ 0, %entry ]
  %exitcond19.not = icmp eq i64 %indvars.iv16, 150
  br i1 %exitcond19.not, label %for.cond18, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.end
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.end ], [ 0, %for.cond ]
  %exitcond15.not = icmp eq i64 %indvars.iv11, 140
  br i1 %exitcond15.not, label %for.end14, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond1
  %0 = mul nuw nsw i64 %indvars.iv11, %indvars.iv16
  br label %for.cond4

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.body6 ]
  %exitcond.not = icmp eq i64 %indvars.iv, 160
  br i1 %exitcond.not, label %for.end, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %1 = add nuw nsw i64 %indvars.iv, %0
  %2 = trunc nuw nsw i64 %1 to i32
  %rem = urem i32 %2, 160
  %conv = uitofp nneg i32 %rem to double
  %div = fdiv double %conv, 1.600000e+02
  %arrayidx11 = getelementptr inbounds nuw [140 x [160 x double]], ptr %A, i64 %indvars.iv16, i64 %indvars.iv11, i64 %indvars.iv
  store double %div, ptr %arrayidx11, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !21

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond1, !llvm.loop !22

for.end14:                                        ; preds = %for.cond1
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond, !llvm.loop !23

for.cond18:                                       ; preds = %for.cond, %for.end37
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.end37 ], [ 0, %for.cond ]
  %exitcond28.not = icmp eq i64 %indvars.iv25, 160
  br i1 %exitcond28.not, label %for.end40, label %for.cond22

for.cond22:                                       ; preds = %for.cond18, %for.body25
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.body25 ], [ 0, %for.cond18 ]
  %exitcond24.not = icmp eq i64 %indvars.iv20, 160
  br i1 %exitcond24.not, label %for.end37, label %for.body25

for.body25:                                       ; preds = %for.cond22
  %3 = mul nuw nsw i64 %indvars.iv20, %indvars.iv25
  %4 = trunc nuw nsw i64 %3 to i32
  %rem27 = urem i32 %4, 160
  %conv28 = uitofp nneg i32 %rem27 to double
  %div30 = fdiv double %conv28, 1.600000e+02
  %arrayidx34 = getelementptr inbounds nuw [160 x double], ptr %C4, i64 %indvars.iv25, i64 %indvars.iv20
  store double %div30, ptr %arrayidx34, align 8, !tbaa !11
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond22, !llvm.loop !24

for.end37:                                        ; preds = %for.cond22
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond18

for.end40:                                        ; preds = %for.cond18
  ret void
}

; Function Attrs: cold minsize nounwind optsize memory(readwrite, argmem: none) uwtable
define internal fastcc void @outlined_ir_func_1() unnamed_addr #10 {
if.then_after_outline.exitStub:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !25
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull dereferenceable(51) @.str.4) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold minsize nounwind optsize memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nofree nounwind willreturn memory(readwrite) }
attributes #14 = { nounwind }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { nofree nosync }
attributes #17 = { nounwind memory(write) }
attributes #18 = { cold nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!6, !7, i64 0}
!6 = !{!"timeval", !7, i64 0, !7, i64 8}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !8, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
