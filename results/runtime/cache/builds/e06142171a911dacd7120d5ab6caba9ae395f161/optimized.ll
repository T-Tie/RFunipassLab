; ModuleID = '<stdin>'
source_filename = "/tmp/tmpzqh_pek9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %p = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull %p) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = phi i32 [ %2, %for.inc7 ], [ %.pre, %entry ]
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.inc7 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv28, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 1)
  %wide.trip.count40 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %2 = phi i32 [ %.pre54, %for.inc ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %p, i64 0, i64 %indvars.iv28, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre54 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc29
  %indvars.iv35 = phi i64 [ 1, %for.cond10.preheader ], [ %indvars.iv.next36, %for.inc29 ]
  %row.0 = phi i32 [ 0, %for.cond10.preheader ], [ %row.1, %for.inc29 ]
  %exitcond41.not = icmp eq i64 %indvars.iv35, %wide.trip.count40
  br i1 %exitcond41.not, label %for.cond32.preheader, label %for.cond13.preheader

for.cond32.preheader:                             ; preds = %for.cond10
  br label %for.cond32

for.cond13.preheader:                             ; preds = %for.cond10
  %4 = add nsw i64 %indvars.iv35, -1
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc26
  %indvars.iv31 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next32, %for.inc26 ]
  %row.1 = phi i32 [ %row.0, %for.cond13.preheader ], [ %row.2, %for.inc26 ]
  %exitcond.not = icmp eq i64 %indvars.iv31, %wide.trip.count
  br i1 %exitcond.not, label %for.inc29, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %p, i64 0, i64 %indvars.iv35, i64 %indvars.iv31
  %5 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !13
  %cmp20 = icmp eq i32 %5, 0
  br i1 %cmp20, label %land.lhs.true, label %for.inc26

land.lhs.true:                                    ; preds = %for.body15
  %arrayidx24 = getelementptr inbounds [100 x [100 x i32]], ptr %p, i64 0, i64 %4, i64 %indvars.iv31
  %6 = load i32, ptr %arrayidx24, align 4, !tbaa !5, !invariant.load !13
  %cmp25 = icmp eq i32 %6, 0
  %add = zext i1 %cmp25 to i32
  %spec.select = add nsw i32 %row.1, %add
  br label %for.inc26

for.inc26:                                        ; preds = %land.lhs.true, %for.body15
  %row.2 = phi i32 [ %row.1, %for.body15 ], [ %spec.select, %land.lhs.true ]
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond13, !llvm.loop !14

for.inc29:                                        ; preds = %for.cond13
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond10, !llvm.loop !15

for.cond32:                                       ; preds = %for.cond32.preheader, %for.inc56
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.inc56 ], [ 1, %for.cond32.preheader ]
  %line.0 = phi i32 [ %line.1, %for.inc56 ], [ 0, %for.cond32.preheader ]
  %exitcond53.not = icmp eq i64 %indvars.iv48, %wide.trip.count40
  br i1 %exitcond53.not, label %for.end58, label %for.cond35.preheader

for.cond35.preheader:                             ; preds = %for.cond32
  %7 = add nsw i64 %indvars.iv48, -1
  br label %for.cond35

for.cond35:                                       ; preds = %for.cond35.preheader, %for.inc53
  %indvars.iv42 = phi i64 [ 0, %for.cond35.preheader ], [ %indvars.iv.next43, %for.inc53 ]
  %line.1 = phi i32 [ %line.0, %for.cond35.preheader ], [ %line.2, %for.inc53 ]
  %exitcond47.not = icmp eq i64 %indvars.iv42, %wide.trip.count
  br i1 %exitcond47.not, label %for.inc56, label %for.body37

for.body37:                                       ; preds = %for.cond35
  %arrayidx41 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %p, i64 0, i64 %indvars.iv42, i64 %indvars.iv48
  %8 = load i32, ptr %arrayidx41, align 4, !tbaa !5, !invariant.load !13
  %cmp42 = icmp eq i32 %8, 0
  br i1 %cmp42, label %land.lhs.true43, label %for.inc53

land.lhs.true43:                                  ; preds = %for.body37
  %arrayidx48 = getelementptr inbounds [100 x [100 x i32]], ptr %p, i64 0, i64 %indvars.iv42, i64 %7
  %9 = load i32, ptr %arrayidx48, align 4, !tbaa !5, !invariant.load !13
  %cmp49 = icmp eq i32 %9, 0
  %add51 = zext i1 %cmp49 to i32
  %spec.select26 = add nsw i32 %line.1, %add51
  br label %for.inc53

for.inc53:                                        ; preds = %land.lhs.true43, %for.body37
  %line.2 = phi i32 [ %line.1, %for.body37 ], [ %spec.select26, %land.lhs.true43 ]
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond35, !llvm.loop !16

for.inc56:                                        ; preds = %for.cond35
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond32, !llvm.loop !17

for.end58:                                        ; preds = %for.cond32
  %div = sdiv i32 %line.0, 2
  %sub59 = add nsw i32 %div, -1
  %div60 = sdiv i32 %row.0, 2
  %sub61 = add nsw i32 %div60, -1
  %mul = mul nsw i32 %sub59, %sub61
  %call62 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %p) #5
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
