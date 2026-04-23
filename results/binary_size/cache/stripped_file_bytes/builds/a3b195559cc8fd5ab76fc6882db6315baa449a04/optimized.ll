; ModuleID = '<stdin>'
source_filename = "/tmp/tmpols9p1kl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %m, ptr noundef nonnull %n)
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = zext i32 %2 to i64
  %4 = call ptr @llvm.stacksave.p0()
  %5 = mul nuw i64 %3, %1
  %vla = alloca i32, i64 %5, align 16
  %6 = load i32, ptr %m, align 4, !tbaa !5
  %cmp48 = icmp sgt i32 %6, 0
  %.pre110 = load i32, ptr %n, align 4, !tbaa !5
  br i1 %cmp48, label %for.cond1.preheader.lr.ph, label %if.then104

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %7 = icmp sgt i32 %.pre110, 0
  br i1 %7, label %for.cond1.preheader, label %for.body14.lr.ph.thread

for.body14.lr.ph.thread:                          ; preds = %for.cond1.preheader.lr.ph
  %8 = zext nneg i32 %6 to i64
  %vla10113 = alloca i32, i64 %8, align 16
  %9 = zext i32 %.pre110 to i64
  %vla11114 = alloca i32, i64 %9, align 16
  br label %for.body14.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc7
  %10 = phi i32 [ %15, %for.inc7 ], [ %6, %for.cond1.preheader.lr.ph ]
  %11 = phi i32 [ %16, %for.inc7 ], [ %.pre110, %for.cond1.preheader.lr.ph ]
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %for.inc7 ], [ 0, %for.cond1.preheader.lr.ph ]
  %cmp246 = icmp sgt i32 %11, 0
  br i1 %cmp246, label %for.body3.lr.ph, label %for.inc7

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %12 = mul nuw nsw i64 %indvars.iv75, %3
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %12
  br label %for.body3

for.body3:                                        ; preds = %for.body3.lr.ph, %for.body3
  %indvars.iv = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next, %for.body3 ]
  %arrayidx5 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %14 = sext i32 %13 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %14
  br i1 %cmp2, label %for.body3, label %for.inc7.loopexit, !llvm.loop !9

for.inc7.loopexit:                                ; preds = %for.body3
  %.pre = load i32, ptr %m, align 4, !tbaa !5
  br label %for.inc7

for.inc7:                                         ; preds = %for.inc7.loopexit, %for.cond1.preheader
  %15 = phi i32 [ %.pre, %for.inc7.loopexit ], [ %10, %for.cond1.preheader ]
  %16 = phi i32 [ %13, %for.inc7.loopexit ], [ %11, %for.cond1.preheader ]
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  %17 = sext i32 %15 to i64
  %cmp = icmp slt i64 %indvars.iv.next76, %17
  br i1 %cmp, label %for.cond1.preheader, label %for.end9, !llvm.loop !12

for.end9:                                         ; preds = %for.inc7
  %18 = zext i32 %15 to i64
  %vla10 = alloca i32, i64 %18, align 16
  %19 = zext i32 %16 to i64
  %vla11 = alloca i32, i64 %19, align 16
  %cmp1353 = icmp sgt i32 %15, 0
  br i1 %cmp1353, label %for.body14.lr.ph, label %for.cond42.preheader

for.body14.lr.ph:                                 ; preds = %for.end9
  %cmp2150 = icmp sgt i32 %16, 1
  br i1 %cmp2150, label %for.body14.us.preheader, label %for.body14.preheader

for.body14.us.preheader:                          ; preds = %for.body14.lr.ph
  %20 = add nsw i64 %19, -1
  %min.iters.check168 = icmp ult i32 %16, 5
  %n.vec171 = and i64 %20, -4
  %21 = or disjoint i64 %n.vec171, 1
  %cmp.n177 = icmp eq i64 %20, %n.vec171
  br label %for.body14.us

for.body14.preheader:                             ; preds = %for.body14.lr.ph.thread, %for.body14.lr.ph
  %22 = phi i32 [ %.pre110, %for.body14.lr.ph.thread ], [ %16, %for.body14.lr.ph ]
  %23 = phi i32 [ %6, %for.body14.lr.ph.thread ], [ %15, %for.body14.lr.ph ]
  %24 = phi i64 [ %8, %for.body14.lr.ph.thread ], [ %18, %for.body14.lr.ph ]
  %vla10116132 = phi ptr [ %vla10113, %for.body14.lr.ph.thread ], [ %vla10, %for.body14.lr.ph ]
  %25 = phi i64 [ %9, %for.body14.lr.ph.thread ], [ %19, %for.body14.lr.ph ]
  %vla11119131 = phi ptr [ %vla11114, %for.body14.lr.ph.thread ], [ %vla11, %for.body14.lr.ph ]
  %min.iters.check = icmp samesign ugt i64 %24, 3
  %ident.check.not = icmp eq i32 %2, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph, label %for.body14.preheader203

vector.ph:                                        ; preds = %for.body14.preheader
  %n.vec = and i64 %24, 4294967292
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %26 = getelementptr inbounds nuw i32, ptr %vla, i64 %index
  %wide.load = load <4 x i32>, ptr %26, align 16, !tbaa !5
  %27 = getelementptr inbounds nuw i32, ptr %vla10116132, i64 %index
  store <4 x i32> %wide.load, ptr %27, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %28 = icmp eq i64 %index.next, %n.vec
  br i1 %28, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %24, %n.vec
  br i1 %cmp.n, label %for.cond42.preheader, label %for.body14.preheader203

for.body14.preheader203:                          ; preds = %for.body14.preheader, %middle.block
  %indvars.iv78.ph = phi i64 [ 0, %for.body14.preheader ], [ %n.vec, %middle.block ]
  br label %for.body14

for.body14.us:                                    ; preds = %for.body14.us.preheader, %for.cond20.for.inc39_crit_edge.us
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %for.cond20.for.inc39_crit_edge.us ], [ 0, %for.body14.us.preheader ]
  %29 = mul nuw nsw i64 %indvars.iv86, %3
  %arrayidx16.us = getelementptr inbounds nuw i32, ptr %vla, i64 %29
  %30 = load i32, ptr %arrayidx16.us, align 4, !tbaa !5
  %arrayidx19.us = getelementptr inbounds nuw i32, ptr %vla10, i64 %indvars.iv86
  br i1 %min.iters.check168, label %for.body22.us.preheader, label %vector.ph169

vector.ph169:                                     ; preds = %for.body14.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %30, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.gep = getelementptr i8, ptr %arrayidx16.us, i64 4
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph169
  %index173 = phi i64 [ 0, %vector.ph169 ], [ %index.next175, %vector.body172 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph169 ], [ %31, %vector.body172 ]
  %gep = getelementptr i32, ptr %invariant.gep, i64 %index173
  %wide.load174 = load <4 x i32>, ptr %gep, align 4, !tbaa !5
  %31 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load174, <4 x i32> %vec.phi)
  %index.next175 = add nuw i64 %index173, 4
  %32 = icmp eq i64 %index.next175, %n.vec171
  br i1 %32, label %middle.block176, label %vector.body172, !llvm.loop !17

middle.block176:                                  ; preds = %vector.body172
  %33 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %31)
  br i1 %cmp.n177, label %for.cond20.for.inc39_crit_edge.us, label %for.body22.us.preheader

for.body22.us.preheader:                          ; preds = %for.body14.us, %middle.block176
  %indvars.iv81.ph = phi i64 [ 1, %for.body14.us ], [ %21, %middle.block176 ]
  %spec.store.select52.us.ph = phi i32 [ %30, %for.body14.us ], [ %33, %middle.block176 ]
  br label %for.body22.us

for.body22.us:                                    ; preds = %for.body22.us.preheader, %for.body22.us
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %for.body22.us ], [ %indvars.iv81.ph, %for.body22.us.preheader ]
  %spec.store.select52.us = phi i32 [ %spec.store.select.us, %for.body22.us ], [ %spec.store.select52.us.ph, %for.body22.us.preheader ]
  %arrayidx26.us = getelementptr inbounds nuw i32, ptr %arrayidx16.us, i64 %indvars.iv81
  %34 = load i32, ptr %arrayidx26.us, align 4, !tbaa !5
  %spec.store.select.us = call i32 @llvm.smax.i32(i32 %34, i32 %spec.store.select52.us)
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %19
  br i1 %exitcond85.not, label %for.cond20.for.inc39_crit_edge.us, label %for.body22.us, !llvm.loop !18

for.cond20.for.inc39_crit_edge.us:                ; preds = %for.body22.us, %middle.block176
  %spec.store.select.us.lcssa = phi i32 [ %33, %middle.block176 ], [ %spec.store.select.us, %for.body22.us ]
  store i32 %spec.store.select.us.lcssa, ptr %arrayidx19.us, align 4
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %18
  br i1 %exitcond90.not, label %for.cond42.preheader, label %for.body14.us, !llvm.loop !19

for.cond42.preheader:                             ; preds = %for.body14, %for.cond20.for.inc39_crit_edge.us, %middle.block, %for.end9
  %cmp1353120 = phi i1 [ false, %for.end9 ], [ true, %middle.block ], [ true, %for.cond20.for.inc39_crit_edge.us ], [ true, %for.body14 ]
  %vla11118 = phi ptr [ %vla11, %for.end9 ], [ %vla11119131, %middle.block ], [ %vla11, %for.cond20.for.inc39_crit_edge.us ], [ %vla11119131, %for.body14 ]
  %35 = phi i64 [ %19, %for.end9 ], [ %25, %middle.block ], [ %19, %for.cond20.for.inc39_crit_edge.us ], [ %25, %for.body14 ]
  %vla10117 = phi ptr [ %vla10, %for.end9 ], [ %vla10116132, %middle.block ], [ %vla10, %for.cond20.for.inc39_crit_edge.us ], [ %vla10116132, %for.body14 ]
  %36 = phi i64 [ %18, %for.end9 ], [ %24, %middle.block ], [ %18, %for.cond20.for.inc39_crit_edge.us ], [ %24, %for.body14 ]
  %37 = phi i32 [ %15, %for.end9 ], [ %23, %middle.block ], [ %15, %for.cond20.for.inc39_crit_edge.us ], [ %23, %for.body14 ]
  %38 = phi i32 [ %16, %for.end9 ], [ %22, %middle.block ], [ %16, %for.cond20.for.inc39_crit_edge.us ], [ %22, %for.body14 ]
  %cmp4358 = icmp sgt i32 %38, 0
  br i1 %cmp4358, label %for.body44.lr.ph, label %if.then104

for.body44.lr.ph:                                 ; preds = %for.cond42.preheader
  %cmp5155 = icmp sgt i32 %37, 1
  br i1 %cmp5155, label %for.body44.us.preheader, label %for.cond74.preheader.thread133

for.body44.us.preheader:                          ; preds = %for.body44.lr.ph
  %39 = add nsw i64 %36, -1
  %min.iters.check182 = icmp ugt i64 %39, 3
  %ident.check180.not = icmp eq i32 %2, 1
  %or.cond198 = select i1 %min.iters.check182, i1 %ident.check180.not, i1 false
  %n.vec185 = and i64 %39, -4
  %40 = or disjoint i64 %n.vec185, 1
  %cmp.n195 = icmp eq i64 %39, %n.vec185
  br label %for.body44.us

for.body44.us:                                    ; preds = %for.body44.us.preheader, %for.cond50.for.inc71_crit_edge.us
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.cond50.for.inc71_crit_edge.us ], [ 0, %for.body44.us.preheader ]
  %arrayidx47.us = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv99
  %41 = load i32, ptr %arrayidx47.us, align 4, !tbaa !5
  %arrayidx49.us = getelementptr inbounds nuw i32, ptr %vla11118, i64 %indvars.iv99
  store i32 %41, ptr %arrayidx49.us, align 4, !tbaa !5
  br i1 %or.cond198, label %vector.ph183, label %for.body52.us.preheader

vector.ph183:                                     ; preds = %for.body44.us
  %broadcast.splatinsert186 = insertelement <4 x i32> poison, i32 %41, i64 0
  %broadcast.splat187 = shufflevector <4 x i32> %broadcast.splatinsert186, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.gep215 = getelementptr i8, ptr %arrayidx47.us, i64 4
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph183
  %index189 = phi i64 [ 0, %vector.ph183 ], [ %index.next193, %vector.body188 ]
  %vec.phi190 = phi <4 x i32> [ %broadcast.splat187, %vector.ph183 ], [ %42, %vector.body188 ]
  %gep216 = getelementptr i32, ptr %invariant.gep215, i64 %index189
  %wide.load192 = load <4 x i32>, ptr %gep216, align 4, !tbaa !5
  %42 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load192, <4 x i32> %vec.phi190)
  %index.next193 = add nuw i64 %index189, 4
  %43 = icmp eq i64 %index.next193, %n.vec185
  br i1 %43, label %middle.block194, label %vector.body188, !llvm.loop !20

middle.block194:                                  ; preds = %vector.body188
  %44 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %42)
  br i1 %cmp.n195, label %for.cond50.for.inc71_crit_edge.us, label %for.body52.us.preheader

for.body52.us.preheader:                          ; preds = %for.body44.us, %middle.block194
  %indvars.iv94.ph = phi i64 [ 1, %for.body44.us ], [ %40, %middle.block194 ]
  %spec.store.select4557.us.ph = phi i32 [ %41, %for.body44.us ], [ %44, %middle.block194 ]
  br label %for.body52.us

for.body52.us:                                    ; preds = %for.body52.us.preheader, %for.body52.us
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %for.body52.us ], [ %indvars.iv94.ph, %for.body52.us.preheader ]
  %spec.store.select4557.us = phi i32 [ %spec.store.select45.us, %for.body52.us ], [ %spec.store.select4557.us.ph, %for.body52.us.preheader ]
  %45 = mul nuw nsw i64 %indvars.iv94, %3
  %gep.us = getelementptr inbounds nuw i32, ptr %arrayidx47.us, i64 %45
  %46 = load i32, ptr %gep.us, align 4, !tbaa !5
  %spec.store.select45.us = call i32 @llvm.smin.i32(i32 %46, i32 %spec.store.select4557.us)
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %36
  br i1 %exitcond98.not, label %for.cond50.for.inc71_crit_edge.us, label %for.body52.us, !llvm.loop !21

for.cond50.for.inc71_crit_edge.us:                ; preds = %for.body52.us, %middle.block194
  %spec.store.select45.us.lcssa = phi i32 [ %44, %middle.block194 ], [ %spec.store.select45.us, %for.body52.us ]
  store i32 %spec.store.select45.us.lcssa, ptr %arrayidx49.us, align 4
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  %exitcond103.not = icmp eq i64 %indvars.iv.next100, %35
  br i1 %exitcond103.not, label %for.cond74.preheader, label %for.body44.us, !llvm.loop !22

for.body14:                                       ; preds = %for.body14.preheader203, %for.body14
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.body14 ], [ %indvars.iv78.ph, %for.body14.preheader203 ]
  %47 = mul nuw nsw i64 %indvars.iv78, %3
  %arrayidx16 = getelementptr inbounds nuw i32, ptr %vla, i64 %47
  %48 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %arrayidx19 = getelementptr inbounds nuw i32, ptr %vla10116132, i64 %indvars.iv78
  store i32 %48, ptr %arrayidx19, align 4, !tbaa !5
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next79, %24
  br i1 %exitcond.not, label %for.cond42.preheader, label %for.body14, !llvm.loop !23

for.cond74.preheader:                             ; preds = %for.cond50.for.inc71_crit_edge.us
  br i1 %cmp1353120, label %for.cond77.preheader.preheader, label %if.then104

for.cond74.preheader.thread133:                   ; preds = %for.body44.lr.ph
  %49 = shl nuw nsw i64 %35, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %vla11118, ptr nonnull align 16 %vla, i64 %49, i1 false), !tbaa !5
  br i1 %cmp1353120, label %for.cond77.preheader.preheader, label %if.then104

for.cond77.preheader.preheader:                   ; preds = %for.cond74.preheader, %for.cond74.preheader.thread133
  br label %for.cond77.preheader

for.cond77.preheader:                             ; preds = %for.cond77.preheader.preheader, %for.inc100
  %50 = phi i32 [ %62, %for.inc100 ], [ %37, %for.cond77.preheader.preheader ]
  %51 = phi i32 [ %63, %for.inc100 ], [ %38, %for.cond77.preheader.preheader ]
  %52 = phi i32 [ %64, %for.inc100 ], [ %38, %for.cond77.preheader.preheader ]
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %for.inc100 ], [ 0, %for.cond77.preheader.preheader ]
  %s.066 = phi i32 [ %s.1.lcssa, %for.inc100 ], [ 0, %for.cond77.preheader.preheader ]
  %cmp7860 = icmp sgt i32 %52, 0
  br i1 %cmp7860, label %for.body79.lr.ph, label %for.inc100

for.body79.lr.ph:                                 ; preds = %for.cond77.preheader
  %53 = mul nuw nsw i64 %indvars.iv107, %3
  %arrayidx81 = getelementptr inbounds nuw i32, ptr %vla, i64 %53
  %arrayidx85 = getelementptr inbounds nuw i32, ptr %vla10117, i64 %indvars.iv107
  %54 = load i32, ptr %arrayidx85, align 4, !tbaa !5
  %55 = trunc nuw nsw i64 %indvars.iv107 to i32
  br label %for.body79

for.body79:                                       ; preds = %for.body79.lr.ph, %for.inc97
  %56 = phi i32 [ %51, %for.body79.lr.ph ], [ %60, %for.inc97 ]
  %indvars.iv104 = phi i64 [ 0, %for.body79.lr.ph ], [ %indvars.iv.next105, %for.inc97 ]
  %s.162 = phi i32 [ %s.066, %for.body79.lr.ph ], [ %s.2, %for.inc97 ]
  %arrayidx83 = getelementptr inbounds nuw i32, ptr %arrayidx81, i64 %indvars.iv104
  %57 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %cmp86 = icmp eq i32 %57, %54
  br i1 %cmp86, label %land.lhs.true, label %for.inc97

land.lhs.true:                                    ; preds = %for.body79
  %arrayidx92 = getelementptr inbounds nuw i32, ptr %vla11118, i64 %indvars.iv104
  %58 = load i32, ptr %arrayidx92, align 4, !tbaa !5
  %cmp93 = icmp eq i32 %54, %58
  br i1 %cmp93, label %if.then94, label %for.inc97

if.then94:                                        ; preds = %land.lhs.true
  %59 = trunc nuw nsw i64 %indvars.iv104 to i32
  %call95 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %55, i32 noundef %59)
  %add = add nsw i32 %s.162, 1
  %.pre111 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc97

for.inc97:                                        ; preds = %for.body79, %land.lhs.true, %if.then94
  %60 = phi i32 [ %.pre111, %if.then94 ], [ %56, %land.lhs.true ], [ %56, %for.body79 ]
  %s.2 = phi i32 [ %add, %if.then94 ], [ %s.162, %land.lhs.true ], [ %s.162, %for.body79 ]
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %61 = sext i32 %60 to i64
  %cmp78 = icmp slt i64 %indvars.iv.next105, %61
  br i1 %cmp78, label %for.body79, label %for.inc100.loopexit, !llvm.loop !24

for.inc100.loopexit:                              ; preds = %for.inc97
  %.pre112 = load i32, ptr %m, align 4, !tbaa !5
  br label %for.inc100

for.inc100:                                       ; preds = %for.inc100.loopexit, %for.cond77.preheader
  %62 = phi i32 [ %50, %for.cond77.preheader ], [ %.pre112, %for.inc100.loopexit ]
  %63 = phi i32 [ %51, %for.cond77.preheader ], [ %60, %for.inc100.loopexit ]
  %64 = phi i32 [ %52, %for.cond77.preheader ], [ %60, %for.inc100.loopexit ]
  %s.1.lcssa = phi i32 [ %s.066, %for.cond77.preheader ], [ %s.2, %for.inc100.loopexit ]
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  %65 = sext i32 %62 to i64
  %cmp75 = icmp slt i64 %indvars.iv.next108, %65
  br i1 %cmp75, label %for.cond77.preheader, label %for.end102, !llvm.loop !25

for.end102:                                       ; preds = %for.inc100
  %66 = icmp eq i32 %s.1.lcssa, 0
  br i1 %66, label %if.then104, label %if.end106

if.then104:                                       ; preds = %entry, %for.cond42.preheader, %for.cond74.preheader.thread133, %for.cond74.preheader, %for.end102
  %call105 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %for.end102
  call void @llvm.stackrestore.p0(ptr %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!17 = distinct !{!17, !10, !11, !15, !16}
!18 = distinct !{!18, !10, !11, !15}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11, !15, !16}
!21 = distinct !{!21, !10, !11, !15}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11, !15}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11, !13}
