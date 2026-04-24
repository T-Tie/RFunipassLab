; ModuleID = '<stdin>'
source_filename = "/tmp/tmphp9wcsbp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %sz = alloca [1000 x [1000 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4000000, ptr noundef nonnull align 16 %sz) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = phi i32 [ %2, %for.inc7 ], [ %.pre, %entry ]
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.inc7 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv35, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count48 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %2 = phi i32 [ %.pre59, %for.inc ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %indvars.iv35, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre59 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc36
  %indvars.iv43 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next44, %for.inc36 ]
  %a1.0 = phi i32 [ undef, %for.cond10.preheader ], [ %a1.1, %for.inc36 ]
  %b1.0 = phi i32 [ undef, %for.cond10.preheader ], [ %b1.1, %for.inc36 ]
  %exitcond49.not = icmp eq i64 %indvars.iv43, %wide.trip.count48
  br i1 %exitcond49.not, label %for.cond39.preheader, label %for.cond13.preheader

for.cond39.preheader:                             ; preds = %for.cond10
  br label %for.cond39

for.cond13.preheader:                             ; preds = %for.cond10
  %4 = add nsw i64 %indvars.iv43, -1
  %5 = trunc nuw nsw i64 %indvars.iv43 to i32
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc33
  %indvars.iv38 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next39, %for.inc33 ]
  %a1.1 = phi i32 [ %a1.0, %for.cond13.preheader ], [ %a1.2, %for.inc33 ]
  %b1.1 = phi i32 [ %b1.0, %for.cond13.preheader ], [ %b1.2, %for.inc33 ]
  %exitcond.not = icmp eq i64 %indvars.iv38, %wide.trip.count
  br i1 %exitcond.not, label %for.inc36, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %indvars.iv43, i64 %indvars.iv38
  %6 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !13
  %cmp20 = icmp eq i32 %6, 0
  br i1 %cmp20, label %land.lhs.true, label %for.inc33

land.lhs.true:                                    ; preds = %for.body15
  %arrayidx24 = getelementptr inbounds [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %4, i64 %indvars.iv38
  %7 = load i32, ptr %arrayidx24, align 4, !tbaa !5, !invariant.load !13
  %cmp25.not = icmp eq i32 %7, 0
  br i1 %cmp25.not, label %for.inc33, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %land.lhs.true
  %8 = add nsw i64 %indvars.iv38, -1
  %arrayidx31 = getelementptr inbounds [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %indvars.iv43, i64 %8
  %9 = load i32, ptr %arrayidx31, align 4, !tbaa !5, !invariant.load !13
  %cmp32.not = icmp eq i32 %9, 0
  %spec.select = select i1 %cmp32.not, i32 %a1.1, i32 %5
  %10 = trunc nuw nsw i64 %indvars.iv38 to i32
  %spec.select31 = select i1 %cmp32.not, i32 %b1.1, i32 %10
  br label %for.inc33

for.inc33:                                        ; preds = %land.lhs.true26, %for.body15, %land.lhs.true
  %a1.2 = phi i32 [ %a1.1, %land.lhs.true ], [ %a1.1, %for.body15 ], [ %spec.select, %land.lhs.true26 ]
  %b1.2 = phi i32 [ %b1.1, %land.lhs.true ], [ %b1.1, %for.body15 ], [ %spec.select31, %land.lhs.true26 ]
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond13, !llvm.loop !14

for.inc36:                                        ; preds = %for.cond13
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond10, !llvm.loop !15

for.cond39:                                       ; preds = %for.cond39.preheader, %for.inc67
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.inc67 ], [ %wide.trip.count, %for.cond39.preheader ]
  %a2.0 = phi i32 [ %a2.1, %for.inc67 ], [ undef, %for.cond39.preheader ]
  %b2.0 = phi i32 [ %b2.1, %for.inc67 ], [ undef, %for.cond39.preheader ]
  %11 = trunc nuw i64 %indvars.iv55 to i32
  %cmp40 = icmp sgt i32 %11, 0
  br i1 %cmp40, label %for.cond42.preheader, label %for.end69

for.cond42.preheader:                             ; preds = %for.cond39
  %12 = add nuw nsw i64 %indvars.iv55, 1
  br label %for.cond42

for.cond42:                                       ; preds = %for.cond42.preheader, %for.inc65
  %indvars.iv51 = phi i64 [ %wide.trip.count, %for.cond42.preheader ], [ %indvars.iv.next52, %for.inc65 ]
  %a2.1 = phi i32 [ %a2.0, %for.cond42.preheader ], [ %a2.2, %for.inc65 ]
  %b2.1 = phi i32 [ %b2.0, %for.cond42.preheader ], [ %b2.2, %for.inc65 ]
  %cmp43 = icmp sgt i64 %indvars.iv51, 0
  br i1 %cmp43, label %for.body44, label %for.inc67

for.body44:                                       ; preds = %for.cond42
  %arrayidx48 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %indvars.iv55, i64 %indvars.iv51
  %13 = load i32, ptr %arrayidx48, align 4, !tbaa !5, !invariant.load !13
  %cmp49 = icmp eq i32 %13, 0
  br i1 %cmp49, label %land.lhs.true50, label %for.inc65

land.lhs.true50:                                  ; preds = %for.body44
  %arrayidx54 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %12, i64 %indvars.iv51
  %14 = load i32, ptr %arrayidx54, align 4, !tbaa !5, !invariant.load !13
  %cmp55.not = icmp eq i32 %14, 0
  br i1 %cmp55.not, label %for.inc65, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %land.lhs.true50
  %15 = add nuw nsw i64 %indvars.iv51, 1
  %arrayidx61 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %indvars.iv55, i64 %15
  %16 = load i32, ptr %arrayidx61, align 4, !tbaa !5, !invariant.load !13
  %cmp62.not = icmp eq i32 %16, 0
  %spec.select32 = select i1 %cmp62.not, i32 %a2.1, i32 %11
  %17 = trunc nuw nsw i64 %indvars.iv51 to i32
  %spec.select33 = select i1 %cmp62.not, i32 %b2.1, i32 %17
  br label %for.inc65

for.inc65:                                        ; preds = %land.lhs.true56, %for.body44, %land.lhs.true50
  %a2.2 = phi i32 [ %a2.1, %land.lhs.true50 ], [ %a2.1, %for.body44 ], [ %spec.select32, %land.lhs.true56 ]
  %b2.2 = phi i32 [ %b2.1, %land.lhs.true50 ], [ %b2.1, %for.body44 ], [ %spec.select33, %land.lhs.true56 ]
  %indvars.iv.next52 = add nsw i64 %indvars.iv51, -1
  br label %for.cond42, !llvm.loop !16

for.inc67:                                        ; preds = %for.cond42
  %indvars.iv.next56 = add nsw i64 %indvars.iv55, -1
  br label %for.cond39, !llvm.loop !17

for.end69:                                        ; preds = %for.cond39
  %18 = xor i32 %a1.0, -1
  %sub71 = add i32 %a2.0, %18
  %19 = xor i32 %b1.0, -1
  %sub73 = add i32 %b2.0, %19
  %mul = mul nsw i32 %sub73, %sub71
  %call74 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4000000, ptr noundef nonnull %sz) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

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
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
