; ModuleID = '<stdin>'
source_filename = "/tmp/tmp67s67lgw.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %a = alloca [101 x [101 x i32]], align 16
  %b = alloca [101 x [101 x i32]], align 16
  %c = alloca [101 x [101 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %c) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x1, ptr noundef nonnull %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp.not35 = icmp slt i32 %0, 1
  %1 = load i32, ptr %y1, align 4
  %2 = icmp slt i32 %1, 1
  %or.cond = select i1 %cmp.not35, i1 true, i1 %2
  br i1 %or.cond, label %for.end9, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.inc7
  %3 = phi i32 [ %7, %for.inc7 ], [ %0, %entry ]
  %4 = phi i32 [ %8, %for.inc7 ], [ %1, %entry ]
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %for.inc7 ], [ 1, %entry ]
  %cmp2.not33 = icmp slt i32 %4, 1
  br i1 %cmp2.not33, label %for.inc7, label %for.body3

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 1, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv61, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %y1, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp2.not.not = icmp slt i64 %indvars.iv, %6
  br i1 %cmp2.not.not, label %for.body3, label %for.inc7.loopexit, !llvm.loop !9

for.inc7.loopexit:                                ; preds = %for.body3
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.inc7

for.inc7:                                         ; preds = %for.inc7.loopexit, %for.cond1.preheader
  %7 = phi i32 [ %.pre, %for.inc7.loopexit ], [ %3, %for.cond1.preheader ]
  %8 = phi i32 [ %5, %for.inc7.loopexit ], [ %4, %for.cond1.preheader ]
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %9 = sext i32 %7 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv61, %9
  br i1 %cmp.not.not, label %for.cond1.preheader, label %for.end9, !llvm.loop !12

for.end9:                                         ; preds = %for.inc7, %entry
  %call10 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  %10 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp12.not39 = icmp slt i32 %10, 1
  %11 = load i32, ptr %y2, align 4
  %12 = icmp slt i32 %11, 1
  %or.cond101 = select i1 %cmp12.not39, i1 true, i1 %12
  br i1 %or.cond101, label %for.cond28.preheader, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.end9, %for.inc25
  %13 = phi i32 [ %28, %for.inc25 ], [ %10, %for.end9 ]
  %14 = phi i32 [ %29, %for.inc25 ], [ %11, %for.end9 ]
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %for.inc25 ], [ 1, %for.end9 ]
  %cmp15.not37 = icmp slt i32 %14, 1
  br i1 %cmp15.not37, label %for.inc25, label %for.body16

for.cond28.preheader:                             ; preds = %for.inc25, %for.end9
  %15 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp29.not45 = icmp slt i32 %15, 1
  br i1 %cmp29.not45, label %for.end87, label %for.cond31.preheader.lr.ph

for.cond31.preheader.lr.ph:                       ; preds = %for.cond28.preheader
  %16 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp32.not43 = icmp slt i32 %16, 1
  %17 = load i32, ptr %y1, align 4
  br i1 %cmp32.not43, label %for.cond69.preheader.preheader, label %for.cond31.preheader.lr.ph.split

for.cond31.preheader.lr.ph.split:                 ; preds = %for.cond31.preheader.lr.ph
  %cmp39.not41 = icmp slt i32 %17, 1
  br i1 %cmp39.not41, label %for.cond31.preheader.us47.preheader, label %for.cond31.preheader.preheader

for.cond31.preheader.preheader:                   ; preds = %for.cond31.preheader.lr.ph.split
  %18 = add nuw i32 %17, 1
  %19 = add nuw i32 %16, 1
  %20 = add nuw i32 %15, 1
  %wide.trip.count81 = zext i32 %20 to i64
  %wide.trip.count76 = zext i32 %19 to i64
  %wide.trip.count = zext i32 %18 to i64
  %21 = zext nneg i32 %17 to i64
  %min.iters.check = icmp ult i32 %17, 4
  %n.vec = and i64 %21, 2147483644
  %22 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %21
  br label %for.cond31.preheader

for.cond31.preheader.us47.preheader:              ; preds = %for.cond31.preheader.lr.ph.split
  %23 = zext nneg i32 %16 to i64
  %24 = shl nuw nsw i64 %23, 2
  %wide.trip.count86 = zext nneg i32 %15 to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %c, i64 408
  br label %for.cond31.preheader.us47

for.cond31.preheader.us47:                        ; preds = %for.cond31.preheader.us47.preheader, %for.cond31.preheader.us47
  %indvar = phi i64 [ 0, %for.cond31.preheader.us47.preheader ], [ %indvar.next, %for.cond31.preheader.us47 ]
  %25 = mul nuw nsw i64 %indvar, 404
  %gep = getelementptr i8, ptr %invariant.gep, i64 %25
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %gep, i8 0, i64 %24, i1 false), !tbaa !5
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond87.not = icmp eq i64 %indvar.next, %wide.trip.count86
  br i1 %exitcond87.not, label %for.cond69.preheader.preheader, label %for.cond31.preheader.us47, !llvm.loop !14

for.body16:                                       ; preds = %for.cond14.preheader, %for.body16
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %for.body16 ], [ 1, %for.cond14.preheader ]
  %arrayidx20 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv67, i64 %indvars.iv64
  %call21 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx20)
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %26 = load i32, ptr %y2, align 4, !tbaa !5
  %27 = sext i32 %26 to i64
  %cmp15.not.not = icmp slt i64 %indvars.iv64, %27
  br i1 %cmp15.not.not, label %for.body16, label %for.inc25.loopexit, !llvm.loop !15

for.inc25.loopexit:                               ; preds = %for.body16
  %.pre94 = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.inc25

for.inc25:                                        ; preds = %for.inc25.loopexit, %for.cond14.preheader
  %28 = phi i32 [ %.pre94, %for.inc25.loopexit ], [ %13, %for.cond14.preheader ]
  %29 = phi i32 [ %26, %for.inc25.loopexit ], [ %14, %for.cond14.preheader ]
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %30 = sext i32 %28 to i64
  %cmp12.not.not = icmp slt i64 %indvars.iv67, %30
  br i1 %cmp12.not.not, label %for.cond14.preheader, label %for.cond28.preheader, !llvm.loop !16

for.cond31.preheader:                             ; preds = %for.cond31.preheader.preheader, %for.cond31.for.inc63_crit_edge.split
  %indvars.iv78 = phi i64 [ 1, %for.cond31.preheader.preheader ], [ %indvars.iv.next79, %for.cond31.for.inc63_crit_edge.split ]
  br label %for.body33

for.body33:                                       ; preds = %for.cond31.preheader, %for.cond38.for.inc60_crit_edge
  %indvars.iv73 = phi i64 [ 1, %for.cond31.preheader ], [ %indvars.iv.next74, %for.cond38.for.inc60_crit_edge ]
  %arrayidx37 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv78, i64 %indvars.iv73
  br i1 %min.iters.check, label %for.body40.preheader, label %vector.body

vector.body:                                      ; preds = %for.body33, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.body33 ]
  %vec.phi = phi <4 x i32> [ %48, %vector.body ], [ zeroinitializer, %for.body33 ]
  %offset.idx = or disjoint i64 %index, 1
  %31 = or disjoint i64 %index, 2
  %32 = or disjoint i64 %index, 3
  %33 = add i64 %index, 4
  %34 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv78, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %34, align 4, !tbaa !5
  %35 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %offset.idx, i64 %indvars.iv73
  %36 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %31, i64 %indvars.iv73
  %37 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %32, i64 %indvars.iv73
  %38 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %33, i64 %indvars.iv73
  %39 = load i32, ptr %35, align 4, !tbaa !5
  %40 = load i32, ptr %36, align 4, !tbaa !5
  %41 = load i32, ptr %37, align 4, !tbaa !5
  %42 = load i32, ptr %38, align 4, !tbaa !5
  %43 = insertelement <4 x i32> poison, i32 %39, i64 0
  %44 = insertelement <4 x i32> %43, i32 %40, i64 1
  %45 = insertelement <4 x i32> %44, i32 %41, i64 2
  %46 = insertelement <4 x i32> %45, i32 %42, i64 3
  %47 = mul nsw <4 x i32> %46, %wide.load
  %48 = add <4 x i32> %47, %vec.phi
  %index.next = add nuw i64 %index, 4
  %49 = icmp eq i64 %index.next, %n.vec
  br i1 %49, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %50 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %48)
  br i1 %cmp.n, label %for.cond38.for.inc60_crit_edge, label %for.body40.preheader

for.body40.preheader:                             ; preds = %for.body33, %middle.block
  %indvars.iv70.ph = phi i64 [ 1, %for.body33 ], [ %22, %middle.block ]
  %.ph = phi i32 [ 0, %for.body33 ], [ %50, %middle.block ]
  br label %for.body40

for.body40:                                       ; preds = %for.body40.preheader, %for.body40
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.body40 ], [ %indvars.iv70.ph, %for.body40.preheader ]
  %51 = phi i32 [ %add, %for.body40 ], [ %.ph, %for.body40.preheader ]
  %arrayidx48 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv78, i64 %indvars.iv70
  %52 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %arrayidx52 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv70, i64 %indvars.iv73
  %53 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %mul = mul nsw i32 %53, %52
  %add = add nsw i32 %mul, %51
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count
  br i1 %exitcond.not, label %for.cond38.for.inc60_crit_edge, label %for.body40, !llvm.loop !20

for.cond38.for.inc60_crit_edge:                   ; preds = %for.body40, %middle.block
  %add.lcssa = phi i32 [ %50, %middle.block ], [ %add, %for.body40 ]
  store i32 %add.lcssa, ptr %arrayidx37, align 4, !tbaa !5
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count76
  br i1 %exitcond77.not, label %for.cond31.for.inc63_crit_edge.split, label %for.body33, !llvm.loop !21

for.cond31.for.inc63_crit_edge.split:             ; preds = %for.cond38.for.inc60_crit_edge
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %for.cond69.preheader.preheader, label %for.cond31.preheader, !llvm.loop !14

for.cond69.preheader.preheader:                   ; preds = %for.cond31.for.inc63_crit_edge.split, %for.cond31.preheader.us47, %for.cond31.preheader.lr.ph
  br label %for.cond69.preheader

for.cond69.preheader:                             ; preds = %for.cond69.preheader.preheader, %for.end79
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %for.end79 ], [ 1, %for.cond69.preheader.preheader ]
  %54 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp70.not.not51 = icmp sgt i32 %54, 1
  br i1 %cmp70.not.not51, label %for.body71, label %for.cond69.preheader.for.end79_crit_edge

for.cond69.preheader.for.end79_crit_edge:         ; preds = %for.cond69.preheader
  %.pre95 = sext i32 %54 to i64
  br label %for.end79

for.body71:                                       ; preds = %for.cond69.preheader, %for.body71
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.body71 ], [ 1, %for.cond69.preheader ]
  %arrayidx75 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv91, i64 %indvars.iv88
  %55 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  %call76 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %55)
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  %56 = load i32, ptr %y2, align 4, !tbaa !5
  %57 = sext i32 %56 to i64
  %cmp70.not.not = icmp slt i64 %indvars.iv.next89, %57
  br i1 %cmp70.not.not, label %for.body71, label %for.end79, !llvm.loop !22

for.end79:                                        ; preds = %for.body71, %for.cond69.preheader.for.end79_crit_edge
  %idxprom82.pre-phi = phi i64 [ %.pre95, %for.cond69.preheader.for.end79_crit_edge ], [ %57, %for.body71 ]
  %arrayidx83 = getelementptr inbounds [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv91, i64 %idxprom82.pre-phi
  %58 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %call84 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %58)
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %59 = load i32, ptr %x1, align 4, !tbaa !5
  %60 = sext i32 %59 to i64
  %cmp67.not.not = icmp slt i64 %indvars.iv91, %60
  br i1 %cmp67.not.not, label %for.cond69.preheader, label %for.end87, !llvm.loop !23

for.end87:                                        ; preds = %for.end79, %for.cond28.preheader
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!12 = distinct !{!12, !10, !11, !13}
!13 = !{!"llvm.loop.unswitch.partial.disable"}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11, !13}
!17 = distinct !{!17, !10, !11, !18, !19}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !10, !11, !18}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
