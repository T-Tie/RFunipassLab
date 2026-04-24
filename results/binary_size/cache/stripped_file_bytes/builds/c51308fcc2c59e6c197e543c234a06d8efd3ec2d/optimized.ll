; ModuleID = '/tmp/tmprspt9qvo.cpp'
source_filename = "/tmp/tmprspt9qvo.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [1000 x [1000 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4000000, ptr %a) #4
  call void @llvm.memset.p0.i64(ptr align 16 %a, i8 0, i64 4000000, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #4
  store i32 0, ptr %m, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #4
  store i32 0, ptr %p, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %sub = sub nsw i32 %4, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %sub4 = sub nsw i32 %5, 1
  %idxprom5 = sext i32 %sub4 to i64
  %arrayidx6 = getelementptr inbounds [1000 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx6)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %inc10 = add nsw i32 %7, 1
  store i32 %inc10, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end11:                                        ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc29, %for.end11
  %8 = load i32, ptr %m, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %8, 0
  br i1 %cmp13, label %for.body14, label %for.end31

for.body14:                                       ; preds = %for.cond12
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc26, %for.body14
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %cmp16 = icmp sle i32 %9, %10
  br i1 %cmp16, label %for.body17, label %for.end28

for.body17:                                       ; preds = %for.cond15
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %sub18 = sub nsw i32 %11, 1
  %idxprom19 = sext i32 %sub18 to i64
  %arrayidx20 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom19
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %sub21 = sub nsw i32 %12, 1
  %idxprom22 = sext i32 %sub21 to i64
  %arrayidx23 = getelementptr inbounds [1000 x i32], ptr %arrayidx20, i64 0, i64 %idxprom22
  %13 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %13, 0
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %for.body17
  %14 = load i32, ptr %m, align 4, !tbaa !5
  %inc25 = add nsw i32 %14, 1
  store i32 %inc25, ptr %m, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body17
  br label %for.inc26

for.inc26:                                        ; preds = %if.end
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %inc27 = add nsw i32 %15, 1
  store i32 %inc27, ptr %j, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !13

for.end28:                                        ; preds = %for.cond15
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc30 = add nsw i32 %16, 1
  store i32 %inc30, ptr %i, align 4, !tbaa !5
  br label %for.cond12, !llvm.loop !14

for.end31:                                        ; preds = %for.cond12
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc51, %for.end31
  %17 = load i32, ptr %p, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %17, 0
  br i1 %cmp33, label %for.body34, label %for.end53

for.body34:                                       ; preds = %for.cond32
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc48, %for.body34
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %19 = load i32, ptr %n, align 4, !tbaa !5
  %cmp36 = icmp sle i32 %18, %19
  br i1 %cmp36, label %for.body37, label %for.end50

for.body37:                                       ; preds = %for.cond35
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %sub38 = sub nsw i32 %20, 1
  %idxprom39 = sext i32 %sub38 to i64
  %arrayidx40 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom39
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %sub41 = sub nsw i32 %21, 1
  %idxprom42 = sext i32 %sub41 to i64
  %arrayidx43 = getelementptr inbounds [1000 x i32], ptr %arrayidx40, i64 0, i64 %idxprom42
  %22 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %22, 0
  br i1 %cmp44, label %if.then45, label %if.end47

if.then45:                                        ; preds = %for.body37
  %23 = load i32, ptr %p, align 4, !tbaa !5
  %inc46 = add nsw i32 %23, 1
  store i32 %inc46, ptr %p, align 4, !tbaa !5
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %for.body37
  br label %for.inc48

for.inc48:                                        ; preds = %if.end47
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %inc49 = add nsw i32 %24, 1
  store i32 %inc49, ptr %j, align 4, !tbaa !5
  br label %for.cond35, !llvm.loop !15

for.end50:                                        ; preds = %for.cond35
  br label %for.inc51

for.inc51:                                        ; preds = %for.end50
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %inc52 = add nsw i32 %25, 1
  store i32 %inc52, ptr %i, align 4, !tbaa !5
  br label %for.cond32, !llvm.loop !16

for.end53:                                        ; preds = %for.cond32
  %26 = load i32, ptr %p, align 4, !tbaa !5
  %sub54 = sub nsw i32 %26, 2
  %27 = load i32, ptr %m, align 4, !tbaa !5
  %sub55 = sub nsw i32 %27, 2
  %mul = mul nsw i32 %sub54, %sub55
  store i32 %mul, ptr %q, align 4, !tbaa !5
  %28 = load i32, ptr %q, align 4, !tbaa !5
  %call56 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %28)
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4000000, ptr %a) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!16 = distinct !{!16, !10, !11}
