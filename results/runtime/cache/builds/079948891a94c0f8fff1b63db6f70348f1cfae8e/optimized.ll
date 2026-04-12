; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqor4pcq3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [10000 x i32], align 16
  %w = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %w) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %w)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %w, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [10000 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc11, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %inc12, %for.inc11 ]
  %n.0 = phi i32 [ 0, %for.end ], [ %n.1, %for.inc11 ]
  %cmp3 = icmp slt i32 %k.0, %0
  br i1 %cmp3, label %for.body4, label %for.end13

for.body4:                                        ; preds = %for.cond2
  %idxprom5 = sext i32 %k.0 to i64
  %arrayidx6 = getelementptr inbounds [10000 x i32], ptr %a, i64 0, i64 %idxprom5
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %rem = srem i32 %1, 2
  %cmp7 = icmp ne i32 %rem, 0
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body4
  %inc8 = add nsw i32 %n.0, 1
  br label %for.inc11

if.else:                                          ; preds = %for.body4
  store i32 0, ptr %arrayidx6, align 4, !tbaa !5
  br label %for.inc11

for.inc11:                                        ; preds = %if.then, %if.else
  %n.1 = phi i32 [ %inc8, %if.then ], [ %n.0, %if.else ]
  %inc12 = add nsw i32 %k.0, 1
  br label %for.cond2, !llvm.loop !12

for.end13:                                        ; preds = %for.cond2
  %sub = sub nsw i32 %0, 1
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc40, %for.end13
  %e.0 = phi i32 [ %sub, %for.end13 ], [ %dec, %for.inc40 ]
  %cmp15 = icmp sge i32 %e.0, 0
  br i1 %cmp15, label %for.body16, label %for.end41

for.body16:                                       ; preds = %for.cond14
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc37, %for.body16
  %j.0 = phi i32 [ 0, %for.body16 ], [ %add, %for.inc37 ]
  %cmp18 = icmp slt i32 %j.0, %e.0
  br i1 %cmp18, label %for.body19, label %for.inc40

for.body19:                                       ; preds = %for.cond17
  %idxprom20 = sext i32 %j.0 to i64
  %arrayidx21 = getelementptr inbounds [10000 x i32], ptr %a, i64 0, i64 %idxprom20
  %2 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %add = add nsw i32 %j.0, 1
  %idxprom22 = sext i32 %add to i64
  %arrayidx23 = getelementptr inbounds [10000 x i32], ptr %a, i64 0, i64 %idxprom22
  %3 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %2, %3
  br i1 %cmp24, label %if.then25, label %for.inc37

if.then25:                                        ; preds = %for.body19
  store i32 %2, ptr %arrayidx23, align 4, !tbaa !5
  store i32 %3, ptr %arrayidx21, align 4, !tbaa !5
  br label %for.inc37

for.inc37:                                        ; preds = %for.body19, %if.then25
  br label %for.cond17, !llvm.loop !13

for.inc40:                                        ; preds = %for.cond17
  %dec = add nsw i32 %e.0, -1
  br label %for.cond14, !llvm.loop !14

for.end41:                                        ; preds = %for.cond14
  %sub42 = sub nsw i32 %0, %n.0
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc50, %for.end41
  %t.0 = phi i32 [ %sub42, %for.end41 ], [ %inc51, %for.inc50 ]
  %4 = load i32, ptr %w, align 4, !tbaa !5
  %sub44 = sub nsw i32 %4, 1
  %cmp45 = icmp slt i32 %t.0, %sub44
  br i1 %cmp45, label %for.inc50, label %for.end52

for.inc50:                                        ; preds = %for.cond43
  %idxprom47 = sext i32 %t.0 to i64
  %arrayidx48 = getelementptr inbounds [10000 x i32], ptr %a, i64 0, i64 %idxprom47
  %5 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %call49 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %5)
  %inc51 = add nsw i32 %t.0, 1
  br label %for.cond43, !llvm.loop !15

for.end52:                                        ; preds = %for.cond43
  %idxprom54 = sext i32 %sub44 to i64
  %arrayidx55 = getelementptr inbounds [10000 x i32], ptr %a, i64 0, i64 %idxprom54
  %6 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  %call56 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %6)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %w) #4
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %a) #4
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
