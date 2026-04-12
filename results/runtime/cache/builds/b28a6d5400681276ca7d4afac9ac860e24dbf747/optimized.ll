; ModuleID = '<stdin>'
source_filename = "/tmp/tmpayxu8a7v.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %k = alloca i32, align 4
  %a = alloca [25 x i32], align 16
  %b = alloca [25 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %k) #4
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull align 16 %b) #4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 25
  br i1 %exitcond.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [25 x i32], ptr %b, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %k)
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.end
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.inc7 ], [ 0, %for.end ]
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp2 = icmp slt i64 %indvars.iv22, %1
  br i1 %cmp2, label %for.inc7, label %for.end9

for.inc7:                                         ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [25 x i32], ptr %a, i64 0, i64 %indvars.iv22
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond1, !llvm.loop !12

for.end9:                                         ; preds = %for.cond1
  %sub12 = add nsw i32 %0, -2
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc38, %for.end9
  %j.0 = phi i32 [ %sub12, %for.end9 ], [ %dec, %for.inc38 ]
  %cmp14 = icmp sgt i32 %j.0, -1
  br i1 %cmp14, label %for.cond16.preheader, label %for.cond40.preheader

for.cond40.preheader:                             ; preds = %for.cond13
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond40

for.cond16.preheader:                             ; preds = %for.cond13
  %2 = zext nneg i32 %j.0 to i64
  %arrayidx22 = getelementptr inbounds nuw [25 x i32], ptr %a, i64 0, i64 %2
  %arrayidx25 = getelementptr inbounds nuw [25 x i32], ptr %b, i64 0, i64 %2
  br label %for.cond16

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc35
  %indvars.iv25 = phi i64 [ %2, %for.cond16.preheader ], [ %indvars.iv.next26, %for.inc35 ]
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %3 = trunc nuw i64 %indvars.iv.next26 to i32
  %cmp17 = icmp sgt i32 %0, %3
  br i1 %cmp17, label %for.body18, label %for.inc38

for.body18:                                       ; preds = %for.cond16
  %arrayidx20 = getelementptr inbounds nuw [25 x i32], ptr %a, i64 0, i64 %indvars.iv.next26
  %4 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !13
  %5 = load i32, ptr %arrayidx22, align 4, !tbaa !5, !invariant.load !13
  %cmp23.not = icmp sgt i32 %4, %5
  br i1 %cmp23.not, label %for.inc35, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body18
  %6 = load i32, ptr %arrayidx25, align 4, !tbaa !5, !invariant.load !13
  %arrayidx27 = getelementptr inbounds nuw [25 x i32], ptr %b, i64 0, i64 %indvars.iv.next26
  %7 = load i32, ptr %arrayidx27, align 4, !tbaa !5, !invariant.load !13
  %add28 = add nsw i32 %7, 1
  %spec.store.select = call i32 @llvm.smax.i32(i32 %6, i32 %add28)
  store i32 %spec.store.select, ptr %arrayidx25, align 4
  br label %for.inc35

for.inc35:                                        ; preds = %land.lhs.true, %for.body18
  br label %for.cond16, !llvm.loop !14

for.inc38:                                        ; preds = %for.cond16
  %dec = add nsw i32 %j.0, -1
  br label %for.cond13, !llvm.loop !15

for.cond40:                                       ; preds = %for.cond40.preheader, %for.body42
  %indvars.iv28 = phi i64 [ 0, %for.cond40.preheader ], [ %indvars.iv.next29, %for.body42 ]
  %max.0 = phi i32 [ 0, %for.cond40.preheader ], [ %spec.select, %for.body42 ]
  %exitcond32.not = icmp eq i64 %indvars.iv28, %wide.trip.count
  br i1 %exitcond32.not, label %for.end52, label %for.body42

for.body42:                                       ; preds = %for.cond40
  %arrayidx44 = getelementptr inbounds nuw [25 x i32], ptr %b, i64 0, i64 %indvars.iv28
  %8 = load i32, ptr %arrayidx44, align 4, !tbaa !5, !invariant.load !13
  %spec.select = call i32 @llvm.smax.i32(i32 %8, i32 %max.0)
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond40, !llvm.loop !16

for.end52:                                        ; preds = %for.cond40
  %call53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %max.0)
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %k) #5
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
