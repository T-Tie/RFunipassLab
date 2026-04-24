; ModuleID = '<stdin>'
source_filename = "/tmp/tmpypoyj9o_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [100 x [100 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %s) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = phi i32 [ %2, %for.inc7 ], [ %.pre, %entry ]
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.inc7 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv35, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count46 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.body3
  %2 = phi i32 [ %.pre55, %for.body3 ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.body3, label %for.inc7

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %s, i64 0, i64 %indvars.iv35, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre55 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc27
  %indvars.iv42 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next43, %for.inc27 ]
  %exitcond47.not = icmp eq i64 %indvars.iv42, %wide.trip.count46
  br i1 %exitcond47.not, label %for.end29.loopexit31, label %for.cond13

for.cond13:                                       ; preds = %for.cond10, %for.inc21
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.inc21 ], [ 0, %for.cond10 ]
  %exitcond.not = icmp eq i64 %indvars.iv38, %wide.trip.count
  br i1 %exitcond.not, label %for.inc27, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %s, i64 0, i64 %indvars.iv42, i64 %indvars.iv38
  %4 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %4, 0
  br i1 %cmp20, label %for.end29.loopexit, label %for.inc21

for.inc21:                                        ; preds = %for.body15
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond13, !llvm.loop !13

for.inc27:                                        ; preds = %for.cond13
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond10, !llvm.loop !14

for.end29.loopexit:                               ; preds = %for.body15
  %5 = trunc nuw nsw i64 %indvars.iv42 to i32
  %6 = trunc nuw nsw i64 %indvars.iv38 to i32
  %7 = xor i32 %5, -1
  %8 = xor i32 %6, -1
  br label %for.end29

for.end29.loopexit31:                             ; preds = %for.cond10
  %.pre56 = zext i32 %0 to i64
  br label %for.end29

for.end29:                                        ; preds = %for.end29.loopexit31, %for.end29.loopexit
  %.pre-phi = phi i64 [ %.pre56, %for.end29.loopexit31 ], [ %wide.trip.count, %for.end29.loopexit ]
  %a.1 = phi i32 [ 0, %for.end29.loopexit31 ], [ %7, %for.end29.loopexit ]
  %b.1 = phi i32 [ 0, %for.end29.loopexit31 ], [ %8, %for.end29.loopexit ]
  br label %for.cond30

for.cond30:                                       ; preds = %for.end45, %for.end29
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.end45 ], [ %.pre-phi, %for.end29 ]
  %d.0 = phi i32 [ %d.2, %for.end45 ], [ -1, %for.end29 ]
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, -1
  %indvars = trunc i64 %indvars.iv.next53 to i32
  %9 = trunc nuw i64 %indvars.iv52 to i32
  %cmp31 = icmp sgt i32 %9, 0
  br i1 %cmp31, label %for.cond34.preheader, label %for.end51

for.cond34.preheader:                             ; preds = %for.cond30
  %idxprom37 = and i64 %indvars.iv.next53, 4294967295
  br label %for.cond34

for.cond34:                                       ; preds = %for.cond34.preheader, %for.body36
  %indvars.iv49 = phi i64 [ %.pre-phi, %for.cond34.preheader ], [ %indvars.iv.next50, %for.body36 ]
  %cmp35 = icmp sgt i64 %indvars.iv49, 0
  br i1 %cmp35, label %for.body36, label %for.end45

for.body36:                                       ; preds = %for.cond34
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, -1
  %arrayidx40 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %s, i64 0, i64 %idxprom37, i64 %indvars.iv.next50
  %10 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %10, 0
  br i1 %cmp41, label %for.end45.split.loop.exit, label %for.cond34, !llvm.loop !15

for.end45.split.loop.exit:                        ; preds = %for.body36
  %11 = trunc nsw i64 %indvars.iv.next50 to i32
  br label %for.end45

for.end45:                                        ; preds = %for.cond34, %for.end45.split.loop.exit
  %c.2 = phi i32 [ %indvars, %for.end45.split.loop.exit ], [ -1, %for.cond34 ]
  %d.2 = phi i32 [ %11, %for.end45.split.loop.exit ], [ %d.0, %for.cond34 ]
  %cmp46 = icmp sgt i32 %c.2, -1
  br i1 %cmp46, label %for.end51, label %for.cond30, !llvm.loop !16

for.end51:                                        ; preds = %for.end45, %for.cond30
  %c.1 = phi i32 [ %c.2, %for.end45 ], [ -1, %for.cond30 ]
  %d.1 = phi i32 [ %d.2, %for.end45 ], [ %d.0, %for.cond30 ]
  %sub53 = add i32 %c.1, %a.1
  %sub55 = add i32 %d.1, %b.1
  %mul = mul nsw i32 %sub55, %sub53
  %call56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %s) #5
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
