; ModuleID = '/tmp/tmpkca5ufs_.cpp'
source_filename = "/tmp/tmpkca5ufs_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %N = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %k = alloca i32, align 4
  %e = alloca i32, align 4
  %a = alloca [500 x i32], align 16
  %k2 = alloca i32, align 4
  %first = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %N) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.start.p0(i64 2000, ptr %a) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %N)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %N, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %k2) #3
  store i32 1, ptr %k2, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc27, %for.end
  %4 = load i32, ptr %k2, align 4, !tbaa !5
  %5 = load i32, ptr %N, align 4, !tbaa !5
  %cmp4 = icmp sle i32 %4, %5
  br i1 %cmp4, label %for.body5, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k2) #3
  br label %for.end29

for.body5:                                        ; preds = %for.cond3
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc24, %for.body5
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %N, align 4, !tbaa !5
  %8 = load i32, ptr %k2, align 4, !tbaa !5
  %sub = sub nsw i32 %7, %8
  %cmp7 = icmp slt i32 %6, %sub
  br i1 %cmp7, label %for.body8, label %for.end26

for.body8:                                        ; preds = %for.cond6
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom9
  %10 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %11, 1
  %idxprom11 = sext i32 %add to i64
  %arrayidx12 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom11
  %12 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %10, %12
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body8
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %add14 = add nsw i32 %13, 1
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom15
  %14 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  store i32 %14, ptr %e, align 4, !tbaa !5
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom17
  %16 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %add19 = add nsw i32 %17, 1
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom20
  store i32 %16, ptr %arrayidx21, align 4, !tbaa !5
  %18 = load i32, ptr %e, align 4, !tbaa !5
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom22
  store i32 %18, ptr %arrayidx23, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body8
  br label %for.inc24

for.inc24:                                        ; preds = %if.end
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %inc25 = add nsw i32 %20, 1
  store i32 %inc25, ptr %i, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !12

for.end26:                                        ; preds = %for.cond6
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %21 = load i32, ptr %k2, align 4, !tbaa !5
  %inc28 = add nsw i32 %21, 1
  store i32 %inc28, ptr %k2, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !13

for.end29:                                        ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %first) #3
  store i32 0, ptr %first, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc41, %for.end29
  %22 = load i32, ptr %first, align 4, !tbaa !5
  %23 = load i32, ptr %N, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %22, %23
  br i1 %cmp31, label %for.body32, label %for.end43

for.body32:                                       ; preds = %for.cond30
  %24 = load i32, ptr %first, align 4, !tbaa !5
  %idxprom33 = sext i32 %24 to i64
  %arrayidx34 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom33
  %25 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %rem = srem i32 %25, 2
  %cmp35 = icmp eq i32 %rem, 1
  br i1 %cmp35, label %if.then36, label %if.end40

if.then36:                                        ; preds = %for.body32
  %26 = load i32, ptr %first, align 4, !tbaa !5
  %idxprom37 = sext i32 %26 to i64
  %arrayidx38 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom37
  %27 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %27)
  br label %for.end43

if.end40:                                         ; preds = %for.body32
  br label %for.inc41

for.inc41:                                        ; preds = %if.end40
  %28 = load i32, ptr %first, align 4, !tbaa !5
  %inc42 = add nsw i32 %28, 1
  store i32 %inc42, ptr %first, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !14

for.end43:                                        ; preds = %if.then36, %for.cond30
  %29 = load i32, ptr %first, align 4, !tbaa !5
  %add44 = add nsw i32 %29, 1
  store i32 %add44, ptr %i, align 4, !tbaa !5
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc57, %for.end43
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %31 = load i32, ptr %N, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %30, %31
  br i1 %cmp46, label %for.body47, label %for.end59

for.body47:                                       ; preds = %for.cond45
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %32 to i64
  %arrayidx49 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom48
  %33 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %rem50 = srem i32 %33, 2
  %cmp51 = icmp eq i32 %rem50, 1
  br i1 %cmp51, label %if.then52, label %if.end56

if.then52:                                        ; preds = %for.body47
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %34 to i64
  %arrayidx54 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom53
  %35 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %35)
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %for.body47
  br label %for.inc57

for.inc57:                                        ; preds = %if.end56
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %inc58 = add nsw i32 %36, 1
  store i32 %inc58, ptr %i, align 4, !tbaa !5
  br label %for.cond45, !llvm.loop !15

for.end59:                                        ; preds = %for.cond45
  call void @llvm.lifetime.end.p0(i64 4, ptr %first) #3
  call void @llvm.lifetime.end.p0(i64 2000, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %N) #3
  ret i32 0
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
!15 = distinct !{!15, !10, !11}
