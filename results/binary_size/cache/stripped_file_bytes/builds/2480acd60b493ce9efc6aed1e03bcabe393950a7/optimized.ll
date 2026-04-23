; ModuleID = '<stdin>'
source_filename = "/tmp/tmppxx7gaum.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@s = dso_local global [1000 x [1000 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = phi i32 [ %2, %for.inc7 ], [ %.pre, %entry ]
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.inc7 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv36, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count47 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  %sub = add nsw i32 %0, -1
  %idxprom28 = sext i32 %sub to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.body3
  %2 = phi i32 [ %.pre57, %for.body3 ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.body3, label %for.inc7

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @s, i64 0, i64 %indvars.iv36, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre57 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %if.then25, %for.cond10.preheader
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %if.then25 ], [ 0, %for.cond10.preheader ]
  %a.0 = phi i32 [ %a.263, %if.then25 ], [ undef, %for.cond10.preheader ]
  %b.0 = phi i32 [ %b.265, %if.then25 ], [ undef, %for.cond10.preheader ]
  %exitcond48.not = icmp eq i64 %indvars.iv43, %wide.trip.count47
  br i1 %exitcond48.not, label %for.cond10.for.end36_crit_edge, label %for.cond13.preheader

for.cond10.for.end36_crit_edge:                   ; preds = %for.cond10
  %.pre58 = zext i32 %0 to i64
  br label %for.end36

for.cond13.preheader:                             ; preds = %for.cond10
  %4 = trunc nuw nsw i64 %indvars.iv43 to i32
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc21
  %indvars.iv39 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next40, %for.inc21 ]
  %exitcond.not = icmp eq i64 %indvars.iv39, %wide.trip.count
  br i1 %exitcond.not, label %if.then25, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @s, i64 0, i64 %indvars.iv43, i64 %indvars.iv39
  %5 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %5, 0
  br i1 %cmp20, label %for.end23, label %for.inc21

for.inc21:                                        ; preds = %for.body15
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond13, !llvm.loop !13

for.end23:                                        ; preds = %for.body15
  %6 = trunc nuw nsw i64 %indvars.iv39 to i32
  %cmp24 = icmp eq i32 %0, %6
  br i1 %cmp24, label %if.then25, label %for.end36

if.then25:                                        ; preds = %for.cond13, %for.end23
  %b.265 = phi i32 [ %6, %for.end23 ], [ %b.0, %for.cond13 ]
  %a.263 = phi i32 [ %4, %for.end23 ], [ %a.0, %for.cond13 ]
  %arrayidx29 = getelementptr inbounds [1000 x [1000 x i32]], ptr @s, i64 0, i64 %indvars.iv43, i64 %idxprom28
  %7 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %7, 0
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br i1 %cmp30, label %for.end36, label %for.cond10, !llvm.loop !14

for.end36:                                        ; preds = %for.end23, %if.then25, %for.cond10.for.end36_crit_edge
  %.pre-phi = phi i64 [ %.pre58, %for.cond10.for.end36_crit_edge ], [ %wide.trip.count, %if.then25 ], [ %wide.trip.count, %for.end23 ]
  %a.1 = phi i32 [ %a.0, %for.cond10.for.end36_crit_edge ], [ %4, %for.end23 ], [ %a.263, %if.then25 ]
  %b.1 = phi i32 [ %b.0, %for.cond10.for.end36_crit_edge ], [ %6, %for.end23 ], [ %b.265, %if.then25 ]
  br label %for.cond38

for.cond38:                                       ; preds = %if.then55, %for.end36
  %indvars.iv53 = phi i64 [ %8, %if.then55 ], [ %.pre-phi, %for.end36 ]
  %8 = add nsw i64 %indvars.iv53, -1
  %9 = trunc nuw i64 %indvars.iv53 to i32
  %cmp39 = icmp sgt i32 %9, 0
  br i1 %cmp39, label %for.cond42, label %for.end66

for.cond42:                                       ; preds = %for.cond38, %for.body44
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.body44 ], [ %.pre-phi, %for.cond38 ]
  %cmp43 = icmp sgt i64 %indvars.iv50, 0
  br i1 %cmp43, label %for.body44, label %if.then55

for.body44:                                       ; preds = %for.cond42
  %indvars.iv.next51 = add nsw i64 %indvars.iv50, -1
  %arrayidx48 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @s, i64 0, i64 %8, i64 %indvars.iv.next51
  %10 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %cmp49 = icmp eq i32 %10, 0
  br i1 %cmp49, label %for.end66.loopexit, label %for.cond42, !llvm.loop !15

if.then55:                                        ; preds = %for.cond42
  %arrayidx57 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @s, i64 0, i64 %8
  %11 = load i32, ptr %arrayidx57, align 16, !tbaa !5
  %cmp59 = icmp eq i32 %11, 0
  br i1 %cmp59, label %for.end66, label %for.cond38, !llvm.loop !16

for.end66.loopexit:                               ; preds = %for.body44
  %12 = trunc i64 %8 to i32
  %13 = trunc nsw i64 %indvars.iv.next51 to i32
  br label %for.end66

for.end66:                                        ; preds = %if.then55, %for.cond38, %for.end66.loopexit
  %c.1 = phi i32 [ %12, %for.end66.loopexit ], [ undef, %for.cond38 ], [ undef, %if.then55 ]
  %d.1 = phi i32 [ %13, %for.end66.loopexit ], [ undef, %for.cond38 ], [ undef, %if.then55 ]
  %14 = xor i32 %b.1, -1
  %sub68 = add i32 %d.1, %14
  %15 = xor i32 %a.1, -1
  %sub70 = add i32 %c.1, %15
  %mul = mul nsw i32 %sub68, %sub70
  %call71 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
