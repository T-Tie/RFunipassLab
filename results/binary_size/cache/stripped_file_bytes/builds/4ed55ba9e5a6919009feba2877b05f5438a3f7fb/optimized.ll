; ModuleID = '<stdin>'
source_filename = "/tmp/tmpk4bb3y1s.cpp"
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
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %sz = alloca [8 x [8 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %m, ptr noundef nonnull %n)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %sz) #5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.inc7 ], [ 0, %entry ]
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv26, %1
  br i1 %cmp, label %for.cond1, label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.body3, label %for.inc7

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv26, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond, %for.inc59
  %4 = phi i32 [ %.pre, %for.inc59 ], [ %0, %for.cond ]
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.inc59 ], [ 0, %for.cond ]
  %c.0 = phi i32 [ %c.1, %for.inc59 ], [ 0, %for.cond ]
  %5 = sext i32 %4 to i64
  %cmp11 = icmp slt i64 %indvars.iv44, %5
  br i1 %cmp11, label %for.cond13.preheader, label %for.end61

for.cond13.preheader:                             ; preds = %for.cond10
  %6 = trunc nuw nsw i64 %indvars.iv44 to i32
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc56
  %indvars.iv41 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next42, %for.inc56 ]
  %c.1 = phi i32 [ %c.0, %for.cond13.preheader ], [ %c.2, %for.inc56 ]
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %8 = sext i32 %7 to i64
  %cmp14 = icmp slt i64 %indvars.iv41, %8
  br i1 %cmp14, label %for.cond16.preheader, label %for.inc59

for.cond16.preheader:                             ; preds = %for.cond13
  %arrayidx26 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv44, i64 %indvars.iv41
  %wide.trip.count = zext i32 %7 to i64
  br label %for.cond16

for.cond16:                                       ; preds = %for.cond16.preheader, %if.then
  %indvars.iv29 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next30, %if.then ]
  %exitcond.not = icmp eq i64 %indvars.iv29, %wide.trip.count
  br i1 %exitcond.not, label %for.end31.thread, label %for.body18

for.end31.thread:                                 ; preds = %for.cond16
  %.pre4750 = load i32, ptr %m, align 4, !tbaa !5
  br label %for.cond34.preheader

for.body18:                                       ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv44, i64 %indvars.iv29
  %9 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %10 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %cmp27.not = icmp sgt i32 %9, %10
  br i1 %cmp27.not, label %for.end31, label %if.then

if.then:                                          ; preds = %for.body18
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond16, !llvm.loop !13

for.end31:                                        ; preds = %for.body18
  %indvars33.le = trunc i64 %indvars.iv29 to i32
  %cmp32 = icmp eq i32 %7, %indvars33.le
  %.pre47 = load i32, ptr %m, align 4, !tbaa !5
  br i1 %cmp32, label %for.cond34.preheader, label %if.end

for.cond34.preheader:                             ; preds = %for.end31.thread, %for.end31
  %.pre4751 = phi i32 [ %.pre4750, %for.end31.thread ], [ %.pre47, %for.end31 ]
  %smax = call i32 @llvm.smax.i32(i32 %.pre4751, i32 0)
  %wide.trip.count39 = zext nneg i32 %smax to i64
  br label %for.cond34

for.cond34:                                       ; preds = %for.cond34.preheader, %if.then46
  %indvars.iv34 = phi i64 [ 0, %for.cond34.preheader ], [ %indvars.iv.next35, %if.then46 ]
  %exitcond40.not = icmp eq i64 %indvars.iv34, %wide.trip.count39
  br i1 %exitcond40.not, label %if.end, label %for.body36

for.body36:                                       ; preds = %for.cond34
  %arrayidx40 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv34, i64 %indvars.iv41
  %11 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %12 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %cmp45.not = icmp slt i32 %11, %12
  br i1 %cmp45.not, label %if.end.loopexit.split.loop.exit, label %if.then46

if.then46:                                        ; preds = %for.body36
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond34, !llvm.loop !14

if.end.loopexit.split.loop.exit:                  ; preds = %for.body36
  %indvars38.le = trunc i64 %indvars.iv34 to i32
  br label %if.end

if.end:                                           ; preds = %for.cond34, %if.end.loopexit.split.loop.exit, %for.end31
  %.pre4752 = phi i32 [ %.pre47, %for.end31 ], [ %.pre4751, %if.end.loopexit.split.loop.exit ], [ %.pre4751, %for.cond34 ]
  %b.0 = phi i32 [ 0, %for.end31 ], [ %indvars38.le, %if.end.loopexit.split.loop.exit ], [ %smax, %for.cond34 ]
  %cmp52 = icmp eq i32 %b.0, %.pre4752
  br i1 %cmp52, label %if.then53, label %for.inc56

if.then53:                                        ; preds = %if.end
  %13 = trunc nuw nsw i64 %indvars.iv41 to i32
  %call54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %6, i32 noundef %13)
  br label %for.inc56

for.inc56:                                        ; preds = %if.end, %if.then53
  %c.2 = phi i32 [ 1, %if.then53 ], [ %c.1, %if.end ]
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond13, !llvm.loop !15

for.inc59:                                        ; preds = %for.cond13
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %.pre = load i32, ptr %m, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !16

for.end61:                                        ; preds = %for.cond10
  %cmp62 = icmp eq i32 %c.0, 0
  br i1 %cmp62, label %if.then63, label %if.end65

if.then63:                                        ; preds = %for.end61
  %call64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %for.end61
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %sz) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #5
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
!16 = distinct !{!16, !10, !11}
