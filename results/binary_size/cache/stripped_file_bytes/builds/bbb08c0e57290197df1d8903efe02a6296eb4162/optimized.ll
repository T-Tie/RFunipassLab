; ModuleID = '/tmp/tmpd8xn6ga2.cpp'
source_filename = "/tmp/tmpd8xn6ga2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %a = alloca [8 x [8 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %y = alloca i32, align 4
  %t = alloca i32, align 4
  %s = alloca i32, align 4
  %max = alloca i32, align 4
  %min = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.start.p0(i64 256, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %r, ptr noundef %c)
  store i32 0, ptr %y, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %r, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %c, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc49, %for.end9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %r, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %8, %9
  br i1 %cmp11, label %for.body12, label %for.end51

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %max, align 4, !tbaa !5
  store i32 0, ptr %s, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc25, %for.body12
  %10 = load i32, ptr %s, align 4, !tbaa !5
  %11 = load i32, ptr %c, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %10, %11
  br i1 %cmp14, label %for.body15, label %for.end27

for.body15:                                       ; preds = %for.cond13
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom16
  %13 = load i32, ptr %s, align 4, !tbaa !5
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [8 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %14 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom20
  %16 = load i32, ptr %max, align 4, !tbaa !5
  %idxprom22 = sext i32 %16 to i64
  %arrayidx23 = getelementptr inbounds [8 x i32], ptr %arrayidx21, i64 0, i64 %idxprom22
  %17 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %14, %17
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %for.body15
  %18 = load i32, ptr %s, align 4, !tbaa !5
  store i32 %18, ptr %max, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body15
  br label %for.inc25

for.inc25:                                        ; preds = %if.end
  %19 = load i32, ptr %s, align 4, !tbaa !5
  %inc26 = add nsw i32 %19, 1
  store i32 %inc26, ptr %s, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !13

for.end27:                                        ; preds = %for.cond13
  %20 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %20, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %t, align 4, !tbaa !5
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc42, %for.end27
  %21 = load i32, ptr %t, align 4, !tbaa !5
  %22 = load i32, ptr %r, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %21, %22
  br i1 %cmp29, label %for.body30, label %for.end44

for.body30:                                       ; preds = %for.cond28
  %23 = load i32, ptr %t, align 4, !tbaa !5
  %idxprom31 = sext i32 %23 to i64
  %arrayidx32 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom31
  %24 = load i32, ptr %max, align 4, !tbaa !5
  %idxprom33 = sext i32 %24 to i64
  %arrayidx34 = getelementptr inbounds [8 x i32], ptr %arrayidx32, i64 0, i64 %idxprom33
  %25 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %26 to i64
  %arrayidx36 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom35
  %27 = load i32, ptr %max, align 4, !tbaa !5
  %idxprom37 = sext i32 %27 to i64
  %arrayidx38 = getelementptr inbounds [8 x i32], ptr %arrayidx36, i64 0, i64 %idxprom37
  %28 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %25, %28
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %for.body30
  %29 = load i32, ptr %t, align 4, !tbaa !5
  store i32 %29, ptr %min, align 4, !tbaa !5
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %for.body30
  br label %for.inc42

for.inc42:                                        ; preds = %if.end41
  %30 = load i32, ptr %t, align 4, !tbaa !5
  %inc43 = add nsw i32 %30, 1
  store i32 %inc43, ptr %t, align 4, !tbaa !5
  br label %for.cond28, !llvm.loop !14

for.end44:                                        ; preds = %for.cond28
  %31 = load i32, ptr %min, align 4, !tbaa !5
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %cmp45 = icmp eq i32 %31, %32
  br i1 %cmp45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %for.end44
  store i32 1, ptr %y, align 4, !tbaa !5
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %34 = load i32, ptr %max, align 4, !tbaa !5
  %call47 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %33, i32 noundef %34)
  br label %for.end51

if.end48:                                         ; preds = %for.end44
  br label %for.inc49

for.inc49:                                        ; preds = %if.end48
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %inc50 = add nsw i32 %35, 1
  store i32 %inc50, ptr %i, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !15

for.end51:                                        ; preds = %if.then46, %for.cond10
  %36 = load i32, ptr %y, align 4, !tbaa !5
  %cmp52 = icmp eq i32 %36, 0
  br i1 %cmp52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %for.end51
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %for.end51
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 256, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #3
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
