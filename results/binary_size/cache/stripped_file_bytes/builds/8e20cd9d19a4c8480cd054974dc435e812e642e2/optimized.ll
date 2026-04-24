; ModuleID = '/tmp/tmp_xducke_.cpp'
source_filename = "/tmp/tmp_xducke_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %sz = alloca [16 x i32], align 16
  %erbei = alloca [16 x i32], align 16
  %sum = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 64, ptr %sz) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr %erbei) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #3
  store i32 0, ptr %sum, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr %sz, i64 0, i64 %idxprom
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [16 x i32], ptr %sz, i64 0, i64 %idxprom1
  %2 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %cmp = icmp eq i32 0, %2
  br i1 %cmp, label %if.then, label %if.end30

if.then:                                          ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %if.then
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %3, %4
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond3
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [16 x i32], ptr %sz, i64 0, i64 %idxprom5
  %6 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %mul = mul nsw i32 2, %6
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [16 x i32], ptr %erbei, i64 0, i64 %idxprom7
  store i32 %mul, ptr %arrayidx8, align 4, !tbaa !5
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, ptr %j, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !9

for.end:                                          ; preds = %for.cond3
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc26, %for.end
  %10 = load i32, ptr %k, align 4, !tbaa !5
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %10, %11
  br i1 %cmp11, label %for.body12, label %for.end28

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc23, %for.body12
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %12, %13
  br i1 %cmp14, label %for.body15, label %for.end25

for.body15:                                       ; preds = %for.cond13
  %14 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [16 x i32], ptr %erbei, i64 0, i64 %idxprom16
  %15 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [16 x i32], ptr %sz, i64 0, i64 %idxprom18
  %17 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %15, %17
  br i1 %cmp20, label %if.then21, label %if.end

if.then21:                                        ; preds = %for.body15
  %18 = load i32, ptr %sum, align 4, !tbaa !5
  %inc22 = add nsw i32 %18, 1
  store i32 %inc22, ptr %sum, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then21, %for.body15
  br label %for.inc23

for.inc23:                                        ; preds = %if.end
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %inc24 = add nsw i32 %19, 1
  store i32 %inc24, ptr %j, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !12

for.end25:                                        ; preds = %for.cond13
  br label %for.inc26

for.inc26:                                        ; preds = %for.end25
  %20 = load i32, ptr %k, align 4, !tbaa !5
  %inc27 = add nsw i32 %20, 1
  store i32 %inc27, ptr %k, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !13

for.end28:                                        ; preds = %for.cond10
  %21 = load i32, ptr %sum, align 4, !tbaa !5
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %21)
  store i32 0, ptr %sum, align 4, !tbaa !5
  store i32 -1, ptr %i, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %if.end30

if.end30:                                         ; preds = %for.end28, %for.cond
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %22 to i64
  %arrayidx32 = getelementptr inbounds [16 x i32], ptr %sz, i64 0, i64 %idxprom31
  %23 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %cmp33 = icmp eq i32 -1, %23
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end30
  br label %for.end38

if.end35:                                         ; preds = %if.end30
  br label %for.inc36

for.inc36:                                        ; preds = %if.end35
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %inc37 = add nsw i32 %24, 1
  store i32 %inc37, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end38:                                        ; preds = %if.then34
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr %erbei) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr %sz) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
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
