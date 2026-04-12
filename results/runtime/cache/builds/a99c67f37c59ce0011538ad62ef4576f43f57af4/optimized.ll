; ModuleID = '<stdin>'
source_filename = "/tmp/tmp75tmk9vj.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %b) #3
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %c) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x1) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y1) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x2) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y2) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %x1, ptr noundef align 4 %y1)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond1
  %sub = sub nsw i32 %0, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %sub4 = sub nsw i32 %2, 1
  %idxprom5 = sext i32 %sub4 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx6)
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond1
  %inc9 = add nsw i32 %0, 1
  store i32 %inc9, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %x2, ptr noundef %y2)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc28, %for.end10
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp13 = icmp sle i32 %4, %5
  br i1 %cmp13, label %for.body14, label %for.end30

for.body14:                                       ; preds = %for.cond12
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc25, %for.body14
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %7 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp16 = icmp sle i32 %6, %7
  br i1 %cmp16, label %for.inc25, label %for.inc28

for.inc25:                                        ; preds = %for.cond15
  %sub18 = sub nsw i32 %4, 1
  %idxprom19 = sext i32 %sub18 to i64
  %arrayidx20 = getelementptr inbounds [100 x [100 x i32]], ptr %b, i64 0, i64 %idxprom19
  %sub21 = sub nsw i32 %6, 1
  %idxprom22 = sext i32 %sub21 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %arrayidx20, i64 0, i64 %idxprom22
  %call24 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx23)
  %inc26 = add nsw i32 %6, 1
  store i32 %inc26, ptr %j, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !13

for.inc28:                                        ; preds = %for.cond15
  %inc29 = add nsw i32 %4, 1
  store i32 %inc29, ptr %i, align 4, !tbaa !5
  br label %for.cond12, !llvm.loop !14

for.end30:                                        ; preds = %for.cond12
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc46, %for.end30
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %x1, align 4, !tbaa !5
  %sub32 = sub nsw i32 %9, 1
  %cmp33 = icmp sle i32 %8, %sub32
  br i1 %cmp33, label %for.body34, label %for.end48

for.body34:                                       ; preds = %for.cond31
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc43, %for.body34
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %y2, align 4, !tbaa !5
  %sub36 = sub nsw i32 %11, 1
  %cmp37 = icmp sle i32 %10, %sub36
  br i1 %cmp37, label %for.inc43, label %for.inc46

for.inc43:                                        ; preds = %for.cond35
  %idxprom39 = sext i32 %8 to i64
  %arrayidx40 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %idxprom39
  %idxprom41 = sext i32 %10 to i64
  %arrayidx42 = getelementptr inbounds [100 x i32], ptr %arrayidx40, i64 0, i64 %idxprom41
  store i32 0, ptr %arrayidx42, align 4, !tbaa !5
  %inc44 = add nsw i32 %10, 1
  store i32 %inc44, ptr %j, align 4, !tbaa !5
  br label %for.cond35, !llvm.loop !15

for.inc46:                                        ; preds = %for.cond35
  %inc47 = add nsw i32 %8, 1
  store i32 %inc47, ptr %i, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !16

for.end48:                                        ; preds = %for.cond31
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc79, %for.end48
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %cmp51 = icmp sle i32 %12, %sub32
  br i1 %cmp51, label %for.body52, label %for.end81

for.body52:                                       ; preds = %for.cond49
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc76, %for.body52
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %14 = load i32, ptr %y2, align 4, !tbaa !5
  %sub54 = sub nsw i32 %14, 1
  %cmp55 = icmp sle i32 %13, %sub54
  br i1 %cmp55, label %for.body56, label %for.inc79

for.body56:                                       ; preds = %for.cond53
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc73, %for.body56
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %16 = load i32, ptr %y1, align 4, !tbaa !5
  %sub58 = sub nsw i32 %16, 1
  %cmp59 = icmp sle i32 %15, %sub58
  br i1 %cmp59, label %for.inc73, label %for.inc76

for.inc73:                                        ; preds = %for.cond57
  %idxprom61 = sext i32 %12 to i64
  %arrayidx62 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom61
  %idxprom63 = sext i32 %15 to i64
  %arrayidx64 = getelementptr inbounds [100 x i32], ptr %arrayidx62, i64 0, i64 %idxprom63
  %17 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %arrayidx66 = getelementptr inbounds [100 x [100 x i32]], ptr %b, i64 0, i64 %idxprom63
  %idxprom67 = sext i32 %13 to i64
  %arrayidx68 = getelementptr inbounds [100 x i32], ptr %arrayidx66, i64 0, i64 %idxprom67
  %18 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %mul = mul nsw i32 %17, %18
  %arrayidx70 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %idxprom61
  %arrayidx72 = getelementptr inbounds [100 x i32], ptr %arrayidx70, i64 0, i64 %idxprom67
  %19 = load i32, ptr %arrayidx72, align 4, !tbaa !5
  %add = add nsw i32 %19, %mul
  store i32 %add, ptr %arrayidx72, align 4, !tbaa !5
  %inc74 = add nsw i32 %15, 1
  store i32 %inc74, ptr %k, align 4, !tbaa !5
  br label %for.cond57, !llvm.loop !17

for.inc76:                                        ; preds = %for.cond57
  %inc77 = add nsw i32 %13, 1
  store i32 %inc77, ptr %j, align 4, !tbaa !5
  br label %for.cond53, !llvm.loop !18

for.inc79:                                        ; preds = %for.cond53
  %inc80 = add nsw i32 %12, 1
  store i32 %inc80, ptr %i, align 4, !tbaa !5
  br label %for.cond49, !llvm.loop !19

for.end81:                                        ; preds = %for.cond49
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc106, %for.end81
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %21 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp83 = icmp sle i32 %20, %21
  br i1 %cmp83, label %for.body84, label %for.end108

for.body84:                                       ; preds = %for.cond82
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc103, %for.body84
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %23 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp86 = icmp sle i32 %22, %23
  br i1 %cmp86, label %for.body87, label %for.inc106

for.body87:                                       ; preds = %for.cond85
  %cmp88 = icmp ne i32 %22, %23
  %sub89 = sub nsw i32 %20, 1
  %idxprom90 = sext i32 %sub89 to i64
  %sub92 = sub nsw i32 %22, 1
  %idxprom93 = sext i32 %sub92 to i64
  %24 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %idxprom90
  %25 = getelementptr inbounds [100 x i32], ptr %24, i64 0, i64 %idxprom93
  %26 = load i32, ptr %25, align 4, !tbaa !5
  br i1 %cmp88, label %for.inc103, label %if.else

if.else:                                          ; preds = %for.body87
  br label %for.inc103

for.inc103:                                       ; preds = %if.else, %for.body87
  %.str.3.sink = phi ptr [ @.str.3, %if.else ], [ @.str.2, %for.body87 ]
  %call102 = call i32 (ptr, ...) @printf(ptr noundef %.str.3.sink, i32 noundef %26)
  %inc104 = add nsw i32 %22, 1
  store i32 %inc104, ptr %j, align 4, !tbaa !5
  br label %for.cond85, !llvm.loop !20

for.inc106:                                       ; preds = %for.cond85
  %inc107 = add nsw i32 %20, 1
  store i32 %inc107, ptr %i, align 4, !tbaa !5
  br label %for.cond82, !llvm.loop !21

for.end108:                                       ; preds = %for.cond82
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %y2) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x2) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %y1) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x1) #4
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %c) #4
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %b) #4
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %a) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
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
!21 = distinct !{!21, !10, !11}
