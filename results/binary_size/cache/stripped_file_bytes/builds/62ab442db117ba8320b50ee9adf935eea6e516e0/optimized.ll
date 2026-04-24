; ModuleID = '/tmp/tmprxzhhhxz.cpp'
source_filename = "/tmp/tmprxzhhhxz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [10000 x i32], align 16
  %st = alloca [10000 x i32], align 16
  %N = alloca i32, align 4
  %j = alloca i32, align 4
  %ii = alloca i32, align 4
  %e = alloca i32, align 4
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  %h = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 40000, ptr %s) #3
  call void @llvm.lifetime.start.p0(i64 40000, ptr %st) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %N) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %N)
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  store i32 0, ptr %j, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ii) #3
  store i32 0, ptr %ii, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %ii, align 4, !tbaa !5
  %1 = load i32, ptr %N, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %ii) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %ii, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10000 x i32], ptr %s, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %3 = load i32, ptr %ii, align 4, !tbaa !5
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [10000 x i32], ptr %s, i64 0, i64 %idxprom2
  %4 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  %rem = srem i32 %4, 2
  %cmp4 = icmp ne i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %ii, align 4, !tbaa !5
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [10000 x i32], ptr %s, i64 0, i64 %idxprom5
  %6 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [10000 x i32], ptr %st, i64 0, i64 %idxprom7
  store i32 %6, ptr %arrayidx8, align 4, !tbaa !5
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %ii, align 4, !tbaa !5
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, ptr %ii, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc38, %for.end
  %10 = load i32, ptr %k, align 4, !tbaa !5
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %cmp11 = icmp sle i32 %10, %11
  br i1 %cmp11, label %for.body13, label %for.cond.cleanup12

for.cond.cleanup12:                               ; preds = %for.cond10
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  br label %for.end40

for.body13:                                       ; preds = %for.cond10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc35, %for.body13
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %14 = load i32, ptr %k, align 4, !tbaa !5
  %sub = sub nsw i32 %13, %14
  %cmp15 = icmp slt i32 %12, %sub
  br i1 %cmp15, label %for.body17, label %for.cond.cleanup16

for.cond.cleanup16:                               ; preds = %for.cond14
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  br label %for.end37

for.body17:                                       ; preds = %for.cond14
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [10000 x i32], ptr %st, i64 0, i64 %idxprom18
  %16 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %17, 1
  %idxprom20 = sext i32 %add to i64
  %arrayidx21 = getelementptr inbounds [10000 x i32], ptr %st, i64 0, i64 %idxprom20
  %18 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %cmp22 = icmp sgt i32 %16, %18
  br i1 %cmp22, label %if.then23, label %if.end34

if.then23:                                        ; preds = %for.body17
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %add24 = add nsw i32 %19, 1
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds [10000 x i32], ptr %st, i64 0, i64 %idxprom25
  %20 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  store i32 %20, ptr %e, align 4, !tbaa !5
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %21 to i64
  %arrayidx28 = getelementptr inbounds [10000 x i32], ptr %st, i64 0, i64 %idxprom27
  %22 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %add29 = add nsw i32 %23, 1
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds [10000 x i32], ptr %st, i64 0, i64 %idxprom30
  store i32 %22, ptr %arrayidx31, align 4, !tbaa !5
  %24 = load i32, ptr %e, align 4, !tbaa !5
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %25 to i64
  %arrayidx33 = getelementptr inbounds [10000 x i32], ptr %st, i64 0, i64 %idxprom32
  store i32 %24, ptr %arrayidx33, align 4, !tbaa !5
  br label %if.end34

if.end34:                                         ; preds = %if.then23, %for.body17
  br label %for.inc35

for.inc35:                                        ; preds = %if.end34
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %inc36 = add nsw i32 %26, 1
  store i32 %inc36, ptr %i, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !12

for.end37:                                        ; preds = %for.cond.cleanup16
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %27 = load i32, ptr %k, align 4, !tbaa !5
  %inc39 = add nsw i32 %27, 1
  store i32 %inc39, ptr %k, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !13

for.end40:                                        ; preds = %for.cond.cleanup12
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #3
  store i32 0, ptr %h, align 4, !tbaa !5
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc49, %for.end40
  %28 = load i32, ptr %h, align 4, !tbaa !5
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %sub42 = sub nsw i32 %29, 1
  %cmp43 = icmp slt i32 %28, %sub42
  br i1 %cmp43, label %for.body45, label %for.cond.cleanup44

for.cond.cleanup44:                               ; preds = %for.cond41
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #3
  br label %for.end51

for.body45:                                       ; preds = %for.cond41
  %30 = load i32, ptr %h, align 4, !tbaa !5
  %idxprom46 = sext i32 %30 to i64
  %arrayidx47 = getelementptr inbounds [10000 x i32], ptr %st, i64 0, i64 %idxprom46
  %31 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %call48 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %31)
  br label %for.inc49

for.inc49:                                        ; preds = %for.body45
  %32 = load i32, ptr %h, align 4, !tbaa !5
  %inc50 = add nsw i32 %32, 1
  store i32 %inc50, ptr %h, align 4, !tbaa !5
  br label %for.cond41, !llvm.loop !14

for.end51:                                        ; preds = %for.cond.cleanup44
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %sub52 = sub nsw i32 %33, 1
  %idxprom53 = sext i32 %sub52 to i64
  %arrayidx54 = getelementptr inbounds [10000 x i32], ptr %st, i64 0, i64 %idxprom53
  %34 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %34)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %N) #3
  call void @llvm.lifetime.end.p0(i64 40000, ptr %st) #3
  call void @llvm.lifetime.end.p0(i64 40000, ptr %s) #3
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
