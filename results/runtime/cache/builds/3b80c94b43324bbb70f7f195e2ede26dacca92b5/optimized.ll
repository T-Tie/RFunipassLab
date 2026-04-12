; ModuleID = '<stdin>'
source_filename = "/tmp/tmpc4p_4g8n.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc11
  %indvars.iv26 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next27, %for.inc11 ]
  %num.0 = phi i32 [ 0, %for.cond2.preheader ], [ %num.1, %for.inc11 ]
  %exitcond.not = icmp eq i64 %indvars.iv26, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14.preheader, label %for.body4

for.cond14.preheader:                             ; preds = %for.cond2
  %wide.trip.count36 = zext i32 %0 to i64
  br label %for.cond14

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv26
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %3 = and i32 %2, 1
  %cmp7 = icmp eq i32 %3, 0
  br i1 %cmp7, label %if.then, label %for.inc11

if.then:                                          ; preds = %for.body4
  store i32 0, ptr %arrayidx6, align 4, !tbaa !5
  %inc10 = add nsw i32 %num.0, 1
  br label %for.inc11

for.inc11:                                        ; preds = %for.body4, %if.then
  %num.1 = phi i32 [ %inc10, %if.then ], [ %num.0, %for.body4 ]
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond2, !llvm.loop !12

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc38
  %indvars.iv30 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next31, %for.inc38 ]
  %exitcond40.not = icmp eq i64 %indvars.iv30, %wide.trip.count
  br i1 %exitcond40.not, label %for.cond41.preheader, label %for.cond17.preheader

for.cond41.preheader:                             ; preds = %for.cond14
  %4 = sext i32 %num.0 to i64
  br label %for.cond41

for.cond17.preheader:                             ; preds = %for.cond14
  %arrayidx21 = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv30
  br label %for.cond17

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc35
  %indvars.iv32 = phi i64 [ %indvars.iv30, %for.cond17.preheader ], [ %indvars.iv.next33, %for.inc35 ]
  %exitcond37.not = icmp eq i64 %indvars.iv32, %wide.trip.count36
  br i1 %exitcond37.not, label %for.inc38, label %for.body19

for.body19:                                       ; preds = %for.cond17
  %5 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %arrayidx23 = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv32
  %6 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %5, %6
  br i1 %cmp24, label %if.then25, label %for.inc35

if.then25:                                        ; preds = %for.body19
  store i32 %6, ptr %arrayidx21, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx23, align 4, !tbaa !5
  br label %for.inc35

for.inc35:                                        ; preds = %for.body19, %if.then25
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond17, !llvm.loop !13

for.inc38:                                        ; preds = %for.cond17
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond14, !llvm.loop !14

for.cond41:                                       ; preds = %for.cond41.preheader, %for.body43
  %7 = phi i32 [ %0, %for.cond41.preheader ], [ %.pre, %for.body43 ]
  %indvars.iv42 = phi i64 [ %4, %for.cond41.preheader ], [ %indvars.iv.next43, %for.body43 ]
  %8 = sext i32 %7 to i64
  %cmp42 = icmp slt i64 %indvars.iv42, %8
  br i1 %cmp42, label %for.body43, label %for.end55

for.body43:                                       ; preds = %for.cond41
  %sub = add nsw i32 %7, -1
  %9 = trunc nsw i64 %indvars.iv42 to i32
  %cmp44 = icmp eq i32 %sub, %9
  %arrayidx47 = getelementptr inbounds [1000 x i32], ptr %a, i64 0, i64 %indvars.iv42
  %10 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %.str..str.1 = select i1 %cmp44, ptr @.str, ptr @.str.1
  %call48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str..str.1, i32 noundef %10)
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond41, !llvm.loop !15

for.end55:                                        ; preds = %for.cond41
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %a) #5
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
