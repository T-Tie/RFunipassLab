; ModuleID = '/tmp/tmplhpg7xk8.cpp'
source_filename = "/tmp/tmplhpg7xk8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %a = alloca [20000 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 80000, ptr %a) #3
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
  %arrayidx = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %arrayidx3 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 0
  %4 = load i32, ptr %arrayidx3, align 16, !tbaa !5
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc26, %for.end
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %5, %6
  br i1 %cmp6, label %for.body7, label %for.end28

for.body7:                                        ; preds = %for.cond5
  store i32 0, ptr %j, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc17, %for.body7
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %7, %8
  br i1 %cmp9, label %for.body10, label %for.end19

for.body10:                                       ; preds = %for.cond8
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom11
  %10 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom13
  %12 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %10, %12
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.body10
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %inc16 = add nsw i32 %13, 1
  store i32 %inc16, ptr %k, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body10
  br label %for.inc17

for.inc17:                                        ; preds = %if.end
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %inc18 = add nsw i32 %14, 1
  store i32 %inc18, ptr %j, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !12

for.end19:                                        ; preds = %for.cond8
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %15, 0
  br i1 %cmp20, label %if.then21, label %if.end25

if.then21:                                        ; preds = %for.end19
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %16 to i64
  %arrayidx23 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom22
  %17 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %17)
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %for.end19
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %inc27 = add nsw i32 %18, 1
  store i32 %inc27, ptr %i, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !13

for.end28:                                        ; preds = %for.cond5
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  call void @llvm.lifetime.end.p0(i64 80000, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
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
