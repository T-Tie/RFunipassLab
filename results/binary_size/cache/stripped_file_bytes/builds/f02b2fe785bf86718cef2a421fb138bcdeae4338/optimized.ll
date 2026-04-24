; ModuleID = '<stdin>'
source_filename = "/tmp/tmpbw6p50kw.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %sz = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %sz) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp32 = icmp sgt i32 %0, 0
  br i1 %cmp32, label %for.cond1.preheader, label %for.cond10.preheader.for.end29_crit_edge

for.cond1.preheader:                              ; preds = %entry, %for.inc7
  %1 = phi i32 [ %5, %for.inc7 ], [ %0, %entry ]
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.inc7 ], [ 0, %entry ]
  %cmp230 = icmp sgt i32 %1, 0
  br i1 %cmp230, label %for.body3, label %for.cond1.preheader.for.inc7_crit_edge

for.cond1.preheader.for.inc7_crit_edge:           ; preds = %for.cond1.preheader
  %.pre = sext i32 %1 to i64
  br label %for.inc7

for.cond10.preheader:                             ; preds = %for.inc7
  %cmp1136 = icmp sgt i32 %5, 0
  br i1 %cmp1136, label %for.cond13.preheader.us.preheader, label %for.cond10.preheader.for.end29_crit_edge

for.cond10.preheader.for.end29_crit_edge:         ; preds = %entry, %for.cond10.preheader
  %.lcssa67 = phi i32 [ %5, %for.cond10.preheader ], [ %0, %entry ]
  %.pre63 = zext i32 %.lcssa67 to i64
  br label %for.end29

for.cond13.preheader.us.preheader:                ; preds = %for.cond10.preheader
  %wide.trip.count55 = zext nneg i32 %5 to i64
  br label %for.cond13.preheader.us

for.cond13.preheader.us:                          ; preds = %for.cond13.preheader.us.preheader, %for.cond13.for.inc27_crit_edge.us
  %indvars.iv52 = phi i64 [ 0, %for.cond13.preheader.us.preheader ], [ %indvars.iv.next53, %for.cond13.for.inc27_crit_edge.us ]
  br label %for.body15.us

for.body15.us:                                    ; preds = %for.cond13.preheader.us, %for.inc21.us
  %indvars.iv49 = phi i64 [ 0, %for.cond13.preheader.us ], [ %indvars.iv.next50, %for.inc21.us ]
  %arrayidx19.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %sz, i64 0, i64 %indvars.iv52, i64 %indvars.iv49
  %2 = load i32, ptr %arrayidx19.us, align 4, !tbaa !5
  %cmp20.us = icmp eq i32 %2, 0
  br i1 %cmp20.us, label %for.end29.loopexit, label %for.inc21.us

for.inc21.us:                                     ; preds = %for.body15.us
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count55
  br i1 %exitcond.not, label %for.cond13.for.inc27_crit_edge.us, label %for.body15.us, !llvm.loop !9

for.cond13.for.inc27_crit_edge.us:                ; preds = %for.inc21.us
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %for.end29, label %for.cond13.preheader.us, !llvm.loop !12

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %sz, i64 0, i64 %indvars.iv46, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp2, label %for.body3, label %for.inc7, !llvm.loop !13

for.inc7:                                         ; preds = %for.body3, %for.cond1.preheader.for.inc7_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond1.preheader.for.inc7_crit_edge ], [ %4, %for.body3 ]
  %5 = phi i32 [ %1, %for.cond1.preheader.for.inc7_crit_edge ], [ %3, %for.body3 ]
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %cmp = icmp slt i64 %indvars.iv.next47, %.pre-phi
  br i1 %cmp, label %for.cond1.preheader, label %for.cond10.preheader, !llvm.loop !14

for.end29.loopexit:                               ; preds = %for.body15.us
  %6 = trunc nuw nsw i64 %indvars.iv52 to i32
  %7 = trunc nuw nsw i64 %indvars.iv49 to i32
  %8 = xor i32 %6, -1
  %9 = xor i32 %7, -1
  br label %for.end29

for.end29:                                        ; preds = %for.cond13.for.inc27_crit_edge.us, %for.cond10.preheader.for.end29_crit_edge, %for.end29.loopexit
  %.pre-phi64 = phi i64 [ %.pre63, %for.cond10.preheader.for.end29_crit_edge ], [ %wide.trip.count55, %for.end29.loopexit ], [ %wide.trip.count55, %for.cond13.for.inc27_crit_edge.us ]
  %x1.1 = phi i32 [ 0, %for.cond10.preheader.for.end29_crit_edge ], [ %8, %for.end29.loopexit ], [ 0, %for.cond13.for.inc27_crit_edge.us ]
  %y1.1 = phi i32 [ undef, %for.cond10.preheader.for.end29_crit_edge ], [ %9, %for.end29.loopexit ], [ undef, %for.cond13.for.inc27_crit_edge.us ]
  br label %for.cond30

for.cond30:                                       ; preds = %for.end45, %for.end29
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.end45 ], [ %.pre-phi64, %for.end29 ]
  %y2.0 = phi i32 [ %y2.2, %for.end45 ], [ undef, %for.end29 ]
  %indvars.iv.next61 = add nsw i64 %indvars.iv60, -1
  %indvars = trunc i64 %indvars.iv.next61 to i32
  %10 = trunc nuw i64 %indvars.iv60 to i32
  %cmp31 = icmp sgt i32 %10, 0
  br i1 %cmp31, label %for.cond34.preheader, label %for.end51

for.cond34.preheader:                             ; preds = %for.cond30
  %idxprom37 = and i64 %indvars.iv.next61, 4294967295
  br label %for.cond34

for.cond34:                                       ; preds = %for.cond34.preheader, %for.body36
  %indvars.iv57 = phi i64 [ %.pre-phi64, %for.cond34.preheader ], [ %indvars.iv.next58, %for.body36 ]
  %cmp35 = icmp sgt i64 %indvars.iv57, 0
  br i1 %cmp35, label %for.body36, label %for.end45

for.body36:                                       ; preds = %for.cond34
  %indvars.iv.next58 = add nsw i64 %indvars.iv57, -1
  %arrayidx40 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %sz, i64 0, i64 %idxprom37, i64 %indvars.iv.next58
  %11 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %11, 0
  br i1 %cmp41, label %for.end45.split.loop.exit, label %for.cond34, !llvm.loop !16

for.end45.split.loop.exit:                        ; preds = %for.body36
  %12 = trunc nsw i64 %indvars.iv.next58 to i32
  br label %for.end45

for.end45:                                        ; preds = %for.cond34, %for.end45.split.loop.exit
  %x2.2 = phi i32 [ %indvars, %for.end45.split.loop.exit ], [ -1, %for.cond34 ]
  %y2.2 = phi i32 [ %12, %for.end45.split.loop.exit ], [ %y2.0, %for.cond34 ]
  %cmp46 = icmp eq i32 %x2.2, -1
  br i1 %cmp46, label %for.cond30, label %for.end51, !llvm.loop !17

for.end51:                                        ; preds = %for.end45, %for.cond30
  %x2.1 = phi i32 [ %x2.2, %for.end45 ], [ -1, %for.cond30 ]
  %y2.1 = phi i32 [ %y2.2, %for.end45 ], [ %y2.0, %for.cond30 ]
  %sub53 = add i32 %x2.1, %x1.1
  %sub55 = add i32 %y2.1, %y1.1
  %mul = mul nsw i32 %sub55, %sub53
  %call56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %sz) #4
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
