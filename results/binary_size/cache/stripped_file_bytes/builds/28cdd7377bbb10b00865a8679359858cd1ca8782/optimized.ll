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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4000000, ptr noundef nonnull %sz) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %0 = phi i32 [ %2, %for.end ], [ %.pre, %entry ]
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.end ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv27, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count38 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.body3
  %2 = phi i32 [ %.pre40, %for.body3 ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %indvars.iv27, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre40 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.end23
  %indvars.iv34 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next35, %for.end23 ]
  %x1.0 = phi i32 [ undef, %for.cond10.preheader ], [ %x1.1, %for.end23 ]
  %y1.0 = phi i32 [ undef, %for.cond10.preheader ], [ %y1.1, %for.end23 ]
  %exitcond39.not = icmp eq i64 %indvars.iv34, %wide.trip.count38
  br i1 %exitcond39.not, label %for.end26, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond10
  %4 = trunc nuw nsw i64 %indvars.iv34 to i32
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %if.end
  %indvars.iv30 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next31, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv30, %wide.trip.count
  br i1 %exitcond.not, label %for.end23, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %indvars.iv34, i64 %indvars.iv30
  %5 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !13
  %cmp20 = icmp eq i32 %5, 0
  br i1 %cmp20, label %for.end23.split.loop.exit42, label %if.end

if.end:                                           ; preds = %for.body15
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond13, !llvm.loop !14

for.end23.split.loop.exit42:                      ; preds = %for.body15
  %6 = trunc nuw nsw i64 %indvars.iv30 to i32
  br label %for.end23

for.end23:                                        ; preds = %for.cond13, %for.end23.split.loop.exit42
  %x1.1 = phi i32 [ %6, %for.end23.split.loop.exit42 ], [ %x1.0, %for.cond13 ]
  %y1.1 = phi i32 [ %4, %for.end23.split.loop.exit42 ], [ %y1.0, %for.cond13 ]
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond10, !llvm.loop !15

for.end26:                                        ; preds = %for.cond10
  %sub = add nsw i32 %0, -1
  br label %for.cond27

for.cond27:                                       ; preds = %for.end42, %for.end26
  %x2.0 = phi i32 [ undef, %for.end26 ], [ %x2.1, %for.end42 ]
  %y2.0 = phi i32 [ undef, %for.end26 ], [ %y2.1, %for.end42 ]
  %k.2 = phi i32 [ %sub, %for.end26 ], [ %dec44, %for.end42 ]
  %cmp28 = icmp sgt i32 %k.2, -1
  br i1 %cmp28, label %for.cond31.preheader, label %for.end45

for.cond31.preheader:                             ; preds = %for.cond27
  %idxprom34 = zext nneg i32 %k.2 to i64
  br label %for.cond31

for.cond31:                                       ; preds = %for.cond31.preheader, %if.end40
  %i.2 = phi i32 [ %dec, %if.end40 ], [ %sub, %for.cond31.preheader ]
  %cmp32 = icmp sgt i32 %i.2, -1
  br i1 %cmp32, label %for.body33, label %for.end42

for.body33:                                       ; preds = %for.cond31
  %idxprom36 = zext nneg i32 %i.2 to i64
  %arrayidx37 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %idxprom34, i64 %idxprom36
  %7 = load i32, ptr %arrayidx37, align 4, !tbaa !5, !invariant.load !13
  %cmp38 = icmp eq i32 %7, 0
  br i1 %cmp38, label %for.end42, label %if.end40

if.end40:                                         ; preds = %for.body33
  %dec = add nsw i32 %i.2, -1
  br label %for.cond31, !llvm.loop !16

for.end42:                                        ; preds = %for.cond31, %for.body33
  %x2.1 = phi i32 [ %i.2, %for.body33 ], [ %x2.0, %for.cond31 ]
  %y2.1 = phi i32 [ %k.2, %for.body33 ], [ %y2.0, %for.cond31 ]
  %dec44 = add nsw i32 %k.2, -1
  br label %for.cond27, !llvm.loop !17

for.end45:                                        ; preds = %for.cond27
  %sub46 = sub nsw i32 %x2.0, %x1.0
  %8 = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %sub46, i1 noundef true)
  %sub47 = add nsw i32 %8, -1
  %sub48 = sub nsw i32 %y2.0, %y1.0
  %9 = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %sub48, i1 noundef true)
  %sub49 = add nsw i32 %9, -1
  %mul = mul nsw i32 %sub49, %sub47
  %call50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4000000, ptr noundef nonnull %sz) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
