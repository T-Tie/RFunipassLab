; ModuleID = '<stdin>'
source_filename = "/tmp/tmpilz4kik4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %s = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull %s) #5
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.inc13 ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv26, %1
  br i1 %cmp, label %for.cond1, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count37 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond16

for.cond1:                                        ; preds = %for.cond, %for.inc
  %2 = phi i32 [ %.pre, %for.inc ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %s, i64 0, i64 %indvars.iv26, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %4 = trunc nuw nsw i64 %indvars.iv to i32
  %sub = add nsw i32 %2, -1
  %cmp7 = icmp eq i32 %sub, %4
  br i1 %cmp7, label %if.then, label %for.inc13

if.then:                                          ; preds = %for.end
  %idxprom10 = and i64 %indvars.iv, 4294967295
  %arrayidx11 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %s, i64 0, i64 %indvars.iv26, i64 %idxprom10
  %call12 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx11)
  br label %for.inc13

for.inc13:                                        ; preds = %for.end, %if.then
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond, !llvm.loop !12

for.cond16:                                       ; preds = %for.end32, %for.cond16.preheader
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.end32 ], [ 0, %for.cond16.preheader ]
  %exitcond38.not = icmp eq i64 %indvars.iv33, %wide.trip.count37
  br i1 %exitcond38.not, label %for.end38, label %for.cond19

for.cond19:                                       ; preds = %for.cond16, %for.body21
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.body21 ], [ 0, %for.cond16 ]
  %q.2 = phi i32 [ %spec.select, %for.body21 ], [ 0, %for.cond16 ]
  %exitcond.not = icmp eq i64 %indvars.iv29, %wide.trip.count
  br i1 %exitcond.not, label %for.end32, label %for.body21

for.body21:                                       ; preds = %for.cond19
  %arrayidx25 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %s, i64 0, i64 %indvars.iv33, i64 %indvars.iv29
  %5 = load i32, ptr %arrayidx25, align 4, !tbaa !5, !invariant.load !13
  %cmp26 = icmp eq i32 %5, 0
  %inc28 = zext i1 %cmp26 to i32
  %spec.select = add nuw nsw i32 %q.2, %inc28
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond19, !llvm.loop !14

for.end32:                                        ; preds = %for.cond19
  %cmp33.not = icmp eq i32 %q.2, 0
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br i1 %cmp33.not, label %for.cond16, label %for.end38, !llvm.loop !15

for.end38:                                        ; preds = %for.end32, %for.cond16
  %q.1 = phi i32 [ 0, %for.cond16 ], [ %q.2, %for.end32 ]
  br label %for.cond39

for.cond39:                                       ; preds = %for.end55, %for.end38
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.end55 ], [ 0, %for.end38 ]
  %exitcond49.not = icmp eq i64 %indvars.iv45, %wide.trip.count37
  br i1 %exitcond49.not, label %for.end61, label %for.cond42

for.cond42:                                       ; preds = %for.cond39, %for.body44
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.body44 ], [ 0, %for.cond39 ]
  %m.2 = phi i32 [ %spec.select22, %for.body44 ], [ 0, %for.cond39 ]
  %exitcond44.not = icmp eq i64 %indvars.iv39, %wide.trip.count
  br i1 %exitcond44.not, label %for.end55, label %for.body44

for.body44:                                       ; preds = %for.cond42
  %arrayidx48 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %s, i64 0, i64 %indvars.iv39, i64 %indvars.iv45
  %6 = load i32, ptr %arrayidx48, align 4, !tbaa !5, !invariant.load !13
  %cmp49 = icmp eq i32 %6, 0
  %inc51 = zext i1 %cmp49 to i32
  %spec.select22 = add nuw nsw i32 %m.2, %inc51
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond42, !llvm.loop !16

for.end55:                                        ; preds = %for.cond42
  %cmp56.not = icmp eq i32 %m.2, 0
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br i1 %cmp56.not, label %for.cond39, label %for.end61, !llvm.loop !17

for.end61:                                        ; preds = %for.end55, %for.cond39
  %m.1 = phi i32 [ 0, %for.cond39 ], [ %m.2, %for.end55 ]
  %sub62 = add nsw i32 %q.1, -2
  %sub63 = add nsw i32 %m.1, -2
  %mul = mul nsw i32 %sub63, %sub62
  %call64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %s) #5
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
