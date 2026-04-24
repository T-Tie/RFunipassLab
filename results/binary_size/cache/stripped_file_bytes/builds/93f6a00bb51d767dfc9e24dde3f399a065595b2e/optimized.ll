; ModuleID = '/tmp/tmpht2tif9z.cpp'
source_filename = "/tmp/tmpht2tif9z.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %e = alloca i32, align 4
  %l = alloca i32, align 4
  %sz = alloca ptr, align 8
  %zz = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz) #5
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = mul i64 4, %conv
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #6
  store ptr %call1, ptr %sz, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %zz) #5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %conv2 = sext i32 %1 to i64
  %mul3 = mul i64 4, %conv2
  %call4 = call noalias ptr @malloc(i64 noundef %mul3) #6
  store ptr %call4, ptr %zz, align 8, !tbaa !9
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %sz, align 8, !tbaa !9
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %6 = load ptr, ptr %sz, align 8, !tbaa !9
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %6, i64 %idxprom6
  %8 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %rem = srem i32 %8, 2
  %cmp8 = icmp eq i32 %rem, 1
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %sz, align 8, !tbaa !9
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %9, i64 %idxprom9
  %11 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %12 = load ptr, ptr %zz, align 8, !tbaa !9
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %12, i64 %idxprom11
  store i32 %11, ptr %arrayidx12, align 4, !tbaa !5
  %14 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %inc13 = add nsw i32 %15, 1
  store i32 %inc13, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %16 = load i32, ptr %k, align 4, !tbaa !5
  store i32 %16, ptr %l, align 4, !tbaa !5
  store i32 1, ptr %m, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc40, %for.end
  %17 = load i32, ptr %m, align 4, !tbaa !5
  %18 = load i32, ptr %l, align 4, !tbaa !5
  %cmp15 = icmp sle i32 %17, %18
  br i1 %cmp15, label %for.body16, label %for.end42

for.body16:                                       ; preds = %for.cond14
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc37, %for.body16
  %19 = load i32, ptr %k, align 4, !tbaa !5
  %20 = load i32, ptr %l, align 4, !tbaa !5
  %21 = load i32, ptr %m, align 4, !tbaa !5
  %sub = sub nsw i32 %20, %21
  %cmp18 = icmp slt i32 %19, %sub
  br i1 %cmp18, label %for.body19, label %for.end39

for.body19:                                       ; preds = %for.cond17
  %22 = load ptr, ptr %zz, align 8, !tbaa !9
  %23 = load i32, ptr %k, align 4, !tbaa !5
  %add = add nsw i32 %23, 1
  %idxprom20 = sext i32 %add to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %22, i64 %idxprom20
  %24 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %25 = load ptr, ptr %zz, align 8, !tbaa !9
  %26 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom22 = sext i32 %26 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %25, i64 %idxprom22
  %27 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %24, %27
  br i1 %cmp24, label %if.then25, label %if.end36

if.then25:                                        ; preds = %for.body19
  %28 = load ptr, ptr %zz, align 8, !tbaa !9
  %29 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom26 = sext i32 %29 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %28, i64 %idxprom26
  %30 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  store i32 %30, ptr %e, align 4, !tbaa !5
  %31 = load ptr, ptr %zz, align 8, !tbaa !9
  %32 = load i32, ptr %k, align 4, !tbaa !5
  %add28 = add nsw i32 %32, 1
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %31, i64 %idxprom29
  %33 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %34 = load ptr, ptr %zz, align 8, !tbaa !9
  %35 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom31 = sext i32 %35 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %34, i64 %idxprom31
  store i32 %33, ptr %arrayidx32, align 4, !tbaa !5
  %36 = load i32, ptr %e, align 4, !tbaa !5
  %37 = load ptr, ptr %zz, align 8, !tbaa !9
  %38 = load i32, ptr %k, align 4, !tbaa !5
  %add33 = add nsw i32 %38, 1
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %37, i64 %idxprom34
  store i32 %36, ptr %arrayidx35, align 4, !tbaa !5
  br label %if.end36

if.end36:                                         ; preds = %if.then25, %for.body19
  br label %for.inc37

for.inc37:                                        ; preds = %if.end36
  %39 = load i32, ptr %k, align 4, !tbaa !5
  %inc38 = add nsw i32 %39, 1
  store i32 %inc38, ptr %k, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !15

for.end39:                                        ; preds = %for.cond17
  br label %for.inc40

for.inc40:                                        ; preds = %for.end39
  %40 = load i32, ptr %m, align 4, !tbaa !5
  %inc41 = add nsw i32 %40, 1
  store i32 %inc41, ptr %m, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !16

for.end42:                                        ; preds = %for.cond14
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc51, %for.end42
  %41 = load i32, ptr %k, align 4, !tbaa !5
  %42 = load i32, ptr %l, align 4, !tbaa !5
  %sub44 = sub nsw i32 %42, 1
  %cmp45 = icmp slt i32 %41, %sub44
  br i1 %cmp45, label %for.body46, label %for.end53

for.body46:                                       ; preds = %for.cond43
  %43 = load ptr, ptr %zz, align 8, !tbaa !9
  %44 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom47 = sext i32 %44 to i64
  %arrayidx48 = getelementptr inbounds i32, ptr %43, i64 %idxprom47
  %45 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %call49 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %45)
  %call50 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %for.inc51

for.inc51:                                        ; preds = %for.body46
  %46 = load i32, ptr %k, align 4, !tbaa !5
  %inc52 = add nsw i32 %46, 1
  store i32 %inc52, ptr %k, align 4, !tbaa !5
  br label %for.cond43, !llvm.loop !17

for.end53:                                        ; preds = %for.cond43
  %47 = load ptr, ptr %zz, align 8, !tbaa !9
  %48 = load i32, ptr %l, align 4, !tbaa !5
  %sub54 = sub nsw i32 %48, 1
  %idxprom55 = sext i32 %sub54 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %47, i64 %idxprom55
  %49 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %call57 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %49)
  %50 = load ptr, ptr %sz, align 8, !tbaa !9
  call void @free(ptr noundef %50) #5
  %51 = load ptr, ptr %zz, align 8, !tbaa !9
  call void @free(ptr noundef %51) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %zz) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
