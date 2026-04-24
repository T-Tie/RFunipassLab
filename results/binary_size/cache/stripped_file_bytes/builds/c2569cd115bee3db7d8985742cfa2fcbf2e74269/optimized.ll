; ModuleID = '/tmp/tmp_p2a6hv5.cpp'
source_filename = "/tmp/tmp_p2a6hv5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %sz = alloca [1000 x [1000 x i32]], align 16
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4000000, ptr %sz) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %x1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %y1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %x2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %y2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %idxprom
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [1000 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc24, %for.end9
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %8, %9
  br i1 %cmp11, label %for.body12, label %for.end26

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc21, %for.body12
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %10, %11
  br i1 %cmp14, label %for.body15, label %for.end23

for.body15:                                       ; preds = %for.cond13
  %12 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %idxprom16
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [1000 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %14 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %14, 0
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.body15
  %15 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %15, ptr %x1, align 4, !tbaa !5
  %16 = load i32, ptr %k, align 4, !tbaa !5
  store i32 %16, ptr %y1, align 4, !tbaa !5
  br label %for.end23

if.end:                                           ; preds = %for.body15
  br label %for.inc21

for.inc21:                                        ; preds = %if.end
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc22 = add nsw i32 %17, 1
  store i32 %inc22, ptr %i, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !13

for.end23:                                        ; preds = %if.then, %for.cond13
  br label %for.inc24

for.inc24:                                        ; preds = %for.end23
  %18 = load i32, ptr %k, align 4, !tbaa !5
  %inc25 = add nsw i32 %18, 1
  store i32 %inc25, ptr %k, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !14

for.end26:                                        ; preds = %for.cond10
  %19 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %19, 1
  store i32 %sub, ptr %k, align 4, !tbaa !5
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc43, %for.end26
  %20 = load i32, ptr %k, align 4, !tbaa !5
  %cmp28 = icmp sge i32 %20, 0
  br i1 %cmp28, label %for.body29, label %for.end45

for.body29:                                       ; preds = %for.cond27
  %21 = load i32, ptr %n, align 4, !tbaa !5
  %sub30 = sub nsw i32 %21, 1
  store i32 %sub30, ptr %i, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc41, %for.body29
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %cmp32 = icmp sge i32 %22, 0
  br i1 %cmp32, label %for.body33, label %for.end42

for.body33:                                       ; preds = %for.cond31
  %23 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom34 = sext i32 %23 to i64
  %arrayidx35 = getelementptr inbounds [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %idxprom34
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %24 to i64
  %arrayidx37 = getelementptr inbounds [1000 x i32], ptr %arrayidx35, i64 0, i64 %idxprom36
  %25 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %cmp38 = icmp eq i32 %25, 0
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %for.body33
  %26 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %26, ptr %x2, align 4, !tbaa !5
  %27 = load i32, ptr %k, align 4, !tbaa !5
  store i32 %27, ptr %y2, align 4, !tbaa !5
  br label %for.end42

if.end40:                                         ; preds = %for.body33
  br label %for.inc41

for.inc41:                                        ; preds = %if.end40
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %28, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !15

for.end42:                                        ; preds = %if.then39, %for.cond31
  br label %for.inc43

for.inc43:                                        ; preds = %for.end42
  %29 = load i32, ptr %k, align 4, !tbaa !5
  %dec44 = add nsw i32 %29, -1
  store i32 %dec44, ptr %k, align 4, !tbaa !5
  br label %for.cond27, !llvm.loop !16

for.end45:                                        ; preds = %for.cond27
  %30 = load i32, ptr %x2, align 4, !tbaa !5
  %31 = load i32, ptr %x1, align 4, !tbaa !5
  %sub46 = sub nsw i32 %30, %31
  %32 = call i32 @llvm.abs.i32(i32 %sub46, i1 true)
  %sub47 = sub nsw i32 %32, 1
  %33 = load i32, ptr %y2, align 4, !tbaa !5
  %34 = load i32, ptr %y1, align 4, !tbaa !5
  %sub48 = sub nsw i32 %33, %34
  %35 = call i32 @llvm.abs.i32(i32 %sub48, i1 true)
  %sub49 = sub nsw i32 %35, 1
  %mul = mul nsw i32 %sub47, %sub49
  store i32 %mul, ptr %s, align 4, !tbaa !5
  %36 = load i32, ptr %s, align 4, !tbaa !5
  %call50 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %36)
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %y2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %y1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x1) #4
  call void @llvm.lifetime.end.p0(i64 4000000, ptr %sz) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
