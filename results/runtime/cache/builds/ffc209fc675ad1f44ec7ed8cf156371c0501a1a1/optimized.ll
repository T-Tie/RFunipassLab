; ModuleID = '<stdin>'
source_filename = "/tmp/tmpsplfggoq.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %array = alloca [100 x [100 x i32]], align 16
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %array) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %row) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %col) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %row, ptr noundef align 4 %col)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ]
  %0 = load i32, ptr %row, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %1 = load i32, ptr %col, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %j.0, %1
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %array, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %j.0 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx5)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %inc8 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc52, %for.end9
  %i.1 = phi i32 [ 0, %for.end9 ], [ %add, %for.inc52 ]
  %cmp11 = icmp slt i32 %i.1, %0
  br i1 %cmp11, label %for.body12, label %for.end54

for.body12:                                       ; preds = %for.cond10
  %2 = load i32, ptr %col, align 4, !tbaa !5
  %sub = sub nsw i32 %2, 1
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc25, %for.body12
  %m.0 = phi i32 [ %sub, %for.body12 ], [ %m.1, %for.inc25 ]
  %j.1 = phi i32 [ 0, %for.body12 ], [ %inc26, %for.inc25 ]
  %cmp14 = icmp slt i32 %j.1, %2
  br i1 %cmp14, label %for.body15, label %for.end27

for.body15:                                       ; preds = %for.cond13
  %idxprom16 = sext i32 %i.1 to i64
  %arrayidx17 = getelementptr inbounds [100 x [100 x i32]], ptr %array, i64 0, i64 %idxprom16
  %idxprom18 = sext i32 %j.1 to i64
  %arrayidx19 = getelementptr inbounds [100 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %3 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %idxprom22 = sext i32 %m.0 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %arrayidx17, i64 0, i64 %idxprom22
  %4 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %3, %4
  br i1 %cmp24, label %if.then, label %for.inc25

if.then:                                          ; preds = %for.body15
  br label %for.inc25

for.inc25:                                        ; preds = %for.body15, %if.then
  %m.1 = phi i32 [ %j.1, %if.then ], [ %m.0, %for.body15 ]
  %inc26 = add nsw i32 %j.1, 1
  br label %for.cond13, !llvm.loop !13

for.end27:                                        ; preds = %for.cond13
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc42, %for.end27
  %k.0 = phi i32 [ 0, %for.end27 ], [ %inc43, %for.inc42 ]
  %min.0 = phi i32 [ %i.1, %for.end27 ], [ %min.1, %for.inc42 ]
  %cmp29 = icmp slt i32 %k.0, %0
  br i1 %cmp29, label %for.body30, label %for.end44

for.body30:                                       ; preds = %for.cond28
  %idxprom31 = sext i32 %k.0 to i64
  %arrayidx32 = getelementptr inbounds [100 x [100 x i32]], ptr %array, i64 0, i64 %idxprom31
  %idxprom33 = sext i32 %m.0 to i64
  %arrayidx34 = getelementptr inbounds [100 x i32], ptr %arrayidx32, i64 0, i64 %idxprom33
  %5 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %idxprom35 = sext i32 %min.0 to i64
  %arrayidx36 = getelementptr inbounds [100 x [100 x i32]], ptr %array, i64 0, i64 %idxprom35
  %arrayidx38 = getelementptr inbounds [100 x i32], ptr %arrayidx36, i64 0, i64 %idxprom33
  %6 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %5, %6
  br i1 %cmp39, label %if.then40, label %for.inc42

if.then40:                                        ; preds = %for.body30
  br label %for.inc42

for.inc42:                                        ; preds = %for.body30, %if.then40
  %min.1 = phi i32 [ %k.0, %if.then40 ], [ %min.0, %for.body30 ]
  %inc43 = add nsw i32 %k.0, 1
  br label %for.cond28, !llvm.loop !14

for.end44:                                        ; preds = %for.cond28
  %cmp45 = icmp eq i32 %i.1, %min.0
  br i1 %cmp45, label %if.then46, label %for.inc52

if.then46:                                        ; preds = %for.end44
  %call47 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %i.1, i32 noundef %m.0)
  br label %for.end54

for.inc52:                                        ; preds = %for.end44
  %add = add nsw i32 %i.1, 1
  br label %for.cond10, !llvm.loop !15

for.end54:                                        ; preds = %if.then46, %for.cond10
  %7 = load i32, ptr %row, align 4, !tbaa !5
  %cmp55 = icmp eq i32 %i.1, %7
  br i1 %cmp55, label %if.then56, label %if.end58

if.then56:                                        ; preds = %for.end54
  %call57 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %for.end54
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %col) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %row) #4
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %array) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind willreturn }
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
