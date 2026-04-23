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
  %0 = sext i32 %k to i64
  %.pre3 = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = phi i32 [ %7, %for.inc ], [ %.pre3, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %0, %entry ]
  %flag.0 = phi i32 [ %flag.1, %for.inc ], [ 0, %entry ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [26 x i32], ptr @a, i64 0, i64 %indvars.iv.next
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %cmp1.not = icmp sgt i32 %3, %c
  br i1 %cmp1.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr @p, align 4, !tbaa !5
  %add2 = add nsw i32 %4, 1
  store i32 %add2, ptr @p, align 4, !tbaa !5
  %5 = trunc nsw i64 %indvars.iv.next to i32
  tail call void @_Z3daoii(i32 noundef %3, i32 noundef %5) #5
  %6 = load i32, ptr @p, align 4, !tbaa !5
  %sub = add nsw i32 %6, -1
  store i32 %sub, ptr @p, align 4, !tbaa !5
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %7 = phi i32 [ %.pre, %if.then ], [ %1, %for.body ]
  %flag.1 = phi i32 [ 1, %if.then ], [ %flag.0, %for.body ]
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %cmp5 = icmp eq i32 %flag.0, 0
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %for.end
  %8 = load i32, ptr @p, align 4, !tbaa !5
  %9 = load i32, ptr @m, align 4, !tbaa !5
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [10000 x i32], ptr @b, i64 0, i64 %idxprom7
  store i32 %8, ptr %arrayidx8, align 4, !tbaa !5
  %add9 = add nsw i32 %9, 1
  store i32 %add9, ptr @m, align 4, !tbaa !5
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %for.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %call = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull @n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [26 x i32], ptr @a, i64 0, i64 %indvars.iv
  %call1 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !13

for.cond2:                                        ; preds = %for.cond, %for.inc7
  %2 = phi i32 [ %.pre, %for.inc7 ], [ %0, %for.cond ]
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.inc7 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp3 = icmp slt i64 %indvars.iv10, %3
  br i1 %cmp3, label %for.inc7, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond2
  %4 = load i32, ptr @m, align 4, !tbaa !5
  %sub = add nsw i32 %4, -1
  %smax = call i32 @llvm.smax.i32(i32 %sub, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond10

for.inc7:                                         ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [26 x i32], ptr @a, i64 0, i64 %indvars.iv10
  %5 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !9
  %6 = trunc nuw nsw i64 %indvars.iv10 to i32
  tail call void @_Z3daoii(i32 noundef %5, i32 noundef %6) #6
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !14

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc28
  %indvars.iv13 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next14, %for.inc28 ]
  %exitcond.not = icmp eq i64 %indvars.iv13, %wide.trip.count
  br i1 %exitcond.not, label %for.end30, label %for.body12

for.body12:                                       ; preds = %for.cond10
  %arrayidx14 = getelementptr inbounds nuw [10000 x i32], ptr @b, i64 0, i64 %indvars.iv13
  %7 = load i32, ptr %arrayidx14, align 4, !tbaa !5, !invariant.load !9
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %arrayidx16 = getelementptr inbounds nuw [10000 x i32], ptr @b, i64 0, i64 %indvars.iv.next14
  %8 = load i32, ptr %arrayidx16, align 4, !tbaa !5, !invariant.load !9
  %cmp17 = icmp sgt i32 %7, %8
  br i1 %cmp17, label %if.then, label %for.inc28

if.then:                                          ; preds = %for.body12
  store i32 %8, ptr %arrayidx14, align 4, !tbaa !5
  store i32 %7, ptr %arrayidx16, align 4, !tbaa !5
  br label %for.inc28

for.inc28:                                        ; preds = %for.body12, %if.then
  br label %for.cond10, !llvm.loop !15

for.end30:                                        ; preds = %for.cond10
  %idxprom32 = sext i32 %sub to i64
  %arrayidx33 = getelementptr inbounds [10000 x i32], ptr @b, i64 0, i64 %idxprom32
  %9 = load i32, ptr %arrayidx33, align 4, !tbaa !5, !invariant.load !9
  %call34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %9)
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
