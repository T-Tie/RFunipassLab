; ModuleID = '<stdin>'
source_filename = "/tmp/tmpscm1sz_a.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %a = alloca [101 x [101 x i32]], align 16
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %b = alloca [101 x [101 x i32]], align 16
  %c = alloca [101 x [101 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y1) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %x1, ptr noundef align 4 %y1)
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef %a) #6
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %sub = sub nsw i32 %0, 1
  %cmp = icmp sle i32 %i.0, %sub
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %1 = load i32, ptr %y1, align 4, !tbaa !5
  %sub2 = sub nsw i32 %1, 1
  %cmp3 = icmp sle i32 %j.0, %sub2
  br i1 %cmp3, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom5 = sext i32 %j.0 to i64
  %arrayidx6 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx6)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond1
  %inc9 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %x2) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %y2) #6
  %call11 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %x2, ptr noundef %y2)
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef %b) #6
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc28, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc29, %for.inc28 ]
  %2 = load i32, ptr %x2, align 4, !tbaa !5
  %sub13 = sub nsw i32 %2, 1
  %cmp14 = icmp sle i32 %i.1, %sub13
  br i1 %cmp14, label %for.body15, label %for.end30

for.body15:                                       ; preds = %for.cond12
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc25, %for.body15
  %j.1 = phi i32 [ 0, %for.body15 ], [ %inc26, %for.inc25 ]
  %3 = load i32, ptr %y2, align 4, !tbaa !5
  %sub17 = sub nsw i32 %3, 1
  %cmp18 = icmp sle i32 %j.1, %sub17
  br i1 %cmp18, label %for.inc25, label %for.inc28

for.inc25:                                        ; preds = %for.cond16
  %idxprom20 = sext i32 %i.1 to i64
  %arrayidx21 = getelementptr inbounds [101 x [101 x i32]], ptr %b, i64 0, i64 %idxprom20
  %idxprom22 = sext i32 %j.1 to i64
  %arrayidx23 = getelementptr inbounds [101 x i32], ptr %arrayidx21, i64 0, i64 %idxprom22
  %call24 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx23)
  %inc26 = add nsw i32 %j.1, 1
  br label %for.cond16, !llvm.loop !13

for.inc28:                                        ; preds = %for.cond16
  %inc29 = add nsw i32 %i.1, 1
  br label %for.cond12, !llvm.loop !14

for.end30:                                        ; preds = %for.cond12
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef %c) #6
  %4 = load i32, ptr %x1, align 4, !tbaa !5
  %5 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc60, %for.end30
  %i.2 = phi i32 [ 0, %for.end30 ], [ %inc61, %for.inc60 ]
  %sub32 = sub nsw i32 %4, 1
  %cmp33 = icmp sle i32 %i.2, %sub32
  br i1 %cmp33, label %for.body34, label %for.end62

for.body34:                                       ; preds = %for.cond31
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc57, %for.body34
  %j.2 = phi i32 [ 0, %for.body34 ], [ %inc58, %for.inc57 ]
  %sub36 = sub nsw i32 %5, 1
  %cmp37 = icmp sle i32 %j.2, %sub36
  br i1 %cmp37, label %for.body38, label %for.inc60

for.body38:                                       ; preds = %for.cond35
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc50, %for.body38
  %he.0 = phi i32 [ 0, %for.body38 ], [ %add, %for.inc50 ]
  %k.0 = phi i32 [ 0, %for.body38 ], [ %inc51, %for.inc50 ]
  %cmp40 = icmp sle i32 %k.0, %2
  br i1 %cmp40, label %for.inc50, label %for.inc57

for.inc50:                                        ; preds = %for.cond39
  %idxprom42 = sext i32 %i.2 to i64
  %arrayidx43 = getelementptr inbounds [101 x [101 x i32]], ptr %a, i64 0, i64 %idxprom42
  %idxprom44 = sext i32 %k.0 to i64
  %arrayidx45 = getelementptr inbounds [101 x i32], ptr %arrayidx43, i64 0, i64 %idxprom44
  %6 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %arrayidx47 = getelementptr inbounds [101 x [101 x i32]], ptr %b, i64 0, i64 %idxprom44
  %idxprom48 = sext i32 %j.2 to i64
  %arrayidx49 = getelementptr inbounds [101 x i32], ptr %arrayidx47, i64 0, i64 %idxprom48
  %7 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %mul = mul nsw i32 %6, %7
  %add = add nsw i32 %he.0, %mul
  %inc51 = add nsw i32 %k.0, 1
  br label %for.cond39, !llvm.loop !15

for.inc57:                                        ; preds = %for.cond39
  %idxprom53 = sext i32 %i.2 to i64
  %arrayidx54 = getelementptr inbounds [101 x [101 x i32]], ptr %c, i64 0, i64 %idxprom53
  %idxprom55 = sext i32 %j.2 to i64
  %arrayidx56 = getelementptr inbounds [101 x i32], ptr %arrayidx54, i64 0, i64 %idxprom55
  store i32 %he.0, ptr %arrayidx56, align 4, !tbaa !5
  %inc58 = add nsw i32 %j.2, 1
  br label %for.cond35, !llvm.loop !16

for.inc60:                                        ; preds = %for.cond35
  %inc61 = add nsw i32 %i.2, 1
  br label %for.cond31, !llvm.loop !17

for.end62:                                        ; preds = %for.cond31
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc86, %for.end62
  %i.3 = phi i32 [ 0, %for.end62 ], [ %inc87, %for.inc86 ]
  %8 = load i32, ptr %x1, align 4, !tbaa !5
  %sub64 = sub nsw i32 %8, 1
  %cmp65 = icmp sle i32 %i.3, %sub64
  br i1 %cmp65, label %for.body66, label %for.end88

for.body66:                                       ; preds = %for.cond63
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc82, %for.body66
  %j.3 = phi i32 [ 0, %for.body66 ], [ %inc83, %for.inc82 ]
  %9 = load i32, ptr %y2, align 4, !tbaa !5
  %sub68 = sub nsw i32 %9, 1
  %cmp69 = icmp sle i32 %j.3, %sub68
  br i1 %cmp69, label %for.body70, label %for.inc86

for.body70:                                       ; preds = %for.cond67
  %cmp71 = icmp eq i32 %j.3, 0
  br i1 %cmp71, label %for.inc82, label %if.else

if.else:                                          ; preds = %for.body70
  br label %for.inc82

for.inc82:                                        ; preds = %for.body70, %if.else
  %.str.2.sink = phi ptr [ @.str.2, %if.else ], [ @.str.1, %for.body70 ]
  %idxprom77 = sext i32 %i.3 to i64
  %arrayidx78 = getelementptr inbounds [101 x [101 x i32]], ptr %c, i64 0, i64 %idxprom77
  %idxprom79 = sext i32 %j.3 to i64
  %arrayidx80 = getelementptr inbounds [101 x i32], ptr %arrayidx78, i64 0, i64 %idxprom79
  %10 = load i32, ptr %arrayidx80, align 4, !tbaa !5
  %call81 = call i32 (ptr, ...) @printf(ptr noundef %.str.2.sink, i32 noundef %10)
  %inc83 = add nsw i32 %j.3, 1
  br label %for.cond67, !llvm.loop !18

for.inc86:                                        ; preds = %for.cond67
  %call85 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %inc87 = add nsw i32 %i.3, 1
  br label %for.cond63, !llvm.loop !19

for.end88:                                        ; preds = %for.cond63
  %call89 = call i32 @getchar()
  %call90 = call i32 @getchar()
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef %c) #6
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %y2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %y1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x1) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree nounwind uwtable
declare noundef i32 @getchar() local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn }
attributes #6 = { nounwind }

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
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
