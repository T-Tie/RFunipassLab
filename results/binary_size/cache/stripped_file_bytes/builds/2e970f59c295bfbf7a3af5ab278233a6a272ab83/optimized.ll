; ModuleID = '/tmp/tmpxlorsae9.cpp'
source_filename = "/tmp/tmpxlorsae9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@a = dso_local global [500 x i8] zeroinitializer, align 16
@post = dso_local global [500 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %max = alloca i32, align 4
  %count = alloca i32, align 4
  %h = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #4
  store i32 1, ptr %x, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #4
  store i32 0, ptr %max, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #4
  store i32 0, ptr %count, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #4
  store i32 0, ptr %h, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef @a)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %call2 = call i64 @strlen(ptr noundef @a) #5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %conv3 = sext i32 %1 to i64
  %sub = sub i64 %call2, %conv3
  %cmp = icmp ule i64 %conv, %sub
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %2, ptr %j, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc24, %for.body
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %conv5 = sext i32 %3 to i64
  %call6 = call i64 @strlen(ptr noundef @a) #5
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %conv7 = sext i32 %4 to i64
  %sub8 = sub i64 %call6, %conv7
  %cmp9 = icmp ule i64 %conv5, %sub8
  br i1 %cmp9, label %for.body10, label %for.end26

for.body10:                                       ; preds = %for.cond4
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body10
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %5, %6
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %add = add nsw i32 %7, %8
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [500 x i8], ptr @a, i64 0, i64 %idxprom
  %9 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv14 = sext i8 %9 to i32
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %k, align 4, !tbaa !5
  %add15 = add nsw i32 %10, %11
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds [500 x i8], ptr @a, i64 0, i64 %idxprom16
  %12 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %conv18 = sext i8 %12 to i32
  %cmp19 = icmp ne i32 %conv14, %conv18
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.body13
  store i32 0, ptr %x, align 4, !tbaa !5
  br label %for.end

if.end:                                           ; preds = %for.body13
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !10

for.end:                                          ; preds = %if.then, %for.cond11
  %14 = load i32, ptr %x, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %14, 1
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %for.end
  %15 = load i32, ptr %count, align 4, !tbaa !5
  %inc22 = add nsw i32 %15, 1
  store i32 %inc22, ptr %count, align 4, !tbaa !5
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %for.end
  br label %for.inc24

for.inc24:                                        ; preds = %if.end23
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %inc25 = add nsw i32 %16, 1
  store i32 %inc25, ptr %j, align 4, !tbaa !5
  store i32 1, ptr %x, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !13

for.end26:                                        ; preds = %for.cond4
  %17 = load i32, ptr %count, align 4, !tbaa !5
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds [500 x i32], ptr @post, i64 0, i64 %idxprom27
  store i32 %17, ptr %arrayidx28, align 4, !tbaa !5
  %19 = load i32, ptr %count, align 4, !tbaa !5
  %20 = load i32, ptr %max, align 4, !tbaa !5
  %cmp29 = icmp sge i32 %19, %20
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %for.end26
  %21 = load i32, ptr %count, align 4, !tbaa !5
  store i32 %21, ptr %max, align 4, !tbaa !5
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %for.end26
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %inc33 = add nsw i32 %22, 1
  store i32 %inc33, ptr %i, align 4, !tbaa !5
  store i32 0, ptr %count, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end34:                                        ; preds = %for.cond
  %23 = load i32, ptr %max, align 4, !tbaa !5
  %cmp35 = icmp sle i32 %23, 1
  br i1 %cmp35, label %if.then36, label %if.else

if.then36:                                        ; preds = %for.end34
  %call37 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end66

if.else:                                          ; preds = %for.end34
  %24 = load i32, ptr %max, align 4, !tbaa !5
  %call38 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %24)
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc63, %if.else
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %cmp40 = icmp slt i32 %25, %26
  br i1 %cmp40, label %for.body41, label %for.end65

for.body41:                                       ; preds = %for.cond39
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom42 = sext i32 %27 to i64
  %arrayidx43 = getelementptr inbounds [500 x i32], ptr @post, i64 0, i64 %idxprom42
  %28 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %29 = load i32, ptr %max, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %28, %29
  br i1 %cmp44, label %if.then45, label %if.end62

if.then45:                                        ; preds = %for.body41
  %30 = load i32, ptr %j, align 4, !tbaa !5
  store i32 %30, ptr %k, align 4, !tbaa !5
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc55, %if.then45
  %31 = load i32, ptr %k, align 4, !tbaa !5
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %33 = load i32, ptr %n, align 4, !tbaa !5
  %add47 = add nsw i32 %32, %33
  %sub48 = sub nsw i32 %add47, 1
  %cmp49 = icmp slt i32 %31, %sub48
  br i1 %cmp49, label %for.body50, label %for.end57

for.body50:                                       ; preds = %for.cond46
  %34 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom51 = sext i32 %34 to i64
  %arrayidx52 = getelementptr inbounds [500 x i8], ptr @a, i64 0, i64 %idxprom51
  %35 = load i8, ptr %arrayidx52, align 1, !tbaa !9
  %conv53 = sext i8 %35 to i32
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %conv53)
  br label %for.inc55

for.inc55:                                        ; preds = %for.body50
  %36 = load i32, ptr %k, align 4, !tbaa !5
  %inc56 = add nsw i32 %36, 1
  store i32 %inc56, ptr %k, align 4, !tbaa !5
  br label %for.cond46, !llvm.loop !15

for.end57:                                        ; preds = %for.cond46
  %37 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom58 = sext i32 %37 to i64
  %arrayidx59 = getelementptr inbounds [500 x i8], ptr @a, i64 0, i64 %idxprom58
  %38 = load i8, ptr %arrayidx59, align 1, !tbaa !9
  %conv60 = sext i8 %38 to i32
  %call61 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %conv60)
  br label %if.end62

if.end62:                                         ; preds = %for.end57, %for.body41
  br label %for.inc63

for.inc63:                                        ; preds = %if.end62
  %39 = load i32, ptr %j, align 4, !tbaa !5
  %inc64 = add nsw i32 %39, 1
  store i32 %inc64, ptr %j, align 4, !tbaa !5
  br label %for.cond39, !llvm.loop !16

for.end65:                                        ; preds = %for.cond39
  br label %if.end66

if.end66:                                         ; preds = %for.end65, %if.then36
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
