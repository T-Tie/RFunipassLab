; ModuleID = '<stdin>'
source_filename = "/tmp/tmpujbusukt.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %s = alloca [1000 x [1000 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4000000, ptr noundef nonnull align 16 %s) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = phi i32 [ %2, %for.inc7 ], [ %.pre, %entry ]
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.inc7 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv27, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count38 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %2 = phi i32 [ %.pre40, %for.inc ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %s, i64 0, i64 %indvars.iv27, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre40 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.end23, %for.cond10.preheader
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %for.end23 ], [ 0, %for.cond10.preheader ]
  %a.0 = phi i32 [ %a.2, %for.end23 ], [ 0, %for.cond10.preheader ]
  %b.0 = phi i32 [ %b.2, %for.end23 ], [ 0, %for.cond10.preheader ]
  %exitcond39.not = icmp eq i64 %indvars.iv34, %wide.trip.count38
  br i1 %exitcond39.not, label %for.end30, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond10
  %4 = trunc nuw nsw i64 %indvars.iv34 to i32
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc21
  %indvars.iv30 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next31, %for.inc21 ]
  %exitcond.not = icmp eq i64 %indvars.iv30, %wide.trip.count
  br i1 %exitcond.not, label %for.end23, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %s, i64 0, i64 %indvars.iv34, i64 %indvars.iv30
  %5 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %5, 0
  br i1 %cmp20, label %for.end23.split.loop.exit, label %for.inc21

for.inc21:                                        ; preds = %for.body15
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond13, !llvm.loop !13

for.end23.split.loop.exit:                        ; preds = %for.body15
  %6 = trunc nuw nsw i64 %indvars.iv30 to i32
  br label %for.end23

for.end23:                                        ; preds = %for.cond13, %for.end23.split.loop.exit
  %a.2 = phi i32 [ %4, %for.end23.split.loop.exit ], [ %a.0, %for.cond13 ]
  %b.2 = phi i32 [ %6, %for.end23.split.loop.exit ], [ %b.0, %for.cond13 ]
  %cmp24 = icmp ne i32 %a.2, 0
  %cmp25 = icmp ne i32 %b.2, 0
  %or.cond = select i1 %cmp24, i1 %cmp25, i1 false
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br i1 %or.cond, label %for.end30, label %for.cond10, !llvm.loop !14

for.end30:                                        ; preds = %for.end23, %for.cond10
  %a.1 = phi i32 [ %a.0, %for.cond10 ], [ %a.2, %for.end23 ]
  %b.1 = phi i32 [ %b.0, %for.cond10 ], [ %b.2, %for.end23 ]
  %sub = add nsw i32 %0, -1
  br label %for.cond31

for.cond31:                                       ; preds = %for.end46, %for.end30
  %c.0 = phi i32 [ 0, %for.end30 ], [ %c.2, %for.end46 ]
  %d.0 = phi i32 [ 0, %for.end30 ], [ %d.2, %for.end46 ]
  %i.2 = phi i32 [ %sub, %for.end30 ], [ %dec53, %for.end46 ]
  %cmp32 = icmp sgt i32 %i.2, -1
  br i1 %cmp32, label %for.cond35.preheader, label %for.end54

for.cond35.preheader:                             ; preds = %for.cond31
  %idxprom38 = zext nneg i32 %i.2 to i64
  br label %for.cond35

for.cond35:                                       ; preds = %for.cond35.preheader, %for.inc45
  %j.2 = phi i32 [ %dec, %for.inc45 ], [ %sub, %for.cond35.preheader ]
  %cmp36 = icmp sgt i32 %j.2, -1
  br i1 %cmp36, label %for.body37, label %for.end46

for.body37:                                       ; preds = %for.cond35
  %idxprom40 = zext nneg i32 %j.2 to i64
  %arrayidx41 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %s, i64 0, i64 %idxprom38, i64 %idxprom40
  %7 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %cmp42 = icmp eq i32 %7, 0
  br i1 %cmp42, label %for.end46, label %for.inc45

for.inc45:                                        ; preds = %for.body37
  %dec = add nsw i32 %j.2, -1
  br label %for.cond35, !llvm.loop !15

for.end46:                                        ; preds = %for.body37, %for.cond35
  %c.2 = phi i32 [ %c.0, %for.cond35 ], [ %i.2, %for.body37 ]
  %d.2 = phi i32 [ %d.0, %for.cond35 ], [ %j.2, %for.body37 ]
  %cmp47 = icmp ne i32 %c.2, 0
  %cmp49 = icmp ne i32 %d.2, 0
  %or.cond25 = select i1 %cmp47, i1 %cmp49, i1 false
  %dec53 = add nsw i32 %i.2, -1
  br i1 %or.cond25, label %for.end54, label %for.cond31, !llvm.loop !16

for.end54:                                        ; preds = %for.end46, %for.cond31
  %c.1 = phi i32 [ %c.0, %for.cond31 ], [ %c.2, %for.end46 ]
  %d.1 = phi i32 [ %d.0, %for.cond31 ], [ %d.2, %for.end46 ]
  %8 = xor i32 %b.1, -1
  %sub56 = add i32 %d.1, %8
  %9 = xor i32 %a.1, -1
  %sub58 = add i32 %c.1, %9
  %mul = mul nsw i32 %sub56, %sub58
  %call59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4000000, ptr noundef nonnull %s) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind }
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
