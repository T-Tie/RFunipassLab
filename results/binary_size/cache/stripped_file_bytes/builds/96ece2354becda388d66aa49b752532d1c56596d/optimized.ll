; ModuleID = '/tmp/tmp5vmf_pki.cpp'
source_filename = "/tmp/tmp5vmf_pki.cpp"
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
  %j = alloca i32, align 4
  %s = alloca i32, align 4
  %jishu = alloca [501 x i32], align 16
  %sz = alloca [501 x i32], align 16
  %i1 = alloca i32, align 4
  %e = alloca i32, align 4
  %i11 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j16 = alloca i32, align 4
  %j44 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %N) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %N)
  call void @llvm.lifetime.start.p0(i64 2004, ptr %jishu) #3
  call void @llvm.lifetime.start.p0(i64 2004, ptr %sz) #3
  store i32 0, ptr %j, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i1) #3
  store i32 0, ptr %i1, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i1, align 4, !tbaa !5
  %1 = load i32, ptr %N, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i1) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i1, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [501 x i32], ptr %sz, i64 0, i64 %idxprom
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %3 = load i32, ptr %i1, align 4, !tbaa !5
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [501 x i32], ptr %sz, i64 0, i64 %idxprom3
  %4 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %rem = srem i32 %4, 2
  %cmp5 = icmp eq i32 %rem, 1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %i1, align 4, !tbaa !5
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [501 x i32], ptr %sz, i64 0, i64 %idxprom6
  %6 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [501 x i32], ptr %jishu, i64 0, i64 %idxprom8
  store i32 %6, ptr %arrayidx9, align 4, !tbaa !5
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i1, align 4, !tbaa !5
  %inc10 = add nsw i32 %9, 1
  store i32 %inc10, ptr %i1, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup
  %10 = load i32, ptr %j, align 4, !tbaa !5
  store i32 %10, ptr %s, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i11) #3
  store i32 0, ptr %i11, align 4, !tbaa !5
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc41, %for.end
  %11 = load i32, ptr %i11, align 4, !tbaa !5
  %12 = load i32, ptr %s, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %11, %12
  br i1 %cmp13, label %for.body15, label %for.cond.cleanup14

for.cond.cleanup14:                               ; preds = %for.cond12
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i11) #3
  br label %for.end43

for.body15:                                       ; preds = %for.cond12
  call void @llvm.lifetime.start.p0(i64 4, ptr %j16) #3
  store i32 0, ptr %j16, align 4, !tbaa !5
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc38, %for.body15
  %13 = load i32, ptr %j16, align 4, !tbaa !5
  %14 = load i32, ptr %s, align 4, !tbaa !5
  %15 = load i32, ptr %i11, align 4, !tbaa !5
  %sub = sub nsw i32 %14, %15
  %cmp18 = icmp slt i32 %13, %sub
  br i1 %cmp18, label %for.body20, label %for.cond.cleanup19

for.cond.cleanup19:                               ; preds = %for.cond17
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j16) #3
  br label %for.end40

for.body20:                                       ; preds = %for.cond17
  %16 = load i32, ptr %j16, align 4, !tbaa !5
  %idxprom21 = sext i32 %16 to i64
  %arrayidx22 = getelementptr inbounds [501 x i32], ptr %jishu, i64 0, i64 %idxprom21
  %17 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %18 = load i32, ptr %j16, align 4, !tbaa !5
  %add = add nsw i32 %18, 1
  %idxprom23 = sext i32 %add to i64
  %arrayidx24 = getelementptr inbounds [501 x i32], ptr %jishu, i64 0, i64 %idxprom23
  %19 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp25 = icmp sgt i32 %17, %19
  br i1 %cmp25, label %if.then26, label %if.end37

if.then26:                                        ; preds = %for.body20
  %20 = load i32, ptr %j16, align 4, !tbaa !5
  %idxprom27 = sext i32 %20 to i64
  %arrayidx28 = getelementptr inbounds [501 x i32], ptr %jishu, i64 0, i64 %idxprom27
  %21 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  store i32 %21, ptr %e, align 4, !tbaa !5
  %22 = load i32, ptr %j16, align 4, !tbaa !5
  %add29 = add nsw i32 %22, 1
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds [501 x i32], ptr %jishu, i64 0, i64 %idxprom30
  %23 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %24 = load i32, ptr %j16, align 4, !tbaa !5
  %idxprom32 = sext i32 %24 to i64
  %arrayidx33 = getelementptr inbounds [501 x i32], ptr %jishu, i64 0, i64 %idxprom32
  store i32 %23, ptr %arrayidx33, align 4, !tbaa !5
  %25 = load i32, ptr %e, align 4, !tbaa !5
  %26 = load i32, ptr %j16, align 4, !tbaa !5
  %add34 = add nsw i32 %26, 1
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds [501 x i32], ptr %jishu, i64 0, i64 %idxprom35
  store i32 %25, ptr %arrayidx36, align 4, !tbaa !5
  br label %if.end37

if.end37:                                         ; preds = %if.then26, %for.body20
  br label %for.inc38

for.inc38:                                        ; preds = %if.end37
  %27 = load i32, ptr %j16, align 4, !tbaa !5
  %inc39 = add nsw i32 %27, 1
  store i32 %inc39, ptr %j16, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !12

for.end40:                                        ; preds = %for.cond.cleanup19
  br label %for.inc41

for.inc41:                                        ; preds = %for.end40
  %28 = load i32, ptr %i11, align 4, !tbaa !5
  %inc42 = add nsw i32 %28, 1
  store i32 %inc42, ptr %i11, align 4, !tbaa !5
  br label %for.cond12, !llvm.loop !13

for.end43:                                        ; preds = %for.cond.cleanup14
  call void @llvm.lifetime.start.p0(i64 4, ptr %j44) #3
  store i32 0, ptr %j44, align 4, !tbaa !5
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc59, %for.end43
  %29 = load i32, ptr %j44, align 4, !tbaa !5
  %30 = load i32, ptr %s, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %29, %30
  br i1 %cmp46, label %for.body48, label %for.cond.cleanup47

for.cond.cleanup47:                               ; preds = %for.cond45
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j44) #3
  br label %for.end61

for.body48:                                       ; preds = %for.cond45
  %31 = load i32, ptr %j44, align 4, !tbaa !5
  %32 = load i32, ptr %s, align 4, !tbaa !5
  %sub49 = sub nsw i32 %32, 1
  %cmp50 = icmp ne i32 %31, %sub49
  br i1 %cmp50, label %if.then51, label %if.else

if.then51:                                        ; preds = %for.body48
  %33 = load i32, ptr %j44, align 4, !tbaa !5
  %idxprom52 = sext i32 %33 to i64
  %arrayidx53 = getelementptr inbounds [501 x i32], ptr %jishu, i64 0, i64 %idxprom52
  %34 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %34)
  br label %if.end58

if.else:                                          ; preds = %for.body48
  %35 = load i32, ptr %j44, align 4, !tbaa !5
  %idxprom55 = sext i32 %35 to i64
  %arrayidx56 = getelementptr inbounds [501 x i32], ptr %jishu, i64 0, i64 %idxprom55
  %36 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %call57 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %36)
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then51
  br label %for.inc59

for.inc59:                                        ; preds = %if.end58
  %37 = load i32, ptr %j44, align 4, !tbaa !5
  %inc60 = add nsw i32 %37, 1
  store i32 %inc60, ptr %j44, align 4, !tbaa !5
  br label %for.cond45, !llvm.loop !14

for.end61:                                        ; preds = %for.cond.cleanup47
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 2004, ptr %sz) #3
  call void @llvm.lifetime.end.p0(i64 2004, ptr %jishu) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %N) #3
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) #2

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
