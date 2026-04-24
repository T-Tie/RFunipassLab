; ModuleID = '<stdin>'
source_filename = "/tmp/tmprxzhhhxz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [10000 x i32], align 16
  %st = alloca [10000 x i32], align 16
  %N = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %s) #5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %st) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %N)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %j.0 = phi i32 [ %j.1, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %2 = add i32 %j.0, -1
  %smax30 = call i32 @llvm.smax.i32(i32 %j.0, i32 0)
  %3 = add nuw i32 %smax30, 1
  br label %for.cond10

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [10000 x i32], ptr %s, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %5 = and i32 %4, 1
  %cmp4.not = icmp eq i32 %5, 0
  br i1 %cmp4.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %idxprom7 = sext i32 %j.0 to i64
  %arrayidx8 = getelementptr inbounds [10000 x i32], ptr %st, i64 0, i64 %idxprom7
  store i32 %4, ptr %arrayidx8, align 4, !tbaa !5
  %inc = add nsw i32 %j.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.0, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond10:                                       ; preds = %for.cond10.preheader, %for.cond.cleanup16
  %indvars.iv27 = phi i32 [ %2, %for.cond10.preheader ], [ %indvars.iv.next28, %for.cond.cleanup16 ]
  %k.0 = phi i32 [ 1, %for.cond10.preheader ], [ %inc39, %for.cond.cleanup16 ]
  %exitcond31 = icmp eq i32 %k.0, %3
  br i1 %exitcond31, label %for.cond41.preheader, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond10
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv27, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond14

for.cond41.preheader:                             ; preds = %for.cond10
  %smax35 = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %wide.trip.count36 = zext nneg i32 %smax35 to i64
  br label %for.cond41

for.cond14:                                       ; preds = %for.cond14.backedge, %for.cond14.preheader
  %indvars.iv23 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next24, %for.cond14.backedge ]
  %exitcond.not = icmp eq i64 %indvars.iv23, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup16, label %for.body17

for.cond.cleanup16:                               ; preds = %for.cond14
  %inc39 = add nuw i32 %k.0, 1
  %indvars.iv.next28 = add i32 %indvars.iv27, -1
  br label %for.cond10, !llvm.loop !12

for.body17:                                       ; preds = %for.cond14
  %arrayidx19 = getelementptr inbounds nuw [10000 x i32], ptr %st, i64 0, i64 %indvars.iv23
  %6 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %arrayidx21 = getelementptr inbounds nuw [10000 x i32], ptr %st, i64 0, i64 %indvars.iv.next24
  %7 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %cmp22 = icmp sgt i32 %6, %7
  br i1 %cmp22, label %if.then23, label %for.cond14.backedge

for.cond14.backedge:                              ; preds = %for.body17, %if.then23
  br label %for.cond14, !llvm.loop !13

if.then23:                                        ; preds = %for.body17
  store i32 %6, ptr %arrayidx21, align 4, !tbaa !5
  store i32 %7, ptr %arrayidx19, align 4, !tbaa !5
  br label %for.cond14.backedge

for.cond41:                                       ; preds = %for.cond41.preheader, %for.body45
  %indvars.iv32 = phi i64 [ 0, %for.cond41.preheader ], [ %indvars.iv.next33, %for.body45 ]
  %exitcond37.not = icmp eq i64 %indvars.iv32, %wide.trip.count36
  br i1 %exitcond37.not, label %for.cond.cleanup44, label %for.body45

for.cond.cleanup44:                               ; preds = %for.cond41
  %idxprom53 = sext i32 %2 to i64
  %arrayidx54 = getelementptr inbounds [10000 x i32], ptr %st, i64 0, i64 %idxprom53
  %8 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %call55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #5
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %st) #5
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %s) #5
  ret i32 0

for.body45:                                       ; preds = %for.cond41
  %arrayidx47 = getelementptr inbounds nuw [10000 x i32], ptr %st, i64 0, i64 %indvars.iv32
  %9 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %call48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %9)
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond41, !llvm.loop !14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

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
