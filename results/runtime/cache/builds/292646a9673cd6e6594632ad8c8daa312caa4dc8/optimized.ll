; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3idlx6kg.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@a = dso_local global [25 x i32] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull @n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [25 x i32], ptr @a, i64 0, i64 %indvars.iv
  %call1 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body4
  %i.1 = phi i32 [ %inc9, %for.body4 ], [ 0, %for.cond2.preheader ]
  %z.0 = phi i32 [ %spec.select, %for.body4 ], [ 0, %for.cond2.preheader ]
  %exitcond.not = icmp eq i32 %i.1, %smax
  br i1 %exitcond.not, label %for.end10, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %call5 = tail call noundef i32 @_Z1Fi(i32 noundef %i.1) #4
  %spec.select = tail call i32 @llvm.smax.i32(i32 %z.0, i32 %call5)
  %inc9 = add nuw i32 %i.1, 1
  br label %for.cond2, !llvm.loop !12

for.end10:                                        ; preds = %for.cond2
  %call11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %z.0)
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z1Fi(i32 noundef %x) local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %idxprom = sext i32 %x to i64
  %arrayidx = getelementptr inbounds [25 x i32], ptr @a, i64 0, i64 %idxprom
  %1 = sext i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %idxprom, %entry ]
  %z.0 = phi i32 [ %z.1, %for.inc ], [ 1, %entry ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp = icmp slt i64 %indvars.iv.next, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !13
  %arrayidx2 = getelementptr inbounds [25 x i32], ptr @a, i64 0, i64 %indvars.iv.next
  %3 = load i32, ptr %arrayidx2, align 4, !tbaa !5, !invariant.load !13
  %cmp3.not = icmp slt i32 %2, %3
  br i1 %cmp3.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %4 = trunc nsw i64 %indvars.iv.next to i32
  %call = tail call noundef i32 @_Z1Fi(i32 noundef %4) #5
  %add4 = add nsw i32 %call, 1
  %spec.select = tail call i32 @llvm.smax.i32(i32 %add4, i32 %z.0)
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %z.1 = phi i32 [ %z.0, %for.body ], [ %spec.select, %land.lhs.true ]
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  ret i32 %z.0
}

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { nofree nosync nounwind }

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
