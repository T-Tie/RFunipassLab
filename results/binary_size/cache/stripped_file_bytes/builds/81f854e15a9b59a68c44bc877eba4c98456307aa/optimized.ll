; ModuleID = '<stdin>'
source_filename = "/tmp/tmpetnd1fab.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = phi i32 [ %3, %for.inc7 ], [ %.pre, %entry ]
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.inc7 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv29, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %2 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %3 = phi i32 [ %.pre42, %for.inc ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %4 = sext i32 %3 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv29, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre42 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc27
  %indvars.iv36 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next37, %for.inc27 ]
  %exitcond41.not = icmp eq i64 %indvars.iv36, %2
  br i1 %exitcond41.not, label %for.end29, label %for.cond13

for.cond13:                                       ; preds = %for.cond10, %for.inc21
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.inc21 ], [ 0, %for.cond10 ]
  %exitcond.not = icmp eq i64 %indvars.iv32, %wide.trip.count
  br i1 %exitcond.not, label %for.inc27, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv36, i64 %indvars.iv32
  %5 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !13
  %cmp20 = icmp eq i32 %5, 0
  br i1 %cmp20, label %for.end29.loopexit, label %for.inc21

for.inc21:                                        ; preds = %for.body15
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond13, !llvm.loop !14

for.inc27:                                        ; preds = %for.cond13
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond10, !llvm.loop !15

for.end29.loopexit:                               ; preds = %for.body15
  %6 = trunc nuw nsw i64 %indvars.iv36 to i32
  %7 = trunc nuw nsw i64 %indvars.iv32 to i32
  %8 = xor i32 %7, -1
  br label %for.end29

for.end29:                                        ; preds = %for.cond10, %for.end29.loopexit
  %i.127 = phi i32 [ %6, %for.end29.loopexit ], [ %smax, %for.cond10 ]
  %j1.0 = phi i32 [ %8, %for.end29.loopexit ], [ undef, %for.cond10 ]
  %sub = add i32 %0, -1
  %smin = call i32 @llvm.smin.i32(i32 %sub, i32 noundef -1)
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc49, %for.end29
  %sub.sink = phi i32 [ %sub, %for.end29 ], [ %dec50, %for.inc49 ]
  %cmp31 = icmp sgt i32 %sub.sink, -1
  br i1 %cmp31, label %for.cond34.preheader, label %for.end51

for.cond34.preheader:                             ; preds = %for.cond30
  %idxprom37 = zext nneg i32 %sub.sink to i64
  br label %for.cond34

for.cond34:                                       ; preds = %for.cond34.preheader, %for.inc44
  %sub.sink4 = phi i32 [ %dec, %for.inc44 ], [ %sub, %for.cond34.preheader ]
  %cmp35 = icmp sgt i32 %sub.sink4, -1
  br i1 %cmp35, label %for.body36, label %for.inc49

for.body36:                                       ; preds = %for.cond34
  %idxprom39 = zext nneg i32 %sub.sink4 to i64
  %arrayidx40 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom37, i64 %idxprom39
  %9 = load i32, ptr %arrayidx40, align 4, !tbaa !5, !invariant.load !13
  %cmp41 = icmp eq i32 %9, 0
  br i1 %cmp41, label %for.end51, label %for.inc44

for.inc44:                                        ; preds = %for.body36
  %dec = add nsw i32 %sub.sink4, -1
  br label %for.cond34, !llvm.loop !16

for.inc49:                                        ; preds = %for.cond34
  %dec50 = add nsw i32 %sub.sink, -1
  br label %for.cond30, !llvm.loop !17

for.end51:                                        ; preds = %for.cond30, %for.body36
  %sub.sink24 = phi i32 [ %sub.sink, %for.body36 ], [ %smin, %for.cond30 ]
  %j2.0 = phi i32 [ %sub.sink4, %for.body36 ], [ undef, %for.cond30 ]
  %10 = xor i32 %i.127, -1
  %sub53 = add i32 %sub.sink24, %10
  %sub55 = add i32 %j2.0, %j1.0
  %mul = mul nsw i32 %sub55, %sub53
  %call56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul) #6
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
