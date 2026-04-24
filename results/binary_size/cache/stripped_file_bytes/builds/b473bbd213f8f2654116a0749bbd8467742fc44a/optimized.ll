; ModuleID = '/tmp/tmp6imq_ckc.cpp'
source_filename = "/tmp/tmp6imq_ckc.cpp"
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
  %h = alloca i32, align 4
  %l = alloca i32, align 4
  %f1 = alloca i32, align 4
  %f2 = alloca i32, align 4
  %f3 = alloca i32, align 4
  %f4 = alloca i32, align 4
  %sz = alloca [8 x [8 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %f1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %f2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %f3) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %f4) #3
  store i32 0, ptr %f4, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %h, ptr noundef %l)
  call void @llvm.lifetime.start.p0(i64 256, ptr %sz) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %h, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %l, align 4, !tbaa !5
  %sub2 = sub nsw i32 %3, 1
  %cmp3 = icmp sle i32 %2, %sub2
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %idxprom
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [8 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx6)
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %inc9 = add nsw i32 %7, 1
  store i32 %inc9, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc60, %for.end10
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %h, align 4, !tbaa !5
  %sub12 = sub nsw i32 %9, 1
  %cmp13 = icmp sle i32 %8, %sub12
  br i1 %cmp13, label %for.body14, label %for.end62

for.body14:                                       ; preds = %for.cond11
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc57, %for.body14
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %l, align 4, !tbaa !5
  %sub16 = sub nsw i32 %11, 1
  %cmp17 = icmp sle i32 %10, %sub16
  br i1 %cmp17, label %for.body18, label %for.end59

for.body18:                                       ; preds = %for.cond15
  store i32 1, ptr %f1, align 4, !tbaa !5
  store i32 1, ptr %f2, align 4, !tbaa !5
  store i32 0, ptr %m, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc32, %for.body18
  %12 = load i32, ptr %m, align 4, !tbaa !5
  %13 = load i32, ptr %h, align 4, !tbaa !5
  %sub20 = sub nsw i32 %13, 1
  %cmp21 = icmp sle i32 %12, %sub20
  br i1 %cmp21, label %for.body22, label %for.end34

for.body22:                                       ; preds = %for.cond19
  %14 = load i32, ptr %m, align 4, !tbaa !5
  %idxprom23 = sext i32 %14 to i64
  %arrayidx24 = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %idxprom23
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom25 = sext i32 %15 to i64
  %arrayidx26 = getelementptr inbounds [8 x i32], ptr %arrayidx24, i64 0, i64 %idxprom25
  %16 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %17 to i64
  %arrayidx28 = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %idxprom27
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom29 = sext i32 %18 to i64
  %arrayidx30 = getelementptr inbounds [8 x i32], ptr %arrayidx28, i64 0, i64 %idxprom29
  %19 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %16, %19
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %for.body22
  store i32 0, ptr %f1, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body22
  br label %for.inc32

for.inc32:                                        ; preds = %if.end
  %20 = load i32, ptr %m, align 4, !tbaa !5
  %inc33 = add nsw i32 %20, 1
  store i32 %inc33, ptr %m, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !13

for.end34:                                        ; preds = %for.cond19
  store i32 0, ptr %n, align 4, !tbaa !5
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc50, %for.end34
  %21 = load i32, ptr %n, align 4, !tbaa !5
  %22 = load i32, ptr %l, align 4, !tbaa !5
  %sub36 = sub nsw i32 %22, 1
  %cmp37 = icmp sle i32 %21, %sub36
  br i1 %cmp37, label %for.body38, label %for.end52

for.body38:                                       ; preds = %for.cond35
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %23 to i64
  %arrayidx40 = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %idxprom39
  %24 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom41 = sext i32 %24 to i64
  %arrayidx42 = getelementptr inbounds [8 x i32], ptr %arrayidx40, i64 0, i64 %idxprom41
  %25 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %26 to i64
  %arrayidx44 = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %idxprom43
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom45 = sext i32 %27 to i64
  %arrayidx46 = getelementptr inbounds [8 x i32], ptr %arrayidx44, i64 0, i64 %idxprom45
  %28 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %cmp47 = icmp sgt i32 %25, %28
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %for.body38
  store i32 0, ptr %f2, align 4, !tbaa !5
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %for.body38
  br label %for.inc50

for.inc50:                                        ; preds = %if.end49
  %29 = load i32, ptr %n, align 4, !tbaa !5
  %inc51 = add nsw i32 %29, 1
  store i32 %inc51, ptr %n, align 4, !tbaa !5
  br label %for.cond35, !llvm.loop !14

for.end52:                                        ; preds = %for.cond35
  %30 = load i32, ptr %f1, align 4, !tbaa !5
  %31 = load i32, ptr %f2, align 4, !tbaa !5
  %mul = mul nsw i32 %30, %31
  store i32 %mul, ptr %f3, align 4, !tbaa !5
  %32 = load i32, ptr %f3, align 4, !tbaa !5
  %cmp53 = icmp eq i32 %32, 1
  br i1 %cmp53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %for.end52
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %34 = load i32, ptr %j, align 4, !tbaa !5
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %33, i32 noundef %34)
  store i32 1, ptr %f4, align 4, !tbaa !5
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %for.end52
  br label %for.inc57

for.inc57:                                        ; preds = %if.end56
  %35 = load i32, ptr %j, align 4, !tbaa !5
  %inc58 = add nsw i32 %35, 1
  store i32 %inc58, ptr %j, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !15

for.end59:                                        ; preds = %for.cond15
  br label %for.inc60

for.inc60:                                        ; preds = %for.end59
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %inc61 = add nsw i32 %36, 1
  store i32 %inc61, ptr %i, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !16

for.end62:                                        ; preds = %for.cond11
  %37 = load i32, ptr %f4, align 4, !tbaa !5
  %cmp63 = icmp eq i32 %37, 0
  br i1 %cmp63, label %if.then64, label %if.end66

if.then64:                                        ; preds = %for.end62
  %call65 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %for.end62
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 256, ptr %sz) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %f4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %f3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %f2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %f1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #3
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
