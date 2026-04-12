; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0omj__db.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %sz = alloca [1000 x [7 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 28000, ptr %sz) #3
  br label %for.cond

for.cond:                                         ; preds = %for.inc35, %entry
  %s.0 = phi i32 [ 0, %entry ], [ %inc34, %for.inc35 ]
  %.sink = phi i32 [ 0, %entry ], [ %inc36, %for.inc35 ]
  %cmp = icmp slt i32 %.sink, 1000
  br i1 %cmp, label %for.body, label %for.end37

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %.sink1 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %.sink1, 6
  br i1 %cmp2, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %.sink to i64
  %arrayidx = getelementptr inbounds [1000 x [7 x i32]], ptr %sz, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %.sink1 to i64
  %arrayidx5 = getelementptr inbounds [7 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  %inc = add nsw i32 %.sink1, 1
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  %idxprom6 = sext i32 %.sink to i64
  %arrayidx7 = getelementptr inbounds [1000 x [7 x i32]], ptr %sz, i64 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [7 x i32], ptr %arrayidx7, i64 0, i64 1
  %0 = load i32, ptr %arrayidx8, align 4, !tbaa !8
  %cmp9 = icmp eq i32 %0, 0
  br i1 %cmp9, label %land.lhs.true, label %for.inc35

land.lhs.true:                                    ; preds = %for.end
  %arrayidx12 = getelementptr inbounds [7 x i32], ptr %arrayidx7, i64 0, i64 2
  %1 = load i32, ptr %arrayidx12, align 4, !tbaa !8
  %cmp13 = icmp eq i32 %1, 0
  br i1 %cmp13, label %land.lhs.true14, label %for.inc35

land.lhs.true14:                                  ; preds = %land.lhs.true
  %arrayidx17 = getelementptr inbounds [7 x i32], ptr %arrayidx7, i64 0, i64 3
  %2 = load i32, ptr %arrayidx17, align 4, !tbaa !8
  %cmp18 = icmp eq i32 %2, 0
  br i1 %cmp18, label %land.lhs.true19, label %for.inc35

land.lhs.true19:                                  ; preds = %land.lhs.true14
  %arrayidx22 = getelementptr inbounds [7 x i32], ptr %arrayidx7, i64 0, i64 4
  %3 = load i32, ptr %arrayidx22, align 4, !tbaa !8
  %cmp23 = icmp eq i32 %3, 0
  br i1 %cmp23, label %land.lhs.true24, label %for.inc35

land.lhs.true24:                                  ; preds = %land.lhs.true19
  %arrayidx27 = getelementptr inbounds [7 x i32], ptr %arrayidx7, i64 0, i64 5
  %4 = load i32, ptr %arrayidx27, align 4, !tbaa !8
  %cmp28 = icmp eq i32 %4, 0
  br i1 %cmp28, label %land.lhs.true29, label %for.inc35

land.lhs.true29:                                  ; preds = %land.lhs.true24
  %5 = load i32, ptr %arrayidx7, align 4, !tbaa !8
  %cmp33 = icmp eq i32 %5, 0
  br i1 %cmp33, label %for.end37, label %for.inc35

for.inc35:                                        ; preds = %land.lhs.true29, %land.lhs.true24, %land.lhs.true19, %land.lhs.true14, %land.lhs.true, %for.end
  %inc34 = add nsw i32 %s.0, 1
  %inc36 = add nsw i32 %.sink, 1
  br label %for.cond, !llvm.loop !12

for.end37:                                        ; preds = %land.lhs.true29, %for.cond
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc73, %for.end37
  %i.0 = phi i32 [ 0, %for.end37 ], [ %inc74, %for.inc73 ]
  %cmp39 = icmp slt i32 %i.0, %s.0
  br i1 %cmp39, label %for.body40, label %for.end75

for.body40:                                       ; preds = %for.cond38
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc69, %for.body40
  %q.1 = phi i32 [ 0, %for.body40 ], [ %sub, %for.inc69 ]
  %.sink2 = phi i32 [ 0, %for.body40 ], [ %inc70, %for.inc69 ]
  %cmp42 = icmp slt i32 %.sink2, 6
  br i1 %cmp42, label %for.inc69, label %for.inc73

for.inc69:                                        ; preds = %for.cond41
  %idxprom44 = sext i32 %i.0 to i64
  %arrayidx45 = getelementptr inbounds [1000 x [7 x i32]], ptr %sz, i64 0, i64 %idxprom44
  %6 = load i32, ptr %arrayidx45, align 4, !tbaa !8
  %mul = mul nsw i32 %6, 3600
  %arrayidx49 = getelementptr inbounds [7 x i32], ptr %arrayidx45, i64 0, i64 1
  %7 = load i32, ptr %arrayidx49, align 4, !tbaa !8
  %mul50 = mul nsw i32 %7, 60
  %add = add nsw i32 %mul, %mul50
  %arrayidx53 = getelementptr inbounds [7 x i32], ptr %arrayidx45, i64 0, i64 2
  %8 = load i32, ptr %arrayidx53, align 4, !tbaa !8
  %add54 = add nsw i32 %add, %8
  %arrayidx57 = getelementptr inbounds [7 x i32], ptr %arrayidx45, i64 0, i64 3
  %9 = load i32, ptr %arrayidx57, align 4, !tbaa !8
  %add58 = add nsw i32 %9, 12
  %mul59 = mul nsw i32 %add58, 3600
  %arrayidx62 = getelementptr inbounds [7 x i32], ptr %arrayidx45, i64 0, i64 4
  %10 = load i32, ptr %arrayidx62, align 4, !tbaa !8
  %mul63 = mul nsw i32 %10, 60
  %add64 = add nsw i32 %mul59, %mul63
  %arrayidx67 = getelementptr inbounds [7 x i32], ptr %arrayidx45, i64 0, i64 5
  %11 = load i32, ptr %arrayidx67, align 4, !tbaa !8
  %add68 = add nsw i32 %add64, %11
  %sub = sub nsw i32 %add68, %add54
  %inc70 = add nsw i32 %.sink2, 1
  br label %for.cond41, !llvm.loop !13

for.inc73:                                        ; preds = %for.cond41
  %call72 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %q.1)
  %inc74 = add nsw i32 %i.0, 1
  br label %for.cond38, !llvm.loop !14

for.end75:                                        ; preds = %for.cond38
  call void @llvm.lifetime.end.p0(i64 28000, ptr %sz) #3
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = distinct !{!12, !6, !7}
!13 = distinct !{!13, !6, !7}
!14 = distinct !{!14, !6, !7}
