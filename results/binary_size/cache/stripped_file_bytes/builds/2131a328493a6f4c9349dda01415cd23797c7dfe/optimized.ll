; ModuleID = '<stdin>'
source_filename = "/tmp/tmpacolikar.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %shu = alloca [1000 x [1000 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4000000, ptr nonnull %shu) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %0, 0
  br i1 %cmp24, label %for.cond1.preheader, label %for.end52

for.cond1.preheader:                              ; preds = %entry, %for.inc7
  %1 = phi i32 [ %11, %for.inc7 ], [ %0, %entry ]
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.inc7 ], [ 0, %entry ]
  %cmp222 = icmp sgt i32 %1, 0
  br i1 %cmp222, label %for.body3, label %for.cond1.preheader.for.inc7_crit_edge

for.cond1.preheader.for.inc7_crit_edge:           ; preds = %for.cond1.preheader
  %.pre = sext i32 %1 to i64
  br label %for.inc7

for.cond10.preheader:                             ; preds = %for.inc7
  %cmp1130 = icmp sgt i32 %11, 0
  br i1 %cmp1130, label %for.cond13.preheader.us.preheader, label %for.end52

for.cond13.preheader.us.preheader:                ; preds = %for.cond10.preheader
  %wide.trip.count58 = zext nneg i32 %11 to i64
  %min.iters.check = icmp ult i32 %11, 4
  %n.vec = and i64 %wide.trip.count58, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count58
  br label %for.cond13.preheader.us

for.cond13.preheader.us:                          ; preds = %for.cond13.for.end23_crit_edge.us, %for.cond13.preheader.us.preheader
  %indvars.iv55 = phi i64 [ 0, %for.cond13.preheader.us.preheader ], [ %indvars.iv.next56, %for.cond13.for.end23_crit_edge.us ]
  br i1 %min.iters.check, label %for.body15.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond13.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond13.preheader.us ]
  %vec.phi = phi <4 x i32> [ %5, %vector.body ], [ zeroinitializer, %for.cond13.preheader.us ]
  %2 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %shu, i64 0, i64 %indvars.iv55, i64 %index
  %wide.load = load <4 x i32>, ptr %2, align 16, !tbaa !5
  %3 = icmp eq <4 x i32> %wide.load, zeroinitializer
  %4 = zext <4 x i1> %3 to <4 x i32>
  %5 = add <4 x i32> %vec.phi, %4
  %index.next = add nuw i64 %index, 4
  %6 = icmp eq i64 %index.next, %n.vec
  br i1 %6, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %7 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %5)
  br i1 %cmp.n, label %for.cond13.for.end23_crit_edge.us, label %for.body15.us.preheader

for.body15.us.preheader:                          ; preds = %for.cond13.preheader.us, %middle.block
  %indvars.iv52.ph = phi i64 [ 0, %for.cond13.preheader.us ], [ %n.vec, %middle.block ]
  %heng.228.us.ph = phi i32 [ 0, %for.cond13.preheader.us ], [ %7, %middle.block ]
  br label %for.body15.us

for.body15.us:                                    ; preds = %for.body15.us.preheader, %for.body15.us
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.body15.us ], [ %indvars.iv52.ph, %for.body15.us.preheader ]
  %heng.228.us = phi i32 [ %spec.select.us, %for.body15.us ], [ %heng.228.us.ph, %for.body15.us.preheader ]
  %arrayidx19.us = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %shu, i64 0, i64 %indvars.iv55, i64 %indvars.iv52
  %8 = load i32, ptr %arrayidx19.us, align 4, !tbaa !5
  %cmp20.us = icmp eq i32 %8, 0
  %add.us = zext i1 %cmp20.us to i32
  %spec.select.us = add nuw nsw i32 %heng.228.us, %add.us
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count58
  br i1 %exitcond.not, label %for.cond13.for.end23_crit_edge.us, label %for.body15.us, !llvm.loop !14

for.cond13.for.end23_crit_edge.us:                ; preds = %for.body15.us, %middle.block
  %spec.select.us.lcssa = phi i32 [ %7, %middle.block ], [ %spec.select.us, %for.body15.us ]
  %cmp24.not.us = icmp ne i32 %spec.select.us.lcssa, 0
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  %or.cond = select i1 %cmp24.not.us, i1 true, i1 %exitcond59.not
  br i1 %or.cond, label %for.end29, label %for.cond13.preheader.us, !llvm.loop !15

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %shu, i64 0, i64 %indvars.iv49, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %10 = sext i32 %9 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %10
  br i1 %cmp2, label %for.body3, label %for.inc7, !llvm.loop !16

for.inc7:                                         ; preds = %for.body3, %for.cond1.preheader.for.inc7_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond1.preheader.for.inc7_crit_edge ], [ %10, %for.body3 ]
  %11 = phi i32 [ %1, %for.cond1.preheader.for.inc7_crit_edge ], [ %9, %for.body3 ]
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %cmp = icmp slt i64 %indvars.iv.next50, %.pre-phi
  br i1 %cmp, label %for.cond1.preheader, label %for.cond10.preheader, !llvm.loop !17

for.end29:                                        ; preds = %for.cond13.for.end23_crit_edge.us
  %12 = add nsw i32 %spec.select.us.lcssa, -2
  %wide.trip.count68 = zext nneg i32 %11 to i64
  %min.iters.check84 = icmp ult i32 %11, 4
  %n.vec87 = and i64 %wide.trip.count58, 2147483644
  %cmp.n93 = icmp eq i64 %n.vec87, %wide.trip.count58
  br label %for.cond33.preheader.us

for.cond33.preheader.us:                          ; preds = %for.cond33.for.end46_crit_edge.us, %for.end29
  %indvars.iv65 = phi i64 [ 0, %for.end29 ], [ %indvars.iv.next66, %for.cond33.for.end46_crit_edge.us ]
  br i1 %min.iters.check84, label %for.body35.us.preheader, label %vector.body88

vector.body88:                                    ; preds = %for.cond33.preheader.us, %vector.body88
  %index89 = phi i64 [ %index.next91, %vector.body88 ], [ 0, %for.cond33.preheader.us ]
  %vec.phi90 = phi <4 x i32> [ %30, %vector.body88 ], [ zeroinitializer, %for.cond33.preheader.us ]
  %13 = or disjoint i64 %index89, 1
  %14 = or disjoint i64 %index89, 2
  %15 = or disjoint i64 %index89, 3
  %16 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %shu, i64 0, i64 %index89, i64 %indvars.iv65
  %17 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %shu, i64 0, i64 %13, i64 %indvars.iv65
  %18 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %shu, i64 0, i64 %14, i64 %indvars.iv65
  %19 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %shu, i64 0, i64 %15, i64 %indvars.iv65
  %20 = load i32, ptr %16, align 4, !tbaa !5
  %21 = load i32, ptr %17, align 4, !tbaa !5
  %22 = load i32, ptr %18, align 4, !tbaa !5
  %23 = load i32, ptr %19, align 4, !tbaa !5
  %24 = insertelement <4 x i32> poison, i32 %20, i64 0
  %25 = insertelement <4 x i32> %24, i32 %21, i64 1
  %26 = insertelement <4 x i32> %25, i32 %22, i64 2
  %27 = insertelement <4 x i32> %26, i32 %23, i64 3
  %28 = icmp eq <4 x i32> %27, zeroinitializer
  %29 = zext <4 x i1> %28 to <4 x i32>
  %30 = add <4 x i32> %vec.phi90, %29
  %index.next91 = add nuw i64 %index89, 4
  %31 = icmp eq i64 %index.next91, %n.vec87
  br i1 %31, label %middle.block92, label %vector.body88, !llvm.loop !19

middle.block92:                                   ; preds = %vector.body88
  %32 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %30)
  br i1 %cmp.n93, label %for.cond33.for.end46_crit_edge.us, label %for.body35.us.preheader

for.body35.us.preheader:                          ; preds = %for.cond33.preheader.us, %middle.block92
  %indvars.iv60.ph = phi i64 [ 0, %for.cond33.preheader.us ], [ %n.vec87, %middle.block92 ]
  %s.237.us.ph = phi i32 [ 0, %for.cond33.preheader.us ], [ %32, %middle.block92 ]
  br label %for.body35.us

for.body35.us:                                    ; preds = %for.body35.us.preheader, %for.body35.us
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.body35.us ], [ %indvars.iv60.ph, %for.body35.us.preheader ]
  %s.237.us = phi i32 [ %spec.select21.us, %for.body35.us ], [ %s.237.us.ph, %for.body35.us.preheader ]
  %arrayidx39.us = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %shu, i64 0, i64 %indvars.iv60, i64 %indvars.iv65
  %33 = load i32, ptr %arrayidx39.us, align 4, !tbaa !5
  %cmp40.us = icmp eq i32 %33, 0
  %add42.us = zext i1 %cmp40.us to i32
  %spec.select21.us = add nuw nsw i32 %s.237.us, %add42.us
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count68
  br i1 %exitcond64.not, label %for.cond33.for.end46_crit_edge.us, label %for.body35.us, !llvm.loop !20

for.cond33.for.end46_crit_edge.us:                ; preds = %for.body35.us, %middle.block92
  %spec.select21.us.lcssa = phi i32 [ %32, %middle.block92 ], [ %spec.select21.us, %for.body35.us ]
  %cmp47.not.us = icmp ne i32 %spec.select21.us.lcssa, 0
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  %or.cond80 = select i1 %cmp47.not.us, i1 true, i1 %exitcond69.not
  br i1 %or.cond80, label %for.end52.loopexit, label %for.cond33.preheader.us, !llvm.loop !21

for.end52.loopexit:                               ; preds = %for.cond33.for.end46_crit_edge.us
  %34 = add nsw i32 %spec.select21.us.lcssa, -2
  br label %for.end52

for.end52:                                        ; preds = %entry, %for.cond10.preheader, %for.end52.loopexit
  %heng.177 = phi i32 [ %12, %for.end52.loopexit ], [ -2, %for.cond10.preheader ], [ -2, %entry ]
  %s.1 = phi i32 [ %34, %for.end52.loopexit ], [ -2, %for.cond10.preheader ], [ -2, %entry ]
  %mul = mul nsw i32 %s.1, %heng.177
  %call54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 4000000, ptr nonnull %shu) #5
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
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11, !18}
!18 = !{!"llvm.loop.unswitch.partial.disable"}
!19 = distinct !{!19, !10, !11, !12, !13}
!20 = distinct !{!20, !10, !11, !12}
!21 = distinct !{!21, !10, !11}
