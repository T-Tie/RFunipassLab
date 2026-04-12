; ModuleID = '<stdin>'
source_filename = "/tmp/tmpsplfggoq.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %array = alloca [100 x [100 x i32]], align 16
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %array) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %row) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %col) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %row, ptr noundef nonnull %col)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %for.inc7 ], [ 0, %entry ]
  %0 = load i32, ptr %row, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv34, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %2 = load i32, ptr %col, align 4
  %sub = add nsw i32 %2, -1
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %smax44 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count52 = zext nneg i32 %smax44 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %3 = load i32, ptr %col, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp2, label %for.body3, label %for.inc7

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %array, i64 0, i64 %indvars.iv34, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.end44, %for.cond10.preheader
  %indvars.iv47 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next48, %for.end44 ]
  %indvars49 = trunc i64 %indvars.iv47 to i32
  %exitcond53.not = icmp eq i64 %indvars.iv47, %wide.trip.count52
  br i1 %exitcond53.not, label %for.end54, label %for.cond13

for.cond13:                                       ; preds = %for.cond10, %for.body15
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.body15 ], [ 0, %for.cond10 ]
  %m.0 = phi i32 [ %spec.select, %for.body15 ], [ %sub, %for.cond10 ]
  %exitcond.not = icmp eq i64 %indvars.iv37, %wide.trip.count
  br i1 %exitcond.not, label %for.cond28.preheader, label %for.body15

for.cond28.preheader:                             ; preds = %for.cond13
  %idxprom33 = sext i32 %m.0 to i64
  br label %for.cond28

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %array, i64 0, i64 %indvars.iv47, i64 %indvars.iv37
  %5 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %idxprom22 = sext i32 %m.0 to i64
  %arrayidx23 = getelementptr inbounds [100 x [100 x i32]], ptr %array, i64 0, i64 %indvars.iv47, i64 %idxprom22
  %6 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %5, %6
  %7 = trunc nuw nsw i64 %indvars.iv37 to i32
  %spec.select = select i1 %cmp24, i32 %7, i32 %m.0
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond13, !llvm.loop !13

for.cond28:                                       ; preds = %for.cond28.preheader, %for.body30
  %indvars.iv40 = phi i64 [ 0, %for.cond28.preheader ], [ %indvars.iv.next41, %for.body30 ]
  %min.0 = phi i32 [ %indvars49, %for.cond28.preheader ], [ %spec.select26, %for.body30 ]
  %exitcond46.not = icmp eq i64 %indvars.iv40, %wide.trip.count52
  br i1 %exitcond46.not, label %for.end44, label %for.body30

for.body30:                                       ; preds = %for.cond28
  %arrayidx34 = getelementptr inbounds [100 x [100 x i32]], ptr %array, i64 0, i64 %indvars.iv40, i64 %idxprom33
  %8 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %idxprom35 = zext nneg i32 %min.0 to i64
  %arrayidx38 = getelementptr inbounds [100 x [100 x i32]], ptr %array, i64 0, i64 %idxprom35, i64 %idxprom33
  %9 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %8, %9
  %10 = trunc nuw nsw i64 %indvars.iv40 to i32
  %spec.select26 = select i1 %cmp39, i32 %10, i32 %min.0
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond28, !llvm.loop !14

for.end44:                                        ; preds = %for.cond28
  %11 = zext i32 %min.0 to i64
  %cmp45 = icmp eq i64 %indvars.iv47, %11
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br i1 %cmp45, label %if.then46, label %for.cond10, !llvm.loop !15

if.then46:                                        ; preds = %for.end44
  %call47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %indvars49, i32 noundef %m.0)
  %.pre = load i32, ptr %row, align 4, !tbaa !5
  br label %for.end54

for.end54:                                        ; preds = %for.cond10, %if.then46
  %12 = phi i32 [ %.pre, %if.then46 ], [ %0, %for.cond10 ]
  %sum.032 = phi i32 [ %indvars49, %if.then46 ], [ %smax44, %for.cond10 ]
  %cmp55 = icmp eq i32 %sum.032, %12
  br i1 %cmp55, label %if.then56, label %if.end58

if.then56:                                        ; preds = %for.end54
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %for.end54
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %col) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %row) #5
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %array) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
!15 = distinct !{!15, !10, !11}
