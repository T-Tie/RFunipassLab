; ModuleID = '<stdin>'
source_filename = "/tmp/tmp5tv0o15x.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %N = alloca i32, align 4
  %k = alloca [50 x [50 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %N) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %N)
  %0 = load i32, ptr %N, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 10000, ptr noundef %k) #4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ]
  %1 = load i32, ptr %N, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, %0
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [50 x [50 x i32]], ptr %k, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %j.0 to i64
  %arrayidx5 = getelementptr inbounds [50 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %inc8 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc25, %for.end9
  %i.1 = phi i32 [ 0, %for.end9 ], [ %inc26, %for.inc25 ]
  %sum.0 = phi i32 [ 0, %for.end9 ], [ %sum.1, %for.inc25 ]
  %cmp11 = icmp slt i32 %i.1, %1
  br i1 %cmp11, label %for.body12, label %for.end27

for.body12:                                       ; preds = %for.cond10
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc22, %for.body12
  %j.1 = phi i32 [ 0, %for.body12 ], [ %inc23, %for.inc22 ]
  %sum.1 = phi i32 [ %sum.0, %for.body12 ], [ %sum.2, %for.inc22 ]
  %cmp14 = icmp slt i32 %j.1, %0
  br i1 %cmp14, label %for.body15, label %for.inc25

for.body15:                                       ; preds = %for.cond13
  %idxprom16 = sext i32 %i.1 to i64
  %arrayidx17 = getelementptr inbounds [50 x [50 x i32]], ptr %k, i64 0, i64 %idxprom16
  %idxprom18 = sext i32 %j.1 to i64
  %arrayidx19 = getelementptr inbounds [50 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %2 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !13
  %cmp20 = icmp eq i32 %2, 0
  br i1 %cmp20, label %if.then, label %for.inc22

if.then:                                          ; preds = %for.body15
  %inc21 = add nsw i32 %sum.1, 1
  br label %for.inc22

for.inc22:                                        ; preds = %for.body15, %if.then
  %sum.2 = phi i32 [ %inc21, %if.then ], [ %sum.1, %for.body15 ]
  %inc23 = add nsw i32 %j.1, 1
  br label %for.cond13, !llvm.loop !14

for.inc25:                                        ; preds = %for.cond13
  %inc26 = add nsw i32 %i.1, 1
  br label %for.cond10, !llvm.loop !15

for.end27:                                        ; preds = %for.cond10
  %div = sdiv i32 %sum.0, 4
  %sub = sub nsw i32 %div, 1
  %mul = mul nsw i32 %sub, %sub
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 10000, ptr noundef %k) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %N) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

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
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
