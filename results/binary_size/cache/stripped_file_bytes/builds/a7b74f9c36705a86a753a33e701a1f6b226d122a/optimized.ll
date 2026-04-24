; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4z9uxflz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z3MinPii(ptr noundef readonly captures(none) %a, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %a, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %n, 1
  br i1 %cmp7, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext nneg i32 %n to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp ult i32 %n, 5
  br i1 %min.iters.check, label %for.body.preheader11, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %1, -4
  %2 = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %0, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.gep = getelementptr i8, ptr %a, i64 4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %3, %vector.body ]
  %gep = getelementptr i32, ptr %invariant.gep, i64 %index
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !5
  %3 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi)
  %index.next = add nuw i64 %index, 4
  %4 = icmp eq i64 %index.next, %n.vec
  br i1 %4, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %5 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %3)
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body.preheader11

for.body.preheader11:                             ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %for.body.preheader ], [ %2, %middle.block ]
  %min.09.ph = phi i32 [ %0, %for.body.preheader ], [ %5, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader11, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader11 ]
  %min.09 = phi i32 [ %spec.select, %for.body ], [ %min.09.ph, %for.body.preheader11 ]
  %arrayidx1 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %6, i32 %min.09)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !14

for.end:                                          ; preds = %for.body, %middle.block, %entry
  %min.0.lcssa = phi i32 [ %0, %entry ], [ %5, %middle.block ], [ %spec.select, %for.body ]
  ret i32 %min.0.lcssa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %row = alloca [100 x [100 x i32]], align 16
  %col = alloca [100 x [100 x i32]], align 16
  %sum = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %row) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %col) #6
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %sum) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %.fr = freeze i32 %0
  %cmp183 = icmp sgt i32 %.fr, 0
  br i1 %cmp183, label %for.cond1.preheader.lr.ph, label %for.end185

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %sub = add nsw i32 %.fr, -1
  %cmp16180.not = icmp eq i32 %.fr, 1
  %arrayidx112 = getelementptr inbounds nuw i8, ptr %row, i64 404
  br i1 %cmp16180.not, label %for.cond177.preheader.thread, label %for.cond1.preheader.us.preheader

for.cond1.preheader.us.preheader:                 ; preds = %for.cond1.preheader.lr.ph
  %wide.trip.count289 = zext nneg i32 %.fr to i64
  br label %for.cond4.preheader.us.us.preheader

for.cond4.preheader.us.us.preheader:              ; preds = %for.cond15.for.inc174_crit_edge.us, %for.cond1.preheader.us.preheader
  %indvars.iv286 = phi i64 [ 0, %for.cond1.preheader.us.preheader ], [ %indvars.iv.next287, %for.cond15.for.inc174_crit_edge.us ]
  br label %for.cond4.preheader.us.us

for.end12.us:                                     ; preds = %for.cond4.for.inc10_crit_edge.us.us
  %arrayidx14.us = getelementptr inbounds nuw [100 x i32], ptr %sum, i64 0, i64 %indvars.iv286
  store i32 0, ptr %arrayidx14.us, align 4, !tbaa !5
  store i32 %.fr, ptr %n, align 4, !tbaa !5
  br label %for.cond18.preheader.us

for.end110.us:                                    ; preds = %for.cond94.for.inc108_crit_edge.us.us
  %1 = load i32, ptr %arrayidx112, align 4, !tbaa !5
  %cmp117160.us.not = icmp eq i32 %sub116179181.us, 1
  br i1 %cmp117160.us.not, label %for.end170.us, label %for.cond119.preheader.us.us.preheader

for.cond119.preheader.us.us.preheader:            ; preds = %for.end110.us
  %wide.trip.count283 = zext i32 %indvars.iv264 to i64
  br label %for.cond119.preheader.us.us

for.end170.us:                                    ; preds = %for.cond119.for.inc168_crit_edge.us.us, %for.end110.us.thread, %for.end110.us
  %.pn = phi i32 [ %28, %for.end110.us.thread ], [ %1, %for.end110.us ], [ %1, %for.cond119.for.inc168_crit_edge.us.us ]
  %add.us310 = add nsw i32 %29, %.pn
  %sub116.us311 = add nsw i32 %sub116179181.us, -1
  %inc172.us = add nuw nsw i32 %j.0182.us, 1
  %indvars.iv.next265 = add i32 %indvars.iv264, -1
  %exitcond285.not = icmp eq i32 %inc172.us, %sub
  br i1 %exitcond285.not, label %for.cond15.for.inc174_crit_edge.us, label %for.cond18.preheader.us, !llvm.loop !15

for.body65.us:                                    ; preds = %for.body65.lr.ph.us, %for.inc88.us
  %indvars.iv245 = phi i64 [ 0, %for.body65.lr.ph.us ], [ %indvars.iv.next246, %for.inc88.us ]
  %arrayidx67.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %indvars.iv245
  %2 = load i32, ptr %arrayidx67.us, align 16, !tbaa !5
  br i1 %cmp7.i88.us.not, label %_Z3MinPii.exit99.thread.us, label %for.body.i92.us.preheader

for.body.i92.us.preheader:                        ; preds = %for.body65.us
  br i1 %min.iters.check341, label %for.body.i92.us.preheader407, label %vector.ph342

vector.ph342:                                     ; preds = %for.body.i92.us.preheader
  %broadcast.splatinsert345 = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat346 = shufflevector <4 x i32> %broadcast.splatinsert345, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.gep422 = getelementptr i8, ptr %arrayidx67.us, i64 4
  br label %vector.body347

vector.body347:                                   ; preds = %vector.body347, %vector.ph342
  %index348 = phi i64 [ 0, %vector.ph342 ], [ %index.next352, %vector.body347 ]
  %vec.phi349 = phi <4 x i32> [ %broadcast.splat346, %vector.ph342 ], [ %3, %vector.body347 ]
  %gep423 = getelementptr i32, ptr %invariant.gep422, i64 %index348
  %wide.load351 = load <4 x i32>, ptr %gep423, align 4, !tbaa !5
  %3 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load351, <4 x i32> %vec.phi349)
  %index.next352 = add nuw i64 %index348, 4
  %4 = icmp eq i64 %index.next352, %n.vec344
  br i1 %4, label %middle.block353, label %vector.body347, !llvm.loop !16

middle.block353:                                  ; preds = %vector.body347
  %5 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %3)
  br i1 %cmp.n354, label %_Z3MinPii.exit99.us, label %for.body.i92.us.preheader407

for.body.i92.us.preheader407:                     ; preds = %for.body.i92.us.preheader, %middle.block353
  %indvars.iv.i93.us.ph = phi i64 [ 1, %for.body.i92.us.preheader ], [ %44, %middle.block353 ]
  %min.09.i94.us.ph = phi i32 [ %2, %for.body.i92.us.preheader ], [ %5, %middle.block353 ]
  br label %for.body.i92.us

_Z3MinPii.exit99.thread.us:                       ; preds = %for.body65.us
  %cmp70.not115.us = icmp eq i32 %2, 0
  br i1 %cmp70.not115.us, label %for.inc88.us, label %_Z3MinPii.exit111.us

for.body.i92.us:                                  ; preds = %for.body.i92.us.preheader407, %for.body.i92.us
  %indvars.iv.i93.us = phi i64 [ %indvars.iv.next.i97.us, %for.body.i92.us ], [ %indvars.iv.i93.us.ph, %for.body.i92.us.preheader407 ]
  %min.09.i94.us = phi i32 [ %spec.select.i96.us, %for.body.i92.us ], [ %min.09.i94.us.ph, %for.body.i92.us.preheader407 ]
  %arrayidx1.i95.us = getelementptr inbounds nuw i32, ptr %arrayidx67.us, i64 %indvars.iv.i93.us
  %6 = load i32, ptr %arrayidx1.i95.us, align 4, !tbaa !5
  %spec.select.i96.us = call i32 @llvm.smin.i32(i32 %6, i32 %min.09.i94.us)
  %indvars.iv.next.i97.us = add nuw nsw i64 %indvars.iv.i93.us, 1
  %exitcond.not.i98.us = icmp eq i64 %indvars.iv.next.i97.us, %wide.trip.count.i91.us
  br i1 %exitcond.not.i98.us, label %_Z3MinPii.exit99.us, label %for.body.i92.us, !llvm.loop !17

_Z3MinPii.exit99.us:                              ; preds = %for.body.i92.us, %middle.block353
  %spec.select.i96.us.lcssa = phi i32 [ %5, %middle.block353 ], [ %spec.select.i96.us, %for.body.i92.us ]
  %cmp70.not.us = icmp eq i32 %spec.select.i96.us.lcssa, 0
  br i1 %cmp70.not.us, label %for.inc88.us, label %for.body.i104.us.preheader

for.body.i104.us.preheader:                       ; preds = %_Z3MinPii.exit99.us
  br i1 %min.iters.check327, label %for.body.i104.us.preheader406, label %vector.ph328

vector.ph328:                                     ; preds = %for.body.i104.us.preheader
  %broadcast.splatinsert331 = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat332 = shufflevector <4 x i32> %broadcast.splatinsert331, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.gep424 = getelementptr i8, ptr %arrayidx67.us, i64 4
  br label %vector.body333

vector.body333:                                   ; preds = %vector.body333, %vector.ph328
  %index334 = phi i64 [ 0, %vector.ph328 ], [ %index.next336, %vector.body333 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat332, %vector.ph328 ], [ %7, %vector.body333 ]
  %gep425 = getelementptr i32, ptr %invariant.gep424, i64 %index334
  %wide.load335 = load <4 x i32>, ptr %gep425, align 4, !tbaa !5
  %7 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load335, <4 x i32> %vec.phi)
  %index.next336 = add nuw i64 %index334, 4
  %8 = icmp eq i64 %index.next336, %n.vec330
  br i1 %8, label %middle.block337, label %vector.body333, !llvm.loop !18

middle.block337:                                  ; preds = %vector.body333
  %9 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %7)
  br i1 %cmp.n338, label %_Z3MinPii.exit111.us, label %for.body.i104.us.preheader406

for.body.i104.us.preheader406:                    ; preds = %for.body.i104.us.preheader, %middle.block337
  %indvars.iv.i105.us.ph = phi i64 [ 1, %for.body.i104.us.preheader ], [ %45, %middle.block337 ]
  %min.09.i106.us.ph = phi i32 [ %2, %for.body.i104.us.preheader ], [ %9, %middle.block337 ]
  br label %for.body.i104.us

for.body.i104.us:                                 ; preds = %for.body.i104.us.preheader406, %for.body.i104.us
  %indvars.iv.i105.us = phi i64 [ %indvars.iv.next.i109.us, %for.body.i104.us ], [ %indvars.iv.i105.us.ph, %for.body.i104.us.preheader406 ]
  %min.09.i106.us = phi i32 [ %spec.select.i108.us, %for.body.i104.us ], [ %min.09.i106.us.ph, %for.body.i104.us.preheader406 ]
  %arrayidx1.i107.us = getelementptr inbounds nuw i32, ptr %arrayidx67.us, i64 %indvars.iv.i105.us
  %10 = load i32, ptr %arrayidx1.i107.us, align 4, !tbaa !5
  %spec.select.i108.us = call i32 @llvm.smin.i32(i32 %10, i32 %min.09.i106.us)
  %indvars.iv.next.i109.us = add nuw nsw i64 %indvars.iv.i105.us, 1
  %exitcond.not.i110.us = icmp eq i64 %indvars.iv.next.i109.us, %wide.trip.count.i91.us
  br i1 %exitcond.not.i110.us, label %_Z3MinPii.exit111.us, label %for.body.i104.us, !llvm.loop !19

_Z3MinPii.exit111.us:                             ; preds = %for.body.i104.us, %middle.block337, %_Z3MinPii.exit99.thread.us
  %min.0.lcssa.i101.us = phi i32 [ %2, %_Z3MinPii.exit99.thread.us ], [ %9, %middle.block337 ], [ %spec.select.i108.us, %for.body.i104.us ]
  br i1 %min.iters.check316, label %for.body78.us.preheader, label %vector.ph317

vector.ph317:                                     ; preds = %_Z3MinPii.exit111.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %min.0.lcssa.i101.us, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph317
  %index321 = phi i64 [ 0, %vector.ph317 ], [ %index.next322, %vector.body320 ]
  %11 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %indvars.iv245, i64 %index321
  %wide.load = load <4 x i32>, ptr %11, align 16, !tbaa !5
  %12 = sub nsw <4 x i32> %wide.load, %broadcast.splat
  store <4 x i32> %12, ptr %11, align 16, !tbaa !5
  %index.next322 = add nuw i64 %index321, 4
  %13 = icmp eq i64 %index.next322, %n.vec319
  br i1 %13, label %middle.block323, label %vector.body320, !llvm.loop !20

middle.block323:                                  ; preds = %vector.body320
  br i1 %cmp.n324, label %for.inc88.us, label %for.body78.us.preheader

for.body78.us.preheader:                          ; preds = %_Z3MinPii.exit111.us, %middle.block323
  %indvars.iv240.ph = phi i64 [ 0, %_Z3MinPii.exit111.us ], [ %n.vec319, %middle.block323 ]
  br label %for.body78.us

for.body78.us:                                    ; preds = %for.body78.us.preheader, %for.body78.us
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %for.body78.us ], [ %indvars.iv240.ph, %for.body78.us.preheader ]
  %arrayidx82.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %indvars.iv245, i64 %indvars.iv240
  %14 = load i32, ptr %arrayidx82.us, align 4, !tbaa !5
  %sub83.us = sub nsw i32 %14, %min.0.lcssa.i101.us
  store i32 %sub83.us, ptr %arrayidx82.us, align 4, !tbaa !5
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1
  %exitcond244.not = icmp eq i64 %indvars.iv.next241, %wide.trip.count.i91.us
  br i1 %exitcond244.not, label %for.inc88.us, label %for.body78.us, !llvm.loop !21

for.inc88.us:                                     ; preds = %for.body78.us, %middle.block323, %_Z3MinPii.exit99.us, %_Z3MinPii.exit99.thread.us
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1
  %exitcond249.not = icmp eq i64 %indvars.iv.next246, %wide.trip.count.i91.us
  br i1 %exitcond249.not, label %for.cond94.preheader.us.us.preheader, label %for.body65.us, !llvm.loop !22

for.body20.us:                                    ; preds = %for.body20.lr.ph.us, %for.inc40.us
  %indvars.iv225 = phi i64 [ 0, %for.body20.lr.ph.us ], [ %indvars.iv.next226, %for.inc40.us ]
  %arrayidx22.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv225
  %15 = load i32, ptr %arrayidx22.us, align 16, !tbaa !5
  br i1 %cmp7.i.us.not, label %_Z3MinPii.exit.thread.us, label %for.body.i.us.preheader

for.body.i.us.preheader:                          ; preds = %for.body20.us
  br i1 %min.iters.check389, label %for.body.i.us.preheader409, label %vector.ph390

vector.ph390:                                     ; preds = %for.body.i.us.preheader
  %broadcast.splatinsert393 = insertelement <4 x i32> poison, i32 %15, i64 0
  %broadcast.splat394 = shufflevector <4 x i32> %broadcast.splatinsert393, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.gep = getelementptr i8, ptr %arrayidx22.us, i64 4
  br label %vector.body395

vector.body395:                                   ; preds = %vector.body395, %vector.ph390
  %index396 = phi i64 [ 0, %vector.ph390 ], [ %index.next400, %vector.body395 ]
  %vec.phi397 = phi <4 x i32> [ %broadcast.splat394, %vector.ph390 ], [ %16, %vector.body395 ]
  %gep = getelementptr i32, ptr %invariant.gep, i64 %index396
  %wide.load399 = load <4 x i32>, ptr %gep, align 4, !tbaa !5
  %16 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load399, <4 x i32> %vec.phi397)
  %index.next400 = add nuw i64 %index396, 4
  %17 = icmp eq i64 %index.next400, %n.vec392
  br i1 %17, label %middle.block401, label %vector.body395, !llvm.loop !23

middle.block401:                                  ; preds = %vector.body395
  %18 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %16)
  br i1 %cmp.n402, label %_Z3MinPii.exit.us, label %for.body.i.us.preheader409

for.body.i.us.preheader409:                       ; preds = %for.body.i.us.preheader, %middle.block401
  %indvars.iv.i.us.ph = phi i64 [ 1, %for.body.i.us.preheader ], [ %41, %middle.block401 ]
  %min.09.i.us.ph = phi i32 [ %15, %for.body.i.us.preheader ], [ %18, %middle.block401 ]
  br label %for.body.i.us

_Z3MinPii.exit.thread.us:                         ; preds = %for.body20.us
  %cmp24.not113.us = icmp eq i32 %15, 0
  br i1 %cmp24.not113.us, label %for.inc40.us, label %_Z3MinPii.exit87.us

for.body.i.us:                                    ; preds = %for.body.i.us.preheader409, %for.body.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %for.body.i.us ], [ %indvars.iv.i.us.ph, %for.body.i.us.preheader409 ]
  %min.09.i.us = phi i32 [ %spec.select.i.us, %for.body.i.us ], [ %min.09.i.us.ph, %for.body.i.us.preheader409 ]
  %arrayidx1.i.us = getelementptr inbounds nuw i32, ptr %arrayidx22.us, i64 %indvars.iv.i.us
  %19 = load i32, ptr %arrayidx1.i.us, align 4, !tbaa !5
  %spec.select.i.us = call i32 @llvm.smin.i32(i32 %19, i32 %min.09.i.us)
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %_Z3MinPii.exit.us, label %for.body.i.us, !llvm.loop !24

_Z3MinPii.exit.us:                                ; preds = %for.body.i.us, %middle.block401
  %spec.select.i.us.lcssa = phi i32 [ %18, %middle.block401 ], [ %spec.select.i.us, %for.body.i.us ]
  %cmp24.not.us = icmp eq i32 %spec.select.i.us.lcssa, 0
  br i1 %cmp24.not.us, label %for.inc40.us, label %for.body.i80.us.preheader

for.body.i80.us.preheader:                        ; preds = %_Z3MinPii.exit.us
  br i1 %min.iters.check372, label %for.body.i80.us.preheader408, label %vector.ph373

vector.ph373:                                     ; preds = %for.body.i80.us.preheader
  %broadcast.splatinsert376 = insertelement <4 x i32> poison, i32 %15, i64 0
  %broadcast.splat377 = shufflevector <4 x i32> %broadcast.splatinsert376, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.gep420 = getelementptr i8, ptr %arrayidx22.us, i64 4
  br label %vector.body378

vector.body378:                                   ; preds = %vector.body378, %vector.ph373
  %index379 = phi i64 [ 0, %vector.ph373 ], [ %index.next383, %vector.body378 ]
  %vec.phi380 = phi <4 x i32> [ %broadcast.splat377, %vector.ph373 ], [ %20, %vector.body378 ]
  %gep421 = getelementptr i32, ptr %invariant.gep420, i64 %index379
  %wide.load382 = load <4 x i32>, ptr %gep421, align 4, !tbaa !5
  %20 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load382, <4 x i32> %vec.phi380)
  %index.next383 = add nuw i64 %index379, 4
  %21 = icmp eq i64 %index.next383, %n.vec375
  br i1 %21, label %middle.block384, label %vector.body378, !llvm.loop !25

middle.block384:                                  ; preds = %vector.body378
  %22 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %20)
  br i1 %cmp.n385, label %_Z3MinPii.exit87.us, label %for.body.i80.us.preheader408

for.body.i80.us.preheader408:                     ; preds = %for.body.i80.us.preheader, %middle.block384
  %indvars.iv.i81.us.ph = phi i64 [ 1, %for.body.i80.us.preheader ], [ %42, %middle.block384 ]
  %min.09.i82.us.ph = phi i32 [ %15, %for.body.i80.us.preheader ], [ %22, %middle.block384 ]
  br label %for.body.i80.us

for.body.i80.us:                                  ; preds = %for.body.i80.us.preheader408, %for.body.i80.us
  %indvars.iv.i81.us = phi i64 [ %indvars.iv.next.i85.us, %for.body.i80.us ], [ %indvars.iv.i81.us.ph, %for.body.i80.us.preheader408 ]
  %min.09.i82.us = phi i32 [ %spec.select.i84.us, %for.body.i80.us ], [ %min.09.i82.us.ph, %for.body.i80.us.preheader408 ]
  %arrayidx1.i83.us = getelementptr inbounds nuw i32, ptr %arrayidx22.us, i64 %indvars.iv.i81.us
  %23 = load i32, ptr %arrayidx1.i83.us, align 4, !tbaa !5
  %spec.select.i84.us = call i32 @llvm.smin.i32(i32 %23, i32 %min.09.i82.us)
  %indvars.iv.next.i85.us = add nuw nsw i64 %indvars.iv.i81.us, 1
  %exitcond.not.i86.us = icmp eq i64 %indvars.iv.next.i85.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i86.us, label %_Z3MinPii.exit87.us, label %for.body.i80.us, !llvm.loop !26

_Z3MinPii.exit87.us:                              ; preds = %for.body.i80.us, %middle.block384, %_Z3MinPii.exit.thread.us
  %min.0.lcssa.i77.us = phi i32 [ %15, %_Z3MinPii.exit.thread.us ], [ %22, %middle.block384 ], [ %spec.select.i84.us, %for.body.i80.us ]
  br i1 %min.iters.check358, label %for.body31.us.preheader, label %vector.ph359

vector.ph359:                                     ; preds = %_Z3MinPii.exit87.us
  %broadcast.splatinsert362 = insertelement <4 x i32> poison, i32 %min.0.lcssa.i77.us, i64 0
  %broadcast.splat363 = shufflevector <4 x i32> %broadcast.splatinsert362, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body364

vector.body364:                                   ; preds = %vector.body364, %vector.ph359
  %index365 = phi i64 [ 0, %vector.ph359 ], [ %index.next367, %vector.body364 ]
  %24 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv225, i64 %index365
  %wide.load366 = load <4 x i32>, ptr %24, align 16, !tbaa !5
  %25 = sub nsw <4 x i32> %wide.load366, %broadcast.splat363
  store <4 x i32> %25, ptr %24, align 16, !tbaa !5
  %index.next367 = add nuw i64 %index365, 4
  %26 = icmp eq i64 %index.next367, %n.vec361
  br i1 %26, label %middle.block368, label %vector.body364, !llvm.loop !27

middle.block368:                                  ; preds = %vector.body364
  br i1 %cmp.n369, label %for.inc40.us, label %for.body31.us.preheader

for.body31.us.preheader:                          ; preds = %_Z3MinPii.exit87.us, %middle.block368
  %indvars.iv220.ph = phi i64 [ 0, %_Z3MinPii.exit87.us ], [ %n.vec361, %middle.block368 ]
  br label %for.body31.us

for.body31.us:                                    ; preds = %for.body31.us.preheader, %for.body31.us
  %indvars.iv220 = phi i64 [ %indvars.iv.next221, %for.body31.us ], [ %indvars.iv220.ph, %for.body31.us.preheader ]
  %arrayidx35.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv225, i64 %indvars.iv220
  %27 = load i32, ptr %arrayidx35.us, align 4, !tbaa !5
  %sub36.us = sub nsw i32 %27, %min.0.lcssa.i77.us
  store i32 %sub36.us, ptr %arrayidx35.us, align 4, !tbaa !5
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1
  %exitcond224.not = icmp eq i64 %indvars.iv.next221, %wide.trip.count.i.us
  br i1 %exitcond224.not, label %for.inc40.us, label %for.body31.us, !llvm.loop !28

for.inc40.us:                                     ; preds = %for.body31.us, %middle.block368, %_Z3MinPii.exit.us, %_Z3MinPii.exit.thread.us
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1
  %exitcond229.not = icmp eq i64 %indvars.iv.next226, %wide.trip.count.i.us
  br i1 %exitcond229.not, label %for.cond46.preheader.us.us.preheader, label %for.body20.us, !llvm.loop !29

for.end110.us.thread:                             ; preds = %for.cond18.preheader.us
  %28 = load i32, ptr %arrayidx112, align 4, !tbaa !5
  br label %for.end170.us

for.cond94.preheader.us.us.preheader:             ; preds = %for.inc88.us
  %wide.trip.count258 = zext nneg i32 %sub116179181.us to i64
  %min.iters.check = icmp ult i32 %sub116179181.us, 4
  %n.vec = and i64 %40, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %40
  br label %for.cond94.preheader.us.us

for.cond46.preheader.us.us.preheader:             ; preds = %for.inc40.us
  %wide.trip.count238 = zext nneg i32 %sub116179181.us to i64
  br label %for.cond46.preheader.us.us

for.cond18.preheader.us:                          ; preds = %for.end12.us, %for.end170.us
  %indvars.iv264 = phi i32 [ %sub, %for.end12.us ], [ %indvars.iv.next265, %for.end170.us ]
  %29 = phi i32 [ 0, %for.end12.us ], [ %add.us310, %for.end170.us ]
  %j.0182.us = phi i32 [ 0, %for.end12.us ], [ %inc172.us, %for.end170.us ]
  %sub116179181.us = phi i32 [ %.fr, %for.end12.us ], [ %sub116.us311, %for.end170.us ]
  %30 = zext i32 %sub116179181.us to i64
  %31 = add nsw i64 %30, -1
  %32 = zext i32 %sub116179181.us to i64
  %33 = add nsw i64 %32, -1
  %34 = zext i32 %sub116179181.us to i64
  %35 = zext i32 %sub116179181.us to i64
  %36 = add nsw i64 %35, -1
  %37 = zext i32 %sub116179181.us to i64
  %38 = add nsw i64 %37, -1
  %39 = zext i32 %sub116179181.us to i64
  %40 = zext i32 %sub116179181.us to i64
  %cmp19128.us = icmp sgt i32 %sub116179181.us, 0
  br i1 %cmp19128.us, label %for.body20.lr.ph.us, label %for.end110.us.thread

for.cond4.preheader.us.us:                        ; preds = %for.cond4.preheader.us.us.preheader, %for.cond4.for.inc10_crit_edge.us.us
  %indvars.iv215 = phi i64 [ 0, %for.cond4.preheader.us.us.preheader ], [ %indvars.iv.next216, %for.cond4.for.inc10_crit_edge.us.us ]
  br label %for.body6.us.us

for.body6.us.us:                                  ; preds = %for.body6.us.us, %for.cond4.preheader.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6.us.us ], [ 0, %for.cond4.preheader.us.us ]
  %arrayidx8.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv215, i64 %indvars.iv
  %call9.us.us = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx8.us.us)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count289
  br i1 %exitcond.not, label %for.cond4.for.inc10_crit_edge.us.us, label %for.body6.us.us, !llvm.loop !30

for.cond4.for.inc10_crit_edge.us.us:              ; preds = %for.body6.us.us
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1
  %exitcond219.not = icmp eq i64 %indvars.iv.next216, %wide.trip.count289
  br i1 %exitcond219.not, label %for.end12.us, label %for.cond4.preheader.us.us, !llvm.loop !31

for.body20.lr.ph.us:                              ; preds = %for.cond18.preheader.us
  %cmp7.i.us.not = icmp eq i32 %sub116179181.us, 1
  %wide.trip.count.i.us = zext nneg i32 %sub116179181.us to i64
  %min.iters.check389 = icmp ult i32 %sub116179181.us, 5
  %n.vec392 = and i64 %31, -4
  %41 = or disjoint i64 %n.vec392, 1
  %cmp.n402 = icmp eq i64 %31, %n.vec392
  %min.iters.check372 = icmp ult i32 %sub116179181.us, 5
  %n.vec375 = and i64 %33, -4
  %42 = or disjoint i64 %n.vec375, 1
  %cmp.n385 = icmp eq i64 %33, %n.vec375
  %min.iters.check358 = icmp ult i32 %sub116179181.us, 4
  %n.vec361 = and i64 %34, 2147483644
  %cmp.n369 = icmp eq i64 %n.vec361, %34
  br label %for.body20.us

for.cond46.preheader.us.us:                       ; preds = %for.cond46.preheader.us.us.preheader, %for.cond46.for.inc60_crit_edge.us.us
  %indvars.iv235 = phi i64 [ 0, %for.cond46.preheader.us.us.preheader ], [ %indvars.iv.next236, %for.cond46.for.inc60_crit_edge.us.us ]
  br label %for.body48.us.us

for.body48.us.us:                                 ; preds = %for.body48.us.us, %for.cond46.preheader.us.us
  %indvars.iv230 = phi i64 [ %indvars.iv.next231, %for.body48.us.us ], [ 0, %for.cond46.preheader.us.us ]
  %arrayidx52.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv235, i64 %indvars.iv230
  %43 = load i32, ptr %arrayidx52.us.us, align 4, !tbaa !5
  %arrayidx56.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %indvars.iv230, i64 %indvars.iv235
  store i32 %43, ptr %arrayidx56.us.us, align 4, !tbaa !5
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1
  %exitcond234.not = icmp eq i64 %indvars.iv.next231, %wide.trip.count238
  br i1 %exitcond234.not, label %for.cond46.for.inc60_crit_edge.us.us, label %for.body48.us.us, !llvm.loop !32

for.cond46.for.inc60_crit_edge.us.us:             ; preds = %for.body48.us.us
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1
  %exitcond239.not = icmp eq i64 %indvars.iv.next236, %wide.trip.count238
  br i1 %exitcond239.not, label %for.body65.lr.ph.us, label %for.cond46.preheader.us.us, !llvm.loop !33

for.body65.lr.ph.us:                              ; preds = %for.cond46.for.inc60_crit_edge.us.us
  %cmp7.i88.us.not = icmp eq i32 %sub116179181.us, 1
  %wide.trip.count.i91.us = zext nneg i32 %sub116179181.us to i64
  %min.iters.check341 = icmp ult i32 %sub116179181.us, 5
  %n.vec344 = and i64 %36, -4
  %44 = or disjoint i64 %n.vec344, 1
  %cmp.n354 = icmp eq i64 %36, %n.vec344
  %min.iters.check327 = icmp ult i32 %sub116179181.us, 5
  %n.vec330 = and i64 %38, -4
  %45 = or disjoint i64 %n.vec330, 1
  %cmp.n338 = icmp eq i64 %38, %n.vec330
  %min.iters.check316 = icmp ult i32 %sub116179181.us, 4
  %n.vec319 = and i64 %39, 2147483644
  %cmp.n324 = icmp eq i64 %n.vec319, %39
  br label %for.body65.us

for.cond94.preheader.us.us:                       ; preds = %for.cond94.preheader.us.us.preheader, %for.cond94.for.inc108_crit_edge.us.us
  %indvars.iv255 = phi i64 [ 0, %for.cond94.preheader.us.us.preheader ], [ %indvars.iv.next256, %for.cond94.for.inc108_crit_edge.us.us ]
  br i1 %min.iters.check, label %for.body96.us.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond94.preheader.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond94.preheader.us.us ]
  %46 = or disjoint i64 %index, 1
  %47 = or disjoint i64 %index, 2
  %48 = or disjoint i64 %index, 3
  %49 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %index, i64 %indvars.iv255
  %50 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %46, i64 %indvars.iv255
  %51 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %47, i64 %indvars.iv255
  %52 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %48, i64 %indvars.iv255
  %53 = load i32, ptr %49, align 4, !tbaa !5
  %54 = load i32, ptr %50, align 4, !tbaa !5
  %55 = load i32, ptr %51, align 4, !tbaa !5
  %56 = load i32, ptr %52, align 4, !tbaa !5
  %57 = insertelement <4 x i32> poison, i32 %53, i64 0
  %58 = insertelement <4 x i32> %57, i32 %54, i64 1
  %59 = insertelement <4 x i32> %58, i32 %55, i64 2
  %60 = insertelement <4 x i32> %59, i32 %56, i64 3
  %61 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv255, i64 %index
  store <4 x i32> %60, ptr %61, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %62 = icmp eq i64 %index.next, %n.vec
  br i1 %62, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond94.for.inc108_crit_edge.us.us, label %for.body96.us.us.preheader

for.body96.us.us.preheader:                       ; preds = %for.cond94.preheader.us.us, %middle.block
  %indvars.iv250.ph = phi i64 [ 0, %for.cond94.preheader.us.us ], [ %n.vec, %middle.block ]
  br label %for.body96.us.us

for.body96.us.us:                                 ; preds = %for.body96.us.us.preheader, %for.body96.us.us
  %indvars.iv250 = phi i64 [ %indvars.iv.next251, %for.body96.us.us ], [ %indvars.iv250.ph, %for.body96.us.us.preheader ]
  %arrayidx100.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %indvars.iv250, i64 %indvars.iv255
  %63 = load i32, ptr %arrayidx100.us.us, align 4, !tbaa !5
  %arrayidx104.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv255, i64 %indvars.iv250
  store i32 %63, ptr %arrayidx104.us.us, align 4, !tbaa !5
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1
  %exitcond254.not = icmp eq i64 %indvars.iv.next251, %wide.trip.count258
  br i1 %exitcond254.not, label %for.cond94.for.inc108_crit_edge.us.us, label %for.body96.us.us, !llvm.loop !35

for.cond94.for.inc108_crit_edge.us.us:            ; preds = %for.body96.us.us, %middle.block
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1
  %exitcond259.not = icmp eq i64 %indvars.iv.next256, %wide.trip.count258
  br i1 %exitcond259.not, label %for.end110.us, label %for.cond94.preheader.us.us, !llvm.loop !36

for.cond119.preheader.us.us:                      ; preds = %for.cond119.preheader.us.us.preheader, %for.cond119.for.inc168_crit_edge.us.us
  %indvars.iv280 = phi i64 [ 0, %for.cond119.preheader.us.us.preheader ], [ %indvars.iv.next281, %for.cond119.for.inc168_crit_edge.us.us ]
  %cmp123.us.us.not = icmp eq i64 %indvars.iv280, 0
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1
  %arrayidx128.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv.next281
  %arrayidx132.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv280
  br i1 %cmp123.us.us.not, label %for.body122.us.us171.us, label %for.body122.us163.us

for.body122.us163.us:                             ; preds = %for.cond119.preheader.us.us, %for.inc165.us166.us
  %indvars.iv260 = phi i64 [ %indvars.iv.next261.pre-phi, %for.inc165.us166.us ], [ 0, %for.cond119.preheader.us.us ]
  %cmp124.us.us = icmp eq i64 %indvars.iv260, 0
  br i1 %cmp124.us.us, label %if.end135.thread.us.us, label %if.then153.us.us

if.end135.thread.us.us:                           ; preds = %for.body122.us163.us
  %64 = load i32, ptr %arrayidx128.us.us, align 16, !tbaa !5
  store i32 %64, ptr %arrayidx132.us.us, align 16, !tbaa !5
  br label %for.inc165.us166.us

if.then153.us.us:                                 ; preds = %for.body122.us163.us
  %65 = add nuw nsw i64 %indvars.iv260, 1
  %arrayidx159.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv.next281, i64 %65
  %66 = load i32, ptr %arrayidx159.us.us, align 4, !tbaa !5
  %arrayidx163.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv280, i64 %indvars.iv260
  store i32 %66, ptr %arrayidx163.us.us, align 4, !tbaa !5
  br label %for.inc165.us166.us

for.inc165.us166.us:                              ; preds = %if.end135.thread.us.us, %if.then153.us.us
  %indvars.iv.next261.pre-phi = phi i64 [ 1, %if.end135.thread.us.us ], [ %65, %if.then153.us.us ]
  %exitcond267.not = icmp eq i64 %indvars.iv.next261.pre-phi, %wide.trip.count283
  br i1 %exitcond267.not, label %for.cond119.for.inc168_crit_edge.us.us, label %for.body122.us163.us, !llvm.loop !37

for.cond119.for.inc168_crit_edge.us.us:           ; preds = %for.inc165.us166.us, %for.inc165.us.us.us
  %exitcond284.not = icmp eq i64 %indvars.iv.next281, %wide.trip.count283
  br i1 %exitcond284.not, label %for.end170.us, label %for.cond119.preheader.us.us, !llvm.loop !38

for.body122.us.us171.us:                          ; preds = %for.cond119.preheader.us.us, %for.inc165.us.us.us
  %indvars.iv274 = phi i64 [ %indvars.iv.next275.pre-phi, %for.inc165.us.us.us ], [ 0, %for.cond119.preheader.us.us ]
  %cmp136.us.us.us.not = icmp eq i64 %indvars.iv274, 0
  br i1 %cmp136.us.us.us.not, label %for.inc165.us.us.us, label %if.end149.thread.us.us.us

if.end149.thread.us.us.us:                        ; preds = %for.body122.us.us171.us
  %67 = add nuw nsw i64 %indvars.iv274, 1
  %arrayidx144.us.us.us = getelementptr inbounds nuw [100 x i32], ptr %row, i64 0, i64 %67
  %68 = load i32, ptr %arrayidx144.us.us.us, align 4, !tbaa !5
  %arrayidx148.us.us.us = getelementptr inbounds nuw [100 x i32], ptr %row, i64 0, i64 %indvars.iv274
  store i32 %68, ptr %arrayidx148.us.us.us, align 4, !tbaa !5
  br label %for.inc165.us.us.us

for.inc165.us.us.us:                              ; preds = %for.body122.us.us171.us, %if.end149.thread.us.us.us
  %indvars.iv.next275.pre-phi = phi i64 [ %67, %if.end149.thread.us.us.us ], [ 1, %for.body122.us.us171.us ]
  %exitcond279.not = icmp eq i64 %indvars.iv.next275.pre-phi, %wide.trip.count283
  br i1 %exitcond279.not, label %for.cond119.for.inc168_crit_edge.us.us, label %for.body122.us.us171.us, !llvm.loop !37

for.cond15.for.inc174_crit_edge.us:               ; preds = %for.end170.us
  store i32 %add.us310, ptr %arrayidx14.us, align 4, !tbaa !5
  store i32 1, ptr %n, align 4, !tbaa !5
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1
  %exitcond290.not = icmp eq i64 %indvars.iv.next287, %wide.trip.count289
  br i1 %exitcond290.not, label %for.body179.preheader, label %for.cond4.preheader.us.us.preheader, !llvm.loop !39

for.cond177.preheader.thread:                     ; preds = %for.cond1.preheader.lr.ph
  %call9.us.us200 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %row)
  store i32 0, ptr %sum, align 16, !tbaa !5
  store i32 1, ptr %n, align 4, !tbaa !5
  br label %for.body179.preheader

for.body179.preheader:                            ; preds = %for.cond15.for.inc174_crit_edge.us, %for.cond177.preheader.thread
  %wide.trip.count303 = zext nneg i32 %.fr to i64
  br label %for.body179

for.body179:                                      ; preds = %for.body179.preheader, %for.body179
  %indvars.iv300 = phi i64 [ 0, %for.body179.preheader ], [ %indvars.iv.next301, %for.body179 ]
  %arrayidx181 = getelementptr inbounds nuw [100 x i32], ptr %sum, i64 0, i64 %indvars.iv300
  %69 = load i32, ptr %arrayidx181, align 4, !tbaa !5
  %call182 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %69)
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, 1
  %exitcond304.not = icmp eq i64 %indvars.iv.next301, %wide.trip.count303
  br i1 %exitcond304.not, label %for.end185, label %for.body179, !llvm.loop !40

for.end185:                                       ; preds = %for.body179, %entry
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %sum) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %col) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %row) #6
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

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11, !12, !13}
!17 = distinct !{!17, !10, !11, !12}
!18 = distinct !{!18, !10, !11, !12, !13}
!19 = distinct !{!19, !10, !11, !12}
!20 = distinct !{!20, !10, !11, !12, !13}
!21 = distinct !{!21, !10, !11, !12}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11, !12, !13}
!24 = distinct !{!24, !10, !11, !12}
!25 = distinct !{!25, !10, !11, !12, !13}
!26 = distinct !{!26, !10, !11, !12}
!27 = distinct !{!27, !10, !11, !12, !13}
!28 = distinct !{!28, !10, !11, !12}
!29 = distinct !{!29, !10, !11}
!30 = distinct !{!30, !10, !11}
!31 = distinct !{!31, !10, !11}
!32 = distinct !{!32, !10, !11}
!33 = distinct !{!33, !10, !11}
!34 = distinct !{!34, !10, !11, !12, !13}
!35 = distinct !{!35, !10, !11, !12}
!36 = distinct !{!36, !10, !11}
!37 = distinct !{!37, !10, !11}
!38 = distinct !{!38, !10, !11}
!39 = distinct !{!39, !10, !11}
!40 = distinct !{!40, !10, !11}
