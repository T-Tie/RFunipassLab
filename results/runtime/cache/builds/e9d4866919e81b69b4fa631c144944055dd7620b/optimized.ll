; ModuleID = '<stdin>'
source_filename = "/tmp/tmp004hqqg8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%d%c%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [10 x [10 x i32]], align 16
  %h = alloca i32, align 4
  %d = alloca i32, align 4
  %c = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %h) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %d) #5
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %c) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %h, ptr noundef nonnull %c, ptr noundef nonnull align 4 %d)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.inc7 ], [ 0, %entry ]
  %0 = load i32, ptr %h, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv28, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %2 = load i32, ptr %d, align 4
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 noundef 0)
  %smax38 = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count44 = zext nneg i32 %smax38 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %3 = load i32, ptr %d, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [10 x [10 x i32]], ptr %a, i64 0, i64 %indvars.iv28, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.end52, %for.cond10.preheader
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.end52 ], [ 0, %for.cond10.preheader ]
  %l1.0 = phi i32 [ %l1.1, %for.end52 ], [ undef, %for.cond10.preheader ]
  %min.0 = phi i32 [ %min.1, %for.end52 ], [ undef, %for.cond10.preheader ]
  %l2.0 = phi i32 [ %l2.1, %for.end52 ], [ undef, %for.cond10.preheader ]
  %exitcond45.not = icmp eq i64 %indvars.iv41, %wide.trip.count44
  br i1 %exitcond45.not, label %if.then61, label %for.cond13

for.cond13:                                       ; preds = %for.cond10, %for.body15
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.body15 ], [ 0, %for.cond10 ]
  %l1.1 = phi i32 [ %spec.select, %for.body15 ], [ %l1.0, %for.cond10 ]
  %max.0 = phi i32 [ %spec.select24, %for.body15 ], [ 0, %for.cond10 ]
  %exitcond.not = icmp eq i64 %indvars.iv31, %wide.trip.count
  br i1 %exitcond.not, label %for.cond28.preheader, label %for.body15

for.cond28.preheader:                             ; preds = %for.cond13
  %idxprom40 = sext i32 %l1.1 to i64
  %arrayidx36 = getelementptr inbounds [10 x i32], ptr %a, i64 0, i64 %idxprom40
  br label %for.cond28

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [10 x [10 x i32]], ptr %a, i64 0, i64 %indvars.iv41, i64 %indvars.iv31
  %5 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp sgt i32 %5, %max.0
  %6 = trunc nuw nsw i64 %indvars.iv31 to i32
  %spec.select = select i1 %cmp20, i32 %6, i32 %l1.1
  %spec.select24 = call i32 @llvm.smax.i32(i32 %5, i32 %max.0)
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond13, !llvm.loop !13

for.cond28:                                       ; preds = %for.cond28.preheader, %for.inc50
  %indvars.iv34 = phi i64 [ 0, %for.cond28.preheader ], [ %indvars.iv.next35, %for.inc50 ]
  %min.1 = phi i32 [ %min.0, %for.cond28.preheader ], [ %min.3, %for.inc50 ]
  %l2.1 = phi i32 [ %l2.0, %for.cond28.preheader ], [ %l2.3, %for.inc50 ]
  %exitcond40.not = icmp eq i64 %indvars.iv34, %wide.trip.count44
  br i1 %exitcond40.not, label %for.end52, label %for.body30

for.body30:                                       ; preds = %for.cond28
  %cmp31 = icmp eq i64 %indvars.iv34, 0
  br i1 %cmp31, label %if.end37.thread, label %if.end37

if.end37:                                         ; preds = %for.body30
  %arrayidx41 = getelementptr inbounds [10 x [10 x i32]], ptr %a, i64 0, i64 %indvars.iv34, i64 %idxprom40
  %7 = load i32, ptr %arrayidx41, align 4, !tbaa !5, !invariant.load !14
  %cmp42 = icmp slt i32 %7, %min.1
  %spec.select25 = call i32 @llvm.smin.i32(i32 %7, i32 %min.1)
  %8 = trunc nuw nsw i64 %indvars.iv34 to i32
  %spec.select26 = select i1 %cmp42, i32 %8, i32 %l2.1
  br label %for.inc50

if.end37.thread:                                  ; preds = %for.body30
  %9 = load i32, ptr %arrayidx36, align 4, !tbaa !5, !invariant.load !14
  br label %for.inc50

for.inc50:                                        ; preds = %if.end37, %if.end37.thread
  %min.3 = phi i32 [ %9, %if.end37.thread ], [ %spec.select25, %if.end37 ]
  %l2.3 = phi i32 [ 0, %if.end37.thread ], [ %spec.select26, %if.end37 ]
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond28, !llvm.loop !15

for.end52:                                        ; preds = %for.cond28
  %cmp53 = icmp eq i32 %max.0, %min.1
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br i1 %cmp53, label %for.end59.thread, label %for.cond10, !llvm.loop !16

for.end59.thread:                                 ; preds = %for.end52
  %call55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %l2.1, i32 noundef %l1.1) #6
  br label %if.end63

if.then61:                                        ; preds = %for.cond10
  %call62 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3) #6
  br label %if.end63

if.end63:                                         ; preds = %for.end59.thread, %if.then61
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %d) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %h) #6
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind willreturn }
attributes #6 = { nounwind }

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
!14 = !{}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
