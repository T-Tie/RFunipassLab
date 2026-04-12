; ModuleID = '<stdin>'
source_filename = "/tmp/tmpuw11o_u0.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %month1 = alloca i32, align 4
  %month2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %year) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %month1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %month2) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end87, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc96, %for.end87 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %j.0, %0
  br i1 %cmp, label %for.body, label %for.end97

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %year, ptr noundef nonnull %month1, ptr noundef nonnull %month2)
  %1 = load i32, ptr %month1, align 4, !tbaa !5
  %2 = load i32, ptr %year, align 4
  %3 = and i32 %2, 3
  %cmp29 = icmp eq i32 %3, 0
  %rem30 = srem i32 %2, 100
  %cmp31 = icmp ne i32 %rem30, 0
  %or.cond = and i1 %cmp29, %cmp31
  %rem33 = srem i32 %2, 400
  %cmp34 = icmp eq i32 %rem33, 0
  %or.cond11 = or i1 %cmp34, %or.cond
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 noundef 1)
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %total1.0 = phi i32 [ 0, %for.body ], [ %total1.2, %for.inc ]
  %4 = phi i32 [ 1, %for.body ], [ %inc, %for.inc ]
  %exitcond.not = icmp eq i32 %4, %smax
  br i1 %exitcond.not, label %for.cond40.preheader, label %for.body4

for.cond40.preheader:                             ; preds = %for.cond2
  %5 = load i32, ptr %month2, align 4, !tbaa !5
  %smax15 = call i32 @llvm.smax.i32(i32 %5, i32 noundef 1)
  br label %for.cond40

for.body4:                                        ; preds = %for.cond2
  switch i32 %4, label %if.end [
    i32 1, label %if.then
    i32 3, label %if.then
    i32 5, label %if.then
    i32 7, label %if.then
    i32 8, label %if.then
    i32 10, label %if.then
    i32 12, label %if.then
  ]

if.then:                                          ; preds = %for.body4, %for.body4, %for.body4, %for.body4, %for.body4, %for.body4, %for.body4
  %add = add nsw i32 %total1.0, 31
  br label %if.end

if.end:                                           ; preds = %for.body4, %if.then
  %total1.1 = phi i32 [ %add, %if.then ], [ %total1.0, %for.body4 ]
  switch i32 %4, label %for.inc [
    i32 4, label %if.end26.thread
    i32 6, label %if.end26.thread
    i32 9, label %if.end26.thread
    i32 11, label %if.end26.thread
    i32 2, label %if.then28
  ]

if.end26.thread:                                  ; preds = %if.end, %if.end, %if.end, %if.end
  %add25 = add nsw i32 %total1.1, 30
  br label %for.inc

if.then28:                                        ; preds = %if.end
  br i1 %or.cond11, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.then28
  %add36 = add nsw i32 %total1.1, 29
  br label %for.inc

if.else:                                          ; preds = %if.then28
  %add37 = add nsw i32 %total1.1, 28
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.end26.thread, %if.else, %if.then35
  %total1.2 = phi i32 [ %add25, %if.end26.thread ], [ %add36, %if.then35 ], [ %add37, %if.else ], [ %total1.1, %if.end ]
  %inc = add nuw i32 %4, 1
  br label %for.cond2, !llvm.loop !9

for.cond40:                                       ; preds = %for.cond40.preheader, %for.inc85
  %total2.0 = phi i32 [ %total2.2, %for.inc85 ], [ 0, %for.cond40.preheader ]
  %6 = phi i32 [ %inc86, %for.inc85 ], [ 1, %for.cond40.preheader ]
  %exitcond16.not = icmp eq i32 %6, %smax15
  br i1 %exitcond16.not, label %for.end87, label %for.body42

for.body42:                                       ; preds = %for.cond40
  switch i32 %6, label %if.end58 [
    i32 1, label %if.then56
    i32 3, label %if.then56
    i32 5, label %if.then56
    i32 7, label %if.then56
    i32 8, label %if.then56
    i32 10, label %if.then56
    i32 12, label %if.then56
  ]

if.then56:                                        ; preds = %for.body42, %for.body42, %for.body42, %for.body42, %for.body42, %for.body42, %for.body42
  %add57 = add nsw i32 %total2.0, 31
  br label %if.end58

if.end58:                                         ; preds = %for.body42, %if.then56
  %total2.1 = phi i32 [ %add57, %if.then56 ], [ %total2.0, %for.body42 ]
  switch i32 %6, label %for.inc85 [
    i32 4, label %if.end68.thread
    i32 6, label %if.end68.thread
    i32 9, label %if.end68.thread
    i32 11, label %if.end68.thread
    i32 2, label %if.then70
  ]

if.end68.thread:                                  ; preds = %if.end58, %if.end58, %if.end58, %if.end58
  %add67 = add nsw i32 %total2.1, 30
  br label %for.inc85

if.then70:                                        ; preds = %if.end58
  br i1 %or.cond11, label %if.then79, label %if.else81

if.then79:                                        ; preds = %if.then70
  %add80 = add nsw i32 %total2.1, 29
  br label %for.inc85

if.else81:                                        ; preds = %if.then70
  %add82 = add nsw i32 %total2.1, 28
  br label %for.inc85

for.inc85:                                        ; preds = %if.end58, %if.end68.thread, %if.else81, %if.then79
  %total2.2 = phi i32 [ %add67, %if.end68.thread ], [ %add80, %if.then79 ], [ %add82, %if.else81 ], [ %total2.1, %if.end58 ]
  %inc86 = add nuw i32 %6, 1
  br label %for.cond40, !llvm.loop !12

for.end87:                                        ; preds = %for.cond40
  %sub = sub nsw i32 %total1.0, %total2.0
  %rem88 = srem i32 %sub, 7
  %cmp89 = icmp eq i32 %rem88, 0
  %str.1.str = select i1 %cmp89, ptr @str.1, ptr @str
  %puts14 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.1.str) #6
  %inc96 = add nuw nsw i32 %j.0, 1
  br label %for.cond, !llvm.loop !13

for.end97:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %month2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %month1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %year) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind willreturn }
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
