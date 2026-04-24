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
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 1, ptr @len, align 16, !tbaa !5
  %smax = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  %wide.trip.count25 = zext nneg i32 %smax to i64
  br label %for.cond3

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [30 x i32], ptr @h, i64 0, i64 %indvars.iv
  %call1 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond3:                                        ; preds = %for.cond.cleanup11, %for.cond.cleanup
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.cond.cleanup11 ], [ 1, %for.cond.cleanup ]
  %exitcond26.not = icmp eq i64 %indvars.iv21, %wide.trip.count25
  br i1 %exitcond26.not, label %for.cond35.preheader, label %for.body6

for.cond35.preheader:                             ; preds = %for.cond3
  %smax31 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax31 to i64
  br label %for.cond35

for.body6:                                        ; preds = %for.cond3
  %arrayidx8 = getelementptr inbounds nuw [30 x i32], ptr @len, i64 0, i64 %indvars.iv21
  store i32 1, ptr %arrayidx8, align 4, !tbaa !5
  %arrayidx16 = getelementptr inbounds nuw [30 x i32], ptr @h, i64 0, i64 %indvars.iv21
  %2 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc28, %for.body6
  %3 = phi i32 [ %6, %for.inc28 ], [ 1, %for.body6 ]
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.inc28 ], [ 0, %for.body6 ]
  %exitcond.not = icmp eq i64 %indvars.iv18, %indvars.iv21
  br i1 %exitcond.not, label %for.cond.cleanup11, label %for.body12

for.cond.cleanup11:                               ; preds = %for.cond9
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond3, !llvm.loop !12

for.body12:                                       ; preds = %for.cond9
  %arrayidx14 = getelementptr inbounds nuw [30 x i32], ptr @h, i64 0, i64 %indvars.iv18
  %4 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp17.not = icmp slt i32 %4, %2
  br i1 %cmp17.not, label %for.inc28, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body12
  %arrayidx19 = getelementptr inbounds nuw [30 x i32], ptr @len, i64 0, i64 %indvars.iv18
  %5 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp22.not = icmp slt i32 %5, %3
  br i1 %cmp22.not, label %for.inc28, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %add = add nsw i32 %5, 1
  store i32 %add, ptr %arrayidx8, align 4, !tbaa !5
  br label %for.inc28

for.inc28:                                        ; preds = %for.body12, %land.lhs.true, %if.then
  %6 = phi i32 [ %3, %for.body12 ], [ %3, %land.lhs.true ], [ %add, %if.then ]
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond9, !llvm.loop !13

for.cond35:                                       ; preds = %for.cond35.preheader, %for.body38
  %indvars.iv27 = phi i64 [ 0, %for.cond35.preheader ], [ %indvars.iv.next28, %for.body38 ]
  %maxi.0 = phi i32 [ 0, %for.cond35.preheader ], [ %spec.select, %for.body38 ]
  %exitcond32.not = icmp eq i64 %indvars.iv27, %wide.trip.count
  br i1 %exitcond32.not, label %for.cond.cleanup37, label %for.body38

for.cond.cleanup37:                               ; preds = %for.cond35
  %call49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %maxi.0)
  ret i32 0

for.body38:                                       ; preds = %for.cond35
  %arrayidx40 = getelementptr inbounds nuw [30 x i32], ptr @len, i64 0, i64 %indvars.iv27
  %7 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smax.i32(i32 %7, i32 %maxi.0)
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond35, !llvm.loop !14
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
