; ModuleID = '<stdin>'
source_filename = "/tmp/tmpilz4kik4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %s = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef %s) #5
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %j.0, %1
  br i1 %cmp2, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %s, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %j.0 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %sub = sub nsw i32 %1, 1
  %cmp7 = icmp eq i32 %j.0, %sub
  br i1 %cmp7, label %if.then, label %for.inc13

if.then:                                          ; preds = %for.end
  %idxprom8 = sext i32 %i.0 to i64
  %arrayidx9 = getelementptr inbounds [100 x [100 x i32]], ptr %s, i64 0, i64 %idxprom8
  %idxprom10 = sext i32 %j.0 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %arrayidx9, i64 0, i64 %idxprom10
  %call12 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx11)
  br label %for.inc13

for.inc13:                                        ; preds = %for.end, %if.then
  %inc14 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end15:                                        ; preds = %for.cond
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc36, %for.end15
  %i.1 = phi i32 [ 0, %for.end15 ], [ %inc37, %for.inc36 ]
  %cmp17 = icmp slt i32 %i.1, %0
  br i1 %cmp17, label %for.body18, label %for.end38

for.body18:                                       ; preds = %for.cond16
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc30, %for.body18
  %j.1 = phi i32 [ 0, %for.body18 ], [ %inc31, %for.inc30 ]
  %q.2 = phi i32 [ 0, %for.body18 ], [ %q.3, %for.inc30 ]
  %cmp20 = icmp slt i32 %j.1, %0
  br i1 %cmp20, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond19
  %idxprom22 = sext i32 %i.1 to i64
  %arrayidx23 = getelementptr inbounds [100 x [100 x i32]], ptr %s, i64 0, i64 %idxprom22
  %idxprom24 = sext i32 %j.1 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32], ptr %arrayidx23, i64 0, i64 %idxprom24
  %2 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %cmp26 = icmp eq i32 %2, 0
  br i1 %cmp26, label %if.then27, label %for.inc30

if.then27:                                        ; preds = %for.body21
  %inc28 = add nsw i32 %q.2, 1
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21, %if.then27
  %q.3 = phi i32 [ %inc28, %if.then27 ], [ %q.2, %for.body21 ]
  %inc31 = add nsw i32 %j.1, 1
  br label %for.cond19, !llvm.loop !13

for.end32:                                        ; preds = %for.cond19
  %cmp33 = icmp ne i32 %q.2, 0
  br i1 %cmp33, label %for.end38, label %for.inc36

for.inc36:                                        ; preds = %for.end32
  %inc37 = add nsw i32 %i.1, 1
  br label %for.cond16, !llvm.loop !14

for.end38:                                        ; preds = %for.end32, %for.cond16
  %q.1 = phi i32 [ 0, %for.cond16 ], [ %q.2, %for.end32 ]
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc59, %for.end38
  %a.0 = phi i32 [ 0, %for.end38 ], [ %inc60, %for.inc59 ]
  %cmp40 = icmp slt i32 %a.0, %0
  br i1 %cmp40, label %for.body41, label %for.end61

for.body41:                                       ; preds = %for.cond39
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc53, %for.body41
  %b.0 = phi i32 [ 0, %for.body41 ], [ %inc54, %for.inc53 ]
  %m.2 = phi i32 [ 0, %for.body41 ], [ %m.3, %for.inc53 ]
  %cmp43 = icmp slt i32 %b.0, %0
  br i1 %cmp43, label %for.body44, label %for.end55

for.body44:                                       ; preds = %for.cond42
  %idxprom45 = sext i32 %b.0 to i64
  %arrayidx46 = getelementptr inbounds [100 x [100 x i32]], ptr %s, i64 0, i64 %idxprom45
  %idxprom47 = sext i32 %a.0 to i64
  %arrayidx48 = getelementptr inbounds [100 x i32], ptr %arrayidx46, i64 0, i64 %idxprom47
  %3 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %cmp49 = icmp eq i32 %3, 0
  br i1 %cmp49, label %if.then50, label %for.inc53

if.then50:                                        ; preds = %for.body44
  %inc51 = add nsw i32 %m.2, 1
  br label %for.inc53

for.inc53:                                        ; preds = %for.body44, %if.then50
  %m.3 = phi i32 [ %inc51, %if.then50 ], [ %m.2, %for.body44 ]
  %inc54 = add nsw i32 %b.0, 1
  br label %for.cond42, !llvm.loop !15

for.end55:                                        ; preds = %for.cond42
  %cmp56 = icmp ne i32 %m.2, 0
  br i1 %cmp56, label %for.end61, label %for.inc59

for.inc59:                                        ; preds = %for.end55
  %inc60 = add nsw i32 %a.0, 1
  br label %for.cond39, !llvm.loop !16

for.end61:                                        ; preds = %for.end55, %for.cond39
  %m.1 = phi i32 [ 0, %for.cond39 ], [ %m.2, %for.end55 ]
  %sub62 = sub nsw i32 %q.1, 2
  %sub63 = sub nsw i32 %m.1, 2
  %mul = mul nsw i32 %sub62, %sub63
  %call64 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %mul) #5
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
!16 = distinct !{!16, !10, !11}
