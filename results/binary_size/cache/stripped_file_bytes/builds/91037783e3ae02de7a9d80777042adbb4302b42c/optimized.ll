; ModuleID = '/tmp/tmpwtr1nk6c.cpp'
source_filename = "/tmp/tmpwtr1nk6c.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %e = alloca i32, align 4
  %max = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 16
  store i64 %1, ptr %__vla_expr0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #4
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc30, %for.end
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %7, %8
  br i1 %cmp3, label %for.body4, label %for.end32

for.body4:                                        ; preds = %for.cond2
  store i32 0, ptr %max, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %for.body4
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %11 = load i32, ptr %k, align 4, !tbaa !5
  %sub = sub nsw i32 %10, %11
  %cmp6 = icmp sle i32 %9, %sub
  br i1 %cmp6, label %for.body7, label %for.end15

for.body7:                                        ; preds = %for.cond5
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %vla, i64 %idxprom8
  %13 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %14 = load i32, ptr %max, align 4, !tbaa !5
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %vla, i64 %idxprom10
  %15 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %13, %15
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %16 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %16, ptr %max, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  br label %for.inc13

for.inc13:                                        ; preds = %if.end
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc14 = add nsw i32 %17, 1
  store i32 %inc14, ptr %i, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !12

for.end15:                                        ; preds = %for.cond5
  %18 = load i32, ptr %max, align 4, !tbaa !5
  %19 = load i32, ptr %n, align 4, !tbaa !5
  %20 = load i32, ptr %k, align 4, !tbaa !5
  %sub16 = sub nsw i32 %19, %20
  %cmp17 = icmp ne i32 %18, %sub16
  br i1 %cmp17, label %if.then18, label %if.end29

if.then18:                                        ; preds = %for.end15
  %21 = load i32, ptr %max, align 4, !tbaa !5
  %idxprom19 = sext i32 %21 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %vla, i64 %idxprom19
  %22 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  store i32 %22, ptr %e, align 4, !tbaa !5
  %23 = load i32, ptr %n, align 4, !tbaa !5
  %24 = load i32, ptr %k, align 4, !tbaa !5
  %sub21 = sub nsw i32 %23, %24
  %idxprom22 = sext i32 %sub21 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %vla, i64 %idxprom22
  %25 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %26 = load i32, ptr %max, align 4, !tbaa !5
  %idxprom24 = sext i32 %26 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %vla, i64 %idxprom24
  store i32 %25, ptr %arrayidx25, align 4, !tbaa !5
  %27 = load i32, ptr %e, align 4, !tbaa !5
  %28 = load i32, ptr %n, align 4, !tbaa !5
  %29 = load i32, ptr %k, align 4, !tbaa !5
  %sub26 = sub nsw i32 %28, %29
  %idxprom27 = sext i32 %sub26 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %vla, i64 %idxprom27
  store i32 %27, ptr %arrayidx28, align 4, !tbaa !5
  br label %if.end29

if.end29:                                         ; preds = %if.then18, %for.end15
  br label %for.inc30

for.inc30:                                        ; preds = %if.end29
  %30 = load i32, ptr %k, align 4, !tbaa !5
  %inc31 = add nsw i32 %30, 1
  store i32 %inc31, ptr %k, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !13

for.end32:                                        ; preds = %for.cond2
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc53, %for.end32
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %32 = load i32, ptr %n, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %31, %32
  br i1 %cmp34, label %for.body35, label %for.end55

for.body35:                                       ; preds = %for.cond33
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %33 to i64
  %arrayidx37 = getelementptr inbounds i32, ptr %vla, i64 %idxprom36
  %34 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %rem = srem i32 %34, 2
  %cmp38 = icmp eq i32 %rem, 1
  br i1 %cmp38, label %if.then39, label %if.end52

if.then39:                                        ; preds = %for.body35
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %36 = load i32, ptr %n, align 4, !tbaa !5
  %sub40 = sub nsw i32 %36, 2
  %cmp41 = icmp eq i32 %35, %sub40
  br i1 %cmp41, label %if.then44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then39
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %38 = load i32, ptr %n, align 4, !tbaa !5
  %sub42 = sub nsw i32 %38, 1
  %cmp43 = icmp eq i32 %37, %sub42
  br i1 %cmp43, label %if.then44, label %if.else

if.then44:                                        ; preds = %lor.lhs.false, %if.then39
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom45 = sext i32 %39 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %vla, i64 %idxprom45
  %40 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %call47 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %40)
  br label %if.end51

if.else:                                          ; preds = %lor.lhs.false
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %41 to i64
  %arrayidx49 = getelementptr inbounds i32, ptr %vla, i64 %idxprom48
  %42 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %call50 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %42)
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then44
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %for.body35
  br label %for.inc53

for.inc53:                                        ; preds = %if.end52
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %inc54 = add nsw i32 %43, 1
  store i32 %inc54, ptr %i, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !14

for.end55:                                        ; preds = %for.cond33
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  %44 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %44)
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
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
