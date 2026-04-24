; ModuleID = '/tmp/tmp2o21wjq8.cpp'
source_filename = "/tmp/tmp2o21wjq8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %temp = alloca i32, align 4
  %a = alloca [26 x i32], align 16
  %g = alloca [26 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #3
  call void @llvm.lifetime.start.p0(i64 104, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 104, ptr %g) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %k)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %k, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [26 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %m, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc7, %for.end
  %4 = load i32, ptr %m, align 4, !tbaa !5
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end9

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, ptr %m, align 4, !tbaa !5
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [26 x i32], ptr %g, i64 0, i64 %idxprom5
  store i32 1, ptr %arrayidx6, align 4, !tbaa !5
  br label %for.inc7

for.inc7:                                         ; preds = %for.body4
  %7 = load i32, ptr %m, align 4, !tbaa !5
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, ptr %m, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.end9:                                         ; preds = %for.cond2
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %sub = sub nsw i32 %8, 1
  store i32 %sub, ptr %n, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc35, %for.end9
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %cmp11 = icmp sgt i32 %9, 0
  br i1 %cmp11, label %for.body12, label %for.end36

for.body12:                                       ; preds = %for.cond10
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %add = add nsw i32 %10, 1
  store i32 %add, ptr %j, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc32, %for.body12
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %12 = load i32, ptr %k, align 4, !tbaa !5
  %cmp14 = icmp sle i32 %11, %12
  br i1 %cmp14, label %for.body15, label %for.end34

for.body15:                                       ; preds = %for.cond13
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [26 x i32], ptr %a, i64 0, i64 %idxprom16
  %14 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [26 x i32], ptr %a, i64 0, i64 %idxprom18
  %16 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp sge i32 %14, %16
  br i1 %cmp20, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body15
  %17 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds [26 x i32], ptr %g, i64 0, i64 %idxprom21
  %18 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %sub23 = sub nsw i32 %18, 1
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom24 = sext i32 %19 to i64
  %arrayidx25 = getelementptr inbounds [26 x i32], ptr %g, i64 0, i64 %idxprom24
  %20 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %sub23, %20
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom27 = sext i32 %21 to i64
  %arrayidx28 = getelementptr inbounds [26 x i32], ptr %g, i64 0, i64 %idxprom27
  %22 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %add29 = add nsw i32 %22, 1
  %23 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom30 = sext i32 %23 to i64
  %arrayidx31 = getelementptr inbounds [26 x i32], ptr %g, i64 0, i64 %idxprom30
  store i32 %add29, ptr %arrayidx31, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body15
  br label %for.inc32

for.inc32:                                        ; preds = %if.end
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %inc33 = add nsw i32 %24, 1
  store i32 %inc33, ptr %j, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !13

for.end34:                                        ; preds = %for.cond13
  br label %for.inc35

for.inc35:                                        ; preds = %for.end34
  %25 = load i32, ptr %n, align 4, !tbaa !5
  %dec = add nsw i32 %25, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !14

for.end36:                                        ; preds = %for.cond10
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc62, %for.end36
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %27 = load i32, ptr %k, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %26, %27
  br i1 %cmp38, label %for.body39, label %for.end64

for.body39:                                       ; preds = %for.cond37
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %add40 = add nsw i32 %28, 1
  store i32 %add40, ptr %j, align 4, !tbaa !5
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc59, %for.body39
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %30 = load i32, ptr %k, align 4, !tbaa !5
  %cmp42 = icmp sle i32 %29, %30
  br i1 %cmp42, label %for.body43, label %for.end61

for.body43:                                       ; preds = %for.cond41
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom44 = sext i32 %31 to i64
  %arrayidx45 = getelementptr inbounds [26 x i32], ptr %g, i64 0, i64 %idxprom44
  %32 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom46 = sext i32 %33 to i64
  %arrayidx47 = getelementptr inbounds [26 x i32], ptr %g, i64 0, i64 %idxprom46
  %34 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %32, %34
  br i1 %cmp48, label %if.then49, label %if.end58

if.then49:                                        ; preds = %for.body43
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom50 = sext i32 %35 to i64
  %arrayidx51 = getelementptr inbounds [26 x i32], ptr %g, i64 0, i64 %idxprom50
  %36 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  store i32 %36, ptr %temp, align 4, !tbaa !5
  %37 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom52 = sext i32 %37 to i64
  %arrayidx53 = getelementptr inbounds [26 x i32], ptr %g, i64 0, i64 %idxprom52
  %38 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom54 = sext i32 %39 to i64
  %arrayidx55 = getelementptr inbounds [26 x i32], ptr %g, i64 0, i64 %idxprom54
  store i32 %38, ptr %arrayidx55, align 4, !tbaa !5
  %40 = load i32, ptr %temp, align 4, !tbaa !5
  %41 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom56 = sext i32 %41 to i64
  %arrayidx57 = getelementptr inbounds [26 x i32], ptr %g, i64 0, i64 %idxprom56
  store i32 %40, ptr %arrayidx57, align 4, !tbaa !5
  br label %if.end58

if.end58:                                         ; preds = %if.then49, %for.body43
  br label %for.inc59

for.inc59:                                        ; preds = %if.end58
  %42 = load i32, ptr %j, align 4, !tbaa !5
  %inc60 = add nsw i32 %42, 1
  store i32 %inc60, ptr %j, align 4, !tbaa !5
  br label %for.cond41, !llvm.loop !15

for.end61:                                        ; preds = %for.cond41
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %inc63 = add nsw i32 %43, 1
  store i32 %inc63, ptr %i, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !16

for.end64:                                        ; preds = %for.cond37
  %arrayidx65 = getelementptr inbounds [26 x i32], ptr %g, i64 0, i64 1
  %44 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %call66 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %44)
  call void @llvm.lifetime.end.p0(i64 104, ptr %g) #3
  call void @llvm.lifetime.end.p0(i64 104, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
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
!16 = distinct !{!16, !10, !11}
