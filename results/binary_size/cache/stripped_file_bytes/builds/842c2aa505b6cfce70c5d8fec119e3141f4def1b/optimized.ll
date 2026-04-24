; ModuleID = '/tmp/tmpk4bb3y1s.cpp'
source_filename = "/tmp/tmpk4bb3y1s.cpp"
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
  %sz = alloca [8 x [8 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %m, ptr noundef %n)
  call void @llvm.lifetime.start.p0(i64 256, ptr %sz) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #3
  store i32 0, ptr %c, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %m, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %idxprom
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc59, %for.end9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %m, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %8, %9
  br i1 %cmp11, label %for.body12, label %for.end61

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc56, %for.body12
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %10, %11
  br i1 %cmp14, label %for.body15, label %for.end58

for.body15:                                       ; preds = %for.cond13
  store i32 0, ptr %a, align 4, !tbaa !5
  store i32 0, ptr %b, align 4, !tbaa !5
  store i32 0, ptr %q, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc29, %for.body15
  %12 = load i32, ptr %q, align 4, !tbaa !5
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %12, %13
  br i1 %cmp17, label %for.body18, label %for.end31

for.body18:                                       ; preds = %for.cond16
  %14 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %14, ptr %p, align 4, !tbaa !5
  %15 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %idxprom19
  %16 = load i32, ptr %q, align 4, !tbaa !5
  %idxprom21 = sext i32 %16 to i64
  %arrayidx22 = getelementptr inbounds [8 x i32], ptr %arrayidx20, i64 0, i64 %idxprom21
  %17 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %idxprom23
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [8 x i32], ptr %arrayidx24, i64 0, i64 %idxprom25
  %20 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %cmp27 = icmp sle i32 %17, %20
  br i1 %cmp27, label %if.then, label %if.else

if.then:                                          ; preds = %for.body18
  %21 = load i32, ptr %a, align 4, !tbaa !5
  %inc28 = add nsw i32 %21, 1
  store i32 %inc28, ptr %a, align 4, !tbaa !5
  br label %for.inc29

if.else:                                          ; preds = %for.body18
  br label %for.end31

for.inc29:                                        ; preds = %if.then
  %22 = load i32, ptr %q, align 4, !tbaa !5
  %inc30 = add nsw i32 %22, 1
  store i32 %inc30, ptr %q, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !13

for.end31:                                        ; preds = %if.else, %for.cond16
  %23 = load i32, ptr %a, align 4, !tbaa !5
  %24 = load i32, ptr %n, align 4, !tbaa !5
  %cmp32 = icmp eq i32 %23, %24
  br i1 %cmp32, label %if.then33, label %if.end

if.then33:                                        ; preds = %for.end31
  store i32 0, ptr %p, align 4, !tbaa !5
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc49, %if.then33
  %25 = load i32, ptr %p, align 4, !tbaa !5
  %26 = load i32, ptr %m, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %25, %26
  br i1 %cmp35, label %for.body36, label %for.end51

for.body36:                                       ; preds = %for.cond34
  %27 = load i32, ptr %j, align 4, !tbaa !5
  store i32 %27, ptr %q, align 4, !tbaa !5
  %28 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom37 = sext i32 %28 to i64
  %arrayidx38 = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %idxprom37
  %29 = load i32, ptr %q, align 4, !tbaa !5
  %idxprom39 = sext i32 %29 to i64
  %arrayidx40 = getelementptr inbounds [8 x i32], ptr %arrayidx38, i64 0, i64 %idxprom39
  %30 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom41 = sext i32 %31 to i64
  %arrayidx42 = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %idxprom41
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom43 = sext i32 %32 to i64
  %arrayidx44 = getelementptr inbounds [8 x i32], ptr %arrayidx42, i64 0, i64 %idxprom43
  %33 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %cmp45 = icmp sge i32 %30, %33
  br i1 %cmp45, label %if.then46, label %if.else48

if.then46:                                        ; preds = %for.body36
  %34 = load i32, ptr %b, align 4, !tbaa !5
  %inc47 = add nsw i32 %34, 1
  store i32 %inc47, ptr %b, align 4, !tbaa !5
  br label %for.inc49

if.else48:                                        ; preds = %for.body36
  br label %for.end51

for.inc49:                                        ; preds = %if.then46
  %35 = load i32, ptr %p, align 4, !tbaa !5
  %inc50 = add nsw i32 %35, 1
  store i32 %inc50, ptr %p, align 4, !tbaa !5
  br label %for.cond34, !llvm.loop !14

for.end51:                                        ; preds = %if.else48, %for.cond34
  br label %if.end

if.end:                                           ; preds = %for.end51, %for.end31
  %36 = load i32, ptr %b, align 4, !tbaa !5
  %37 = load i32, ptr %m, align 4, !tbaa !5
  %cmp52 = icmp eq i32 %36, %37
  br i1 %cmp52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %39 = load i32, ptr %j, align 4, !tbaa !5
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %38, i32 noundef %39)
  store i32 1, ptr %c, align 4, !tbaa !5
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end
  br label %for.inc56

for.inc56:                                        ; preds = %if.end55
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %inc57 = add nsw i32 %40, 1
  store i32 %inc57, ptr %j, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !15

for.end58:                                        ; preds = %for.cond13
  br label %for.inc59

for.inc59:                                        ; preds = %for.end58
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %inc60 = add nsw i32 %41, 1
  store i32 %inc60, ptr %i, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !16

for.end61:                                        ; preds = %for.cond10
  %42 = load i32, ptr %c, align 4, !tbaa !5
  %cmp62 = icmp eq i32 %42, 0
  br i1 %cmp62, label %if.then63, label %if.end65

if.then63:                                        ; preds = %for.end61
  %call64 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %for.end61
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 256, ptr %sz) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #3
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
