; ModuleID = '/tmp/tmpks_q8qbl.cpp'
source_filename = "/tmp/tmpks_q8qbl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %sz = alloca [99 x i32], align 16
  %max = alloca i32, align 4
  %e = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  call void @llvm.lifetime.start.p0(i64 396, ptr %sz) #3
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [99 x i32], ptr %sz, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  store i32 0, ptr %max, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc11, %for.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %sub3 = sub nsw i32 %5, 1
  %cmp4 = icmp sle i32 %4, %sub3
  br i1 %cmp4, label %for.body5, label %for.end13

for.body5:                                        ; preds = %for.cond2
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [99 x i32], ptr %sz, i64 0, i64 %idxprom6
  %7 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %8 = load i32, ptr %max, align 4, !tbaa !5
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [99 x i32], ptr %sz, i64 0, i64 %idxprom8
  %9 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp10 = icmp sgt i32 %7, %9
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  %10 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %10, ptr %max, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body5
  br label %for.inc11

for.inc11:                                        ; preds = %if.end
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %inc12 = add nsw i32 %11, 1
  store i32 %inc12, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.end13:                                        ; preds = %for.cond2
  %12 = load i32, ptr %max, align 4, !tbaa !5
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %sub14 = sub nsw i32 %13, 1
  %cmp15 = icmp ne i32 %12, %sub14
  br i1 %cmp15, label %if.then16, label %if.end27

if.then16:                                        ; preds = %for.end13
  %14 = load i32, ptr %max, align 4, !tbaa !5
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [99 x i32], ptr %sz, i64 0, i64 %idxprom17
  %15 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  store i32 %15, ptr %e, align 4, !tbaa !5
  %16 = load i32, ptr %n, align 4, !tbaa !5
  %sub19 = sub nsw i32 %16, 1
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds [99 x i32], ptr %sz, i64 0, i64 %idxprom20
  %17 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %18 = load i32, ptr %max, align 4, !tbaa !5
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [99 x i32], ptr %sz, i64 0, i64 %idxprom22
  store i32 %17, ptr %arrayidx23, align 4, !tbaa !5
  %19 = load i32, ptr %e, align 4, !tbaa !5
  %20 = load i32, ptr %n, align 4, !tbaa !5
  %sub24 = sub nsw i32 %20, 1
  %idxprom25 = sext i32 %sub24 to i64
  %arrayidx26 = getelementptr inbounds [99 x i32], ptr %sz, i64 0, i64 %idxprom25
  store i32 %19, ptr %arrayidx26, align 4, !tbaa !5
  br label %if.end27

if.end27:                                         ; preds = %if.then16, %for.end13
  store i32 0, ptr %max, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc39, %if.end27
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %22 = load i32, ptr %n, align 4, !tbaa !5
  %sub29 = sub nsw i32 %22, 2
  %cmp30 = icmp sle i32 %21, %sub29
  br i1 %cmp30, label %for.body31, label %for.end41

for.body31:                                       ; preds = %for.cond28
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %23 to i64
  %arrayidx33 = getelementptr inbounds [99 x i32], ptr %sz, i64 0, i64 %idxprom32
  %24 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %25 = load i32, ptr %max, align 4, !tbaa !5
  %idxprom34 = sext i32 %25 to i64
  %arrayidx35 = getelementptr inbounds [99 x i32], ptr %sz, i64 0, i64 %idxprom34
  %26 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %cmp36 = icmp sgt i32 %24, %26
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %for.body31
  %27 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %27, ptr %max, align 4, !tbaa !5
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %for.body31
  br label %for.inc39

for.inc39:                                        ; preds = %if.end38
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %inc40 = add nsw i32 %28, 1
  store i32 %inc40, ptr %i, align 4, !tbaa !5
  br label %for.cond28, !llvm.loop !13

for.end41:                                        ; preds = %for.cond28
  %29 = load i32, ptr %max, align 4, !tbaa !5
  %30 = load i32, ptr %n, align 4, !tbaa !5
  %sub42 = sub nsw i32 %30, 2
  %cmp43 = icmp ne i32 %29, %sub42
  br i1 %cmp43, label %if.then44, label %if.end55

if.then44:                                        ; preds = %for.end41
  %31 = load i32, ptr %max, align 4, !tbaa !5
  %idxprom45 = sext i32 %31 to i64
  %arrayidx46 = getelementptr inbounds [99 x i32], ptr %sz, i64 0, i64 %idxprom45
  %32 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  store i32 %32, ptr %e, align 4, !tbaa !5
  %33 = load i32, ptr %n, align 4, !tbaa !5
  %sub47 = sub nsw i32 %33, 2
  %idxprom48 = sext i32 %sub47 to i64
  %arrayidx49 = getelementptr inbounds [99 x i32], ptr %sz, i64 0, i64 %idxprom48
  %34 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %35 = load i32, ptr %max, align 4, !tbaa !5
  %idxprom50 = sext i32 %35 to i64
  %arrayidx51 = getelementptr inbounds [99 x i32], ptr %sz, i64 0, i64 %idxprom50
  store i32 %34, ptr %arrayidx51, align 4, !tbaa !5
  %36 = load i32, ptr %e, align 4, !tbaa !5
  %37 = load i32, ptr %n, align 4, !tbaa !5
  %sub52 = sub nsw i32 %37, 2
  %idxprom53 = sext i32 %sub52 to i64
  %arrayidx54 = getelementptr inbounds [99 x i32], ptr %sz, i64 0, i64 %idxprom53
  store i32 %36, ptr %arrayidx54, align 4, !tbaa !5
  br label %if.end55

if.end55:                                         ; preds = %if.then44, %for.end41
  %38 = load i32, ptr %n, align 4, !tbaa !5
  %sub56 = sub nsw i32 %38, 1
  %idxprom57 = sext i32 %sub56 to i64
  %arrayidx58 = getelementptr inbounds [99 x i32], ptr %sz, i64 0, i64 %idxprom57
  %39 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %call59 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %39)
  %40 = load i32, ptr %n, align 4, !tbaa !5
  %sub60 = sub nsw i32 %40, 2
  %idxprom61 = sext i32 %sub60 to i64
  %arrayidx62 = getelementptr inbounds [99 x i32], ptr %sz, i64 0, i64 %idxprom61
  %41 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %call63 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %41)
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #3
  call void @llvm.lifetime.end.p0(i64 396, ptr %sz) #3
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
