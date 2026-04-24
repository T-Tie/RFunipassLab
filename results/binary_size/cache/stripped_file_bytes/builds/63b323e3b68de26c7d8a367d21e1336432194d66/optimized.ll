; ModuleID = '/tmp/tmpn97mgs_x.cpp'
source_filename = "/tmp/tmpn97mgs_x.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %sz = alloca [100000 x i32], align 16
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %f = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %i = alloca i32, align 4
  %row1 = alloca i32, align 4
  %row2 = alloca i32, align 4
  %col1 = alloca i32, align 4
  %col2 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 400000, ptr %sz) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  store i32 0, ptr %b, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #3
  store i32 0, ptr %f, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %row1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %row2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %col1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %col2) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %mul = mul nsw i32 %1, %2
  %cmp = icmp slt i32 %0, %mul
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [100000 x i32], ptr %sz, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [100000 x i32], ptr %sz, i64 0, i64 %idxprom2
  %5 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then, label %if.end7

if.then:                                          ; preds = %for.body
  %6 = load i32, ptr %b, align 4, !tbaa !5
  %add = add nsw i32 %6, 1
  store i32 %add, ptr %b, align 4, !tbaa !5
  %7 = load i32, ptr %b, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %7, 1
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %8 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %8, ptr %d, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc21, %for.end
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %mul9 = mul nsw i32 %11, %12
  %cmp10 = icmp slt i32 %10, %mul9
  br i1 %cmp10, label %for.body11, label %for.end23

for.body11:                                       ; preds = %for.cond8
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [100000 x i32], ptr %sz, i64 0, i64 %idxprom12
  %14 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %14, 0
  br i1 %cmp14, label %if.then15, label %if.end20

if.then15:                                        ; preds = %for.body11
  %15 = load i32, ptr %f, align 4, !tbaa !5
  %add16 = add nsw i32 %15, 1
  store i32 %add16, ptr %f, align 4, !tbaa !5
  %16 = load i32, ptr %f, align 4, !tbaa !5
  %17 = load i32, ptr %b, align 4, !tbaa !5
  %cmp17 = icmp eq i32 %16, %17
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then15
  %18 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %18, ptr %e, align 4, !tbaa !5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then15
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %for.body11
  br label %for.inc21

for.inc21:                                        ; preds = %if.end20
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %inc22 = add nsw i32 %19, 1
  store i32 %inc22, ptr %i, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !12

for.end23:                                        ; preds = %for.cond8
  %20 = load i32, ptr %d, align 4, !tbaa !5
  %21 = load i32, ptr %n, align 4, !tbaa !5
  %div = sdiv i32 %20, %21
  store i32 %div, ptr %row1, align 4, !tbaa !5
  %22 = load i32, ptr %d, align 4, !tbaa !5
  %23 = load i32, ptr %n, align 4, !tbaa !5
  %rem = srem i32 %22, %23
  store i32 %rem, ptr %col1, align 4, !tbaa !5
  %24 = load i32, ptr %e, align 4, !tbaa !5
  %25 = load i32, ptr %n, align 4, !tbaa !5
  %div24 = sdiv i32 %24, %25
  store i32 %div24, ptr %row2, align 4, !tbaa !5
  %26 = load i32, ptr %e, align 4, !tbaa !5
  %27 = load i32, ptr %n, align 4, !tbaa !5
  %rem25 = srem i32 %26, %27
  store i32 %rem25, ptr %col2, align 4, !tbaa !5
  %28 = load i32, ptr %col2, align 4, !tbaa !5
  %29 = load i32, ptr %col1, align 4, !tbaa !5
  %sub = sub nsw i32 %28, %29
  %add26 = add nsw i32 %sub, 1
  %30 = load i32, ptr %row2, align 4, !tbaa !5
  %31 = load i32, ptr %row1, align 4, !tbaa !5
  %sub27 = sub nsw i32 %30, %31
  %add28 = add nsw i32 %sub27, 1
  %mul29 = mul nsw i32 %add26, %add28
  %32 = load i32, ptr %b, align 4, !tbaa !5
  %sub30 = sub nsw i32 %mul29, %32
  store i32 %sub30, ptr %c, align 4, !tbaa !5
  %33 = load i32, ptr %c, align 4, !tbaa !5
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %33)
  call void @llvm.lifetime.end.p0(i64 4, ptr %col2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %col1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %row2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %row1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 400000, ptr %sz) #3
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
