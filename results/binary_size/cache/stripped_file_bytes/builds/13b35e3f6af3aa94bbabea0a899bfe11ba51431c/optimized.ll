; ModuleID = '/tmp/tmpk_ld1n9b.cpp'
source_filename = "/tmp/tmpk_ld1n9b.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %max = alloca i32, align 4
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #4
  store i32 0, ptr %max, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %k)
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #5
  store ptr %call1, ptr %p, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #4
  %1 = load i32, ptr %k, align 4, !tbaa !5
  %conv2 = sext i32 %1 to i64
  %mul3 = mul i64 %conv2, 4
  %call4 = call noalias ptr @malloc(i64 noundef %mul3) #5
  store ptr %call4, ptr %q, align 8, !tbaa !9
  %2 = load ptr, ptr %p, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 0
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %p, align 8, !tbaa !9
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc13, %for.end
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %k, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %8, %9
  br i1 %cmp9, label %for.body10, label %for.end15

for.body10:                                       ; preds = %for.cond8
  %10 = load ptr, ptr %q, align 8, !tbaa !9
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %10, i64 %idxprom11
  store i32 1, ptr %arrayidx12, align 4, !tbaa !5
  br label %for.inc13

for.inc13:                                        ; preds = %for.body10
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %inc14 = add nsw i32 %12, 1
  store i32 %inc14, ptr %i, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !15

for.end15:                                        ; preds = %for.cond8
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %sub = sub nsw i32 %13, 2
  store i32 %sub, ptr %i, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc40, %for.end15
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %cmp17 = icmp sge i32 %14, 0
  br i1 %cmp17, label %for.body18, label %for.end41

for.body18:                                       ; preds = %for.cond16
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %15, 1
  store i32 %add, ptr %j, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc37, %for.body18
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %17 = load i32, ptr %k, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %16, %17
  br i1 %cmp20, label %for.body21, label %for.end39

for.body21:                                       ; preds = %for.cond19
  %18 = load ptr, ptr %p, align 8, !tbaa !9
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %18, i64 %idxprom22
  %20 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %21 = load ptr, ptr %p, align 8, !tbaa !9
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom24 = sext i32 %22 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %21, i64 %idxprom24
  %23 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %cmp26 = icmp sge i32 %20, %23
  br i1 %cmp26, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body21
  %24 = load ptr, ptr %q, align 8, !tbaa !9
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom27 = sext i32 %25 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %24, i64 %idxprom27
  %26 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %27 = load ptr, ptr %q, align 8, !tbaa !9
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %28 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %27, i64 %idxprom29
  %29 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %cmp31 = icmp sge i32 %26, %29
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %30 = load ptr, ptr %q, align 8, !tbaa !9
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom32 = sext i32 %31 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %30, i64 %idxprom32
  %32 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %add34 = add nsw i32 %32, 1
  %33 = load ptr, ptr %q, align 8, !tbaa !9
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %34 to i64
  %arrayidx36 = getelementptr inbounds i32, ptr %33, i64 %idxprom35
  store i32 %add34, ptr %arrayidx36, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body21
  br label %for.inc37

for.inc37:                                        ; preds = %if.end
  %35 = load i32, ptr %j, align 4, !tbaa !5
  %inc38 = add nsw i32 %35, 1
  store i32 %inc38, ptr %j, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !16

for.end39:                                        ; preds = %for.cond19
  br label %for.inc40

for.inc40:                                        ; preds = %for.end39
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %36, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !17

for.end41:                                        ; preds = %for.cond16
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc52, %for.end41
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %38 = load i32, ptr %k, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %37, %38
  br i1 %cmp43, label %for.body44, label %for.end54

for.body44:                                       ; preds = %for.cond42
  %39 = load ptr, ptr %q, align 8, !tbaa !9
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom45 = sext i32 %40 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %39, i64 %idxprom45
  %41 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %42 = load i32, ptr %max, align 4, !tbaa !5
  %cmp47 = icmp sgt i32 %41, %42
  br i1 %cmp47, label %if.then48, label %if.end51

if.then48:                                        ; preds = %for.body44
  %43 = load ptr, ptr %q, align 8, !tbaa !9
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom49 = sext i32 %44 to i64
  %arrayidx50 = getelementptr inbounds i32, ptr %43, i64 %idxprom49
  %45 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  store i32 %45, ptr %max, align 4, !tbaa !5
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %for.body44
  br label %for.inc52

for.inc52:                                        ; preds = %if.end51
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %inc53 = add nsw i32 %46, 1
  store i32 %inc53, ptr %i, align 4, !tbaa !5
  br label %for.cond42, !llvm.loop !18

for.end54:                                        ; preds = %for.cond42
  %47 = load i32, ptr %max, align 4, !tbaa !5
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %47)
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(0) }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
!17 = distinct !{!17, !13, !14}
!18 = distinct !{!18, !13, !14}
