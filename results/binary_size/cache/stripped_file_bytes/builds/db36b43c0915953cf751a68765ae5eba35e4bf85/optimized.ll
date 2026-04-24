; ModuleID = '<stdin>'
source_filename = "/tmp/tmph9_uh5pz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x = alloca [100 x [100 x i32]], align 16
  %a = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %x) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a)
  %0 = load i32, ptr %a, align 4, !tbaa !5
  %cmp26 = icmp sgt i32 %0, 0
  br i1 %cmp26, label %for.cond1.preheader, label %for.end45

for.cond1.preheader:                              ; preds = %entry, %for.inc7
  %1 = phi i32 [ %7, %for.inc7 ], [ %0, %entry ]
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %for.inc7 ], [ 0, %entry ]
  %cmp224 = icmp sgt i32 %1, 0
  br i1 %cmp224, label %for.body3, label %for.cond1.preheader.for.inc7_crit_edge

for.cond1.preheader.for.inc7_crit_edge:           ; preds = %for.cond1.preheader
  %.pre = sext i32 %1 to i64
  br label %for.inc7

for.cond10.preheader:                             ; preds = %for.inc7
  %cmp1134 = icmp sgt i32 %7, 0
  br i1 %cmp1134, label %for.cond13.preheader.us.preheader, label %for.end45

for.cond13.preheader.us.preheader:                ; preds = %for.cond10.preheader
  %wide.trip.count70 = zext nneg i32 %7 to i64
  br label %for.cond13.preheader.us

for.cond13.preheader.us:                          ; preds = %for.cond13.preheader.us.preheader, %for.cond13.for.inc24_crit_edge.us
  %indvars.iv67 = phi i64 [ 0, %for.cond13.preheader.us.preheader ], [ %indvars.iv.next68, %for.cond13.for.inc24_crit_edge.us ]
  %b1.036.us = phi i32 [ 0, %for.cond13.preheader.us.preheader ], [ %spec.select21.us, %for.cond13.for.inc24_crit_edge.us ]
  %a1.035.us = phi i32 [ 0, %for.cond13.preheader.us.preheader ], [ %spec.select.us, %for.cond13.for.inc24_crit_edge.us ]
  %2 = trunc nuw nsw i64 %indvars.iv67 to i32
  br label %for.body15.us

for.body15.us:                                    ; preds = %for.cond13.preheader.us, %for.body15.us
  %indvars.iv64 = phi i64 [ 0, %for.cond13.preheader.us ], [ %indvars.iv.next65, %for.body15.us ]
  %b1.131.us = phi i32 [ %b1.036.us, %for.cond13.preheader.us ], [ %spec.select21.us, %for.body15.us ]
  %a1.130.us = phi i32 [ %a1.035.us, %for.cond13.preheader.us ], [ %spec.select.us, %for.body15.us ]
  %arrayidx19.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %x, i64 0, i64 %indvars.iv67, i64 %indvars.iv64
  %3 = load i32, ptr %arrayidx19.us, align 4, !tbaa !5
  %cmp20.us = icmp eq i32 %3, 0
  %spec.select.us = select i1 %cmp20.us, i32 %2, i32 %a1.130.us
  %4 = trunc nuw nsw i64 %indvars.iv64 to i32
  %spec.select21.us = select i1 %cmp20.us, i32 %4, i32 %b1.131.us
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count70
  br i1 %exitcond.not, label %for.cond13.for.inc24_crit_edge.us, label %for.body15.us, !llvm.loop !9

for.cond13.for.inc24_crit_edge.us:                ; preds = %for.body15.us
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %for.cond31.preheader.us.preheader, label %for.cond13.preheader.us, !llvm.loop !12

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %x, i64 0, i64 %indvars.iv61, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %a, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp2, label %for.body3, label %for.inc7, !llvm.loop !13

for.inc7:                                         ; preds = %for.body3, %for.cond1.preheader.for.inc7_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond1.preheader.for.inc7_crit_edge ], [ %6, %for.body3 ]
  %7 = phi i32 [ %1, %for.cond1.preheader.for.inc7_crit_edge ], [ %5, %for.body3 ]
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %cmp = icmp slt i64 %indvars.iv.next62, %.pre-phi
  br i1 %cmp, label %for.cond1.preheader, label %for.cond10.preheader, !llvm.loop !14

for.cond31.preheader.us.preheader:                ; preds = %for.cond13.for.inc24_crit_edge.us
  %8 = zext nneg i32 %7 to i64
  br label %for.cond31.preheader.us

for.cond31.preheader.us:                          ; preds = %for.cond31.preheader.us.preheader, %for.cond31.for.cond27.loopexit_crit_edge.us
  %indvars.iv75 = phi i64 [ %8, %for.cond31.preheader.us.preheader ], [ %indvars.iv.next76, %for.cond31.for.cond27.loopexit_crit_edge.us ]
  %b2.051.us = phi i32 [ 0, %for.cond31.preheader.us.preheader ], [ %spec.select23.us, %for.cond31.for.cond27.loopexit_crit_edge.us ]
  %a2.050.us = phi i32 [ 0, %for.cond31.preheader.us.preheader ], [ %spec.select22.us, %for.cond31.for.cond27.loopexit_crit_edge.us ]
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, -1
  %9 = trunc nuw nsw i64 %indvars.iv.next76 to i32
  br label %for.body33.us

for.body33.us:                                    ; preds = %for.cond31.preheader.us, %for.body33.us
  %indvars.iv72 = phi i64 [ %8, %for.cond31.preheader.us ], [ %indvars.iv.next73, %for.body33.us ]
  %b2.145.us = phi i32 [ %b2.051.us, %for.cond31.preheader.us ], [ %spec.select23.us, %for.body33.us ]
  %a2.144.us = phi i32 [ %a2.050.us, %for.cond31.preheader.us ], [ %spec.select22.us, %for.body33.us ]
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, -1
  %arrayidx37.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %x, i64 0, i64 %indvars.iv.next76, i64 %indvars.iv.next73
  %10 = load i32, ptr %arrayidx37.us, align 4, !tbaa !5
  %cmp38.us = icmp eq i32 %10, 0
  %spec.select22.us = select i1 %cmp38.us, i32 %9, i32 %a2.144.us
  %11 = trunc nuw nsw i64 %indvars.iv.next73 to i32
  %spec.select23.us = select i1 %cmp38.us, i32 %11, i32 %b2.145.us
  %cmp32.us = icmp sgt i64 %indvars.iv72, 1
  br i1 %cmp32.us, label %for.body33.us, label %for.cond31.for.cond27.loopexit_crit_edge.us, !llvm.loop !16

for.cond31.for.cond27.loopexit_crit_edge.us:      ; preds = %for.body33.us
  %cmp28.us = icmp samesign ugt i64 %indvars.iv75, 1
  br i1 %cmp28.us, label %for.cond31.preheader.us, label %for.end45, !llvm.loop !17

for.end45:                                        ; preds = %for.cond31.for.cond27.loopexit_crit_edge.us, %entry, %for.cond10.preheader
  %b1.0.lcssa87 = phi i32 [ 0, %for.cond10.preheader ], [ 0, %entry ], [ %spec.select21.us, %for.cond31.for.cond27.loopexit_crit_edge.us ]
  %a1.0.lcssa86 = phi i32 [ 0, %for.cond10.preheader ], [ 0, %entry ], [ %spec.select.us, %for.cond31.for.cond27.loopexit_crit_edge.us ]
  %a2.0.lcssa = phi i32 [ 0, %for.cond10.preheader ], [ 0, %entry ], [ %spec.select22.us, %for.cond31.for.cond27.loopexit_crit_edge.us ]
  %b2.0.lcssa = phi i32 [ 0, %for.cond10.preheader ], [ 0, %entry ], [ %spec.select23.us, %for.cond31.for.cond27.loopexit_crit_edge.us ]
  %reass.sub = sub i32 %b2.0.lcssa, %b1.0.lcssa87
  %add = add i32 %reass.sub, 1
  %reass.sub57 = sub i32 %a2.0.lcssa, %a1.0.lcssa86
  %add48 = add i32 %reass.sub57, 1
  %mul = mul nsw i32 %add, %add48
  %call49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %x) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!14 = distinct !{!14, !10, !11, !15}
!15 = !{!"llvm.loop.unswitch.partial.disable"}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
