; ModuleID = '<stdin>'
source_filename = "/tmp/tmpk7cvy46x.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\0A%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x [100 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %j.0, %1
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %j.0 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc31, %for.end9
  %y1.0 = phi i32 [ 0, %for.end9 ], [ %y1.2, %for.inc31 ]
  %x1.0 = phi i32 [ 0, %for.end9 ], [ %x1.2, %for.inc31 ]
  %i.1 = phi i32 [ 0, %for.end9 ], [ %inc32, %for.inc31 ]
  %cmp11 = icmp slt i32 %i.1, %0
  br i1 %cmp11, label %for.body12, label %for.end33

for.body12:                                       ; preds = %for.cond10
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc21, %for.body12
  %j.1 = phi i32 [ 0, %for.body12 ], [ %inc22, %for.inc21 ]
  %cmp14 = icmp slt i32 %j.1, %0
  br i1 %cmp14, label %for.body15, label %for.end23

for.body15:                                       ; preds = %for.cond13
  %idxprom16 = sext i32 %i.1 to i64
  %arrayidx17 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom16
  %idxprom18 = sext i32 %j.1 to i64
  %arrayidx19 = getelementptr inbounds [100 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %2 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %2, 0
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %for.body15
  br label %for.end23

if.else:                                          ; preds = %for.body15
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %for.inc21

for.inc21:                                        ; preds = %if.end
  %inc22 = add nsw i32 %j.1, 1
  br label %for.cond13, !llvm.loop !13

for.end23:                                        ; preds = %if.then, %for.cond13
  %y1.2 = phi i32 [ %j.1, %if.then ], [ %y1.0, %for.cond13 ]
  %x1.2 = phi i32 [ %i.1, %if.then ], [ %x1.0, %for.cond13 ]
  %idxprom24 = sext i32 %x1.2 to i64
  %arrayidx25 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom24
  %idxprom26 = sext i32 %y1.2 to i64
  %arrayidx27 = getelementptr inbounds [100 x i32], ptr %arrayidx25, i64 0, i64 %idxprom26
  %3 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %3, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.end23
  br label %for.end33

if.end30:                                         ; preds = %for.end23
  br label %for.inc31

for.inc31:                                        ; preds = %if.end30
  %inc32 = add nsw i32 %i.1, 1
  br label %for.cond10, !llvm.loop !14

for.end33:                                        ; preds = %if.then29, %for.cond10
  %y1.1 = phi i32 [ %y1.2, %if.then29 ], [ %y1.0, %for.cond10 ]
  %x1.1 = phi i32 [ %x1.2, %if.then29 ], [ %x1.0, %for.cond10 ]
  %sub = sub nsw i32 %0, 1
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc59, %for.end33
  %x2.0 = phi i32 [ 0, %for.end33 ], [ %x2.2, %for.inc59 ]
  %i.2 = phi i32 [ %sub, %for.end33 ], [ %dec60, %for.inc59 ]
  %y2.0 = phi i32 [ 0, %for.end33 ], [ %y2.2, %for.inc59 ]
  %cmp35 = icmp sge i32 %i.2, 0
  br i1 %cmp35, label %for.body36, label %for.end61

for.body36:                                       ; preds = %for.cond34
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc49, %for.body36
  %j.2 = phi i32 [ %sub, %for.body36 ], [ %dec, %for.inc49 ]
  %cmp39 = icmp sge i32 %j.2, 0
  br i1 %cmp39, label %for.body40, label %for.end50

for.body40:                                       ; preds = %for.cond38
  %idxprom41 = sext i32 %i.2 to i64
  %arrayidx42 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom41
  %idxprom43 = sext i32 %j.2 to i64
  %arrayidx44 = getelementptr inbounds [100 x i32], ptr %arrayidx42, i64 0, i64 %idxprom43
  %4 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %cmp45 = icmp eq i32 %4, 0
  br i1 %cmp45, label %if.then46, label %if.else47

if.then46:                                        ; preds = %for.body40
  br label %for.end50

if.else47:                                        ; preds = %for.body40
  br label %if.end48

if.end48:                                         ; preds = %if.else47
  br label %for.inc49

for.inc49:                                        ; preds = %if.end48
  %dec = add nsw i32 %j.2, -1
  br label %for.cond38, !llvm.loop !15

for.end50:                                        ; preds = %if.then46, %for.cond38
  %x2.2 = phi i32 [ %i.2, %if.then46 ], [ %x2.0, %for.cond38 ]
  %y2.2 = phi i32 [ %j.2, %if.then46 ], [ %y2.0, %for.cond38 ]
  %idxprom51 = sext i32 %i.2 to i64
  %arrayidx52 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom51
  %idxprom53 = sext i32 %j.2 to i64
  %arrayidx54 = getelementptr inbounds [100 x i32], ptr %arrayidx52, i64 0, i64 %idxprom53
  %5 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %cmp55 = icmp eq i32 %5, 0
  br i1 %cmp55, label %if.then56, label %if.else57

if.then56:                                        ; preds = %for.end50
  br label %for.end61

if.else57:                                        ; preds = %for.end50
  br label %if.end58

if.end58:                                         ; preds = %if.else57
  br label %for.inc59

for.inc59:                                        ; preds = %if.end58
  %dec60 = add nsw i32 %i.2, -1
  br label %for.cond34, !llvm.loop !16

for.end61:                                        ; preds = %if.then56, %for.cond34
  %x2.1 = phi i32 [ %x2.2, %if.then56 ], [ %x2.0, %for.cond34 ]
  %y2.1 = phi i32 [ %y2.2, %if.then56 ], [ %y2.0, %for.cond34 ]
  %sub62 = sub nsw i32 %y2.1, %y1.1
  %add = add nsw i32 %sub62, 1
  %sub63 = sub nsw i32 %add, 2
  %sub64 = sub nsw i32 %x2.1, %x1.1
  %add65 = add nsw i32 %sub64, 1
  %sub66 = sub nsw i32 %add65, 2
  %mul = mul nsw i32 %sub63, %sub66
  %call67 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #3
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
!16 = distinct !{!16, !10, !11}
