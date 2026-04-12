; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_4_tojv9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@H = dso_local global [1000 x i32] zeroinitializer, align 16
@D = dso_local global [1000 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z4sorti(i32 noundef %i) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc19, %for.inc18 ]
  %cmp = icmp sle i32 %j.0, %i
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %k.0 = phi i32 [ %j.0, %for.body ], [ %inc, %for.inc ]
  %m.0 = phi i32 [ %j.0, %for.body ], [ %m.1, %for.inc ]
  %cmp2 = icmp sle i32 %k.0, %i
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %m.0 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr @D, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %idxprom4 = sext i32 %k.0 to i64
  %arrayidx5 = getelementptr inbounds [1000 x i32], ptr @D, i64 0, i64 %idxprom4
  %1 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %cmp6 = icmp sgt i32 %0, %1
  br i1 %cmp6, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %for.body3, %if.then
  %m.1 = phi i32 [ %k.0, %if.then ], [ %m.0, %for.body3 ]
  %inc = add nsw i32 %k.0, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %cmp7 = icmp ne i32 %m.0, %j.0
  br i1 %cmp7, label %if.then8, label %for.inc18

if.then8:                                         ; preds = %for.end
  %idxprom9 = sext i32 %j.0 to i64
  %arrayidx10 = getelementptr inbounds [1000 x i32], ptr @D, i64 0, i64 %idxprom9
  %2 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %idxprom11 = sext i32 %m.0 to i64
  %arrayidx12 = getelementptr inbounds [1000 x i32], ptr @D, i64 0, i64 %idxprom11
  %3 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  store i32 %3, ptr %arrayidx10, align 4, !tbaa !5
  store i32 %2, ptr %arrayidx12, align 4, !tbaa !5
  br label %for.inc18

for.inc18:                                        ; preds = %for.end, %if.then8
  %inc19 = add nsw i32 %j.0, 1
  br label %for.cond, !llvm.loop !12

for.end20:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #2 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 21
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr @D, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc4, %while.body ]
  %idxprom1 = sext i32 %i.1 to i64
  %arrayidx2 = getelementptr inbounds [1000 x i32], ptr @H, i64 0, i64 %idxprom1
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx2)
  %cmp3 = icmp ne i32 %call, -1
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %inc4 = add nsw i32 %i.1, 1
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  %sub = sub nsw i32 %i.1, 1
  %idxprom5 = sext i32 %sub to i64
  %arrayidx6 = getelementptr inbounds [1000 x i32], ptr @D, i64 0, i64 %idxprom5
  store i32 1, ptr %arrayidx6, align 4, !tbaa !5
  %sub7 = sub nsw i32 %i.1, 2
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc29, %while.end
  %j.0 = phi i32 [ %sub7, %while.end ], [ %dec, %for.inc29 ]
  %cmp9 = icmp sge i32 %j.0, 0
  br i1 %cmp9, label %for.body10, label %for.end30

for.body10:                                       ; preds = %for.cond8
  br label %while.cond11

while.cond11:                                     ; preds = %if.end, %for.body10
  %j.0.sink = phi i32 [ %j.0, %for.body10 ], [ %add, %if.end ]
  %n.0 = phi i32 [ 0, %for.body10 ], [ %n.1, %if.end ]
  %add = add nsw i32 %j.0.sink, 1
  %cmp12 = icmp slt i32 %add, %i.1
  br i1 %cmp12, label %while.body13, label %for.inc29

while.body13:                                     ; preds = %while.cond11
  %idxprom14 = sext i32 %j.0 to i64
  %arrayidx15 = getelementptr inbounds [1000 x i32], ptr @H, i64 0, i64 %idxprom14
  %0 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %idxprom16 = sext i32 %add to i64
  %arrayidx17 = getelementptr inbounds [1000 x i32], ptr @H, i64 0, i64 %idxprom16
  %1 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %cmp18 = icmp sge i32 %0, %1
  br i1 %cmp18, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body13
  %arrayidx20 = getelementptr inbounds [1000 x i32], ptr @D, i64 0, i64 %idxprom16
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %cmp21 = icmp sgt i32 %2, %n.0
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body13
  %n.1 = phi i32 [ %2, %if.then ], [ %n.0, %land.lhs.true ], [ %n.0, %while.body13 ]
  br label %while.cond11, !llvm.loop !15

for.inc29:                                        ; preds = %while.cond11
  %add26 = add nsw i32 %n.0, 1
  %idxprom27 = sext i32 %j.0 to i64
  %arrayidx28 = getelementptr inbounds [1000 x i32], ptr @D, i64 0, i64 %idxprom27
  store i32 %add26, ptr %arrayidx28, align 4, !tbaa !5
  %dec = add nsw i32 %j.0, -1
  br label %for.cond8, !llvm.loop !16

for.end30:                                        ; preds = %for.cond8
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc41, %for.end30
  %j.1 = phi i32 [ 0, %for.end30 ], [ %inc42, %for.inc41 ]
  %n.2 = phi i32 [ 0, %for.end30 ], [ %n.3, %for.inc41 ]
  %cmp32 = icmp slt i32 %j.1, %i.1
  br i1 %cmp32, label %for.body33, label %for.end43

for.body33:                                       ; preds = %for.cond31
  %idxprom34 = sext i32 %j.1 to i64
  %arrayidx35 = getelementptr inbounds [1000 x i32], ptr @D, i64 0, i64 %idxprom34
  %3 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %cmp36 = icmp sgt i32 %3, %n.2
  br i1 %cmp36, label %if.then37, label %for.inc41

if.then37:                                        ; preds = %for.body33
  br label %for.inc41

for.inc41:                                        ; preds = %for.body33, %if.then37
  %n.3 = phi i32 [ %3, %if.then37 ], [ %n.2, %for.body33 ]
  %inc42 = add nsw i32 %j.1, 1
  br label %for.cond31, !llvm.loop !17

for.end43:                                        ; preds = %for.cond31
  %call44 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %n.2)
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!17 = distinct !{!17, !10, !11}
