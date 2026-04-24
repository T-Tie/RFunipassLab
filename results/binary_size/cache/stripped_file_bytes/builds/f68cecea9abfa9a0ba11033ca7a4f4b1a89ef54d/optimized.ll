; ModuleID = '<stdin>'
source_filename = "/tmp/tmp2o21wjq8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %k = alloca i32, align 4
  %a = alloca [26 x i32], align 16
  %g = alloca [26 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %k) #4
  call void @llvm.lifetime.start.p0(i64 noundef 104, ptr noundef nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 104, ptr noundef nonnull %g) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %k)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.cond2.preheader, label %for.inc

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %2 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [26 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc7
  %indvars.iv35 = phi i64 [ 1, %for.cond2.preheader ], [ %indvars.iv.next36, %for.inc7 ]
  %exitcond = icmp eq i64 %indvars.iv35, %wide.trip.count
  br i1 %exitcond, label %for.cond10.preheader, label %for.inc7

for.cond10.preheader:                             ; preds = %for.cond2
  %3 = add i32 %0, -1
  %4 = sext i32 %3 to i64
  br label %for.cond10

for.inc7:                                         ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [26 x i32], ptr %g, i64 0, i64 %indvars.iv35
  store i32 1, ptr %arrayidx6, align 4, !tbaa !5
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond2, !llvm.loop !12

for.cond10.loopexit:                              ; preds = %for.cond13
  %indvars.iv.next41 = add nsw i64 %indvars.iv40, -1
  br label %for.cond10, !llvm.loop !13

for.cond10:                                       ; preds = %for.cond10.preheader, %for.cond10.loopexit
  %indvars.iv45 = phi i64 [ %1, %for.cond10.preheader ], [ %indvars.iv.next46, %for.cond10.loopexit ]
  %indvars.iv40 = phi i64 [ %4, %for.cond10.preheader ], [ %indvars.iv.next41, %for.cond10.loopexit ]
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1
  %cmp11 = icmp sgt i64 %indvars.iv45, 1
  br i1 %cmp11, label %for.cond13.preheader, label %for.cond37.preheader

for.cond37.preheader:                             ; preds = %for.cond10
  %smax58 = call i32 @llvm.smax.i32(i32 %0, i32 noundef 1)
  %wide.trip.count59 = zext nneg i32 %smax58 to i64
  %wide.trip.count54 = zext i32 %0 to i64
  br label %for.cond37

for.cond13.preheader:                             ; preds = %for.cond10
  %arrayidx17 = getelementptr inbounds [26 x i32], ptr %a, i64 0, i64 %indvars.iv.next46
  %arrayidx22 = getelementptr inbounds [26 x i32], ptr %g, i64 0, i64 %indvars.iv.next46
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc32
  %indvars.iv42 = phi i64 [ %indvars.iv40, %for.cond13.preheader ], [ %indvars.iv.next43, %for.inc32 ]
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, 1
  %cmp14.not.not = icmp slt i64 %indvars.iv42, %1
  br i1 %cmp14.not.not, label %for.body15, label %for.cond10.loopexit

for.body15:                                       ; preds = %for.cond13
  %5 = load i32, ptr %arrayidx17, align 4, !tbaa !5, !invariant.load !14
  %arrayidx19 = getelementptr inbounds [26 x i32], ptr %a, i64 0, i64 %indvars.iv.next43
  %6 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !14
  %cmp20.not = icmp slt i32 %5, %6
  br i1 %cmp20.not, label %for.inc32, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body15
  %7 = load i32, ptr %arrayidx22, align 4, !tbaa !5, !invariant.load !14
  %arrayidx25 = getelementptr inbounds [26 x i32], ptr %g, i64 0, i64 %indvars.iv.next43
  %8 = load i32, ptr %arrayidx25, align 4, !tbaa !5, !invariant.load !14
  %cmp26.not = icmp sgt i32 %7, %8
  br i1 %cmp26.not, label %for.inc32, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %add29 = add nsw i32 %8, 1
  store i32 %add29, ptr %arrayidx22, align 4, !tbaa !5
  br label %for.inc32

for.inc32:                                        ; preds = %for.body15, %land.lhs.true, %if.then
  br label %for.cond13, !llvm.loop !15

for.cond37:                                       ; preds = %for.cond37.preheader, %for.inc62
  %indvars.iv48 = phi i64 [ 1, %for.cond37.preheader ], [ %indvars.iv.next49, %for.inc62 ]
  %exitcond60.not = icmp eq i64 %indvars.iv48, %wide.trip.count59
  br i1 %exitcond60.not, label %for.end64, label %for.cond41.preheader

for.cond41.preheader:                             ; preds = %for.cond37
  %arrayidx45 = getelementptr inbounds nuw [26 x i32], ptr %g, i64 0, i64 %indvars.iv48
  br label %for.cond41

for.cond41:                                       ; preds = %for.cond41.preheader, %for.inc59
  %indvars.iv50 = phi i64 [ %indvars.iv48, %for.cond41.preheader ], [ %indvars.iv.next51, %for.inc59 ]
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %exitcond55.not = icmp eq i64 %indvars.iv50, %wide.trip.count54
  br i1 %exitcond55.not, label %for.inc62, label %for.body43

for.body43:                                       ; preds = %for.cond41
  %9 = load i32, ptr %arrayidx45, align 4, !tbaa !5, !invariant.load !14
  %arrayidx47 = getelementptr inbounds nuw [26 x i32], ptr %g, i64 0, i64 %indvars.iv.next51
  %10 = load i32, ptr %arrayidx47, align 4, !tbaa !5, !invariant.load !14
  %cmp48 = icmp slt i32 %9, %10
  br i1 %cmp48, label %if.then49, label %for.inc59

if.then49:                                        ; preds = %for.body43
  store i32 %10, ptr %arrayidx45, align 4, !tbaa !5
  store i32 %9, ptr %arrayidx47, align 4, !tbaa !5
  br label %for.inc59

for.inc59:                                        ; preds = %for.body43, %if.then49
  br label %for.cond41, !llvm.loop !16

for.inc62:                                        ; preds = %for.cond41
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond37, !llvm.loop !17

for.end64:                                        ; preds = %for.cond37
  %arrayidx65 = getelementptr inbounds nuw i8, ptr %g, i64 4
  %11 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %call66 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %11)
  call void @llvm.lifetime.end.p0(i64 noundef 104, ptr noundef nonnull %g) #5
  call void @llvm.lifetime.end.p0(i64 noundef 104, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %k) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind }
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
!14 = !{}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
