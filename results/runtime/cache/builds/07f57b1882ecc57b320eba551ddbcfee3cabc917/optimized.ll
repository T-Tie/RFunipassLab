; ModuleID = '<stdin>'
source_filename = "/tmp/tmp6cd2_dxi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %sz = alloca [1000 x [1000 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4000000, ptr noundef nonnull align 16 %sz) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = phi i32 [ %2, %for.inc7 ], [ %.pre, %entry ]
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.inc7 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv39, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count53 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %2 = phi i32 [ %.pre55, %for.inc ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %indvars.iv39, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre55 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond13, %for.cond10.preheader
  %indvars.iv48 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next49, %for.cond13 ]
  %a.0 = phi i32 [ undef, %for.cond10.preheader ], [ %a.1, %for.cond13 ]
  %b.0 = phi i32 [ undef, %for.cond10.preheader ], [ %b.1, %for.cond13 ]
  %c.0 = phi i32 [ undef, %for.cond10.preheader ], [ %c.1, %for.cond13 ]
  %d.0 = phi i32 [ undef, %for.cond10.preheader ], [ %d.1, %for.cond13 ]
  %exitcond54.not = icmp eq i64 %indvars.iv48, %wide.trip.count53
  br i1 %exitcond54.not, label %for.end58, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond10
  %4 = add nsw i64 %indvars.iv48, -1
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %5 = trunc nuw nsw i64 %indvars.iv48 to i32
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc53
  %indvars.iv42 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next43.pre-phi, %for.inc53 ]
  %a.1 = phi i32 [ %a.0, %for.cond13.preheader ], [ %a.231, %for.inc53 ]
  %b.1 = phi i32 [ %b.0, %for.cond13.preheader ], [ %b.233, %for.inc53 ]
  %c.1 = phi i32 [ %c.0, %for.cond13.preheader ], [ %c.2, %for.inc53 ]
  %d.1 = phi i32 [ %d.0, %for.cond13.preheader ], [ %d.2, %for.inc53 ]
  %exitcond.not = icmp eq i64 %indvars.iv42, %wide.trip.count
  br i1 %exitcond.not, label %for.cond10, label %for.body15, !llvm.loop !13

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %indvars.iv48, i64 %indvars.iv42
  %6 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !14
  %cmp20 = icmp eq i32 %6, 0
  br i1 %cmp20, label %land.lhs.true, label %for.body15.for.inc53_crit_edge

for.body15.for.inc53_crit_edge:                   ; preds = %for.body15
  %.pre56 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.inc53

land.lhs.true:                                    ; preds = %for.body15
  %7 = add nsw i64 %indvars.iv42, -1
  %arrayidx24 = getelementptr inbounds [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %indvars.iv48, i64 %7
  %8 = load i32, ptr %arrayidx24, align 4, !tbaa !5, !invariant.load !14
  %cmp25.not = icmp eq i32 %8, 0
  br i1 %cmp25.not, label %land.lhs.true38, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %land.lhs.true
  %arrayidx31 = getelementptr inbounds [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %4, i64 %indvars.iv42
  %9 = load i32, ptr %arrayidx31, align 4, !tbaa !5, !invariant.load !14
  %cmp32.not = icmp eq i32 %9, 0
  %spec.select = select i1 %cmp32.not, i32 %a.1, i32 %5
  %10 = trunc nuw nsw i64 %indvars.iv42 to i32
  %spec.select35 = select i1 %cmp32.not, i32 %b.1, i32 %10
  br label %land.lhs.true38

land.lhs.true38:                                  ; preds = %land.lhs.true26, %land.lhs.true
  %a.2.ph = phi i32 [ %a.1, %land.lhs.true ], [ %spec.select, %land.lhs.true26 ]
  %b.2.ph = phi i32 [ %b.1, %land.lhs.true ], [ %spec.select35, %land.lhs.true26 ]
  %11 = add nuw nsw i64 %indvars.iv42, 1
  %arrayidx42 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %indvars.iv48, i64 %11
  %12 = load i32, ptr %arrayidx42, align 4, !tbaa !5, !invariant.load !14
  %cmp43.not = icmp eq i32 %12, 0
  br i1 %cmp43.not, label %for.inc53, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %land.lhs.true38
  %arrayidx49 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %indvars.iv.next49, i64 %indvars.iv42
  %13 = load i32, ptr %arrayidx49, align 4, !tbaa !5, !invariant.load !14
  %cmp50.not = icmp eq i32 %13, 0
  %spec.select36 = select i1 %cmp50.not, i32 %c.1, i32 %5
  %14 = trunc nuw nsw i64 %indvars.iv42 to i32
  %spec.select37 = select i1 %cmp50.not, i32 %d.1, i32 %14
  br label %for.inc53

for.inc53:                                        ; preds = %for.body15.for.inc53_crit_edge, %land.lhs.true44, %land.lhs.true38
  %indvars.iv.next43.pre-phi = phi i64 [ %.pre56, %for.body15.for.inc53_crit_edge ], [ %11, %land.lhs.true44 ], [ %11, %land.lhs.true38 ]
  %b.233 = phi i32 [ %b.1, %for.body15.for.inc53_crit_edge ], [ %b.2.ph, %land.lhs.true44 ], [ %b.2.ph, %land.lhs.true38 ]
  %a.231 = phi i32 [ %a.1, %for.body15.for.inc53_crit_edge ], [ %a.2.ph, %land.lhs.true44 ], [ %a.2.ph, %land.lhs.true38 ]
  %c.2 = phi i32 [ %c.1, %for.body15.for.inc53_crit_edge ], [ %spec.select36, %land.lhs.true44 ], [ %c.1, %land.lhs.true38 ]
  %d.2 = phi i32 [ %d.1, %for.body15.for.inc53_crit_edge ], [ %spec.select37, %land.lhs.true44 ], [ %d.1, %land.lhs.true38 ]
  br label %for.cond13, !llvm.loop !15

for.end58:                                        ; preds = %for.cond10
  %15 = xor i32 %a.0, -1
  %sub60 = add i32 %c.0, %15
  %cmp61 = icmp sgt i32 %sub60, 0
  br i1 %cmp61, label %land.lhs.true62, label %if.end74

land.lhs.true62:                                  ; preds = %for.end58
  %16 = xor i32 %b.0, -1
  %sub64 = add i32 %d.0, %16
  %cmp65 = icmp sgt i32 %sub64, 0
  %mul = mul nuw nsw i32 %sub64, %sub60
  %spec.select58 = select i1 %cmp65, i32 %mul, i32 0
  br label %if.end74

if.end74:                                         ; preds = %land.lhs.true62, %for.end58
  %.sink = phi i32 [ 0, %for.end58 ], [ %spec.select58, %land.lhs.true62 ]
  %call73 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.sink)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4000000, ptr noundef nonnull %sz) #5
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
!13 = distinct !{!13, !10, !11}
!14 = !{}
!15 = distinct !{!15, !10, !11}
