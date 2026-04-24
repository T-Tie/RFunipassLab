; ModuleID = '/tmp/tmp7m1pkppq.cpp'
source_filename = "/tmp/tmp7m1pkppq.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  %m = alloca i32, align 4
  %i = alloca i32, align 4
  %h = alloca [26 x i32], align 16
  %q = alloca [26 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 104, ptr %h) #3
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [26 x i32], ptr %h, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 104, ptr %q) #3
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc7, %for.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end9

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [26 x i32], ptr %q, i64 0, i64 %idxprom5
  store i32 1, ptr %arrayidx6, align 4, !tbaa !5
  br label %for.inc7

for.inc7:                                         ; preds = %for.body4
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.end9:                                         ; preds = %for.cond2
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %8, 1
  store i32 %sub, ptr %i, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc36, %for.end9
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %cmp11 = icmp sge i32 %9, 1
  br i1 %cmp11, label %for.body12, label %for.end37

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %m, align 4, !tbaa !5
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %10, 1
  store i32 %add, ptr %j, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc28, %for.body12
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %cmp14 = icmp sle i32 %11, %12
  br i1 %cmp14, label %for.body15, label %for.end30

for.body15:                                       ; preds = %for.cond13
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [26 x i32], ptr %h, i64 0, i64 %idxprom16
  %14 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [26 x i32], ptr %h, i64 0, i64 %idxprom18
  %16 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp sle i32 %14, %16
  br i1 %cmp20, label %if.then, label %if.end27

if.then:                                          ; preds = %for.body15
  %17 = load i32, ptr %m, align 4, !tbaa !5
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom21 = sext i32 %18 to i64
  %arrayidx22 = getelementptr inbounds [26 x i32], ptr %q, i64 0, i64 %idxprom21
  %19 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %17, %19
  br i1 %cmp23, label %if.then24, label %if.end

if.then24:                                        ; preds = %if.then
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom25 = sext i32 %20 to i64
  %arrayidx26 = getelementptr inbounds [26 x i32], ptr %q, i64 0, i64 %idxprom25
  %21 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  store i32 %21, ptr %m, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then24, %if.then
  br label %if.end27

if.end27:                                         ; preds = %if.end, %for.body15
  br label %for.inc28

for.inc28:                                        ; preds = %if.end27
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %inc29 = add nsw i32 %22, 1
  store i32 %inc29, ptr %j, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !13

for.end30:                                        ; preds = %for.cond13
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %23 to i64
  %arrayidx32 = getelementptr inbounds [26 x i32], ptr %q, i64 0, i64 %idxprom31
  %24 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %25 = load i32, ptr %m, align 4, !tbaa !5
  %add33 = add nsw i32 %24, %25
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %26 to i64
  %arrayidx35 = getelementptr inbounds [26 x i32], ptr %q, i64 0, i64 %idxprom34
  store i32 %add33, ptr %arrayidx35, align 4, !tbaa !5
  br label %for.inc36

for.inc36:                                        ; preds = %for.end30
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %27, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !14

for.end37:                                        ; preds = %for.cond10
  store i32 0, ptr %m, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc48, %for.end37
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %29 = load i32, ptr %n, align 4, !tbaa !5
  %cmp39 = icmp sle i32 %28, %29
  br i1 %cmp39, label %for.body40, label %for.end50

for.body40:                                       ; preds = %for.cond38
  %30 = load i32, ptr %m, align 4, !tbaa !5
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom41 = sext i32 %31 to i64
  %arrayidx42 = getelementptr inbounds [26 x i32], ptr %q, i64 0, i64 %idxprom41
  %32 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %30, %32
  br i1 %cmp43, label %if.then44, label %if.end47

if.then44:                                        ; preds = %for.body40
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom45 = sext i32 %33 to i64
  %arrayidx46 = getelementptr inbounds [26 x i32], ptr %q, i64 0, i64 %idxprom45
  %34 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  store i32 %34, ptr %m, align 4, !tbaa !5
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %for.body40
  br label %for.inc48

for.inc48:                                        ; preds = %if.end47
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %inc49 = add nsw i32 %35, 1
  store i32 %inc49, ptr %i, align 4, !tbaa !5
  br label %for.cond38, !llvm.loop !15

for.end50:                                        ; preds = %for.cond38
  %36 = load i32, ptr %m, align 4, !tbaa !5
  %call51 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %36)
  call void @llvm.lifetime.end.p0(i64 104, ptr %q) #3
  call void @llvm.lifetime.end.p0(i64 104, ptr %h) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
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
