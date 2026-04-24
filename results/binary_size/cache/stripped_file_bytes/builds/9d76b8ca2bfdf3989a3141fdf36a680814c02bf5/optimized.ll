; ModuleID = '<stdin>'
source_filename = "/tmp/tmpetnd1fab.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = phi i32 [ %3, %for.inc7 ], [ %.pre, %entry ]
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.inc7 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv38, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %2 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.body3
  %3 = phi i32 [ %.pre59, %for.body3 ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %4 = sext i32 %3 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp2, label %for.body3, label %for.inc7

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv38, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre59 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc27
  %indvars.iv45 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next46, %for.inc27 ]
  %exitcond50.not = icmp eq i64 %indvars.iv45, %2
  br i1 %exitcond50.not, label %for.end29.loopexit32, label %for.cond13

for.cond13:                                       ; preds = %for.cond10, %for.inc21
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.inc21 ], [ 0, %for.cond10 ]
  %exitcond.not = icmp eq i64 %indvars.iv41, %wide.trip.count
  br i1 %exitcond.not, label %for.inc27, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv45, i64 %indvars.iv41
  %5 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %5, 0
  br i1 %cmp20, label %for.end29.loopexit, label %for.inc21

for.inc21:                                        ; preds = %for.body15
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond13, !llvm.loop !13

for.inc27:                                        ; preds = %for.cond13
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %for.cond10, !llvm.loop !14

for.end29.loopexit:                               ; preds = %for.body15
  %6 = trunc nuw nsw i64 %indvars.iv45 to i32
  %7 = trunc nuw nsw i64 %indvars.iv41 to i32
  %8 = xor i32 %7, -1
  br label %for.end29

for.end29.loopexit32:                             ; preds = %for.cond10
  %.pre60 = zext i32 %0 to i64
  br label %for.end29

for.end29:                                        ; preds = %for.end29.loopexit32, %for.end29.loopexit
  %.pre-phi = phi i64 [ %.pre60, %for.end29.loopexit32 ], [ %wide.trip.count, %for.end29.loopexit ]
  %i.136 = phi i32 [ %smax, %for.end29.loopexit32 ], [ %6, %for.end29.loopexit ]
  %j1.1 = phi i32 [ undef, %for.end29.loopexit32 ], [ %8, %for.end29.loopexit ]
  br label %for.cond30

for.cond30:                                       ; preds = %for.cond34, %for.end29
  %indvars.iv55 = phi i64 [ %.pre-phi, %for.end29 ], [ %9, %for.cond34 ]
  %9 = add nsw i64 %indvars.iv55, -1
  %10 = trunc nuw i64 %indvars.iv55 to i32
  %cmp31 = icmp sgt i32 %10, 0
  br i1 %cmp31, label %for.cond34, label %for.end51

for.cond34:                                       ; preds = %for.cond30, %for.body36
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.body36 ], [ %.pre-phi, %for.cond30 ]
  %cmp35 = icmp sgt i64 %indvars.iv52, 0
  br i1 %cmp35, label %for.body36, label %for.cond30, !llvm.loop !15

for.body36:                                       ; preds = %for.cond34
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, -1
  %arrayidx40 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %9, i64 %indvars.iv.next53
  %11 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %11, 0
  br i1 %cmp41, label %for.end51.loopexit, label %for.cond34, !llvm.loop !16

for.end51.loopexit:                               ; preds = %for.body36
  %12 = trunc i64 %9 to i32
  %13 = trunc nsw i64 %indvars.iv.next53 to i32
  br label %for.end51

for.end51:                                        ; preds = %for.cond30, %for.end51.loopexit
  %i2.1 = phi i32 [ %12, %for.end51.loopexit ], [ undef, %for.cond30 ]
  %j2.1 = phi i32 [ %13, %for.end51.loopexit ], [ undef, %for.cond30 ]
  %14 = xor i32 %i.136, -1
  %sub53 = add i32 %i2.1, %14
  %sub55 = add i32 %j2.1, %j1.1
  %mul = mul nsw i32 %sub55, %sub53
  %call56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
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
