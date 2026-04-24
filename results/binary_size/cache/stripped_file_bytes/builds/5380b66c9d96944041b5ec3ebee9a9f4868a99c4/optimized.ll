; ModuleID = '<stdin>'
source_filename = "/tmp/tmprht8c8ej.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %hang = alloca i32, align 4
  %lie = alloca i32, align 4
  %a = alloca [8 x [8 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hang) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lie) #5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %hang, ptr noundef nonnull %lie)
  %0 = load i32, ptr %hang, align 4, !tbaa !5
  %cmp25 = icmp sgt i32 %0, 0
  br i1 %cmp25, label %for.cond1.preheader.lr.ph, label %if.then53

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %1 = load i32, ptr %lie, align 4, !tbaa !5
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %for.cond1.preheader, label %for.body12.us42.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc7
  %3 = phi i32 [ %13, %for.inc7 ], [ %0, %for.cond1.preheader.lr.ph ]
  %4 = phi i32 [ %14, %for.inc7 ], [ %1, %for.cond1.preheader.lr.ph ]
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.inc7 ], [ 0, %for.cond1.preheader.lr.ph ]
  %cmp223 = icmp sgt i32 %4, 0
  br i1 %cmp223, label %for.body3, label %for.inc7

for.cond10.preheader:                             ; preds = %for.inc7
  %cmp11.not38 = icmp sgt i32 %13, 0
  br i1 %cmp11.not38, label %for.body12.lr.ph, label %if.then53

for.body12.lr.ph:                                 ; preds = %for.cond10.preheader
  %.pr = load i32, ptr %lie, align 4, !tbaa !5
  %cmp1727 = icmp sgt i32 %.pr, 0
  br i1 %cmp1727, label %for.body12.us.us.preheader, label %for.body12.us42.preheader

for.body12.us.us.preheader:                       ; preds = %for.body12.lr.ph
  %wide.trip.count111 = zext nneg i32 %13 to i64
  %wide.trip.count99 = zext nneg i32 %.pr to i64
  br label %for.body12.us.us

for.body12.us.us:                                 ; preds = %for.body12.us.us.preheader, %for.inc49.us.us
  %indvars.iv108 = phi i64 [ 0, %for.body12.us.us.preheader ], [ %indvars.iv.next109, %for.inc49.us.us ]
  %arrayidx14.us.us = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv108
  %5 = load i32, ptr %arrayidx14.us.us, align 16, !tbaa !5
  br label %for.body18.us.us

for.body33.us.us:                                 ; preds = %for.cond16.for.cond31.preheader_crit_edge.us.us, %if.else.us.us
  %indvars.iv101 = phi i64 [ 0, %for.cond16.for.cond31.preheader_crit_edge.us.us ], [ %indvars.iv.next102, %if.else.us.us ]
  %arrayidx37.us.us = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv101, i64 %idxprom36.us.us
  %6 = load i32, ptr %arrayidx37.us.us, align 4, !tbaa !5
  %cmp38.us.us = icmp sgt i32 %spec.select.us.us, %6
  br i1 %cmp38.us.us, label %for.end44.us.us, label %if.else.us.us

if.else.us.us:                                    ; preds = %for.body33.us.us
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %exitcond107.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count111
  br i1 %exitcond107.not, label %if.then46, label %for.body33.us.us, !llvm.loop !9

for.end44.us.us:                                  ; preds = %for.body33.us.us
  %indvars105.le = trunc i64 %indvars.iv101 to i32
  %cmp45.us.us = icmp eq i32 %13, %indvars105.le
  br i1 %cmp45.us.us, label %if.then46, label %for.inc49.us.us

for.inc49.us.us:                                  ; preds = %for.end44.us.us
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %if.then53, label %for.body12.us.us, !llvm.loop !12

for.body18.us.us:                                 ; preds = %for.body18.us.us, %for.body12.us.us
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %for.body18.us.us ], [ 0, %for.body12.us.us ]
  %hmax.030.us.us = phi i32 [ %spec.select21.us.us, %for.body18.us.us ], [ 0, %for.body12.us.us ]
  %max.029.us.us = phi i32 [ %spec.select.us.us, %for.body18.us.us ], [ %5, %for.body12.us.us ]
  %arrayidx22.us.us = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv108, i64 %indvars.iv96
  %7 = load i32, ptr %arrayidx22.us.us, align 4, !tbaa !5
  %cmp23.us.us = icmp slt i32 %max.029.us.us, %7
  %spec.select.us.us = call i32 @llvm.smax.i32(i32 %max.029.us.us, i32 %7)
  %8 = trunc nuw nsw i64 %indvars.iv96 to i32
  %spec.select21.us.us = select i1 %cmp23.us.us, i32 %8, i32 %hmax.030.us.us
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %for.cond16.for.cond31.preheader_crit_edge.us.us, label %for.body18.us.us, !llvm.loop !13

for.cond16.for.cond31.preheader_crit_edge.us.us:  ; preds = %for.body18.us.us
  %idxprom36.us.us = zext nneg i32 %spec.select21.us.us to i64
  br label %for.body33.us.us

for.body12.us42.preheader:                        ; preds = %for.cond1.preheader.lr.ph, %for.body12.lr.ph
  %.lcssa115121 = phi i32 [ %13, %for.body12.lr.ph ], [ %0, %for.cond1.preheader.lr.ph ]
  %wide.trip.count94 = zext nneg i32 %.lcssa115121 to i64
  br label %for.body12.us42

for.body12.us42:                                  ; preds = %for.body12.us42.preheader, %for.inc49.us59
  %indvars.iv91 = phi i64 [ 0, %for.body12.us42.preheader ], [ %indvars.iv.next92, %for.inc49.us59 ]
  %arrayidx14.us45 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv91
  %9 = load i32, ptr %arrayidx14.us45, align 16, !tbaa !5
  br label %for.body33.us46

for.body33.us46:                                  ; preds = %for.body12.us42, %if.else.us52
  %indvars.iv86 = phi i64 [ 0, %for.body12.us42 ], [ %indvars.iv.next87, %if.else.us52 ]
  %arrayidx37.us50 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv86, i64 0
  %10 = load i32, ptr %arrayidx37.us50, align 16, !tbaa !5
  %cmp38.us51 = icmp sgt i32 %9, %10
  br i1 %cmp38.us51, label %for.end44.us56, label %if.else.us52

if.else.us52:                                     ; preds = %for.body33.us46
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count94
  br i1 %exitcond.not, label %if.then46, label %for.body33.us46, !llvm.loop !9

for.end44.us56:                                   ; preds = %for.body33.us46
  %indvars90.le = trunc i64 %indvars.iv86 to i32
  %cmp45.us58 = icmp eq i32 %.lcssa115121, %indvars90.le
  br i1 %cmp45.us58, label %if.then46, label %for.inc49.us59

for.inc49.us59:                                   ; preds = %for.end44.us56
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %if.then53, label %for.body12.us42, !llvm.loop !12

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv83, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %11 = load i32, ptr %lie, align 4, !tbaa !5
  %12 = sext i32 %11 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %12
  br i1 %cmp2, label %for.body3, label %for.inc7.loopexit, !llvm.loop !14

for.inc7.loopexit:                                ; preds = %for.body3
  %.pre = load i32, ptr %hang, align 4, !tbaa !5
  br label %for.inc7

for.inc7:                                         ; preds = %for.inc7.loopexit, %for.cond1.preheader
  %13 = phi i32 [ %.pre, %for.inc7.loopexit ], [ %3, %for.cond1.preheader ]
  %14 = phi i32 [ %11, %for.inc7.loopexit ], [ %4, %for.cond1.preheader ]
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  %15 = sext i32 %13 to i64
  %cmp = icmp slt i64 %indvars.iv.next84, %15
  br i1 %cmp, label %for.cond1.preheader, label %for.cond10.preheader, !llvm.loop !15

if.then46:                                        ; preds = %for.end44.us56, %if.else.us52, %for.end44.us.us, %if.else.us.us
  %.us-phi40.in = phi i64 [ %indvars.iv108, %if.else.us.us ], [ %indvars.iv108, %for.end44.us.us ], [ %indvars.iv91, %if.else.us52 ], [ %indvars.iv91, %for.end44.us56 ]
  %.us-phi41 = phi i32 [ %spec.select21.us.us, %if.else.us.us ], [ %spec.select21.us.us, %for.end44.us.us ], [ 0, %if.else.us52 ], [ 0, %for.end44.us56 ]
  %.us-phi40 = trunc i64 %.us-phi40.in to i32
  %call47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.us-phi40, i32 noundef %.us-phi41)
  br label %if.end55

if.then53:                                        ; preds = %for.inc49.us59, %for.inc49.us.us, %entry, %for.cond10.preheader
  %call54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end55

if.end55:                                         ; preds = %if.then46, %if.then53
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lie) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hang) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!15 = distinct !{!15, !10, !11, !16}
!16 = !{!"llvm.loop.unswitch.partial.disable"}
