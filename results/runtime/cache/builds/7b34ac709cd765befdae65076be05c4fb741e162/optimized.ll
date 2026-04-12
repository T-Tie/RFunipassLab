; ModuleID = '<stdin>'
source_filename = "/tmp/tmp5tv0o15x.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %N = alloca i32, align 4
  %k = alloca [50 x [50 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %N) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %N)
  %0 = load i32, ptr %N, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 10000, ptr noundef nonnull %k) #6
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %1 = phi i32 [ %.pre, %for.inc7 ], [ %0, %entry ]
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.inc7 ], [ 0, %entry ]
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv14, %2
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %smax26 = call i32 @llvm.smax.i32(i32 %1, i32 noundef 0)
  %wide.trip.count27 = zext nneg i32 %smax26 to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc7, label %for.inc

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [50 x [50 x i32]], ptr %k, i64 0, i64 %indvars.iv14, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %.pre = load i32, ptr %N, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc25
  %indvars.iv22 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next23, %for.inc25 ]
  %sum.0 = phi i32 [ 0, %for.cond10.preheader ], [ %sum.1, %for.inc25 ]
  %exitcond28.not = icmp eq i64 %indvars.iv22, %wide.trip.count27
  br i1 %exitcond28.not, label %for.end27, label %for.cond13

for.cond13:                                       ; preds = %for.cond10, %for.body15
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.body15 ], [ 0, %for.cond10 ]
  %sum.1 = phi i32 [ %spec.select, %for.body15 ], [ %sum.0, %for.cond10 ]
  %exitcond21.not = icmp eq i64 %indvars.iv17, %wide.trip.count
  br i1 %exitcond21.not, label %for.inc25, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [50 x [50 x i32]], ptr %k, i64 0, i64 %indvars.iv22, i64 %indvars.iv17
  %3 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !13
  %cmp20 = icmp eq i32 %3, 0
  %inc21 = zext i1 %cmp20 to i32
  %spec.select = add nsw i32 %sum.1, %inc21
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond13, !llvm.loop !14

for.inc25:                                        ; preds = %for.cond13
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond10, !llvm.loop !15

for.end27:                                        ; preds = %for.cond10
  %div = sdiv i32 %sum.0, 4
  %sub = add nsw i32 %div, -1
  %mul = mul nsw i32 %sub, %sub
  %call30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 10000, ptr noundef nonnull %k) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %N) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind willreturn }
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
