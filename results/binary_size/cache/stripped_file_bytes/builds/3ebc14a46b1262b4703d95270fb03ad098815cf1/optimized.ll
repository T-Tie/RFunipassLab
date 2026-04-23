; ModuleID = '/tmp/tmp3vfia7ce.cpp'
source_filename = "/tmp/tmp3vfia7ce.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.t1 = private unnamed_addr constant [12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@__const.main.t2 = private unnamed_addr constant [12 x i32] [i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %total = alloca i32, align 4
  %y = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %t1 = alloca [12 x i32], align 16
  %t2 = alloca [12 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %total) #4
  store i32 0, ptr %total, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr %t1) #4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %t1, ptr align 16 @__const.main.t1, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr %t2) #4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %t2, ptr align 16 @__const.main.t2, i64 48, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc82, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end84

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %y, ptr noundef %m1, ptr noundef %m2)
  %2 = load i32, ptr %y, align 4, !tbaa !5
  %rem = srem i32 %2, 4
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %3 = load i32, ptr %y, align 4, !tbaa !5
  %rem3 = srem i32 %3, 100
  %cmp4 = icmp ne i32 %rem3, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %4 = load i32, ptr %y, align 4, !tbaa !5
  %rem5 = srem i32 %4, 400
  %cmp6 = icmp eq i32 %rem5, 0
  br i1 %cmp6, label %if.then, label %if.else39

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %5 = load i32, ptr %m1, align 4, !tbaa !5
  %6 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %5, %6
  br i1 %cmp7, label %if.then8, label %if.else17

if.then8:                                         ; preds = %if.then
  store i32 0, ptr %total, align 4, !tbaa !5
  %7 = load i32, ptr %m2, align 4, !tbaa !5
  store i32 %7, ptr %j, align 4, !tbaa !5
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %if.then8
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %9 = load i32, ptr %m1, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %8, %9
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %sub = sub nsw i32 %10, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [12 x i32], ptr %t2, i64 0, i64 %idxprom
  %11 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %12 = load i32, ptr %total, align 4, !tbaa !5
  %add = add nsw i32 %12, %11
  store i32 %add, ptr %total, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond9, !llvm.loop !9

for.end:                                          ; preds = %for.cond9
  %14 = load i32, ptr %total, align 4, !tbaa !5
  %rem12 = srem i32 %14, 7
  %cmp13 = icmp eq i32 %rem12, 0
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %for.end
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end

if.else:                                          ; preds = %for.end
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then14
  br label %if.end38

if.else17:                                        ; preds = %if.then
  %15 = load i32, ptr %m1, align 4, !tbaa !5
  %16 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %15, %16
  br i1 %cmp18, label %if.then19, label %if.end37

if.then19:                                        ; preds = %if.else17
  store i32 0, ptr %total, align 4, !tbaa !5
  %17 = load i32, ptr %m1, align 4, !tbaa !5
  store i32 %17, ptr %j, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc27, %if.then19
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %19 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %18, %19
  br i1 %cmp21, label %for.body22, label %for.end29

for.body22:                                       ; preds = %for.cond20
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %sub23 = sub nsw i32 %20, 1
  %idxprom24 = sext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds [12 x i32], ptr %t2, i64 0, i64 %idxprom24
  %21 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %22 = load i32, ptr %total, align 4, !tbaa !5
  %add26 = add nsw i32 %22, %21
  store i32 %add26, ptr %total, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.body22
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %inc28 = add nsw i32 %23, 1
  store i32 %inc28, ptr %j, align 4, !tbaa !5
  br label %for.cond20, !llvm.loop !12

for.end29:                                        ; preds = %for.cond20
  %24 = load i32, ptr %total, align 4, !tbaa !5
  %rem30 = srem i32 %24, 7
  %cmp31 = icmp eq i32 %rem30, 0
  br i1 %cmp31, label %if.then32, label %if.else34

if.then32:                                        ; preds = %for.end29
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end36

if.else34:                                        ; preds = %for.end29
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end36

if.end36:                                         ; preds = %if.else34, %if.then32
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.else17
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end
  br label %if.end81

if.else39:                                        ; preds = %lor.lhs.false
  %25 = load i32, ptr %m1, align 4, !tbaa !5
  %26 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp40 = icmp sgt i32 %25, %26
  br i1 %cmp40, label %if.then41, label %if.else59

if.then41:                                        ; preds = %if.else39
  store i32 0, ptr %total, align 4, !tbaa !5
  %27 = load i32, ptr %m2, align 4, !tbaa !5
  store i32 %27, ptr %j, align 4, !tbaa !5
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc49, %if.then41
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %29 = load i32, ptr %m1, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %28, %29
  br i1 %cmp43, label %for.body44, label %for.end51

for.body44:                                       ; preds = %for.cond42
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %sub45 = sub nsw i32 %30, 1
  %idxprom46 = sext i32 %sub45 to i64
  %arrayidx47 = getelementptr inbounds [12 x i32], ptr %t1, i64 0, i64 %idxprom46
  %31 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %32 = load i32, ptr %total, align 4, !tbaa !5
  %add48 = add nsw i32 %32, %31
  store i32 %add48, ptr %total, align 4, !tbaa !5
  br label %for.inc49

for.inc49:                                        ; preds = %for.body44
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %inc50 = add nsw i32 %33, 1
  store i32 %inc50, ptr %j, align 4, !tbaa !5
  br label %for.cond42, !llvm.loop !13

for.end51:                                        ; preds = %for.cond42
  %34 = load i32, ptr %total, align 4, !tbaa !5
  %rem52 = srem i32 %34, 7
  %cmp53 = icmp eq i32 %rem52, 0
  br i1 %cmp53, label %if.then54, label %if.else56

if.then54:                                        ; preds = %for.end51
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end58

if.else56:                                        ; preds = %for.end51
  %call57 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end58

if.end58:                                         ; preds = %if.else56, %if.then54
  br label %if.end80

if.else59:                                        ; preds = %if.else39
  %35 = load i32, ptr %m1, align 4, !tbaa !5
  %36 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp60 = icmp slt i32 %35, %36
  br i1 %cmp60, label %if.then61, label %if.end79

if.then61:                                        ; preds = %if.else59
  store i32 0, ptr %total, align 4, !tbaa !5
  %37 = load i32, ptr %m1, align 4, !tbaa !5
  store i32 %37, ptr %j, align 4, !tbaa !5
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc69, %if.then61
  %38 = load i32, ptr %j, align 4, !tbaa !5
  %39 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp63 = icmp slt i32 %38, %39
  br i1 %cmp63, label %for.body64, label %for.end71

for.body64:                                       ; preds = %for.cond62
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %sub65 = sub nsw i32 %40, 1
  %idxprom66 = sext i32 %sub65 to i64
  %arrayidx67 = getelementptr inbounds [12 x i32], ptr %t1, i64 0, i64 %idxprom66
  %41 = load i32, ptr %arrayidx67, align 4, !tbaa !5
  %42 = load i32, ptr %total, align 4, !tbaa !5
  %add68 = add nsw i32 %42, %41
  store i32 %add68, ptr %total, align 4, !tbaa !5
  br label %for.inc69

for.inc69:                                        ; preds = %for.body64
  %43 = load i32, ptr %j, align 4, !tbaa !5
  %inc70 = add nsw i32 %43, 1
  store i32 %inc70, ptr %j, align 4, !tbaa !5
  br label %for.cond62, !llvm.loop !14

for.end71:                                        ; preds = %for.cond62
  %44 = load i32, ptr %total, align 4, !tbaa !5
  %rem72 = srem i32 %44, 7
  %cmp73 = icmp eq i32 %rem72, 0
  br i1 %cmp73, label %if.then74, label %if.else76

if.then74:                                        ; preds = %for.end71
  %call75 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end78

if.else76:                                        ; preds = %for.end71
  %call77 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end78

if.end78:                                         ; preds = %if.else76, %if.then74
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.else59
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.end58
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.end38
  br label %for.inc82

for.inc82:                                        ; preds = %if.end81
  %45 = load i32, ptr %i, align 4, !tbaa !5
  %inc83 = add nsw i32 %45, 1
  store i32 %inc83, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !15

for.end84:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 48, ptr %t2) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr %t1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %total) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
