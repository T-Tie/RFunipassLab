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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %sz) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp19 = icmp sgt i32 %0, 0
  br i1 %cmp19, label %for.cond1.preheader, label %for.cond.cleanup33

for.cond1.preheader:                              ; preds = %entry, %for.cond.cleanup3
  %1 = phi i32 [ %5, %for.cond.cleanup3 ], [ %0, %entry ]
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.cond.cleanup3 ], [ 0, %entry ]
  %cmp217 = icmp sgt i32 %1, 0
  br i1 %cmp217, label %for.body4, label %for.cond1.preheader.for.cond.cleanup3_crit_edge

for.cond1.preheader.for.cond.cleanup3_crit_edge:  ; preds = %for.cond1.preheader
  %.pre = sext i32 %1 to i64
  br label %for.cond.cleanup3

for.cond11.preheader:                             ; preds = %for.cond.cleanup3
  %cmp1227 = icmp sgt i32 %5, 0
  br i1 %cmp1227, label %for.cond15.preheader.us.preheader, label %for.cond.cleanup33

for.cond15.preheader.us.preheader:                ; preds = %for.cond11.preheader
  %wide.trip.count54 = zext nneg i32 %5 to i64
  br label %for.cond15.preheader.us

for.cond15.preheader.us:                          ; preds = %for.cond15.preheader.us.preheader, %cleanup.us
  %indvars.iv51 = phi i64 [ 0, %for.cond15.preheader.us.preheader ], [ %indvars.iv.next52, %cleanup.us ]
  %s.029.us = phi i32 [ undef, %for.cond15.preheader.us.preheader ], [ %s.1.us, %cleanup.us ]
  %r.028.us = phi i32 [ undef, %for.cond15.preheader.us.preheader ], [ %r.1.us, %cleanup.us ]
  %2 = trunc nuw nsw i64 %indvars.iv51 to i32
  br label %for.body18.us

for.body18.us:                                    ; preds = %for.cond15.preheader.us, %for.inc24.us
  %indvars.iv48 = phi i64 [ 0, %for.cond15.preheader.us ], [ %indvars.iv.next49, %for.inc24.us ]
  %arrayidx22.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %sz, i64 0, i64 %indvars.iv51, i64 %indvars.iv48
  %3 = load i32, ptr %arrayidx22.us, align 4, !tbaa !5
  %cmp23.us = icmp eq i32 %3, 0
  br i1 %cmp23.us, label %cleanup.us.split.loop.exit74, label %for.inc24.us

for.inc24.us:                                     ; preds = %for.body18.us
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next49, %wide.trip.count54
  br i1 %exitcond.not, label %cleanup.us, label %for.body18.us, !llvm.loop !9

cleanup.us.split.loop.exit74:                     ; preds = %for.body18.us
  %4 = trunc nuw nsw i64 %indvars.iv48 to i32
  br label %cleanup.us

cleanup.us:                                       ; preds = %for.inc24.us, %cleanup.us.split.loop.exit74
  %r.1.us = phi i32 [ %2, %cleanup.us.split.loop.exit74 ], [ %r.028.us, %for.inc24.us ]
  %s.1.us = phi i32 [ %4, %cleanup.us.split.loop.exit74 ], [ %s.029.us, %for.inc24.us ]
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %for.cond31.preheader, label %for.cond15.preheader.us, !llvm.loop !12

for.cond.cleanup3:                                ; preds = %for.body4, %for.cond1.preheader.for.cond.cleanup3_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond1.preheader.for.cond.cleanup3_crit_edge ], [ %7, %for.body4 ]
  %5 = phi i32 [ %1, %for.cond1.preheader.for.cond.cleanup3_crit_edge ], [ %6, %for.body4 ]
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %cmp = icmp slt i64 %indvars.iv.next46, %.pre-phi
  br i1 %cmp, label %for.cond1.preheader, label %for.cond11.preheader, !llvm.loop !13

for.body4:                                        ; preds = %for.cond1.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond1.preheader ]
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %sz, i64 0, i64 %indvars.iv45, i64 %indvars.iv
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %7
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3, !llvm.loop !15

for.cond31.preheader:                             ; preds = %cleanup.us
  %8 = xor i32 %s.1.us, -1
  %9 = zext nneg i32 %5 to i64
  br label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.cond31.preheader, %cleanup48
  %indvars.iv59 = phi i64 [ %9, %for.cond31.preheader ], [ %indvars.iv.next60, %cleanup48 ]
  %q.038 = phi i32 [ undef, %for.cond31.preheader ], [ %q.1, %cleanup48 ]
  %p.037 = phi i32 [ undef, %for.cond31.preheader ], [ %p.1, %cleanup48 ]
  %indvars.iv.next60 = add nsw i64 %indvars.iv59, -1
  %10 = trunc nuw nsw i64 %indvars.iv.next60 to i32
  br label %for.cond36

for.cond.cleanup33.loopexit:                      ; preds = %cleanup48
  %11 = xor i32 %p.1, -1
  br label %for.cond.cleanup33

for.cond.cleanup33:                               ; preds = %entry, %for.cond11.preheader, %for.cond.cleanup33.loopexit
  %s.0.lcssa71 = phi i32 [ %8, %for.cond.cleanup33.loopexit ], [ undef, %for.cond11.preheader ], [ undef, %entry ]
  %r.0.lcssa70 = phi i32 [ %r.1.us, %for.cond.cleanup33.loopexit ], [ undef, %for.cond11.preheader ], [ undef, %entry ]
  %p.0.lcssa = phi i32 [ %11, %for.cond.cleanup33.loopexit ], [ undef, %for.cond11.preheader ], [ undef, %entry ]
  %q.0.lcssa = phi i32 [ %q.1, %for.cond.cleanup33.loopexit ], [ undef, %for.cond11.preheader ], [ undef, %entry ]
  %sub55 = add i32 %r.0.lcssa70, %p.0.lcssa
  %sub57 = add i32 %q.0.lcssa, %s.0.lcssa71
  %mul = mul nsw i32 %sub57, %sub55
  %call58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %sz) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0

for.cond36:                                       ; preds = %for.cond36.preheader, %for.body39
  %indvars.iv56 = phi i64 [ %9, %for.cond36.preheader ], [ %indvars.iv.next57, %for.body39 ]
  %cmp37 = icmp sgt i64 %indvars.iv56, 0
  br i1 %cmp37, label %for.body39, label %cleanup48

for.body39:                                       ; preds = %for.cond36
  %indvars.iv.next57 = add nsw i64 %indvars.iv56, -1
  %arrayidx43 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %sz, i64 0, i64 %indvars.iv.next60, i64 %indvars.iv.next57
  %12 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %12, 0
  br i1 %cmp44, label %cleanup48.split.loop.exit, label %for.cond36, !llvm.loop !16

cleanup48.split.loop.exit:                        ; preds = %for.body39
  %13 = trunc nsw i64 %indvars.iv.next57 to i32
  br label %cleanup48

cleanup48:                                        ; preds = %for.cond36, %cleanup48.split.loop.exit
  %p.1 = phi i32 [ %10, %cleanup48.split.loop.exit ], [ %p.037, %for.cond36 ]
  %q.1 = phi i32 [ %13, %cleanup48.split.loop.exit ], [ %q.038, %for.cond36 ]
  %cmp32 = icmp sgt i64 %indvars.iv59, 1
  br i1 %cmp32, label %for.cond36.preheader, label %for.cond.cleanup33.loopexit, !llvm.loop !17
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
!13 = distinct !{!13, !10, !11, !14}
!14 = !{!"llvm.loop.unswitch.partial.disable"}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
