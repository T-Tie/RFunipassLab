; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz0ldmhts.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 1, %entry ]
  %0 = add nsw i64 %indvars.iv, -1
  %arrayidx1 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %0
  %1 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %while.cond6, label %while.body

while.body:                                       ; preds = %while.cond
  %arrayidx3 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %while.cond, !llvm.loop !9

while.cond6:                                      ; preds = %while.cond37, %while.cond
  %indvars.iv33.lcssa.sink = phi i64 [ %indvars.iv, %while.cond ], [ %indvars.iv33, %while.cond37 ]
  %.sink37 = phi i32 [ -2, %while.cond ], [ -1, %while.cond37 ]
  %2 = load i32, ptr %a, align 16, !tbaa !5
  %cmp8.not = icmp eq i32 %2, -1
  br i1 %cmp8.not, label %while.end50, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.cond6
  %3 = trunc i64 %indvars.iv33.lcssa.sink to i32
  %4 = add i32 %.sink37, %3
  %smax = call i32 @llvm.smax.i32(i32 %4, i32 0)
  %wide.trip.count31 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %4 to i64
  br label %for.cond

for.cond.loopexit:                                ; preds = %for.cond11
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond, !llvm.loop !12

for.cond:                                         ; preds = %for.cond.preheader, %for.cond.loopexit
  %indvars.iv28 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next29, %for.cond.loopexit ]
  %indvars.iv23 = phi i64 [ 1, %for.cond.preheader ], [ %indvars.iv.next24, %for.cond.loopexit ]
  %count.0 = phi i32 [ 0, %for.cond.preheader ], [ %count.1, %for.cond.loopexit ]
  %exitcond32.not = icmp eq i64 %indvars.iv28, %wide.trip.count31
  br i1 %exitcond32.not, label %for.end29, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx17 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv28
  br label %for.cond11

for.cond11:                                       ; preds = %for.body13, %for.body
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.body13 ], [ %indvars.iv23, %for.body ]
  %count.1 = phi i32 [ %count.2, %for.body13 ], [ %count.0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv25, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.loopexit, label %for.body13

for.body13:                                       ; preds = %for.cond11
  %arrayidx15 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv25
  %5 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %6 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %mul = shl nsw i32 %6, 1
  %cmp18 = icmp eq i32 %5, %mul
  %mul23 = shl nsw i32 %5, 1
  %cmp24 = icmp eq i32 %6, %mul23
  %or.cond = select i1 %cmp18, i1 true, i1 %cmp24
  %inc25 = zext i1 %or.cond to i32
  %count.2 = add nsw i32 %count.1, %inc25
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond11, !llvm.loop !13

for.end29:                                        ; preds = %for.cond
  %call30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %count.0)
  %call32 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a)
  %7 = load i32, ptr %a, align 16, !tbaa !5
  %cmp34 = icmp eq i32 %7, -1
  br i1 %cmp34, label %while.end50, label %while.cond37

while.cond37:                                     ; preds = %for.end29, %while.body42
  %8 = phi i32 [ %.pre, %while.body42 ], [ %7, %for.end29 ]
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %while.body42 ], [ 1, %for.end29 ]
  %cmp41.not = icmp eq i32 %8, 0
  br i1 %cmp41.not, label %while.cond6, label %while.body42

while.body42:                                     ; preds = %while.cond37
  %arrayidx44 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv33
  %call45 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx44)
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %.pre = load i32, ptr %arrayidx44, align 4, !tbaa !5
  br label %while.cond37, !llvm.loop !14

while.end50:                                      ; preds = %for.end29, %while.cond6
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %a) #5
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
declare i32 @llvm.smax.i32(i32, i32) #4

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
