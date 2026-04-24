; ModuleID = '/tmp/tmpbm6g64ne.cpp'
source_filename = "/tmp/tmpbm6g64ne.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %sz = alloca [500 x i32], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %max = alloca i32, align 4
  %e = alloca i32, align 4
  %js = alloca [500 x i32], align 16
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 2000, ptr %sz) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.start.p0(i64 2000, ptr %js) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom2
  %4 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  %rem = srem i32 %4, 2
  %cmp4 = icmp eq i32 %rem, 1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom5
  %6 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom7
  store i32 %6, ptr %arrayidx8, align 4, !tbaa !5
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %max, align 4, !tbaa !5
  store i32 1, ptr %m, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc43, %for.end
  %10 = load i32, ptr %m, align 4, !tbaa !5
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %cmp11 = icmp sle i32 %10, %11
  br i1 %cmp11, label %for.body12, label %for.end45

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc24, %for.body12
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %14 = load i32, ptr %m, align 4, !tbaa !5
  %sub14 = sub nsw i32 %13, %14
  %cmp15 = icmp sle i32 %12, %sub14
  br i1 %cmp15, label %for.body16, label %for.end26

for.body16:                                       ; preds = %for.cond13
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom17
  %16 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %17 = load i32, ptr %max, align 4, !tbaa !5
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom19
  %18 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %cmp21 = icmp sgt i32 %16, %18
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.body16
  %19 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %19, ptr %max, align 4, !tbaa !5
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %for.body16
  br label %for.inc24

for.inc24:                                        ; preds = %if.end23
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %inc25 = add nsw i32 %20, 1
  store i32 %inc25, ptr %i, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !12

for.end26:                                        ; preds = %for.cond13
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %22 = load i32, ptr %m, align 4, !tbaa !5
  %sub27 = sub nsw i32 %21, %22
  %idxprom28 = sext i32 %sub27 to i64
  %arrayidx29 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom28
  %23 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  store i32 %23, ptr %e, align 4, !tbaa !5
  %24 = load i32, ptr %max, align 4, !tbaa !5
  %idxprom30 = sext i32 %24 to i64
  %arrayidx31 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom30
  %25 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %27 = load i32, ptr %m, align 4, !tbaa !5
  %sub32 = sub nsw i32 %26, %27
  %idxprom33 = sext i32 %sub32 to i64
  %arrayidx34 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom33
  store i32 %25, ptr %arrayidx34, align 4, !tbaa !5
  %28 = load i32, ptr %e, align 4, !tbaa !5
  %29 = load i32, ptr %max, align 4, !tbaa !5
  %idxprom35 = sext i32 %29 to i64
  %arrayidx36 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom35
  store i32 %28, ptr %arrayidx36, align 4, !tbaa !5
  %30 = load i32, ptr %max, align 4, !tbaa !5
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %32 = load i32, ptr %m, align 4, !tbaa !5
  %sub37 = sub nsw i32 %31, %32
  %cmp38 = icmp eq i32 %30, %sub37
  br i1 %cmp38, label %if.then39, label %if.end42

if.then39:                                        ; preds = %for.end26
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %34 = load i32, ptr %m, align 4, !tbaa !5
  %sub40 = sub nsw i32 %33, %34
  %sub41 = sub nsw i32 %sub40, 1
  store i32 %sub41, ptr %max, align 4, !tbaa !5
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %for.end26
  br label %for.inc43

for.inc43:                                        ; preds = %if.end42
  %35 = load i32, ptr %m, align 4, !tbaa !5
  %inc44 = add nsw i32 %35, 1
  store i32 %inc44, ptr %m, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !13

for.end45:                                        ; preds = %for.cond10
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc53, %for.end45
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %37 = load i32, ptr %j, align 4, !tbaa !5
  %sub47 = sub nsw i32 %37, 1
  %cmp48 = icmp slt i32 %36, %sub47
  br i1 %cmp48, label %for.body49, label %for.end55

for.body49:                                       ; preds = %for.cond46
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom50 = sext i32 %38 to i64
  %arrayidx51 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom50
  %39 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %call52 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %39)
  br label %for.inc53

for.inc53:                                        ; preds = %for.body49
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %inc54 = add nsw i32 %40, 1
  store i32 %inc54, ptr %i, align 4, !tbaa !5
  br label %for.cond46, !llvm.loop !14

for.end55:                                        ; preds = %for.cond46
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %42 = load i32, ptr %j, align 4, !tbaa !5
  %sub56 = sub nsw i32 %42, 1
  %cmp57 = icmp eq i32 %41, %sub56
  br i1 %cmp57, label %if.then58, label %if.end62

if.then58:                                        ; preds = %for.end55
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom59 = sext i32 %43 to i64
  %arrayidx60 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom59
  %44 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %call61 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %44)
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %for.end55
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 2000, ptr %js) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
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
