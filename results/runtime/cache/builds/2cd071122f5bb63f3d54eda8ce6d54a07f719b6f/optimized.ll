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
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
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
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %j.0 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
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
  %2 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !13
  %cmp20 = icmp eq i32 %2, 0
  br i1 %cmp20, label %for.end23, label %for.inc21

for.inc21:                                        ; preds = %for.body15
  %inc22 = add nsw i32 %j.1, 1
  br label %for.cond13, !llvm.loop !14

for.end23:                                        ; preds = %for.body15, %for.cond13
  %y1.2 = phi i32 [ %y1.0, %for.cond13 ], [ %j.1, %for.body15 ]
  %x1.2 = phi i32 [ %x1.0, %for.cond13 ], [ %i.1, %for.body15 ]
  %idxprom24 = sext i32 %x1.2 to i64
  %arrayidx25 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom24
  %idxprom26 = sext i32 %y1.2 to i64
  %arrayidx27 = getelementptr inbounds [100 x i32], ptr %arrayidx25, i64 0, i64 %idxprom26
  %3 = load i32, ptr %arrayidx27, align 4, !tbaa !5, !invariant.load !13
  %cmp28 = icmp eq i32 %3, 0
  br i1 %cmp28, label %for.end33, label %for.inc31

for.inc31:                                        ; preds = %for.end23
  %inc32 = add nsw i32 %i.1, 1
  br label %for.cond10, !llvm.loop !15

for.end33:                                        ; preds = %for.end23, %for.cond10
  %y1.1 = phi i32 [ %y1.0, %for.cond10 ], [ %y1.2, %for.end23 ]
  %x1.1 = phi i32 [ %x1.0, %for.cond10 ], [ %x1.2, %for.end23 ]
  %sub = sub nsw i32 %0, 1
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc59, %for.end33
  %i.2 = phi i32 [ %sub, %for.end33 ], [ %dec60, %for.inc59 ]
  %cmp35 = icmp sge i32 %i.2, 0
  br i1 %cmp35, label %for.body36, label %for.end61

for.body36:                                       ; preds = %for.cond34
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc49, %for.body36
  %j.2 = phi i32 [ %sub, %for.body36 ], [ %dec, %for.inc49 ]
  %cmp39 = icmp sge i32 %j.2, 0
  %idxprom51 = sext i32 %i.2 to i64
  %idxprom53 = sext i32 %j.2 to i64
  %4 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom51
  %5 = getelementptr inbounds [100 x i32], ptr %4, i64 0, i64 %idxprom53
  %6 = load i32, ptr %5, align 4, !tbaa !5, !invariant.load !13
  %cmp55 = icmp eq i32 %6, 0
  br i1 %cmp39, label %for.body40, label %for.end50

for.body40:                                       ; preds = %for.cond38
  br i1 %cmp55, label %for.end61, label %for.inc49

for.inc49:                                        ; preds = %for.body40
  %dec = add nsw i32 %j.2, -1
  br label %for.cond38, !llvm.loop !16

for.end50:                                        ; preds = %for.cond38
  br i1 %cmp55, label %for.end61, label %for.inc59

for.inc59:                                        ; preds = %for.end50
  %dec60 = add nsw i32 %i.2, -1
  br label %for.cond34, !llvm.loop !17

for.end61:                                        ; preds = %for.body40, %for.end50, %for.cond34
  %x2.1 = phi i32 [ 0, %for.cond34 ], [ 0, %for.end50 ], [ %i.2, %for.body40 ]
  %y2.1 = phi i32 [ 0, %for.cond34 ], [ 0, %for.end50 ], [ %j.2, %for.body40 ]
  %sub62 = sub nsw i32 %y2.1, %y1.1
  %add = add nsw i32 %sub62, 1
  %sub63 = sub nsw i32 %add, 2
  %sub64 = sub nsw i32 %x2.1, %x1.1
  %add65 = add nsw i32 %sub64, 1
  %sub66 = sub nsw i32 %add65, 2
  %mul = mul nsw i32 %sub63, %sub66
  %call67 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
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
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
