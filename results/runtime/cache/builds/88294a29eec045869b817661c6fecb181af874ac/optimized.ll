; ModuleID = '<stdin>'
source_filename = "/tmp/tmp6_bad_fv.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [300 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 1200, ptr noundef nonnull align 16 %a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(1200) %a, i8 noundef 0, i64 noundef 1200, i1 noundef false) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.cond2.preheader, label %for.inc

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %2 = add nuw i32 %smax, 1
  %wide.trip.count29 = zext i32 %2 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %3 = add nsw i64 %indvars.iv, -1
  %arrayidx = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %3
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc27
  %indvars.iv20 = phi i64 [ 1, %for.cond2.preheader ], [ %indvars.iv.next21, %for.inc27 ]
  %exitcond30 = icmp eq i64 %indvars.iv20, %wide.trip.count29
  br i1 %exitcond30, label %for.cond30, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %4 = add nsw i64 %indvars.iv20, -1
  %arrayidx7 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %4
  %5 = load i32, ptr %arrayidx7, align 4, !tbaa !5, !invariant.load !12
  %cmp8 = icmp eq i32 %5, 0
  br i1 %cmp8, label %for.inc27, label %for.cond9

for.cond9:                                        ; preds = %for.body4, %for.inc24
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.inc24 ], [ %indvars.iv20, %for.body4 ]
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %exitcond.not = icmp eq i64 %indvars.iv22, %wide.trip.count
  br i1 %exitcond.not, label %for.inc27, label %for.body11

for.body11:                                       ; preds = %for.cond9
  %arrayidx14 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv22
  %6 = load i32, ptr %arrayidx14, align 4, !tbaa !5, !invariant.load !12
  %cmp18 = icmp eq i32 %6, %5
  br i1 %cmp18, label %if.then19, label %for.inc24

if.then19:                                        ; preds = %for.body11
  store i32 0, ptr %arrayidx14, align 4, !tbaa !5
  br label %for.inc24

for.inc24:                                        ; preds = %for.body11, %if.then19
  br label %for.cond9, !llvm.loop !13

for.inc27:                                        ; preds = %for.cond9, %for.body4
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond2, !llvm.loop !14

for.cond30:                                       ; preds = %for.cond2, %for.inc53
  %7 = phi i32 [ %.pre, %for.inc53 ], [ %0, %for.cond2 ]
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.inc53 ], [ 0, %for.cond2 ]
  %b.0 = phi i32 [ %b.1, %for.inc53 ], [ 0, %for.cond2 ]
  %8 = sext i32 %7 to i64
  %cmp32.not.not = icmp slt i64 %indvars.iv31, %8
  br i1 %cmp32.not.not, label %for.body33, label %for.end55

for.body33:                                       ; preds = %for.cond30
  %arrayidx35 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv31
  %9 = load i32, ptr %arrayidx35, align 4, !tbaa !5, !invariant.load !12
  %cmp36.not = icmp eq i32 %9, 0
  br i1 %cmp36.not, label %for.inc53, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body33
  %cmp37 = icmp eq i32 %b.0, 0
  %.str..str.1 = select i1 %cmp37, ptr @.str, ptr @.str.1
  %.b.0 = call i32 @llvm.umax.i32(i32 %b.0, i32 1)
  %call51 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str..str.1, i32 noundef %9)
  br label %for.inc53

for.inc53:                                        ; preds = %land.lhs.true, %for.body33
  %b.1 = phi i32 [ %b.0, %for.body33 ], [ %.b.0, %land.lhs.true ]
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !15

for.end55:                                        ; preds = %for.cond30
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 1200, ptr noundef nonnull %a) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
