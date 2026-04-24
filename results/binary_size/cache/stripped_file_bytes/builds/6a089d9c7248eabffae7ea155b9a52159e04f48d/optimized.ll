; ModuleID = '/tmp/tmp0u2h48y9.cpp'
source_filename = "/tmp/tmp0u2h48y9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %sz = alloca [500 x i32], align 16
  %js = alloca [500 x i32], align 16
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %e = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 2000, ptr %sz) #3
  call void @llvm.lifetime.start.p0(i64 2000, ptr %js) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #3
  store i32 0, ptr %x, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %3, 1
  store i32 %add, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc13, %for.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end15

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom5
  %7 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %rem = srem i32 %7, 2
  %cmp7 = icmp eq i32 %rem, 1
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom8
  %9 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %10 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom10
  store i32 %9, ptr %arrayidx11, align 4, !tbaa !5
  %11 = load i32, ptr %x, align 4, !tbaa !5
  %add12 = add nsw i32 %11, 1
  store i32 %add12, ptr %x, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  br label %for.inc13

for.inc13:                                        ; preds = %if.end
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %add14 = add nsw i32 %12, 1
  store i32 %add14, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.end15:                                        ; preds = %for.cond2
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc43, %for.end15
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %14 = load i32, ptr %x, align 4, !tbaa !5
  %cmp17 = icmp sle i32 %13, %14
  br i1 %cmp17, label %for.body18, label %for.end45

for.body18:                                       ; preds = %for.cond16
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc40, %for.body18
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %16 = load i32, ptr %x, align 4, !tbaa !5
  %17 = load i32, ptr %k, align 4, !tbaa !5
  %sub = sub nsw i32 %16, %17
  %cmp20 = icmp slt i32 %15, %sub
  br i1 %cmp20, label %for.body21, label %for.end42

for.body21:                                       ; preds = %for.cond19
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom22
  %19 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %add24 = add nsw i32 %20, 1
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom25
  %21 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %cmp27 = icmp sgt i32 %19, %21
  br i1 %cmp27, label %if.then28, label %if.end39

if.then28:                                        ; preds = %for.body21
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %22 to i64
  %arrayidx30 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom29
  %23 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  store i32 %23, ptr %e, align 4, !tbaa !5
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %add31 = add nsw i32 %24, 1
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom32
  %25 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %26 to i64
  %arrayidx35 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom34
  store i32 %25, ptr %arrayidx35, align 4, !tbaa !5
  %27 = load i32, ptr %e, align 4, !tbaa !5
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %add36 = add nsw i32 %28, 1
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom37
  store i32 %27, ptr %arrayidx38, align 4, !tbaa !5
  br label %if.end39

if.end39:                                         ; preds = %if.then28, %for.body21
  br label %for.inc40

for.inc40:                                        ; preds = %if.end39
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %add41 = add nsw i32 %29, 1
  store i32 %add41, ptr %i, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !13

for.end42:                                        ; preds = %for.cond19
  br label %for.inc43

for.inc43:                                        ; preds = %for.end42
  %30 = load i32, ptr %k, align 4, !tbaa !5
  %add44 = add nsw i32 %30, 1
  store i32 %add44, ptr %k, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !14

for.end45:                                        ; preds = %for.cond16
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc62, %for.end45
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %32 = load i32, ptr %x, align 4, !tbaa !5
  %cmp47 = icmp slt i32 %31, %32
  br i1 %cmp47, label %for.body48, label %for.end64

for.body48:                                       ; preds = %for.cond46
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %34 = load i32, ptr %x, align 4, !tbaa !5
  %sub49 = sub nsw i32 %34, 1
  %cmp50 = icmp slt i32 %33, %sub49
  br i1 %cmp50, label %if.then51, label %if.else

if.then51:                                        ; preds = %for.body48
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom52 = sext i32 %35 to i64
  %arrayidx53 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom52
  %36 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %36)
  br label %if.end61

if.else:                                          ; preds = %for.body48
  %37 = load i32, ptr %x, align 4, !tbaa !5
  %sub55 = sub nsw i32 %37, 1
  store i32 %sub55, ptr %i, align 4, !tbaa !5
  %tobool = icmp ne i32 %sub55, 0
  br i1 %tobool, label %if.then56, label %if.end60

if.then56:                                        ; preds = %if.else
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom57 = sext i32 %38 to i64
  %arrayidx58 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom57
  %39 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %call59 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %39)
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %if.else
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then51
  br label %for.inc62

for.inc62:                                        ; preds = %if.end61
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %add63 = add nsw i32 %40, 1
  store i32 %add63, ptr %i, align 4, !tbaa !5
  br label %for.cond46, !llvm.loop !15

for.end64:                                        ; preds = %for.cond46
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 2000, ptr %js) #3
  call void @llvm.lifetime.end.p0(i64 2000, ptr %sz) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
!15 = distinct !{!15, !10, !11}
