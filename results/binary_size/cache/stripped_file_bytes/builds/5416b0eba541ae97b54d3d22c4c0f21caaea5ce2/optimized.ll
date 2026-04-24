; ModuleID = '<stdin>'
source_filename = "/tmp/tmpk_ld1n9b.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %k = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %k) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %k)
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 2
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #6
  %1 = load i32, ptr %k, align 4, !tbaa !5
  %conv2 = sext i32 %1 to i64
  %mul3 = shl nsw i64 %conv2, 2
  %call4 = call noalias ptr @malloc(i64 noundef %mul3) #6
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef %call1)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %2 = load i32, ptr %k, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp = icmp slt i64 %indvars.iv, %3
  br i1 %cmp, label %for.body, label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond8

for.body:                                         ; preds = %for.cond
  %arrayidx6 = getelementptr inbounds nuw i32, ptr %call1, i64 %indvars.iv
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond8:                                        ; preds = %for.cond8.preheader, %for.body10
  %indvars.iv22 = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next23, %for.body10 ]
  %exitcond.not = icmp eq i64 %indvars.iv22, %wide.trip.count
  br i1 %exitcond.not, label %for.end15, label %for.body10

for.body10:                                       ; preds = %for.cond8
  %arrayidx12 = getelementptr inbounds nuw i32, ptr %call4, i64 %indvars.iv22
  store i32 1, ptr %arrayidx12, align 4, !tbaa !5
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond8, !llvm.loop !12

for.end15:                                        ; preds = %for.cond8
  %sub = add nsw i32 %2, -2
  br label %for.cond16

for.cond16:                                       ; preds = %for.end39, %for.end15
  %i.2 = phi i32 [ %sub, %for.end15 ], [ %dec, %for.end39 ]
  %cmp17 = icmp sgt i32 %i.2, -1
  br i1 %cmp17, label %for.cond19.preheader, label %for.cond42

for.cond19.preheader:                             ; preds = %for.cond16
  %4 = zext nneg i32 %i.2 to i64
  %arrayidx23 = getelementptr inbounds nuw i32, ptr %call1, i64 %4
  %arrayidx30 = getelementptr inbounds nuw i32, ptr %call4, i64 %4
  br label %for.cond19

for.cond19:                                       ; preds = %for.cond19.preheader, %if.end
  %indvars.iv26 = phi i64 [ %4, %for.cond19.preheader ], [ %indvars.iv.next27, %if.end ]
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %5 = trunc nuw i64 %indvars.iv.next27 to i32
  %cmp20 = icmp sgt i32 %2, %5
  br i1 %cmp20, label %for.body21, label %for.end39

for.body21:                                       ; preds = %for.cond19
  %6 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !13
  %arrayidx25 = getelementptr inbounds nuw i32, ptr %call1, i64 %indvars.iv.next27
  %7 = load i32, ptr %arrayidx25, align 4, !tbaa !5, !invariant.load !13
  %cmp26.not = icmp slt i32 %6, %7
  br i1 %cmp26.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body21
  %arrayidx28 = getelementptr inbounds nuw i32, ptr %call4, i64 %indvars.iv.next27
  %8 = load i32, ptr %arrayidx28, align 4, !tbaa !5, !invariant.load !13
  %9 = load i32, ptr %arrayidx30, align 4, !tbaa !5, !invariant.load !13
  %cmp31.not = icmp slt i32 %8, %9
  br i1 %cmp31.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %add34 = add nsw i32 %8, 1
  store i32 %add34, ptr %arrayidx30, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body21
  br label %for.cond19, !llvm.loop !14

for.end39:                                        ; preds = %for.cond19
  %dec = add nsw i32 %i.2, -1
  br label %for.cond16, !llvm.loop !15

for.cond42:                                       ; preds = %for.cond16, %for.body44
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.body44 ], [ 0, %for.cond16 ]
  %max.0 = phi i32 [ %spec.select, %for.body44 ], [ 0, %for.cond16 ]
  %exitcond33.not = icmp eq i64 %indvars.iv29, %wide.trip.count
  br i1 %exitcond33.not, label %for.end54, label %for.body44

for.body44:                                       ; preds = %for.cond42
  %arrayidx46 = getelementptr inbounds nuw i32, ptr %call4, i64 %indvars.iv29
  %10 = load i32, ptr %arrayidx46, align 4, !tbaa !5, !invariant.load !13
  %spec.select = call i32 @llvm.smax.i32(i32 %10, i32 %max.0)
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond42, !llvm.loop !16

for.end54:                                        ; preds = %for.cond42
  %call55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %max.0)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %k) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind }

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
