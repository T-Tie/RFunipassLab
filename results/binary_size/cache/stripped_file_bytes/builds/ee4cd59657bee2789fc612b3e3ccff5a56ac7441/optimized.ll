; ModuleID = '/tmp/tmp1d057wds.cpp'
source_filename = "/tmp/tmp1d057wds.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %input = alloca [20000 x i32], align 16
  %output = alloca [20000 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 80000, ptr %input) #3
  call void @llvm.lifetime.start.p0(i64 80000, ptr %output) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [20000 x i32], ptr %input, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %k, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc25, %for.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end27

for.body4:                                        ; preds = %for.cond2
  store i32 0, ptr %x, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc14, %for.body4
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %6, %7
  br i1 %cmp6, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond5
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [20000 x i32], ptr %input, i64 0, i64 %idxprom8
  %9 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [20000 x i32], ptr %input, i64 0, i64 %idxprom10
  %11 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %9, %11
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %12 = load i32, ptr %x, align 4, !tbaa !5
  %inc13 = add nsw i32 %12, 1
  store i32 %inc13, ptr %x, align 4, !tbaa !5
  br label %for.end16

if.end:                                           ; preds = %for.body7
  br label %for.inc14

for.inc14:                                        ; preds = %if.end
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %inc15 = add nsw i32 %13, 1
  store i32 %inc15, ptr %j, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !12

for.end16:                                        ; preds = %if.then, %for.cond5
  %14 = load i32, ptr %x, align 4, !tbaa !5
  %cmp17 = icmp eq i32 %14, 0
  br i1 %cmp17, label %if.then18, label %if.end24

if.then18:                                        ; preds = %for.end16
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %inc19 = add nsw i32 %15, 1
  store i32 %inc19, ptr %k, align 4, !tbaa !5
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [20000 x i32], ptr %input, i64 0, i64 %idxprom20
  %17 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %18 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [20000 x i32], ptr %output, i64 0, i64 %idxprom22
  store i32 %17, ptr %arrayidx23, align 4, !tbaa !5
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %for.end16
  br label %for.inc25

for.inc25:                                        ; preds = %if.end24
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %inc26 = add nsw i32 %19, 1
  store i32 %inc26, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !13

for.end27:                                        ; preds = %for.cond2
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc34, %for.end27
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %21 = load i32, ptr %k, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %20, %21
  br i1 %cmp29, label %for.body30, label %for.end36

for.body30:                                       ; preds = %for.cond28
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %22 to i64
  %arrayidx32 = getelementptr inbounds [20000 x i32], ptr %output, i64 0, i64 %idxprom31
  %23 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %23)
  br label %for.inc34

for.inc34:                                        ; preds = %for.body30
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %inc35 = add nsw i32 %24, 1
  store i32 %inc35, ptr %i, align 4, !tbaa !5
  br label %for.cond28, !llvm.loop !14

for.end36:                                        ; preds = %for.cond28
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %26 = load i32, ptr %k, align 4, !tbaa !5
  %cmp37 = icmp eq i32 %25, %26
  br i1 %cmp37, label %if.then38, label %if.end42

if.then38:                                        ; preds = %for.end36
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %27 to i64
  %arrayidx40 = getelementptr inbounds [20000 x i32], ptr %output, i64 0, i64 %idxprom39
  %28 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %28)
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %for.end36
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 80000, ptr %output) #3
  call void @llvm.lifetime.end.p0(i64 80000, ptr %input) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
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
