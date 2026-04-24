; ModuleID = '/tmp/tmp31nu2ly8.cpp'
source_filename = "/tmp/tmp31nu2ly8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [500 x i32], align 16
  %b = alloca [500 x i32], align 16
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 2000, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 2000, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #3
  store i32 0, ptr %p, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #3
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
  %arrayidx = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom2
  %4 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  %rem = srem i32 %4, 2
  %cmp4 = icmp eq i32 %rem, 1
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom5
  %6 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom7
  store i32 %6, ptr %arrayidx8, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom9
  store i32 0, ptr %arrayidx10, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc21, %for.end
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %10, %11
  br i1 %cmp12, label %for.body13, label %for.end23

for.body13:                                       ; preds = %for.cond11
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom14
  %13 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %14 = load i32, ptr %p, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %13, %14
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %for.body13
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom18
  %16 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  store i32 %16, ptr %p, align 4, !tbaa !5
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %for.body13
  br label %for.inc21

for.inc21:                                        ; preds = %if.end20
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc22 = add nsw i32 %17, 1
  store i32 %inc22, ptr %i, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !12

for.end23:                                        ; preds = %for.cond11
  store i32 1, ptr %r, align 4, !tbaa !5
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc41, %for.end23
  %18 = load i32, ptr %r, align 4, !tbaa !5
  %19 = load i32, ptr %p, align 4, !tbaa !5
  %sub = sub nsw i32 %19, 2
  %cmp25 = icmp sle i32 %18, %sub
  br i1 %cmp25, label %for.body26, label %for.end42

for.body26:                                       ; preds = %for.cond24
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc38, %for.body26
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %21 = load i32, ptr %n, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %20, %21
  br i1 %cmp28, label %for.body29, label %for.end40

for.body29:                                       ; preds = %for.cond27
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %22 to i64
  %arrayidx31 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom30
  %23 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %24 = load i32, ptr %r, align 4, !tbaa !5
  %cmp32 = icmp eq i32 %23, %24
  br i1 %cmp32, label %if.then33, label %if.end37

if.then33:                                        ; preds = %for.body29
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %25 to i64
  %arrayidx35 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom34
  %26 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %26)
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %for.body29
  br label %for.inc38

for.inc38:                                        ; preds = %if.end37
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %inc39 = add nsw i32 %27, 1
  store i32 %inc39, ptr %i, align 4, !tbaa !5
  br label %for.cond27, !llvm.loop !13

for.end40:                                        ; preds = %for.cond27
  br label %for.inc41

for.inc41:                                        ; preds = %for.end40
  %28 = load i32, ptr %r, align 4, !tbaa !5
  %add = add nsw i32 %28, 2
  store i32 %add, ptr %r, align 4, !tbaa !5
  br label %for.cond24, !llvm.loop !14

for.end42:                                        ; preds = %for.cond24
  %29 = load i32, ptr %p, align 4, !tbaa !5
  %call43 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %29)
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 2000, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 2000, ptr %a) #3
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
