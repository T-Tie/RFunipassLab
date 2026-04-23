; ModuleID = '<stdin>'
source_filename = "/tmp/tmppxx7gaum.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@s = dso_local global [1000 x [1000 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp34 = icmp sgt i32 %0, 0
  br i1 %cmp34, label %for.cond1.preheader, label %for.cond10.preheader.for.end36_crit_edge

for.cond1.preheader:                              ; preds = %entry, %for.inc7
  %1 = phi i32 [ %9, %for.inc7 ], [ %0, %entry ]
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.inc7 ], [ 0, %entry ]
  %cmp232 = icmp sgt i32 %1, 0
  br i1 %cmp232, label %for.body3, label %for.cond1.preheader.for.inc7_crit_edge

for.cond1.preheader.for.inc7_crit_edge:           ; preds = %for.cond1.preheader
  %.pre = sext i32 %1 to i64
  br label %for.inc7

for.cond10.preheader:                             ; preds = %for.inc7
  %cmp1144 = icmp sgt i32 %9, 0
  br i1 %cmp1144, label %for.cond13.preheader.us.preheader, label %for.cond10.preheader.for.end36_crit_edge

for.cond10.preheader.for.end36_crit_edge:         ; preds = %entry, %for.cond10.preheader
  %.lcssa86 = phi i32 [ %9, %for.cond10.preheader ], [ %0, %entry ]
  %.pre82 = zext i32 %.lcssa86 to i64
  br label %for.end36

for.cond13.preheader.us.preheader:                ; preds = %for.cond10.preheader
  %2 = zext nneg i32 %9 to i64
  %wide.trip.count = zext nneg i32 %9 to i64
  %sub.us = add nsw i32 %9, -1
  %idxprom28.us = sext i32 %sub.us to i64
  br label %for.cond13.preheader.us

for.cond13.preheader.us:                          ; preds = %for.cond13.preheader.us.preheader, %if.then25.us
  %indvars.iv72 = phi i64 [ 0, %for.cond13.preheader.us.preheader ], [ %indvars.iv.next73, %if.then25.us ]
  %b.047.us = phi i32 [ undef, %for.cond13.preheader.us.preheader ], [ %b.2.us93, %if.then25.us ]
  %a.046.us = phi i32 [ undef, %for.cond13.preheader.us.preheader ], [ %a.2.us91, %if.then25.us ]
  %3 = trunc nuw nsw i64 %indvars.iv72 to i32
  br label %for.body15.us

for.body15.us:                                    ; preds = %for.cond13.preheader.us, %for.inc21.us
  %indvars.iv69 = phi i64 [ 0, %for.cond13.preheader.us ], [ %indvars.iv.next70, %for.inc21.us ]
  %arrayidx19.us = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @s, i64 0, i64 %indvars.iv72, i64 %indvars.iv69
  %4 = load i32, ptr %arrayidx19.us, align 4, !tbaa !5
  %cmp20.us = icmp eq i32 %4, 0
  br i1 %cmp20.us, label %for.end23.us, label %for.inc21.us

for.inc21.us:                                     ; preds = %for.body15.us
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count
  br i1 %exitcond.not, label %if.then25.us, label %for.body15.us, !llvm.loop !9

for.end23.us:                                     ; preds = %for.body15.us
  %5 = trunc nuw nsw i64 %indvars.iv69 to i32
  %cmp24.us = icmp eq i32 %9, %5
  br i1 %cmp24.us, label %if.then25.us, label %for.end36.loopexit

if.then25.us:                                     ; preds = %for.inc21.us, %for.end23.us
  %b.2.us93 = phi i32 [ %5, %for.end23.us ], [ %b.047.us, %for.inc21.us ]
  %a.2.us91 = phi i32 [ %3, %for.end23.us ], [ %a.046.us, %for.inc21.us ]
  %arrayidx29.us = getelementptr inbounds [1000 x [1000 x i32]], ptr @s, i64 0, i64 %indvars.iv72, i64 %idxprom28.us
  %6 = load i32, ptr %arrayidx29.us, align 4, !tbaa !5
  %cmp30.us = icmp ne i32 %6, 0
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %cmp11.us = icmp samesign ult i64 %indvars.iv.next73, %2
  %or.cond = select i1 %cmp30.us, i1 %cmp11.us, i1 false
  br i1 %or.cond, label %for.cond13.preheader.us, label %for.end36.loopexit, !llvm.loop !12

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @s, i64 0, i64 %indvars.iv66, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %8 = sext i32 %7 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %8
  br i1 %cmp2, label %for.body3, label %for.inc7, !llvm.loop !13

for.inc7:                                         ; preds = %for.body3, %for.cond1.preheader.for.inc7_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond1.preheader.for.inc7_crit_edge ], [ %8, %for.body3 ]
  %9 = phi i32 [ %1, %for.cond1.preheader.for.inc7_crit_edge ], [ %7, %for.body3 ]
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %cmp = icmp slt i64 %indvars.iv.next67, %.pre-phi
  br i1 %cmp, label %for.cond1.preheader, label %for.cond10.preheader, !llvm.loop !14

for.end36.loopexit:                               ; preds = %for.end23.us, %if.then25.us
  %b.2.us94 = phi i32 [ %5, %for.end23.us ], [ %b.2.us93, %if.then25.us ]
  %a.2.us92 = phi i32 [ %3, %for.end23.us ], [ %a.2.us91, %if.then25.us ]
  %10 = xor i32 %b.2.us94, -1
  %11 = xor i32 %a.2.us92, -1
  br label %for.end36

for.end36:                                        ; preds = %for.cond10.preheader.for.end36_crit_edge, %for.end36.loopexit
  %.pre-phi83 = phi i64 [ %.pre82, %for.cond10.preheader.for.end36_crit_edge ], [ %wide.trip.count, %for.end36.loopexit ]
  %a.1 = phi i32 [ undef, %for.cond10.preheader.for.end36_crit_edge ], [ %11, %for.end36.loopexit ]
  %b.1 = phi i32 [ undef, %for.cond10.preheader.for.end36_crit_edge ], [ %10, %for.end36.loopexit ]
  br label %for.cond38

for.cond38:                                       ; preds = %if.then55, %for.end36
  %indvars.iv78 = phi i64 [ %12, %if.then55 ], [ %.pre-phi83, %for.end36 ]
  %12 = add nsw i64 %indvars.iv78, -1
  %13 = trunc nuw i64 %indvars.iv78 to i32
  %cmp39 = icmp sgt i32 %13, 0
  br i1 %cmp39, label %for.cond42, label %for.end66

for.cond42:                                       ; preds = %for.cond38, %for.body44
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %for.body44 ], [ %.pre-phi83, %for.cond38 ]
  %cmp43 = icmp sgt i64 %indvars.iv75, 0
  br i1 %cmp43, label %for.body44, label %if.then55

for.body44:                                       ; preds = %for.cond42
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, -1
  %arrayidx48 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @s, i64 0, i64 %12, i64 %indvars.iv.next76
  %14 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %cmp49 = icmp eq i32 %14, 0
  br i1 %cmp49, label %for.end66.loopexit, label %for.cond42, !llvm.loop !16

if.then55:                                        ; preds = %for.cond42
  %arrayidx57 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @s, i64 0, i64 %12
  %15 = load i32, ptr %arrayidx57, align 16, !tbaa !5
  %cmp59 = icmp eq i32 %15, 0
  br i1 %cmp59, label %for.end66, label %for.cond38, !llvm.loop !17

for.end66.loopexit:                               ; preds = %for.body44
  %16 = trunc i64 %12 to i32
  %17 = trunc nsw i64 %indvars.iv.next76 to i32
  br label %for.end66

for.end66:                                        ; preds = %if.then55, %for.cond38, %for.end66.loopexit
  %c.1 = phi i32 [ %16, %for.end66.loopexit ], [ undef, %for.cond38 ], [ undef, %if.then55 ]
  %d.1 = phi i32 [ %17, %for.end66.loopexit ], [ undef, %for.cond38 ], [ undef, %if.then55 ]
  %sub68 = add i32 %d.1, %b.1
  %sub70 = add i32 %c.1, %a.1
  %mul = mul nsw i32 %sub68, %sub70
  %call71 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11, !15}
!15 = !{!"llvm.loop.unswitch.partial.disable"}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
