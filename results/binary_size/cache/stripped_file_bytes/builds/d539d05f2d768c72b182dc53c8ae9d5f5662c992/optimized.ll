; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0kq0xul4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@a = dso_local global [26 x i32] zeroinitializer, align 16
@b = dso_local local_unnamed_addr global [10000 x i32] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@m = dso_local local_unnamed_addr global i32 0, align 4
@p = dso_local local_unnamed_addr global i32 1, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z3daoii(i32 noundef %c, i32 noundef %k) local_unnamed_addr #0 {
entry:
  %i.05 = add nsw i32 %k, 1
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %i.05, %0
  br i1 %cmp6, label %for.body.preheader, label %if.then6

for.body.preheader:                               ; preds = %entry
  %1 = sext i32 %k to i64
  %2 = add nsw i64 %1, 1
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc.thread, %for.body.preheader
  %.ph = phi i32 [ %.pre, %for.inc.thread ], [ %0, %for.body.preheader ]
  %indvars.iv.ph = phi i64 [ %indvars.iv.next12, %for.inc.thread ], [ %2, %for.body.preheader ]
  %3 = phi i1 [ false, %for.inc.thread ], [ true, %for.body.preheader ]
  %4 = sext i32 %.ph to i64
  br label %for.body

for.body:                                         ; preds = %for.body.outer, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %indvars.iv.ph, %for.body.outer ]
  %arrayidx = getelementptr inbounds [26 x i32], ptr @a, i64 0, i64 %indvars.iv
  %5 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp1.not = icmp sgt i32 %5, %c
  br i1 %cmp1.not, label %for.inc, label %for.inc.thread

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !9

for.inc.thread:                                   ; preds = %for.body
  %6 = load i32, ptr @p, align 4, !tbaa !5
  %add2 = add nsw i32 %6, 1
  store i32 %add2, ptr @p, align 4, !tbaa !5
  %7 = trunc nsw i64 %indvars.iv to i32
  tail call void @_Z3daoii(i32 noundef %5, i32 noundef %7)
  %8 = load i32, ptr @p, align 4, !tbaa !5
  %sub = add nsw i32 %8, -1
  store i32 %sub, ptr @p, align 4, !tbaa !5
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  %indvars.iv.next12 = add nsw i64 %indvars.iv, 1
  %9 = sext i32 %.pre to i64
  %cmp13 = icmp slt i64 %indvars.iv.next12, %9
  br i1 %cmp13, label %for.body.outer, label %if.end10, !llvm.loop !9

for.end:                                          ; preds = %for.inc
  br i1 %3, label %if.then6, label %if.end10

if.then6:                                         ; preds = %entry, %for.end
  %10 = load i32, ptr @p, align 4, !tbaa !5
  %11 = load i32, ptr @m, align 4, !tbaa !5
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [10000 x i32], ptr @b, i64 0, i64 %idxprom7
  store i32 %10, ptr %arrayidx8, align 4, !tbaa !5
  %add9 = add nsw i32 %11, 1
  store i32 %add9, ptr @m, align 4, !tbaa !5
  br label %if.end10

if.end10:                                         ; preds = %for.inc.thread, %if.then6, %for.end
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %call = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull @n)
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %0, 0
  br i1 %cmp16, label %for.body, label %for.cond10.preheader

for.cond2.preheader:                              ; preds = %for.body
  %1 = icmp sgt i32 %2, 0
  br i1 %1, label %for.body4, label %for.cond10.preheader

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [26 x i32], ptr @a, i64 0, i64 %indvars.iv
  %call1 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = load i32, ptr @n, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %3
  br i1 %cmp, label %for.body, label %for.cond2.preheader, !llvm.loop !12

for.cond10.preheader:                             ; preds = %for.body4, %entry, %for.cond2.preheader
  %4 = load i32, ptr @m, align 4, !tbaa !5
  %sub = add i32 %4, -1
  %cmp1120 = icmp sgt i32 %4, 1
  br i1 %cmp1120, label %for.body12.preheader, label %for.end30

for.body12.preheader:                             ; preds = %for.cond10.preheader
  %wide.trip.count = zext nneg i32 %sub to i64
  %.pre = load i32, ptr @b, align 16, !tbaa !5
  br label %for.body12

for.body4:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.body4 ], [ 0, %for.cond2.preheader ]
  %arrayidx6 = getelementptr inbounds nuw [26 x i32], ptr @a, i64 0, i64 %indvars.iv23
  %5 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %6 = trunc nuw nsw i64 %indvars.iv23 to i32
  tail call void @_Z3daoii(i32 noundef %5, i32 noundef %6)
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %7 = load i32, ptr @n, align 4, !tbaa !5
  %8 = sext i32 %7 to i64
  %cmp3 = icmp slt i64 %indvars.iv.next24, %8
  br i1 %cmp3, label %for.body4, label %for.cond10.preheader, !llvm.loop !13

for.body12:                                       ; preds = %for.body12.preheader, %for.inc28
  %9 = phi i32 [ %.pre, %for.body12.preheader ], [ %11, %for.inc28 ]
  %indvars.iv26 = phi i64 [ 0, %for.body12.preheader ], [ %indvars.iv.next27, %for.inc28 ]
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %arrayidx16 = getelementptr inbounds nuw [10000 x i32], ptr @b, i64 0, i64 %indvars.iv.next27
  %10 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %cmp17 = icmp sgt i32 %9, %10
  br i1 %cmp17, label %if.then, label %for.inc28

if.then:                                          ; preds = %for.body12
  %arrayidx14 = getelementptr inbounds nuw [10000 x i32], ptr @b, i64 0, i64 %indvars.iv26
  store i32 %10, ptr %arrayidx14, align 4, !tbaa !5
  store i32 %9, ptr %arrayidx16, align 4, !tbaa !5
  br label %for.inc28

for.inc28:                                        ; preds = %for.body12, %if.then
  %11 = phi i32 [ %10, %for.body12 ], [ %9, %if.then ]
  %exitcond.not = icmp eq i64 %indvars.iv.next27, %wide.trip.count
  br i1 %exitcond.not, label %for.end30, label %for.body12, !llvm.loop !14

for.end30:                                        ; preds = %for.inc28, %for.cond10.preheader
  %idxprom32 = sext i32 %sub to i64
  %arrayidx33 = getelementptr inbounds [10000 x i32], ptr @b, i64 0, i64 %idxprom32
  %12 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %call34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %12)
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

attributes #0 = { mustprogress nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
