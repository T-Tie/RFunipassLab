; ModuleID = '<stdin>'
source_filename = "/tmp/tmpm3x_xubi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %m = alloca [26 x i32], align 16
  %k = alloca i32, align 4
  %h = alloca [26 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %m) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k) #8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %h) #8
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %k)
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %cmp.not7 = icmp sgt i32 %0, 0
  call void @llvm.assume(i1 %cmp.not7)
  br label %for.body

for.cond2.preheader:                              ; preds = %for.body
  %cmp3.not9 = icmp sgt i32 %2, 0
  call void @llvm.assume(i1 %cmp3.not9)
  %1 = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %1 to i64
  br label %for.body4

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds nuw [26 x i32], ptr %h, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = load i32, ptr %k, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %3
  br i1 %cmp.not.not, label %for.body, label %for.cond2.preheader, !llvm.loop !9

for.body4:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv13 = phi i64 [ 1, %for.cond2.preheader ], [ %indvars.iv.next14, %for.body4 ]
  %4 = trunc nuw nsw i64 %indvars.iv13 to i32
  %call5 = call noundef i32 @_Z3cmpiiPi(i32 noundef %4, i32 noundef %2, ptr noundef nonnull %h)
  %arrayidx7 = getelementptr inbounds nuw [26 x i32], ptr %m, i64 0, i64 %indvars.iv13
  store i32 %call5, ptr %arrayidx7, align 4, !tbaa !5
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next14, %wide.trip.count
  br i1 %exitcond.not, label %for.body.preheader.i, label %for.body4, !llvm.loop !12

for.body.preheader.i:                             ; preds = %for.body4
  %arrayidx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %m, i64 4
  %.pre = load i32, ptr %arrayidx.i.phi.trans.insert, align 4, !tbaa !5
  %5 = add nuw nsw i32 %2, 1
  %wide.trip.count.i = zext nneg i32 %5 to i64
  %6 = zext nneg i32 %2 to i64
  %min.iters.check = icmp samesign ult i32 %2, 4
  br i1 %min.iters.check, label %for.body.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader.i
  %n.vec = and i64 %6, 2147483644
  %7 = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.gep = getelementptr i8, ptr %m, i64 4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %8, %vector.body ]
  %gep = getelementptr i32, ptr %invariant.gep, i64 %index
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !5
  %8 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load)
  %index.next = add nuw i64 %index, 4
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %10 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %8)
  %cmp.n = icmp eq i64 %n.vec, %6
  br i1 %cmp.n, label %_Z3maxPii.exit, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.body.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %for.body.preheader.i ], [ %7, %middle.block ]
  %big.08.i.ph = phi i32 [ %.pre, %for.body.preheader.i ], [ %10, %middle.block ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ %indvars.iv.i.ph, %for.body.i.preheader ]
  %big.08.i = phi i32 [ %spec.select.i, %for.body.i ], [ %big.08.i.ph, %for.body.i.preheader ]
  %arrayidx1.i = getelementptr inbounds nuw i32, ptr %m, i64 %indvars.iv.i
  %11 = load i32, ptr %arrayidx1.i, align 4, !tbaa !5
  %spec.select.i = call i32 @llvm.smax.i32(i32 %big.08.i, i32 %11)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z3maxPii.exit, label %for.body.i, !llvm.loop !16

_Z3maxPii.exit:                                   ; preds = %for.body.i, %middle.block
  %spec.select.i.lcssa = phi i32 [ %10, %middle.block ], [ %spec.select.i, %for.body.i ]
  %call13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %spec.select.i.lcssa)
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %h) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k) #8
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %m) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 -2147483647, -2147483648) i32 @_Z3cmpiiPi(i32 noundef %i, i32 noundef %k, ptr noundef readonly captures(none) %h) local_unnamed_addr #3 {
entry:
  %b = alloca [26 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %b) #8
  %cmp1.not.not14 = icmp slt i32 %i, %k
  br i1 %cmp1.not.not14, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds i32, ptr %h, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %wide.trip.count = sext i32 %k to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ %idxprom, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %t.015 = phi i32 [ 1, %for.body.lr.ph ], [ %t.1, %for.inc ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %arrayidx3 = getelementptr inbounds i32, ptr %h, i64 %indvars.iv.next
  %1 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  %cmp4.not = icmp slt i32 %0, %1
  br i1 %cmp4.not, label %for.inc, label %if.then5

if.then5:                                         ; preds = %for.body
  %2 = trunc nsw i64 %indvars.iv.next to i32
  %call = tail call noundef i32 @_Z3cmpiiPi(i32 noundef %2, i32 noundef %k, ptr noundef nonnull %h)
  %idxprom6 = sext i32 %t.015 to i64
  %arrayidx7 = getelementptr inbounds [26 x i32], ptr %b, i64 0, i64 %idxprom6
  store i32 %call, ptr %arrayidx7, align 4, !tbaa !5
  %inc = add nsw i32 %t.015, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then5
  %t.1 = phi i32 [ %inc, %if.then5 ], [ %t.015, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !17

for.end:                                          ; preds = %for.inc
  %cmp10 = icmp eq i32 %t.1, 1
  br i1 %cmp10, label %cleanup, label %if.end12

if.end12:                                         ; preds = %for.end
  %arrayidx.i = getelementptr inbounds nuw i8, ptr %b, i64 4
  %3 = load i32, ptr %arrayidx.i, align 4, !tbaa !5
  %cmp.not7.i = icmp slt i32 %t.1, 2
  br i1 %cmp.not7.i, label %_Z3maxPii.exit, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end12
  %wide.trip.count.i = zext nneg i32 %t.1 to i64
  %4 = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check = icmp ult i32 %t.1, 5
  br i1 %min.iters.check, label %for.body.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader.i
  %n.vec = and i64 %4, -4
  %5 = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.gep = getelementptr i8, ptr %b, i64 4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %6, %vector.body ]
  %gep = getelementptr i32, ptr %invariant.gep, i64 %index
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !5
  %6 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load)
  %index.next = add nuw i64 %index, 4
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %8 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %6)
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %_Z3maxPii.exit, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.body.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %for.body.preheader.i ], [ %5, %middle.block ]
  %big.08.i.ph = phi i32 [ %3, %for.body.preheader.i ], [ %8, %middle.block ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ %indvars.iv.i.ph, %for.body.i.preheader ]
  %big.08.i = phi i32 [ %spec.select.i, %for.body.i ], [ %big.08.i.ph, %for.body.i.preheader ]
  %arrayidx1.i = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv.i
  %9 = load i32, ptr %arrayidx1.i, align 4, !tbaa !5
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %big.08.i, i32 %9)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z3maxPii.exit, label %for.body.i, !llvm.loop !19

_Z3maxPii.exit:                                   ; preds = %for.body.i, %middle.block, %if.end12
  %big.0.lcssa.i = phi i32 [ %3, %if.end12 ], [ %8, %middle.block ], [ %spec.select.i, %for.body.i ]
  %add14 = add nsw i32 %big.0.lcssa.i, 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry, %_Z3maxPii.exit
  %retval.0 = phi i32 [ %add14, %_Z3maxPii.exit ], [ 1, %entry ], [ 1, %for.end ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %b) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z3maxPii(ptr noundef readonly captures(none) %m, i32 noundef %k) local_unnamed_addr #4 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %m, i64 4
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp.not7 = icmp slt i32 %k, 1
  br i1 %cmp.not7, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %1 = add nuw i32 %k, 1
  %wide.trip.count = zext i32 %1 to i64
  %2 = zext nneg i32 %k to i64
  %min.iters.check = icmp ult i32 %k, 4
  br i1 %min.iters.check, label %for.body.preheader11, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %2, 2147483644
  %3 = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %0, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.gep = getelementptr i8, ptr %m, i64 4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %4, %vector.body ]
  %gep = getelementptr i32, ptr %invariant.gep, i64 %index
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !5
  %4 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load)
  %index.next = add nuw i64 %index, 4
  %5 = icmp eq i64 %index.next, %n.vec
  br i1 %5, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %6 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %4)
  %cmp.n = icmp eq i64 %n.vec, %2
  br i1 %cmp.n, label %for.end, label %for.body.preheader11

for.body.preheader11:                             ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %for.body.preheader ], [ %3, %middle.block ]
  %big.08.ph = phi i32 [ %0, %for.body.preheader ], [ %6, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader11, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader11 ]
  %big.08 = phi i32 [ %spec.select, %for.body ], [ %big.08.ph, %for.body.preheader11 ]
  %arrayidx1 = getelementptr inbounds nuw i32, ptr %m, i64 %indvars.iv
  %7 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smax.i32(i32 %big.08, i32 %7)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !21

for.end:                                          ; preds = %for.body, %middle.block, %entry
  %big.0.lcssa = phi i32 [ %0, %entry ], [ %6, %middle.block ], [ %spec.select, %for.body ]
  ret i32 %big.0.lcssa
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

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
!13 = distinct !{!13, !10, !11, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !10, !11, !14}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11, !14, !15}
!19 = distinct !{!19, !10, !11, !14}
!20 = distinct !{!20, !10, !11, !14, !15}
!21 = distinct !{!21, !10, !11, !14}
