; ModuleID = '<stdin>'
source_filename = "/tmp/tmph9_uh5pz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x = alloca [100 x [100 x i32]], align 16
  %a = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull %x) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %a)
  %.pre = load i32, ptr %a, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %0 = phi i32 [ %2, %for.end ], [ %.pre, %entry ]
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.end ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv30, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count41 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.body3
  %2 = phi i32 [ %.pre43, %for.body3 ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %x, i64 0, i64 %indvars.iv30, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre43 = load i32, ptr %a, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.end23
  %indvars.iv37 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next38, %for.end23 ]
  %a1.0 = phi i32 [ 0, %for.cond10.preheader ], [ %a1.1, %for.end23 ]
  %b1.0 = phi i32 [ 0, %for.cond10.preheader ], [ %b1.1, %for.end23 ]
  %exitcond42.not = icmp eq i64 %indvars.iv37, %wide.trip.count41
  br i1 %exitcond42.not, label %for.end26, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond10
  %4 = trunc nuw nsw i64 %indvars.iv37 to i32
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.body15
  %indvars.iv33 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next34, %for.body15 ]
  %a1.1 = phi i32 [ %a1.0, %for.cond13.preheader ], [ %spec.select, %for.body15 ]
  %b1.1 = phi i32 [ %b1.0, %for.cond13.preheader ], [ %spec.select25, %for.body15 ]
  %exitcond.not = icmp eq i64 %indvars.iv33, %wide.trip.count
  br i1 %exitcond.not, label %for.end23, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %x, i64 0, i64 %indvars.iv37, i64 %indvars.iv33
  %5 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !13
  %cmp20 = icmp eq i32 %5, 0
  %spec.select = select i1 %cmp20, i32 %4, i32 %a1.1
  %6 = trunc nuw nsw i64 %indvars.iv33 to i32
  %spec.select25 = select i1 %cmp20, i32 %6, i32 %b1.1
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond13, !llvm.loop !14

for.end23:                                        ; preds = %for.cond13
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond10, !llvm.loop !15

for.end26:                                        ; preds = %for.cond10
  %sub = add nsw i32 %0, -1
  br label %for.cond27

for.cond27:                                       ; preds = %for.end42, %for.end26
  %a2.0 = phi i32 [ 0, %for.end26 ], [ %a2.1, %for.end42 ]
  %b2.0 = phi i32 [ 0, %for.end26 ], [ %b2.1, %for.end42 ]
  %i.2 = phi i32 [ %sub, %for.end26 ], [ %dec44, %for.end42 ]
  %cmp28 = icmp sgt i32 %i.2, -1
  br i1 %cmp28, label %for.cond31.preheader, label %for.end45

for.cond31.preheader:                             ; preds = %for.cond27
  %idxprom34 = zext nneg i32 %i.2 to i64
  br label %for.cond31

for.cond31:                                       ; preds = %for.cond31.preheader, %for.body33
  %j.2 = phi i32 [ %dec, %for.body33 ], [ %sub, %for.cond31.preheader ]
  %a2.1 = phi i32 [ %spec.select26, %for.body33 ], [ %a2.0, %for.cond31.preheader ]
  %b2.1 = phi i32 [ %spec.select27, %for.body33 ], [ %b2.0, %for.cond31.preheader ]
  %cmp32 = icmp sgt i32 %j.2, -1
  br i1 %cmp32, label %for.body33, label %for.end42

for.body33:                                       ; preds = %for.cond31
  %idxprom36 = zext nneg i32 %j.2 to i64
  %arrayidx37 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %x, i64 0, i64 %idxprom34, i64 %idxprom36
  %7 = load i32, ptr %arrayidx37, align 4, !tbaa !5, !invariant.load !13
  %cmp38 = icmp eq i32 %7, 0
  %spec.select26 = select i1 %cmp38, i32 %i.2, i32 %a2.1
  %spec.select27 = select i1 %cmp38, i32 %j.2, i32 %b2.1
  %dec = add nsw i32 %j.2, -1
  br label %for.cond31, !llvm.loop !16

for.end42:                                        ; preds = %for.cond31
  %dec44 = add nsw i32 %i.2, -1
  br label %for.cond27, !llvm.loop !17

for.end45:                                        ; preds = %for.cond27
  %reass.sub = sub i32 %b2.0, %b1.0
  %add = add i32 %reass.sub, 1
  %reass.sub28 = sub i32 %a2.0, %a1.0
  %add48 = add i32 %reass.sub28, 1
  %mul = mul nsw i32 %add, %add48
  %call49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %mul) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %x) #6
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
