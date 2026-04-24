; ModuleID = '/tmp/tmptcxxgfdd.cpp'
source_filename = "/tmp/tmptcxxgfdd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %A = alloca [100 x [100 x i32]], align 16
  %B = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %k = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %y2) #3
  call void @llvm.lifetime.start.p0(i64 40000, ptr %A) #3
  call void @llvm.lifetime.start.p0(i64 40000, ptr %B) #3
  call void @llvm.lifetime.start.p0(i64 40000, ptr %c) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  store i32 0, ptr %k, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %x1, ptr noundef %y1)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %x1, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %k, align 4, !tbaa !5
  %3 = load i32, ptr %y1, align 4, !tbaa !5
  %sub2 = sub nsw i32 %3, 1
  %cmp3 = icmp sle i32 %2, %sub2
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %A, i64 0, i64 %idxprom
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx6)
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %6 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %inc9 = add nsw i32 %7, 1
  store i32 %inc9, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %x2, ptr noundef %y2)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc28, %for.end10
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %x2, align 4, !tbaa !5
  %sub13 = sub nsw i32 %9, 1
  %cmp14 = icmp sle i32 %8, %sub13
  br i1 %cmp14, label %for.body15, label %for.end30

for.body15:                                       ; preds = %for.cond12
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc25, %for.body15
  %10 = load i32, ptr %k, align 4, !tbaa !5
  %11 = load i32, ptr %y2, align 4, !tbaa !5
  %sub17 = sub nsw i32 %11, 1
  %cmp18 = icmp sle i32 %10, %sub17
  br i1 %cmp18, label %for.body19, label %for.end27

for.body19:                                       ; preds = %for.cond16
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %12 to i64
  %arrayidx21 = getelementptr inbounds [100 x [100 x i32]], ptr %B, i64 0, i64 %idxprom20
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom22 = sext i32 %13 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %arrayidx21, i64 0, i64 %idxprom22
  %call24 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx23)
  br label %for.inc25

for.inc25:                                        ; preds = %for.body19
  %14 = load i32, ptr %k, align 4, !tbaa !5
  %inc26 = add nsw i32 %14, 1
  store i32 %inc26, ptr %k, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !13

for.end27:                                        ; preds = %for.cond16
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %inc29 = add nsw i32 %15, 1
  store i32 %inc29, ptr %i, align 4, !tbaa !5
  br label %for.cond12, !llvm.loop !14

for.end30:                                        ; preds = %for.cond12
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #3
  store i32 0, ptr %result, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc67, %for.end30
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %17 = load i32, ptr %x1, align 4, !tbaa !5
  %sub32 = sub nsw i32 %17, 1
  %cmp33 = icmp sle i32 %16, %sub32
  br i1 %cmp33, label %for.body34, label %for.end69

for.body34:                                       ; preds = %for.cond31
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %cmp35 = icmp ne i32 %18, 0
  br i1 %cmp35, label %if.then, label %if.end

if.then:                                          ; preds = %for.body34
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body34
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc64, %if.end
  %19 = load i32, ptr %k, align 4, !tbaa !5
  %20 = load i32, ptr %y2, align 4, !tbaa !5
  %sub38 = sub nsw i32 %20, 1
  %cmp39 = icmp sle i32 %19, %sub38
  br i1 %cmp39, label %for.body40, label %for.end66

for.body40:                                       ; preds = %for.cond37
  store i32 0, ptr %x, align 4, !tbaa !5
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc53, %for.body40
  %21 = load i32, ptr %x, align 4, !tbaa !5
  %22 = load i32, ptr %y1, align 4, !tbaa !5
  %sub42 = sub nsw i32 %22, 1
  %cmp43 = icmp sle i32 %21, %sub42
  br i1 %cmp43, label %for.body44, label %for.end55

for.body44:                                       ; preds = %for.cond41
  %23 = load i32, ptr %result, align 4, !tbaa !5
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom45 = sext i32 %24 to i64
  %arrayidx46 = getelementptr inbounds [100 x [100 x i32]], ptr %A, i64 0, i64 %idxprom45
  %25 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom47 = sext i32 %25 to i64
  %arrayidx48 = getelementptr inbounds [100 x i32], ptr %arrayidx46, i64 0, i64 %idxprom47
  %26 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %27 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom49 = sext i32 %27 to i64
  %arrayidx50 = getelementptr inbounds [100 x [100 x i32]], ptr %B, i64 0, i64 %idxprom49
  %28 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom51 = sext i32 %28 to i64
  %arrayidx52 = getelementptr inbounds [100 x i32], ptr %arrayidx50, i64 0, i64 %idxprom51
  %29 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %mul = mul nsw i32 %26, %29
  %add = add nsw i32 %23, %mul
  store i32 %add, ptr %result, align 4, !tbaa !5
  br label %for.inc53

for.inc53:                                        ; preds = %for.body44
  %30 = load i32, ptr %x, align 4, !tbaa !5
  %inc54 = add nsw i32 %30, 1
  store i32 %inc54, ptr %x, align 4, !tbaa !5
  br label %for.cond41, !llvm.loop !15

for.end55:                                        ; preds = %for.cond41
  %31 = load i32, ptr %k, align 4, !tbaa !5
  %cmp56 = icmp eq i32 %31, 0
  br i1 %cmp56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %for.end55
  %32 = load i32, ptr %result, align 4, !tbaa !5
  %call58 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %32)
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %for.end55
  %33 = load i32, ptr %k, align 4, !tbaa !5
  %cmp60 = icmp ne i32 %33, 0
  br i1 %cmp60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.end59
  %34 = load i32, ptr %result, align 4, !tbaa !5
  %call62 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %34)
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end59
  store i32 0, ptr %result, align 4, !tbaa !5
  br label %for.inc64

for.inc64:                                        ; preds = %if.end63
  %35 = load i32, ptr %k, align 4, !tbaa !5
  %inc65 = add nsw i32 %35, 1
  store i32 %inc65, ptr %k, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !16

for.end66:                                        ; preds = %for.cond37
  br label %for.inc67

for.inc67:                                        ; preds = %for.end66
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %inc68 = add nsw i32 %36, 1
  store i32 %inc68, ptr %i, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !17

for.end69:                                        ; preds = %for.cond31
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 40000, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 40000, ptr %B) #3
  call void @llvm.lifetime.end.p0(i64 40000, ptr %A) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %y2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x1) #3
  %37 = load i32, ptr %retval, align 4
  ret i32 %37
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
!17 = distinct !{!17, !10, !11}
