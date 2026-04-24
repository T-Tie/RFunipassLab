; ModuleID = '/tmp/tmpxmkkh1lp.cpp'
source_filename = "/tmp/tmpxmkkh1lp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %c = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %d = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  store i32 0, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #4
  store i32 0, ptr %d, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 16
  store i64 %1, ptr %__vla_expr0, align 8
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
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc26, %for.end
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %7, %8
  br i1 %cmp3, label %for.body4, label %for.end28

for.body4:                                        ; preds = %for.cond2
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc23, %for.body4
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %11 = load i32, ptr %k, align 4, !tbaa !5
  %sub = sub nsw i32 %10, %11
  %cmp6 = icmp slt i32 %9, %sub
  br i1 %cmp6, label %for.body7, label %for.end25

for.body7:                                        ; preds = %for.cond5
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %vla, i64 %idxprom8
  %13 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %14, 1
  %idxprom10 = sext i32 %add to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %vla, i64 %idxprom10
  %15 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %13, %15
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %add13 = add nsw i32 %16, 1
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %vla, i64 %idxprom14
  %17 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  store i32 %17, ptr %c, align 4, !tbaa !5
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %vla, i64 %idxprom16
  %19 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %add18 = add nsw i32 %20, 1
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %vla, i64 %idxprom19
  store i32 %19, ptr %arrayidx20, align 4, !tbaa !5
  %21 = load i32, ptr %c, align 4, !tbaa !5
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %22 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %vla, i64 %idxprom21
  store i32 %21, ptr %arrayidx22, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  br label %for.inc23

for.inc23:                                        ; preds = %if.end
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %inc24 = add nsw i32 %23, 1
  store i32 %inc24, ptr %i, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !12

for.end25:                                        ; preds = %for.cond5
  br label %for.inc26

for.inc26:                                        ; preds = %for.end25
  %24 = load i32, ptr %k, align 4, !tbaa !5
  %inc27 = add nsw i32 %24, 1
  store i32 %inc27, ptr %k, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !13

for.end28:                                        ; preds = %for.cond2
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc37, %for.end28
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %26 = load i32, ptr %n, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %25, %26
  br i1 %cmp30, label %for.body31, label %for.end39

for.body31:                                       ; preds = %for.cond29
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %27 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %vla, i64 %idxprom32
  %28 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %rem = srem i32 %28, 2
  %cmp34 = icmp eq i32 %rem, 1
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %for.body31
  %29 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %29, ptr %d, align 4, !tbaa !5
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %for.body31
  br label %for.inc37

for.inc37:                                        ; preds = %if.end36
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %inc38 = add nsw i32 %30, 1
  store i32 %inc38, ptr %i, align 4, !tbaa !5
  br label %for.cond29, !llvm.loop !14

for.end39:                                        ; preds = %for.cond29
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc52, %for.end39
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %32 = load i32, ptr %d, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %31, %32
  br i1 %cmp41, label %for.body42, label %for.end54

for.body42:                                       ; preds = %for.cond40
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %33 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %vla, i64 %idxprom43
  %34 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %rem45 = srem i32 %34, 2
  %cmp46 = icmp eq i32 %rem45, 1
  br i1 %cmp46, label %if.then47, label %if.end51

if.then47:                                        ; preds = %for.body42
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %35 to i64
  %arrayidx49 = getelementptr inbounds i32, ptr %vla, i64 %idxprom48
  %36 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %call50 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %36)
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %for.body42
  br label %for.inc52

for.inc52:                                        ; preds = %if.end51
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %inc53 = add nsw i32 %37, 1
  store i32 %inc53, ptr %i, align 4, !tbaa !5
  br label %for.cond40, !llvm.loop !15

for.end54:                                        ; preds = %for.cond40
  %38 = load i32, ptr %d, align 4, !tbaa !5
  %idxprom55 = sext i32 %38 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %vla, i64 %idxprom55
  %39 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %call57 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %39)
  store i32 0, ptr %retval, align 4
  %40 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %40)
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
!15 = distinct !{!15, !10, !11}
