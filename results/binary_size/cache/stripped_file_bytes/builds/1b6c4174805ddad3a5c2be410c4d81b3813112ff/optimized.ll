; ModuleID = '/tmp/tmps18bfy9b.cpp'
source_filename = "/tmp/tmps18bfy9b.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %N = alloca i32, align 4
  %i = alloca i32, align 4
  %zhengzhengshu = alloca [501 x i32], align 16
  %jishu = alloca [500 x i32], align 16
  %j = alloca i32, align 4
  %p = alloca i32, align 4
  %temp = alloca i32, align 4
  %q = alloca i32, align 4
  %m = alloca i32, align 4
  %b = alloca i32, align 4
  %b53 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %N) #4
  store i32 0, ptr %N, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %N)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  store i32 0, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 2004, ptr %zhengzhengshu) #4
  call void @llvm.memset.p0.i64(ptr align 16 %zhengzhengshu, i8 0, i64 2004, i1 false)
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
  %arrayidx = getelementptr inbounds [501 x i32], ptr %zhengzhengshu, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 2000, ptr %jishu) #4
  call void @llvm.memset.p0.i64(ptr align 16 %jishu, i8 0, i64 2000, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  store i32 0, ptr %j, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #4
  store i32 0, ptr %p, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  store i32 0, ptr %p, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc13, %for.end
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %N, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end15

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [501 x i32], ptr %zhengzhengshu, i64 0, i64 %idxprom5
  %7 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %rem = srem i32 %7, 2
  %cmp7 = icmp eq i32 %rem, 1
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [501 x i32], ptr %zhengzhengshu, i64 0, i64 %idxprom8
  %9 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %10 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %idxprom10
  store i32 %9, ptr %arrayidx11, align 4, !tbaa !5
  %11 = load i32, ptr %p, align 4, !tbaa !5
  %inc12 = add nsw i32 %11, 1
  store i32 %inc12, ptr %p, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  br label %for.inc13

for.inc13:                                        ; preds = %if.end
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %inc14 = add nsw i32 %12, 1
  store i32 %inc14, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.end15:                                        ; preds = %for.cond2
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #4
  store i32 0, ptr %temp, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #4
  store i32 0, ptr %q, align 4, !tbaa !5
  store i32 0, ptr %q, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc40, %for.end15
  %13 = load i32, ptr %q, align 4, !tbaa !5
  %14 = load i32, ptr %p, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %13, %14
  br i1 %cmp17, label %for.body18, label %for.end42

for.body18:                                       ; preds = %for.cond16
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #4
  %15 = load i32, ptr %q, align 4, !tbaa !5
  store i32 %15, ptr %m, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc37, %for.body18
  %16 = load i32, ptr %m, align 4, !tbaa !5
  %17 = load i32, ptr %p, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %16, %17
  br i1 %cmp20, label %for.body21, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond19
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #4
  br label %for.end39

for.body21:                                       ; preds = %for.cond19
  %18 = load i32, ptr %q, align 4, !tbaa !5
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %idxprom22
  %19 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %20 = load i32, ptr %m, align 4, !tbaa !5
  %idxprom24 = sext i32 %20 to i64
  %arrayidx25 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %idxprom24
  %21 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %cmp26 = icmp sgt i32 %19, %21
  br i1 %cmp26, label %if.then27, label %if.end36

if.then27:                                        ; preds = %for.body21
  %22 = load i32, ptr %q, align 4, !tbaa !5
  %idxprom28 = sext i32 %22 to i64
  %arrayidx29 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %idxprom28
  %23 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  store i32 %23, ptr %temp, align 4, !tbaa !5
  %24 = load i32, ptr %m, align 4, !tbaa !5
  %idxprom30 = sext i32 %24 to i64
  %arrayidx31 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %idxprom30
  %25 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %26 = load i32, ptr %q, align 4, !tbaa !5
  %idxprom32 = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %idxprom32
  store i32 %25, ptr %arrayidx33, align 4, !tbaa !5
  %27 = load i32, ptr %temp, align 4, !tbaa !5
  %28 = load i32, ptr %m, align 4, !tbaa !5
  %idxprom34 = sext i32 %28 to i64
  %arrayidx35 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %idxprom34
  store i32 %27, ptr %arrayidx35, align 4, !tbaa !5
  br label %if.end36

if.end36:                                         ; preds = %if.then27, %for.body21
  br label %for.inc37

for.inc37:                                        ; preds = %if.end36
  %29 = load i32, ptr %m, align 4, !tbaa !5
  %inc38 = add nsw i32 %29, 1
  store i32 %inc38, ptr %m, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !13

for.end39:                                        ; preds = %for.cond.cleanup
  br label %for.inc40

for.inc40:                                        ; preds = %for.end39
  %30 = load i32, ptr %q, align 4, !tbaa !5
  %inc41 = add nsw i32 %30, 1
  store i32 %inc41, ptr %q, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !14

for.end42:                                        ; preds = %for.cond16
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #4
  store i32 0, ptr %b, align 4, !tbaa !5
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc50, %for.end42
  %31 = load i32, ptr %b, align 4, !tbaa !5
  %32 = load i32, ptr %p, align 4, !tbaa !5
  %sub = sub nsw i32 %32, 1
  %cmp44 = icmp slt i32 %31, %sub
  br i1 %cmp44, label %for.body46, label %for.cond.cleanup45

for.cond.cleanup45:                               ; preds = %for.cond43
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #4
  br label %for.end52

for.body46:                                       ; preds = %for.cond43
  %33 = load i32, ptr %b, align 4, !tbaa !5
  %idxprom47 = sext i32 %33 to i64
  %arrayidx48 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %idxprom47
  %34 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %call49 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %34)
  br label %for.inc50

for.inc50:                                        ; preds = %for.body46
  %35 = load i32, ptr %b, align 4, !tbaa !5
  %inc51 = add nsw i32 %35, 1
  store i32 %inc51, ptr %b, align 4, !tbaa !5
  br label %for.cond43, !llvm.loop !15

for.end52:                                        ; preds = %for.cond.cleanup45
  call void @llvm.lifetime.start.p0(i64 4, ptr %b53) #4
  %36 = load i32, ptr %p, align 4, !tbaa !5
  %sub54 = sub nsw i32 %36, 1
  store i32 %sub54, ptr %b53, align 4, !tbaa !5
  %37 = load i32, ptr %b53, align 4, !tbaa !5
  %idxprom55 = sext i32 %37 to i64
  %arrayidx56 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %idxprom55
  %38 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %call57 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %38)
  call void @llvm.lifetime.end.p0(i64 4, ptr %b53) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 2000, ptr %jishu) #4
  call void @llvm.lifetime.end.p0(i64 2004, ptr %zhengzhengshu) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %N) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!15 = distinct !{!15, !10, !11}
