; ModuleID = '<stdin>'
source_filename = "/tmp/tmpfbo4wdja.cpp"
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
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x1) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y1) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x2) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y2) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef %a) #4
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %a, i8 noundef 0, i64 noundef 40000, i1 noundef false) #5
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %b) #4
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %b, i8 noundef 0, i64 noundef 40000, i1 noundef false) #5
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %c) #4
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %c, i8 noundef 0, i64 noundef 40000, i1 noundef false) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %x1, ptr noundef align 4 %y1)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %x1, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %y1, align 4, !tbaa !5
  %sub2 = sub nsw i32 %3, 1
  %cmp3 = icmp sle i32 %2, %sub2
  br i1 %cmp3, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom5 = sext i32 %2 to i64
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
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc28, %for.end10
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %x2, align 4, !tbaa !5
  %sub13 = sub nsw i32 %5, 1
  %cmp14 = icmp sle i32 %4, %sub13
  br i1 %cmp14, label %for.body15, label %for.end30

for.body15:                                       ; preds = %for.cond12
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc25, %for.body15
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %7 = load i32, ptr %y2, align 4, !tbaa !5
  %sub17 = sub nsw i32 %7, 1
  %cmp18 = icmp sle i32 %6, %sub17
  br i1 %cmp18, label %for.inc25, label %for.inc28

for.inc25:                                        ; preds = %for.cond16
  %idxprom20 = sext i32 %4 to i64
  %arrayidx21 = getelementptr inbounds [100 x [100 x i32]], ptr %b, i64 0, i64 %idxprom20
  %idxprom22 = sext i32 %6 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %arrayidx21, i64 0, i64 %idxprom22
  %call24 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx23)
  %inc26 = add nsw i32 %6, 1
  store i32 %inc26, ptr %j, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !13

for.inc28:                                        ; preds = %for.cond16
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

for.cond49:                                       ; preds = %for.inc83, %for.end48
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %cmp51 = icmp sle i32 %12, %sub32
  br i1 %cmp51, label %for.body52, label %for.end85

for.body52:                                       ; preds = %for.cond49
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc80, %for.body52
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %14 = load i32, ptr %y2, align 4, !tbaa !5
  %sub54 = sub nsw i32 %14, 1
  %cmp55 = icmp sle i32 %13, %sub54
  br i1 %cmp55, label %for.body56, label %for.inc83

for.body56:                                       ; preds = %for.cond53
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc77, %for.body56
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %cmp59 = icmp sle i32 %15, %sub13
  br i1 %cmp59, label %for.inc77, label %for.inc80

for.inc77:                                        ; preds = %for.cond57
  %idxprom61 = sext i32 %12 to i64
  %arrayidx62 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %idxprom61
  %idxprom63 = sext i32 %13 to i64
  %arrayidx64 = getelementptr inbounds [100 x i32], ptr %arrayidx62, i64 0, i64 %idxprom63
  %16 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %arrayidx66 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom61
  %idxprom67 = sext i32 %15 to i64
  %arrayidx68 = getelementptr inbounds [100 x i32], ptr %arrayidx66, i64 0, i64 %idxprom67
  %17 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %arrayidx70 = getelementptr inbounds [100 x [100 x i32]], ptr %b, i64 0, i64 %idxprom67
  %arrayidx72 = getelementptr inbounds [100 x i32], ptr %arrayidx70, i64 0, i64 %idxprom63
  %18 = load i32, ptr %arrayidx72, align 4, !tbaa !5
  %mul = mul nsw i32 %17, %18
  %add = add nsw i32 %16, %mul
  store i32 %add, ptr %arrayidx64, align 4, !tbaa !5
  %inc78 = add nsw i32 %15, 1
  store i32 %inc78, ptr %k, align 4, !tbaa !5
  br label %for.cond57, !llvm.loop !17

for.inc80:                                        ; preds = %for.cond57
  %inc81 = add nsw i32 %13, 1
  store i32 %inc81, ptr %j, align 4, !tbaa !5
  br label %for.cond53, !llvm.loop !18

for.inc83:                                        ; preds = %for.cond53
  %inc84 = add nsw i32 %12, 1
  store i32 %inc84, ptr %i, align 4, !tbaa !5
  br label %for.cond49, !llvm.loop !19

for.end85:                                        ; preds = %for.cond49
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc109, %for.end85
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %20 = load i32, ptr %x1, align 4, !tbaa !5
  %sub87 = sub nsw i32 %20, 1
  %cmp88 = icmp sle i32 %19, %sub87
  br i1 %cmp88, label %for.body89, label %for.end111

for.body89:                                       ; preds = %for.cond86
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc106, %for.body89
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %22 = load i32, ptr %y2, align 4, !tbaa !5
  %sub91 = sub nsw i32 %22, 1
  %cmp92 = icmp sle i32 %21, %sub91
  br i1 %cmp92, label %for.body93, label %for.inc109

for.body93:                                       ; preds = %for.cond90
  %cmp95 = icmp slt i32 %21, %sub91
  %idxprom101 = sext i32 %19 to i64
  %idxprom103 = sext i32 %21 to i64
  %23 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %idxprom101
  %24 = getelementptr inbounds [100 x i32], ptr %23, i64 0, i64 %idxprom103
  %25 = load i32, ptr %24, align 4, !tbaa !5
  br i1 %cmp95, label %if.then, label %if.else

if.then:                                          ; preds = %for.body93
  %call100 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %25)
  br label %for.inc106

if.else:                                          ; preds = %for.body93
  %call105 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %25)
  br label %for.inc106

for.inc106:                                       ; preds = %if.then, %if.else
  %inc107 = add nsw i32 %21, 1
  store i32 %inc107, ptr %j, align 4, !tbaa !5
  br label %for.cond90, !llvm.loop !20

for.inc109:                                       ; preds = %for.cond90
  %inc110 = add nsw i32 %19, 1
  store i32 %inc110, ptr %i, align 4, !tbaa !5
  br label %for.cond86, !llvm.loop !21

for.end111:                                       ; preds = %for.cond86
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %c) #6
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %y2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %y1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x1) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree }
attributes #6 = { nounwind }

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
