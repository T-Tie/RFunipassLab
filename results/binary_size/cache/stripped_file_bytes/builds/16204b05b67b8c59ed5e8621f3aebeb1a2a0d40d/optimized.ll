; ModuleID = '<stdin>'
source_filename = "/tmp/tmpm_s4q5t2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #7
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #7
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %b) #7
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %c) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) %c, i8 0, i64 40000, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x1, ptr noundef nonnull %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp30 = icmp sgt i32 %0, 0
  %1 = load i32, ptr %y1, align 4
  %2 = icmp sgt i32 %1, 0
  %or.cond = select i1 %cmp30, i1 %2, i1 false
  br i1 %or.cond, label %for.cond1.preheader, label %for.end9

for.cond1.preheader:                              ; preds = %entry, %for.inc7
  %3 = phi i32 [ %7, %for.inc7 ], [ %0, %entry ]
  %4 = phi i32 [ %8, %for.inc7 ], [ %1, %entry ]
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.inc7 ], [ 0, %entry ]
  %cmp227 = icmp sgt i32 %4, 0
  br i1 %cmp227, label %for.body3, label %for.inc7

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv45, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %y1, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp2, label %for.body3, label %for.inc7.loopexit, !llvm.loop !9

for.inc7.loopexit:                                ; preds = %for.body3
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.inc7

for.inc7:                                         ; preds = %for.inc7.loopexit, %for.cond1.preheader
  %7 = phi i32 [ %.pre, %for.inc7.loopexit ], [ %3, %for.cond1.preheader ]
  %8 = phi i32 [ %5, %for.inc7.loopexit ], [ %4, %for.cond1.preheader ]
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %9 = sext i32 %7 to i64
  %cmp = icmp slt i64 %indvars.iv.next46, %9
  br i1 %cmp, label %for.cond1.preheader, label %for.end9, !llvm.loop !12

for.end9:                                         ; preds = %for.inc7, %entry
  %call10 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  %10 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp1234 = icmp sgt i32 %10, 0
  %11 = load i32, ptr %y2, align 4
  %12 = icmp sgt i32 %11, 0
  %or.cond67 = select i1 %cmp1234, i1 %12, i1 false
  br i1 %or.cond67, label %for.cond14.preheader, label %for.cond28.preheader

for.cond14.preheader:                             ; preds = %for.end9, %for.inc25
  %13 = phi i32 [ %18, %for.inc25 ], [ %10, %for.end9 ]
  %14 = phi i32 [ %19, %for.inc25 ], [ %11, %for.end9 ]
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.inc25 ], [ 0, %for.end9 ]
  %cmp1532 = icmp sgt i32 %14, 0
  br i1 %cmp1532, label %for.body16, label %for.inc25

for.cond28.preheader:                             ; preds = %for.inc25, %for.end9
  %15 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp2940 = icmp sgt i32 %15, 0
  br i1 %cmp2940, label %for.cond31.preheader, label %for.end69

for.body16:                                       ; preds = %for.cond14.preheader, %for.body16
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.body16 ], [ 0, %for.cond14.preheader ]
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv51, i64 %indvars.iv48
  %call21 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx20)
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %16 = load i32, ptr %y2, align 4, !tbaa !5
  %17 = sext i32 %16 to i64
  %cmp15 = icmp slt i64 %indvars.iv.next49, %17
  br i1 %cmp15, label %for.body16, label %for.inc25.loopexit, !llvm.loop !14

for.inc25.loopexit:                               ; preds = %for.body16
  %.pre63 = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.inc25

for.inc25:                                        ; preds = %for.inc25.loopexit, %for.cond14.preheader
  %18 = phi i32 [ %.pre63, %for.inc25.loopexit ], [ %13, %for.cond14.preheader ]
  %19 = phi i32 [ %16, %for.inc25.loopexit ], [ %14, %for.cond14.preheader ]
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %20 = sext i32 %18 to i64
  %cmp12 = icmp slt i64 %indvars.iv.next52, %20
  br i1 %cmp12, label %for.cond14.preheader, label %for.cond28.preheader, !llvm.loop !15

for.cond31.preheader:                             ; preds = %for.cond28.preheader, %for.end65
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.end65 ], [ 0, %for.cond28.preheader ]
  %21 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp3238 = icmp sgt i32 %21, 0
  br i1 %cmp3238, label %for.cond34.preheader, label %for.end65

for.cond34.preheader:                             ; preds = %for.cond31.preheader, %for.end51
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.end51 ], [ 0, %for.cond31.preheader ]
  %22 = phi i32 [ %50, %for.end51 ], [ %21, %for.cond31.preheader ]
  %23 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp3536 = icmp sgt i32 %23, 0
  br i1 %cmp3536, label %for.body36.lr.ph, label %for.end51

for.body36.lr.ph:                                 ; preds = %for.cond34.preheader
  %arrayidx48 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv60, i64 %indvars.iv57
  %arrayidx48.promoted = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %wide.trip.count = zext nneg i32 %23 to i64
  %min.iters.check = icmp ult i32 %23, 4
  br i1 %min.iters.check, label %for.body36.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body36.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644
  %24 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %arrayidx48.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %24, %vector.ph ], [ %42, %vector.body ]
  %25 = or disjoint i64 %index, 1
  %26 = or disjoint i64 %index, 2
  %27 = or disjoint i64 %index, 3
  %28 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv60, i64 %index
  %wide.load = load <4 x i32>, ptr %28, align 16, !tbaa !5
  %29 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %index, i64 %indvars.iv57
  %30 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %25, i64 %indvars.iv57
  %31 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %26, i64 %indvars.iv57
  %32 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %27, i64 %indvars.iv57
  %33 = load i32, ptr %29, align 4, !tbaa !5
  %34 = load i32, ptr %30, align 4, !tbaa !5
  %35 = load i32, ptr %31, align 4, !tbaa !5
  %36 = load i32, ptr %32, align 4, !tbaa !5
  %37 = insertelement <4 x i32> poison, i32 %33, i64 0
  %38 = insertelement <4 x i32> %37, i32 %34, i64 1
  %39 = insertelement <4 x i32> %38, i32 %35, i64 2
  %40 = insertelement <4 x i32> %39, i32 %36, i64 3
  %41 = mul nsw <4 x i32> %40, %wide.load
  %42 = add <4 x i32> %vec.phi, %41
  %index.next = add nuw i64 %index, 4
  %43 = icmp eq i64 %index.next, %n.vec
  br i1 %43, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %44 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %42)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond34.for.end51_crit_edge, label %for.body36.preheader

for.body36.preheader:                             ; preds = %for.body36.lr.ph, %middle.block
  %indvars.iv54.ph = phi i64 [ 0, %for.body36.lr.ph ], [ %n.vec, %middle.block ]
  %.ph = phi i32 [ %arrayidx48.promoted, %for.body36.lr.ph ], [ %44, %middle.block ]
  br label %for.body36

for.body36:                                       ; preds = %for.body36.preheader, %for.body36
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.body36 ], [ %indvars.iv54.ph, %for.body36.preheader ]
  %45 = phi i32 [ %add, %for.body36 ], [ %.ph, %for.body36.preheader ]
  %arrayidx40 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv60, i64 %indvars.iv54
  %46 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %arrayidx44 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv54, i64 %indvars.iv57
  %47 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %mul = mul nsw i32 %47, %46
  %add = add nsw i32 %45, %mul
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count
  br i1 %exitcond.not, label %for.cond34.for.end51_crit_edge, label %for.body36, !llvm.loop !19

for.cond34.for.end51_crit_edge:                   ; preds = %for.body36, %middle.block
  %add.lcssa = phi i32 [ %44, %middle.block ], [ %add, %for.body36 ]
  store i32 %add.lcssa, ptr %arrayidx48, align 4, !tbaa !5
  br label %for.end51

for.end51:                                        ; preds = %for.cond34.for.end51_crit_edge, %for.cond34.preheader
  %sub = add nsw i32 %22, -1
  %48 = zext i32 %sub to i64
  %cmp52 = icmp eq i64 %indvars.iv57, %48
  %arrayidx56 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv60, i64 %indvars.iv57
  %49 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %.str.1..str.2 = select i1 %cmp52, ptr @.str.1, ptr @.str.2
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.1..str.2, i32 noundef %49)
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %50 = load i32, ptr %y2, align 4, !tbaa !5
  %51 = sext i32 %50 to i64
  %cmp32 = icmp slt i64 %indvars.iv.next58, %51
  br i1 %cmp32, label %for.cond34.preheader, label %for.end65, !llvm.loop !20

for.end65:                                        ; preds = %for.end51, %for.cond31.preheader
  %putchar = call i32 @putchar(i32 10)
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %52 = load i32, ptr %x1, align 4, !tbaa !5
  %53 = sext i32 %52 to i64
  %cmp29 = icmp slt i64 %indvars.iv.next61, %53
  br i1 %cmp29, label %for.cond31.preheader, label %for.end69, !llvm.loop !21

for.end69:                                        ; preds = %for.end65, %for.cond28.preheader
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #7
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

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!12 = distinct !{!12, !10, !11, !13}
!13 = !{!"llvm.loop.unswitch.partial.disable"}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11, !13}
!16 = distinct !{!16, !10, !11, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !10, !11, !17}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
