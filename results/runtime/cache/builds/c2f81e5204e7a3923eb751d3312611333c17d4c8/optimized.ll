; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1wf3izjd.cpp"
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
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %year) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m1) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m2) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc53, %for.end ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end54

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %year, ptr noundef nonnull %m1, ptr noundef nonnull %m2)
  %1 = load i32, ptr %m1, align 4, !tbaa !5
  %2 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %1, %2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 %2, ptr %m1, align 4, !tbaa !5
  store i32 %1, ptr %m2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = phi i32 [ %2, %if.then ], [ %1, %for.body ]
  %4 = load i32, ptr %year, align 4
  %5 = and i32 %4, 3
  %cmp31 = icmp eq i32 %5, 0
  %rem32 = srem i32 %4, 100
  %cmp33 = icmp ne i32 %rem32, 0
  %or.cond = and i1 %cmp31, %cmp33
  %rem35 = srem i32 %4, 400
  %cmp36 = icmp eq i32 %rem35, 0
  %or.cond13 = or i1 %cmp36, %or.cond
  %.sink1 = select i1 %or.cond13, i32 29, i32 28
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 %1)
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %if.end
  %total.0 = phi i32 [ 0, %if.end ], [ %total.1, %for.inc ]
  %6 = phi i32 [ %3, %if.end ], [ %inc, %for.inc ]
  %exitcond.not = icmp eq i32 %6, %smax
  br i1 %exitcond.not, label %for.end, label %for.body5

for.body5:                                        ; preds = %for.cond3
  switch i32 %6, label %for.inc [
    i32 1, label %if.then18
    i32 3, label %if.then18
    i32 5, label %if.then18
    i32 7, label %if.then18
    i32 8, label %if.then18
    i32 10, label %if.then18
    i32 12, label %if.then18
    i32 4, label %if.then26
    i32 6, label %if.then26
    i32 9, label %if.then26
    i32 11, label %if.then26
    i32 2, label %if.then30
  ]

if.then18:                                        ; preds = %for.body5, %for.body5, %for.body5, %for.body5, %for.body5, %for.body5, %for.body5
  %add = add nsw i32 %total.0, 31
  br label %for.inc

if.then26:                                        ; preds = %for.body5, %for.body5, %for.body5, %for.body5
  %add27 = add nsw i32 %total.0, 30
  br label %for.inc

if.then30:                                        ; preds = %for.body5
  %add40 = add nsw i32 %.sink1, %total.0
  br label %for.inc

for.inc:                                          ; preds = %for.body5, %if.then18, %if.then30, %if.then26
  %total.1 = phi i32 [ %add, %if.then18 ], [ %add27, %if.then26 ], [ %add40, %if.then30 ], [ %total.0, %for.body5 ]
  %inc = add i32 %6, 1
  br label %for.cond3, !llvm.loop !9

for.end:                                          ; preds = %for.cond3
  %rem45 = srem i32 %total.0, 7
  %cmp46 = icmp eq i32 %rem45, 0
  %str.1.str = select i1 %cmp46, ptr @str.1, ptr @str
  %puts14 = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str)
  %inc53 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end54:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m2) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m1) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %year) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #3

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
!12 = distinct !{!12, !10, !11}
