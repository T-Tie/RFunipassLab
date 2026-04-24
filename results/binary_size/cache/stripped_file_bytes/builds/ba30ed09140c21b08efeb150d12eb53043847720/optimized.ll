; ModuleID = '<stdin>'
source_filename = "/tmp/tmp6imq_ckc.cpp"
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
  %h = alloca i32, align 4
  %l = alloca i32, align 4
  %sz = alloca [8 x [8 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %h) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %l) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %h, ptr noundef nonnull align 4 %l)
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull %sz) #6
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.inc8 ], [ 0, %entry ]
  %0 = load i32, ptr %h, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv26, %1
  br i1 %cmp.not.not, label %for.cond1, label %for.cond11

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %2 = load i32, ptr %l, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3.not.not = icmp slt i64 %indvars.iv, %3
  br i1 %cmp3.not.not, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv26, i64 %indvars.iv
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond1
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond, !llvm.loop !12

for.cond11:                                       ; preds = %for.cond, %for.inc60
  %.pre.pre45 = phi i32 [ %.pre.pre46, %for.inc60 ], [ %0, %for.cond ]
  %.pre43 = phi i32 [ %.pre, %for.inc60 ], [ %0, %for.cond ]
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.inc60 ], [ 0, %for.cond ]
  %f4.0 = phi i32 [ %f4.1, %for.inc60 ], [ 0, %for.cond ]
  %4 = sext i32 %.pre43 to i64
  %cmp13.not.not = icmp slt i64 %indvars.iv40, %4
  br i1 %cmp13.not.not, label %for.cond15.preheader, label %for.end62

for.cond15.preheader:                             ; preds = %for.cond11
  %5 = trunc nuw nsw i64 %indvars.iv40 to i32
  br label %for.cond15

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc57
  %.pre.pre46 = phi i32 [ %.pre.pre45, %for.cond15.preheader ], [ %.pre.pre, %for.inc57 ]
  %.pre = phi i32 [ %.pre43, %for.cond15.preheader ], [ %.pre.pre, %for.inc57 ]
  %indvars.iv37 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next38, %for.inc57 ]
  %f4.1 = phi i32 [ %f4.0, %for.cond15.preheader ], [ %f4.2, %for.inc57 ]
  %6 = load i32, ptr %l, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp17.not.not = icmp slt i64 %indvars.iv37, %7
  br i1 %cmp17.not.not, label %for.cond19.preheader, label %for.inc60

for.cond19.preheader:                             ; preds = %for.cond15
  %arrayidx30 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv40, i64 %indvars.iv37
  %smax = call i32 @llvm.smax.i32(i32 %.pre, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond19

for.cond19:                                       ; preds = %for.cond19.preheader, %for.body22
  %indvars.iv29 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next30, %for.body22 ]
  %f1.0 = phi i32 [ 1, %for.cond19.preheader ], [ %spec.select, %for.body22 ]
  %exitcond.not = icmp eq i64 %indvars.iv29, %wide.trip.count
  br i1 %exitcond.not, label %for.cond35.preheader, label %for.body22

for.cond35.preheader:                             ; preds = %for.cond19
  %wide.trip.count35 = zext i32 %6 to i64
  br label %for.cond35

for.body22:                                       ; preds = %for.cond19
  %arrayidx26 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv29, i64 %indvars.iv37
  %8 = load i32, ptr %arrayidx26, align 4, !tbaa !5, !invariant.load !13
  %9 = load i32, ptr %arrayidx30, align 4, !tbaa !5, !invariant.load !13
  %cmp31 = icmp slt i32 %8, %9
  %spec.select = select i1 %cmp31, i32 0, i32 %f1.0
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond19, !llvm.loop !14

for.cond35:                                       ; preds = %for.cond35.preheader, %for.body38
  %indvars.iv32 = phi i64 [ 0, %for.cond35.preheader ], [ %indvars.iv.next33, %for.body38 ]
  %f2.0 = phi i32 [ 1, %for.cond35.preheader ], [ %spec.select24, %for.body38 ]
  %exitcond36.not = icmp eq i64 %indvars.iv32, %wide.trip.count35
  br i1 %exitcond36.not, label %for.end52, label %for.body38

for.body38:                                       ; preds = %for.cond35
  %arrayidx42 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv40, i64 %indvars.iv32
  %10 = load i32, ptr %arrayidx42, align 4, !tbaa !5, !invariant.load !13
  %11 = load i32, ptr %arrayidx30, align 4, !tbaa !5, !invariant.load !13
  %cmp47 = icmp sgt i32 %10, %11
  %spec.select24 = select i1 %cmp47, i32 0, i32 %f2.0
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond35, !llvm.loop !15

for.end52:                                        ; preds = %for.cond35
  %mul = mul nuw nsw i32 %f2.0, %f1.0
  %cmp53.not = icmp eq i32 %mul, 0
  br i1 %cmp53.not, label %for.inc57, label %if.then54

if.then54:                                        ; preds = %for.end52
  %12 = trunc nuw nsw i64 %indvars.iv37 to i32
  %call55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %5, i32 noundef %12) #6
  %.pre.pre.pre = load i32, ptr %h, align 4, !tbaa !5
  br label %for.inc57

for.inc57:                                        ; preds = %for.end52, %if.then54
  %.pre.pre = phi i32 [ %.pre.pre.pre, %if.then54 ], [ %.pre.pre46, %for.end52 ]
  %f4.2 = phi i32 [ 1, %if.then54 ], [ %f4.1, %for.end52 ]
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond15, !llvm.loop !16

for.inc60:                                        ; preds = %for.cond15
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond11, !llvm.loop !17

for.end62:                                        ; preds = %for.cond11
  %cmp63 = icmp eq i32 %f4.0, 0
  br i1 %cmp63, label %if.then64, label %if.end66

if.then64:                                        ; preds = %for.end62
  %call65 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3) #6
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %for.end62
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %sz) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %l) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %h) #6
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
attributes #5 = { nofree nounwind }
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
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
