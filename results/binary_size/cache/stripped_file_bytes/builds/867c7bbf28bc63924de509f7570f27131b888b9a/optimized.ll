; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_p2a6hv5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %sz = alloca [1000 x [1000 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4000000, ptr nonnull %sz) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp23 = icmp sgt i32 %0, 0
  br i1 %cmp23, label %for.cond1.preheader, label %for.end45

for.cond1.preheader:                              ; preds = %entry, %for.inc7
  %1 = phi i32 [ %7, %for.inc7 ], [ %0, %entry ]
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.inc7 ], [ 0, %entry ]
  %cmp221 = icmp sgt i32 %1, 0
  br i1 %cmp221, label %for.body3, label %for.cond1.preheader.for.inc7_crit_edge

for.cond1.preheader.for.inc7_crit_edge:           ; preds = %for.cond1.preheader
  %.pre = sext i32 %1 to i64
  br label %for.inc7

for.cond10.preheader:                             ; preds = %for.inc7
  %cmp1131 = icmp sgt i32 %7, 0
  br i1 %cmp1131, label %for.cond13.preheader.us.preheader, label %for.end45

for.cond13.preheader.us.preheader:                ; preds = %for.cond10.preheader
  %wide.trip.count58 = zext nneg i32 %7 to i64
  br label %for.cond13.preheader.us

for.cond13.preheader.us:                          ; preds = %for.cond13.preheader.us.preheader, %for.inc24.us
  %indvars.iv55 = phi i64 [ 0, %for.cond13.preheader.us.preheader ], [ %indvars.iv.next56, %for.inc24.us ]
  %x1.034.us = phi i32 [ undef, %for.cond13.preheader.us.preheader ], [ %x1.1.us, %for.inc24.us ]
  %y1.032.us = phi i32 [ undef, %for.cond13.preheader.us.preheader ], [ %y1.1.us, %for.inc24.us ]
  %2 = trunc nuw nsw i64 %indvars.iv55 to i32
  br label %for.body15.us

for.body15.us:                                    ; preds = %for.cond13.preheader.us, %for.inc21.us
  %indvars.iv52 = phi i64 [ 0, %for.cond13.preheader.us ], [ %indvars.iv.next53, %for.inc21.us ]
  %arrayidx19.us = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %indvars.iv55, i64 %indvars.iv52
  %3 = load i32, ptr %arrayidx19.us, align 4, !tbaa !5
  %cmp20.us = icmp eq i32 %3, 0
  br i1 %cmp20.us, label %for.inc24.us.split.loop.exit78, label %for.inc21.us

for.inc21.us:                                     ; preds = %for.body15.us
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count58
  br i1 %exitcond.not, label %for.inc24.us, label %for.body15.us, !llvm.loop !9

for.inc24.us.split.loop.exit78:                   ; preds = %for.body15.us
  %4 = trunc nuw nsw i64 %indvars.iv52 to i32
  br label %for.inc24.us

for.inc24.us:                                     ; preds = %for.inc21.us, %for.inc24.us.split.loop.exit78
  %y1.1.us = phi i32 [ %2, %for.inc24.us.split.loop.exit78 ], [ %y1.032.us, %for.inc21.us ]
  %x1.1.us = phi i32 [ %4, %for.inc24.us.split.loop.exit78 ], [ %x1.034.us, %for.inc21.us ]
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %for.cond31.preheader.preheader, label %for.cond13.preheader.us, !llvm.loop !12

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %indvars.iv49, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp2, label %for.body3, label %for.inc7, !llvm.loop !13

for.inc7:                                         ; preds = %for.body3, %for.cond1.preheader.for.inc7_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond1.preheader.for.inc7_crit_edge ], [ %6, %for.body3 ]
  %7 = phi i32 [ %1, %for.cond1.preheader.for.inc7_crit_edge ], [ %5, %for.body3 ]
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %cmp = icmp slt i64 %indvars.iv.next50, %.pre-phi
  br i1 %cmp, label %for.cond1.preheader, label %for.cond10.preheader, !llvm.loop !14

for.cond31.preheader.preheader:                   ; preds = %for.inc24.us
  %8 = zext nneg i32 %7 to i64
  br label %for.cond31.preheader

for.cond31.preheader:                             ; preds = %for.cond31.preheader.preheader, %for.inc43
  %indvars.iv63 = phi i64 [ %8, %for.cond31.preheader.preheader ], [ %indvars.iv.next64, %for.inc43 ]
  %y2.042 = phi i32 [ undef, %for.cond31.preheader.preheader ], [ %y2.1, %for.inc43 ]
  %x2.041 = phi i32 [ undef, %for.cond31.preheader.preheader ], [ %x2.1, %for.inc43 ]
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, -1
  %9 = trunc nuw nsw i64 %indvars.iv.next64 to i32
  br label %for.cond31

for.cond31:                                       ; preds = %for.cond31.preheader, %for.body33
  %indvars.iv60 = phi i64 [ %8, %for.cond31.preheader ], [ %indvars.iv.next61, %for.body33 ]
  %cmp32 = icmp sgt i64 %indvars.iv60, 0
  br i1 %cmp32, label %for.body33, label %for.inc43

for.body33:                                       ; preds = %for.cond31
  %indvars.iv.next61 = add nsw i64 %indvars.iv60, -1
  %arrayidx37 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %indvars.iv.next64, i64 %indvars.iv.next61
  %10 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %cmp38 = icmp eq i32 %10, 0
  br i1 %cmp38, label %for.inc43.split.loop.exit, label %for.cond31, !llvm.loop !16

for.inc43.split.loop.exit:                        ; preds = %for.body33
  %11 = trunc nsw i64 %indvars.iv.next61 to i32
  br label %for.inc43

for.inc43:                                        ; preds = %for.cond31, %for.inc43.split.loop.exit
  %x2.1 = phi i32 [ %11, %for.inc43.split.loop.exit ], [ %x2.041, %for.cond31 ]
  %y2.1 = phi i32 [ %9, %for.inc43.split.loop.exit ], [ %y2.042, %for.cond31 ]
  %cmp28 = icmp sgt i64 %indvars.iv63, 1
  br i1 %cmp28, label %for.cond31.preheader, label %for.end45, !llvm.loop !17

for.end45:                                        ; preds = %for.inc43, %entry, %for.cond10.preheader
  %x1.0.lcssa75 = phi i32 [ undef, %for.cond10.preheader ], [ undef, %entry ], [ %x1.1.us, %for.inc43 ]
  %y1.0.lcssa74 = phi i32 [ undef, %for.cond10.preheader ], [ undef, %entry ], [ %y1.1.us, %for.inc43 ]
  %x2.0.lcssa = phi i32 [ undef, %for.cond10.preheader ], [ undef, %entry ], [ %x2.1, %for.inc43 ]
  %y2.0.lcssa = phi i32 [ undef, %for.cond10.preheader ], [ undef, %entry ], [ %y2.1, %for.inc43 ]
  %sub46 = sub nsw i32 %x2.0.lcssa, %x1.0.lcssa75
  %12 = call i32 @llvm.abs.i32(i32 %sub46, i1 true)
  %sub47 = add nsw i32 %12, -1
  %sub48 = sub nsw i32 %y2.0.lcssa, %y1.0.lcssa74
  %13 = call i32 @llvm.abs.i32(i32 %sub48, i1 true)
  %sub49 = add nsw i32 %13, -1
  %mul = mul nsw i32 %sub49, %sub47
  %call50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 4000000, ptr nonnull %sz) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !10, !11, !15}
!15 = !{!"llvm.loop.unswitch.partial.disable"}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
