; ModuleID = '<stdin>'
source_filename = "/tmp/tmpptu1f_6a.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%c%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [300 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %0, 0
  call void @llvm.assume(i1 %cmp12)
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %for.end.loopexit, !llvm.loop !9

for.end.loopexit:                                 ; preds = %for.body
  %.pre = load i32, ptr %a, align 16, !tbaa !5
  %call3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.pre)
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp515 = icmp sgt i32 %3, 1
  br i1 %cmp515, label %for.cond7.preheader, label %for.end26

for.cond7.preheader:                              ; preds = %for.end.loopexit, %for.inc24
  %4 = phi i32 [ %8, %for.inc24 ], [ %3, %for.end.loopexit ]
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.inc24 ], [ 1, %for.end.loopexit ]
  %arrayidx13 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv21
  %5 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  br label %for.body9

for.body9:                                        ; preds = %for.cond7.preheader, %for.inc15
  %indvars.iv18 = phi i64 [ 0, %for.cond7.preheader ], [ %indvars.iv.next19, %for.inc15 ]
  %arrayidx11 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv18
  %6 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %6, %5
  br i1 %cmp14, label %for.end17, label %for.inc15

for.inc15:                                        ; preds = %for.body9
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next19, %indvars.iv21
  br i1 %exitcond.not, label %for.end17, label %for.body9, !llvm.loop !12

for.end17:                                        ; preds = %for.body9, %for.inc15
  %k.0.lcssa.in = phi i64 [ %indvars.iv18, %for.body9 ], [ %indvars.iv21, %for.inc15 ]
  %7 = and i64 %k.0.lcssa.in, 4294967295
  %cmp18 = icmp eq i64 %7, %indvars.iv21
  br i1 %cmp18, label %if.then19, label %for.inc24

if.then19:                                        ; preds = %for.end17
  %call22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 44, i32 noundef %5)
  %.pre24 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc24

for.inc24:                                        ; preds = %for.end17, %if.then19
  %8 = phi i32 [ %4, %for.end17 ], [ %.pre24, %if.then19 ]
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %9 = sext i32 %8 to i64
  %cmp5 = icmp slt i64 %indvars.iv.next22, %9
  br i1 %cmp5, label %for.cond7.preheader, label %for.end26, !llvm.loop !13

for.end26:                                        ; preds = %for.inc24, %for.end.loopexit
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
