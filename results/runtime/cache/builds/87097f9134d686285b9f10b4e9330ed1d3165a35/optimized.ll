; ModuleID = '<stdin>'
source_filename = "/tmp/tmpc38ac1_o.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [300 x i32], align 16
  %b = alloca [300 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #3
  call void @llvm.lifetime.start.p0(i64 noundef 1200, ptr noundef nonnull align 16 %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 1200, ptr noundef nonnull align 16 %b) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count25 = zext nneg i32 %smax to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc23
  %indvars.iv21 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next22, %for.inc23 ]
  %k.0 = phi i32 [ 0, %for.cond2.preheader ], [ %k.1, %for.inc23 ]
  %exitcond26.not = icmp eq i64 %indvars.iv21, %wide.trip.count25
  br i1 %exitcond26.not, label %for.cond26.preheader, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond2
  %arrayidx11 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv21
  br label %for.cond5

for.cond26.preheader:                             ; preds = %for.cond2
  %sub = add nsw i32 %k.0, -1
  %2 = sext i32 %sub to i64
  %smax31 = call i32 @llvm.smax.i32(i32 %k.0, i32 0)
  %wide.trip.count = zext nneg i32 %smax31 to i64
  br label %for.cond26

for.cond5:                                        ; preds = %for.cond5.preheader, %for.inc13
  %indvars.iv18 = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next19, %for.inc13 ]
  %exitcond.not = icmp eq i64 %indvars.iv18, %indvars.iv21
  br i1 %exitcond.not, label %for.end15, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv18
  %3 = load i32, ptr %arrayidx9, align 4, !tbaa !5, !invariant.load !12
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !5, !invariant.load !12
  %cmp12 = icmp eq i32 %3, %4
  br i1 %cmp12, label %for.end15, label %for.inc13

for.inc13:                                        ; preds = %for.body7
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond5, !llvm.loop !13

for.end15:                                        ; preds = %for.body7, %for.cond5
  %j.0.lcssa.in = phi i64 [ %indvars.iv18, %for.body7 ], [ %indvars.iv21, %for.cond5 ]
  %5 = and i64 %j.0.lcssa.in, 4294967295
  %cmp16 = icmp eq i64 %5, %indvars.iv21
  br i1 %cmp16, label %if.then17, label %for.inc23

if.then17:                                        ; preds = %for.end15
  %6 = load i32, ptr %arrayidx11, align 4, !tbaa !5, !invariant.load !12
  %idxprom20 = sext i32 %k.0 to i64
  %arrayidx21 = getelementptr inbounds [300 x i32], ptr %b, i64 0, i64 %idxprom20
  store i32 %6, ptr %arrayidx21, align 4, !tbaa !5
  %add = add nsw i32 %k.0, 1
  br label %for.inc23

for.inc23:                                        ; preds = %for.end15, %if.then17
  %k.1 = phi i32 [ %add, %if.then17 ], [ %k.0, %for.end15 ]
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond2, !llvm.loop !14

for.cond26:                                       ; preds = %for.cond26.preheader, %for.inc36
  %indvars.iv27 = phi i64 [ 0, %for.cond26.preheader ], [ %indvars.iv.next28, %for.inc36 ]
  %exitcond32.not = icmp eq i64 %indvars.iv27, %wide.trip.count
  br i1 %exitcond32.not, label %for.end38, label %for.body28

for.body28:                                       ; preds = %for.cond26
  %arrayidx30 = getelementptr inbounds nuw [300 x i32], ptr %b, i64 0, i64 %indvars.iv27
  %7 = load i32, ptr %arrayidx30, align 4, !tbaa !5, !invariant.load !12
  %call31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7)
  %cmp32 = icmp slt i64 %indvars.iv27, %2
  br i1 %cmp32, label %if.then33, label %for.inc36

if.then33:                                        ; preds = %for.body28
  %putchar = call i32 @putchar(i32 44)
  br label %for.inc36

for.inc36:                                        ; preds = %for.body28, %if.then33
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond26, !llvm.loop !15

for.end38:                                        ; preds = %for.cond26
  call void @llvm.lifetime.end.p0(i64 noundef 1200, ptr noundef nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 1200, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
