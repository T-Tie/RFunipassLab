; ModuleID = '<stdin>'
source_filename = "/tmp/tmpu7l11tvx.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [1000 x [1000 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4000000, ptr noundef nonnull %a) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = phi i32 [ %4, %for.inc7 ], [ %.pre, %entry ]
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.inc7 ], [ 1, %entry ]
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv30, %1
  br i1 %cmp.not, label %for.cond10.preheader, label %for.cond1

for.cond10.preheader:                             ; preds = %for.cond
  %2 = add i32 %0, 1
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %narrow = add nuw i32 %smax, 1
  %3 = add nuw i32 %smax, 1
  %wide.trip.count41 = zext i32 %3 to i64
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %4 = phi i32 [ %.pre47, %for.inc ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.cond ]
  %5 = sext i32 %4 to i64
  %cmp2.not = icmp sgt i64 %indvars.iv, %5
  br i1 %cmp2.not, label %for.inc7, label %for.inc

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv30, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre47 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc27
  %indvars.iv37 = phi i64 [ 1, %for.cond10.preheader ], [ %indvars.iv.next38, %for.inc27 ]
  %exitcond42 = icmp eq i64 %indvars.iv37, %wide.trip.count41
  br i1 %exitcond42, label %for.end29, label %for.cond13

for.cond13:                                       ; preds = %for.cond10, %for.inc21
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.inc21 ], [ 1, %for.cond10 ]
  %exitcond = icmp eq i64 %indvars.iv33, %wide.trip.count
  br i1 %exitcond, label %for.inc27, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv37, i64 %indvars.iv33
  %6 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !13
  %cmp20 = icmp eq i32 %6, 0
  br i1 %cmp20, label %for.end29.loopexit, label %for.inc21

for.inc21:                                        ; preds = %for.body15
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond13, !llvm.loop !14

for.inc27:                                        ; preds = %for.cond13
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond10, !llvm.loop !15

for.end29.loopexit:                               ; preds = %for.body15
  %7 = trunc nuw nsw i64 %indvars.iv37 to i32
  %8 = trunc nuw nsw i64 %indvars.iv33 to i32
  %9 = xor i32 %8, -1
  br label %for.end29

for.end29:                                        ; preds = %for.cond10, %for.end29.loopexit
  %i.128 = phi i32 [ %7, %for.end29.loopexit ], [ %narrow, %for.cond10 ]
  %x1.1 = phi i32 [ %9, %for.end29.loopexit ], [ -1, %for.cond10 ]
  %10 = zext i32 %0 to i64
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc48, %for.end29
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.inc48 ], [ %10, %for.end29 ]
  %11 = trunc nuw i64 %indvars.iv44 to i32
  %cmp31 = icmp sgt i32 %11, 0
  br i1 %cmp31, label %for.cond33, label %for.end50

for.cond33:                                       ; preds = %for.cond30, %for.inc43
  %.sink2 = phi i32 [ %dec, %for.inc43 ], [ %0, %for.cond30 ]
  %cmp34 = icmp sgt i32 %.sink2, 0
  br i1 %cmp34, label %for.body35, label %for.inc48

for.body35:                                       ; preds = %for.cond33
  %idxprom38 = zext nneg i32 %.sink2 to i64
  %arrayidx39 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv44, i64 %idxprom38
  %12 = load i32, ptr %arrayidx39, align 4, !tbaa !5, !invariant.load !13
  %cmp40 = icmp eq i32 %12, 0
  br i1 %cmp40, label %for.end50, label %for.inc43

for.inc43:                                        ; preds = %for.body35
  %dec = add nsw i32 %.sink2, -1
  br label %for.cond33, !llvm.loop !16

for.inc48:                                        ; preds = %for.cond33
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, -1
  br label %for.cond30, !llvm.loop !17

for.end50:                                        ; preds = %for.cond30, %for.body35
  %x2.1 = phi i32 [ %.sink2, %for.body35 ], [ 0, %for.cond30 ]
  %sub51 = add nsw i32 %x2.1, %x1.1
  %13 = xor i32 %i.128, -1
  %sub53 = add i32 %11, %13
  %mul = mul nsw i32 %sub51, %sub53
  %call54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 4000000, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind }
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
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
