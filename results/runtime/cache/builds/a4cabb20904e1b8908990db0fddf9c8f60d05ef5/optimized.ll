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
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %0 = phi i32 [ %2, %for.end ], [ %.pre, %entry ]
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.end ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv29, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %smax = call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.body3
  %2 = phi i32 [ %.pre52, %for.body3 ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv29, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre52 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %if.end
  %indvars.iv32 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next33, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv32, %wide.trip.count
  br i1 %exitcond.not, label %for.end22, label %for.body13

for.body13:                                       ; preds = %for.cond10
  %arrayidx17 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv32, i64 %indvars.iv32
  %4 = load i32, ptr %arrayidx17, align 4, !tbaa !5, !invariant.load !13
  %cmp18 = icmp eq i32 %4, 0
  br i1 %cmp18, label %for.body13.for.end22_crit_edge, label %if.end

for.body13.for.end22_crit_edge:                   ; preds = %for.body13
  %5 = trunc nuw nsw i64 %indvars.iv32 to i32
  %.pre53 = and i64 %indvars.iv32, 4294967295
  br label %for.end22

if.end:                                           ; preds = %for.body13
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond10, !llvm.loop !14

for.end22:                                        ; preds = %for.cond10, %for.body13.for.end22_crit_edge
  %idxprom26.pre-phi = phi i64 [ %.pre53, %for.body13.for.end22_crit_edge ], [ %wide.trip.count, %for.cond10 ]
  %j.1.lcssa = phi i32 [ %5, %for.body13.for.end22_crit_edge ], [ %smax, %for.cond10 ]
  %smax41 = call i32 @llvm.smax.i32(i32 %j.1.lcssa, i32 %0)
  %wide.trip.count43 = zext i32 %smax41 to i64
  br label %for.cond23

for.cond23:                                       ; preds = %if.end32, %for.end22
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %if.end32 ], [ %idxprom26.pre-phi, %for.end22 ]
  %exitcond44.not = icmp eq i64 %indvars.iv38, %wide.trip.count43
  br i1 %exitcond44.not, label %for.end35, label %for.body25

for.body25:                                       ; preds = %for.cond23
  %arrayidx29 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom26.pre-phi, i64 %indvars.iv38
  %6 = load i32, ptr %arrayidx29, align 4, !tbaa !5, !invariant.load !13
  %cmp30 = icmp eq i32 %6, 255
  br i1 %cmp30, label %for.end35.split.loop.exit57, label %if.end32

if.end32:                                         ; preds = %for.body25
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond23, !llvm.loop !15

for.end35.split.loop.exit57:                      ; preds = %for.body25
  %7 = trunc nuw nsw i64 %indvars.iv38 to i32
  br label %for.end35

for.end35:                                        ; preds = %for.cond23, %for.end35.split.loop.exit57
  %j.2.lcssa = phi i32 [ %7, %for.end35.split.loop.exit57 ], [ %smax41, %for.cond23 ]
  br label %for.cond36

for.cond36:                                       ; preds = %if.end45, %for.end35
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %if.end45 ], [ %idxprom26.pre-phi, %for.end35 ]
  %exitcond51.not = icmp eq i64 %indvars.iv45, %wide.trip.count43
  br i1 %exitcond51.not, label %for.end48, label %for.body38

for.body38:                                       ; preds = %for.cond36
  %arrayidx42 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv45, i64 %idxprom26.pre-phi
  %8 = load i32, ptr %arrayidx42, align 4, !tbaa !5, !invariant.load !13
  %cmp43 = icmp eq i32 %8, 255
  br i1 %cmp43, label %for.end48.split.loop.exit59, label %if.end45

if.end45:                                         ; preds = %for.body38
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %for.cond36, !llvm.loop !16

for.end48.split.loop.exit59:                      ; preds = %for.body38
  %9 = trunc nuw nsw i64 %indvars.iv45 to i32
  br label %for.end48

for.end48:                                        ; preds = %for.cond36, %for.end48.split.loop.exit59
  %i.2.lcssa = phi i32 [ %9, %for.end48.split.loop.exit59 ], [ %smax41, %for.cond36 ]
  %reass.sub69 = sub i32 -2, %j.1.lcssa
  %sub50 = add i32 %j.2.lcssa, %reass.sub69
  %sub51 = add i32 %i.2.lcssa, %reass.sub69
  %mul = mul nsw i32 %sub51, %sub50
  %call52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %mul) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

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
