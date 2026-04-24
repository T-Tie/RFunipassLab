; ModuleID = '<stdin>'
source_filename = "/tmp/tmphp9wcsbp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %sz = alloca [1000 x [1000 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4000000, ptr nonnull %sz) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp34 = icmp sgt i32 %0, 0
  br i1 %cmp34, label %for.cond1.preheader, label %for.end69

for.cond1.preheader:                              ; preds = %entry, %for.inc7
  %1 = phi i32 [ %11, %for.inc7 ], [ %0, %entry ]
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %for.inc7 ], [ 0, %entry ]
  %cmp232 = icmp sgt i32 %1, 0
  br i1 %cmp232, label %for.body3, label %for.cond1.preheader.for.inc7_crit_edge

for.cond1.preheader.for.inc7_crit_edge:           ; preds = %for.cond1.preheader
  %.pre = sext i32 %1 to i64
  br label %for.inc7

for.cond10.preheader:                             ; preds = %for.inc7
  %cmp1142 = icmp sgt i32 %11, 0
  br i1 %cmp1142, label %for.cond13.preheader.us.preheader, label %for.end69

for.cond13.preheader.us.preheader:                ; preds = %for.cond10.preheader
  %wide.trip.count78 = zext nneg i32 %11 to i64
  br label %for.cond13.preheader.us

for.cond13.preheader.us:                          ; preds = %for.cond13.preheader.us.preheader, %for.cond13.for.inc36_crit_edge.us
  %indvars.iv74 = phi i64 [ 0, %for.cond13.preheader.us.preheader ], [ %indvars.iv.next75, %for.cond13.for.inc36_crit_edge.us ]
  %b1.044.us = phi i32 [ undef, %for.cond13.preheader.us.preheader ], [ %b1.2.us, %for.cond13.for.inc36_crit_edge.us ]
  %a1.043.us = phi i32 [ undef, %for.cond13.preheader.us.preheader ], [ %a1.2.us, %for.cond13.for.inc36_crit_edge.us ]
  %2 = add nsw i64 %indvars.iv74, -1
  %3 = trunc nuw nsw i64 %indvars.iv74 to i32
  br label %for.body15.us

for.body15.us:                                    ; preds = %for.cond13.preheader.us, %for.inc33.us
  %indvars.iv70 = phi i64 [ 0, %for.cond13.preheader.us ], [ %indvars.iv.next71, %for.inc33.us ]
  %b1.139.us = phi i32 [ %b1.044.us, %for.cond13.preheader.us ], [ %b1.2.us, %for.inc33.us ]
  %a1.138.us = phi i32 [ %a1.043.us, %for.cond13.preheader.us ], [ %a1.2.us, %for.inc33.us ]
  %arrayidx19.us = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %indvars.iv74, i64 %indvars.iv70
  %4 = load i32, ptr %arrayidx19.us, align 4, !tbaa !5
  %cmp20.us = icmp eq i32 %4, 0
  br i1 %cmp20.us, label %land.lhs.true.us, label %for.inc33.us

land.lhs.true.us:                                 ; preds = %for.body15.us
  %arrayidx24.us = getelementptr inbounds [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %2, i64 %indvars.iv70
  %5 = load i32, ptr %arrayidx24.us, align 4, !tbaa !5
  %cmp25.not.us = icmp eq i32 %5, 0
  br i1 %cmp25.not.us, label %for.inc33.us, label %land.lhs.true26.us

land.lhs.true26.us:                               ; preds = %land.lhs.true.us
  %6 = add nsw i64 %indvars.iv70, -1
  %arrayidx31.us = getelementptr inbounds [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %indvars.iv74, i64 %6
  %7 = load i32, ptr %arrayidx31.us, align 4, !tbaa !5
  %cmp32.not.us = icmp eq i32 %7, 0
  %spec.select.us = select i1 %cmp32.not.us, i32 %a1.138.us, i32 %3
  %8 = trunc nuw nsw i64 %indvars.iv70 to i32
  %spec.select29.us = select i1 %cmp32.not.us, i32 %b1.139.us, i32 %8
  br label %for.inc33.us

for.inc33.us:                                     ; preds = %land.lhs.true26.us, %land.lhs.true.us, %for.body15.us
  %a1.2.us = phi i32 [ %a1.138.us, %land.lhs.true.us ], [ %a1.138.us, %for.body15.us ], [ %spec.select.us, %land.lhs.true26.us ]
  %b1.2.us = phi i32 [ %b1.139.us, %land.lhs.true.us ], [ %b1.139.us, %for.body15.us ], [ %spec.select29.us, %land.lhs.true26.us ]
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count78
  br i1 %exitcond.not, label %for.cond13.for.inc36_crit_edge.us, label %for.body15.us, !llvm.loop !9

for.cond13.for.inc36_crit_edge.us:                ; preds = %for.inc33.us
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %exitcond79.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count78
  br i1 %exitcond79.not, label %for.cond39.preheader, label %for.cond13.preheader.us, !llvm.loop !12

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %indvars.iv67, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %10 = sext i32 %9 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %10
  br i1 %cmp2, label %for.body3, label %for.inc7, !llvm.loop !13

for.inc7:                                         ; preds = %for.body3, %for.cond1.preheader.for.inc7_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond1.preheader.for.inc7_crit_edge ], [ %10, %for.body3 ]
  %11 = phi i32 [ %1, %for.cond1.preheader.for.inc7_crit_edge ], [ %9, %for.body3 ]
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %cmp = icmp slt i64 %indvars.iv.next68, %.pre-phi
  br i1 %cmp, label %for.cond1.preheader, label %for.cond10.preheader, !llvm.loop !14

for.cond39.preheader:                             ; preds = %for.cond13.for.inc36_crit_edge.us
  %12 = xor i32 %a1.2.us, -1
  %13 = xor i32 %b1.2.us, -1
  %14 = zext nneg i32 %11 to i64
  br label %for.cond42.preheader.us

for.cond42.preheader.us:                          ; preds = %for.cond39.preheader, %for.cond42.for.inc67_crit_edge.us
  %indvars.iv84 = phi i64 [ %14, %for.cond39.preheader ], [ %indvars.iv.next85, %for.cond42.for.inc67_crit_edge.us ]
  %b2.058.us = phi i32 [ undef, %for.cond39.preheader ], [ %b2.2.us, %for.cond42.for.inc67_crit_edge.us ]
  %a2.057.us = phi i32 [ undef, %for.cond39.preheader ], [ %a2.2.us, %for.cond42.for.inc67_crit_edge.us ]
  %15 = add nuw nsw i64 %indvars.iv84, 1
  %16 = trunc nuw nsw i64 %indvars.iv84 to i32
  br label %for.body44.us

for.body44.us:                                    ; preds = %for.cond42.preheader.us, %for.inc65.us
  %indvars.iv80 = phi i64 [ %14, %for.cond42.preheader.us ], [ %indvars.iv.next81, %for.inc65.us ]
  %b2.153.us = phi i32 [ %b2.058.us, %for.cond42.preheader.us ], [ %b2.2.us, %for.inc65.us ]
  %a2.152.us = phi i32 [ %a2.057.us, %for.cond42.preheader.us ], [ %a2.2.us, %for.inc65.us ]
  %arrayidx48.us = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %indvars.iv84, i64 %indvars.iv80
  %17 = load i32, ptr %arrayidx48.us, align 4, !tbaa !5
  %cmp49.us = icmp eq i32 %17, 0
  br i1 %cmp49.us, label %land.lhs.true50.us, label %for.inc65.us

land.lhs.true50.us:                               ; preds = %for.body44.us
  %arrayidx54.us = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %15, i64 %indvars.iv80
  %18 = load i32, ptr %arrayidx54.us, align 4, !tbaa !5
  %cmp55.not.us = icmp eq i32 %18, 0
  br i1 %cmp55.not.us, label %for.inc65.us, label %land.lhs.true56.us

land.lhs.true56.us:                               ; preds = %land.lhs.true50.us
  %19 = add nuw nsw i64 %indvars.iv80, 1
  %arrayidx61.us = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %indvars.iv84, i64 %19
  %20 = load i32, ptr %arrayidx61.us, align 4, !tbaa !5
  %cmp62.not.us = icmp eq i32 %20, 0
  %spec.select30.us = select i1 %cmp62.not.us, i32 %a2.152.us, i32 %16
  %21 = trunc nuw nsw i64 %indvars.iv80 to i32
  %spec.select31.us = select i1 %cmp62.not.us, i32 %b2.153.us, i32 %21
  br label %for.inc65.us

for.inc65.us:                                     ; preds = %land.lhs.true56.us, %land.lhs.true50.us, %for.body44.us
  %a2.2.us = phi i32 [ %a2.152.us, %land.lhs.true50.us ], [ %a2.152.us, %for.body44.us ], [ %spec.select30.us, %land.lhs.true56.us ]
  %b2.2.us = phi i32 [ %b2.153.us, %land.lhs.true50.us ], [ %b2.153.us, %for.body44.us ], [ %spec.select31.us, %land.lhs.true56.us ]
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, -1
  %cmp43.us = icmp sgt i64 %indvars.iv80, 1
  br i1 %cmp43.us, label %for.body44.us, label %for.cond42.for.inc67_crit_edge.us, !llvm.loop !16

for.cond42.for.inc67_crit_edge.us:                ; preds = %for.inc65.us
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, -1
  %cmp40.us = icmp sgt i64 %indvars.iv84, 1
  br i1 %cmp40.us, label %for.cond42.preheader.us, label %for.end69, !llvm.loop !17

for.end69:                                        ; preds = %for.cond42.for.inc67_crit_edge.us, %entry, %for.cond10.preheader
  %b1.0.lcssa97 = phi i32 [ undef, %for.cond10.preheader ], [ undef, %entry ], [ %13, %for.cond42.for.inc67_crit_edge.us ]
  %a1.0.lcssa96 = phi i32 [ undef, %for.cond10.preheader ], [ undef, %entry ], [ %12, %for.cond42.for.inc67_crit_edge.us ]
  %a2.0.lcssa = phi i32 [ undef, %for.cond10.preheader ], [ undef, %entry ], [ %a2.2.us, %for.cond42.for.inc67_crit_edge.us ]
  %b2.0.lcssa = phi i32 [ undef, %for.cond10.preheader ], [ undef, %entry ], [ %b2.2.us, %for.cond42.for.inc67_crit_edge.us ]
  %sub71 = add i32 %a2.0.lcssa, %a1.0.lcssa96
  %sub73 = add i32 %b2.0.lcssa, %b1.0.lcssa97
  %mul = mul nsw i32 %sub73, %sub71
  %call74 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.end.p0(i64 4000000, ptr nonnull %sz) #4
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
