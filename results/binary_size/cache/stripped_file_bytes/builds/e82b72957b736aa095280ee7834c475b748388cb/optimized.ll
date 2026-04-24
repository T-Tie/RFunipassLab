; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9w25ksfz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z3runi(i32 noundef %x) local_unnamed_addr #0 {
entry:
  %rem = srem i32 %x, 400
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = and i32 %x, 3
  %cmp2 = icmp ne i32 %0, 0
  %rem3 = srem i32 %x, 100
  %cmp4 = icmp eq i32 %rem3, 0
  %or.cond.not = or i1 %cmp2, %cmp4
  %spec.select = zext i1 %or.cond.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %mona = alloca i32, align 4
  %monb = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %if.end51, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc59, %if.end51 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end60

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %year) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %mona) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %monb) #7
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %year, ptr noundef nonnull %mona, ptr noundef nonnull %monb)
  %1 = load i32, ptr %mona, align 4, !tbaa !5
  %2 = load i32, ptr %monb, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %1, i32 %2)
  %3 = call i32 @llvm.smin.i32(i32 %1, i32 %2)
  %4 = load i32, ptr %year, align 4, !tbaa !5
  %call3 = call noundef i32 @_Z3runi(i32 noundef %4) #7
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %for.cond6, label %for.cond28

for.cond6:                                        ; preds = %for.body, %if.end23
  %j.0 = phi i32 [ %inc, %if.end23 ], [ %3, %for.body ]
  %day.2 = phi i32 [ %add21, %if.end23 ], [ 0, %for.body ]
  %exitcond37.not = icmp eq i32 %j.0, %spec.select
  br i1 %exitcond37.not, label %if.end51, label %for.body8

for.body8:                                        ; preds = %for.cond6
  switch i32 %j.0, label %if.else20 [
    i32 2, label %if.end23
    i32 4, label %if.end23.fold.split
    i32 6, label %if.end23.fold.split
    i32 9, label %if.end23.fold.split
    i32 11, label %if.end23.fold.split
  ]

if.else20:                                        ; preds = %for.body8
  br label %if.end23

if.end23.fold.split:                              ; preds = %for.body8, %for.body8, %for.body8, %for.body8
  br label %if.end23

if.end23:                                         ; preds = %for.body8, %if.end23.fold.split, %if.else20
  %.sink3.sink = phi i32 [ 29, %for.body8 ], [ 31, %if.else20 ], [ 30, %if.end23.fold.split ]
  %add21 = add nuw nsw i32 %.sink3.sink, %day.2
  %inc = add i32 %j.0, 1
  br label %for.cond6, !llvm.loop !9

for.cond28:                                       ; preds = %for.body, %if.end47
  %j.1 = phi i32 [ %inc49, %if.end47 ], [ %3, %for.body ]
  %day.4 = phi i32 [ %add45, %if.end47 ], [ 0, %for.body ]
  %exitcond.not = icmp eq i32 %j.1, %spec.select
  br i1 %exitcond.not, label %if.end51, label %for.body30

for.body30:                                       ; preds = %for.cond28
  switch i32 %j.1, label %if.else44 [
    i32 2, label %if.end47
    i32 4, label %if.end47.fold.split
    i32 6, label %if.end47.fold.split
    i32 9, label %if.end47.fold.split
    i32 11, label %if.end47.fold.split
  ]

if.else44:                                        ; preds = %for.body30
  br label %if.end47

if.end47.fold.split:                              ; preds = %for.body30, %for.body30, %for.body30, %for.body30
  br label %if.end47

if.end47:                                         ; preds = %for.body30, %if.end47.fold.split, %if.else44
  %.sink2.sink = phi i32 [ 28, %for.body30 ], [ 31, %if.else44 ], [ 30, %if.end47.fold.split ]
  %add45 = add nuw nsw i32 %.sink2.sink, %day.4
  %inc49 = add i32 %j.1, 1
  br label %for.cond28, !llvm.loop !12

if.end51:                                         ; preds = %for.cond28, %for.cond6
  %day.3 = phi i32 [ %day.2, %for.cond6 ], [ %day.4, %for.cond28 ]
  %rem = srem i32 %day.3, 7
  %cmp52 = icmp eq i32 %rem, 0
  %str.1.str = select i1 %cmp52, ptr @str.1, ptr @str
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %monb) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %mona) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %year) #7
  %inc59 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end60:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
