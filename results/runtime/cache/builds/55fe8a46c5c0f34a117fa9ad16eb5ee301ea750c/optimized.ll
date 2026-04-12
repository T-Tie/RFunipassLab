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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %sz) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = phi i32 [ %2, %for.inc8 ], [ %.pre, %entry ]
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.inc8 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv18, %1
  br i1 %cmp, label %for.cond1, label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count29 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond11

for.cond1:                                        ; preds = %for.cond, %for.inc
  %2 = phi i32 [ %.pre31, %for.inc ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %sz, i64 0, i64 %indvars.iv18, i64 %indvars.iv
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre31 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond1
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond, !llvm.loop !12

for.cond11:                                       ; preds = %for.cond11.preheader, %for.inc27
  %indvars.iv25 = phi i64 [ 0, %for.cond11.preheader ], [ %indvars.iv.next26, %for.inc27 ]
  %s.0 = phi i32 [ undef, %for.cond11.preheader ], [ %s.1, %for.inc27 ]
  %r.0 = phi i32 [ undef, %for.cond11.preheader ], [ %r.1, %for.inc27 ]
  %exitcond30.not = icmp eq i64 %indvars.iv25, %wide.trip.count29
  br i1 %exitcond30.not, label %for.end30, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond11
  %4 = trunc nuw nsw i64 %indvars.iv25 to i32
  br label %for.cond15

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc24
  %indvars.iv21 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next22, %for.inc24 ]
  %exitcond.not = icmp eq i64 %indvars.iv21, %wide.trip.count
  br i1 %exitcond.not, label %for.inc27, label %for.body18

for.body18:                                       ; preds = %for.cond15
  %arrayidx22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %sz, i64 0, i64 %indvars.iv25, i64 %indvars.iv21
  %5 = load i32, ptr %arrayidx22, align 4, !tbaa !5, !invariant.load !13
  %cmp23 = icmp eq i32 %5, 0
  br i1 %cmp23, label %for.inc27.split.loop.exit, label %for.inc24

for.inc24:                                        ; preds = %for.body18
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond15, !llvm.loop !14

for.inc27.split.loop.exit:                        ; preds = %for.body18
  %6 = trunc nuw nsw i64 %indvars.iv21 to i32
  br label %for.inc27

for.inc27:                                        ; preds = %for.cond15, %for.inc27.split.loop.exit
  %s.1 = phi i32 [ %6, %for.inc27.split.loop.exit ], [ %s.0, %for.cond15 ]
  %r.1 = phi i32 [ %4, %for.inc27.split.loop.exit ], [ %r.0, %for.cond15 ]
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond11, !llvm.loop !15

for.end30:                                        ; preds = %for.cond11
  %sub = add nsw i32 %0, -1
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc50, %for.end30
  %p.0 = phi i32 [ undef, %for.end30 ], [ %p.1, %for.inc50 ]
  %q.0 = phi i32 [ undef, %for.end30 ], [ %q.1, %for.inc50 ]
  %c.0 = phi i32 [ %sub, %for.end30 ], [ %dec51, %for.inc50 ]
  %cmp32 = icmp sgt i32 %c.0, -1
  br i1 %cmp32, label %for.cond36.preheader, label %for.end53

for.cond36.preheader:                             ; preds = %for.cond31
  %idxprom40 = zext nneg i32 %c.0 to i64
  br label %for.cond36

for.cond36:                                       ; preds = %for.cond36.preheader, %for.inc47
  %d.0 = phi i32 [ %dec, %for.inc47 ], [ %sub, %for.cond36.preheader ]
  %cmp37 = icmp sgt i32 %d.0, -1
  br i1 %cmp37, label %for.body39, label %for.inc50

for.body39:                                       ; preds = %for.cond36
  %idxprom42 = zext nneg i32 %d.0 to i64
  %arrayidx43 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %sz, i64 0, i64 %idxprom40, i64 %idxprom42
  %7 = load i32, ptr %arrayidx43, align 4, !tbaa !5, !invariant.load !13
  %cmp44 = icmp eq i32 %7, 0
  br i1 %cmp44, label %for.inc50, label %for.inc47

for.inc47:                                        ; preds = %for.body39
  %dec = add nsw i32 %d.0, -1
  br label %for.cond36, !llvm.loop !16

for.inc50:                                        ; preds = %for.body39, %for.cond36
  %p.1 = phi i32 [ %p.0, %for.cond36 ], [ %c.0, %for.body39 ]
  %q.1 = phi i32 [ %q.0, %for.cond36 ], [ %d.0, %for.body39 ]
  %dec51 = add nsw i32 %c.0, -1
  br label %for.cond31, !llvm.loop !17

for.end53:                                        ; preds = %for.cond31
  %8 = xor i32 %p.0, -1
  %sub55 = add i32 %r.0, %8
  %9 = xor i32 %s.0, -1
  %sub57 = add i32 %q.0, %9
  %mul = mul nsw i32 %sub57, %sub55
  %call58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %sz) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
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
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
