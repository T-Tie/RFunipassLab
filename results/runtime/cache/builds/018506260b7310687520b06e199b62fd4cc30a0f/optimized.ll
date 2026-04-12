; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxrqcu137.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@zl = dso_local global [1000 x [1000 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.inc7 ], [ 0, %entry ]
  %j.0 = phi i32 [ %4, %for.inc7 ], [ undef, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv26, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %sub = add nsw i32 %0, -1
  %smax = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %wide.trip.count35 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %sub to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.body3
  %2 = phi i32 [ %.pre45, %for.body3 ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.body3, label %for.inc7

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @zl, i64 0, i64 %indvars.iv26, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre45 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %4 = trunc nuw nsw i64 %indvars.iv to i32
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc32
  %indvars.iv32 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next33, %for.inc32 ]
  %j.2 = phi i32 [ %j.0, %for.cond10.preheader ], [ %j.4.lcssa, %for.inc32 ]
  %exitcond36.not = icmp eq i64 %indvars.iv32, %wide.trip.count35
  br i1 %exitcond36.not, label %for.end34, label %for.cond13

for.cond13:                                       ; preds = %for.cond10, %for.inc22
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.inc22 ], [ 0, %for.cond10 ]
  %exitcond.not = icmp eq i64 %indvars.iv29, %wide.trip.count
  br i1 %exitcond.not, label %for.end24, label %for.body16

for.body16:                                       ; preds = %for.cond13
  %arrayidx20 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @zl, i64 0, i64 %indvars.iv32, i64 %indvars.iv29
  %5 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %cmp21 = icmp eq i32 %5, 0
  br i1 %cmp21, label %for.body16.for.end24_crit_edge, label %for.inc22

for.body16.for.end24_crit_edge:                   ; preds = %for.body16
  %6 = trunc nuw nsw i64 %indvars.iv29 to i32
  %.pre46 = and i64 %indvars.iv29, 4294967295
  br label %for.end24

for.inc22:                                        ; preds = %for.body16
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond13, !llvm.loop !13

for.end24:                                        ; preds = %for.cond13, %for.body16.for.end24_crit_edge
  %idxprom27.pre-phi = phi i64 [ %.pre46, %for.body16.for.end24_crit_edge ], [ %wide.trip.count, %for.cond13 ]
  %j.4.lcssa = phi i32 [ %6, %for.body16.for.end24_crit_edge ], [ %sub, %for.cond13 ]
  %arrayidx28 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @zl, i64 0, i64 %indvars.iv32, i64 %idxprom27.pre-phi
  %7 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %7, 0
  br i1 %cmp29, label %for.end34.split.loop.exit, label %for.inc32

for.inc32:                                        ; preds = %for.end24
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond10, !llvm.loop !14

for.end34.split.loop.exit:                        ; preds = %for.end24
  %8 = trunc nuw nsw i64 %indvars.iv32 to i32
  br label %for.end34

for.end34:                                        ; preds = %for.cond10, %for.end34.split.loop.exit
  %i.1.lcssa = phi i32 [ %8, %for.end34.split.loop.exit ], [ %smax, %for.cond10 ]
  %j.3 = phi i32 [ %j.4.lcssa, %for.end34.split.loop.exit ], [ %j.2, %for.cond10 ]
  %9 = zext i32 %0 to i64
  %smin = call i32 @llvm.smin.i32(i32 %0, i32 1)
  %10 = add i32 %smin, -1
  br label %for.cond36

for.cond36:                                       ; preds = %for.end51, %for.end34
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.end51 ], [ %9, %for.end34 ]
  %j.5 = phi i32 [ %j.7.lcssa, %for.end51 ], [ %j.3, %for.end34 ]
  %indvars.iv.next42 = add nsw i64 %indvars.iv41, -1
  %11 = trunc nuw i64 %indvars.iv41 to i32
  %cmp37 = icmp sgt i32 %11, 1
  br i1 %cmp37, label %for.cond40.preheader, label %for.end61

for.cond40.preheader:                             ; preds = %for.cond36
  %idxprom43 = and i64 %indvars.iv.next42, 4294967295
  br label %for.cond40

for.cond40:                                       ; preds = %for.cond40.preheader, %for.body42
  %indvars.iv38 = phi i64 [ %9, %for.cond40.preheader ], [ %indvars.iv.next39, %for.body42 ]
  %cmp41 = icmp sgt i64 %indvars.iv38, 1
  br i1 %cmp41, label %for.body42, label %for.end51

for.body42:                                       ; preds = %for.cond40
  %indvars.iv.next39 = add nsw i64 %indvars.iv38, -1
  %arrayidx46 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @zl, i64 0, i64 %idxprom43, i64 %indvars.iv.next39
  %12 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %cmp47 = icmp eq i32 %12, 0
  br i1 %cmp47, label %for.end51.split.loop.exit, label %for.cond40, !llvm.loop !15

for.end51.split.loop.exit:                        ; preds = %for.body42
  %13 = trunc nuw nsw i64 %indvars.iv.next39 to i32
  br label %for.end51

for.end51:                                        ; preds = %for.cond40, %for.end51.split.loop.exit
  %j.7.lcssa = phi i32 [ %13, %for.end51.split.loop.exit ], [ 0, %for.cond40 ]
  %idxprom54 = sext i32 %j.7.lcssa to i64
  %arrayidx55 = getelementptr inbounds [1000 x [1000 x i32]], ptr @zl, i64 0, i64 %idxprom43, i64 %idxprom54
  %14 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  %cmp56 = icmp eq i32 %14, 0
  br i1 %cmp56, label %for.end61.split.loop.exit, label %for.cond36, !llvm.loop !16

for.end61.split.loop.exit:                        ; preds = %for.end51
  %indvars.le = trunc i64 %indvars.iv.next42 to i32
  br label %for.end61

for.end61:                                        ; preds = %for.cond36, %for.end61.split.loop.exit
  %i.2.lcssa = phi i32 [ %indvars.le, %for.end61.split.loop.exit ], [ %10, %for.cond36 ]
  %j.6 = phi i32 [ %j.7.lcssa, %for.end61.split.loop.exit ], [ %j.5, %for.cond36 ]
  %15 = xor i32 %i.1.lcssa, -1
  %sub63 = add i32 %i.2.lcssa, %15
  %16 = xor i32 %j.3, -1
  %sub65 = add i32 %j.6, %16
  %mul = mul nsw i32 %sub65, %sub63
  %call66 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %mul)
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

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
