; ModuleID = '/tmp/tmp07rd_rf3.cpp'
source_filename = "/tmp/tmp07rd_rf3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 400, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #3
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
  %arrayidx = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc19, %for.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end21

for.body4:                                        ; preds = %for.cond2
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc16, %for.body4
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %6, %7
  br i1 %cmp6, label %for.body7, label %for.end18

for.body7:                                        ; preds = %for.cond5
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom8
  %9 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom10
  %11 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %9, %11
  br i1 %cmp12, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body7
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %cmp13 = icmp ne i32 %12, %13
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom14
  store i32 0, ptr %arrayidx15, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body7
  br label %for.inc16

for.inc16:                                        ; preds = %if.end
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %inc17 = add nsw i32 %15, 1
  store i32 %inc17, ptr %j, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !12

for.end18:                                        ; preds = %for.cond5
  br label %for.inc19

for.inc19:                                        ; preds = %for.end18
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc20 = add nsw i32 %16, 1
  store i32 %inc20, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !13

for.end21:                                        ; preds = %for.cond2
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc33, %for.end21
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %18 = load i32, ptr %n, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %17, %18
  br i1 %cmp23, label %for.body24, label %for.end35

for.body24:                                       ; preds = %for.cond22
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom25
  %20 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %cmp27 = icmp ne i32 %20, 0
  br i1 %cmp27, label %if.then28, label %if.end32

if.then28:                                        ; preds = %for.body24
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %21 to i64
  %arrayidx30 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom29
  %22 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %22)
  %23 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %23, ptr %x, align 4, !tbaa !5
  br label %loop

if.end32:                                         ; preds = %for.body24
  br label %for.inc33

for.inc33:                                        ; preds = %if.end32
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %inc34 = add nsw i32 %24, 1
  store i32 %inc34, ptr %i, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !14

for.end35:                                        ; preds = %for.cond22
  br label %loop

loop:                                             ; preds = %for.end35, %if.then28
  %25 = load i32, ptr %x, align 4, !tbaa !5
  %add = add nsw i32 %25, 1
  store i32 %add, ptr %i, align 4, !tbaa !5
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc47, %loop
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %27 = load i32, ptr %n, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %26, %27
  br i1 %cmp37, label %for.body38, label %for.end49

for.body38:                                       ; preds = %for.cond36
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %28 to i64
  %arrayidx40 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom39
  %29 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41 = icmp ne i32 %29, 0
  br i1 %cmp41, label %if.then42, label %if.end46

if.then42:                                        ; preds = %for.body38
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %30 to i64
  %arrayidx44 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom43
  %31 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %call45 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %31)
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %for.body38
  br label %for.inc47

for.inc47:                                        ; preds = %if.end46
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %inc48 = add nsw i32 %32, 1
  store i32 %inc48, ptr %i, align 4, !tbaa !5
  br label %for.cond36, !llvm.loop !15

for.end49:                                        ; preds = %for.cond36
  %call50 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %a) #3
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
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
