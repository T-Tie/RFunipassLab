; ModuleID = '/tmp/tmpg6adx7n4.cpp'
source_filename = "/tmp/tmpg6adx7n4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %__vla_expr2 = alloca i64, align 8
  %__vla_expr3 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %m, ptr noundef %n)
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = zext i32 %2 to i64
  %4 = call ptr @llvm.stacksave.p0()
  store ptr %4, ptr %saved_stack, align 8
  %5 = mul nuw i64 %1, %3
  %vla = alloca i32, i64 %5, align 16
  store i64 %1, ptr %__vla_expr0, align 8
  store i64 %3, ptr %__vla_expr1, align 8
  %6 = load i32, ptr %m, align 4, !tbaa !5
  %7 = zext i32 %6 to i64
  %vla1 = alloca i32, i64 %7, align 16
  store i64 %7, ptr %__vla_expr2, align 8
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %9 = zext i32 %8 to i64
  %vla2 = alloca i32, i64 %9, align 16
  store i64 %9, ptr %__vla_expr3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  store i32 0, ptr %k, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %11 = load i32, ptr %m, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %12, %13
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %14 to i64
  %15 = mul nsw i64 %idxprom, %3
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %15
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom6 = sext i32 %16 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %arrayidx, i64 %idxprom6
  %call8 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx7)
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !9

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %inc10 = add nsw i32 %18, 1
  store i32 %inc10, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end11:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc20, %for.end11
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %20 = load i32, ptr %m, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %19, %20
  br i1 %cmp13, label %for.body14, label %for.end22

for.body14:                                       ; preds = %for.cond12
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %21 to i64
  %22 = mul nsw i64 %idxprom15, %3
  %arrayidx16 = getelementptr inbounds i32, ptr %vla, i64 %22
  %arrayidx17 = getelementptr inbounds i32, ptr %arrayidx16, i64 0
  %23 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom18
  store i32 %23, ptr %arrayidx19, align 4, !tbaa !5
  br label %for.inc20

for.inc20:                                        ; preds = %for.body14
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %inc21 = add nsw i32 %25, 1
  store i32 %inc21, ptr %i, align 4, !tbaa !5
  br label %for.cond12, !llvm.loop !13

for.end22:                                        ; preds = %for.cond12
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc31, %for.end22
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %27 = load i32, ptr %n, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %26, %27
  br i1 %cmp24, label %for.body25, label %for.end33

for.body25:                                       ; preds = %for.cond23
  %28 = mul nsw i64 0, %3
  %arrayidx26 = getelementptr inbounds i32, ptr %vla, i64 %28
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom27 = sext i32 %29 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %arrayidx26, i64 %idxprom27
  %30 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom29 = sext i32 %31 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %vla2, i64 %idxprom29
  store i32 %30, ptr %arrayidx30, align 4, !tbaa !5
  br label %for.inc31

for.inc31:                                        ; preds = %for.body25
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %inc32 = add nsw i32 %32, 1
  store i32 %inc32, ptr %j, align 4, !tbaa !5
  br label %for.cond23, !llvm.loop !14

for.end33:                                        ; preds = %for.cond23
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc56, %for.end33
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %34 = load i32, ptr %m, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %33, %34
  br i1 %cmp35, label %for.body36, label %for.end58

for.body36:                                       ; preds = %for.cond34
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc53, %for.body36
  %35 = load i32, ptr %j, align 4, !tbaa !5
  %36 = load i32, ptr %n, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %35, %36
  br i1 %cmp38, label %for.body39, label %for.end55

for.body39:                                       ; preds = %for.cond37
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %37 to i64
  %38 = mul nsw i64 %idxprom40, %3
  %arrayidx41 = getelementptr inbounds i32, ptr %vla, i64 %38
  %39 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom42 = sext i32 %39 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %arrayidx41, i64 %idxprom42
  %40 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom44 = sext i32 %41 to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom44
  %42 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %cmp46 = icmp sgt i32 %40, %42
  br i1 %cmp46, label %if.then, label %if.end

if.then:                                          ; preds = %for.body39
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom47 = sext i32 %43 to i64
  %44 = mul nsw i64 %idxprom47, %3
  %arrayidx48 = getelementptr inbounds i32, ptr %vla, i64 %44
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom49 = sext i32 %45 to i64
  %arrayidx50 = getelementptr inbounds i32, ptr %arrayidx48, i64 %idxprom49
  %46 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom51 = sext i32 %47 to i64
  %arrayidx52 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom51
  store i32 %46, ptr %arrayidx52, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body39
  br label %for.inc53

for.inc53:                                        ; preds = %if.end
  %48 = load i32, ptr %j, align 4, !tbaa !5
  %inc54 = add nsw i32 %48, 1
  store i32 %inc54, ptr %j, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !15

for.end55:                                        ; preds = %for.cond37
  br label %for.inc56

for.inc56:                                        ; preds = %for.end55
  %49 = load i32, ptr %i, align 4, !tbaa !5
  %inc57 = add nsw i32 %49, 1
  store i32 %inc57, ptr %i, align 4, !tbaa !5
  br label %for.cond34, !llvm.loop !16

for.end58:                                        ; preds = %for.cond34
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc83, %for.end58
  %50 = load i32, ptr %j, align 4, !tbaa !5
  %51 = load i32, ptr %n, align 4, !tbaa !5
  %cmp60 = icmp slt i32 %50, %51
  br i1 %cmp60, label %for.body61, label %for.end85

for.body61:                                       ; preds = %for.cond59
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc80, %for.body61
  %52 = load i32, ptr %i, align 4, !tbaa !5
  %53 = load i32, ptr %m, align 4, !tbaa !5
  %cmp63 = icmp slt i32 %52, %53
  br i1 %cmp63, label %for.body64, label %for.end82

for.body64:                                       ; preds = %for.cond62
  %54 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom65 = sext i32 %54 to i64
  %55 = mul nsw i64 %idxprom65, %3
  %arrayidx66 = getelementptr inbounds i32, ptr %vla, i64 %55
  %56 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom67 = sext i32 %56 to i64
  %arrayidx68 = getelementptr inbounds i32, ptr %arrayidx66, i64 %idxprom67
  %57 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %58 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom69 = sext i32 %58 to i64
  %arrayidx70 = getelementptr inbounds i32, ptr %vla2, i64 %idxprom69
  %59 = load i32, ptr %arrayidx70, align 4, !tbaa !5
  %cmp71 = icmp slt i32 %57, %59
  br i1 %cmp71, label %if.then72, label %if.end79

if.then72:                                        ; preds = %for.body64
  %60 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom73 = sext i32 %60 to i64
  %61 = mul nsw i64 %idxprom73, %3
  %arrayidx74 = getelementptr inbounds i32, ptr %vla, i64 %61
  %62 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom75 = sext i32 %62 to i64
  %arrayidx76 = getelementptr inbounds i32, ptr %arrayidx74, i64 %idxprom75
  %63 = load i32, ptr %arrayidx76, align 4, !tbaa !5
  %64 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom77 = sext i32 %64 to i64
  %arrayidx78 = getelementptr inbounds i32, ptr %vla2, i64 %idxprom77
  store i32 %63, ptr %arrayidx78, align 4, !tbaa !5
  br label %if.end79

if.end79:                                         ; preds = %if.then72, %for.body64
  br label %for.inc80

for.inc80:                                        ; preds = %if.end79
  %65 = load i32, ptr %i, align 4, !tbaa !5
  %inc81 = add nsw i32 %65, 1
  store i32 %inc81, ptr %i, align 4, !tbaa !5
  br label %for.cond62, !llvm.loop !17

for.end82:                                        ; preds = %for.cond62
  br label %for.inc83

for.inc83:                                        ; preds = %for.end82
  %66 = load i32, ptr %j, align 4, !tbaa !5
  %inc84 = add nsw i32 %66, 1
  store i32 %inc84, ptr %j, align 4, !tbaa !5
  br label %for.cond59, !llvm.loop !18

for.end85:                                        ; preds = %for.cond59
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc103, %for.end85
  %67 = load i32, ptr %i, align 4, !tbaa !5
  %68 = load i32, ptr %m, align 4, !tbaa !5
  %cmp87 = icmp slt i32 %67, %68
  br i1 %cmp87, label %for.body88, label %for.end105

for.body88:                                       ; preds = %for.cond86
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc100, %for.body88
  %69 = load i32, ptr %j, align 4, !tbaa !5
  %70 = load i32, ptr %n, align 4, !tbaa !5
  %cmp90 = icmp slt i32 %69, %70
  br i1 %cmp90, label %for.body91, label %for.end102

for.body91:                                       ; preds = %for.cond89
  %71 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom92 = sext i32 %71 to i64
  %arrayidx93 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom92
  %72 = load i32, ptr %arrayidx93, align 4, !tbaa !5
  %73 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom94 = sext i32 %73 to i64
  %arrayidx95 = getelementptr inbounds i32, ptr %vla2, i64 %idxprom94
  %74 = load i32, ptr %arrayidx95, align 4, !tbaa !5
  %cmp96 = icmp eq i32 %72, %74
  br i1 %cmp96, label %if.then97, label %if.end99

if.then97:                                        ; preds = %for.body91
  %75 = load i32, ptr %i, align 4, !tbaa !5
  %76 = load i32, ptr %j, align 4, !tbaa !5
  %call98 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %75, i32 noundef %76)
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %for.body91
  br label %for.inc100

for.inc100:                                       ; preds = %if.end99
  %77 = load i32, ptr %j, align 4, !tbaa !5
  %inc101 = add nsw i32 %77, 1
  store i32 %inc101, ptr %j, align 4, !tbaa !5
  br label %for.cond89, !llvm.loop !19

for.end102:                                       ; preds = %for.cond89
  br label %for.inc103

for.inc103:                                       ; preds = %for.end102
  %78 = load i32, ptr %i, align 4, !tbaa !5
  %inc104 = add nsw i32 %78, 1
  store i32 %inc104, ptr %i, align 4, !tbaa !5
  br label %for.cond86, !llvm.loop !20

for.end105:                                       ; preds = %for.cond86
  %79 = load i32, ptr %k, align 4, !tbaa !5
  %cmp106 = icmp eq i32 %79, 0
  br i1 %cmp106, label %if.then107, label %if.end109

if.then107:                                       ; preds = %for.end105
  %call108 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %for.end105
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  %80 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %80)
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #4
  %81 = load i32, ptr %retval, align 4
  ret i32 %81
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
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
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
