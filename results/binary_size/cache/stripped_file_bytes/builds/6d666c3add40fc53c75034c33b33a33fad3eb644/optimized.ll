; ModuleID = '<stdin>'
source_filename = "/tmp/tmp07rd_rf3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #3
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
  %wide.trip.count35 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc19
  %indvars.iv31 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next32, %for.inc19 ]
  %exitcond36.not = icmp eq i64 %indvars.iv31, %wide.trip.count35
  br i1 %exitcond36.not, label %for.cond22, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond2
  %arrayidx11 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv31
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %for.inc16
  %indvars.iv27 = phi i64 [ 1, %for.cond5.preheader ], [ %indvars.iv.next28, %for.inc16 ]
  %exitcond.not = icmp eq i64 %indvars.iv27, %wide.trip.count
  br i1 %exitcond.not, label %for.inc19, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv27
  %2 = load i32, ptr %arrayidx9, align 4, !tbaa !5, !invariant.load !12
  %3 = load i32, ptr %arrayidx11, align 4, !tbaa !5, !invariant.load !12
  %cmp12 = icmp eq i32 %2, %3
  %cmp13 = icmp ne i64 %indvars.iv27, %indvars.iv31
  %or.cond = and i1 %cmp13, %cmp12
  br i1 %or.cond, label %if.then, label %for.inc16

if.then:                                          ; preds = %for.body7
  store i32 0, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.inc16

for.inc16:                                        ; preds = %for.body7, %if.then
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond5, !llvm.loop !13

for.inc19:                                        ; preds = %for.cond5
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond2, !llvm.loop !14

for.cond22:                                       ; preds = %for.cond2, %for.inc33
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.inc33 ], [ 0, %for.cond2 ]
  %exitcond41.not = icmp eq i64 %indvars.iv37, %wide.trip.count35
  br i1 %exitcond41.not, label %loop, label %for.body24

for.body24:                                       ; preds = %for.cond22
  %arrayidx26 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv37
  %4 = load i32, ptr %arrayidx26, align 4, !tbaa !5, !invariant.load !12
  %cmp27.not = icmp eq i32 %4, 0
  br i1 %cmp27.not, label %for.inc33, label %if.then28

if.then28:                                        ; preds = %for.body24
  %call31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %4)
  %.pre = and i64 %indvars.iv37, 4294967295
  br label %loop

for.inc33:                                        ; preds = %for.body24
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond22, !llvm.loop !15

loop:                                             ; preds = %for.cond22, %if.then28
  %.pre-phi = phi i64 [ %.pre, %if.then28 ], [ %wide.trip.count35, %for.cond22 ]
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc47, %loop
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.inc47 ], [ %.pre-phi, %loop ]
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp37 = icmp slt i64 %indvars.iv.next43, %6
  br i1 %cmp37, label %for.body38, label %for.end49

for.body38:                                       ; preds = %for.cond36
  %arrayidx40 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv.next43
  %7 = load i32, ptr %arrayidx40, align 4, !tbaa !5, !invariant.load !12
  %cmp41.not = icmp eq i32 %7, 0
  br i1 %cmp41.not, label %for.inc47, label %if.then42

if.then42:                                        ; preds = %for.body38
  %call45 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7)
  br label %for.inc47

for.inc47:                                        ; preds = %for.body38, %if.then42
  br label %for.cond36, !llvm.loop !16

for.end49:                                        ; preds = %for.cond36
  %putchar = call i32 @putchar(i32 10)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %a) #5
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
!16 = distinct !{!16, !10, !11}
