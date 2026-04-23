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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = phi i32 [ %2, %for.inc7 ], [ %.pre, %entry ]
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.inc7 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv20, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count31 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %2 = phi i32 [ %.pre46, %for.inc ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv20, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre46 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc46
  %indvars.iv27 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next28, %for.inc46 ]
  %m1.0 = phi i32 [ undef, %for.cond10.preheader ], [ %m1.1, %for.inc46 ]
  %n1.0 = phi i32 [ undef, %for.cond10.preheader ], [ %n1.1, %for.inc46 ]
  %t.0 = phi i32 [ 0, %for.cond10.preheader ], [ %t.1, %for.inc46 ]
  %exitcond32.not = icmp eq i64 %indvars.iv27, %wide.trip.count31
  br i1 %exitcond32.not, label %for.cond49.preheader, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond10
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %tobool.not = icmp ne i32 %t.0, 0
  br label %for.cond13

for.cond49.preheader:                             ; preds = %for.cond10
  %wide.trip.count38 = zext i32 %0 to i64
  br label %for.cond49

for.cond13:                                       ; preds = %for.cond13.backedge, %for.cond13.preheader
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.cond13.backedge ], [ 0, %for.cond13.preheader ]
  %exitcond.not = icmp eq i64 %indvars.iv23, %wide.trip.count
  br i1 %exitcond.not, label %for.inc46, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv27, i64 %indvars.iv23
  %4 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !13
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %arrayidx23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv27, i64 %indvars.iv.next24
  %5 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !13
  %cmp24 = icmp eq i32 %4, %5
  br i1 %cmp24, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body15
  %arrayidx33 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next28, i64 %indvars.iv23
  %6 = load i32, ptr %arrayidx33, align 4, !tbaa !5, !invariant.load !13
  %7 = or i32 %6, %4
  %or.cond = icmp eq i32 %7, 0
  %brmerge = select i1 %or.cond, i1 true, i1 %tobool.not
  br i1 %brmerge, label %for.inc46.split.loop.exit, label %for.cond13.backedge

if.end:                                           ; preds = %for.body15
  br i1 %tobool.not, label %for.inc46, label %for.cond13.backedge

for.cond13.backedge:                              ; preds = %if.end, %land.lhs.true
  br label %for.cond13, !llvm.loop !14

for.inc46.split.loop.exit:                        ; preds = %land.lhs.true
  %8 = trunc nuw nsw i64 %indvars.iv27 to i32
  %i.1.mux.le = select i1 %or.cond, i32 %8, i32 %m1.0
  %9 = trunc nuw nsw i64 %indvars.iv23 to i32
  %j.1.mux.le = select i1 %or.cond, i32 %9, i32 %n1.0
  %.mux.le = select i1 %or.cond, i32 1, i32 %t.0
  br label %for.inc46

for.inc46:                                        ; preds = %if.end, %for.cond13, %for.inc46.split.loop.exit
  %m1.1 = phi i32 [ %i.1.mux.le, %for.inc46.split.loop.exit ], [ %m1.0, %for.cond13 ], [ %m1.0, %if.end ]
  %n1.1 = phi i32 [ %j.1.mux.le, %for.inc46.split.loop.exit ], [ %n1.0, %for.cond13 ], [ %n1.0, %if.end ]
  %t.1 = phi i32 [ %.mux.le, %for.inc46.split.loop.exit ], [ %t.0, %for.cond13 ], [ %t.0, %if.end ]
  br label %for.cond10, !llvm.loop !15

for.cond49:                                       ; preds = %for.cond49.preheader, %for.inc89
  %indvars.iv40 = phi i64 [ 0, %for.cond49.preheader ], [ %indvars.iv.next41, %for.inc89 ]
  %m2.0 = phi i32 [ undef, %for.cond49.preheader ], [ %m2.1, %for.inc89 ]
  %n2.0 = phi i32 [ undef, %for.cond49.preheader ], [ %n2.1, %for.inc89 ]
  %t.2 = phi i32 [ 0, %for.cond49.preheader ], [ %t.3, %for.inc89 ]
  %exitcond45.not = icmp eq i64 %indvars.iv40, %wide.trip.count31
  br i1 %exitcond45.not, label %for.end91, label %for.cond52.preheader

for.cond52.preheader:                             ; preds = %for.cond49
  %10 = add nsw i64 %indvars.iv40, -1
  %tobool83.not = icmp ne i32 %t.2, 0
  br label %for.cond52

for.cond52:                                       ; preds = %for.cond52.preheader, %for.inc86
  %indvars.iv33 = phi i64 [ 0, %for.cond52.preheader ], [ %indvars.iv.next34, %for.inc86 ]
  %exitcond39.not = icmp eq i64 %indvars.iv33, %wide.trip.count38
  br i1 %exitcond39.not, label %for.inc89, label %for.body54

for.body54:                                       ; preds = %for.cond52
  %arrayidx58 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv33, i64 %indvars.iv40
  %11 = load i32, ptr %arrayidx58, align 4, !tbaa !5, !invariant.load !13
  %arrayidx62 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv33, i64 %10
  %12 = load i32, ptr %arrayidx62, align 4, !tbaa !5, !invariant.load !13
  %cmp63 = icmp eq i32 %11, %12
  br i1 %cmp63, label %land.lhs.true64, label %if.end82

land.lhs.true64:                                  ; preds = %for.body54
  %13 = add nsw i64 %indvars.iv33, -1
  %arrayidx73 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %13, i64 %indvars.iv40
  %14 = load i32, ptr %arrayidx73, align 4, !tbaa !5, !invariant.load !13
  %15 = or i32 %14, %11
  %or.cond16 = icmp eq i32 %15, 0
  %brmerge17 = select i1 %or.cond16, i1 true, i1 %tobool83.not
  br i1 %brmerge17, label %for.inc89.split.loop.exit, label %for.inc86

if.end82:                                         ; preds = %for.body54
  br i1 %tobool83.not, label %for.inc89, label %for.inc86

for.inc86:                                        ; preds = %land.lhs.true64, %if.end82
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond52, !llvm.loop !16

for.inc89.split.loop.exit:                        ; preds = %land.lhs.true64
  %16 = trunc nuw nsw i64 %indvars.iv33 to i32
  %i.2.mux.le = select i1 %or.cond16, i32 %16, i32 %m2.0
  %17 = trunc nuw nsw i64 %indvars.iv40 to i32
  %j.2.mux.le = select i1 %or.cond16, i32 %17, i32 %n2.0
  %.mux18.le = select i1 %or.cond16, i32 1, i32 %t.2
  br label %for.inc89

for.inc89:                                        ; preds = %if.end82, %for.cond52, %for.inc89.split.loop.exit
  %m2.1 = phi i32 [ %i.2.mux.le, %for.inc89.split.loop.exit ], [ %m2.0, %for.cond52 ], [ %m2.0, %if.end82 ]
  %n2.1 = phi i32 [ %j.2.mux.le, %for.inc89.split.loop.exit ], [ %n2.0, %for.cond52 ], [ %n2.0, %if.end82 ]
  %t.3 = phi i32 [ %.mux18.le, %for.inc89.split.loop.exit ], [ %t.2, %for.cond52 ], [ %t.2, %if.end82 ]
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond49, !llvm.loop !17

for.end91:                                        ; preds = %for.cond49
  %18 = xor i32 %m1.0, -1
  %sub93 = add i32 %m2.0, %18
  %19 = xor i32 %n1.0, -1
  %sub95 = add i32 %n2.0, %19
  %mul = mul nsw i32 %sub95, %sub93
  %call96 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #5
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
