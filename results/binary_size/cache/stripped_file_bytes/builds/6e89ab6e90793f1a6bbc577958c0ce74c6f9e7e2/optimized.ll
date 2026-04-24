; ModuleID = '/tmp/tmpxbbzpbc7.cpp'
source_filename = "/tmp/tmpxbbzpbc7.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [15 x i32], align 16
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %flag = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %flag) #3
  store i32 1, ptr %flag, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end32, %entry
  %0 = load i32, ptr %flag, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %s, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [15 x i32], ptr %a, i64 0, i64 %idxprom
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %3 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %3, ptr %k, align 4, !tbaa !5
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [15 x i32], ptr %a, i64 0, i64 %idxprom1
  %5 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %5, -1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, ptr %flag, align 4, !tbaa !5
  br label %for.end

if.end:                                           ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [15 x i32], ptr %a, i64 0, i64 %idxprom4
  %7 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %for.end

if.end8:                                          ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %if.then7, %if.then, %for.cond
  %9 = load i32, ptr %flag, align 4, !tbaa !5
  %tobool9 = icmp ne i32 %9, 0
  br i1 %tobool9, label %if.then10, label %if.end32

if.then10:                                        ; preds = %for.end
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc28, %if.then10
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %11 = load i32, ptr %k, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %10, %11
  br i1 %cmp12, label %for.body13, label %for.end30

for.body13:                                       ; preds = %for.cond11
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc25, %for.body13
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %12, %13
  br i1 %cmp15, label %for.body16, label %for.end27

for.body16:                                       ; preds = %for.cond14
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [15 x i32], ptr %a, i64 0, i64 %idxprom17
  %15 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [15 x i32], ptr %a, i64 0, i64 %idxprom19
  %17 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %mul = mul nsw i32 2, %17
  %cmp21 = icmp eq i32 %15, %mul
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %for.body16
  %18 = load i32, ptr %s, align 4, !tbaa !5
  %inc23 = add nsw i32 %18, 1
  store i32 %inc23, ptr %s, align 4, !tbaa !5
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %for.body16
  br label %for.inc25

for.inc25:                                        ; preds = %if.end24
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %inc26 = add nsw i32 %19, 1
  store i32 %inc26, ptr %j, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !12

for.end27:                                        ; preds = %for.cond14
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %inc29 = add nsw i32 %20, 1
  store i32 %inc29, ptr %i, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !13

for.end30:                                        ; preds = %for.cond11
  %21 = load i32, ptr %s, align 4, !tbaa !5
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %21)
  br label %if.end32

if.end32:                                         ; preds = %for.end30, %for.end
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %flag) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #3
  call void @llvm.lifetime.end.p0(i64 60, ptr %a) #3
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
