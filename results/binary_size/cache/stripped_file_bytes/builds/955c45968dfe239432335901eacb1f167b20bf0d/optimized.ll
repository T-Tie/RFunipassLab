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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %k)
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 2
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #7
  %call4 = call noalias ptr @malloc(i64 noundef %mul) #7
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef %call1)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %1 = load i32, ptr %k, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv, %2
  br i1 %cmp, label %for.body, label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond8

for.body:                                         ; preds = %for.cond
  %arrayidx6 = getelementptr inbounds nuw i32, ptr %call1, i64 %indvars.iv
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond8:                                        ; preds = %for.cond8.preheader, %for.body10
  %indvars.iv33 = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next34, %for.body10 ]
  %exitcond.not = icmp eq i64 %indvars.iv33, %wide.trip.count
  br i1 %exitcond.not, label %for.end15, label %for.body10

for.body10:                                       ; preds = %for.cond8
  %arrayidx12 = getelementptr inbounds nuw i32, ptr %call4, i64 %indvars.iv33
  store i32 1, ptr %arrayidx12, align 4, !tbaa !5
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond8, !llvm.loop !12

for.end15:                                        ; preds = %for.cond8
  %sub = add nsw i32 %1, -2
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc40, %for.end15
  %i.2 = phi i32 [ %sub, %for.end15 ], [ %dec, %for.inc40 ]
  %cmp17 = icmp sgt i32 %i.2, -1
  br i1 %cmp17, label %for.cond19.preheader, label %for.cond42

for.cond19.preheader:                             ; preds = %for.cond16
  %3 = zext nneg i32 %i.2 to i64
  %arrayidx23 = getelementptr inbounds nuw i32, ptr %call1, i64 %3
  %arrayidx30 = getelementptr inbounds nuw i32, ptr %call4, i64 %3
  br label %for.cond19

for.cond19:                                       ; preds = %for.cond19.backedge, %for.cond19.preheader
  %indvars.iv37 = phi i64 [ %3, %for.cond19.preheader ], [ %indvars.iv.next38, %for.cond19.backedge ]
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %4 = trunc nuw i64 %indvars.iv.next38 to i32
  %cmp20 = icmp sgt i32 %1, %4
  br i1 %cmp20, label %for.body21, label %for.inc40

for.body21:                                       ; preds = %for.cond19
  %5 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %arrayidx25 = getelementptr inbounds nuw i32, ptr %call1, i64 %indvars.iv.next38
  %6 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %cmp26.not = icmp slt i32 %5, %6
  br i1 %cmp26.not, label %for.cond19.backedge, label %land.lhs.true

for.cond19.backedge:                              ; preds = %for.body21, %land.lhs.true, %if.then
  br label %for.cond19, !llvm.loop !13

land.lhs.true:                                    ; preds = %for.body21
  %arrayidx28 = getelementptr inbounds nuw i32, ptr %call4, i64 %indvars.iv.next38
  %7 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %8 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %cmp31.not = icmp slt i32 %7, %8
  br i1 %cmp31.not, label %for.cond19.backedge, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %add34 = add nsw i32 %7, 1
  store i32 %add34, ptr %arrayidx30, align 4, !tbaa !5
  br label %for.cond19.backedge

for.inc40:                                        ; preds = %for.cond19
  %dec = add nsw i32 %i.2, -1
  br label %for.cond16, !llvm.loop !14

for.cond42:                                       ; preds = %for.cond16, %for.body44
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.body44 ], [ 0, %for.cond16 ]
  %max.0 = phi i32 [ %spec.select, %for.body44 ], [ 0, %for.cond16 ]
  %exitcond44.not = icmp eq i64 %indvars.iv40, %wide.trip.count
  br i1 %exitcond44.not, label %for.end54, label %for.body44

for.body44:                                       ; preds = %for.cond42
  %arrayidx46 = getelementptr inbounds nuw i32, ptr %call4, i64 %indvars.iv40
  %9 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %9, i32 %max.0)
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond42, !llvm.loop !15

for.end54:                                        ; preds = %for.cond42
  %call55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %max.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
