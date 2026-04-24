; ModuleID = '<stdin>'
source_filename = "/tmp/tmptcxxgfdd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %A = alloca [100 x [100 x i32]], align 16
  %B = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %A) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %B) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x1, ptr noundef nonnull %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.inc8 ], [ 0, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv26, %1
  br i1 %cmp.not.not, label %for.cond1, label %for.end10

for.cond1:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3.not.not = icmp slt i64 %indvars.iv, %3
  br i1 %cmp3.not.not, label %for.body4, label %for.inc8

for.body4:                                        ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %A, i64 0, i64 %indvars.iv26, i64 %indvars.iv
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond1
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc28, %for.end10
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.inc28 ], [ 0, %for.end10 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp14.not.not = icmp slt i64 %indvars.iv32, %5
  br i1 %cmp14.not.not, label %for.cond16, label %for.cond31

for.cond16:                                       ; preds = %for.cond12, %for.body19
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.body19 ], [ 0, %for.cond12 ]
  %6 = load i32, ptr %y2, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp18.not.not = icmp slt i64 %indvars.iv29, %7
  br i1 %cmp18.not.not, label %for.body19, label %for.inc28

for.body19:                                       ; preds = %for.cond16
  %arrayidx23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %B, i64 0, i64 %indvars.iv32, i64 %indvars.iv29
  %call24 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx23)
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond16, !llvm.loop !13

for.inc28:                                        ; preds = %for.cond16
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond12, !llvm.loop !14

for.cond31:                                       ; preds = %for.cond12, %for.inc67
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.inc67 ], [ 0, %for.cond12 ]
  %8 = load i32, ptr %x1, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp33.not.not = icmp slt i64 %indvars.iv41, %9
  br i1 %cmp33.not.not, label %for.body34, label %for.end69

for.body34:                                       ; preds = %for.cond31
  %cmp35.not = icmp eq i64 %indvars.iv41, 0
  br i1 %cmp35.not, label %for.cond37.preheader, label %if.then

if.then:                                          ; preds = %for.body34
  %putchar = call i32 @putchar(i32 10)
  br label %for.cond37.preheader

for.cond37.preheader:                             ; preds = %if.then, %for.body34
  br label %for.cond37

for.cond37:                                       ; preds = %for.cond37.preheader, %for.end55
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.end55 ], [ 0, %for.cond37.preheader ]
  %10 = load i32, ptr %y2, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %cmp39.not.not = icmp slt i64 %indvars.iv38, %11
  br i1 %cmp39.not.not, label %for.cond41.preheader, label %for.inc67

for.cond41.preheader:                             ; preds = %for.cond37
  %12 = load i32, ptr %y1, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %12, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond41

for.cond41:                                       ; preds = %for.cond41.preheader, %for.body44
  %indvars.iv35 = phi i64 [ 0, %for.cond41.preheader ], [ %indvars.iv.next36, %for.body44 ]
  %result.2 = phi i32 [ 0, %for.cond41.preheader ], [ %add, %for.body44 ]
  %exitcond.not = icmp eq i64 %indvars.iv35, %wide.trip.count
  br i1 %exitcond.not, label %for.end55, label %for.body44

for.body44:                                       ; preds = %for.cond41
  %arrayidx48 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %A, i64 0, i64 %indvars.iv41, i64 %indvars.iv35
  %13 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %arrayidx52 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %B, i64 0, i64 %indvars.iv35, i64 %indvars.iv38
  %14 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %mul = mul nsw i32 %14, %13
  %add = add nsw i32 %mul, %result.2
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond41, !llvm.loop !15

for.end55:                                        ; preds = %for.cond41
  %cond = icmp eq i64 %indvars.iv38, 0
  %.str.1..str.3 = select i1 %cond, ptr @.str.1, ptr @.str.3
  %call58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.1..str.3, i32 noundef %result.2)
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond37, !llvm.loop !16

for.inc67:                                        ; preds = %for.cond37
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond31, !llvm.loop !17

for.end69:                                        ; preds = %for.cond31
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %B) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %A) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
