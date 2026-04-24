; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0u2h48y9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %sz = alloca [500 x i32], align 16
  %js = alloca [500 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %sz) #4
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %js) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc13
  %indvars.iv4 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next5, %for.inc13 ]
  %x.0 = phi i32 [ 0, %for.cond2.preheader ], [ %x.1, %for.inc13 ]
  %exitcond.not = icmp eq i64 %indvars.iv4, %wide.trip.count
  br i1 %exitcond.not, label %for.cond16.preheader, label %for.body4

for.cond16.preheader:                             ; preds = %for.cond2
  %2 = add i32 %x.0, -1
  %smax18 = call i32 @llvm.smax.i32(i32 %x.0, i32 noundef 0)
  %3 = add nuw i32 %smax18, 1
  br label %for.cond16

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv4
  %4 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !12
  %5 = and i32 %4, -2147483647
  %cmp7 = icmp eq i32 %5, 1
  br i1 %cmp7, label %if.then, label %for.inc13

if.then:                                          ; preds = %for.body4
  %idxprom10 = sext i32 %x.0 to i64
  %arrayidx11 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom10
  store i32 %4, ptr %arrayidx11, align 4, !tbaa !5
  %add12 = add nsw i32 %x.0, 1
  br label %for.inc13

for.inc13:                                        ; preds = %for.body4, %if.then
  %x.1 = phi i32 [ %add12, %if.then ], [ %x.0, %for.body4 ]
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %for.cond2, !llvm.loop !13

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc43
  %indvars.iv12 = phi i32 [ %2, %for.cond16.preheader ], [ %indvars.iv.next13, %for.inc43 ]
  %k.0 = phi i32 [ 1, %for.cond16.preheader ], [ %add44, %for.inc43 ]
  %exitcond19 = icmp eq i32 %k.0, %3
  br i1 %exitcond19, label %for.cond46.preheader, label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.cond16
  %smax14 = call i32 @llvm.smax.i32(i32 %indvars.iv12, i32 noundef 0)
  %wide.trip.count15 = zext nneg i32 %smax14 to i64
  br label %for.cond19

for.cond46.preheader:                             ; preds = %for.cond16
  %tobool.not = icmp eq i32 %2, 0
  %idxprom57 = sext i32 %2 to i64
  %arrayidx58 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom57
  br label %for.cond46

for.cond19:                                       ; preds = %for.cond19.preheader, %for.inc40
  %indvars.iv8 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next9, %for.inc40 ]
  %exitcond16.not = icmp eq i64 %indvars.iv8, %wide.trip.count15
  br i1 %exitcond16.not, label %for.inc43, label %for.body21

for.body21:                                       ; preds = %for.cond19
  %arrayidx23 = getelementptr inbounds nuw [500 x i32], ptr %js, i64 0, i64 %indvars.iv8
  %6 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !12
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %arrayidx26 = getelementptr inbounds nuw [500 x i32], ptr %js, i64 0, i64 %indvars.iv.next9
  %7 = load i32, ptr %arrayidx26, align 4, !tbaa !5, !invariant.load !12
  %cmp27 = icmp sgt i32 %6, %7
  br i1 %cmp27, label %if.then28, label %for.inc40

if.then28:                                        ; preds = %for.body21
  store i32 %7, ptr %arrayidx23, align 4, !tbaa !5
  store i32 %6, ptr %arrayidx26, align 4, !tbaa !5
  br label %for.inc40

for.inc40:                                        ; preds = %for.body21, %if.then28
  br label %for.cond19, !llvm.loop !14

for.inc43:                                        ; preds = %for.cond19
  %add44 = add nuw i32 %k.0, 1
  %indvars.iv.next13 = add i32 %indvars.iv12, -1
  br label %for.cond16, !llvm.loop !15

for.cond46:                                       ; preds = %for.cond46.preheader, %for.inc62
  %i.3 = phi i32 [ %i.4, %for.inc62 ], [ 0, %for.cond46.preheader ]
  %cmp47 = icmp slt i32 %i.3, %x.0
  br i1 %cmp47, label %for.body48, label %for.end64

for.body48:                                       ; preds = %for.cond46
  %cmp50 = icmp slt i32 %i.3, %2
  br i1 %cmp50, label %if.then51, label %if.else

if.then51:                                        ; preds = %for.body48
  %idxprom52 = sext i32 %i.3 to i64
  %arrayidx53 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom52
  %8 = load i32, ptr %arrayidx53, align 4, !tbaa !5, !invariant.load !12
  %call54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %8)
  %9 = add nsw i32 %i.3, 1
  br label %for.inc62

if.else:                                          ; preds = %for.body48
  br i1 %tobool.not, label %for.inc62, label %if.then56

if.then56:                                        ; preds = %if.else
  %10 = load i32, ptr %arrayidx58, align 4, !tbaa !5, !invariant.load !12
  %call59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %10)
  br label %for.inc62

for.inc62:                                        ; preds = %if.then51, %if.then56, %if.else
  %i.4 = phi i32 [ %9, %if.then51 ], [ %x.0, %if.then56 ], [ 1, %if.else ]
  br label %for.cond46, !llvm.loop !16

for.end64:                                        ; preds = %for.cond46
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %js) #5
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %sz) #5
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
