; ModuleID = '<stdin>'
source_filename = "/tmp/tmpbaafirbd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp42 = icmp sgt i32 %0, 0
  br i1 %cmp42, label %for.cond1.preheader, label %for.end91

for.cond1.preheader:                              ; preds = %entry, %for.inc7
  %1 = phi i32 [ %15, %for.inc7 ], [ %0, %entry ]
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %for.inc7 ], [ 0, %entry ]
  %cmp240 = icmp sgt i32 %1, 0
  br i1 %cmp240, label %for.body3, label %for.cond1.preheader.for.inc7_crit_edge

for.cond1.preheader.for.inc7_crit_edge:           ; preds = %for.cond1.preheader
  %.pre166 = sext i32 %1 to i64
  br label %for.inc7

for.cond10.preheader:                             ; preds = %for.inc7
  %cmp1155 = icmp sgt i32 %15, 0
  br i1 %cmp1155, label %for.cond13.preheader.us.preheader, label %for.end91

for.cond13.preheader.us.preheader:                ; preds = %for.cond10.preheader
  %wide.trip.count152 = zext nneg i32 %15 to i64
  br label %for.cond13.preheader.us

for.cond13.preheader.us:                          ; preds = %for.cond13.preheader.us.preheader, %for.inc46.us
  %indvars.iv149 = phi i64 [ 0, %for.cond13.preheader.us.preheader ], [ %indvars.iv.next150, %for.inc46.us ]
  %t.058.us = phi i32 [ 0, %for.cond13.preheader.us.preheader ], [ %.us-phi46.us, %for.inc46.us ]
  %n1.057.us = phi i32 [ undef, %for.cond13.preheader.us.preheader ], [ %.us-phi45.us, %for.inc46.us ]
  %m1.056.us = phi i32 [ undef, %for.cond13.preheader.us.preheader ], [ %.us-phi44.us, %for.inc46.us ]
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1
  %tobool.not.us = icmp eq i32 %t.058.us, 0
  br i1 %tobool.not.us, label %for.body15.us.us.preheader, label %for.body15.us64, !llvm.loop !9

for.body15.us.us.preheader:                       ; preds = %for.cond13.preheader.us
  %2 = trunc nuw nsw i64 %indvars.iv149 to i32
  %arrayidx19.us.us.phi.trans.insert = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv149, i64 0
  %.pre = load i32, ptr %arrayidx19.us.us.phi.trans.insert, align 16, !tbaa !5
  br label %for.body15.us.us

for.body15.us64:                                  ; preds = %for.cond13.preheader.us
  %arrayidx19.us65 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv149, i64 0
  %3 = load i32, ptr %arrayidx19.us65, align 16, !tbaa !5
  %arrayidx23.us66 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv149, i64 1
  %4 = load i32, ptr %arrayidx23.us66, align 4, !tbaa !5
  %cmp24.us67 = icmp eq i32 %3, %4
  br i1 %cmp24.us67, label %land.lhs.true.us68, label %if.end.us71

land.lhs.true.us68:                               ; preds = %for.body15.us64
  %arrayidx33.us69 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next150, i64 0
  %5 = load i32, ptr %arrayidx33.us69, align 16, !tbaa !5
  %6 = or i32 %5, %3
  %or.cond.us70 = icmp eq i32 %6, 0
  %7 = trunc nuw nsw i64 %indvars.iv149 to i32
  br i1 %or.cond.us70, label %for.inc46.us, label %if.end.us71

if.end.us71:                                      ; preds = %land.lhs.true.us68, %for.body15.us64
  br label %for.inc46.us

for.inc46.us.loopexit.split.loop.exit:            ; preds = %land.lhs.true.us.us
  %8 = trunc nuw nsw i64 %indvars.iv146 to i32
  br label %for.inc46.us

for.inc46.us:                                     ; preds = %if.end.us.us, %for.inc46.us.loopexit.split.loop.exit, %land.lhs.true.us68, %if.end.us71
  %.us-phi44.us = phi i32 [ %m1.056.us, %if.end.us71 ], [ %7, %land.lhs.true.us68 ], [ %2, %for.inc46.us.loopexit.split.loop.exit ], [ %m1.056.us, %if.end.us.us ]
  %.us-phi45.us = phi i32 [ %n1.057.us, %if.end.us71 ], [ 0, %land.lhs.true.us68 ], [ %8, %for.inc46.us.loopexit.split.loop.exit ], [ %n1.057.us, %if.end.us.us ]
  %.us-phi46.us = phi i32 [ 1, %if.end.us71 ], [ 1, %land.lhs.true.us68 ], [ 1, %for.inc46.us.loopexit.split.loop.exit ], [ 0, %if.end.us.us ]
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count152
  br i1 %exitcond153.not, label %for.cond49.preheader, label %for.cond13.preheader.us, !llvm.loop !12

for.body15.us.us:                                 ; preds = %for.body15.us.us.preheader, %if.end.us.us
  %9 = phi i32 [ %.pre, %for.body15.us.us.preheader ], [ %10, %if.end.us.us ]
  %indvars.iv146 = phi i64 [ 0, %for.body15.us.us.preheader ], [ %indvars.iv.next147, %if.end.us.us ]
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1
  %arrayidx23.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv149, i64 %indvars.iv.next147
  %10 = load i32, ptr %arrayidx23.us.us, align 4, !tbaa !5
  %cmp24.us.us = icmp eq i32 %9, %10
  br i1 %cmp24.us.us, label %land.lhs.true.us.us, label %if.end.us.us

land.lhs.true.us.us:                              ; preds = %for.body15.us.us
  %arrayidx33.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next150, i64 %indvars.iv146
  %11 = load i32, ptr %arrayidx33.us.us, align 4, !tbaa !5
  %12 = or i32 %11, %9
  %or.cond.us.us = icmp eq i32 %12, 0
  br i1 %or.cond.us.us, label %for.inc46.us.loopexit.split.loop.exit, label %if.end.us.us

if.end.us.us:                                     ; preds = %land.lhs.true.us.us, %for.body15.us.us
  %exitcond.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count152
  br i1 %exitcond.not, label %for.inc46.us, label %for.body15.us.us

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv143, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %14 = sext i32 %13 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %14
  br i1 %cmp2, label %for.body3, label %for.inc7, !llvm.loop !13

for.inc7:                                         ; preds = %for.body3, %for.cond1.preheader.for.inc7_crit_edge
  %.pre-phi = phi i64 [ %.pre166, %for.cond1.preheader.for.inc7_crit_edge ], [ %14, %for.body3 ]
  %15 = phi i32 [ %1, %for.cond1.preheader.for.inc7_crit_edge ], [ %13, %for.body3 ]
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1
  %cmp = icmp slt i64 %indvars.iv.next144, %.pre-phi
  br i1 %cmp, label %for.cond1.preheader, label %for.cond10.preheader, !llvm.loop !14

for.cond49.preheader:                             ; preds = %for.inc46.us
  %16 = xor i32 %.us-phi44.us, -1
  %17 = xor i32 %.us-phi45.us, -1
  %wide.trip.count164 = zext nneg i32 %15 to i64
  br label %for.cond52.preheader.us

for.cond52.preheader.us:                          ; preds = %for.cond49.preheader, %for.inc89.us
  %indvars.iv160 = phi i64 [ 0, %for.cond49.preheader ], [ %indvars.iv.next161, %for.inc89.us ]
  %t.2123.us = phi i32 [ 0, %for.cond49.preheader ], [ %t.3.us, %for.inc89.us ]
  %n2.0122.us = phi i32 [ undef, %for.cond49.preheader ], [ %n2.1.us, %for.inc89.us ]
  %m2.0121.us = phi i32 [ undef, %for.cond49.preheader ], [ %m2.1.us, %for.inc89.us ]
  %18 = add nsw i64 %indvars.iv160, -1
  %tobool83.not.us = icmp eq i32 %t.2123.us, 0
  br i1 %tobool83.not.us, label %for.body54.us.us.preheader, label %for.body54.lr.ph.split.us131

for.body54.us.us.preheader:                       ; preds = %for.cond52.preheader.us
  %19 = trunc nuw nsw i64 %indvars.iv160 to i32
  br label %for.body54.us.us

land.lhs.true64.us126:                            ; preds = %for.body54.lr.ph.split.us131
  %arrayidx73.us127 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 -1, i64 %indvars.iv160
  %20 = load i32, ptr %arrayidx73.us127, align 4, !tbaa !5
  %21 = or i32 %20, %24
  %or.cond39.us128 = icmp eq i32 %21, 0
  %spec.select = select i1 %or.cond39.us128, i32 0, i32 %m2.0121.us
  %22 = trunc nuw nsw i64 %indvars.iv160 to i32
  %spec.select137 = select i1 %or.cond39.us128, i32 %22, i32 %n2.0122.us
  br label %for.inc89.us

for.inc89.us.loopexit.split.loop.exit:            ; preds = %land.lhs.true64.us.us
  %23 = trunc nuw nsw i64 %indvars.iv154 to i32
  br label %for.inc89.us

for.inc89.us:                                     ; preds = %if.end82.us.us, %for.inc89.us.loopexit.split.loop.exit, %land.lhs.true64.us126, %for.body54.lr.ph.split.us131
  %m2.1.us = phi i32 [ %m2.0121.us, %for.body54.lr.ph.split.us131 ], [ %spec.select, %land.lhs.true64.us126 ], [ %23, %for.inc89.us.loopexit.split.loop.exit ], [ %m2.0121.us, %if.end82.us.us ]
  %n2.1.us = phi i32 [ %n2.0122.us, %for.body54.lr.ph.split.us131 ], [ %spec.select137, %land.lhs.true64.us126 ], [ %19, %for.inc89.us.loopexit.split.loop.exit ], [ %n2.0122.us, %if.end82.us.us ]
  %t.3.us = phi i32 [ 1, %for.body54.lr.ph.split.us131 ], [ 1, %land.lhs.true64.us126 ], [ 1, %for.inc89.us.loopexit.split.loop.exit ], [ 0, %if.end82.us.us ]
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1
  %exitcond165.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count164
  br i1 %exitcond165.not, label %for.end91, label %for.cond52.preheader.us, !llvm.loop !16

for.body54.lr.ph.split.us131:                     ; preds = %for.cond52.preheader.us
  %arrayidx58.us132 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 0, i64 %indvars.iv160
  %24 = load i32, ptr %arrayidx58.us132, align 4, !tbaa !5
  %arrayidx62.us133 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0, i64 %18
  %25 = load i32, ptr %arrayidx62.us133, align 4, !tbaa !5
  %cmp63.us134 = icmp eq i32 %24, %25
  br i1 %cmp63.us134, label %land.lhs.true64.us126, label %for.inc89.us

for.body54.us.us:                                 ; preds = %for.body54.us.us.preheader, %if.end82.us.us
  %indvars.iv154 = phi i64 [ 0, %for.body54.us.us.preheader ], [ %indvars.iv.next155, %if.end82.us.us ]
  %arrayidx58.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv154, i64 %indvars.iv160
  %26 = load i32, ptr %arrayidx58.us.us, align 4, !tbaa !5
  %arrayidx62.us.us = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv154, i64 %18
  %27 = load i32, ptr %arrayidx62.us.us, align 4, !tbaa !5
  %cmp63.us.us = icmp eq i32 %26, %27
  br i1 %cmp63.us.us, label %land.lhs.true64.us.us, label %if.end82.us.us

land.lhs.true64.us.us:                            ; preds = %for.body54.us.us
  %28 = add nsw i64 %indvars.iv154, -1
  %arrayidx73.us.us = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %28, i64 %indvars.iv160
  %29 = load i32, ptr %arrayidx73.us.us, align 4, !tbaa !5
  %30 = or i32 %29, %26
  %or.cond39.us.us = icmp eq i32 %30, 0
  br i1 %or.cond39.us.us, label %for.inc89.us.loopexit.split.loop.exit, label %if.end82.us.us

if.end82.us.us:                                   ; preds = %land.lhs.true64.us.us, %for.body54.us.us
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1
  %exitcond159.not = icmp eq i64 %indvars.iv.next155, %wide.trip.count164
  br i1 %exitcond159.not, label %for.inc89.us, label %for.body54.us.us, !llvm.loop !17

for.end91:                                        ; preds = %for.inc89.us, %entry, %for.cond10.preheader
  %n1.0.lcssa176 = phi i32 [ undef, %for.cond10.preheader ], [ undef, %entry ], [ %17, %for.inc89.us ]
  %m1.0.lcssa175 = phi i32 [ undef, %for.cond10.preheader ], [ undef, %entry ], [ %16, %for.inc89.us ]
  %m2.0.lcssa = phi i32 [ undef, %for.cond10.preheader ], [ undef, %entry ], [ %m2.1.us, %for.inc89.us ]
  %n2.0.lcssa = phi i32 [ undef, %for.cond10.preheader ], [ undef, %entry ], [ %n2.1.us, %for.inc89.us ]
  %sub93 = add i32 %m2.0.lcssa, %m1.0.lcssa175
  %sub95 = add i32 %n2.0.lcssa, %n1.0.lcssa176
  %mul = mul nsw i32 %sub95, %sub93
  %call96 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #4
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
