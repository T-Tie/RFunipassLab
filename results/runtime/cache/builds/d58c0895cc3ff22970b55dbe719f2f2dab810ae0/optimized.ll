; ModuleID = '<stdin>'
source_filename = "/tmp/tmp70v4nqrf.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [1000 x [1000 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4000000, ptr noundef nonnull align 16 %a) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %0 = phi i32 [ %3, %for.inc5 ], [ %.pre, %entry ]
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.inc5 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv18, %1
  br i1 %cmp, label %for.cond1.preheader, label %for.cond8.preheader

for.cond1.preheader:                              ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv18
  br label %for.cond1

for.cond8.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %2 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond8

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %3 = phi i32 [ %0, %for.cond1.preheader ], [ %.pre46, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %4 = sext i32 %3 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp2, label %for.inc, label %for.inc5

for.inc:                                          ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %add.ptr)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre46 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc5:                                         ; preds = %for.cond1
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond, !llvm.loop !12

for.cond8:                                        ; preds = %for.cond8.preheader, %for.inc25
  %indvars.iv25 = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next26, %for.inc25 ]
  %exitcond30.not = icmp eq i64 %indvars.iv25, %2
  br i1 %exitcond30.not, label %for.end27, label %for.cond11

for.cond11:                                       ; preds = %for.cond8, %for.inc19
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.inc19 ], [ 0, %for.cond8 ]
  %exitcond.not = icmp eq i64 %indvars.iv21, %wide.trip.count
  br i1 %exitcond.not, label %for.inc25, label %for.body13

for.body13:                                       ; preds = %for.cond11
  %arrayidx17 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv25, i64 %indvars.iv21
  %5 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %5, 0
  br i1 %cmp18, label %for.end27.loopexit, label %for.inc19

for.inc19:                                        ; preds = %for.body13
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond11, !llvm.loop !13

for.inc25:                                        ; preds = %for.cond11
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond8, !llvm.loop !14

for.end27.loopexit:                               ; preds = %for.body13
  %6 = trunc nuw nsw i64 %indvars.iv25 to i32
  %7 = trunc nuw nsw i64 %indvars.iv21 to i32
  %.pre45 = and i64 %indvars.iv25, 4294967295
  br label %for.end27

for.end27:                                        ; preds = %for.cond8, %for.end27.loopexit
  %idxprom31.pre-phi = phi i64 [ %.pre45, %for.end27.loopexit ], [ %2, %for.cond8 ]
  %i.116 = phi i32 [ %6, %for.end27.loopexit ], [ %smax, %for.cond8 ]
  %y1.1 = phi i32 [ %7, %for.end27.loopexit ], [ undef, %for.cond8 ]
  %8 = sext i32 %y1.1 to i64
  %smax34 = call i32 @llvm.smax.i32(i32 %y1.1, i32 %0)
  %wide.trip.count36 = sext i32 %smax34 to i64
  br label %for.cond28

for.cond28:                                       ; preds = %for.body30, %for.end27
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.body30 ], [ %8, %for.end27 ]
  %exitcond37.not = icmp eq i64 %indvars.iv31, %wide.trip.count36
  br i1 %exitcond37.not, label %for.end42, label %for.body30

for.body30:                                       ; preds = %for.cond28
  %indvars.iv.next32 = add nsw i64 %indvars.iv31, 1
  %arrayidx34 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom31.pre-phi, i64 %indvars.iv.next32
  %9 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %cmp35 = icmp ne i32 %9, 0
  %cmp37 = icmp sge i64 %indvars.iv.next32, %1
  %or.cond = or i1 %cmp37, %cmp35
  br i1 %or.cond, label %for.end42.split.loop.exit, label %for.cond28, !llvm.loop !15

for.end42.split.loop.exit:                        ; preds = %for.body30
  %10 = trunc nsw i64 %indvars.iv31 to i32
  br label %for.end42

for.end42:                                        ; preds = %for.cond28, %for.end42.split.loop.exit
  %i.2.lcssa = phi i32 [ %10, %for.end42.split.loop.exit ], [ %smax34, %for.cond28 ]
  %smax41 = call i32 @llvm.smax.i32(i32 %i.116, i32 %0)
  %wide.trip.count43 = zext i32 %smax41 to i64
  br label %for.cond43

for.cond43:                                       ; preds = %for.body45, %for.end42
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.body45 ], [ %idxprom31.pre-phi, %for.end42 ]
  %exitcond44.not = icmp eq i64 %indvars.iv38, %wide.trip.count43
  br i1 %exitcond44.not, label %for.end59, label %for.body45

for.body45:                                       ; preds = %for.cond43
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %arrayidx50 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv.next39, i64 %8
  %11 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %cmp51 = icmp ne i32 %11, 0
  %12 = trunc nuw i64 %indvars.iv.next39 to i32
  %cmp54 = icmp sle i32 %0, %12
  %or.cond7 = or i1 %cmp54, %cmp51
  br i1 %or.cond7, label %for.end59.split.loop.exit, label %for.cond43, !llvm.loop !16

for.end59.split.loop.exit:                        ; preds = %for.body45
  %13 = trunc nuw nsw i64 %indvars.iv38 to i32
  br label %for.end59

for.end59:                                        ; preds = %for.cond43, %for.end59.split.loop.exit
  %i.3.lcssa = phi i32 [ %13, %for.end59.split.loop.exit ], [ %smax41, %for.cond43 ]
  %sub = sub nsw i32 %i.3.lcssa, %i.116
  %cmp60 = icmp slt i32 %sub, 2
  %sub62 = sub nsw i32 %i.2.lcssa, %y1.1
  %cmp63 = icmp slt i32 %sub62, 2
  %or.cond8 = select i1 %cmp60, i1 true, i1 %cmp63
  br i1 %or.cond8, label %cleanup, label %if.end66

if.end66:                                         ; preds = %for.end59
  %sub67 = xor i32 %i.116, -1
  %sub68 = add nsw i32 %i.3.lcssa, %sub67
  %sub69 = xor i32 %y1.1, -1
  %sub70 = add i32 %i.2.lcssa, %sub69
  %mul = mul nsw i32 %sub68, %sub70
  br label %cleanup

cleanup:                                          ; preds = %for.end59, %if.end66
  %mul.sink = phi i32 [ %mul, %if.end66 ], [ 0, %for.end59 ]
  %call71 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul.sink)
  call void @llvm.lifetime.end.p0(i64 noundef 4000000, ptr noundef nonnull %a) #5
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
