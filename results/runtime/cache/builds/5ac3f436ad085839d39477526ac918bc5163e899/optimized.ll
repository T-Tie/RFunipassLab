; ModuleID = '<stdin>'
source_filename = "/tmp/tmphozh3j_e.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #3
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %a) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc24
  %indvars.iv10 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next11, %for.inc24 ]
  %indvars.iv5 = phi i64 [ 1, %for.cond2.preheader ], [ %indvars.iv.next6, %for.inc24 ]
  %exitcond.not = icmp eq i64 %indvars.iv10, 2
  br i1 %exitcond.not, label %for.end26, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %2 = trunc nuw nsw i64 %indvars.iv10 to i32
  br label %for.cond5

for.cond5:                                        ; preds = %for.body7, %for.body4
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.body7 ], [ %indvars.iv5, %for.body4 ]
  %index.0 = phi i32 [ %spec.select, %for.body7 ], [ %2, %for.body4 ]
  %cmp6 = icmp slt i64 %indvars.iv7, %1
  %idxprom16 = sext i32 %index.0 to i64
  %3 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom16
  %4 = load i32, ptr %3, align 4, !tbaa !5
  br i1 %cmp6, label %for.body7, label %for.inc24

for.body7:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv7
  %5 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %5, %4
  %6 = trunc nuw nsw i64 %indvars.iv7 to i32
  %spec.select = select i1 %cmp12, i32 %6, i32 %index.0
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond5, !llvm.loop !12

for.inc24:                                        ; preds = %for.cond5
  %7 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom16
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %arrayidx19 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv10
  %8 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  store i32 %8, ptr %7, align 4, !tbaa !5
  store i32 %4, ptr %arrayidx19, align 4, !tbaa !5
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  br label %for.cond2, !llvm.loop !13

for.end26:                                        ; preds = %for.cond2
  %9 = load i32, ptr %a, align 16, !tbaa !5
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %10 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %call29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %9, i32 noundef %10)
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind willreturn }
attributes #4 = { nounwind }

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
