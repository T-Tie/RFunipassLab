; ModuleID = '/tmp/tmpczednpyt.cpp'
source_filename = "/tmp/tmpczednpyt.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %N = alloca i32, align 4
  %e = alloca i32, align 4
  %a = alloca [500 x i32], align 16
  %b = alloca [500 x i32], align 16
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %s = alloca i32, align 4
  %r = alloca i32, align 4
  %u = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %N) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.start.p0(i64 2000, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 2000, ptr %b) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %N)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #3
  store i32 0, ptr %t, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %N, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx)
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom2
  %4 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  %rem = srem i32 %4, 2
  %cmp4 = icmp ne i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom5
  %6 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %7 = load i32, ptr %t, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom7
  store i32 %6, ptr %arrayidx8, align 4, !tbaa !5
  %8 = load i32, ptr %t, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %t, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, ptr %i, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #3
  store i32 1, ptr %s, align 4, !tbaa !5
  br label %while.cond10

while.cond10:                                     ; preds = %while.end34, %while.end
  %10 = load i32, ptr %s, align 4, !tbaa !5
  %11 = load i32, ptr %t, align 4, !tbaa !5
  %cmp11 = icmp sle i32 %10, %11
  br i1 %cmp11, label %while.body12, label %while.end36

while.body12:                                     ; preds = %while.cond10
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #3
  store i32 0, ptr %r, align 4, !tbaa !5
  br label %while.cond13

while.cond13:                                     ; preds = %if.end32, %while.body12
  %12 = load i32, ptr %r, align 4, !tbaa !5
  %13 = load i32, ptr %t, align 4, !tbaa !5
  %14 = load i32, ptr %s, align 4, !tbaa !5
  %sub = sub nsw i32 %13, %14
  %cmp14 = icmp slt i32 %12, %sub
  br i1 %cmp14, label %while.body15, label %while.end34

while.body15:                                     ; preds = %while.cond13
  %15 = load i32, ptr %r, align 4, !tbaa !5
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom16
  %16 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %17 = load i32, ptr %r, align 4, !tbaa !5
  %add = add nsw i32 %17, 1
  %idxprom18 = sext i32 %add to i64
  %arrayidx19 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom18
  %18 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp sgt i32 %16, %18
  br i1 %cmp20, label %if.then21, label %if.end32

if.then21:                                        ; preds = %while.body15
  %19 = load i32, ptr %r, align 4, !tbaa !5
  %add22 = add nsw i32 %19, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom23
  %20 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  store i32 %20, ptr %e, align 4, !tbaa !5
  %21 = load i32, ptr %r, align 4, !tbaa !5
  %idxprom25 = sext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom25
  %22 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %23 = load i32, ptr %r, align 4, !tbaa !5
  %add27 = add nsw i32 %23, 1
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom28
  store i32 %22, ptr %arrayidx29, align 4, !tbaa !5
  %24 = load i32, ptr %e, align 4, !tbaa !5
  %25 = load i32, ptr %r, align 4, !tbaa !5
  %idxprom30 = sext i32 %25 to i64
  %arrayidx31 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom30
  store i32 %24, ptr %arrayidx31, align 4, !tbaa !5
  br label %if.end32

if.end32:                                         ; preds = %if.then21, %while.body15
  %26 = load i32, ptr %r, align 4, !tbaa !5
  %inc33 = add nsw i32 %26, 1
  store i32 %inc33, ptr %r, align 4, !tbaa !5
  br label %while.cond13, !llvm.loop !12

while.end34:                                      ; preds = %while.cond13
  %27 = load i32, ptr %s, align 4, !tbaa !5
  %inc35 = add nsw i32 %27, 1
  store i32 %inc35, ptr %s, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #3
  br label %while.cond10, !llvm.loop !13

while.end36:                                      ; preds = %while.cond10
  call void @llvm.lifetime.start.p0(i64 4, ptr %u) #3
  store i32 0, ptr %u, align 4, !tbaa !5
  br label %while.cond37

while.cond37:                                     ; preds = %if.end47, %while.end36
  %28 = load i32, ptr %u, align 4, !tbaa !5
  %29 = load i32, ptr %t, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %28, %29
  br i1 %cmp38, label %while.body39, label %while.end49

while.body39:                                     ; preds = %while.cond37
  %30 = load i32, ptr %u, align 4, !tbaa !5
  %cmp40 = icmp eq i32 %30, 0
  br i1 %cmp40, label %if.then41, label %if.else

if.then41:                                        ; preds = %while.body39
  %arrayidx42 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 0
  %31 = load i32, ptr %arrayidx42, align 16, !tbaa !5
  %call43 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %31)
  br label %if.end47

if.else:                                          ; preds = %while.body39
  %32 = load i32, ptr %u, align 4, !tbaa !5
  %idxprom44 = sext i32 %32 to i64
  %arrayidx45 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom44
  %33 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %call46 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %33)
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then41
  %34 = load i32, ptr %u, align 4, !tbaa !5
  %inc48 = add nsw i32 %34, 1
  store i32 %inc48, ptr %u, align 4, !tbaa !5
  br label %while.cond37, !llvm.loop !14

while.end49:                                      ; preds = %while.cond37
  call void @llvm.lifetime.end.p0(i64 4, ptr %u) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 2000, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 2000, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
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
