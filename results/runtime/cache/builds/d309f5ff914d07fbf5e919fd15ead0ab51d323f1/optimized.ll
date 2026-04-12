; ModuleID = '<stdin>'
source_filename = "/tmp/tmpa5kf_ul5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %sz = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %sz) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %row.0, %0
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %col.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %col.0, %1
  br i1 %cmp2, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %row.0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %sz, i64 0, i64 %idxprom
  %idxprom5 = sext i32 %col.0 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx6)
  %inc = add nsw i32 %col.0, 1
  br label %for.cond1, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond1
  %inc9 = add nsw i32 %row.0, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end10
  %a.0 = phi i32 [ 0, %for.end10 ], [ %inc28, %for.inc27 ]
  %s.0 = phi i32 [ undef, %for.end10 ], [ %s.1, %for.inc27 ]
  %r.0 = phi i32 [ undef, %for.end10 ], [ %r.1, %for.inc27 ]
  %cmp12 = icmp slt i32 %a.0, %0
  br i1 %cmp12, label %for.body14, label %for.end30

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc24, %for.body14
  %b.0 = phi i32 [ 0, %for.body14 ], [ %inc25, %for.inc24 ]
  %cmp16 = icmp slt i32 %b.0, %0
  br i1 %cmp16, label %for.body18, label %for.inc27

for.body18:                                       ; preds = %for.cond15
  %idxprom19 = sext i32 %a.0 to i64
  %arrayidx20 = getelementptr inbounds [100 x [100 x i32]], ptr %sz, i64 0, i64 %idxprom19
  %idxprom21 = sext i32 %b.0 to i64
  %arrayidx22 = getelementptr inbounds [100 x i32], ptr %arrayidx20, i64 0, i64 %idxprom21
  %2 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %2, 0
  br i1 %cmp23, label %for.inc27, label %for.inc24

for.inc24:                                        ; preds = %for.body18
  %inc25 = add nsw i32 %b.0, 1
  br label %for.cond15, !llvm.loop !13

for.inc27:                                        ; preds = %for.body18, %for.cond15
  %s.1 = phi i32 [ %s.0, %for.cond15 ], [ %b.0, %for.body18 ]
  %r.1 = phi i32 [ %r.0, %for.cond15 ], [ %a.0, %for.body18 ]
  %inc28 = add nsw i32 %a.0, 1
  br label %for.cond11, !llvm.loop !14

for.end30:                                        ; preds = %for.cond11
  %sub = sub nsw i32 %0, 1
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc50, %for.end30
  %q.0 = phi i32 [ undef, %for.end30 ], [ %q.1, %for.inc50 ]
  %p.0 = phi i32 [ undef, %for.end30 ], [ %p.1, %for.inc50 ]
  %sub.sink = phi i32 [ %sub, %for.end30 ], [ %dec51, %for.inc50 ]
  %cmp32 = icmp sge i32 %sub.sink, 0
  br i1 %cmp32, label %for.body34, label %for.end53

for.body34:                                       ; preds = %for.cond31
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc47, %for.body34
  %sub35.sink = phi i32 [ %sub, %for.body34 ], [ %dec, %for.inc47 ]
  %cmp37 = icmp sge i32 %sub35.sink, 0
  br i1 %cmp37, label %for.body39, label %for.inc50

for.body39:                                       ; preds = %for.cond36
  %idxprom40 = sext i32 %sub.sink to i64
  %arrayidx41 = getelementptr inbounds [100 x [100 x i32]], ptr %sz, i64 0, i64 %idxprom40
  %idxprom42 = sext i32 %sub35.sink to i64
  %arrayidx43 = getelementptr inbounds [100 x i32], ptr %arrayidx41, i64 0, i64 %idxprom42
  %3 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %3, 0
  br i1 %cmp44, label %for.inc50, label %for.inc47

for.inc47:                                        ; preds = %for.body39
  %dec = add nsw i32 %sub35.sink, -1
  br label %for.cond36, !llvm.loop !15

for.inc50:                                        ; preds = %for.body39, %for.cond36
  %q.1 = phi i32 [ %q.0, %for.cond36 ], [ %sub35.sink, %for.body39 ]
  %p.1 = phi i32 [ %p.0, %for.cond36 ], [ %sub.sink, %for.body39 ]
  %dec51 = add nsw i32 %sub.sink, -1
  br label %for.cond31, !llvm.loop !16

for.end53:                                        ; preds = %for.cond31
  %p.0.neg = sub i32 0, %p.0
  %sub54 = add i32 %r.0, -1
  %sub55 = add i32 %sub54, %p.0.neg
  %s.0.neg = sub i32 0, %s.0
  %sub56 = add i32 %s.0.neg, -1
  %sub57 = add i32 %sub56, %q.0
  %mul = mul nsw i32 %sub55, %sub57
  %call58 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %mul) #5
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %sz) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

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
