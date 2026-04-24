; ModuleID = '<stdin>'
source_filename = "/tmp/tmpk2d9fkjs.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %s = alloca [1000 x [1000 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 4000000, ptr nonnull %s) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp30 = icmp sgt i32 %0, 0
  br i1 %cmp30, label %for.cond1.preheader, label %for.end55

for.cond1.preheader:                              ; preds = %entry, %for.inc7
  %1 = phi i32 [ %9, %for.inc7 ], [ %0, %entry ]
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %for.inc7 ], [ 0, %entry ]
  %cmp228 = icmp sgt i32 %1, 0
  br i1 %cmp228, label %for.body3, label %for.cond1.preheader.for.inc7_crit_edge

for.cond1.preheader.for.inc7_crit_edge:           ; preds = %for.cond1.preheader
  %.pre = sext i32 %1 to i64
  br label %for.inc7

for.cond10.preheader:                             ; preds = %for.inc7
  %cmp1138 = icmp sgt i32 %9, 0
  br i1 %cmp1138, label %for.cond13.preheader.us.preheader, label %for.end55

for.cond13.preheader.us.preheader:                ; preds = %for.cond10.preheader
  %2 = zext nneg i32 %9 to i64
  %wide.trip.count = zext nneg i32 %9 to i64
  br label %for.cond13.preheader.us

for.cond13.preheader.us:                          ; preds = %for.cond13.preheader.us.preheader, %for.end23.us
  %indvars.iv73 = phi i64 [ 0, %for.cond13.preheader.us.preheader ], [ %indvars.iv.next74, %for.end23.us ]
  %b.041.us = phi i32 [ 0, %for.cond13.preheader.us.preheader ], [ %b.2.us, %for.end23.us ]
  %a.040.us = phi i32 [ 0, %for.cond13.preheader.us.preheader ], [ %a.2.us, %for.end23.us ]
  %3 = trunc nuw nsw i64 %indvars.iv73 to i32
  br label %for.body15.us

for.body15.us:                                    ; preds = %for.cond13.preheader.us, %for.inc21.us
  %indvars.iv70 = phi i64 [ 0, %for.cond13.preheader.us ], [ %indvars.iv.next71, %for.inc21.us ]
  %arrayidx19.us = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %s, i64 0, i64 %indvars.iv73, i64 %indvars.iv70
  %4 = load i32, ptr %arrayidx19.us, align 4, !tbaa !5
  %cmp20.us = icmp eq i32 %4, 0
  br i1 %cmp20.us, label %for.end23.us.split.loop.exit98, label %for.inc21.us

for.inc21.us:                                     ; preds = %for.body15.us
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count
  br i1 %exitcond.not, label %for.end23.us, label %for.body15.us, !llvm.loop !9

for.end23.us.split.loop.exit98:                   ; preds = %for.body15.us
  %5 = trunc nuw nsw i64 %indvars.iv70 to i32
  br label %for.end23.us

for.end23.us:                                     ; preds = %for.inc21.us, %for.end23.us.split.loop.exit98
  %a.2.us = phi i32 [ %3, %for.end23.us.split.loop.exit98 ], [ %a.040.us, %for.inc21.us ]
  %b.2.us = phi i32 [ %5, %for.end23.us.split.loop.exit98 ], [ %b.041.us, %for.inc21.us ]
  %idxprom24.us = zext nneg i32 %a.2.us to i64
  %idxprom26.us = zext nneg i32 %b.2.us to i64
  %arrayidx27.us = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %s, i64 0, i64 %idxprom24.us, i64 %idxprom26.us
  %6 = load i32, ptr %arrayidx27.us, align 4, !tbaa !5
  %cmp28.us = icmp ne i32 %6, 0
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  %cmp11.us = icmp samesign ult i64 %indvars.iv.next74, %2
  %or.cond = select i1 %cmp28.us, i1 %cmp11.us, i1 false
  br i1 %or.cond, label %for.cond13.preheader.us, label %for.end33, !llvm.loop !12

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %s, i64 0, i64 %indvars.iv67, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %8 = sext i32 %7 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %8
  br i1 %cmp2, label %for.body3, label %for.inc7, !llvm.loop !13

for.inc7:                                         ; preds = %for.body3, %for.cond1.preheader.for.inc7_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond1.preheader.for.inc7_crit_edge ], [ %8, %for.body3 ]
  %9 = phi i32 [ %1, %for.cond1.preheader.for.inc7_crit_edge ], [ %7, %for.body3 ]
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %cmp = icmp slt i64 %indvars.iv.next68, %.pre-phi
  br i1 %cmp, label %for.cond1.preheader, label %for.cond10.preheader, !llvm.loop !14

for.end33:                                        ; preds = %for.end23.us
  %10 = xor i32 %b.2.us, -1
  %11 = xor i32 %a.2.us, -1
  %wide.trip.count84 = zext nneg i32 %9 to i64
  br label %for.cond37.preheader.us

for.cond37.preheader.us:                          ; preds = %for.end33, %for.cond37.for.inc53_crit_edge.us
  %indvars.iv81 = phi i64 [ 0, %for.end33 ], [ %indvars.iv.next82, %for.cond37.for.inc53_crit_edge.us ]
  %d.059.us = phi i32 [ 0, %for.end33 ], [ %d.2.us, %for.cond37.for.inc53_crit_edge.us ]
  %c.058.us = phi i32 [ 0, %for.end33 ], [ %c.2.us, %for.cond37.for.inc53_crit_edge.us ]
  %12 = trunc nuw nsw i64 %indvars.iv81 to i32
  br label %for.body39.us

for.body39.us:                                    ; preds = %for.cond37.preheader.us, %for.body39.us
  %indvars.iv76 = phi i64 [ 0, %for.cond37.preheader.us ], [ %indvars.iv.next77, %for.body39.us ]
  %d.153.us = phi i32 [ %d.059.us, %for.cond37.preheader.us ], [ %d.2.us, %for.body39.us ]
  %c.152.us = phi i32 [ %c.058.us, %for.cond37.preheader.us ], [ %c.2.us, %for.body39.us ]
  %arrayidx43.us = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %s, i64 0, i64 %indvars.iv81, i64 %indvars.iv76
  %13 = load i32, ptr %arrayidx43.us, align 4, !tbaa !5
  %cmp44.us = icmp ne i32 %13, 0
  %14 = zext i32 %c.152.us to i64
  %cmp45.not.us = icmp samesign ult i64 %indvars.iv81, %14
  %or.cond.us = select i1 %cmp44.us, i1 true, i1 %cmp45.not.us
  %15 = zext i32 %d.153.us to i64
  %cmp47.not.us = icmp samesign ult i64 %indvars.iv76, %15
  %or.cond27.us = select i1 %or.cond.us, i1 true, i1 %cmp47.not.us
  %c.2.us = select i1 %or.cond27.us, i32 %c.152.us, i32 %12
  %16 = trunc nuw nsw i64 %indvars.iv76 to i32
  %d.2.us = select i1 %or.cond27.us, i32 %d.153.us, i32 %16
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count84
  br i1 %exitcond80.not, label %for.cond37.for.inc53_crit_edge.us, label %for.body39.us, !llvm.loop !16

for.cond37.for.inc53_crit_edge.us:                ; preds = %for.body39.us
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %for.end55, label %for.cond37.preheader.us, !llvm.loop !17

for.end55:                                        ; preds = %for.cond37.for.inc53_crit_edge.us, %entry, %for.cond10.preheader
  %b.195 = phi i32 [ -1, %for.cond10.preheader ], [ -1, %entry ], [ %10, %for.cond37.for.inc53_crit_edge.us ]
  %a.194 = phi i32 [ -1, %for.cond10.preheader ], [ -1, %entry ], [ %11, %for.cond37.for.inc53_crit_edge.us ]
  %c.0.lcssa = phi i32 [ 0, %for.cond10.preheader ], [ 0, %entry ], [ %c.2.us, %for.cond37.for.inc53_crit_edge.us ]
  %d.0.lcssa = phi i32 [ 0, %for.cond10.preheader ], [ 0, %entry ], [ %d.2.us, %for.cond37.for.inc53_crit_edge.us ]
  %sub56 = add i32 %d.0.lcssa, %b.195
  %sub58 = add i32 %c.0.lcssa, %a.194
  %mul = mul nsw i32 %sub56, %sub58
  %call59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 4000000, ptr nonnull %s) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
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
