; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmn1afqrr.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp10 = icmp sgt i32 %0, 0
  br i1 %cmp10, label %for.cond1.preheader, label %for.end17

for.cond1.preheader:                              ; preds = %entry, %for.end12
  %1 = phi i32 [ %6, %for.end12 ], [ %0, %entry ]
  %i.011 = phi i32 [ %inc16, %for.end12 ], [ 0, %entry ]
  %cmp28 = icmp sgt i32 %1, 0
  br i1 %cmp28, label %for.cond4.preheader, label %for.end12

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc10
  %2 = phi i32 [ %5, %for.inc10 ], [ %1, %for.cond1.preheader ]
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.inc10 ], [ 0, %for.cond1.preheader ]
  %cmp56 = icmp sgt i32 %2, 0
  br i1 %cmp56, label %for.body6, label %for.cond4.preheader.for.inc10_crit_edge

for.cond4.preheader.for.inc10_crit_edge:          ; preds = %for.cond4.preheader
  %.pre = sext i32 %2 to i64
  br label %for.inc10

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond4.preheader ]
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv15, i64 %indvars.iv
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp5, label %for.body6, label %for.inc10, !llvm.loop !9

for.inc10:                                        ; preds = %for.body6, %for.cond4.preheader.for.inc10_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond4.preheader.for.inc10_crit_edge ], [ %4, %for.body6 ]
  %5 = phi i32 [ %2, %for.cond4.preheader.for.inc10_crit_edge ], [ %3, %for.body6 ]
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %cmp2 = icmp slt i64 %indvars.iv.next16, %.pre-phi
  br i1 %cmp2, label %for.cond4.preheader, label %for.end12, !llvm.loop !12

for.end12:                                        ; preds = %for.inc10, %for.cond1.preheader
  %.lcssa = phi i32 [ %1, %for.cond1.preheader ], [ %5, %for.inc10 ]
  %call13 = call noundef i32 @_Z6changePA100_ii(ptr noundef nonnull %a, i32 noundef %.lcssa)
  %call14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %call13)
  %inc16 = add nuw nsw i32 %i.011, 1
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc16, %6
  br i1 %cmp, label %for.cond1.preheader, label %for.end17, !llvm.loop !14

for.end17:                                        ; preds = %for.end12, %entry
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z6changePA100_ii(ptr noundef captures(none) %a, i32 noundef %n) local_unnamed_addr #4 {
entry:
  %b = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %b) #7
  %cmp79 = icmp sgt i32 %n, 0
  br i1 %cmp79, label %for.body.us.us.preheader, label %for.end73.thread

for.body.us.us.preheader:                         ; preds = %entry
  %wide.trip.count134 = zext nneg i32 %n to i64
  %min.iters.check169 = icmp ult i32 %n, 4
  %n.vec172 = and i64 %wide.trip.count134, 2147483644
  %cmp.n180 = icmp eq i64 %n.vec172, %wide.trip.count134
  %min.iters.check = icmp ult i32 %n, 4
  %n.vec = and i64 %wide.trip.count134, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count134
  br label %for.body.us.us

for.body.us.us:                                   ; preds = %for.body.us.us.preheader, %for.cond14.for.inc28_crit_edge.us.us
  %indvars.iv131 = phi i64 [ 0, %for.body.us.us.preheader ], [ %indvars.iv.next132, %for.cond14.for.inc28_crit_edge.us.us ]
  %arrayidx.us.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv131
  %0 = load i32, ptr %arrayidx.us.us, align 4, !tbaa !5
  br i1 %min.iters.check169, label %for.body4.us.us.preheader, label %vector.ph170

vector.ph170:                                     ; preds = %for.body.us.us
  %broadcast.splatinsert173 = insertelement <4 x i32> poison, i32 %0, i64 0
  %broadcast.splat174 = shufflevector <4 x i32> %broadcast.splatinsert173, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph170
  %index176 = phi i64 [ 0, %vector.ph170 ], [ %index.next178, %vector.body175 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat174, %vector.ph170 ], [ %2, %vector.body175 ]
  %1 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv131, i64 %index176
  %wide.load177 = load <4 x i32>, ptr %1, align 4, !tbaa !5
  %2 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load177)
  %index.next178 = add nuw i64 %index176, 4
  %3 = icmp eq i64 %index.next178, %n.vec172
  br i1 %3, label %middle.block179, label %vector.body175, !llvm.loop !15

middle.block179:                                  ; preds = %vector.body175
  %4 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %2)
  br i1 %cmp.n180, label %for.cond2.for.cond14.preheader_crit_edge.us.us, label %for.body4.us.us.preheader

for.body4.us.us.preheader:                        ; preds = %for.body.us.us, %middle.block179
  %indvars.iv.ph = phi i64 [ 0, %for.body.us.us ], [ %n.vec172, %middle.block179 ]
  %s.076.us.us.ph = phi i32 [ %0, %for.body.us.us ], [ %4, %middle.block179 ]
  br label %for.body4.us.us

for.body16.us.us:                                 ; preds = %for.body16.us.us.preheader, %for.body16.us.us
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %for.body16.us.us ], [ %indvars.iv126.ph, %for.body16.us.us.preheader ]
  %arrayidx20.us.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv131, i64 %indvars.iv126
  %5 = load i32, ptr %arrayidx20.us.us, align 4, !tbaa !5
  %sub.us.us = sub nsw i32 %5, %.s.0.us.us.lcssa
  store i32 %sub.us.us, ptr %arrayidx20.us.us, align 4, !tbaa !5
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count134
  br i1 %exitcond130.not, label %for.cond14.for.inc28_crit_edge.us.us, label %for.body16.us.us, !llvm.loop !18

for.body4.us.us:                                  ; preds = %for.body4.us.us.preheader, %for.body4.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4.us.us ], [ %indvars.iv.ph, %for.body4.us.us.preheader ]
  %s.076.us.us = phi i32 [ %.s.0.us.us, %for.body4.us.us ], [ %s.076.us.us.ph, %for.body4.us.us.preheader ]
  %arrayidx8.us.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv131, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx8.us.us, align 4, !tbaa !5
  %.s.0.us.us = tail call i32 @llvm.smin.i32(i32 %s.076.us.us, i32 %6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count134
  br i1 %exitcond.not, label %for.cond2.for.cond14.preheader_crit_edge.us.us, label %for.body4.us.us, !llvm.loop !19

for.cond2.for.cond14.preheader_crit_edge.us.us:   ; preds = %for.body4.us.us, %middle.block179
  %.s.0.us.us.lcssa = phi i32 [ %4, %middle.block179 ], [ %.s.0.us.us, %for.body4.us.us ]
  br i1 %min.iters.check, label %for.body16.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond2.for.cond14.preheader_crit_edge.us.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.s.0.us.us.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %7 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv131, i64 %index
  %wide.load = load <4 x i32>, ptr %7, align 4, !tbaa !5
  %8 = sub nsw <4 x i32> %wide.load, %broadcast.splat
  store <4 x i32> %8, ptr %7, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond14.for.inc28_crit_edge.us.us, label %for.body16.us.us.preheader

for.body16.us.us.preheader:                       ; preds = %for.cond2.for.cond14.preheader_crit_edge.us.us, %middle.block
  %indvars.iv126.ph = phi i64 [ 0, %for.cond2.for.cond14.preheader_crit_edge.us.us ], [ %n.vec, %middle.block ]
  br label %for.body16.us.us

for.cond14.for.inc28_crit_edge.us.us:             ; preds = %for.body16.us.us, %middle.block
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %for.body33.lr.ph, label %for.body.us.us, !llvm.loop !21

for.body33.lr.ph:                                 ; preds = %for.cond14.for.inc28_crit_edge.us.us
  %wide.trip.count149 = zext nneg i32 %n to i64
  %min.iters.check183 = icmp ult i32 %n, 4
  %n.vec186 = and i64 %wide.trip.count134, 2147483644
  %cmp.n194 = icmp eq i64 %n.vec186, %wide.trip.count134
  br label %for.body33.us

for.body33.us:                                    ; preds = %for.inc71.us, %for.body33.lr.ph
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %for.inc71.us ], [ 0, %for.body33.lr.ph ]
  %arrayidx36.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv146
  %10 = load i32, ptr %arrayidx36.us, align 4, !tbaa !5
  br i1 %min.iters.check183, label %for.body39.us.preheader, label %vector.ph184

vector.ph184:                                     ; preds = %for.body33.us
  %broadcast.splatinsert187 = insertelement <4 x i32> poison, i32 %10, i64 0
  %broadcast.splat188 = shufflevector <4 x i32> %broadcast.splatinsert187, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph184
  %index190 = phi i64 [ 0, %vector.ph184 ], [ %index.next192, %vector.body189 ]
  %vec.phi191 = phi <4 x i32> [ %broadcast.splat188, %vector.ph184 ], [ %26, %vector.body189 ]
  %11 = or disjoint i64 %index190, 1
  %12 = or disjoint i64 %index190, 2
  %13 = or disjoint i64 %index190, 3
  %14 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %index190, i64 %indvars.iv146
  %15 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %11, i64 %indvars.iv146
  %16 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %12, i64 %indvars.iv146
  %17 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %13, i64 %indvars.iv146
  %18 = load i32, ptr %14, align 4, !tbaa !5
  %19 = load i32, ptr %15, align 4, !tbaa !5
  %20 = load i32, ptr %16, align 4, !tbaa !5
  %21 = load i32, ptr %17, align 4, !tbaa !5
  %22 = insertelement <4 x i32> poison, i32 %18, i64 0
  %23 = insertelement <4 x i32> %22, i32 %19, i64 1
  %24 = insertelement <4 x i32> %23, i32 %20, i64 2
  %25 = insertelement <4 x i32> %24, i32 %21, i64 3
  %26 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi191, <4 x i32> %25)
  %index.next192 = add nuw i64 %index190, 4
  %27 = icmp eq i64 %index.next192, %n.vec186
  br i1 %27, label %middle.block193, label %vector.body189, !llvm.loop !22

middle.block193:                                  ; preds = %vector.body189
  %28 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %26)
  br i1 %cmp.n194, label %for.body58.us.preheader, label %for.body39.us.preheader

for.body39.us.preheader:                          ; preds = %for.body33.us, %middle.block193
  %indvars.iv136.ph = phi i64 [ 0, %for.body33.us ], [ %n.vec186, %middle.block193 ]
  %s.199.us.ph = phi i32 [ %10, %for.body33.us ], [ %28, %middle.block193 ]
  br label %for.body39.us

for.inc71.us:                                     ; preds = %for.body58.us
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %for.end73, label %for.body33.us, !llvm.loop !23

for.body58.us:                                    ; preds = %for.body58.us.preheader, %for.body58.us
  %indvars.iv141 = phi i64 [ 0, %for.body58.us.preheader ], [ %indvars.iv.next142, %for.body58.us ]
  %arrayidx62.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv141, i64 %indvars.iv146
  %29 = load i32, ptr %arrayidx62.us, align 4, !tbaa !5
  %sub63.us = sub nsw i32 %29, %.s.1.us.lcssa
  store i32 %sub63.us, ptr %arrayidx62.us, align 4, !tbaa !5
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count149
  br i1 %exitcond145.not, label %for.inc71.us, label %for.body58.us, !llvm.loop !24

for.body39.us:                                    ; preds = %for.body39.us.preheader, %for.body39.us
  %indvars.iv136 = phi i64 [ %indvars.iv.next137, %for.body39.us ], [ %indvars.iv136.ph, %for.body39.us.preheader ]
  %s.199.us = phi i32 [ %.s.1.us, %for.body39.us ], [ %s.199.us.ph, %for.body39.us.preheader ]
  %arrayidx43.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv136, i64 %indvars.iv146
  %30 = load i32, ptr %arrayidx43.us, align 4, !tbaa !5
  %.s.1.us = tail call i32 @llvm.smin.i32(i32 %s.199.us, i32 %30)
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  %exitcond140.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count149
  br i1 %exitcond140.not, label %for.body58.us.preheader, label %for.body39.us, !llvm.loop !25

for.body58.us.preheader:                          ; preds = %for.body39.us, %middle.block193
  %.s.1.us.lcssa = phi i32 [ %28, %middle.block193 ], [ %.s.1.us, %for.body39.us ]
  br label %for.body58.us

for.end73.thread:                                 ; preds = %entry
  %arrayidx75164 = getelementptr inbounds nuw i8, ptr %a, i64 404
  %31 = load i32, ptr %arrayidx75164, align 4, !tbaa !5
  br label %if.end

for.end73:                                        ; preds = %for.inc71.us
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %a, i64 404
  %32 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  %cmp76 = icmp sgt i32 %n, 2
  br i1 %cmp76, label %if.then, label %if.end

if.then:                                          ; preds = %for.end73
  %33 = load i32, ptr %a, align 4, !tbaa !5
  store i32 %33, ptr %b, align 16, !tbaa !5
  %wide.trip.count155 = zext nneg i32 %n to i64
  br label %for.body83

for.cond104.preheader.us.preheader:               ; preds = %for.body83
  %34 = add nsw i32 %n, -2
  %35 = zext nneg i32 %34 to i64
  %36 = shl nuw nsw i64 %35, 2
  %invariant.gep = getelementptr inbounds nuw i8, ptr %b, i64 404
  %invariant.gep166 = getelementptr i8, ptr %a, i64 808
  br label %for.cond104.preheader.us

for.cond104.preheader.us:                         ; preds = %for.cond104.preheader.us.preheader, %for.cond104.preheader.us
  %indvar = phi i64 [ 0, %for.cond104.preheader.us.preheader ], [ %indvar.next, %for.cond104.preheader.us ]
  %37 = mul nuw nsw i64 %indvar, 400
  %gep = getelementptr i8, ptr %invariant.gep, i64 %37
  %gep167 = getelementptr i8, ptr %invariant.gep166, i64 %37
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %gep, ptr nonnull align 4 %gep167, i64 %36, i1 false), !tbaa !5
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond163.not = icmp eq i64 %indvar.next, %35
  br i1 %exitcond163.not, label %for.end122, label %for.cond104.preheader.us, !llvm.loop !26

for.body83:                                       ; preds = %if.then, %for.body83
  %indvars.iv151 = phi i64 [ 2, %if.then ], [ %indvars.iv.next152, %for.body83 ]
  %arrayidx86 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv151
  %38 = load i32, ptr %arrayidx86, align 4, !tbaa !5
  %39 = add nsw i64 %indvars.iv151, -1
  %arrayidx90 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %39
  store i32 %38, ptr %arrayidx90, align 4, !tbaa !5
  %arrayidx92 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv151
  %40 = load i32, ptr %arrayidx92, align 4, !tbaa !5
  %arrayidx96 = getelementptr inbounds [100 x [100 x i32]], ptr %b, i64 0, i64 %39
  store i32 %40, ptr %arrayidx96, align 16, !tbaa !5
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1
  %exitcond156.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count155
  br i1 %exitcond156.not, label %for.cond104.preheader.us.preheader, label %for.body83, !llvm.loop !27

for.end122:                                       ; preds = %for.cond104.preheader.us
  %sub123 = add nsw i32 %n, -1
  %call = call noundef i32 @_Z6changePA100_ii(ptr noundef nonnull %b, i32 noundef %sub123)
  %add = add nsw i32 %call, %32
  br label %if.end

if.end:                                           ; preds = %for.end73.thread, %for.end122, %for.end73
  %f.0 = phi i32 [ %add, %for.end122 ], [ %32, %for.end73 ], [ %31, %for.end73.thread ]
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %b) #7
  ret i32 %f.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !10, !11, !16}
!19 = distinct !{!19, !10, !11, !16}
!20 = distinct !{!20, !10, !11, !16, !17}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11, !16, !17}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11, !16}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
