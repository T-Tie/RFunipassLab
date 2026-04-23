; ModuleID = '/tmp/tmpug1d26gk.cpp'
source_filename = "/tmp/tmpug1d26gk.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [16 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %h = alloca i32, align 4
  %t = alloca i32, align 4
  %flag = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #3
  store i32 0, ptr %t, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %flag) #3
  store i32 1, ptr %flag, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end33, %entry
  %0 = load i32, ptr %flag, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %1, 16
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 %idxprom
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 %idxprom2
  %4 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %4, -1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, ptr %flag, align 4, !tbaa !5
  br label %for.end

if.end:                                           ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 %idxprom5
  %6 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %7, ptr %h, align 4, !tbaa !5
  br label %for.end

if.end9:                                          ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %if.then8, %if.then, %for.cond
  %9 = load i32, ptr %flag, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %9, 1
  br i1 %cmp10, label %if.then11, label %if.end33

if.then11:                                        ; preds = %for.end
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc29, %if.then11
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %11 = load i32, ptr %h, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %10, %11
  br i1 %cmp13, label %for.body14, label %for.end31

for.body14:                                       ; preds = %for.cond12
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc26, %for.body14
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %13 = load i32, ptr %h, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %12, %13
  br i1 %cmp16, label %for.body17, label %for.end28

for.body17:                                       ; preds = %for.cond15
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 %idxprom18
  %15 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 %idxprom20
  %17 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %mul = mul nsw i32 2, %17
  %cmp22 = icmp eq i32 %15, %mul
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %for.body17
  %18 = load i32, ptr %t, align 4, !tbaa !5
  %inc24 = add nsw i32 %18, 1
  store i32 %inc24, ptr %t, align 4, !tbaa !5
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %for.body17
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %inc27 = add nsw i32 %19, 1
  store i32 %inc27, ptr %j, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !12

for.end28:                                        ; preds = %for.cond15
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %inc30 = add nsw i32 %20, 1
  store i32 %inc30, ptr %i, align 4, !tbaa !5
  br label %for.cond12, !llvm.loop !13

for.end31:                                        ; preds = %for.cond12
  %21 = load i32, ptr %t, align 4, !tbaa !5
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %21)
  store i32 0, ptr %t, align 4, !tbaa !5
  br label %if.end33

if.end33:                                         ; preds = %for.end31, %for.end
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %flag) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #3
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
