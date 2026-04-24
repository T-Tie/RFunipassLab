; ModuleID = '<stdin>'
source_filename = "/tmp/tmpd8xn6ga2.cpp"
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
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %a = alloca [8 x [8 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %r, ptr noundef nonnull %c)
  %0 = load i32, ptr %r, align 4, !tbaa !5
  %cmp26 = icmp sgt i32 %0, 0
  br i1 %cmp26, label %for.cond1.preheader.lr.ph, label %if.then53

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %1 = load i32, ptr %c, align 4, !tbaa !5
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %for.cond1.preheader, label %for.cond13.preheader.us40.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc7
  %3 = phi i32 [ %62, %for.inc7 ], [ %0, %for.cond1.preheader.lr.ph ]
  %4 = phi i32 [ %63, %for.inc7 ], [ %1, %for.cond1.preheader.lr.ph ]
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.inc7 ], [ 0, %for.cond1.preheader.lr.ph ]
  %cmp224 = icmp sgt i32 %4, 0
  br i1 %cmp224, label %for.body3, label %for.inc7

for.cond10.preheader:                             ; preds = %for.inc7
  %cmp11.not36 = icmp sgt i32 %62, 0
  br i1 %cmp11.not36, label %for.cond13.preheader.lr.ph, label %if.then53

for.cond13.preheader.lr.ph:                       ; preds = %for.cond10.preheader
  %.pr = load i32, ptr %c, align 4, !tbaa !5
  %cmp1428 = icmp sgt i32 %.pr, 0
  br i1 %cmp1428, label %for.cond13.preheader.us.us.preheader, label %for.cond13.preheader.us40.preheader

for.cond13.preheader.us.us.preheader:             ; preds = %for.cond13.preheader.lr.ph
  %wide.trip.count101 = zext nneg i32 %62 to i64
  %wide.trip.count91 = zext nneg i32 %.pr to i64
  %min.iters.check129 = icmp ult i32 %62, 5
  %n.mod.vf131 = and i64 %wide.trip.count101, 3
  %5 = icmp eq i64 %n.mod.vf131, 0
  %6 = select i1 %5, i64 4, i64 %n.mod.vf131
  %n.vec132 = sub nsw i64 %wide.trip.count101, %6
  br label %for.cond13.preheader.us.us

for.cond13.preheader.us.us:                       ; preds = %for.cond13.preheader.us.us.preheader, %for.inc49.us.us
  %indvars.iv98 = phi i64 [ 0, %for.cond13.preheader.us.us.preheader ], [ %indvars.iv.next99, %for.inc49.us.us ]
  br label %for.body15.us.us

for.inc49.us.us:                                  ; preds = %for.cond28.for.end44_crit_edge.us.us
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %if.then53, label %for.cond13.preheader.us.us, !llvm.loop !9

for.body30.us.us:                                 ; preds = %for.body30.us.us.preheader, %for.body30.us.us
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %for.body30.us.us ], [ %indvars.iv93.ph, %for.body30.us.us.preheader ]
  %min.034.us.us = phi i32 [ %spec.select22.us.us, %for.body30.us.us ], [ %min.034.us.us.ph, %for.body30.us.us.preheader ]
  %arrayidx34.us.us = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv93, i64 %idxprom33.us.us
  %7 = load i32, ptr %arrayidx34.us.us, align 4, !tbaa !5
  %cmp39.us.us = icmp slt i32 %7, %12
  %8 = trunc nuw nsw i64 %indvars.iv93 to i32
  %spec.select22.us.us = select i1 %cmp39.us.us, i32 %8, i32 %min.034.us.us
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count101
  br i1 %exitcond97.not, label %for.cond28.for.end44_crit_edge.us.us, label %for.body30.us.us, !llvm.loop !12

for.body15.us.us:                                 ; preds = %for.body15.us.us, %for.cond13.preheader.us.us
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.body15.us.us ], [ 0, %for.cond13.preheader.us.us ]
  %max.030.us.us = phi i32 [ %spec.select.us.us, %for.body15.us.us ], [ 0, %for.cond13.preheader.us.us ]
  %arrayidx19.us.us = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv98, i64 %indvars.iv88
  %9 = load i32, ptr %arrayidx19.us.us, align 4, !tbaa !5
  %idxprom22.us.us = zext nneg i32 %max.030.us.us to i64
  %arrayidx23.us.us = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv98, i64 %idxprom22.us.us
  %10 = load i32, ptr %arrayidx23.us.us, align 4, !tbaa !5
  %cmp24.us.us = icmp sgt i32 %9, %10
  %11 = trunc nuw nsw i64 %indvars.iv88 to i32
  %spec.select.us.us = select i1 %cmp24.us.us, i32 %11, i32 %max.030.us.us
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  %exitcond92.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count91
  br i1 %exitcond92.not, label %for.cond13.for.cond28.preheader_crit_edge.us.us, label %for.body15.us.us, !llvm.loop !14

for.cond13.for.cond28.preheader_crit_edge.us.us:  ; preds = %for.body15.us.us
  %idxprom33.us.us = zext nneg i32 %spec.select.us.us to i64
  %arrayidx38.us.us = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv98, i64 %idxprom33.us.us
  %12 = load i32, ptr %arrayidx38.us.us, align 4, !tbaa !5
  %13 = trunc nuw nsw i64 %indvars.iv98 to i32
  br i1 %min.iters.check129, label %for.body30.us.us.preheader, label %vector.ph130

vector.ph130:                                     ; preds = %for.cond13.for.cond28.preheader_crit_edge.us.us
  %broadcast.splatinsert133 = insertelement <4 x i32> poison, i32 %12, i64 0
  %broadcast.splat134 = shufflevector <4 x i32> %broadcast.splatinsert133, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph130
  %index136 = phi i64 [ 0, %vector.ph130 ], [ %index.next139, %vector.body135 ]
  %vec.phi137 = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph130 ], [ %30, %vector.body135 ]
  %vec.ind138 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph130 ], [ %vec.ind.next140, %vector.body135 ]
  %14 = or disjoint i64 %index136, 1
  %15 = or disjoint i64 %index136, 2
  %16 = or disjoint i64 %index136, 3
  %17 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %index136, i64 %idxprom33.us.us
  %18 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %14, i64 %idxprom33.us.us
  %19 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %15, i64 %idxprom33.us.us
  %20 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %16, i64 %idxprom33.us.us
  %21 = load i32, ptr %17, align 4, !tbaa !5
  %22 = load i32, ptr %18, align 4, !tbaa !5
  %23 = load i32, ptr %19, align 4, !tbaa !5
  %24 = load i32, ptr %20, align 4, !tbaa !5
  %25 = insertelement <4 x i32> poison, i32 %21, i64 0
  %26 = insertelement <4 x i32> %25, i32 %22, i64 1
  %27 = insertelement <4 x i32> %26, i32 %23, i64 2
  %28 = insertelement <4 x i32> %27, i32 %24, i64 3
  %29 = icmp slt <4 x i32> %28, %broadcast.splat134
  %30 = select <4 x i1> %29, <4 x i32> %vec.ind138, <4 x i32> %vec.phi137
  %index.next139 = add nuw i64 %index136, 4
  %vec.ind.next140 = add <4 x i32> %vec.ind138, splat (i32 4)
  %31 = icmp eq i64 %index.next139, %n.vec132
  br i1 %31, label %middle.block141, label %vector.body135, !llvm.loop !15

middle.block141:                                  ; preds = %vector.body135
  %32 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %30)
  %rdx.select.cmp142.not = icmp eq i32 %32, -2147483648
  %rdx.select143 = select i1 %rdx.select.cmp142.not, i32 %13, i32 %32
  br label %for.body30.us.us.preheader

for.body30.us.us.preheader:                       ; preds = %for.cond13.for.cond28.preheader_crit_edge.us.us, %middle.block141
  %indvars.iv93.ph = phi i64 [ 0, %for.cond13.for.cond28.preheader_crit_edge.us.us ], [ %n.vec132, %middle.block141 ]
  %min.034.us.us.ph = phi i32 [ %13, %for.cond13.for.cond28.preheader_crit_edge.us.us ], [ %rdx.select143, %middle.block141 ]
  br label %for.body30.us.us

for.cond28.for.end44_crit_edge.us.us:             ; preds = %for.body30.us.us
  %33 = zext i32 %spec.select22.us.us to i64
  %cmp45.us.us = icmp eq i64 %indvars.iv98, %33
  br i1 %cmp45.us.us, label %if.then46, label %for.inc49.us.us

for.cond13.preheader.us40.preheader:              ; preds = %for.cond1.preheader.lr.ph, %for.cond13.preheader.lr.ph
  %.lcssa105111 = phi i32 [ %62, %for.cond13.preheader.lr.ph ], [ %0, %for.cond1.preheader.lr.ph ]
  %wide.trip.count86 = zext nneg i32 %.lcssa105111 to i64
  %min.iters.check = icmp ult i32 %.lcssa105111, 5
  %n.mod.vf = and i64 %wide.trip.count86, 3
  %34 = icmp eq i64 %n.mod.vf, 0
  %35 = select i1 %34, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count86, %35
  br label %for.cond13.preheader.us40

for.cond13.preheader.us40:                        ; preds = %for.cond13.preheader.us40.preheader, %for.inc49.us45
  %indvars.iv83 = phi i64 [ 0, %for.cond13.preheader.us40.preheader ], [ %indvars.iv.next84, %for.inc49.us45 ]
  %arrayidx38.us59 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv83, i64 0
  %36 = load i32, ptr %arrayidx38.us59, align 16, !tbaa !5
  %37 = trunc nuw nsw i64 %indvars.iv83 to i32
  br i1 %min.iters.check, label %for.body30.us48.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond13.preheader.us40
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %36, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %54, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %38 = or disjoint i64 %index, 1
  %39 = or disjoint i64 %index, 2
  %40 = or disjoint i64 %index, 3
  %41 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %index, i64 0
  %42 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %38, i64 0
  %43 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %39, i64 0
  %44 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %40, i64 0
  %45 = load i32, ptr %41, align 16, !tbaa !5
  %46 = load i32, ptr %42, align 16, !tbaa !5
  %47 = load i32, ptr %43, align 16, !tbaa !5
  %48 = load i32, ptr %44, align 16, !tbaa !5
  %49 = insertelement <4 x i32> poison, i32 %45, i64 0
  %50 = insertelement <4 x i32> %49, i32 %46, i64 1
  %51 = insertelement <4 x i32> %50, i32 %47, i64 2
  %52 = insertelement <4 x i32> %51, i32 %48, i64 3
  %53 = icmp slt <4 x i32> %52, %broadcast.splat
  %54 = select <4 x i1> %53, <4 x i32> %vec.ind, <4 x i32> %vec.phi
  %index.next = add nuw i64 %index, 4
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %55 = icmp eq i64 %index.next, %n.vec
  br i1 %55, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %56 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %54)
  %rdx.select.cmp.not = icmp eq i32 %56, -2147483648
  %rdx.select = select i1 %rdx.select.cmp.not, i32 %37, i32 %56
  br label %for.body30.us48.preheader

for.body30.us48.preheader:                        ; preds = %for.cond13.preheader.us40, %middle.block
  %indvars.iv80.ph = phi i64 [ 0, %for.cond13.preheader.us40 ], [ %n.vec, %middle.block ]
  %min.034.us49.ph = phi i32 [ %37, %for.cond13.preheader.us40 ], [ %rdx.select, %middle.block ]
  br label %for.body30.us48

for.inc49.us45:                                   ; preds = %for.cond28.for.end44_crit_edge.us60
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  %exitcond87.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count86
  br i1 %exitcond87.not, label %if.then53, label %for.cond13.preheader.us40, !llvm.loop !9

for.body30.us48:                                  ; preds = %for.body30.us48.preheader, %for.body30.us48
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %for.body30.us48 ], [ %indvars.iv80.ph, %for.body30.us48.preheader ]
  %min.034.us49 = phi i32 [ %spec.select22.us54, %for.body30.us48 ], [ %min.034.us49.ph, %for.body30.us48.preheader ]
  %arrayidx34.us52 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv80, i64 0
  %57 = load i32, ptr %arrayidx34.us52, align 16, !tbaa !5
  %cmp39.us53 = icmp slt i32 %57, %36
  %58 = trunc nuw nsw i64 %indvars.iv80 to i32
  %spec.select22.us54 = select i1 %cmp39.us53, i32 %58, i32 %min.034.us49
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count86
  br i1 %exitcond.not, label %for.cond28.for.end44_crit_edge.us60, label %for.body30.us48, !llvm.loop !18

for.cond28.for.end44_crit_edge.us60:              ; preds = %for.body30.us48
  %59 = zext i32 %spec.select22.us54 to i64
  %cmp45.us44 = icmp eq i64 %indvars.iv83, %59
  br i1 %cmp45.us44, label %if.then46, label %for.inc49.us45

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv77, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %60 = load i32, ptr %c, align 4, !tbaa !5
  %61 = sext i32 %60 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %61
  br i1 %cmp2, label %for.body3, label %for.inc7.loopexit, !llvm.loop !19

for.inc7.loopexit:                                ; preds = %for.body3
  %.pre = load i32, ptr %r, align 4, !tbaa !5
  br label %for.inc7

for.inc7:                                         ; preds = %for.inc7.loopexit, %for.cond1.preheader
  %62 = phi i32 [ %.pre, %for.inc7.loopexit ], [ %3, %for.cond1.preheader ]
  %63 = phi i32 [ %60, %for.inc7.loopexit ], [ %4, %for.cond1.preheader ]
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %64 = sext i32 %62 to i64
  %cmp = icmp slt i64 %indvars.iv.next78, %64
  br i1 %cmp, label %for.cond1.preheader, label %for.cond10.preheader, !llvm.loop !20

if.then46:                                        ; preds = %for.cond28.for.end44_crit_edge.us60, %for.cond28.for.end44_crit_edge.us.us
  %.us-phi38 = phi i32 [ %13, %for.cond28.for.end44_crit_edge.us.us ], [ %37, %for.cond28.for.end44_crit_edge.us60 ]
  %.us-phi39 = phi i32 [ %spec.select.us.us, %for.cond28.for.end44_crit_edge.us.us ], [ 0, %for.cond28.for.end44_crit_edge.us60 ]
  %call47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.us-phi38, i32 noundef %.us-phi39)
  br label %if.end55

if.then53:                                        ; preds = %for.inc49.us45, %for.inc49.us.us, %entry, %for.cond10.preheader
  %call54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end55

if.end55:                                         ; preds = %if.then46, %if.then53
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!12 = distinct !{!12, !10, !11, !13}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11, !13, !16}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !10, !11, !13, !16}
!18 = distinct !{!18, !10, !11, !13}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11, !21}
!21 = !{!"llvm.loop.unswitch.partial.disable"}
