; ModuleID = '<stdin>'
source_filename = "/tmp/tmpiey70snn.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %s = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull %s) #5
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = phi i32 [ %4, %for.inc7 ], [ %.pre, %entry ]
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %for.inc7 ], [ 1, %entry ]
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv6, %1
  br i1 %cmp.not, label %for.cond10.preheader, label %for.cond1

for.cond10.preheader:                             ; preds = %for.cond
  %2 = add i32 %0, 1
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %3 = add nuw i32 %smax, 1
  %wide.trip.count17 = zext i32 %3 to i64
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %4 = phi i32 [ %.pre23, %for.inc ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.cond ]
  %5 = sext i32 %4 to i64
  %cmp2.not = icmp sgt i64 %indvars.iv, %5
  br i1 %cmp2.not, label %for.inc7, label %for.inc

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %s, i64 0, i64 %indvars.iv6, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre23 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc24
  %indvars.iv13 = phi i64 [ 1, %for.cond10.preheader ], [ %indvars.iv.next14, %for.inc24 ]
  %j1.0 = phi i32 [ undef, %for.cond10.preheader ], [ %j1.1, %for.inc24 ]
  %i1.0 = phi i32 [ undef, %for.cond10.preheader ], [ %i1.1, %for.inc24 ]
  %exitcond18 = icmp eq i64 %indvars.iv13, %wide.trip.count17
  br i1 %exitcond18, label %for.cond27.preheader, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond10
  %6 = trunc nuw nsw i64 %indvars.iv13 to i32
  br label %for.cond13

for.cond27.preheader:                             ; preds = %for.cond10
  %7 = zext i32 %0 to i64
  br label %for.cond27

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc21
  %indvars.iv9 = phi i64 [ 1, %for.cond13.preheader ], [ %indvars.iv.next10, %for.inc21 ]
  %exitcond = icmp eq i64 %indvars.iv9, %wide.trip.count
  br i1 %exitcond, label %for.inc24, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %s, i64 0, i64 %indvars.iv13, i64 %indvars.iv9
  %8 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %8, 0
  br i1 %cmp20, label %for.inc24.split.loop.exit, label %for.inc21

for.inc21:                                        ; preds = %for.body15
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %for.cond13, !llvm.loop !13

for.inc24.split.loop.exit:                        ; preds = %for.body15
  %9 = trunc nuw nsw i64 %indvars.iv9 to i32
  br label %for.inc24

for.inc24:                                        ; preds = %for.cond13, %for.inc24.split.loop.exit
  %j1.1 = phi i32 [ %9, %for.inc24.split.loop.exit ], [ %j1.0, %for.cond13 ]
  %i1.1 = phi i32 [ %6, %for.inc24.split.loop.exit ], [ %i1.0, %for.cond13 ]
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond10, !llvm.loop !14

for.cond27:                                       ; preds = %for.cond27.preheader, %for.inc42
  %indvars.iv20 = phi i64 [ %7, %for.cond27.preheader ], [ %indvars.iv.next21, %for.inc42 ]
  %i2.0 = phi i32 [ undef, %for.cond27.preheader ], [ %i2.1, %for.inc42 ]
  %j2.0 = phi i32 [ undef, %for.cond27.preheader ], [ %j2.1, %for.inc42 ]
  %10 = trunc nuw i64 %indvars.iv20 to i32
  %cmp28 = icmp sgt i32 %10, 0
  br i1 %cmp28, label %for.cond30, label %for.end44

for.cond30:                                       ; preds = %for.cond27, %for.inc40
  %11 = phi i32 [ %dec, %for.inc40 ], [ %0, %for.cond27 ]
  %cmp31 = icmp sgt i32 %11, 0
  br i1 %cmp31, label %for.body32, label %for.inc42

for.body32:                                       ; preds = %for.cond30
  %idxprom35 = zext nneg i32 %11 to i64
  %arrayidx36 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %s, i64 0, i64 %indvars.iv20, i64 %idxprom35
  %12 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %cmp37 = icmp eq i32 %12, 0
  br i1 %cmp37, label %for.inc42, label %for.inc40

for.inc40:                                        ; preds = %for.body32
  %dec = add nsw i32 %11, -1
  br label %for.cond30, !llvm.loop !15

for.inc42:                                        ; preds = %for.body32, %for.cond30
  %i2.1 = phi i32 [ %i2.0, %for.cond30 ], [ %10, %for.body32 ]
  %j2.1 = phi i32 [ %j2.0, %for.cond30 ], [ %11, %for.body32 ]
  %indvars.iv.next21 = add nsw i64 %indvars.iv20, -1
  br label %for.cond27, !llvm.loop !16

for.end44:                                        ; preds = %for.cond27
  %13 = xor i32 %j1.0, -1
  %sub45 = add i32 %j2.0, %13
  %14 = xor i32 %i2.0, -1
  %sub47 = add i32 %i1.0, %14
  %mul = mul nsw i32 %sub45, %sub47
  %call48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %s) #5
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
attributes #4 = { nofree nounwind willreturn }
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
