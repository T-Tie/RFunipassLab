; ModuleID = '/tmp/tmphbegcm8h.cpp'
source_filename = "/tmp/tmphbegcm8h.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %num = alloca [15 x [15 x i32]], align 16
  %doub = alloca [15 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %w = alloca [15 x i32], align 16
  %row = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 900, ptr %num) #4
  call void @llvm.memset.p0.i64(ptr align 16 %num, i8 0, i64 900, i1 false)
  call void @llvm.lifetime.start.p0(i64 60, ptr %doub) #4
  call void @llvm.memset.p0.i64(ptr align 16 %doub, i8 0, i64 60, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 60, ptr %w) #4
  call void @llvm.memset.p0.i64(ptr align 16 %w, i8 0, i64 60, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %row) #4
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 15
  br i1 %cmp, label %for.body, label %for.end28

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %1, 20
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [15 x [15 x i32]], ptr %num, i64 0, i64 %idxprom
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [15 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %4 to i64
  %arrayidx7 = getelementptr inbounds [15 x [15 x i32]], ptr %num, i64 0, i64 %idxprom6
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %5 to i64
  %arrayidx9 = getelementptr inbounds [15 x i32], ptr %arrayidx7, i64 0, i64 %idxprom8
  %6 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %6, -1
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  br label %for.end

if.end:                                           ; preds = %for.body3
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %7 to i64
  %arrayidx12 = getelementptr inbounds [15 x [15 x i32]], ptr %num, i64 0, i64 %idxprom11
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom13 = sext i32 %8 to i64
  %arrayidx14 = getelementptr inbounds [15 x i32], ptr %arrayidx12, i64 0, i64 %idxprom13
  %9 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %9, 0
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %11 to i64
  %arrayidx18 = getelementptr inbounds [15 x i32], ptr %w, i64 0, i64 %idxprom17
  store i32 %10, ptr %arrayidx18, align 4, !tbaa !5
  br label %for.end

if.end19:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %if.then16, %if.then, %for.cond1
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %13 to i64
  %arrayidx21 = getelementptr inbounds [15 x [15 x i32]], ptr %num, i64 0, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [15 x i32], ptr %arrayidx21, i64 0, i64 0
  %14 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %14, -1
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.end
  %15 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %15, ptr %row, align 4, !tbaa !5
  br label %for.end28

if.end25:                                         ; preds = %for.end
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc27 = add nsw i32 %16, 1
  store i32 %inc27, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end28:                                        ; preds = %if.then24, %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc65, %for.end28
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %18 = load i32, ptr %row, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %17, %18
  br i1 %cmp30, label %for.body31, label %for.end67

for.body31:                                       ; preds = %for.cond29
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc59, %for.body31
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %20 to i64
  %arrayidx34 = getelementptr inbounds [15 x i32], ptr %w, i64 0, i64 %idxprom33
  %21 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %19, %21
  br i1 %cmp35, label %for.body36, label %for.end61

for.body36:                                       ; preds = %for.cond32
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc56, %for.body36
  %22 = load i32, ptr %k, align 4, !tbaa !5
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom38 = sext i32 %23 to i64
  %arrayidx39 = getelementptr inbounds [15 x i32], ptr %w, i64 0, i64 %idxprom38
  %24 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %cmp40 = icmp slt i32 %22, %24
  br i1 %cmp40, label %for.body41, label %for.end58

for.body41:                                       ; preds = %for.cond37
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %25 to i64
  %arrayidx43 = getelementptr inbounds [15 x [15 x i32]], ptr %num, i64 0, i64 %idxprom42
  %26 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom44 = sext i32 %26 to i64
  %arrayidx45 = getelementptr inbounds [15 x i32], ptr %arrayidx43, i64 0, i64 %idxprom44
  %27 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom46 = sext i32 %28 to i64
  %arrayidx47 = getelementptr inbounds [15 x [15 x i32]], ptr %num, i64 0, i64 %idxprom46
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom48 = sext i32 %29 to i64
  %arrayidx49 = getelementptr inbounds [15 x i32], ptr %arrayidx47, i64 0, i64 %idxprom48
  %30 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %mul = mul nsw i32 2, %30
  %cmp50 = icmp eq i32 %27, %mul
  br i1 %cmp50, label %if.then51, label %if.end55

if.then51:                                        ; preds = %for.body41
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom52 = sext i32 %31 to i64
  %arrayidx53 = getelementptr inbounds [15 x i32], ptr %doub, i64 0, i64 %idxprom52
  %32 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %inc54 = add nsw i32 %32, 1
  store i32 %inc54, ptr %arrayidx53, align 4, !tbaa !5
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %for.body41
  br label %for.inc56

for.inc56:                                        ; preds = %if.end55
  %33 = load i32, ptr %k, align 4, !tbaa !5
  %inc57 = add nsw i32 %33, 1
  store i32 %inc57, ptr %k, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !13

for.end58:                                        ; preds = %for.cond37
  br label %for.inc59

for.inc59:                                        ; preds = %for.end58
  %34 = load i32, ptr %j, align 4, !tbaa !5
  %inc60 = add nsw i32 %34, 1
  store i32 %inc60, ptr %j, align 4, !tbaa !5
  br label %for.cond32, !llvm.loop !14

for.end61:                                        ; preds = %for.cond32
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom62 = sext i32 %35 to i64
  %arrayidx63 = getelementptr inbounds [15 x i32], ptr %doub, i64 0, i64 %idxprom62
  %36 = load i32, ptr %arrayidx63, align 4, !tbaa !5
  %call64 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %36)
  br label %for.inc65

for.inc65:                                        ; preds = %for.end61
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %inc66 = add nsw i32 %37, 1
  store i32 %inc66, ptr %i, align 4, !tbaa !5
  br label %for.cond29, !llvm.loop !15

for.end67:                                        ; preds = %for.cond29
  call void @llvm.lifetime.end.p0(i64 4, ptr %row) #4
  call void @llvm.lifetime.end.p0(i64 60, ptr %w) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 60, ptr %doub) #4
  call void @llvm.lifetime.end.p0(i64 900, ptr %num) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
