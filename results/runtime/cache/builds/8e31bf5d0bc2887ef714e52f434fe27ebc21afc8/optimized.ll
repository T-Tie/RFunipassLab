; ModuleID = '<stdin>'
source_filename = "/tmp/tmph2s25k99.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [20006 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 80024, ptr nonnull %a) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [20006 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond5, %for.cond
  %2 = phi i32 [ %0, %for.cond ], [ %5, %for.cond5 ]
  %indvars.iv28 = phi i64 [ 0, %for.cond ], [ %indvars.iv.next29, %for.cond5 ]
  %n.promoted23 = phi i32 [ %0, %for.cond ], [ %n.promoted22, %for.cond5 ]
  %3 = sext i32 %n.promoted23 to i64
  %cmp3 = icmp slt i64 %indvars.iv28, %3
  br i1 %cmp3, label %for.body4, label %for.cond32

for.body4:                                        ; preds = %for.cond2
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %arrayidx9 = getelementptr inbounds nuw [20006 x i32], ptr %a, i64 0, i64 %indvars.iv28
  %4 = trunc nuw i64 %indvars.iv.next29 to i32
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc26, %for.body4
  %5 = phi i32 [ %2, %for.body4 ], [ %9, %for.inc26 ]
  %n.promoted22 = phi i32 [ %n.promoted23, %for.body4 ], [ %n.promoted21, %for.inc26 ]
  %dec19 = phi i32 [ %n.promoted23, %for.body4 ], [ %dec18, %for.inc26 ]
  %j.0 = phi i32 [ %4, %for.body4 ], [ %inc27, %for.inc26 ]
  %cmp6 = icmp slt i32 %j.0, %dec19
  br i1 %cmp6, label %for.body7, label %for.cond2, !llvm.loop !12

for.body7:                                        ; preds = %for.cond5
  %6 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %idxprom10 = sext i32 %j.0 to i64
  %arrayidx11 = getelementptr inbounds [20006 x i32], ptr %a, i64 0, i64 %idxprom10
  %7 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %6, %7
  br i1 %cmp12, label %for.cond13.preheader, label %for.inc26

for.cond13.preheader:                             ; preds = %for.body7
  %smax = call i32 @llvm.smax.i32(i32 %dec19, i32 %j.0)
  %wide.trip.count = sext i32 %smax to i64
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.body15
  %indvars.iv25 = phi i64 [ %idxprom10, %for.cond13.preheader ], [ %indvars.iv.next26, %for.body15 ]
  %exitcond.not = icmp eq i64 %indvars.iv25, %wide.trip.count
  br i1 %exitcond.not, label %for.end23, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %indvars.iv.next26 = add nsw i64 %indvars.iv25, 1
  %arrayidx18 = getelementptr inbounds [20006 x i32], ptr %a, i64 0, i64 %indvars.iv.next26
  %8 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %arrayidx20 = getelementptr inbounds [20006 x i32], ptr %a, i64 0, i64 %indvars.iv25
  store i32 %8, ptr %arrayidx20, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !13

for.end23:                                        ; preds = %for.cond13
  %dec = add nsw i32 %dec19, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  %dec24 = add nsw i32 %j.0, -1
  br label %for.inc26

for.inc26:                                        ; preds = %for.body7, %for.end23
  %9 = phi i32 [ %dec, %for.end23 ], [ %5, %for.body7 ]
  %n.promoted21 = phi i32 [ %dec, %for.end23 ], [ %n.promoted22, %for.body7 ]
  %dec18 = phi i32 [ %dec, %for.end23 ], [ %dec19, %for.body7 ]
  %j.1 = phi i32 [ %dec24, %for.end23 ], [ %j.0, %for.body7 ]
  %inc27 = add nsw i32 %j.1, 1
  br label %for.cond5, !llvm.loop !14

for.cond32:                                       ; preds = %for.cond2, %for.inc42
  %10 = phi i32 [ %.pre, %for.inc42 ], [ %2, %for.cond2 ]
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.inc42 ], [ 0, %for.cond2 ]
  %11 = sext i32 %10 to i64
  %cmp33 = icmp slt i64 %indvars.iv31, %11
  br i1 %cmp33, label %for.body34, label %for.end44

for.body34:                                       ; preds = %for.cond32
  %arrayidx36 = getelementptr inbounds nuw [20006 x i32], ptr %a, i64 0, i64 %indvars.iv31
  %12 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %call37 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %12)
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %sub = add nsw i32 %13, -1
  %14 = zext i32 %sub to i64
  %cmp38.not = icmp eq i64 %indvars.iv31, %14
  br i1 %cmp38.not, label %for.inc42, label %if.then39

if.then39:                                        ; preds = %for.body34
  %putchar = call i32 @putchar(i32 32)
  %.pre.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc42

for.inc42:                                        ; preds = %for.body34, %if.then39
  %.pre = phi i32 [ %13, %for.body34 ], [ %.pre.pre, %if.then39 ]
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond32, !llvm.loop !15

for.end44:                                        ; preds = %for.cond32
  call void @llvm.lifetime.end.p0(i64 80024, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
