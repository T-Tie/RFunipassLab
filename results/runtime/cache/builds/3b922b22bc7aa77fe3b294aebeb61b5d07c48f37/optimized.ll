; ModuleID = '<stdin>'
source_filename = "/tmp/tmpdsr6xxdx.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [20000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 80000, ptr %a) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc18, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %add, %for.inc18 ]
  %cmp3 = icmp slt i32 %i.1, %0
  br i1 %cmp3, label %for.body4, label %for.end20

for.body4:                                        ; preds = %for.cond2
  %add = add nsw i32 %i.1, 1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc15, %for.body4
  %j.0 = phi i32 [ %add, %for.body4 ], [ %inc16, %for.inc15 ]
  %cmp6 = icmp slt i32 %j.0, %0
  br i1 %cmp6, label %for.body7, label %for.inc18

for.body7:                                        ; preds = %for.cond5
  %idxprom8 = sext i32 %j.0 to i64
  %arrayidx9 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom8
  %1 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %idxprom10 = sext i32 %i.1 to i64
  %arrayidx11 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom10
  %2 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %1, %2
  br i1 %cmp12, label %if.then, label %for.inc15

if.then:                                          ; preds = %for.body7
  store i32 0, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.inc15

for.inc15:                                        ; preds = %for.body7, %if.then
  %inc16 = add nsw i32 %j.0, 1
  br label %for.cond5, !llvm.loop !12

for.inc18:                                        ; preds = %for.cond5
  br label %for.cond2, !llvm.loop !13

for.end20:                                        ; preds = %for.cond2
  %sub = sub nsw i32 %0, 1
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc26, %for.end20
  %j.1 = phi i32 [ %sub, %for.end20 ], [ %dec, %for.inc26 ]
  %idxprom22 = sext i32 %j.1 to i64
  %arrayidx23 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom22
  %3 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %3, 0
  br i1 %cmp24, label %for.inc26, label %for.end27

for.inc26:                                        ; preds = %for.cond21
  %dec = add nsw i32 %j.1, -1
  br label %for.cond21, !llvm.loop !14

for.end27:                                        ; preds = %for.cond21
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc39, %for.end27
  %i.2 = phi i32 [ 0, %for.end27 ], [ %inc40, %for.inc39 ]
  %cmp29 = icmp slt i32 %i.2, %j.1
  br i1 %cmp29, label %for.body30, label %for.end41

for.body30:                                       ; preds = %for.cond28
  %idxprom31 = sext i32 %i.2 to i64
  %arrayidx32 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom31
  %4 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %cmp33 = icmp ne i32 %4, 0
  br i1 %cmp33, label %if.then34, label %for.inc39

if.then34:                                        ; preds = %for.body30
  %call37 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %4)
  br label %for.inc39

for.inc39:                                        ; preds = %for.body30, %if.then34
  %inc40 = add nsw i32 %i.2, 1
  br label %for.cond28, !llvm.loop !15

for.end41:                                        ; preds = %for.cond28
  %5 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %call44 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %5)
  call void @llvm.lifetime.end.p0(i64 80000, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
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
