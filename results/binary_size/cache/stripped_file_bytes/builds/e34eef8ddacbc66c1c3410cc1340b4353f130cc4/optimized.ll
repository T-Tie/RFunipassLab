; ModuleID = '<stdin>'
source_filename = "/tmp/tmpzlbsw_4v.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [16 x [16 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 1024, ptr noundef nonnull align 16 %a) #4
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.inc30 ], [ 0, %entry ]
  %exitcond27.not = icmp eq i64 %indvars.iv22, 11
  br i1 %exitcond27.not, label %for.cond33, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 16
  br i1 %exitcond.not, label %for.end, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [16 x [16 x i32]], ptr %a, i64 0, i64 %indvars.iv22, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %0 = load i32, ptr %arrayidx5, align 4, !tbaa !5, !invariant.load !9
  switch i32 %0, label %for.inc [
    i32 -1, label %for.end
    i32 0, label %for.end
  ]

for.inc:                                          ; preds = %for.body3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !10

for.end:                                          ; preds = %for.body3, %for.body3, %for.cond1
  %idxprom24 = and i64 %indvars.iv, 4294967295
  %arrayidx25 = getelementptr inbounds nuw [16 x [16 x i32]], ptr %a, i64 0, i64 %indvars.iv22, i64 %idxprom24
  %1 = load i32, ptr %arrayidx25, align 4, !tbaa !5, !invariant.load !9
  %cmp26 = icmp eq i32 %1, -1
  br i1 %cmp26, label %for.cond33, label %for.inc30

for.inc30:                                        ; preds = %for.end
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond, !llvm.loop !13

for.cond33:                                       ; preds = %for.cond, %for.end
  %2 = and i64 %indvars.iv22, 4294967295
  %cmp34.not = icmp eq i64 %2, 0
  call void @llvm.assume(i1 noundef %cmp34.not)
  call void @llvm.lifetime.end.p0(i64 noundef 1024, ptr noundef nonnull align 16 %a) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
