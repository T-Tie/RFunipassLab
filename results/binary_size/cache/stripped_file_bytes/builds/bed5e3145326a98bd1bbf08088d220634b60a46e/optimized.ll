; ModuleID = '/tmp/tmp1om4dkmt.cpp'
source_filename = "/tmp/tmp1om4dkmt.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%d+%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"No\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %h = alloca i32, align 4
  %l = alloca i32, align 4
  %t = alloca i32, align 4
  %fah = alloca i32, align 4
  %fal = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %word = alloca ptr, align 8
  %max = alloca ptr, align 8
  %al = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #5
  store i32 1, ptr %t, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %fah) #5
  store i32 -1, ptr %fah, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %fal) #5
  store i32 -1, ptr %fal, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %h, ptr noundef %l)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %word) #5
  %0 = load i32, ptr %h, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = mul i64 8, %conv
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #6
  store ptr %call1, ptr %word, align 8, !tbaa !9
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr %h, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %l, align 4, !tbaa !5
  %conv2 = sext i32 %3 to i64
  %mul3 = mul i64 4, %conv2
  %call4 = call noalias ptr @malloc(i64 noundef %mul3) #6
  %4 = load ptr, ptr %word, align 8, !tbaa !9
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  store ptr %call4, ptr %arrayidx, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #5
  %7 = load i32, ptr %h, align 4, !tbaa !5
  %conv5 = sext i32 %7 to i64
  %mul6 = mul i64 4, %conv5
  %call7 = call noalias ptr @malloc(i64 noundef %mul6) #6
  store ptr %call7, ptr %max, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %al) #5
  %8 = load i32, ptr %h, align 4, !tbaa !5
  %conv8 = sext i32 %8 to i64
  %mul9 = mul i64 4, %conv8
  %call10 = call noalias ptr @malloc(i64 noundef %mul9) #6
  store ptr %call10, ptr %al, align 8, !tbaa !13
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc18, %for.end
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %10 = load i32, ptr %h, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %9, %10
  br i1 %cmp12, label %for.body13, label %for.end20

for.body13:                                       ; preds = %for.cond11
  %11 = load ptr, ptr %max, align 8, !tbaa !13
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %11, i64 %idxprom14
  store i32 0, ptr %arrayidx15, align 4, !tbaa !5
  %13 = load ptr, ptr %al, align 8, !tbaa !13
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %13, i64 %idxprom16
  store i32 0, ptr %arrayidx17, align 4, !tbaa !5
  br label %for.inc18

for.inc18:                                        ; preds = %for.body13
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %inc19 = add nsw i32 %15, 1
  store i32 %inc19, ptr %i, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !18

for.end20:                                        ; preds = %for.cond11
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc50, %for.end20
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %17 = load i32, ptr %h, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %16, %17
  br i1 %cmp22, label %for.body23, label %for.end52

for.body23:                                       ; preds = %for.cond21
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc47, %for.body23
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %19 = load i32, ptr %l, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %18, %19
  br i1 %cmp25, label %for.body26, label %for.end49

for.body26:                                       ; preds = %for.cond24
  %20 = load ptr, ptr %word, align 8, !tbaa !9
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %21 to i64
  %arrayidx28 = getelementptr inbounds ptr, ptr %20, i64 %idxprom27
  %22 = load ptr, ptr %arrayidx28, align 8, !tbaa !13
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom29 = sext i32 %23 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %22, i64 %idxprom29
  %call31 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx30)
  %24 = load ptr, ptr %max, align 8, !tbaa !13
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %25 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %24, i64 %idxprom32
  %26 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %27 = load ptr, ptr %word, align 8, !tbaa !9
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %28 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %27, i64 %idxprom34
  %29 = load ptr, ptr %arrayidx35, align 8, !tbaa !13
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom36 = sext i32 %30 to i64
  %arrayidx37 = getelementptr inbounds i32, ptr %29, i64 %idxprom36
  %31 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %26, %31
  br i1 %cmp38, label %if.then, label %if.end

if.then:                                          ; preds = %for.body26
  %32 = load ptr, ptr %word, align 8, !tbaa !9
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %33 to i64
  %arrayidx40 = getelementptr inbounds ptr, ptr %32, i64 %idxprom39
  %34 = load ptr, ptr %arrayidx40, align 8, !tbaa !13
  %35 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom41 = sext i32 %35 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %34, i64 %idxprom41
  %36 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %37 = load ptr, ptr %max, align 8, !tbaa !13
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %38 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %37, i64 %idxprom43
  store i32 %36, ptr %arrayidx44, align 4, !tbaa !5
  %39 = load i32, ptr %j, align 4, !tbaa !5
  %40 = load ptr, ptr %al, align 8, !tbaa !13
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom45 = sext i32 %41 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %40, i64 %idxprom45
  store i32 %39, ptr %arrayidx46, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body26
  br label %for.inc47

for.inc47:                                        ; preds = %if.end
  %42 = load i32, ptr %j, align 4, !tbaa !5
  %inc48 = add nsw i32 %42, 1
  store i32 %inc48, ptr %j, align 4, !tbaa !5
  br label %for.cond24, !llvm.loop !19

for.end49:                                        ; preds = %for.cond24
  br label %for.inc50

for.inc50:                                        ; preds = %for.end49
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %inc51 = add nsw i32 %43, 1
  store i32 %inc51, ptr %i, align 4, !tbaa !5
  br label %for.cond21, !llvm.loop !20

for.end52:                                        ; preds = %for.cond21
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc78, %for.end52
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %45 = load i32, ptr %h, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %44, %45
  br i1 %cmp54, label %for.body55, label %for.end80

for.body55:                                       ; preds = %for.cond53
  store i32 1, ptr %t, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc70, %for.body55
  %46 = load i32, ptr %j, align 4, !tbaa !5
  %47 = load i32, ptr %h, align 4, !tbaa !5
  %cmp57 = icmp slt i32 %46, %47
  br i1 %cmp57, label %for.body58, label %for.end72

for.body58:                                       ; preds = %for.cond56
  %48 = load ptr, ptr %max, align 8, !tbaa !13
  %49 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom59 = sext i32 %49 to i64
  %arrayidx60 = getelementptr inbounds i32, ptr %48, i64 %idxprom59
  %50 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %51 = load ptr, ptr %word, align 8, !tbaa !9
  %52 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom61 = sext i32 %52 to i64
  %arrayidx62 = getelementptr inbounds ptr, ptr %51, i64 %idxprom61
  %53 = load ptr, ptr %arrayidx62, align 8, !tbaa !13
  %54 = load ptr, ptr %al, align 8, !tbaa !13
  %55 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom63 = sext i32 %55 to i64
  %arrayidx64 = getelementptr inbounds i32, ptr %54, i64 %idxprom63
  %56 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %idxprom65 = sext i32 %56 to i64
  %arrayidx66 = getelementptr inbounds i32, ptr %53, i64 %idxprom65
  %57 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  %cmp67 = icmp sgt i32 %50, %57
  br i1 %cmp67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %for.body58
  store i32 0, ptr %t, align 4, !tbaa !5
  br label %for.end72

if.end69:                                         ; preds = %for.body58
  br label %for.inc70

for.inc70:                                        ; preds = %if.end69
  %58 = load i32, ptr %j, align 4, !tbaa !5
  %inc71 = add nsw i32 %58, 1
  store i32 %inc71, ptr %j, align 4, !tbaa !5
  br label %for.cond56, !llvm.loop !21

for.end72:                                        ; preds = %if.then68, %for.cond56
  %59 = load i32, ptr %t, align 4, !tbaa !5
  %cmp73 = icmp ne i32 %59, 0
  br i1 %cmp73, label %if.then74, label %if.end77

if.then74:                                        ; preds = %for.end72
  %60 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %60, ptr %fah, align 4, !tbaa !5
  %61 = load ptr, ptr %al, align 8, !tbaa !13
  %62 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom75 = sext i32 %62 to i64
  %arrayidx76 = getelementptr inbounds i32, ptr %61, i64 %idxprom75
  %63 = load i32, ptr %arrayidx76, align 4, !tbaa !5
  store i32 %63, ptr %fal, align 4, !tbaa !5
  br label %for.end80

if.end77:                                         ; preds = %for.end72
  br label %for.inc78

for.inc78:                                        ; preds = %if.end77
  %64 = load i32, ptr %i, align 4, !tbaa !5
  %inc79 = add nsw i32 %64, 1
  store i32 %inc79, ptr %i, align 4, !tbaa !5
  br label %for.cond53, !llvm.loop !22

for.end80:                                        ; preds = %if.then74, %for.cond53
  %65 = load i32, ptr %fah, align 4, !tbaa !5
  %cmp81 = icmp ne i32 %65, -1
  br i1 %cmp81, label %if.then83, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end80
  %66 = load i32, ptr %fal, align 4, !tbaa !5
  %cmp82 = icmp ne i32 %66, -1
  br i1 %cmp82, label %if.then83, label %if.else

if.then83:                                        ; preds = %lor.lhs.false, %for.end80
  %67 = load i32, ptr %fah, align 4, !tbaa !5
  %68 = load i32, ptr %fal, align 4, !tbaa !5
  %call84 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %67, i32 noundef %68)
  br label %if.end86

if.else:                                          ; preds = %lor.lhs.false
  %call85 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end86

if.end86:                                         ; preds = %if.else, %if.then83
  %69 = load ptr, ptr %word, align 8, !tbaa !9
  %70 = load ptr, ptr %69, align 8, !tbaa !13
  call void @free(ptr noundef %70) #5
  %71 = load ptr, ptr %max, align 8, !tbaa !13
  call void @free(ptr noundef %71) #5
  %72 = load ptr, ptr %al, align 8, !tbaa !13
  call void @free(ptr noundef %72) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %al) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %word) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %fal) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %fah) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #5
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
!10 = !{!"p2 int", !11, i64 0}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 int", !12, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !16, !17}
!19 = distinct !{!19, !16, !17}
!20 = distinct !{!20, !16, !17}
!21 = distinct !{!21, !16, !17}
!22 = distinct !{!22, !16, !17}
