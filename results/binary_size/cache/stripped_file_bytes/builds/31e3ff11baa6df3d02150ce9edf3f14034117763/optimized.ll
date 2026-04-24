; ModuleID = '/tmp/tmpxtihs9v2.cpp'
source_filename = "/tmp/tmpxtihs9v2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %num = alloca [500 x i32], align 16
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %t = alloca i32, align 4
  %e = alloca i32, align 4
  %sz = alloca [500 x i32], align 16
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 2000, ptr %num) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #3
  store i32 0, ptr %t, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.start.p0(i64 2000, ptr %sz) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %num, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [500 x i32], ptr %num, i64 0, i64 %idxprom2
  %4 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  %rem = srem i32 %4, 2
  %cmp4 = icmp ne i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [500 x i32], ptr %num, i64 0, i64 %idxprom5
  %6 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %7 = load i32, ptr %t, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom7
  store i32 %6, ptr %arrayidx8, align 4, !tbaa !5
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  %9 = load i32, ptr %k, align 4, !tbaa !5
  store i32 %9, ptr %t, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %inc9 = add nsw i32 %10, 1
  store i32 %inc9, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #3
  store i32 1, ptr %m, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc38, %for.end
  %11 = load i32, ptr %m, align 4, !tbaa !5
  %12 = load i32, ptr %k, align 4, !tbaa !5
  %cmp11 = icmp sle i32 %11, %12
  br i1 %cmp11, label %for.body13, label %for.cond.cleanup12

for.cond.cleanup12:                               ; preds = %for.cond10
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #3
  br label %for.end40

for.body13:                                       ; preds = %for.cond10
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
  store i32 0, ptr %a, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc35, %for.body13
  %13 = load i32, ptr %a, align 4, !tbaa !5
  %14 = load i32, ptr %k, align 4, !tbaa !5
  %15 = load i32, ptr %m, align 4, !tbaa !5
  %sub = sub nsw i32 %14, %15
  %cmp15 = icmp slt i32 %13, %sub
  br i1 %cmp15, label %for.body17, label %for.cond.cleanup16

for.cond.cleanup16:                               ; preds = %for.cond14
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3
  br label %for.end37

for.body17:                                       ; preds = %for.cond14
  %16 = load i32, ptr %a, align 4, !tbaa !5
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom18
  %17 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %18 = load i32, ptr %a, align 4, !tbaa !5
  %add = add nsw i32 %18, 1
  %idxprom20 = sext i32 %add to i64
  %arrayidx21 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom20
  %19 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %cmp22 = icmp sgt i32 %17, %19
  br i1 %cmp22, label %if.then23, label %if.end34

if.then23:                                        ; preds = %for.body17
  %20 = load i32, ptr %a, align 4, !tbaa !5
  %add24 = add nsw i32 %20, 1
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom25
  %21 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  store i32 %21, ptr %e, align 4, !tbaa !5
  %22 = load i32, ptr %a, align 4, !tbaa !5
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom27
  %23 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %24 = load i32, ptr %a, align 4, !tbaa !5
  %add29 = add nsw i32 %24, 1
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom30
  store i32 %23, ptr %arrayidx31, align 4, !tbaa !5
  %25 = load i32, ptr %e, align 4, !tbaa !5
  %26 = load i32, ptr %a, align 4, !tbaa !5
  %idxprom32 = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom32
  store i32 %25, ptr %arrayidx33, align 4, !tbaa !5
  br label %if.end34

if.end34:                                         ; preds = %if.then23, %for.body17
  br label %for.inc35

for.inc35:                                        ; preds = %if.end34
  %27 = load i32, ptr %a, align 4, !tbaa !5
  %inc36 = add nsw i32 %27, 1
  store i32 %inc36, ptr %a, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !12

for.end37:                                        ; preds = %for.cond.cleanup16
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %28 = load i32, ptr %m, align 4, !tbaa !5
  %inc39 = add nsw i32 %28, 1
  store i32 %inc39, ptr %m, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !13

for.end40:                                        ; preds = %for.cond.cleanup12
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  store i32 0, ptr %b, align 4, !tbaa !5
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc55, %for.end40
  %29 = load i32, ptr %b, align 4, !tbaa !5
  %30 = load i32, ptr %k, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %29, %30
  br i1 %cmp42, label %for.body44, label %for.cond.cleanup43

for.cond.cleanup43:                               ; preds = %for.cond41
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3
  br label %for.end57

for.body44:                                       ; preds = %for.cond41
  %31 = load i32, ptr %b, align 4, !tbaa !5
  %32 = load i32, ptr %k, align 4, !tbaa !5
  %sub45 = sub nsw i32 %32, 1
  %cmp46 = icmp eq i32 %31, %sub45
  br i1 %cmp46, label %if.then47, label %if.else

if.then47:                                        ; preds = %for.body44
  %33 = load i32, ptr %b, align 4, !tbaa !5
  %idxprom48 = sext i32 %33 to i64
  %arrayidx49 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom48
  %34 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %call50 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %34)
  br label %if.end54

if.else:                                          ; preds = %for.body44
  %35 = load i32, ptr %b, align 4, !tbaa !5
  %idxprom51 = sext i32 %35 to i64
  %arrayidx52 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom51
  %36 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %call53 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %36)
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then47
  br label %for.inc55

for.inc55:                                        ; preds = %if.end54
  %37 = load i32, ptr %b, align 4, !tbaa !5
  %inc56 = add nsw i32 %37, 1
  store i32 %inc56, ptr %b, align 4, !tbaa !5
  br label %for.cond41, !llvm.loop !14

for.end57:                                        ; preds = %for.cond.cleanup43
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 2000, ptr %sz) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 2000, ptr %num) #3
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
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
