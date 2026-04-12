; ModuleID = '<stdin>'
source_filename = "/tmp/tmpk2d9fkjs.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %s = alloca [1000 x [1000 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4000000, ptr noundef nonnull align 16 %s) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = phi i32 [ %2, %for.inc7 ], [ %.pre, %entry ]
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.inc7 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv29, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count40 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %2 = phi i32 [ %.pre53, %for.inc ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %s, i64 0, i64 %indvars.iv29, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre53 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.end23, %for.cond10.preheader
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.end23 ], [ 0, %for.cond10.preheader ]
  %a.0 = phi i32 [ %a.2, %for.end23 ], [ 0, %for.cond10.preheader ]
  %b.0 = phi i32 [ %b.2, %for.end23 ], [ 0, %for.cond10.preheader ]
  %exitcond41.not = icmp eq i64 %indvars.iv36, %wide.trip.count40
  br i1 %exitcond41.not, label %for.end33, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond10
  %4 = trunc nuw nsw i64 %indvars.iv36 to i32
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc21
  %indvars.iv32 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next33, %for.inc21 ]
  %exitcond.not = icmp eq i64 %indvars.iv32, %wide.trip.count
  br i1 %exitcond.not, label %for.end23, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %s, i64 0, i64 %indvars.iv36, i64 %indvars.iv32
  %5 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %5, 0
  br i1 %cmp20, label %for.end23.split.loop.exit, label %for.inc21

for.inc21:                                        ; preds = %for.body15
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond13, !llvm.loop !13

for.end23.split.loop.exit:                        ; preds = %for.body15
  %6 = trunc nuw nsw i64 %indvars.iv32 to i32
  br label %for.end23

for.end23:                                        ; preds = %for.cond13, %for.end23.split.loop.exit
  %a.2 = phi i32 [ %4, %for.end23.split.loop.exit ], [ %a.0, %for.cond13 ]
  %b.2 = phi i32 [ %6, %for.end23.split.loop.exit ], [ %b.0, %for.cond13 ]
  %idxprom24 = zext nneg i32 %a.2 to i64
  %idxprom26 = zext nneg i32 %b.2 to i64
  %arrayidx27 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %s, i64 0, i64 %idxprom24, i64 %idxprom26
  %7 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %7, 0
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br i1 %cmp28, label %for.end33, label %for.cond10, !llvm.loop !14

for.end33:                                        ; preds = %for.end23, %for.cond10
  %a.1 = phi i32 [ %a.0, %for.cond10 ], [ %a.2, %for.end23 ]
  %b.1 = phi i32 [ %b.0, %for.cond10 ], [ %b.2, %for.end23 ]
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc53, %for.end33
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.inc53 ], [ 0, %for.end33 ]
  %c.0 = phi i32 [ %c.1, %for.inc53 ], [ 0, %for.end33 ]
  %d.0 = phi i32 [ %d.1, %for.inc53 ], [ 0, %for.end33 ]
  %exitcond52.not = icmp eq i64 %indvars.iv48, %wide.trip.count40
  br i1 %exitcond52.not, label %for.end55, label %for.cond37.preheader

for.cond37.preheader:                             ; preds = %for.cond34
  %8 = trunc nuw nsw i64 %indvars.iv48 to i32
  br label %for.cond37

for.cond37:                                       ; preds = %for.cond37.preheader, %for.body39
  %indvars.iv42 = phi i64 [ 0, %for.cond37.preheader ], [ %indvars.iv.next43, %for.body39 ]
  %c.1 = phi i32 [ %c.0, %for.cond37.preheader ], [ %c.2, %for.body39 ]
  %d.1 = phi i32 [ %d.0, %for.cond37.preheader ], [ %d.2, %for.body39 ]
  %exitcond47.not = icmp eq i64 %indvars.iv42, %wide.trip.count
  br i1 %exitcond47.not, label %for.inc53, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx43 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %s, i64 0, i64 %indvars.iv48, i64 %indvars.iv42
  %9 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %9, 0
  %10 = zext i32 %c.1 to i64
  %cmp45 = icmp samesign uge i64 %indvars.iv48, %10
  %or.cond = select i1 %cmp44, i1 %cmp45, i1 false
  %11 = zext i32 %d.1 to i64
  %cmp47 = icmp samesign uge i64 %indvars.iv42, %11
  %or.cond27 = select i1 %or.cond, i1 %cmp47, i1 false
  %c.2 = select i1 %or.cond27, i32 %8, i32 %c.1
  %12 = trunc nuw nsw i64 %indvars.iv42 to i32
  %d.2 = select i1 %or.cond27, i32 %12, i32 %d.1
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond37, !llvm.loop !15

for.inc53:                                        ; preds = %for.cond37
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond34, !llvm.loop !16

for.end55:                                        ; preds = %for.cond34
  %13 = xor i32 %b.1, -1
  %sub56 = add i32 %d.0, %13
  %14 = xor i32 %a.1, -1
  %sub58 = add i32 %c.0, %14
  %mul = mul nsw i32 %sub56, %sub58
  %call59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 4000000, ptr noundef nonnull %s) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
