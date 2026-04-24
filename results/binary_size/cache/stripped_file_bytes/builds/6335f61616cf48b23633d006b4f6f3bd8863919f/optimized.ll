; ModuleID = '<stdin>'
source_filename = "/tmp/tmphbegcm8h.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %num = alloca [15 x [15 x i32]], align 16
  %doub = alloca [15 x i32], align 16
  %w = alloca [15 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 900, ptr nonnull %num) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(900) %num, i8 0, i64 900, i1 false)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %doub) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) %doub, i8 0, i64 60, i1 false)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %w) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) %w, i8 0, i64 60, i1 false)
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.inc26
  %indvars.iv37 = phi i64 [ 0, %entry ], [ %indvars.iv.next38, %for.inc26 ]
  br label %for.body3

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx5 = getelementptr inbounds nuw [15 x [15 x i32]], ptr %num, i64 0, i64 %indvars.iv37, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %0 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  switch i32 %0, label %for.inc [
    i32 -1, label %for.end
    i32 0, label %if.then16
  ]

if.then16:                                        ; preds = %for.body3
  %1 = trunc nuw nsw i64 %indvars.iv to i32
  %arrayidx18 = getelementptr inbounds nuw [15 x i32], ptr %w, i64 0, i64 %indvars.iv37
  store i32 %1, ptr %arrayidx18, align 4, !tbaa !5
  br label %for.end

for.inc:                                          ; preds = %for.body3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 20
  br i1 %exitcond.not, label %for.end, label %for.body3, !llvm.loop !9

for.end:                                          ; preds = %for.body3, %for.inc, %if.then16
  %arrayidx21 = getelementptr inbounds nuw [15 x [15 x i32]], ptr %num, i64 0, i64 %indvars.iv37
  %2 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %2, -1
  br i1 %cmp23, label %for.end28, label %for.inc26

for.inc26:                                        ; preds = %for.end
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %exitcond40.not = icmp eq i64 %indvars.iv.next38, 15
  br i1 %exitcond40.not, label %for.cond32.preheader.preheader, label %for.cond1.preheader, !llvm.loop !12

for.end28:                                        ; preds = %for.end
  %cmp3033.not = icmp eq i64 %indvars.iv37, 0
  br i1 %cmp3033.not, label %for.end67, label %for.cond32.preheader.preheader

for.cond32.preheader.preheader:                   ; preds = %for.inc26, %for.end28
  %i.0.lcssa57 = phi i64 [ %indvars.iv37, %for.end28 ], [ 15, %for.inc26 ]
  %wide.trip.count53 = and i64 %i.0.lcssa57, 4294967295
  br label %for.cond32.preheader

for.cond32.preheader:                             ; preds = %for.cond32.preheader.preheader, %for.end61
  %indvars.iv50 = phi i64 [ 0, %for.cond32.preheader.preheader ], [ %indvars.iv.next51, %for.end61 ]
  %arrayidx34 = getelementptr inbounds nuw [15 x i32], ptr %w, i64 0, i64 %indvars.iv50
  %3 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %cmp3531 = icmp sgt i32 %3, 0
  br i1 %cmp3531, label %for.cond37.preheader.lr.ph, label %for.end61

for.cond37.preheader.lr.ph:                       ; preds = %for.cond32.preheader
  %arrayidx53 = getelementptr inbounds nuw [15 x i32], ptr %doub, i64 0, i64 %indvars.iv50
  %wide.trip.count48 = zext nneg i32 %3 to i64
  br label %for.cond37.preheader.us

for.cond37.preheader.us:                          ; preds = %for.cond37.for.inc59_crit_edge.us, %for.cond37.preheader.lr.ph
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.cond37.for.inc59_crit_edge.us ], [ 0, %for.cond37.preheader.lr.ph ]
  %arrayidx49.us = getelementptr inbounds nuw [15 x [15 x i32]], ptr %num, i64 0, i64 %indvars.iv50, i64 %indvars.iv45
  %4 = load i32, ptr %arrayidx49.us, align 4, !tbaa !5
  %mul.us = shl nsw i32 %4, 1
  br label %for.body41.us

for.body41.us:                                    ; preds = %for.cond37.preheader.us, %for.inc56.us
  %indvars.iv41 = phi i64 [ 0, %for.cond37.preheader.us ], [ %indvars.iv.next42, %for.inc56.us ]
  %arrayidx45.us = getelementptr inbounds nuw [15 x [15 x i32]], ptr %num, i64 0, i64 %indvars.iv50, i64 %indvars.iv41
  %5 = load i32, ptr %arrayidx45.us, align 4, !tbaa !5
  %cmp50.us = icmp eq i32 %5, %mul.us
  br i1 %cmp50.us, label %if.then51.us, label %for.inc56.us

if.then51.us:                                     ; preds = %for.body41.us
  %6 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %inc54.us = add nsw i32 %6, 1
  store i32 %inc54.us, ptr %arrayidx53, align 4, !tbaa !5
  br label %for.inc56.us

for.inc56.us:                                     ; preds = %if.then51.us, %for.body41.us
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond44.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count48
  br i1 %exitcond44.not, label %for.cond37.for.inc59_crit_edge.us, label %for.body41.us, !llvm.loop !13

for.cond37.for.inc59_crit_edge.us:                ; preds = %for.inc56.us
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count48
  br i1 %exitcond49.not, label %for.end61, label %for.cond37.preheader.us, !llvm.loop !14

for.end61:                                        ; preds = %for.cond37.for.inc59_crit_edge.us, %for.cond32.preheader
  %arrayidx63 = getelementptr inbounds nuw [15 x i32], ptr %doub, i64 0, i64 %indvars.iv50
  %7 = load i32, ptr %arrayidx63, align 4, !tbaa !5
  %call64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7)
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count53
  br i1 %exitcond54.not, label %for.end67, label %for.cond32.preheader, !llvm.loop !15

for.end67:                                        ; preds = %for.end61, %for.end28
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %w) #5
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %doub) #5
  call void @llvm.lifetime.end.p0(i64 900, ptr nonnull %num) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
