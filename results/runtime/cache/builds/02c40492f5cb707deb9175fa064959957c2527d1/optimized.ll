; ModuleID = '<stdin>'
source_filename = "/tmp/tmpm5uqzu7l.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [500 x i32], align 16
  %b = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef align 16 %b) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc13, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc14, %for.inc13 ]
  %m.0 = phi i32 [ 0, %for.end ], [ %m.1, %for.inc13 ]
  %cmp3 = icmp slt i32 %i.1, %0
  br i1 %cmp3, label %for.body4, label %for.end15

for.body4:                                        ; preds = %for.cond2
  %idxprom5 = sext i32 %i.1 to i64
  %arrayidx6 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom5
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %rem = srem i32 %1, 2
  %cmp7 = icmp eq i32 %rem, 1
  br i1 %cmp7, label %if.then, label %for.inc13

if.then:                                          ; preds = %for.body4
  %idxprom10 = sext i32 %m.0 to i64
  %arrayidx11 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom10
  store i32 %1, ptr %arrayidx11, align 4, !tbaa !5
  %inc12 = add nsw i32 %m.0, 1
  br label %for.inc13

for.inc13:                                        ; preds = %for.body4, %if.then
  %m.1 = phi i32 [ %inc12, %if.then ], [ %m.0, %for.body4 ]
  %inc14 = add nsw i32 %i.1, 1
  br label %for.cond2, !llvm.loop !12

for.end15:                                        ; preds = %for.cond2
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc44, %for.end15
  %j.0 = phi i32 [ 0, %for.end15 ], [ %inc45, %for.inc44 ]
  %sub = sub nsw i32 %m.0, 1
  %cmp17 = icmp slt i32 %j.0, %sub
  br i1 %cmp17, label %for.body18, label %for.end46

for.body18:                                       ; preds = %for.cond16
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc41, %for.body18
  %i.2 = phi i32 [ 0, %for.body18 ], [ %add, %for.inc41 ]
  %sub20 = sub nsw i32 %m.0, %j.0
  %sub21 = sub nsw i32 %sub20, 1
  %cmp22 = icmp slt i32 %i.2, %sub21
  br i1 %cmp22, label %for.body23, label %for.inc44

for.body23:                                       ; preds = %for.cond19
  %idxprom24 = sext i32 %i.2 to i64
  %arrayidx25 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom24
  %2 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %add = add nsw i32 %i.2, 1
  %idxprom26 = sext i32 %add to i64
  %arrayidx27 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom26
  %3 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %cmp28 = icmp sgt i32 %2, %3
  br i1 %cmp28, label %if.then29, label %for.inc41

if.then29:                                        ; preds = %for.body23
  store i32 %3, ptr %arrayidx25, align 4, !tbaa !5
  store i32 %2, ptr %arrayidx27, align 4, !tbaa !5
  br label %for.inc41

for.inc41:                                        ; preds = %for.body23, %if.then29
  br label %for.cond19, !llvm.loop !13

for.inc44:                                        ; preds = %for.cond19
  %inc45 = add nsw i32 %j.0, 1
  br label %for.cond16, !llvm.loop !14

for.end46:                                        ; preds = %for.cond16
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc58, %for.end46
  %i.3 = phi i32 [ 0, %for.end46 ], [ %inc59, %for.inc58 ]
  %cmp48 = icmp slt i32 %i.3, %m.0
  br i1 %cmp48, label %for.body49, label %for.end60

for.body49:                                       ; preds = %for.cond47
  %idxprom50 = sext i32 %i.3 to i64
  %arrayidx51 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom50
  %4 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %call52 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4) #5
  %cmp54 = icmp ne i32 %i.3, %sub
  br i1 %cmp54, label %if.then55, label %for.inc58

if.then55:                                        ; preds = %for.body49
  %call56 = call i32 (ptr, ...) @printf(ptr noundef @.str.1) #5
  br label %for.inc58

for.inc58:                                        ; preds = %for.body49, %if.then55
  %inc59 = add nsw i32 %i.3, 1
  br label %for.cond47, !llvm.loop !15

for.end60:                                        ; preds = %for.cond47
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef %a) #5
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
attributes #4 = { nofree nounwind willreturn }
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
