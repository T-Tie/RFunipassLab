; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_p2a6hv5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %sz = alloca [1000 x [1000 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 4000000, ptr nonnull %sz) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = phi i32 [ %2, %for.inc7 ], [ %.pre, %entry ]
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.inc7 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv22, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count33 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.body3
  %2 = phi i32 [ %.pre42, %for.body3 ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.body3, label %for.inc7

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %indvars.iv22, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre42 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc24
  %indvars.iv29 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next30, %for.inc24 ]
  %y1.0 = phi i32 [ undef, %for.cond10.preheader ], [ %y1.1, %for.inc24 ]
  %x1.0 = phi i32 [ undef, %for.cond10.preheader ], [ %x1.1, %for.inc24 ]
  %exitcond34.not = icmp eq i64 %indvars.iv29, %wide.trip.count33
  br i1 %exitcond34.not, label %for.cond27.preheader, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond10
  %4 = trunc nuw nsw i64 %indvars.iv29 to i32
  br label %for.cond13

for.cond27.preheader:                             ; preds = %for.cond10
  %5 = zext i32 %0 to i64
  br label %for.cond27.outer

for.cond27.outer:                                 ; preds = %for.inc43.split.loop.exit, %for.cond27.preheader
  %indvars.iv39.ph = phi i64 [ %indvars.iv.next40, %for.inc43.split.loop.exit ], [ %5, %for.cond27.preheader ]
  %x2.0.ph = phi i32 [ %10, %for.inc43.split.loop.exit ], [ undef, %for.cond27.preheader ]
  %y2.0.ph = phi i32 [ %indvars.le, %for.inc43.split.loop.exit ], [ undef, %for.cond27.preheader ]
  br label %for.cond27

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc21
  %indvars.iv25 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next26, %for.inc21 ]
  %exitcond.not = icmp eq i64 %indvars.iv25, %wide.trip.count
  br i1 %exitcond.not, label %for.inc24, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %indvars.iv29, i64 %indvars.iv25
  %6 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %6, 0
  br i1 %cmp20, label %for.inc24.split.loop.exit, label %for.inc21

for.inc21:                                        ; preds = %for.body15
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond13, !llvm.loop !13

for.inc24.split.loop.exit:                        ; preds = %for.body15
  %7 = trunc nuw nsw i64 %indvars.iv25 to i32
  br label %for.inc24

for.inc24:                                        ; preds = %for.cond13, %for.inc24.split.loop.exit
  %y1.1 = phi i32 [ %4, %for.inc24.split.loop.exit ], [ %y1.0, %for.cond13 ]
  %x1.1 = phi i32 [ %7, %for.inc24.split.loop.exit ], [ %x1.0, %for.cond13 ]
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond10, !llvm.loop !14

for.cond27:                                       ; preds = %for.cond31, %for.cond27.outer
  %indvars.iv39 = phi i64 [ %indvars.iv39.ph, %for.cond27.outer ], [ %indvars.iv.next40, %for.cond31 ]
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, -1
  %8 = trunc nuw i64 %indvars.iv39 to i32
  %cmp28 = icmp sgt i32 %8, 0
  br i1 %cmp28, label %for.cond31.preheader, label %for.end45

for.cond31.preheader:                             ; preds = %for.cond27
  %idxprom34 = and i64 %indvars.iv.next40, 4294967295
  br label %for.cond31

for.cond31:                                       ; preds = %for.cond31.preheader, %for.body33
  %indvars.iv36 = phi i64 [ %5, %for.cond31.preheader ], [ %indvars.iv.next37, %for.body33 ]
  %cmp32 = icmp sgt i64 %indvars.iv36, 0
  br i1 %cmp32, label %for.body33, label %for.cond27, !llvm.loop !15

for.body33:                                       ; preds = %for.cond31
  %indvars.iv.next37 = add nsw i64 %indvars.iv36, -1
  %arrayidx37 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %idxprom34, i64 %indvars.iv.next37
  %9 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %cmp38 = icmp eq i32 %9, 0
  br i1 %cmp38, label %for.inc43.split.loop.exit, label %for.cond31, !llvm.loop !16

for.inc43.split.loop.exit:                        ; preds = %for.body33
  %indvars.le = trunc i64 %indvars.iv.next40 to i32
  %10 = trunc nsw i64 %indvars.iv.next37 to i32
  br label %for.cond27.outer, !llvm.loop !15

for.end45:                                        ; preds = %for.cond27
  %sub46 = sub nsw i32 %x2.0.ph, %x1.0
  %11 = call i32 @llvm.abs.i32(i32 %sub46, i1 true)
  %sub47 = add nsw i32 %11, -1
  %sub48 = sub nsw i32 %y2.0.ph, %y1.0
  %12 = call i32 @llvm.abs.i32(i32 %sub48, i1 true)
  %sub49 = add nsw i32 %12, -1
  %mul = mul nsw i32 %sub49, %sub47
  %call50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 4000000, ptr nonnull %sz) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
