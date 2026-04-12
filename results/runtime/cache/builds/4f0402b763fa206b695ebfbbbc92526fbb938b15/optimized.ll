; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxrqcu137.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@zl = dso_local global [1000 x [1000 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ]
  %j.0 = phi i32 [ undef, %entry ], [ %j.1, %for.inc7 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.1 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %j.1, %1
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [1000 x [1000 x i32]], ptr @zl, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %j.1 to i64
  %arrayidx5 = getelementptr inbounds [1000 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  %inc = add nsw i32 %j.1, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %inc8 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc32, %for.end9
  %i.1 = phi i32 [ 0, %for.end9 ], [ %inc33, %for.inc32 ]
  %j.2 = phi i32 [ %j.0, %for.end9 ], [ %j.4, %for.inc32 ]
  %sub = sub nsw i32 %0, 1
  %cmp11 = icmp slt i32 %i.1, %sub
  br i1 %cmp11, label %for.body12, label %for.end34

for.body12:                                       ; preds = %for.cond10
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc22, %for.body12
  %j.4 = phi i32 [ 0, %for.body12 ], [ %inc23, %for.inc22 ]
  %cmp15 = icmp slt i32 %j.4, %sub
  %idxprom25 = sext i32 %i.1 to i64
  %idxprom27 = sext i32 %j.4 to i64
  %2 = getelementptr inbounds [1000 x [1000 x i32]], ptr @zl, i64 0, i64 %idxprom25
  %3 = getelementptr inbounds [1000 x i32], ptr %2, i64 0, i64 %idxprom27
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %4, 0
  br i1 %cmp15, label %for.body16, label %for.end24

for.body16:                                       ; preds = %for.cond13
  br i1 %cmp29, label %for.end34, label %for.inc22

for.inc22:                                        ; preds = %for.body16
  %inc23 = add nsw i32 %j.4, 1
  br label %for.cond13, !llvm.loop !13

for.end24:                                        ; preds = %for.cond13
  br i1 %cmp29, label %for.end34, label %for.inc32

for.inc32:                                        ; preds = %for.end24
  %inc33 = add nsw i32 %i.1, 1
  br label %for.cond10, !llvm.loop !14

for.end34:                                        ; preds = %for.body16, %for.end24, %for.cond10
  %j.3 = phi i32 [ %j.2, %for.cond10 ], [ %j.4, %for.end24 ], [ %j.4, %for.body16 ]
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc59, %for.end34
  %i.2 = phi i32 [ %sub, %for.end34 ], [ %dec60, %for.inc59 ]
  %j.5 = phi i32 [ %j.3, %for.end34 ], [ %j.7, %for.inc59 ]
  %cmp37 = icmp sgt i32 %i.2, 0
  br i1 %cmp37, label %for.body38, label %for.end61

for.body38:                                       ; preds = %for.cond36
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc50, %for.body38
  %j.7 = phi i32 [ %sub, %for.body38 ], [ %dec, %for.inc50 ]
  %cmp41 = icmp sgt i32 %j.7, 0
  %idxprom52 = sext i32 %i.2 to i64
  %idxprom54 = sext i32 %j.7 to i64
  %5 = getelementptr inbounds [1000 x [1000 x i32]], ptr @zl, i64 0, i64 %idxprom52
  %6 = getelementptr inbounds [1000 x i32], ptr %5, i64 0, i64 %idxprom54
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %cmp56 = icmp eq i32 %7, 0
  br i1 %cmp41, label %for.body42, label %for.end51

for.body42:                                       ; preds = %for.cond40
  br i1 %cmp56, label %for.end61, label %for.inc50

for.inc50:                                        ; preds = %for.body42
  %dec = add nsw i32 %j.7, -1
  br label %for.cond40, !llvm.loop !15

for.end51:                                        ; preds = %for.cond40
  br i1 %cmp56, label %for.end61, label %for.inc59

for.inc59:                                        ; preds = %for.end51
  %dec60 = add nsw i32 %i.2, -1
  br label %for.cond36, !llvm.loop !16

for.end61:                                        ; preds = %for.body42, %for.end51, %for.cond36
  %j.6 = phi i32 [ %j.5, %for.cond36 ], [ %j.7, %for.end51 ], [ %j.7, %for.body42 ]
  %.neg = sub i32 0, %i.1
  %sub62 = add i32 %.neg, -1
  %sub63 = add i32 %sub62, %i.2
  %.neg1 = sub i32 0, %j.3
  %sub64 = add i32 %.neg1, -1
  %sub65 = add i32 %sub64, %j.6
  %mul = mul nsw i32 %sub65, %sub63
  %call66 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
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
!16 = distinct !{!16, !10, !11}
