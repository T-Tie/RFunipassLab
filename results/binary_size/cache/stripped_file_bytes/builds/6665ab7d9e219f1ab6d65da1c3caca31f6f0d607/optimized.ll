; ModuleID = '/tmp/tmp9la92qdd.cpp'
source_filename = "/tmp/tmp9la92qdd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %u = alloca [20000 x i32], align 16
  %a = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 80000, ptr %u) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #3
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
  %arrayidx = getelementptr inbounds [20000 x i32], ptr %u, i64 0, i64 %idxprom
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

for.cond2:                                        ; preds = %for.inc18, %for.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end20

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %6, 1
  store i32 %add, ptr %j, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc15, %for.body4
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %for.body7, label %for.end17

for.body7:                                        ; preds = %for.cond5
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [20000 x i32], ptr %u, i64 0, i64 %idxprom8
  %10 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [20000 x i32], ptr %u, i64 0, i64 %idxprom10
  %12 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %10, %12
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [20000 x i32], ptr %u, i64 0, i64 %idxprom13
  store i32 0, ptr %arrayidx14, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  br label %for.inc15

for.inc15:                                        ; preds = %if.end
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %inc16 = add nsw i32 %14, 1
  store i32 %inc16, ptr %j, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !12

for.end17:                                        ; preds = %for.cond5
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %inc19 = add nsw i32 %15, 1
  store i32 %inc19, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !13

for.end20:                                        ; preds = %for.cond2
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc30, %for.end20
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %17 = load i32, ptr %n, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %16, %17
  br i1 %cmp22, label %for.body23, label %for.end32

for.body23:                                       ; preds = %for.cond21
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom24 = sext i32 %18 to i64
  %arrayidx25 = getelementptr inbounds [20000 x i32], ptr %u, i64 0, i64 %idxprom24
  %19 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %cmp26 = icmp ne i32 %19, 0
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %for.body23
  %20 = load i32, ptr %k, align 4, !tbaa !5
  %inc28 = add nsw i32 %20, 1
  store i32 %inc28, ptr %k, align 4, !tbaa !5
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %for.body23
  br label %for.inc30

for.inc30:                                        ; preds = %if.end29
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %inc31 = add nsw i32 %21, 1
  store i32 %inc31, ptr %i, align 4, !tbaa !5
  br label %for.cond21, !llvm.loop !14

for.end32:                                        ; preds = %for.cond21
  store i32 0, ptr %i, align 4, !tbaa !5
  store i32 0, ptr %l, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end48, %for.end32
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %23 = load i32, ptr %n, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %22, %23
  br i1 %cmp33, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %24 to i64
  %arrayidx35 = getelementptr inbounds [20000 x i32], ptr %u, i64 0, i64 %idxprom34
  %25 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %cmp36 = icmp ne i32 %25, 0
  br i1 %cmp36, label %if.then37, label %if.end48

if.then37:                                        ; preds = %while.body
  %26 = load i32, ptr %l, align 4, !tbaa !5
  %27 = load i32, ptr %k, align 4, !tbaa !5
  %sub = sub nsw i32 %27, 1
  %cmp38 = icmp slt i32 %26, %sub
  br i1 %cmp38, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.then37
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %28 to i64
  %arrayidx41 = getelementptr inbounds [20000 x i32], ptr %u, i64 0, i64 %idxprom40
  %29 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %call42 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %29)
  %30 = load i32, ptr %l, align 4, !tbaa !5
  %inc43 = add nsw i32 %30, 1
  store i32 %inc43, ptr %l, align 4, !tbaa !5
  br label %if.end47

if.else:                                          ; preds = %if.then37
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom44 = sext i32 %31 to i64
  %arrayidx45 = getelementptr inbounds [20000 x i32], ptr %u, i64 0, i64 %idxprom44
  %32 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %call46 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %32)
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then39
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %while.body
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %inc49 = add nsw i32 %33, 1
  store i32 %inc49, ptr %i, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 80000, ptr %u) #3
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
