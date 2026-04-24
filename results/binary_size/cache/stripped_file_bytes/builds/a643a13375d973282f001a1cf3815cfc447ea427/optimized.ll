; ModuleID = '<stdin>'
source_filename = "/tmp/tmprcunkcxb.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@n = dso_local global i32 0, align 4
@h = dso_local global [30 x i32] zeroinitializer, align 16
@len = dso_local local_unnamed_addr global [30 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull @n)
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp17 = icmp sgt i32 %0, 0
  br i1 %cmp17, label %for.body, label %for.cond35.preheader.thread

for.cond35.preheader.thread:                      ; preds = %entry
  store i32 1, ptr @len, align 16, !tbaa !5
  br label %for.cond.cleanup37

for.cond.cleanup:                                 ; preds = %for.body
  store i32 1, ptr @len, align 16, !tbaa !5
  %cmp420 = icmp sgt i32 %1, 1
  br i1 %cmp420, label %for.body6.preheader, label %for.cond35.preheader

for.body6.preheader:                              ; preds = %for.cond.cleanup
  %wide.trip.count34 = zext nneg i32 %1 to i64
  br label %for.body6

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [30 x i32], ptr @h, i64 0, i64 %indvars.iv
  %call1 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !9

for.cond35.preheader:                             ; preds = %for.cond.cleanup11, %for.cond.cleanup
  %cmp3622 = icmp sgt i32 %1, 0
  br i1 %cmp3622, label %for.body38.preheader, label %for.cond.cleanup37

for.body38.preheader:                             ; preds = %for.cond35.preheader
  %wide.trip.count = zext nneg i32 %1 to i64
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %for.body38.preheader45, label %vector.ph

vector.ph:                                        ; preds = %for.body38.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %4, %vector.body ]
  %3 = getelementptr inbounds nuw [30 x i32], ptr @len, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %3, align 16, !tbaa !5
  %4 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi)
  %index.next = add nuw i64 %index, 4
  %5 = icmp eq i64 %index.next, %n.vec
  br i1 %5, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %6 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %4)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond.cleanup37, label %for.body38.preheader45

for.body38.preheader45:                           ; preds = %for.body38.preheader, %middle.block
  %indvars.iv36.ph = phi i64 [ 0, %for.body38.preheader ], [ %n.vec, %middle.block ]
  %maxi.023.ph = phi i32 [ 0, %for.body38.preheader ], [ %6, %middle.block ]
  br label %for.body38

for.body6:                                        ; preds = %for.body6.preheader, %for.cond.cleanup11
  %indvars.iv31 = phi i64 [ 1, %for.body6.preheader ], [ %indvars.iv.next32, %for.cond.cleanup11 ]
  %arrayidx8 = getelementptr inbounds nuw [30 x i32], ptr @len, i64 0, i64 %indvars.iv31
  store i32 1, ptr %arrayidx8, align 4, !tbaa !5
  %arrayidx16 = getelementptr inbounds nuw [30 x i32], ptr @h, i64 0, i64 %indvars.iv31
  %7 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  br label %for.body12

for.cond.cleanup11:                               ; preds = %for.inc28
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond35.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count34
  br i1 %exitcond35.not, label %for.cond35.preheader, label %for.body6, !llvm.loop !15

for.body12:                                       ; preds = %for.body6, %for.inc28
  %8 = phi i32 [ 1, %for.body6 ], [ %11, %for.inc28 ]
  %indvars.iv28 = phi i64 [ 0, %for.body6 ], [ %indvars.iv.next29, %for.inc28 ]
  %arrayidx14 = getelementptr inbounds nuw [30 x i32], ptr @h, i64 0, i64 %indvars.iv28
  %9 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp17.not = icmp slt i32 %9, %7
  br i1 %cmp17.not, label %for.inc28, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body12
  %arrayidx19 = getelementptr inbounds nuw [30 x i32], ptr @len, i64 0, i64 %indvars.iv28
  %10 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp22.not = icmp slt i32 %10, %8
  br i1 %cmp22.not, label %for.inc28, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %add = add nsw i32 %10, 1
  store i32 %add, ptr %arrayidx8, align 4, !tbaa !5
  br label %for.inc28

for.inc28:                                        ; preds = %for.body12, %land.lhs.true, %if.then
  %11 = phi i32 [ %8, %for.body12 ], [ %8, %land.lhs.true ], [ %add, %if.then ]
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next29, %indvars.iv31
  br i1 %exitcond.not, label %for.cond.cleanup11, label %for.body12, !llvm.loop !16

for.cond.cleanup37:                               ; preds = %for.body38, %middle.block, %for.cond35.preheader.thread, %for.cond35.preheader
  %maxi.0.lcssa = phi i32 [ 0, %for.cond35.preheader ], [ 0, %for.cond35.preheader.thread ], [ %6, %middle.block ], [ %spec.select, %for.body38 ]
  %call49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %maxi.0.lcssa)
  ret i32 0

for.body38:                                       ; preds = %for.body38.preheader45, %for.body38
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.body38 ], [ %indvars.iv36.ph, %for.body38.preheader45 ]
  %maxi.023 = phi i32 [ %spec.select, %for.body38 ], [ %maxi.023.ph, %for.body38.preheader45 ]
  %arrayidx40 = getelementptr inbounds nuw [30 x i32], ptr @len, i64 0, i64 %indvars.iv36
  %12 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smax.i32(i32 %12, i32 %maxi.023)
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %exitcond39.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count
  br i1 %exitcond39.not, label %for.cond.cleanup37, label %for.body38, !llvm.loop !17
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11, !13}
