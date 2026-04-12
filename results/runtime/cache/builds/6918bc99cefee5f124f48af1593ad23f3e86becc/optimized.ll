; ModuleID = '<stdin>'
source_filename = "/tmp/tmpdglag8ou.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x [100 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = phi i32 [ %2, %for.inc7 ], [ %.pre, %entry ]
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.inc7 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv4, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %2 = phi i32 [ %.pre23, %for.inc ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv4, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre23 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc19
  %indvars.iv7 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next8, %for.inc19 ]
  %exitcond.not = icmp eq i64 %indvars.iv7, %wide.trip.count
  br i1 %exitcond.not, label %for.end22, label %for.body13

for.body13:                                       ; preds = %for.cond10
  %arrayidx17 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv7, i64 %indvars.iv7
  %4 = load i32, ptr %arrayidx17, align 4, !tbaa !5, !invariant.load !13
  %cmp18 = icmp eq i32 %4, 0
  br i1 %cmp18, label %for.body13.for.end22_crit_edge, label %for.inc19

for.body13.for.end22_crit_edge:                   ; preds = %for.body13
  %5 = trunc nuw nsw i64 %indvars.iv7 to i32
  %.pre24 = and i64 %indvars.iv7, 4294967295
  br label %for.end22

for.inc19:                                        ; preds = %for.body13
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond10, !llvm.loop !14

for.end22:                                        ; preds = %for.cond10, %for.body13.for.end22_crit_edge
  %idxprom26.pre-phi = phi i64 [ %.pre24, %for.body13.for.end22_crit_edge ], [ %wide.trip.count, %for.cond10 ]
  %i.1.lcssa = phi i32 [ %5, %for.body13.for.end22_crit_edge ], [ %smax, %for.cond10 ]
  %smax14 = call i32 @llvm.smax.i32(i32 %i.1.lcssa, i32 %0)
  %wide.trip.count16 = zext i32 %smax14 to i64
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc33, %for.end22
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.inc33 ], [ %idxprom26.pre-phi, %for.end22 ]
  %exitcond17.not = icmp eq i64 %indvars.iv11, %wide.trip.count16
  br i1 %exitcond17.not, label %for.end35, label %for.body25

for.body25:                                       ; preds = %for.cond23
  %arrayidx29 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom26.pre-phi, i64 %indvars.iv11
  %6 = load i32, ptr %arrayidx29, align 4, !tbaa !5, !invariant.load !13
  %cmp30 = icmp eq i32 %6, 255
  br i1 %cmp30, label %for.end35.split.loop.exit, label %for.inc33

for.inc33:                                        ; preds = %for.body25
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond23, !llvm.loop !15

for.end35.split.loop.exit:                        ; preds = %for.body25
  %7 = trunc nuw nsw i64 %indvars.iv11 to i32
  br label %for.end35

for.end35:                                        ; preds = %for.cond23, %for.end35.split.loop.exit
  %j.2.lcssa = phi i32 [ %7, %for.end35.split.loop.exit ], [ %smax14, %for.cond23 ]
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc46, %for.end35
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.inc46 ], [ %idxprom26.pre-phi, %for.end35 ]
  %exitcond22.not = icmp eq i64 %indvars.iv18, %wide.trip.count16
  br i1 %exitcond22.not, label %for.end48, label %for.body38

for.body38:                                       ; preds = %for.cond36
  %arrayidx42 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv18, i64 %idxprom26.pre-phi
  %8 = load i32, ptr %arrayidx42, align 4, !tbaa !5, !invariant.load !13
  %cmp43 = icmp eq i32 %8, 255
  br i1 %cmp43, label %for.end48.split.loop.exit, label %for.inc46

for.inc46:                                        ; preds = %for.body38
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond36, !llvm.loop !16

for.end48.split.loop.exit:                        ; preds = %for.body38
  %9 = trunc nuw nsw i64 %indvars.iv18 to i32
  br label %for.end48

for.end48:                                        ; preds = %for.cond36, %for.end48.split.loop.exit
  %i.2.lcssa = phi i32 [ %9, %for.end48.split.loop.exit ], [ %smax14, %for.cond36 ]
  %reass.sub = sub nsw i32 %j.2.lcssa, %i.1.lcssa
  %sub50 = add i32 %reass.sub, -2
  %reass.sub2 = sub nsw i32 %i.2.lcssa, %i.1.lcssa
  %sub51 = add i32 %reass.sub2, -2
  %mul = mul nsw i32 %sub51, %sub50
  %call52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #5
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
attributes #4 = { nofree nounwind willreturn }
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
