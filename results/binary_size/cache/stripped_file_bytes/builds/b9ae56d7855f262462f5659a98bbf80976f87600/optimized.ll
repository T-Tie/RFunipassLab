; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjz7ez7pv.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #7
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %b) #7
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %c) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x1, ptr noundef nonnull %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp33 = icmp sgt i32 %0, 0
  %1 = load i32, ptr %y1, align 4
  %2 = icmp sgt i32 %1, 0
  %or.cond = select i1 %cmp33, i1 %2, i1 false
  br i1 %or.cond, label %for.cond1.preheader, label %for.end9

for.cond1.preheader:                              ; preds = %entry, %for.inc7
  %3 = phi i32 [ %7, %for.inc7 ], [ %0, %entry ]
  %4 = phi i32 [ %8, %for.inc7 ], [ %1, %entry ]
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %for.inc7 ], [ 0, %entry ]
  %cmp230 = icmp sgt i32 %4, 0
  br i1 %cmp230, label %for.body3, label %for.inc7

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv63, i64 %indvars.iv
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
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %9 = sext i32 %7 to i64
  %cmp = icmp slt i64 %indvars.iv.next64, %9
  br i1 %cmp, label %for.cond1.preheader, label %for.end9, !llvm.loop !12

for.end9:                                         ; preds = %for.inc7, %entry
  %call10 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  %10 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp1237 = icmp sgt i32 %10, 0
  %11 = load i32, ptr %y2, align 4
  %12 = icmp sgt i32 %11, 0
  %or.cond102 = select i1 %cmp1237, i1 %12, i1 false
  br i1 %or.cond102, label %for.cond14.preheader, label %for.cond28.preheader

for.cond14.preheader:                             ; preds = %for.end9, %for.inc25
  %13 = phi i32 [ %45, %for.inc25 ], [ %10, %for.end9 ]
  %14 = phi i32 [ %46, %for.inc25 ], [ %11, %for.end9 ]
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.inc25 ], [ 0, %for.end9 ]
  %cmp1535 = icmp sgt i32 %14, 0
  br i1 %cmp1535, label %for.body16, label %for.inc25

for.cond28.preheader:                             ; preds = %for.inc25, %for.end9
  %15 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp2944 = icmp sgt i32 %15, 0
  br i1 %cmp2944, label %for.cond31.preheader.lr.ph, label %for.end79

for.cond31.preheader.lr.ph:                       ; preds = %for.cond28.preheader
  %16 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp3242 = icmp sgt i32 %16, 0
  %17 = load i32, ptr %y1, align 4
  br i1 %cmp3242, label %for.cond31.preheader.lr.ph.split.us, label %for.body60.preheader

for.body60.preheader:                             ; preds = %for.cond31.preheader.us, %for.cond31.for.inc55_crit_edge.split.us.us.us, %for.cond31.preheader.lr.ph
  br label %for.body60

for.cond31.preheader.lr.ph.split.us:              ; preds = %for.cond31.preheader.lr.ph
  %cmp3539 = icmp sgt i32 %17, 0
  br i1 %cmp3539, label %for.cond31.preheader.us.us.preheader, label %for.cond31.preheader.us.preheader

for.cond31.preheader.us.preheader:                ; preds = %for.cond31.preheader.lr.ph.split.us
  %18 = zext nneg i32 %16 to i64
  %19 = shl nuw nsw i64 %18, 2
  %wide.trip.count = zext nneg i32 %15 to i64
  br label %for.cond31.preheader.us

for.cond31.preheader.us.us.preheader:             ; preds = %for.cond31.preheader.lr.ph.split.us
  %wide.trip.count89 = zext nneg i32 %15 to i64
  %wide.trip.count84 = zext nneg i32 %16 to i64
  %wide.trip.count79 = zext nneg i32 %17 to i64
  %min.iters.check = icmp ult i32 %17, 4
  %n.vec = and i64 %wide.trip.count79, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count79
  br label %for.cond31.preheader.us.us

for.cond31.preheader.us.us:                       ; preds = %for.cond31.preheader.us.us.preheader, %for.cond31.for.inc55_crit_edge.split.us.us.us
  %indvars.iv86 = phi i64 [ 0, %for.cond31.preheader.us.us.preheader ], [ %indvars.iv.next87, %for.cond31.for.inc55_crit_edge.split.us.us.us ]
  br label %for.cond34.preheader.us.us.us

for.cond34.preheader.us.us.us:                    ; preds = %for.cond34.for.end47_crit_edge.us.us.us, %for.cond31.preheader.us.us
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %for.cond34.for.end47_crit_edge.us.us.us ], [ 0, %for.cond31.preheader.us.us ]
  br i1 %min.iters.check, label %for.body36.us.us.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond34.preheader.us.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond34.preheader.us.us.us ]
  %vec.phi = phi <4 x i32> [ %37, %vector.body ], [ zeroinitializer, %for.cond34.preheader.us.us.us ]
  %20 = or disjoint i64 %index, 1
  %21 = or disjoint i64 %index, 2
  %22 = or disjoint i64 %index, 3
  %23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv86, i64 %index
  %wide.load = load <4 x i32>, ptr %23, align 16, !tbaa !5
  %24 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %index, i64 %indvars.iv81
  %25 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %20, i64 %indvars.iv81
  %26 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %21, i64 %indvars.iv81
  %27 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %22, i64 %indvars.iv81
  %28 = load i32, ptr %24, align 4, !tbaa !5
  %29 = load i32, ptr %25, align 4, !tbaa !5
  %30 = load i32, ptr %26, align 4, !tbaa !5
  %31 = load i32, ptr %27, align 4, !tbaa !5
  %32 = insertelement <4 x i32> poison, i32 %28, i64 0
  %33 = insertelement <4 x i32> %32, i32 %29, i64 1
  %34 = insertelement <4 x i32> %33, i32 %30, i64 2
  %35 = insertelement <4 x i32> %34, i32 %31, i64 3
  %36 = mul nsw <4 x i32> %35, %wide.load
  %37 = add <4 x i32> %36, %vec.phi
  %index.next = add nuw i64 %index, 4
  %38 = icmp eq i64 %index.next, %n.vec
  br i1 %38, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %39 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %37)
  br i1 %cmp.n, label %for.cond34.for.end47_crit_edge.us.us.us, label %for.body36.us.us.us.preheader

for.body36.us.us.us.preheader:                    ; preds = %for.cond34.preheader.us.us.us, %middle.block
  %indvars.iv76.ph = phi i64 [ 0, %for.cond34.preheader.us.us.us ], [ %n.vec, %middle.block ]
  %sum.041.us.us.us.ph = phi i32 [ 0, %for.cond34.preheader.us.us.us ], [ %39, %middle.block ]
  br label %for.body36.us.us.us

for.body36.us.us.us:                              ; preds = %for.body36.us.us.us.preheader, %for.body36.us.us.us
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %for.body36.us.us.us ], [ %indvars.iv76.ph, %for.body36.us.us.us.preheader ]
  %sum.041.us.us.us = phi i32 [ %add.us.us.us, %for.body36.us.us.us ], [ %sum.041.us.us.us.ph, %for.body36.us.us.us.preheader ]
  %arrayidx40.us.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv86, i64 %indvars.iv76
  %40 = load i32, ptr %arrayidx40.us.us.us, align 4, !tbaa !5
  %arrayidx44.us.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv76, i64 %indvars.iv81
  %41 = load i32, ptr %arrayidx44.us.us.us, align 4, !tbaa !5
  %mul.us.us.us = mul nsw i32 %41, %40
  %add.us.us.us = add nsw i32 %mul.us.us.us, %sum.041.us.us.us
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %for.cond34.for.end47_crit_edge.us.us.us, label %for.body36.us.us.us, !llvm.loop !17

for.cond34.for.end47_crit_edge.us.us.us:          ; preds = %for.body36.us.us.us, %middle.block
  %add.us.us.us.lcssa = phi i32 [ %39, %middle.block ], [ %add.us.us.us, %for.body36.us.us.us ]
  %arrayidx51.us.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv86, i64 %indvars.iv81
  store i32 %add.us.us.us.lcssa, ptr %arrayidx51.us.us.us, align 4, !tbaa !5
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %for.cond31.for.inc55_crit_edge.split.us.us.us, label %for.cond34.preheader.us.us.us, !llvm.loop !18

for.cond31.for.inc55_crit_edge.split.us.us.us:    ; preds = %for.cond34.for.end47_crit_edge.us.us.us
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count89
  br i1 %exitcond90.not, label %for.body60.preheader, label %for.cond31.preheader.us.us, !llvm.loop !19

for.cond31.preheader.us:                          ; preds = %for.cond31.preheader.us.preheader, %for.cond31.preheader.us
  %indvar = phi i64 [ 0, %for.cond31.preheader.us.preheader ], [ %indvar.next, %for.cond31.preheader.us ]
  %42 = mul nuw nsw i64 %indvar, 400
  %scevgep = getelementptr nuw i8, ptr %c, i64 %42
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %scevgep, i8 0, i64 %19, i1 false), !tbaa !5
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body60.preheader, label %for.cond31.preheader.us, !llvm.loop !19

for.body16:                                       ; preds = %for.cond14.preheader, %for.body16
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.body16 ], [ 0, %for.cond14.preheader ]
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv69, i64 %indvars.iv66
  %call21 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx20)
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %43 = load i32, ptr %y2, align 4, !tbaa !5
  %44 = sext i32 %43 to i64
  %cmp15 = icmp slt i64 %indvars.iv.next67, %44
  br i1 %cmp15, label %for.body16, label %for.inc25.loopexit, !llvm.loop !20

for.inc25.loopexit:                               ; preds = %for.body16
  %.pre97 = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.inc25

for.inc25:                                        ; preds = %for.inc25.loopexit, %for.cond14.preheader
  %45 = phi i32 [ %.pre97, %for.inc25.loopexit ], [ %13, %for.cond14.preheader ]
  %46 = phi i32 [ %43, %for.inc25.loopexit ], [ %14, %for.cond14.preheader ]
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %47 = sext i32 %45 to i64
  %cmp12 = icmp slt i64 %indvars.iv.next70, %47
  br i1 %cmp12, label %for.cond14.preheader, label %for.cond28.preheader, !llvm.loop !21

for.body60:                                       ; preds = %for.body60.preheader, %for.end75
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %for.end75 ], [ 0, %for.body60.preheader ]
  %arrayidx62 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv94
  %48 = load i32, ptr %arrayidx62, align 16, !tbaa !5
  %call64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %48)
  %49 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp6654 = icmp sgt i32 %49, 1
  br i1 %cmp6654, label %for.body67, label %for.end75

for.body67:                                       ; preds = %for.body60, %for.body67
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %for.body67 ], [ 1, %for.body60 ]
  %arrayidx71 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv94, i64 %indvars.iv91
  %50 = load i32, ptr %arrayidx71, align 4, !tbaa !5
  %call72 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %50)
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %51 = load i32, ptr %y2, align 4, !tbaa !5
  %52 = sext i32 %51 to i64
  %cmp66 = icmp slt i64 %indvars.iv.next92, %52
  br i1 %cmp66, label %for.body67, label %for.end75, !llvm.loop !22

for.end75:                                        ; preds = %for.body67, %for.body60
  %putchar = call i32 @putchar(i32 10)
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  %53 = load i32, ptr %x1, align 4, !tbaa !5
  %54 = sext i32 %53 to i64
  %cmp59 = icmp slt i64 %indvars.iv.next95, %54
  br i1 %cmp59, label %for.body60, label %for.end79, !llvm.loop !23

for.end79:                                        ; preds = %for.end75, %for.cond28.preheader
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #7
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!14 = distinct !{!14, !10, !11, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !10, !11, !15}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11, !13}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
