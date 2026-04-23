; ModuleID = '/tmp/tmpyj0rs_v4.cpp'
source_filename = "/tmp/tmpyj0rs_v4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %z = alloca i32, align 4
  %n = alloca i32, align 4
  %s = alloca [100 x i32], align 16
  %k = alloca [100 x i32], align 16
  %m = alloca i32, align 4
  %e = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %z) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %s) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
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
  %arrayidx = getelementptr inbounds [100 x i32], ptr %s, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %z, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc13, %for.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end15

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %s, i64 0, i64 %idxprom5
  %7 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %rem = srem i32 %7, 2
  %cmp7 = icmp eq i32 %rem, 1
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [100 x i32], ptr %s, i64 0, i64 %idxprom8
  %9 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %10 = load i32, ptr %z, align 4, !tbaa !5
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %k, i64 0, i64 %idxprom10
  store i32 %9, ptr %arrayidx11, align 4, !tbaa !5
  %11 = load i32, ptr %z, align 4, !tbaa !5
  %inc12 = add nsw i32 %11, 1
  store i32 %inc12, ptr %z, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  br label %for.inc13

for.inc13:                                        ; preds = %if.end
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %inc14 = add nsw i32 %12, 1
  store i32 %inc14, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.end15:                                        ; preds = %for.cond2
  store i32 1, ptr %a, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc46, %for.end15
  %13 = load i32, ptr %a, align 4, !tbaa !5
  %14 = load i32, ptr %z, align 4, !tbaa !5
  %cmp17 = icmp sle i32 %13, %14
  br i1 %cmp17, label %for.body18, label %for.end48

for.body18:                                       ; preds = %for.cond16
  store i32 0, ptr %m, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc43, %for.body18
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %16 = load i32, ptr %z, align 4, !tbaa !5
  %17 = load i32, ptr %a, align 4, !tbaa !5
  %sub = sub nsw i32 %16, %17
  %cmp20 = icmp sle i32 %15, %sub
  br i1 %cmp20, label %for.body21, label %for.end45

for.body21:                                       ; preds = %for.cond19
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %k, i64 0, i64 %idxprom22
  %19 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %20 = load i32, ptr %m, align 4, !tbaa !5
  %idxprom24 = sext i32 %20 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32], ptr %k, i64 0, i64 %idxprom24
  %21 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %cmp26 = icmp sgt i32 %19, %21
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.body21
  %22 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %22, ptr %m, align 4, !tbaa !5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %for.body21
  %23 = load i32, ptr %m, align 4, !tbaa !5
  %24 = load i32, ptr %z, align 4, !tbaa !5
  %25 = load i32, ptr %a, align 4, !tbaa !5
  %sub29 = sub nsw i32 %24, %25
  %cmp30 = icmp ne i32 %23, %sub29
  br i1 %cmp30, label %if.then31, label %if.end42

if.then31:                                        ; preds = %if.end28
  %26 = load i32, ptr %m, align 4, !tbaa !5
  %idxprom32 = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds [100 x i32], ptr %k, i64 0, i64 %idxprom32
  %27 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  store i32 %27, ptr %e, align 4, !tbaa !5
  %28 = load i32, ptr %z, align 4, !tbaa !5
  %29 = load i32, ptr %a, align 4, !tbaa !5
  %sub34 = sub nsw i32 %28, %29
  %idxprom35 = sext i32 %sub34 to i64
  %arrayidx36 = getelementptr inbounds [100 x i32], ptr %k, i64 0, i64 %idxprom35
  %30 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %31 = load i32, ptr %m, align 4, !tbaa !5
  %idxprom37 = sext i32 %31 to i64
  %arrayidx38 = getelementptr inbounds [100 x i32], ptr %k, i64 0, i64 %idxprom37
  store i32 %30, ptr %arrayidx38, align 4, !tbaa !5
  %32 = load i32, ptr %e, align 4, !tbaa !5
  %33 = load i32, ptr %z, align 4, !tbaa !5
  %34 = load i32, ptr %a, align 4, !tbaa !5
  %sub39 = sub nsw i32 %33, %34
  %idxprom40 = sext i32 %sub39 to i64
  %arrayidx41 = getelementptr inbounds [100 x i32], ptr %k, i64 0, i64 %idxprom40
  store i32 %32, ptr %arrayidx41, align 4, !tbaa !5
  br label %if.end42

if.end42:                                         ; preds = %if.then31, %if.end28
  br label %for.inc43

for.inc43:                                        ; preds = %if.end42
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %inc44 = add nsw i32 %35, 1
  store i32 %inc44, ptr %i, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !13

for.end45:                                        ; preds = %for.cond19
  br label %for.inc46

for.inc46:                                        ; preds = %for.end45
  %36 = load i32, ptr %a, align 4, !tbaa !5
  %inc47 = add nsw i32 %36, 1
  store i32 %inc47, ptr %a, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !14

for.end48:                                        ; preds = %for.cond16
  %37 = load i32, ptr %z, align 4, !tbaa !5
  %cmp49 = icmp eq i32 %37, 1
  br i1 %cmp49, label %if.then50, label %if.else

if.then50:                                        ; preds = %for.end48
  %arrayidx51 = getelementptr inbounds [100 x i32], ptr %k, i64 0, i64 0
  %38 = load i32, ptr %arrayidx51, align 16, !tbaa !5
  %call52 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %38)
  br label %if.end64

if.else:                                          ; preds = %for.end48
  %arrayidx53 = getelementptr inbounds [100 x i32], ptr %k, i64 0, i64 0
  %39 = load i32, ptr %arrayidx53, align 16, !tbaa !5
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %39)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc61, %if.else
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %41 = load i32, ptr %z, align 4, !tbaa !5
  %cmp56 = icmp slt i32 %40, %41
  br i1 %cmp56, label %for.body57, label %for.end63

for.body57:                                       ; preds = %for.cond55
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom58 = sext i32 %42 to i64
  %arrayidx59 = getelementptr inbounds [100 x i32], ptr %k, i64 0, i64 %idxprom58
  %43 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %call60 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %43)
  br label %for.inc61

for.inc61:                                        ; preds = %for.body57
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %inc62 = add nsw i32 %44, 1
  store i32 %inc62, ptr %i, align 4, !tbaa !5
  br label %for.cond55, !llvm.loop !15

for.end63:                                        ; preds = %for.cond55
  br label %if.end64

if.end64:                                         ; preds = %for.end63, %if.then50
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %s) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %z) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
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
