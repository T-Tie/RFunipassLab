; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqor4pcq3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [10000 x i32], align 16
  %w = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %w) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %w)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %w, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [10000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc11
  %indvars.iv2 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next3, %for.inc11 ]
  %n.0 = phi i32 [ 0, %for.cond2.preheader ], [ %n.1, %for.inc11 ]
  %exitcond.not = icmp eq i64 %indvars.iv2, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14.preheader, label %for.body4

for.cond14.preheader:                             ; preds = %for.cond2
  br label %for.cond14

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [10000 x i32], ptr %a, i64 0, i64 %indvars.iv2
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %3 = and i32 %2, 1
  %cmp7.not = icmp eq i32 %3, 0
  br i1 %cmp7.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body4
  %inc8 = add nsw i32 %n.0, 1
  br label %for.inc11

if.else:                                          ; preds = %for.body4
  store i32 0, ptr %arrayidx6, align 4, !tbaa !5
  br label %for.inc11

for.inc11:                                        ; preds = %if.then, %if.else
  %n.1 = phi i32 [ %inc8, %if.then ], [ %n.0, %if.else ]
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %for.cond2, !llvm.loop !12

for.cond14:                                       ; preds = %for.cond17, %for.cond14.preheader
  %indvars.iv10.in = phi i32 [ %0, %for.cond14.preheader ], [ %indvars.iv10, %for.cond17 ]
  %indvars.iv10 = add i32 %indvars.iv10.in, -1
  %cmp15 = icmp sgt i32 %indvars.iv10.in, 0
  br i1 %cmp15, label %for.cond17.preheader, label %for.end41

for.cond17.preheader:                             ; preds = %for.cond14
  %wide.trip.count12 = zext i32 %indvars.iv10 to i64
  br label %for.cond17

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc37
  %indvars.iv6 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next7, %for.inc37 ]
  %exitcond13.not = icmp eq i64 %indvars.iv6, %wide.trip.count12
  br i1 %exitcond13.not, label %for.cond14, label %for.body19, !llvm.loop !13

for.body19:                                       ; preds = %for.cond17
  %arrayidx21 = getelementptr inbounds nuw [10000 x i32], ptr %a, i64 0, i64 %indvars.iv6
  %4 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %arrayidx23 = getelementptr inbounds nuw [10000 x i32], ptr %a, i64 0, i64 %indvars.iv.next7
  %5 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %4, %5
  br i1 %cmp24, label %if.then25, label %for.inc37

if.then25:                                        ; preds = %for.body19
  store i32 %4, ptr %arrayidx23, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx21, align 4, !tbaa !5
  br label %for.inc37

for.inc37:                                        ; preds = %for.body19, %if.then25
  br label %for.cond17, !llvm.loop !14

for.end41:                                        ; preds = %for.cond14
  %sub42 = sub i32 %0, %n.0
  %6 = sext i32 %sub42 to i64
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc50, %for.end41
  %7 = phi i32 [ %.pre, %for.inc50 ], [ %0, %for.end41 ]
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.inc50 ], [ %6, %for.end41 ]
  %sub44 = add nsw i32 %7, -1
  %8 = sext i32 %sub44 to i64
  %cmp45 = icmp slt i64 %indvars.iv14, %8
  br i1 %cmp45, label %for.inc50, label %for.end52

for.inc50:                                        ; preds = %for.cond43
  %arrayidx48 = getelementptr inbounds [10000 x i32], ptr %a, i64 0, i64 %indvars.iv14
  %9 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %call49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %9)
  %indvars.iv.next15 = add nsw i64 %indvars.iv14, 1
  %.pre = load i32, ptr %w, align 4, !tbaa !5
  br label %for.cond43, !llvm.loop !15

for.end52:                                        ; preds = %for.cond43
  %arrayidx55 = getelementptr inbounds [10000 x i32], ptr %a, i64 0, i64 %8
  %10 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  %call56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %10)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %w) #5
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #5
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
attributes #4 = { nofree nounwind willreturn }
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
