; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmwjjrk8r.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %b) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %c) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc60, %for.end ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end61

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c)
  %1 = load i32, ptr %b, align 4, !tbaa !5
  %2 = load i32, ptr %c, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %1, i32 %2)
  %phiofops = call i32 @llvm.smin.i32(i32 %1, i32 %2)
  %3 = load i32, ptr %a, align 4, !tbaa !5
  %4 = and i32 %3, 3
  %cmp8 = icmp eq i32 %4, 0
  %rem9 = srem i32 %3, 100
  %cmp10 = icmp ne i32 %rem9, 0
  %or.cond = and i1 %cmp8, %cmp10
  %rem11 = srem i32 %3, 400
  %cmp12 = icmp eq i32 %rem11, 0
  %or.cond21 = or i1 %cmp12, %or.cond
  %cmp13 = icmp slt i32 %phiofops, 3
  %or.cond22 = and i1 %cmp13, %or.cond21
  %cmp15 = icmp sgt i32 %spec.select, 2
  %or.cond23 = and i1 %cmp15, %or.cond22
  %p.0 = zext i1 %or.cond23 to i32
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ %phiofops, %for.body ], [ %inc, %for.inc ]
  %p.1 = phi i32 [ %p.0, %for.body ], [ %p.4, %for.inc ]
  %exitcond.not = icmp eq i32 %j.0, %spec.select
  br i1 %exitcond.not, label %for.end, label %for.body20

for.body20:                                       ; preds = %for.cond18
  switch i32 %j.0, label %if.end34 [
    i32 1, label %if.then32
    i32 3, label %if.then32
    i32 5, label %if.then32
    i32 7, label %if.then32
    i32 8, label %if.then32
    i32 10, label %if.then32
  ]

if.then32:                                        ; preds = %for.body20, %for.body20, %for.body20, %for.body20, %for.body20, %for.body20
  %add33 = add nsw i32 %p.1, 31
  br label %if.end34

if.end34:                                         ; preds = %for.body20, %if.then32
  %p.2 = phi i32 [ %add33, %if.then32 ], [ %p.1, %for.body20 ]
  switch i32 %j.0, label %for.inc [
    i32 2, label %lor.lhs.false44.thread
    i32 4, label %if.then46
    i32 6, label %if.then46
    i32 9, label %if.then46
    i32 11, label %if.then46
  ]

lor.lhs.false44.thread:                           ; preds = %if.end34
  %add37 = add nsw i32 %p.2, 28
  br label %for.inc

if.then46:                                        ; preds = %if.end34, %if.end34, %if.end34, %if.end34
  %add47 = add nsw i32 %p.2, 30
  br label %for.inc

for.inc:                                          ; preds = %if.end34, %lor.lhs.false44.thread, %if.then46
  %p.4 = phi i32 [ %add47, %if.then46 ], [ %add37, %lor.lhs.false44.thread ], [ %p.2, %if.end34 ]
  %inc = add i32 %j.0, 1
  br label %for.cond18, !llvm.loop !9

for.end:                                          ; preds = %for.cond18
  %rem49 = srem i32 %p.1, 7
  %cmp50 = icmp eq i32 %rem49, 0
  %str.1.str = select i1 %cmp50, ptr @str.1, ptr @str
  %puts24 = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str)
  %inc60 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end61:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #4

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
