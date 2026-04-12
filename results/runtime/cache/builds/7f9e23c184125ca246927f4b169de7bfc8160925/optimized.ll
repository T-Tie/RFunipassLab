; ModuleID = '<stdin>'
source_filename = "/tmp/tmpiey70snn.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %s = alloca [100 x [100 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef %s) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j) #5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %s, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %2 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %inc8 = add nsw i32 %0, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i2) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j2) #5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc24, %for.end9
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %cmp11 = icmp sle i32 %4, %1
  br i1 %cmp11, label %for.body12, label %for.end26

for.body12:                                       ; preds = %for.cond10
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc21, %for.body12
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %cmp14 = icmp sle i32 %5, %1
  br i1 %cmp14, label %for.body15, label %for.inc24

for.body15:                                       ; preds = %for.cond13
  %idxprom16 = sext i32 %4 to i64
  %arrayidx17 = getelementptr inbounds [100 x [100 x i32]], ptr %s, i64 0, i64 %idxprom16
  %idxprom18 = sext i32 %5 to i64
  %arrayidx19 = getelementptr inbounds [100 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %6 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %6, 0
  br i1 %cmp20, label %if.then, label %for.inc21

if.then:                                          ; preds = %for.body15
  store i32 %4, ptr %i1, align 4, !tbaa !5
  store i32 %5, ptr %j1, align 4, !tbaa !5
  br label %for.inc24

for.inc21:                                        ; preds = %for.body15
  %inc22 = add nsw i32 %5, 1
  store i32 %inc22, ptr %j, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !13

for.inc24:                                        ; preds = %for.cond13, %if.then
  %inc25 = add nsw i32 %4, 1
  store i32 %inc25, ptr %i, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !14

for.end26:                                        ; preds = %for.cond10
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc42, %for.end26
  %.sink = phi i32 [ %1, %for.end26 ], [ %dec43, %for.inc42 ]
  %cmp28 = icmp sge i32 %.sink, 1
  br i1 %cmp28, label %for.body29, label %for.end44

for.body29:                                       ; preds = %for.cond27
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc40, %for.body29
  %.sink7 = phi i32 [ %1, %for.body29 ], [ %dec, %for.inc40 ]
  %cmp31 = icmp sge i32 %.sink7, 1
  br i1 %cmp31, label %for.body32, label %for.inc42

for.body32:                                       ; preds = %for.cond30
  %idxprom33 = sext i32 %.sink to i64
  %arrayidx34 = getelementptr inbounds [100 x [100 x i32]], ptr %s, i64 0, i64 %idxprom33
  %idxprom35 = sext i32 %.sink7 to i64
  %arrayidx36 = getelementptr inbounds [100 x i32], ptr %arrayidx34, i64 0, i64 %idxprom35
  %7 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %cmp37 = icmp eq i32 %7, 0
  br i1 %cmp37, label %if.then38, label %for.inc40

if.then38:                                        ; preds = %for.body32
  store i32 %.sink, ptr %i2, align 4, !tbaa !5
  store i32 %.sink7, ptr %j2, align 4, !tbaa !5
  br label %for.inc42

for.inc40:                                        ; preds = %for.body32
  %dec = add nsw i32 %.sink7, -1
  br label %for.cond30, !llvm.loop !15

for.inc42:                                        ; preds = %for.cond30, %if.then38
  %dec43 = add nsw i32 %.sink, -1
  br label %for.cond27, !llvm.loop !16

for.end44:                                        ; preds = %for.cond27
  %8 = load i32, ptr %j2, align 4, !tbaa !5
  %9 = load i32, ptr %j1, align 4, !tbaa !5
  %sub = sub nsw i32 %8, %9
  %sub45 = sub nsw i32 %sub, 1
  %10 = load i32, ptr %i1, align 4, !tbaa !5
  %11 = load i32, ptr %i2, align 4, !tbaa !5
  %sub46 = sub nsw i32 %10, %11
  %sub47 = sub nsw i32 %sub46, 1
  %mul = mul nsw i32 %sub45, %sub47
  %call48 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %mul) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j2) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j1) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i2) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i1) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #5
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %s) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
!16 = distinct !{!16, !10, !11}
