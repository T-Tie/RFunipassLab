; ModuleID = '/tmp/tmp6ot_rbrk.cpp'
source_filename = "/tmp/tmp6ot_rbrk.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %q = alloca [6 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 24, ptr %q) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %0, 100
  store i32 %sub, ptr %n, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %sub1 = sub nsw i32 %2, 1
  %arrayidx = getelementptr inbounds [6 x i32], ptr %q, i64 0, i64 0
  store i32 %sub1, ptr %arrayidx, align 16, !tbaa !5
  br label %for.end

if.end:                                           ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %if.then
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %add = add nsw i32 %4, 100
  store i32 %add, ptr %n, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc9, %for.end
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %sub3 = sub nsw i32 %5, 50
  store i32 %sub3, ptr %n, align 4, !tbaa !5
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %6, 0
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %for.cond2
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %sub6 = sub nsw i32 %7, 1
  %arrayidx7 = getelementptr inbounds [6 x i32], ptr %q, i64 0, i64 1
  store i32 %sub6, ptr %arrayidx7, align 4, !tbaa !5
  br label %for.end11

if.end8:                                          ; preds = %for.cond2
  br label %for.inc9

for.inc9:                                         ; preds = %if.end8
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %inc10 = add nsw i32 %8, 1
  store i32 %inc10, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.end11:                                        ; preds = %if.then5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %add12 = add nsw i32 %9, 50
  store i32 %add12, ptr %n, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc20, %for.end11
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %sub14 = sub nsw i32 %10, 20
  store i32 %sub14, ptr %n, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %11, 0
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %for.cond13
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %sub17 = sub nsw i32 %12, 1
  %arrayidx18 = getelementptr inbounds [6 x i32], ptr %q, i64 0, i64 2
  store i32 %sub17, ptr %arrayidx18, align 8, !tbaa !5
  br label %for.end22

if.end19:                                         ; preds = %for.cond13
  br label %for.inc20

for.inc20:                                        ; preds = %if.end19
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %inc21 = add nsw i32 %13, 1
  store i32 %inc21, ptr %i, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !13

for.end22:                                        ; preds = %if.then16
  %14 = load i32, ptr %n, align 4, !tbaa !5
  %add23 = add nsw i32 %14, 20
  store i32 %add23, ptr %n, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc31, %for.end22
  %15 = load i32, ptr %n, align 4, !tbaa !5
  %sub25 = sub nsw i32 %15, 10
  store i32 %sub25, ptr %n, align 4, !tbaa !5
  %16 = load i32, ptr %n, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %16, 0
  br i1 %cmp26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %for.cond24
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %sub28 = sub nsw i32 %17, 1
  %arrayidx29 = getelementptr inbounds [6 x i32], ptr %q, i64 0, i64 3
  store i32 %sub28, ptr %arrayidx29, align 4, !tbaa !5
  br label %for.end33

if.end30:                                         ; preds = %for.cond24
  br label %for.inc31

for.inc31:                                        ; preds = %if.end30
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %inc32 = add nsw i32 %18, 1
  store i32 %inc32, ptr %i, align 4, !tbaa !5
  br label %for.cond24, !llvm.loop !14

for.end33:                                        ; preds = %if.then27
  %19 = load i32, ptr %n, align 4, !tbaa !5
  %add34 = add nsw i32 %19, 10
  store i32 %add34, ptr %n, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc42, %for.end33
  %20 = load i32, ptr %n, align 4, !tbaa !5
  %sub36 = sub nsw i32 %20, 5
  store i32 %sub36, ptr %n, align 4, !tbaa !5
  %21 = load i32, ptr %n, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %21, 0
  br i1 %cmp37, label %if.then38, label %if.end41

if.then38:                                        ; preds = %for.cond35
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %sub39 = sub nsw i32 %22, 1
  %arrayidx40 = getelementptr inbounds [6 x i32], ptr %q, i64 0, i64 4
  store i32 %sub39, ptr %arrayidx40, align 16, !tbaa !5
  br label %for.end44

if.end41:                                         ; preds = %for.cond35
  br label %for.inc42

for.inc42:                                        ; preds = %if.end41
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %inc43 = add nsw i32 %23, 1
  store i32 %inc43, ptr %i, align 4, !tbaa !5
  br label %for.cond35, !llvm.loop !15

for.end44:                                        ; preds = %if.then38
  %24 = load i32, ptr %n, align 4, !tbaa !5
  %add45 = add nsw i32 %24, 5
  store i32 %add45, ptr %n, align 4, !tbaa !5
  %25 = load i32, ptr %n, align 4, !tbaa !5
  %arrayidx46 = getelementptr inbounds [6 x i32], ptr %q, i64 0, i64 5
  store i32 %25, ptr %arrayidx46, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc51, %for.end44
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %26, 6
  br i1 %cmp48, label %for.body, label %for.end53

for.body:                                         ; preds = %for.cond47
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %27 to i64
  %arrayidx49 = getelementptr inbounds [6 x i32], ptr %q, i64 0, i64 %idxprom
  %28 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %call50 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %28)
  br label %for.inc51

for.inc51:                                        ; preds = %for.body
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %inc52 = add nsw i32 %29, 1
  store i32 %inc52, ptr %i, align 4, !tbaa !5
  br label %for.cond47, !llvm.loop !16

for.end53:                                        ; preds = %for.cond47
  call void @llvm.lifetime.end.p0(i64 24, ptr %q) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
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
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
