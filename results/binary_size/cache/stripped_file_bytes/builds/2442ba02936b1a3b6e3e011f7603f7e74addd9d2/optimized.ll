; ModuleID = '<stdin>'
source_filename = "/tmp/tmpielsqmwx.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [1000 x [1000 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4000000, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp39 = icmp sgt i32 %0, 0
  call void @llvm.assume(i1 %cmp39)
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.inc7
  %1 = phi i32 [ %18, %for.inc7 ], [ %0, %entry ]
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.inc7 ], [ 0, %entry ]
  %cmp237 = icmp sgt i32 %1, 0
  br i1 %cmp237, label %for.body3, label %for.cond1.preheader.for.inc7_crit_edge

for.cond1.preheader.for.inc7_crit_edge:           ; preds = %for.cond1.preheader
  %.pre = sext i32 %1 to i64
  br label %for.inc7

for.cond10.preheader:                             ; preds = %for.inc7
  %cmp1151 = icmp sgt i32 %18, 2
  call void @llvm.assume(i1 %cmp1151)
  %sub = add nsw i32 %18, -1
  %wide.trip.count80 = zext nneg i32 %sub to i64
  br label %for.cond13.preheader.us

for.cond13.preheader.us:                          ; preds = %for.cond10.preheader, %for.cond13.for.inc74_crit_edge.us
  %indvars.iv76 = phi i64 [ 1, %for.cond10.preheader ], [ %indvars.iv.next77, %for.cond13.for.inc74_crit_edge.us ]
  %l2.056.us = phi i32 [ undef, %for.cond10.preheader ], [ %l2.2.us, %for.cond13.for.inc74_crit_edge.us ]
  %l1.055.us = phi i32 [ undef, %for.cond10.preheader ], [ %l1.236.us, %for.cond13.for.inc74_crit_edge.us ]
  %s2.054.us = phi i32 [ undef, %for.cond10.preheader ], [ %s2.2.us, %for.cond13.for.inc74_crit_edge.us ]
  %s1.053.us = phi i32 [ undef, %for.cond10.preheader ], [ %s1.235.us, %for.cond13.for.inc74_crit_edge.us ]
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  %2 = add nsw i64 %indvars.iv76, -1
  %3 = trunc nuw nsw i64 %indvars.iv76 to i32
  %4 = trunc nuw nsw i64 %indvars.iv76 to i32
  br label %for.body16.us

for.body16.us:                                    ; preds = %for.cond13.preheader.us, %for.inc71.us
  %indvars.iv71 = phi i64 [ 1, %for.cond13.preheader.us ], [ %indvars.iv.next72, %for.inc71.us ]
  %l2.146.us = phi i32 [ %l2.056.us, %for.cond13.preheader.us ], [ %l2.2.us, %for.inc71.us ]
  %l1.145.us = phi i32 [ %l1.055.us, %for.cond13.preheader.us ], [ %l1.236.us, %for.inc71.us ]
  %s2.144.us = phi i32 [ %s2.054.us, %for.cond13.preheader.us ], [ %s2.2.us, %for.inc71.us ]
  %s1.143.us = phi i32 [ %s1.053.us, %for.cond13.preheader.us ], [ %s1.235.us, %for.inc71.us ]
  %arrayidx20.us = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv76, i64 %indvars.iv71
  %5 = load i32, ptr %arrayidx20.us, align 4, !tbaa !5
  switch i32 %5, label %for.inc71.us [
    i32 255, label %land.lhs.true.us
    i32 0, label %land.lhs.true48.us
  ]

land.lhs.true48.us:                               ; preds = %for.body16.us
  %6 = add nuw nsw i64 %indvars.iv71, 1
  %arrayidx52.us = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv76, i64 %6
  %7 = load i32, ptr %arrayidx52.us, align 4, !tbaa !5
  %cmp53.us = icmp eq i32 %7, 255
  br i1 %cmp53.us, label %land.lhs.true54.us, label %for.inc71.us

land.lhs.true54.us:                               ; preds = %land.lhs.true48.us
  %arrayidx59.us = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv.next77, i64 %indvars.iv71
  %8 = load i32, ptr %arrayidx59.us, align 4, !tbaa !5
  %cmp60.us = icmp eq i32 %8, 255
  br i1 %cmp60.us, label %land.lhs.true61.us, label %for.inc71.us

land.lhs.true61.us:                               ; preds = %land.lhs.true54.us
  %arrayidx67.us = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv.next77, i64 %6
  %9 = load i32, ptr %arrayidx67.us, align 4, !tbaa !5
  %cmp68.us = icmp eq i32 %9, 255
  %spec.select30.us = select i1 %cmp68.us, i32 %3, i32 %s2.144.us
  %10 = trunc nuw nsw i64 %indvars.iv71 to i32
  %spec.select31.us = select i1 %cmp68.us, i32 %10, i32 %l2.146.us
  br label %for.inc71.us

land.lhs.true.us:                                 ; preds = %for.body16.us
  %11 = add nsw i64 %indvars.iv71, -1
  %arrayidx26.us = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv76, i64 %11
  %12 = load i32, ptr %arrayidx26.us, align 4, !tbaa !5
  %cmp27.us = icmp eq i32 %12, 0
  br i1 %cmp27.us, label %land.lhs.true28.us, label %for.inc71.us

land.lhs.true28.us:                               ; preds = %land.lhs.true.us
  %arrayidx33.us = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %2, i64 %indvars.iv71
  %13 = load i32, ptr %arrayidx33.us, align 4, !tbaa !5
  %cmp34.us = icmp eq i32 %13, 0
  br i1 %cmp34.us, label %land.lhs.true35.us, label %for.inc71.us

land.lhs.true35.us:                               ; preds = %land.lhs.true28.us
  %arrayidx41.us = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %2, i64 %11
  %14 = load i32, ptr %arrayidx41.us, align 4, !tbaa !5
  %cmp42.us = icmp eq i32 %14, 0
  %spec.select.us = select i1 %cmp42.us, i32 %4, i32 %s1.143.us
  %15 = trunc nuw nsw i64 %indvars.iv71 to i32
  %spec.select29.us = select i1 %cmp42.us, i32 %15, i32 %l1.145.us
  br label %for.inc71.us

for.inc71.us:                                     ; preds = %land.lhs.true35.us, %land.lhs.true28.us, %land.lhs.true.us, %land.lhs.true61.us, %land.lhs.true54.us, %land.lhs.true48.us, %for.body16.us
  %l1.236.us = phi i32 [ %l1.145.us, %land.lhs.true54.us ], [ %l1.145.us, %land.lhs.true48.us ], [ %l1.145.us, %land.lhs.true61.us ], [ %spec.select29.us, %land.lhs.true35.us ], [ %l1.145.us, %land.lhs.true.us ], [ %l1.145.us, %land.lhs.true28.us ], [ %l1.145.us, %for.body16.us ]
  %s1.235.us = phi i32 [ %s1.143.us, %land.lhs.true54.us ], [ %s1.143.us, %land.lhs.true48.us ], [ %s1.143.us, %land.lhs.true61.us ], [ %spec.select.us, %land.lhs.true35.us ], [ %s1.143.us, %land.lhs.true.us ], [ %s1.143.us, %land.lhs.true28.us ], [ %s1.143.us, %for.body16.us ]
  %s2.2.us = phi i32 [ %s2.144.us, %land.lhs.true54.us ], [ %s2.144.us, %land.lhs.true48.us ], [ %spec.select30.us, %land.lhs.true61.us ], [ %s2.144.us, %land.lhs.true35.us ], [ %s2.144.us, %land.lhs.true.us ], [ %s2.144.us, %land.lhs.true28.us ], [ %s2.144.us, %for.body16.us ]
  %l2.2.us = phi i32 [ %l2.146.us, %land.lhs.true54.us ], [ %l2.146.us, %land.lhs.true48.us ], [ %spec.select31.us, %land.lhs.true61.us ], [ %l2.146.us, %land.lhs.true35.us ], [ %l2.146.us, %land.lhs.true.us ], [ %l2.146.us, %land.lhs.true28.us ], [ %l2.146.us, %for.body16.us ]
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count80
  br i1 %exitcond.not, label %for.cond13.for.inc74_crit_edge.us, label %for.body16.us, !llvm.loop !9

for.cond13.for.inc74_crit_edge.us:                ; preds = %for.inc71.us
  %exitcond81.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count80
  br i1 %exitcond81.not, label %for.end76.loopexit, label %for.cond13.preheader.us, !llvm.loop !12

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv68, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %16 = load i32, ptr %n, align 4, !tbaa !5
  %17 = sext i32 %16 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %17
  br i1 %cmp2, label %for.body3, label %for.inc7, !llvm.loop !13

for.inc7:                                         ; preds = %for.body3, %for.cond1.preheader.for.inc7_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond1.preheader.for.inc7_crit_edge ], [ %17, %for.body3 ]
  %18 = phi i32 [ %1, %for.cond1.preheader.for.inc7_crit_edge ], [ %16, %for.body3 ]
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  %cmp = icmp slt i64 %indvars.iv.next69, %.pre-phi
  br i1 %cmp, label %for.cond1.preheader, label %for.cond10.preheader, !llvm.loop !14

for.end76.loopexit:                               ; preds = %for.cond13.for.inc74_crit_edge.us
  %19 = sub nsw i32 %s2.2.us, %s1.235.us
  %20 = sub nsw i32 %l2.2.us, %l1.236.us
  %21 = mul nsw i32 %20, %19
  %call79 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 4000000, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!14 = distinct !{!14, !10, !11, !15}
!15 = !{!"llvm.loop.unswitch.partial.disable"}
