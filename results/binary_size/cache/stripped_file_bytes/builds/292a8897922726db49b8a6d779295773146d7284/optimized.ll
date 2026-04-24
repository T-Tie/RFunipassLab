; ModuleID = '/tmp/tmp42n7it7c.cpp'
source_filename = "/tmp/tmp42n7it7c.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %N = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca [500 x i32], align 16
  %b = alloca [500 x i32], align 16
  %t = alloca i32, align 4
  %r = alloca i32, align 4
  %tem = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %N) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 2000, ptr %a) #4
  call void @llvm.memset.p0.i64(ptr align 16 %a, i8 0, i64 2000, i1 false)
  call void @llvm.lifetime.start.p0(i64 2000, ptr %b) #4
  call void @llvm.memset.p0.i64(ptr align 16 %b, i8 0, i64 2000, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #4
  store i32 0, ptr %t, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #4
  store i32 0, ptr %r, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %tem) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %N)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %N, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom2
  %4 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  %rem = srem i32 %4, 2
  %cmp4 = icmp ne i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom5
  %6 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %7 = load i32, ptr %t, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom7
  store i32 %6, ptr %arrayidx8, align 4, !tbaa !5
  %8 = load i32, ptr %t, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %t, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc38, %for.end
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %11 = load i32, ptr %t, align 4, !tbaa !5
  %sub = sub nsw i32 %11, 1
  %cmp11 = icmp slt i32 %10, %sub
  br i1 %cmp11, label %for.body12, label %for.end40

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc35, %for.body12
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %13 = load i32, ptr %t, align 4, !tbaa !5
  %sub14 = sub nsw i32 %13, 1
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %sub15 = sub nsw i32 %sub14, %14
  %cmp16 = icmp slt i32 %12, %sub15
  br i1 %cmp16, label %for.body17, label %for.end37

for.body17:                                       ; preds = %for.cond13
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom18
  %16 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %17, 1
  %idxprom20 = sext i32 %add to i64
  %arrayidx21 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom20
  %18 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %cmp22 = icmp sgt i32 %16, %18
  br i1 %cmp22, label %if.then23, label %if.end34

if.then23:                                        ; preds = %for.body17
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom24 = sext i32 %19 to i64
  %arrayidx25 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom24
  %20 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  store i32 %20, ptr %tem, align 4, !tbaa !5
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %add26 = add nsw i32 %21, 1
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom27
  %22 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom29 = sext i32 %23 to i64
  %arrayidx30 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom29
  store i32 %22, ptr %arrayidx30, align 4, !tbaa !5
  %24 = load i32, ptr %tem, align 4, !tbaa !5
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %add31 = add nsw i32 %25, 1
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom32
  store i32 %24, ptr %arrayidx33, align 4, !tbaa !5
  br label %if.end34

if.end34:                                         ; preds = %if.then23, %for.body17
  br label %for.inc35

for.inc35:                                        ; preds = %if.end34
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %inc36 = add nsw i32 %26, 1
  store i32 %inc36, ptr %j, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !12

for.end37:                                        ; preds = %for.cond13
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %inc39 = add nsw i32 %27, 1
  store i32 %inc39, ptr %i, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !13

for.end40:                                        ; preds = %for.cond10
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc54, %for.end40
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %29 = load i32, ptr %t, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %28, %29
  br i1 %cmp42, label %for.body43, label %for.end56

for.body43:                                       ; preds = %for.cond41
  %30 = load i32, ptr %r, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %30, 0
  br i1 %cmp44, label %if.then45, label %if.else

if.then45:                                        ; preds = %for.body43
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom46 = sext i32 %31 to i64
  %arrayidx47 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom46
  %32 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %call48 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %32)
  br label %if.end52

if.else:                                          ; preds = %for.body43
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom49 = sext i32 %33 to i64
  %arrayidx50 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom49
  %34 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %call51 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %34)
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then45
  %35 = load i32, ptr %r, align 4, !tbaa !5
  %inc53 = add nsw i32 %35, 1
  store i32 %inc53, ptr %r, align 4, !tbaa !5
  br label %for.inc54

for.inc54:                                        ; preds = %if.end52
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %inc55 = add nsw i32 %36, 1
  store i32 %inc55, ptr %i, align 4, !tbaa !5
  br label %for.cond41, !llvm.loop !14

for.end56:                                        ; preds = %for.cond41
  call void @llvm.lifetime.end.p0(i64 4, ptr %tem) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #4
  call void @llvm.lifetime.end.p0(i64 2000, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 2000, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %N) #4
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
