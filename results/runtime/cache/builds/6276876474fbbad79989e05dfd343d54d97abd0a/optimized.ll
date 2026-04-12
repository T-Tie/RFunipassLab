; ModuleID = '<stdin>'
source_filename = "/tmp/tmpayxu8a7v.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %k = alloca i32, align 4
  %a = alloca [25 x i32], align 16
  %i = alloca i32, align 4
  %b = alloca [25 x i32], align 16
  %j = alloca i32, align 4
  %p = alloca i32, align 4
  %max = alloca i32, align 4
  %q = alloca i32, align 4
  %t = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #3
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #3
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef align 16 %b) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %p) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %max) #3
  store i32 0, ptr %max, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %q) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %t) #3
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %.sink = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %.sink, 25
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %.sink to i64
  %arrayidx = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %.sink, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %k)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.end
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %k, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %0, %1
  br i1 %cmp2, label %for.inc7, label %for.end9

for.inc7:                                         ; preds = %for.cond1
  %idxprom4 = sext i32 %0 to i64
  %arrayidx5 = getelementptr inbounds [25 x i32], ptr %a, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  %inc8 = add nsw i32 %0, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end9:                                         ; preds = %for.cond1
  %sub = sub nsw i32 %1, 1
  %idxprom10 = sext i32 %sub to i64
  %arrayidx11 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom10
  store i32 1, ptr %arrayidx11, align 4, !tbaa !5
  %sub12 = sub nsw i32 %1, 2
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc38, %for.end9
  %sub12.sink = phi i32 [ %sub12, %for.end9 ], [ %dec, %for.inc38 ]
  %cmp14 = icmp sge i32 %sub12.sink, 0
  br i1 %cmp14, label %for.body15, label %for.end39

for.body15:                                       ; preds = %for.cond13
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc35, %for.body15
  %.sink14 = phi i32 [ %sub12.sink, %for.body15 ], [ %add, %for.inc35 ]
  %add = add nsw i32 %.sink14, 1
  %cmp17 = icmp slt i32 %add, %1
  br i1 %cmp17, label %for.body18, label %for.inc38

for.body18:                                       ; preds = %for.cond16
  %idxprom19 = sext i32 %add to i64
  %arrayidx20 = getelementptr inbounds [25 x i32], ptr %a, i64 0, i64 %idxprom19
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %idxprom21 = sext i32 %sub12.sink to i64
  %arrayidx22 = getelementptr inbounds [25 x i32], ptr %a, i64 0, i64 %idxprom21
  %3 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %cmp23 = icmp sle i32 %2, %3
  br i1 %cmp23, label %land.lhs.true, label %for.inc35

land.lhs.true:                                    ; preds = %for.body18
  %arrayidx25 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom21
  %4 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %arrayidx27 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom19
  %5 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %add28 = add nsw i32 %5, 1
  %cmp29 = icmp slt i32 %4, %add28
  br i1 %cmp29, label %if.then, label %for.inc35

if.then:                                          ; preds = %land.lhs.true
  store i32 %add28, ptr %arrayidx25, align 4, !tbaa !5
  br label %for.inc35

for.inc35:                                        ; preds = %for.body18, %land.lhs.true, %if.then
  br label %for.cond16, !llvm.loop !13

for.inc38:                                        ; preds = %for.cond16
  %dec = add nsw i32 %sub12.sink, -1
  br label %for.cond13, !llvm.loop !14

for.end39:                                        ; preds = %for.cond13
  store i32 0, ptr %q, align 4, !tbaa !5
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc50, %for.end39
  %6 = load i32, ptr %q, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %6, %1
  %7 = load i32, ptr %max, align 4, !tbaa !5
  br i1 %cmp41, label %for.body42, label %for.end52

for.body42:                                       ; preds = %for.cond40
  %idxprom43 = sext i32 %6 to i64
  %arrayidx44 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom43
  %8 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %cmp45 = icmp sgt i32 %8, %7
  br i1 %cmp45, label %if.then46, label %for.inc50

if.then46:                                        ; preds = %for.body42
  store i32 %8, ptr %max, align 4, !tbaa !5
  br label %for.inc50

for.inc50:                                        ; preds = %for.body42, %if.then46
  %inc51 = add nsw i32 %6, 1
  store i32 %inc51, ptr %q, align 4, !tbaa !5
  br label %for.cond40, !llvm.loop !15

for.end52:                                        ; preds = %for.cond40
  %call53 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %7)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %t) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %q) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %max) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %p) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #4
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef %b) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #4
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef %a) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #4
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
attributes #3 = { nofree nounwind }
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
