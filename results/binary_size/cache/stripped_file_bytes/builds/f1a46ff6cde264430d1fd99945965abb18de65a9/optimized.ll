; ModuleID = '<stdin>'
source_filename = "/tmp/tmpo1jzqchv.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z7minlineiiPPi(i32 noundef %n, i32 noundef %u, ptr noundef readonly captures(none) %a) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %a, align 8, !tbaa !5
  %idxprom = sext i32 %u to i64
  %arrayidx1 = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %1 = load i32, ptr %arrayidx1, align 4, !tbaa !10
  %cmp9 = icmp sgt i32 %n, 1
  br i1 %cmp9, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext nneg i32 %n to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %temp.0.lcssa = phi i32 [ %1, %entry ], [ %spec.select, %for.body ]
  ret i32 %temp.0.lcssa

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %temp.010 = phi i32 [ %1, %for.body.preheader ], [ %spec.select, %for.body ]
  %arrayidx3 = getelementptr inbounds nuw ptr, ptr %a, i64 %indvars.iv
  %2 = load ptr, ptr %arrayidx3, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %3 = load i32, ptr %arrayidx5, align 4, !tbaa !10
  %spec.select = tail call i32 @llvm.smin.i32(i32 %temp.010, i32 %3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z8mincrossiPi(i32 noundef %n, ptr noundef readonly captures(none) %a) local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr %a, align 4, !tbaa !10
  %cmp7 = icmp sgt i32 %n, 0
  br i1 %cmp7, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext nneg i32 %n to i64
  %min.iters.check = icmp ult i32 %n, 4
  br i1 %min.iters.check, label %for.body.preheader11, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %0, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %2, %vector.body ]
  %1 = getelementptr inbounds nuw i32, ptr %a, i64 %index
  %wide.load = load <4 x i32>, ptr %1, align 4, !tbaa !10
  %2 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load)
  %index.next = add nuw i64 %index, 4
  %3 = icmp eq i64 %index.next, %n.vec
  br i1 %3, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %4 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %2)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader11

for.body.preheader11:                             ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %temp.08.ph = phi i32 [ %0, %for.body.preheader ], [ %4, %middle.block ]
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %middle.block, %entry
  %temp.0.lcssa = phi i32 [ %0, %entry ], [ %4, %middle.block ], [ %spec.select, %for.body ]
  ret i32 %temp.0.lcssa

for.body:                                         ; preds = %for.body.preheader11, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader11 ]
  %temp.08 = phi i32 [ %spec.select, %for.body ], [ %temp.08.ph, %for.body.preheader11 ]
  %arrayidx1 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv
  %5 = load i32, ptr %arrayidx1, align 4, !tbaa !10
  %spec.select = tail call i32 @llvm.smin.i32(i32 %temp.08, i32 %5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z3ansiPPi(i32 noundef %n, ptr noundef readonly captures(none) %pp) local_unnamed_addr #3 {
entry:
  %cmp84 = icmp sgt i32 %n, 1
  br i1 %cmp84, label %for.cond1.preheader.lr.ph, label %for.cond.cleanup

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %sub = add nsw i32 %n, -1
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %pp, i64 8
  %0 = load ptr, ptr %arrayidx54, align 8, !tbaa !5
  %arrayidx55 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %1 = add nsw i32 %n, -2
  %2 = zext nneg i32 %n to i64
  %3 = zext nneg i32 %sub to i64
  %wide.trip.count134 = zext nneg i32 %sub to i64
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.cond.cleanup89
  %indvars.iv128 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next129, %for.cond.cleanup89 ]
  %indvars.iv119 = phi i32 [ %sub, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next120, %for.cond.cleanup89 ]
  %indvars.iv90 = phi i32 [ %n, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next91, %for.cond.cleanup89 ]
  %sum.086 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %add137142, %for.cond.cleanup89 ]
  %4 = sub nsw i64 %2, %indvars.iv128
  %5 = zext i32 %indvars.iv90 to i64
  %6 = trunc i64 %indvars.iv128 to i32
  %7 = sub i32 %1, %6
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 2
  %10 = sub nsw i64 %2, %indvars.iv128
  %cmp370 = icmp sgt i64 %10, 0
  br i1 %cmp370, label %for.body5.lr.ph, label %for.cond.cleanup28.for.cond85.preheader_crit_edge

for.body5.lr.ph:                                  ; preds = %for.cond1.preheader
  %wide.trip.count95 = zext i32 %indvars.iv90 to i64
  %min.iters.check145 = icmp ult i64 %4, 4
  %n.vec148 = and i64 %4, -4
  %cmp.n156 = icmp eq i64 %4, %n.vec148
  %min.iters.check = icmp ult i32 %indvars.iv90, 4
  %n.vec = and i64 %5, 4294967292
  %cmp.n = icmp eq i64 %n.vec, %5
  br label %for.body5

for.cond.cleanup:                                 ; preds = %for.cond.cleanup89, %entry
  %sum.0.lcssa = phi i32 [ 0, %entry ], [ %add137142, %for.cond.cleanup89 ]
  ret i32 %sum.0.lcssa

for.body29.lr.ph:                                 ; preds = %for.cond.cleanup10
  %11 = load ptr, ptr %pp, align 8, !tbaa !5
  %wide.trip.count105 = zext i32 %indvars.iv90 to i64
  br label %for.body29

for.body5:                                        ; preds = %for.body5.lr.ph, %for.cond.cleanup10
  %indvars.iv92 = phi i64 [ 0, %for.body5.lr.ph ], [ %indvars.iv.next93, %for.cond.cleanup10 ]
  %arrayidx = getelementptr inbounds nuw ptr, ptr %pp, i64 %indvars.iv92
  %12 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %13 = load i32, ptr %12, align 4, !tbaa !10
  br i1 %min.iters.check145, label %for.body.i.preheader, label %vector.ph146

vector.ph146:                                     ; preds = %for.body5
  %broadcast.splatinsert149 = insertelement <4 x i32> poison, i32 %13, i64 0
  %broadcast.splat150 = shufflevector <4 x i32> %broadcast.splatinsert149, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph146
  %index152 = phi i64 [ 0, %vector.ph146 ], [ %index.next154, %vector.body151 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat150, %vector.ph146 ], [ %15, %vector.body151 ]
  %14 = getelementptr inbounds nuw i32, ptr %12, i64 %index152
  %wide.load153 = load <4 x i32>, ptr %14, align 4, !tbaa !10
  %15 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load153)
  %index.next154 = add nuw i64 %index152, 4
  %16 = icmp eq i64 %index.next154, %n.vec148
  br i1 %16, label %middle.block155, label %vector.body151, !llvm.loop !19

middle.block155:                                  ; preds = %vector.body151
  %17 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %15)
  br i1 %cmp.n156, label %for.body11.lr.ph, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.body5, %middle.block155
  %indvars.iv.i.ph = phi i64 [ 0, %for.body5 ], [ %n.vec148, %middle.block155 ]
  %temp.08.i.ph = phi i32 [ %13, %for.body5 ], [ %17, %middle.block155 ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ %indvars.iv.i.ph, %for.body.i.preheader ]
  %temp.08.i = phi i32 [ %spec.select.i, %for.body.i ], [ %temp.08.i.ph, %for.body.i.preheader ]
  %arrayidx1.i = getelementptr inbounds nuw i32, ptr %12, i64 %indvars.iv.i
  %18 = load i32, ptr %arrayidx1.i, align 4, !tbaa !10
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %temp.08.i, i32 %18)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %10
  br i1 %exitcond.not.i, label %for.body11.lr.ph, label %for.body.i, !llvm.loop !20

for.body11.lr.ph:                                 ; preds = %for.body.i, %middle.block155
  %spec.select.i.lcssa = phi i32 [ %17, %middle.block155 ], [ %spec.select.i, %for.body.i ]
  br i1 %min.iters.check, label %for.body11.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body11.lr.ph
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.select.i.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %19 = getelementptr inbounds nuw i32, ptr %12, i64 %index
  %wide.load = load <4 x i32>, ptr %19, align 4, !tbaa !10
  %20 = sub nsw <4 x i32> %wide.load, %broadcast.splat
  store <4 x i32> %20, ptr %19, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 4
  %21 = icmp eq i64 %index.next, %n.vec
  br i1 %21, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond.cleanup10, label %for.body11.preheader

for.body11.preheader:                             ; preds = %for.body11.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body11.lr.ph ], [ %n.vec, %middle.block ]
  br label %for.body11

for.cond.cleanup10:                               ; preds = %for.body11, %middle.block
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  %exitcond96.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count95
  br i1 %exitcond96.not, label %for.body29.lr.ph, label %for.body5, !llvm.loop !22

for.body11:                                       ; preds = %for.body11.preheader, %for.body11
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body11 ], [ %indvars.iv.ph, %for.body11.preheader ]
  %arrayidx15 = getelementptr inbounds nuw i32, ptr %12, i64 %indvars.iv
  %22 = load i32, ptr %arrayidx15, align 4, !tbaa !10
  %sub16 = sub nsw i32 %22, %spec.select.i.lcssa
  store i32 %sub16, ptr %arrayidx15, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count95
  br i1 %exitcond.not, label %for.cond.cleanup10, label %for.body11, !llvm.loop !23

for.cond.cleanup28:                               ; preds = %for.cond.cleanup37
  %23 = load i32, ptr %arrayidx55, align 4, !tbaa !10
  %add = add nsw i32 %23, %sum.086
  %24 = sub nsw i64 %3, %indvars.iv128
  %cmp6676 = icmp sgt i64 %24, 1
  br i1 %cmp6676, label %for.cond63.preheader.us.preheader, label %for.cond85.preheader

for.cond.cleanup28.for.cond85.preheader_crit_edge: ; preds = %for.cond1.preheader
  %25 = load i32, ptr %arrayidx55, align 4, !tbaa !10
  %add136 = add nsw i32 %25, %sum.086
  %.pre = sub nsw i64 %3, %indvars.iv128
  br label %for.cond85.preheader

for.cond63.preheader.us.preheader:                ; preds = %for.cond.cleanup28
  %wide.trip.count114 = zext i32 %indvars.iv90 to i64
  br label %for.cond63.preheader.us

for.cond63.preheader.us:                          ; preds = %for.cond63.preheader.us.preheader, %for.cond63.preheader.us
  %indvars.iv111 = phi i64 [ 0, %for.cond63.preheader.us.preheader ], [ %indvars.iv.next112, %for.cond63.preheader.us ]
  %arrayidx70.us = getelementptr inbounds nuw ptr, ptr %pp, i64 %indvars.iv111
  %26 = load ptr, ptr %arrayidx70.us, align 8, !tbaa !5
  %scevgep = getelementptr nuw i8, ptr %26, i64 4
  %scevgep107 = getelementptr nuw i8, ptr %26, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %scevgep, ptr nonnull align 4 %scevgep107, i64 %9, i1 false), !tbaa !10
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  %exitcond115.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count114
  br i1 %exitcond115.not, label %for.cond92.preheader.lr.ph, label %for.cond63.preheader.us, !llvm.loop !24

for.body29:                                       ; preds = %for.body29.lr.ph, %for.cond.cleanup37
  %indvars.iv102 = phi i64 [ 0, %for.body29.lr.ph ], [ %indvars.iv.next103, %for.cond.cleanup37 ]
  %arrayidx1.i59 = getelementptr inbounds nuw i32, ptr %11, i64 %indvars.iv102
  %27 = load i32, ptr %arrayidx1.i59, align 4, !tbaa !10
  br label %for.body.i63

for.body.i63:                                     ; preds = %for.body.i63, %for.body29
  %indvars.iv.i64 = phi i64 [ 1, %for.body29 ], [ %indvars.iv.next.i66, %for.body.i63 ]
  %temp.010.i = phi i32 [ %27, %for.body29 ], [ %spec.select.i65, %for.body.i63 ]
  %arrayidx3.i = getelementptr inbounds nuw ptr, ptr %pp, i64 %indvars.iv.i64
  %28 = load ptr, ptr %arrayidx3.i, align 8, !tbaa !5
  %arrayidx5.i = getelementptr inbounds nuw i32, ptr %28, i64 %indvars.iv102
  %29 = load i32, ptr %arrayidx5.i, align 4, !tbaa !10
  %spec.select.i65 = tail call i32 @llvm.smin.i32(i32 %temp.010.i, i32 %29)
  %indvars.iv.next.i66 = add nuw nsw i64 %indvars.iv.i64, 1
  %exitcond.not.i67 = icmp eq i64 %indvars.iv.next.i66, %10
  br i1 %exitcond.not.i67, label %for.body38, label %for.body.i63, !llvm.loop !12

for.cond.cleanup37:                               ; preds = %for.body38
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count105
  br i1 %exitcond106.not, label %for.cond.cleanup28, label %for.body29, !llvm.loop !25

for.body38:                                       ; preds = %for.body.i63, %for.body38
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %for.body38 ], [ 0, %for.body.i63 ]
  %arrayidx40 = getelementptr inbounds nuw ptr, ptr %pp, i64 %indvars.iv97
  %30 = load ptr, ptr %arrayidx40, align 8, !tbaa !5
  %arrayidx42 = getelementptr inbounds nuw i32, ptr %30, i64 %indvars.iv102
  %31 = load i32, ptr %arrayidx42, align 4, !tbaa !10
  %sub43 = sub nsw i32 %31, %spec.select.i65
  store i32 %sub43, ptr %arrayidx42, align 4, !tbaa !10
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count105
  br i1 %exitcond101.not, label %for.cond.cleanup37, label %for.body38, !llvm.loop !26

for.cond85.preheader:                             ; preds = %for.cond.cleanup28, %for.cond.cleanup28.for.cond85.preheader_crit_edge
  %add137 = phi i32 [ %add136, %for.cond.cleanup28.for.cond85.preheader_crit_edge ], [ %add, %for.cond.cleanup28 ]
  %.pre-phi = phi i64 [ %.pre, %for.cond.cleanup28.for.cond85.preheader_crit_edge ], [ %24, %for.cond.cleanup28 ]
  %cmp8882 = icmp sgt i64 %.pre-phi, 0
  br i1 %cmp8882, label %for.cond92.preheader.lr.ph, label %for.cond.cleanup89

for.cond92.preheader.lr.ph:                       ; preds = %for.cond63.preheader.us, %for.cond85.preheader
  %add137143 = phi i32 [ %add137, %for.cond85.preheader ], [ %add, %for.cond63.preheader.us ]
  %cmp9580 = icmp sgt i64 %10, 2
  br i1 %cmp9580, label %for.cond92.preheader.us.preheader, label %for.cond.cleanup89

for.cond92.preheader.us.preheader:                ; preds = %for.cond92.preheader.lr.ph
  %wide.trip.count126 = zext i32 %indvars.iv119 to i64
  br label %for.cond92.preheader.us

for.cond92.preheader.us:                          ; preds = %for.cond92.preheader.us.preheader, %for.cond92.for.cond.cleanup96_crit_edge.us
  %indvars.iv123 = phi i64 [ 0, %for.cond92.preheader.us.preheader ], [ %indvars.iv.next124, %for.cond92.for.cond.cleanup96_crit_edge.us ]
  br label %for.body97.us

for.body97.us:                                    ; preds = %for.cond92.preheader.us, %for.body97.us
  %32 = phi ptr [ %0, %for.cond92.preheader.us ], [ %33, %for.body97.us ]
  %indvars.iv116 = phi i64 [ 1, %for.cond92.preheader.us ], [ %indvars.iv.next117, %for.body97.us ]
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1
  %arrayidx100.us = getelementptr inbounds nuw ptr, ptr %pp, i64 %indvars.iv.next117
  %33 = load ptr, ptr %arrayidx100.us, align 8, !tbaa !5
  %arrayidx102.us = getelementptr inbounds nuw i32, ptr %33, i64 %indvars.iv123
  %34 = load i32, ptr %arrayidx102.us, align 4, !tbaa !10
  %arrayidx106.us = getelementptr inbounds nuw i32, ptr %32, i64 %indvars.iv123
  store i32 %34, ptr %arrayidx106.us, align 4, !tbaa !10
  %exitcond122.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count126
  br i1 %exitcond122.not, label %for.cond92.for.cond.cleanup96_crit_edge.us, label %for.body97.us, !llvm.loop !27

for.cond92.for.cond.cleanup96_crit_edge.us:       ; preds = %for.body97.us
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %for.cond.cleanup89, label %for.cond92.preheader.us, !llvm.loop !28

for.cond.cleanup89:                               ; preds = %for.cond92.for.cond.cleanup96_crit_edge.us, %for.cond92.preheader.lr.ph, %for.cond85.preheader
  %add137142 = phi i32 [ %add137, %for.cond85.preheader ], [ %add137143, %for.cond92.preheader.lr.ph ], [ %add137143, %for.cond92.for.cond.cleanup96_crit_edge.us ]
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1
  %indvars.iv.next91 = add i32 %indvars.iv90, -1
  %indvars.iv.next120 = add i32 %indvars.iv119, -1
  %exitcond135.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count134
  br i1 %exitcond135.not, label %for.cond.cleanup, label %for.cond1.preheader, !llvm.loop !29
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #11
  store i32 0, ptr %n, align 4, !tbaa !10
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !10
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 3
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #12
  %cmp16 = icmp sgt i32 %0, 0
  br i1 %cmp16, label %for.body.lr.ph, label %for.cond.cleanup37

for.body.lr.ph:                                   ; preds = %entry
  %mul3 = shl nuw nsw i64 %conv, 2
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %call4 = call noalias ptr @malloc(i64 noundef %mul3) #12
  %arrayidx = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv
  store ptr %call4, ptr %arrayidx, align 8, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond10.preheader, label %for.body, !llvm.loop !30

for.cond10.preheader:                             ; preds = %for.body, %for.cond.cleanup12
  %1 = phi i32 [ %5, %for.cond.cleanup12 ], [ %0, %for.body ]
  %w.023 = phi i32 [ %inc32, %for.cond.cleanup12 ], [ 0, %for.body ]
  %cmp1120 = icmp sgt i32 %1, 0
  br i1 %cmp1120, label %for.cond14.preheader, label %for.cond.cleanup12

for.cond35.preheader:                             ; preds = %for.cond.cleanup12
  %2 = icmp sgt i32 %5, 0
  br i1 %2, label %for.body38, label %for.cond.cleanup37

for.cond14.preheader:                             ; preds = %for.cond10.preheader, %for.cond.cleanup16
  %3 = phi i32 [ %6, %for.cond.cleanup16 ], [ %1, %for.cond10.preheader ]
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.cond.cleanup16 ], [ 0, %for.cond10.preheader ]
  %cmp1518 = icmp sgt i32 %3, 0
  br i1 %cmp1518, label %for.body17.lr.ph, label %for.cond14.preheader.for.cond.cleanup16_crit_edge

for.cond14.preheader.for.cond.cleanup16_crit_edge: ; preds = %for.cond14.preheader
  %.pre = sext i32 %3 to i64
  br label %for.cond.cleanup16

for.body17.lr.ph:                                 ; preds = %for.cond14.preheader
  %arrayidx19 = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv32
  %4 = load ptr, ptr %arrayidx19, align 8, !tbaa !5
  br label %for.body17

for.cond.cleanup12:                               ; preds = %for.cond.cleanup16, %for.cond10.preheader
  %.lcssa = phi i32 [ %1, %for.cond10.preheader ], [ %6, %for.cond.cleanup16 ]
  %call29 = call noundef i32 @_Z3ansiPPi(i32 noundef %.lcssa, ptr noundef %call1)
  %call30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %call29)
  %inc32 = add nuw nsw i32 %w.023, 1
  %5 = load i32, ptr %n, align 4, !tbaa !10
  %cmp6 = icmp slt i32 %inc32, %5
  br i1 %cmp6, label %for.cond10.preheader, label %for.cond35.preheader, !llvm.loop !31

for.cond.cleanup16:                               ; preds = %for.body17, %for.cond14.preheader.for.cond.cleanup16_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond14.preheader.for.cond.cleanup16_crit_edge ], [ %8, %for.body17 ]
  %6 = phi i32 [ %3, %for.cond14.preheader.for.cond.cleanup16_crit_edge ], [ %7, %for.body17 ]
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %cmp11 = icmp slt i64 %indvars.iv.next33, %.pre-phi
  br i1 %cmp11, label %for.cond14.preheader, label %for.cond.cleanup12, !llvm.loop !32

for.body17:                                       ; preds = %for.body17.lr.ph, %for.body17
  %indvars.iv29 = phi i64 [ 0, %for.body17.lr.ph ], [ %indvars.iv.next30, %for.body17 ]
  %arrayidx21 = getelementptr inbounds nuw i32, ptr %4, i64 %indvars.iv29
  %call22 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef %arrayidx21)
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %7 = load i32, ptr %n, align 4, !tbaa !10
  %8 = sext i32 %7 to i64
  %cmp15 = icmp slt i64 %indvars.iv.next30, %8
  br i1 %cmp15, label %for.body17, label %for.cond.cleanup16, !llvm.loop !34

for.cond.cleanup37:                               ; preds = %for.body38, %entry, %for.cond35.preheader
  call void @free(ptr noundef %call1) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #11
  ret i32 0

for.body38:                                       ; preds = %for.cond35.preheader, %for.body38
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.body38 ], [ 0, %for.cond35.preheader ]
  %arrayidx40 = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv35
  %9 = load ptr, ptr %arrayidx40, align 8, !tbaa !5
  call void @free(ptr noundef %9) #11
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %10 = load i32, ptr %n, align 4, !tbaa !10
  %11 = sext i32 %10 to i64
  %cmp36 = icmp slt i64 %indvars.iv.next36, %11
  br i1 %cmp36, label %for.body38, label %for.cond.cleanup37, !llvm.loop !35
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 int", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !13, !14, !16}
!19 = distinct !{!19, !13, !14, !16, !17}
!20 = distinct !{!20, !13, !14, !16}
!21 = distinct !{!21, !13, !14, !16, !17}
!22 = distinct !{!22, !13, !14}
!23 = distinct !{!23, !13, !14, !16}
!24 = distinct !{!24, !13, !14}
!25 = distinct !{!25, !13, !14}
!26 = distinct !{!26, !13, !14}
!27 = distinct !{!27, !13, !14}
!28 = distinct !{!28, !13, !14}
!29 = distinct !{!29, !13, !14}
!30 = distinct !{!30, !13, !14}
!31 = distinct !{!31, !13, !14}
!32 = distinct !{!32, !13, !14, !33}
!33 = !{!"llvm.loop.unswitch.partial.disable"}
!34 = distinct !{!34, !13, !14}
!35 = distinct !{!35, !13, !14}
