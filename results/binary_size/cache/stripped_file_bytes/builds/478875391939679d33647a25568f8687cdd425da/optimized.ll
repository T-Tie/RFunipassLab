; ModuleID = '<stdin>'
source_filename = "/tmp/tmp34chhjcq.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z4xiaoPA100_ii(ptr noundef captures(none) %a, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp55 = icmp sgt i32 %n, 0
  br i1 %cmp55, label %for.body.us.us.preheader, label %for.end77

for.body.us.us.preheader:                         ; preds = %entry
  %wide.trip.count112 = zext nneg i32 %n to i64
  %min.iters.check130 = icmp ult i32 %n, 4
  %n.vec133 = and i64 %wide.trip.count112, 2147483644
  %cmp.n141 = icmp eq i64 %n.vec133, %wide.trip.count112
  %min.iters.check = icmp ult i32 %n, 4
  %n.vec = and i64 %wide.trip.count112, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count112
  br label %for.body.us.us

for.body.us.us:                                   ; preds = %for.body.us.us.preheader, %for.inc31.us.us
  %indvars.iv109 = phi i64 [ 0, %for.body.us.us.preheader ], [ %indvars.iv.next110, %for.inc31.us.us ]
  %arrayidx.us.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv109
  %0 = load i32, ptr %arrayidx.us.us, align 4, !tbaa !5
  br i1 %min.iters.check130, label %for.body4.us.us.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %for.body.us.us
  %broadcast.splatinsert134 = insertelement <4 x i32> poison, i32 %0, i64 0
  %broadcast.splat135 = shufflevector <4 x i32> %broadcast.splatinsert134, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph131
  %index137 = phi i64 [ 0, %vector.ph131 ], [ %index.next139, %vector.body136 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat135, %vector.ph131 ], [ %2, %vector.body136 ]
  %1 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv109, i64 %index137
  %wide.load138 = load <4 x i32>, ptr %1, align 4, !tbaa !5
  %2 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load138, <4 x i32> %vec.phi)
  %index.next139 = add nuw i64 %index137, 4
  %3 = icmp eq i64 %index.next139, %n.vec133
  br i1 %3, label %middle.block140, label %vector.body136, !llvm.loop !9

middle.block140:                                  ; preds = %vector.body136
  %4 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %2)
  br i1 %cmp.n141, label %for.cond2.for.end_crit_edge.us.us, label %for.body4.us.us.preheader

for.body4.us.us.preheader:                        ; preds = %for.body.us.us, %middle.block140
  %indvars.iv.ph = phi i64 [ 0, %for.body.us.us ], [ %n.vec133, %middle.block140 ]
  %min.051.us.us.ph = phi i32 [ %0, %for.body.us.us ], [ %4, %middle.block140 ]
  br label %for.body4.us.us

for.inc31.us.us:                                  ; preds = %for.body18.us.us, %middle.block, %for.cond2.for.end_crit_edge.us.us
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  %exitcond113.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count112
  br i1 %exitcond113.not, label %for.body36.lr.ph, label %for.body.us.us, !llvm.loop !14

for.body18.us.us:                                 ; preds = %for.body18.us.us.preheader159, %for.body18.us.us
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %for.body18.us.us ], [ %indvars.iv104.ph, %for.body18.us.us.preheader159 ]
  %arrayidx22.us.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv109, i64 %indvars.iv104
  %5 = load i32, ptr %arrayidx22.us.us, align 4, !tbaa !5
  %sub.us.us = sub nsw i32 %5, %spec.select.us.us.lcssa
  store i32 %sub.us.us, ptr %arrayidx22.us.us, align 4, !tbaa !5
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %exitcond108.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count112
  br i1 %exitcond108.not, label %for.inc31.us.us, label %for.body18.us.us, !llvm.loop !15

for.body4.us.us:                                  ; preds = %for.body4.us.us.preheader, %for.body4.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4.us.us ], [ %indvars.iv.ph, %for.body4.us.us.preheader ]
  %min.051.us.us = phi i32 [ %spec.select.us.us, %for.body4.us.us ], [ %min.051.us.us.ph, %for.body4.us.us.preheader ]
  %arrayidx8.us.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv109, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx8.us.us, align 4, !tbaa !5
  %spec.select.us.us = tail call i32 @llvm.smin.i32(i32 %6, i32 %min.051.us.us)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count112
  br i1 %exitcond.not, label %for.cond2.for.end_crit_edge.us.us, label %for.body4.us.us, !llvm.loop !16

for.cond2.for.end_crit_edge.us.us:                ; preds = %for.body4.us.us, %middle.block140
  %spec.select.us.us.lcssa = phi i32 [ %4, %middle.block140 ], [ %spec.select.us.us, %for.body4.us.us ]
  %cmp14.us.us = icmp sgt i32 %spec.select.us.us.lcssa, 0
  br i1 %cmp14.us.us, label %for.body18.us.us.preheader, label %for.inc31.us.us

for.body18.us.us.preheader:                       ; preds = %for.cond2.for.end_crit_edge.us.us
  br i1 %min.iters.check, label %for.body18.us.us.preheader159, label %vector.ph

vector.ph:                                        ; preds = %for.body18.us.us.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.select.us.us.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %7 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv109, i64 %index
  %wide.load = load <4 x i32>, ptr %7, align 4, !tbaa !5
  %8 = sub nsw <4 x i32> %wide.load, %broadcast.splat
  store <4 x i32> %8, ptr %7, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.inc31.us.us, label %for.body18.us.us.preheader159

for.body18.us.us.preheader159:                    ; preds = %for.body18.us.us.preheader, %middle.block
  %indvars.iv104.ph = phi i64 [ 0, %for.body18.us.us.preheader ], [ %n.vec, %middle.block ]
  br label %for.body18.us.us

for.body36.lr.ph:                                 ; preds = %for.inc31.us.us
  %wide.trip.count127 = zext nneg i32 %n to i64
  %min.iters.check144 = icmp ult i32 %n, 4
  %n.vec147 = and i64 %wide.trip.count112, 2147483644
  %cmp.n155 = icmp eq i64 %n.vec147, %wide.trip.count112
  br label %for.body36.us

for.body36.us:                                    ; preds = %for.inc75.us, %for.body36.lr.ph
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %for.inc75.us ], [ 0, %for.body36.lr.ph ]
  %arrayidx39.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv124
  %10 = load i32, ptr %arrayidx39.us, align 4, !tbaa !5
  br i1 %min.iters.check144, label %for.body42.us.preheader, label %vector.ph145

vector.ph145:                                     ; preds = %for.body36.us
  %broadcast.splatinsert148 = insertelement <4 x i32> poison, i32 %10, i64 0
  %broadcast.splat149 = shufflevector <4 x i32> %broadcast.splatinsert148, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph145
  %index151 = phi i64 [ 0, %vector.ph145 ], [ %index.next153, %vector.body150 ]
  %vec.phi152 = phi <4 x i32> [ %broadcast.splat149, %vector.ph145 ], [ %26, %vector.body150 ]
  %11 = or disjoint i64 %index151, 1
  %12 = or disjoint i64 %index151, 2
  %13 = or disjoint i64 %index151, 3
  %14 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %index151, i64 %indvars.iv124
  %15 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %11, i64 %indvars.iv124
  %16 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %12, i64 %indvars.iv124
  %17 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %13, i64 %indvars.iv124
  %18 = load i32, ptr %14, align 4, !tbaa !5
  %19 = load i32, ptr %15, align 4, !tbaa !5
  %20 = load i32, ptr %16, align 4, !tbaa !5
  %21 = load i32, ptr %17, align 4, !tbaa !5
  %22 = insertelement <4 x i32> poison, i32 %18, i64 0
  %23 = insertelement <4 x i32> %22, i32 %19, i64 1
  %24 = insertelement <4 x i32> %23, i32 %20, i64 2
  %25 = insertelement <4 x i32> %24, i32 %21, i64 3
  %26 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %25, <4 x i32> %vec.phi152)
  %index.next153 = add nuw i64 %index151, 4
  %27 = icmp eq i64 %index.next153, %n.vec147
  br i1 %27, label %middle.block154, label %vector.body150, !llvm.loop !18

middle.block154:                                  ; preds = %vector.body150
  %28 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %26)
  br i1 %cmp.n155, label %for.cond40.for.end56_crit_edge.us, label %for.body42.us.preheader

for.body42.us.preheader:                          ; preds = %for.body36.us, %middle.block154
  %indvars.iv114.ph = phi i64 [ 0, %for.body36.us ], [ %n.vec147, %middle.block154 ]
  %min.277.us.ph = phi i32 [ %10, %for.body36.us ], [ %28, %middle.block154 ]
  br label %for.body42.us

for.inc75.us:                                     ; preds = %for.body61.us, %for.cond40.for.end56_crit_edge.us
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %for.end77, label %for.body36.us, !llvm.loop !19

for.body61.us:                                    ; preds = %for.cond40.for.end56_crit_edge.us, %for.body61.us
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.body61.us ], [ 0, %for.cond40.for.end56_crit_edge.us ]
  %arrayidx65.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv119, i64 %indvars.iv124
  %29 = load i32, ptr %arrayidx65.us, align 4, !tbaa !5
  %sub66.us = sub nsw i32 %29, %spec.select49.us.lcssa
  store i32 %sub66.us, ptr %arrayidx65.us, align 4, !tbaa !5
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count127
  br i1 %exitcond123.not, label %for.inc75.us, label %for.body61.us, !llvm.loop !20

for.body42.us:                                    ; preds = %for.body42.us.preheader, %for.body42.us
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %for.body42.us ], [ %indvars.iv114.ph, %for.body42.us.preheader ]
  %min.277.us = phi i32 [ %spec.select49.us, %for.body42.us ], [ %min.277.us.ph, %for.body42.us.preheader ]
  %arrayidx46.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv114, i64 %indvars.iv124
  %30 = load i32, ptr %arrayidx46.us, align 4, !tbaa !5
  %spec.select49.us = tail call i32 @llvm.smin.i32(i32 %30, i32 %min.277.us)
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count127
  br i1 %exitcond118.not, label %for.cond40.for.end56_crit_edge.us, label %for.body42.us, !llvm.loop !21

for.cond40.for.end56_crit_edge.us:                ; preds = %for.body42.us, %middle.block154
  %spec.select49.us.lcssa = phi i32 [ %28, %middle.block154 ], [ %spec.select49.us, %for.body42.us ]
  %cmp57.us = icmp slt i32 %spec.select49.us.lcssa, 1
  br i1 %cmp57.us, label %for.inc75.us, label %for.body61.us

for.end77:                                        ; preds = %for.inc75.us, %entry
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z4movePA100_ii(ptr noundef captures(none) %a, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp23 = icmp sgt i32 %n, 0
  %or.cond = icmp sgt i32 %n, 2
  br i1 %or.cond, label %for.cond1.preheader.us.preheader, label %for.end33

for.cond1.preheader.us.preheader:                 ; preds = %entry
  %wide.trip.count39 = zext nneg i32 %n to i64
  %0 = add nsw i64 %wide.trip.count39, -2
  %min.iters.check = icmp ult i64 %0, 4
  %n.vec = and i64 %0, -4
  %1 = or disjoint i64 %n.vec, 2
  %cmp.n = icmp eq i64 %0, %n.vec
  br label %for.cond1.preheader.us

for.cond1.preheader.us:                           ; preds = %for.cond1.preheader.us.preheader, %for.cond1.for.inc10_crit_edge.us
  %indvars.iv36 = phi i64 [ 0, %for.cond1.preheader.us.preheader ], [ %indvars.iv.next37, %for.cond1.for.inc10_crit_edge.us ]
  br i1 %min.iters.check, label %for.body3.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond1.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond1.preheader.us ]
  %offset.idx = or disjoint i64 %index, 2
  %2 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv36, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %2, align 4, !tbaa !5
  %3 = or disjoint i64 %index, 1
  %4 = getelementptr inbounds [100 x i32], ptr %a, i64 %indvars.iv36, i64 %3
  store <4 x i32> %wide.load, ptr %4, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %5 = icmp eq i64 %index.next, %n.vec
  br i1 %5, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond1.for.inc10_crit_edge.us, label %for.body3.us.preheader

for.body3.us.preheader:                           ; preds = %for.cond1.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 2, %for.cond1.preheader.us ], [ %1, %middle.block ]
  br label %for.body3.us

for.body3.us:                                     ; preds = %for.body3.us.preheader, %for.body3.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3.us ], [ %indvars.iv.ph, %for.body3.us.preheader ]
  %arrayidx5.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv36, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx5.us, align 4, !tbaa !5
  %7 = add nsw i64 %indvars.iv, -1
  %arrayidx9.us = getelementptr inbounds [100 x i32], ptr %a, i64 %indvars.iv36, i64 %7
  store i32 %6, ptr %arrayidx9.us, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count39
  br i1 %exitcond.not, label %for.cond1.for.inc10_crit_edge.us, label %for.body3.us, !llvm.loop !23

for.cond1.for.inc10_crit_edge.us:                 ; preds = %for.body3.us, %middle.block
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %for.cond13.preheader, label %for.cond1.preheader.us, !llvm.loop !24

for.cond13.preheader:                             ; preds = %for.cond1.for.inc10_crit_edge.us
  br i1 %cmp23, label %for.cond16.preheader.lr.ph, label %for.end33

for.cond16.preheader.lr.ph:                       ; preds = %for.cond13.preheader
  %invariant.gep = getelementptr i8, ptr %a, i64 -400
  %wide.trip.count49 = zext nneg i32 %n to i64
  br label %for.cond16.preheader.us

for.cond16.preheader.us:                          ; preds = %for.cond16.preheader.lr.ph, %for.cond16.for.inc31_crit_edge.us
  %indvars.iv46 = phi i64 [ 0, %for.cond16.preheader.lr.ph ], [ %indvars.iv.next47, %for.cond16.for.inc31_crit_edge.us ]
  %invariant.gep27.us = getelementptr [100 x i32], ptr %invariant.gep, i64 0, i64 %indvars.iv46
  br label %for.body18.us

for.body18.us:                                    ; preds = %for.cond16.preheader.us, %for.body18.us
  %indvars.iv41 = phi i64 [ 2, %for.cond16.preheader.us ], [ %indvars.iv.next42, %for.body18.us ]
  %arrayidx22.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv41, i64 %indvars.iv46
  %8 = load i32, ptr %arrayidx22.us, align 4, !tbaa !5
  %gep28.us = getelementptr [100 x i32], ptr %invariant.gep27.us, i64 %indvars.iv41
  store i32 %8, ptr %gep28.us, align 4, !tbaa !5
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count49
  br i1 %exitcond45.not, label %for.cond16.for.inc31_crit_edge.us, label %for.body18.us, !llvm.loop !25

for.cond16.for.inc31_crit_edge.us:                ; preds = %for.body18.us
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count49
  br i1 %exitcond50.not, label %for.end33, label %for.cond16.preheader.us, !llvm.loop !26

for.end33:                                        ; preds = %for.cond16.for.inc31_crit_edge.us, %entry, %for.cond13.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z5countPA100_iii(ptr noundef captures(none) %a, i32 noundef %n, i32 noundef %s) local_unnamed_addr #0 {
entry:
  %cmp16 = icmp eq i32 %n, 1
  br i1 %cmp16, label %return, label %if.else.lr.ph

if.else.lr.ph:                                    ; preds = %entry
  %arrayidx112 = getelementptr inbounds nuw i8, ptr %a, i64 404
  %invariant.gep.i = getelementptr i8, ptr %a, i64 -400
  br label %if.else

if.else:                                          ; preds = %if.else.lr.ph, %_Z4movePA100_ii.exit
  %s.tr18 = phi i32 [ %s, %if.else.lr.ph ], [ %add15, %_Z4movePA100_ii.exit ]
  %n.tr17 = phi i32 [ %n, %if.else.lr.ph ], [ %sub, %_Z4movePA100_ii.exit ]
  %0 = zext i32 %n.tr17 to i64
  %1 = zext i32 %n.tr17 to i64
  %2 = zext i32 %n.tr17 to i64
  %3 = zext i32 %n.tr17 to i64
  %4 = add nsw i64 %3, -2
  %cmp55.i = icmp sgt i32 %n.tr17, 0
  br i1 %cmp55.i, label %for.body.us.us.preheader.i, label %_Z4xiaoPA100_ii.exit.thread

_Z4xiaoPA100_ii.exit.thread:                      ; preds = %if.else
  %5 = load i32, ptr %arrayidx112, align 4, !tbaa !5
  br label %_Z4movePA100_ii.exit

for.body.us.us.preheader.i:                       ; preds = %if.else
  %wide.trip.count112.i = zext nneg i32 %n.tr17 to i64
  %min.iters.check46 = icmp ult i32 %n.tr17, 4
  %n.vec49 = and i64 %0, 2147483644
  %cmp.n58 = icmp eq i64 %n.vec49, %0
  %min.iters.check32 = icmp ult i32 %n.tr17, 4
  %n.vec35 = and i64 %1, 2147483644
  %cmp.n43 = icmp eq i64 %n.vec35, %1
  br label %for.body.us.us.i

for.body.us.us.i:                                 ; preds = %for.inc31.us.us.i, %for.body.us.us.preheader.i
  %indvars.iv109.i = phi i64 [ 0, %for.body.us.us.preheader.i ], [ %indvars.iv.next110.i, %for.inc31.us.us.i ]
  %arrayidx.us.us.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv109.i
  %6 = load i32, ptr %arrayidx.us.us.i, align 4, !tbaa !5
  br i1 %min.iters.check46, label %for.body4.us.us.i.preheader, label %vector.ph47

vector.ph47:                                      ; preds = %for.body.us.us.i
  %broadcast.splatinsert50 = insertelement <4 x i32> poison, i32 %6, i64 0
  %broadcast.splat51 = shufflevector <4 x i32> %broadcast.splatinsert50, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph47
  %index53 = phi i64 [ 0, %vector.ph47 ], [ %index.next56, %vector.body52 ]
  %vec.phi54 = phi <4 x i32> [ %broadcast.splat51, %vector.ph47 ], [ %8, %vector.body52 ]
  %7 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv109.i, i64 %index53
  %wide.load55 = load <4 x i32>, ptr %7, align 4, !tbaa !5
  %8 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load55, <4 x i32> %vec.phi54)
  %index.next56 = add nuw i64 %index53, 4
  %9 = icmp eq i64 %index.next56, %n.vec49
  br i1 %9, label %middle.block57, label %vector.body52, !llvm.loop !27

middle.block57:                                   ; preds = %vector.body52
  %10 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %8)
  br i1 %cmp.n58, label %for.cond2.for.end_crit_edge.us.us.i, label %for.body4.us.us.i.preheader

for.body4.us.us.i.preheader:                      ; preds = %for.body.us.us.i, %middle.block57
  %indvars.iv.i.ph = phi i64 [ 0, %for.body.us.us.i ], [ %n.vec49, %middle.block57 ]
  %min.051.us.us.i.ph = phi i32 [ %6, %for.body.us.us.i ], [ %10, %middle.block57 ]
  br label %for.body4.us.us.i

for.inc31.us.us.i:                                ; preds = %for.body18.us.us.i, %middle.block42, %for.cond2.for.end_crit_edge.us.us.i
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1
  %exitcond113.not.i = icmp eq i64 %indvars.iv.next110.i, %wide.trip.count112.i
  br i1 %exitcond113.not.i, label %for.body36.us.i.preheader, label %for.body.us.us.i, !llvm.loop !14

for.body36.us.i.preheader:                        ; preds = %for.inc31.us.us.i
  %min.iters.check21 = icmp ult i32 %n.tr17, 4
  %n.vec24 = and i64 %2, 2147483644
  %cmp.n29 = icmp eq i64 %n.vec24, %2
  br label %for.body36.us.i

for.body18.us.us.i:                               ; preds = %for.body18.us.us.i.preheader61, %for.body18.us.us.i
  %indvars.iv104.i = phi i64 [ %indvars.iv.next105.i, %for.body18.us.us.i ], [ %indvars.iv104.i.ph, %for.body18.us.us.i.preheader61 ]
  %arrayidx22.us.us.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv109.i, i64 %indvars.iv104.i
  %11 = load i32, ptr %arrayidx22.us.us.i, align 4, !tbaa !5
  %sub.us.us.i = sub nsw i32 %11, %spec.select.us.us.i.lcssa
  store i32 %sub.us.us.i, ptr %arrayidx22.us.us.i, align 4, !tbaa !5
  %indvars.iv.next105.i = add nuw nsw i64 %indvars.iv104.i, 1
  %exitcond108.not.i = icmp eq i64 %indvars.iv.next105.i, %wide.trip.count112.i
  br i1 %exitcond108.not.i, label %for.inc31.us.us.i, label %for.body18.us.us.i, !llvm.loop !28

for.body4.us.us.i:                                ; preds = %for.body4.us.us.i.preheader, %for.body4.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body4.us.us.i ], [ %indvars.iv.i.ph, %for.body4.us.us.i.preheader ]
  %min.051.us.us.i = phi i32 [ %spec.select.us.us.i, %for.body4.us.us.i ], [ %min.051.us.us.i.ph, %for.body4.us.us.i.preheader ]
  %arrayidx8.us.us.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv109.i, i64 %indvars.iv.i
  %12 = load i32, ptr %arrayidx8.us.us.i, align 4, !tbaa !5
  %spec.select.us.us.i = tail call i32 @llvm.smin.i32(i32 %12, i32 %min.051.us.us.i)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count112.i
  br i1 %exitcond.not.i, label %for.cond2.for.end_crit_edge.us.us.i, label %for.body4.us.us.i, !llvm.loop !29

for.cond2.for.end_crit_edge.us.us.i:              ; preds = %for.body4.us.us.i, %middle.block57
  %spec.select.us.us.i.lcssa = phi i32 [ %10, %middle.block57 ], [ %spec.select.us.us.i, %for.body4.us.us.i ]
  %cmp14.us.us.i = icmp sgt i32 %spec.select.us.us.i.lcssa, 0
  br i1 %cmp14.us.us.i, label %for.body18.us.us.i.preheader, label %for.inc31.us.us.i

for.body18.us.us.i.preheader:                     ; preds = %for.cond2.for.end_crit_edge.us.us.i
  br i1 %min.iters.check32, label %for.body18.us.us.i.preheader61, label %vector.ph33

vector.ph33:                                      ; preds = %for.body18.us.us.i.preheader
  %broadcast.splatinsert36 = insertelement <4 x i32> poison, i32 %spec.select.us.us.i.lcssa, i64 0
  %broadcast.splat37 = shufflevector <4 x i32> %broadcast.splatinsert36, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph33
  %index39 = phi i64 [ 0, %vector.ph33 ], [ %index.next41, %vector.body38 ]
  %13 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv109.i, i64 %index39
  %wide.load40 = load <4 x i32>, ptr %13, align 4, !tbaa !5
  %14 = sub nsw <4 x i32> %wide.load40, %broadcast.splat37
  store <4 x i32> %14, ptr %13, align 4, !tbaa !5
  %index.next41 = add nuw i64 %index39, 4
  %15 = icmp eq i64 %index.next41, %n.vec35
  br i1 %15, label %middle.block42, label %vector.body38, !llvm.loop !30

middle.block42:                                   ; preds = %vector.body38
  br i1 %cmp.n43, label %for.inc31.us.us.i, label %for.body18.us.us.i.preheader61

for.body18.us.us.i.preheader61:                   ; preds = %for.body18.us.us.i.preheader, %middle.block42
  %indvars.iv104.i.ph = phi i64 [ 0, %for.body18.us.us.i.preheader ], [ %n.vec35, %middle.block42 ]
  br label %for.body18.us.us.i

for.body36.us.i:                                  ; preds = %for.body36.us.i.preheader, %for.inc75.us.i
  %indvars.iv124.i = phi i64 [ %indvars.iv.next125.i, %for.inc75.us.i ], [ 0, %for.body36.us.i.preheader ]
  %arrayidx39.us.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv124.i
  %16 = load i32, ptr %arrayidx39.us.i, align 4, !tbaa !5
  br i1 %min.iters.check21, label %for.body42.us.i.preheader, label %vector.ph22

vector.ph22:                                      ; preds = %for.body36.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %16, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body25

vector.body25:                                    ; preds = %vector.body25, %vector.ph22
  %index26 = phi i64 [ 0, %vector.ph22 ], [ %index.next27, %vector.body25 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph22 ], [ %32, %vector.body25 ]
  %17 = or disjoint i64 %index26, 1
  %18 = or disjoint i64 %index26, 2
  %19 = or disjoint i64 %index26, 3
  %20 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %index26, i64 %indvars.iv124.i
  %21 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %17, i64 %indvars.iv124.i
  %22 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %18, i64 %indvars.iv124.i
  %23 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %19, i64 %indvars.iv124.i
  %24 = load i32, ptr %20, align 4, !tbaa !5
  %25 = load i32, ptr %21, align 4, !tbaa !5
  %26 = load i32, ptr %22, align 4, !tbaa !5
  %27 = load i32, ptr %23, align 4, !tbaa !5
  %28 = insertelement <4 x i32> poison, i32 %24, i64 0
  %29 = insertelement <4 x i32> %28, i32 %25, i64 1
  %30 = insertelement <4 x i32> %29, i32 %26, i64 2
  %31 = insertelement <4 x i32> %30, i32 %27, i64 3
  %32 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %31, <4 x i32> %vec.phi)
  %index.next27 = add nuw i64 %index26, 4
  %33 = icmp eq i64 %index.next27, %n.vec24
  br i1 %33, label %middle.block28, label %vector.body25, !llvm.loop !31

middle.block28:                                   ; preds = %vector.body25
  %34 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %32)
  br i1 %cmp.n29, label %for.cond40.for.end56_crit_edge.us.i, label %for.body42.us.i.preheader

for.body42.us.i.preheader:                        ; preds = %for.body36.us.i, %middle.block28
  %indvars.iv114.i.ph = phi i64 [ 0, %for.body36.us.i ], [ %n.vec24, %middle.block28 ]
  %min.277.us.i.ph = phi i32 [ %16, %for.body36.us.i ], [ %34, %middle.block28 ]
  br label %for.body42.us.i

for.inc75.us.i:                                   ; preds = %for.body61.us.i, %for.cond40.for.end56_crit_edge.us.i
  %indvars.iv.next125.i = add nuw nsw i64 %indvars.iv124.i, 1
  %exitcond128.not.i = icmp eq i64 %indvars.iv.next125.i, %wide.trip.count112.i
  br i1 %exitcond128.not.i, label %_Z4xiaoPA100_ii.exit, label %for.body36.us.i, !llvm.loop !19

for.body61.us.i:                                  ; preds = %for.cond40.for.end56_crit_edge.us.i, %for.body61.us.i
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i, %for.body61.us.i ], [ 0, %for.cond40.for.end56_crit_edge.us.i ]
  %arrayidx65.us.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv119.i, i64 %indvars.iv124.i
  %35 = load i32, ptr %arrayidx65.us.i, align 4, !tbaa !5
  %sub66.us.i = sub nsw i32 %35, %spec.select49.us.i.lcssa
  store i32 %sub66.us.i, ptr %arrayidx65.us.i, align 4, !tbaa !5
  %indvars.iv.next120.i = add nuw nsw i64 %indvars.iv119.i, 1
  %exitcond123.not.i = icmp eq i64 %indvars.iv.next120.i, %wide.trip.count112.i
  br i1 %exitcond123.not.i, label %for.inc75.us.i, label %for.body61.us.i, !llvm.loop !20

for.body42.us.i:                                  ; preds = %for.body42.us.i.preheader, %for.body42.us.i
  %indvars.iv114.i = phi i64 [ %indvars.iv.next115.i, %for.body42.us.i ], [ %indvars.iv114.i.ph, %for.body42.us.i.preheader ]
  %min.277.us.i = phi i32 [ %spec.select49.us.i, %for.body42.us.i ], [ %min.277.us.i.ph, %for.body42.us.i.preheader ]
  %arrayidx46.us.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv114.i, i64 %indvars.iv124.i
  %36 = load i32, ptr %arrayidx46.us.i, align 4, !tbaa !5
  %spec.select49.us.i = tail call i32 @llvm.smin.i32(i32 %36, i32 %min.277.us.i)
  %indvars.iv.next115.i = add nuw nsw i64 %indvars.iv114.i, 1
  %exitcond118.not.i = icmp eq i64 %indvars.iv.next115.i, %wide.trip.count112.i
  br i1 %exitcond118.not.i, label %for.cond40.for.end56_crit_edge.us.i, label %for.body42.us.i, !llvm.loop !32

for.cond40.for.end56_crit_edge.us.i:              ; preds = %for.body42.us.i, %middle.block28
  %spec.select49.us.i.lcssa = phi i32 [ %34, %middle.block28 ], [ %spec.select49.us.i, %for.body42.us.i ]
  %cmp57.us.i = icmp slt i32 %spec.select49.us.i.lcssa, 1
  br i1 %cmp57.us.i, label %for.inc75.us.i, label %for.body61.us.i

_Z4xiaoPA100_ii.exit:                             ; preds = %for.inc75.us.i
  %37 = load i32, ptr %arrayidx112, align 4, !tbaa !5
  %or.cond.i = icmp sgt i32 %n.tr17, 2
  br i1 %or.cond.i, label %for.cond1.preheader.us.i.preheader, label %_Z4movePA100_ii.exit

for.cond1.preheader.us.i.preheader:               ; preds = %_Z4xiaoPA100_ii.exit
  %min.iters.check = icmp ult i64 %4, 4
  %n.vec = and i64 %4, -4
  %38 = or disjoint i64 %n.vec, 2
  %cmp.n = icmp eq i64 %4, %n.vec
  br label %for.cond1.preheader.us.i

for.cond1.preheader.us.i:                         ; preds = %for.cond1.preheader.us.i.preheader, %for.cond1.for.inc10_crit_edge.us.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %for.cond1.for.inc10_crit_edge.us.i ], [ 0, %for.cond1.preheader.us.i.preheader ]
  br i1 %min.iters.check, label %for.body3.us.i.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond1.preheader.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond1.preheader.us.i ]
  %offset.idx = or disjoint i64 %index, 2
  %39 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv36.i, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %39, align 4, !tbaa !5
  %40 = or disjoint i64 %index, 1
  %41 = getelementptr inbounds [100 x i32], ptr %a, i64 %indvars.iv36.i, i64 %40
  store <4 x i32> %wide.load, ptr %41, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %42 = icmp eq i64 %index.next, %n.vec
  br i1 %42, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond1.for.inc10_crit_edge.us.i, label %for.body3.us.i.preheader

for.body3.us.i.preheader:                         ; preds = %for.cond1.preheader.us.i, %middle.block
  %indvars.iv.i9.ph = phi i64 [ 2, %for.cond1.preheader.us.i ], [ %38, %middle.block ]
  br label %for.body3.us.i

for.body3.us.i:                                   ; preds = %for.body3.us.i.preheader, %for.body3.us.i
  %indvars.iv.i9 = phi i64 [ %indvars.iv.next.i10, %for.body3.us.i ], [ %indvars.iv.i9.ph, %for.body3.us.i.preheader ]
  %arrayidx5.us.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv36.i, i64 %indvars.iv.i9
  %43 = load i32, ptr %arrayidx5.us.i, align 4, !tbaa !5
  %44 = add nsw i64 %indvars.iv.i9, -1
  %arrayidx9.us.i = getelementptr inbounds [100 x i32], ptr %a, i64 %indvars.iv36.i, i64 %44
  store i32 %43, ptr %arrayidx9.us.i, align 4, !tbaa !5
  %indvars.iv.next.i10 = add nuw nsw i64 %indvars.iv.i9, 1
  %exitcond.not.i11 = icmp eq i64 %indvars.iv.next.i10, %wide.trip.count112.i
  br i1 %exitcond.not.i11, label %for.cond1.for.inc10_crit_edge.us.i, label %for.body3.us.i, !llvm.loop !34

for.cond1.for.inc10_crit_edge.us.i:               ; preds = %for.body3.us.i, %middle.block
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count112.i
  br i1 %exitcond40.not.i, label %for.cond16.preheader.us.i, label %for.cond1.preheader.us.i, !llvm.loop !24

for.cond16.preheader.us.i:                        ; preds = %for.cond1.for.inc10_crit_edge.us.i, %for.cond16.for.inc31_crit_edge.us.i
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i, %for.cond16.for.inc31_crit_edge.us.i ], [ 0, %for.cond1.for.inc10_crit_edge.us.i ]
  %invariant.gep27.us.i = getelementptr [100 x i32], ptr %invariant.gep.i, i64 0, i64 %indvars.iv46.i
  br label %for.body18.us.i

for.body18.us.i:                                  ; preds = %for.body18.us.i, %for.cond16.preheader.us.i
  %indvars.iv41.i = phi i64 [ 2, %for.cond16.preheader.us.i ], [ %indvars.iv.next42.i, %for.body18.us.i ]
  %arrayidx22.us.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv41.i, i64 %indvars.iv46.i
  %45 = load i32, ptr %arrayidx22.us.i, align 4, !tbaa !5
  %gep28.us.i = getelementptr [100 x i32], ptr %invariant.gep27.us.i, i64 %indvars.iv41.i
  store i32 %45, ptr %gep28.us.i, align 4, !tbaa !5
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count112.i
  br i1 %exitcond45.not.i, label %for.cond16.for.inc31_crit_edge.us.i, label %for.body18.us.i, !llvm.loop !25

for.cond16.for.inc31_crit_edge.us.i:              ; preds = %for.body18.us.i
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1
  %exitcond50.not.i = icmp eq i64 %indvars.iv.next47.i, %wide.trip.count112.i
  br i1 %exitcond50.not.i, label %_Z4movePA100_ii.exit, label %for.cond16.preheader.us.i, !llvm.loop !26

_Z4movePA100_ii.exit:                             ; preds = %for.cond16.for.inc31_crit_edge.us.i, %_Z4xiaoPA100_ii.exit.thread, %_Z4xiaoPA100_ii.exit
  %.pn = phi i32 [ %5, %_Z4xiaoPA100_ii.exit.thread ], [ %37, %_Z4xiaoPA100_ii.exit ], [ %37, %for.cond16.for.inc31_crit_edge.us.i ]
  %add15 = add nsw i32 %.pn, %s.tr18
  %sub = add nsw i32 %n.tr17, -1
  %cmp = icmp eq i32 %sub, 1
  br i1 %cmp, label %return, label %if.else

return:                                           ; preds = %_Z4movePA100_ii.exit, %entry
  %s.tr.lcssa = phi i32 [ %s, %entry ], [ %add15, %_Z4movePA100_ii.exit ]
  ret i32 %s.tr.lcssa
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp10 = icmp sgt i32 %0, 0
  br i1 %cmp10, label %for.cond.preheader, label %while.end

for.cond.preheaderthread-pre-split:               ; preds = %for.end10
  %dec = add nsw i32 %t.011, -1
  %.pr = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry, %for.cond.preheaderthread-pre-split
  %1 = phi i32 [ %.pr, %for.cond.preheaderthread-pre-split ], [ %0, %entry ]
  %t.011 = phi i32 [ %dec, %for.cond.preheaderthread-pre-split ], [ %0, %entry ]
  %cmp18 = icmp sgt i32 %1, 0
  br i1 %cmp18, label %for.cond2.preheader, label %for.end10

for.cond2.preheader:                              ; preds = %for.cond.preheader, %for.inc8
  %2 = phi i32 [ %5, %for.inc8 ], [ %1, %for.cond.preheader ]
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.inc8 ], [ 0, %for.cond.preheader ]
  %cmp36 = icmp sgt i32 %2, 0
  br i1 %cmp36, label %for.body4, label %for.cond2.preheader.for.inc8_crit_edge

for.cond2.preheader.for.inc8_crit_edge:           ; preds = %for.cond2.preheader
  %.pre = sext i32 %2 to i64
  br label %for.inc8

for.body4:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond2.preheader ]
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv15, i64 %indvars.iv
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp3 = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp3, label %for.body4, label %for.inc8, !llvm.loop !35

for.inc8:                                         ; preds = %for.body4, %for.cond2.preheader.for.inc8_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond2.preheader.for.inc8_crit_edge ], [ %4, %for.body4 ]
  %5 = phi i32 [ %2, %for.cond2.preheader.for.inc8_crit_edge ], [ %3, %for.body4 ]
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %cmp1 = icmp slt i64 %indvars.iv.next16, %.pre-phi
  br i1 %cmp1, label %for.cond2.preheader, label %for.end10, !llvm.loop !36

for.end10:                                        ; preds = %for.inc8, %for.cond.preheader
  %.lcssa = phi i32 [ %1, %for.cond.preheader ], [ %5, %for.inc8 ]
  %call11 = call noundef i32 @_Z5countPA100_iii(ptr noundef nonnull %a, i32 noundef %.lcssa, i32 noundef 0)
  %call12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %call11)
  %cmp = icmp sgt i32 %t.011, 1
  br i1 %cmp, label %for.cond.preheaderthread-pre-split, label %while.end, !llvm.loop !38

while.end:                                        ; preds = %for.end10, %entry
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10, !11, !12, !13}
!18 = distinct !{!18, !10, !11, !12, !13}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11, !12}
!22 = distinct !{!22, !10, !11, !12, !13}
!23 = distinct !{!23, !10, !11, !12}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11, !12, !13}
!28 = distinct !{!28, !10, !11, !12}
!29 = distinct !{!29, !10, !11, !12}
!30 = distinct !{!30, !10, !11, !12, !13}
!31 = distinct !{!31, !10, !11, !12, !13}
!32 = distinct !{!32, !10, !11, !12}
!33 = distinct !{!33, !10, !11, !12, !13}
!34 = distinct !{!34, !10, !11, !12}
!35 = distinct !{!35, !10, !11}
!36 = distinct !{!36, !10, !11, !37}
!37 = !{!"llvm.loop.unswitch.partial.disable"}
!38 = distinct !{!38, !10, !11}
