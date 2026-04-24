; ModuleID = '<stdin>'
source_filename = "/tmp/tmppt2estbf.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@n = dso_local global i32 0, align 4
@m = dso_local local_unnamed_addr global i32 0, align 4
@the_min = dso_local local_unnamed_addr global i32 0, align 4
@a = dso_local global [110 x [110 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z10reduce_miniiii(i32 noundef %x, i32 noundef %y, i32 noundef %dx, i32 noundef %dy) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @m, align 4, !tbaa !5
  %cmp = icmp eq i32 %x, %0
  %cmp1 = icmp eq i32 %y, %0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %common.ret, label %if.end

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %x to i64
  %idxprom2 = sext i32 %y to i64
  %arrayidx3 = getelementptr inbounds [110 x [110 x i32]], ptr @a, i64 0, i64 %idxprom, i64 %idxprom2
  %1 = load i32, ptr %arrayidx3, align 4, !tbaa !5, !invariant.load !9
  %2 = load i32, ptr @the_min, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %1, %2
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  store i32 %1, ptr @the_min, align 4, !tbaa !5
  br label %if.end10

common.ret:                                       ; preds = %entry, %if.end10
  ret void

if.end10:                                         ; preds = %if.then5, %if.end
  %add = add nsw i32 %dx, %x
  %add11 = add nsw i32 %dy, %y
  tail call void @_Z10reduce_miniiii(i32 noundef %add, i32 noundef %add11, i32 noundef %dx, i32 noundef %dy) #5
  %3 = load i32, ptr @the_min, align 4, !tbaa !5
  %sub = sub nsw i32 %1, %3
  store i32 %sub, ptr %arrayidx3, align 4, !tbaa !5
  br label %common.ret
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z6reducev() local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @m, align 4, !tbaa !5
  %smax = tail call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count19 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.inc10 ], [ 0, %entry ]
  %exitcond20.not = icmp eq i64 %indvars.iv16, %wide.trip.count19
  br i1 %exitcond20.not, label %for.cond13, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc10, label %for.inc

for.inc:                                          ; preds = %for.cond1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx5 = getelementptr inbounds nuw [110 x [110 x i32]], ptr @a, i64 0, i64 %indvars.iv16, i64 %indvars.iv.next
  %1 = load i32, ptr %arrayidx5, align 4, !tbaa !5, !invariant.load !9
  %arrayidx9 = getelementptr inbounds nuw [110 x [110 x i32]], ptr @a, i64 0, i64 %indvars.iv16, i64 %indvars.iv
  store i32 %1, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !10

for.inc10:                                        ; preds = %for.cond1
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond, !llvm.loop !13

for.cond13:                                       ; preds = %for.cond, %for.inc31
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.inc31 ], [ 0, %for.cond ]
  %exitcond30.not = icmp eq i64 %indvars.iv26, %wide.trip.count19
  br i1 %exitcond30.not, label %for.end33, label %for.cond16

for.cond16:                                       ; preds = %for.cond13, %for.inc28
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.inc28 ], [ 1, %for.cond13 ]
  %exitcond25.not = icmp eq i64 %indvars.iv21, %wide.trip.count
  br i1 %exitcond25.not, label %for.inc31, label %for.inc28

for.inc28:                                        ; preds = %for.cond16
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %arrayidx23 = getelementptr inbounds nuw [110 x [110 x i32]], ptr @a, i64 0, i64 %indvars.iv.next22, i64 %indvars.iv26
  %2 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !9
  %arrayidx27 = getelementptr inbounds nuw [110 x [110 x i32]], ptr @a, i64 0, i64 %indvars.iv21, i64 %indvars.iv26
  store i32 %2, ptr %arrayidx27, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !14

for.inc31:                                        ; preds = %for.cond16
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond13, !llvm.loop !15

for.end33:                                        ; preds = %for.cond13
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %call = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull @n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc33, %for.inc32 ]
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %t.0, %0
  br i1 %cmp, label %for.cond1, label %for.end34

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv16, %2
  br i1 %cmp2, label %for.cond4, label %for.cond13

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %3 = phi i32 [ %.pre19, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [110 x [110 x i32]], ptr @a, i64 0, i64 %indvars.iv16, i64 %indvars.iv
  %call9 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre19 = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !16

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond1, !llvm.loop !17

for.cond13:                                       ; preds = %for.cond1, %for.inc29
  %storemerge = phi i32 [ %dec, %for.inc29 ], [ %1, %for.cond1 ]
  %sum.0 = phi i32 [ %add, %for.inc29 ], [ 0, %for.cond1 ]
  store i32 %storemerge, ptr @m, align 4, !tbaa !5
  %cmp14 = icmp sgt i32 %storemerge, 0
  br i1 %cmp14, label %for.cond16, label %for.inc32

for.cond16:                                       ; preds = %for.cond13, %for.inc26
  %5 = phi i32 [ %.pre, %for.inc26 ], [ %storemerge, %for.cond13 ]
  %i.1 = phi i32 [ %inc27, %for.inc26 ], [ 0, %for.cond13 ]
  %mul = shl nsw i32 %5, 1
  %cmp17 = icmp slt i32 %i.1, %mul
  br i1 %cmp17, label %for.inc26, label %for.inc29

for.inc26:                                        ; preds = %for.cond16
  store i32 10000, ptr @the_min, align 4, !tbaa !5
  %rem = srem i32 %i.1, %5
  %div = sdiv i32 %i.1, %5
  %sub = sub nsw i32 1, %div
  %mul19 = mul nsw i32 %sub, %rem
  %mul22 = mul nsw i32 %div, %rem
  tail call void @_Z10reduce_miniiii(i32 noundef %mul19, i32 noundef %mul22, i32 noundef %div, i32 noundef %sub) #6
  %inc27 = add nuw nsw i32 %i.1, 1
  %.pre = load i32, ptr @m, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !18

for.inc29:                                        ; preds = %for.cond16
  %6 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 444), align 4, !tbaa !5
  %add = add nsw i32 %6, %sum.0
  tail call void @_Z6reducev() #6
  %7 = load i32, ptr @m, align 4, !tbaa !5
  %dec = add nsw i32 %7, -1
  br label %for.cond13, !llvm.loop !19

for.inc32:                                        ; preds = %for.cond13
  %call31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %sum.0)
  %inc33 = add nuw nsw i32 %t.0, 1
  br label %for.cond, !llvm.loop !20

for.end34:                                        ; preds = %for.cond
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nosync nounwind }
attributes #6 = { nounwind }

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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
