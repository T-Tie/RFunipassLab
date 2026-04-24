; ModuleID = '<stdin>'
source_filename = "/tmp/tmpg6adx7n4.cpp"
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
  %7 = zext i32 %6 to i64
  %vla1 = alloca i32, i64 %7, align 16
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %9 = zext i32 %8 to i64
  %vla2 = alloca i32, i64 %9, align 16
  %cmp46 = icmp sgt i32 %6, 0
  br i1 %cmp46, label %for.cond3.preheader.lr.ph, label %if.then107

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %10 = icmp sgt i32 %8, 0
  br i1 %10, label %for.cond3.preheader, label %for.body14.preheader

for.cond3.preheader:                              ; preds = %for.cond3.preheader.lr.ph, %for.inc9
  %11 = phi i32 [ %21, %for.inc9 ], [ %6, %for.cond3.preheader.lr.ph ]
  %12 = phi i32 [ %22, %for.inc9 ], [ %8, %for.cond3.preheader.lr.ph ]
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.inc9 ], [ 0, %for.cond3.preheader.lr.ph ]
  %cmp444 = icmp sgt i32 %12, 0
  br i1 %cmp444, label %for.body5.lr.ph, label %for.inc9

for.body5.lr.ph:                                  ; preds = %for.cond3.preheader
  %13 = mul nuw nsw i64 %indvars.iv77, %3
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %13
  br label %for.body5

for.cond12.preheader:                             ; preds = %for.inc9
  %cmp1348 = icmp sgt i32 %21, 0
  br i1 %cmp1348, label %for.body14.preheader, label %for.cond23.preheader

for.body14.preheader:                             ; preds = %for.cond3.preheader.lr.ph, %for.cond12.preheader
  %14 = phi i32 [ %21, %for.cond12.preheader ], [ %6, %for.cond3.preheader.lr.ph ]
  %15 = phi i32 [ %22, %for.cond12.preheader ], [ %8, %for.cond3.preheader.lr.ph ]
  %wide.trip.count = zext nneg i32 %14 to i64
  %min.iters.check = icmp ugt i32 %14, 3
  %ident.check.not = icmp eq i32 %2, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph, label %for.body14.preheader181

vector.ph:                                        ; preds = %for.body14.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %16 = getelementptr inbounds nuw i32, ptr %vla, i64 %index
  %wide.load = load <4 x i32>, ptr %16, align 16, !tbaa !5
  %17 = getelementptr inbounds nuw i32, ptr %vla1, i64 %index
  store <4 x i32> %wide.load, ptr %17, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %18 = icmp eq i64 %index.next, %n.vec
  br i1 %18, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond23.preheader, label %for.body14.preheader181

for.body14.preheader181:                          ; preds = %for.body14.preheader, %middle.block
  %indvars.iv80.ph = phi i64 [ 0, %for.body14.preheader ], [ %n.vec, %middle.block ]
  br label %for.body14

for.body5:                                        ; preds = %for.body5.lr.ph, %for.body5
  %indvars.iv = phi i64 [ 0, %for.body5.lr.ph ], [ %indvars.iv.next, %for.body5 ]
  %arrayidx7 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call8 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx7)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %19 = load i32, ptr %n, align 4, !tbaa !5
  %20 = sext i32 %19 to i64
  %cmp4 = icmp slt i64 %indvars.iv.next, %20
  br i1 %cmp4, label %for.body5, label %for.inc9.loopexit, !llvm.loop !14

for.inc9.loopexit:                                ; preds = %for.body5
  %.pre = load i32, ptr %m, align 4, !tbaa !5
  br label %for.inc9

for.inc9:                                         ; preds = %for.inc9.loopexit, %for.cond3.preheader
  %21 = phi i32 [ %.pre, %for.inc9.loopexit ], [ %11, %for.cond3.preheader ]
  %22 = phi i32 [ %19, %for.inc9.loopexit ], [ %12, %for.cond3.preheader ]
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %23 = sext i32 %21 to i64
  %cmp = icmp slt i64 %indvars.iv.next78, %23
  br i1 %cmp, label %for.cond3.preheader, label %for.cond12.preheader, !llvm.loop !15

for.cond23.preheader:                             ; preds = %for.body14, %middle.block, %for.cond12.preheader
  %cmp1348115 = phi i1 [ false, %for.cond12.preheader ], [ true, %middle.block ], [ true, %for.body14 ]
  %24 = phi i32 [ %21, %for.cond12.preheader ], [ %14, %middle.block ], [ %14, %for.body14 ]
  %25 = phi i32 [ %22, %for.cond12.preheader ], [ %15, %middle.block ], [ %15, %for.body14 ]
  %cmp2450 = icmp sgt i32 %25, 0
  br i1 %cmp2450, label %for.cond34.preheader, label %for.cond86.preheader

for.body14:                                       ; preds = %for.body14.preheader181, %for.body14
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %for.body14 ], [ %indvars.iv80.ph, %for.body14.preheader181 ]
  %26 = mul nuw nsw i64 %indvars.iv80, %3
  %arrayidx16 = getelementptr inbounds nuw i32, ptr %vla, i64 %26
  %27 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %arrayidx19 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv80
  store i32 %27, ptr %arrayidx19, align 4, !tbaa !5
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count
  br i1 %exitcond.not, label %for.cond23.preheader, label %for.body14, !llvm.loop !17

for.cond34.preheader:                             ; preds = %for.cond23.preheader
  %28 = zext nneg i32 %25 to i64
  %29 = shl nuw nsw i64 %28, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %vla2, ptr nonnull align 16 %vla, i64 %29, i1 false), !tbaa !5
  br i1 %cmp1348115, label %for.cond37.preheader.us.preheader, label %if.then107

for.cond37.preheader.us.preheader:                ; preds = %for.cond34.preheader
  %wide.trip.count94 = zext i32 %24 to i64
  %wide.trip.count89 = zext nneg i32 %25 to i64
  %min.iters.check147 = icmp ult i32 %25, 4
  %n.vec150 = and i64 %wide.trip.count89, 2147483644
  %cmp.n156 = icmp eq i64 %n.vec150, %wide.trip.count89
  br label %for.cond37.preheader.us

for.cond37.preheader.us:                          ; preds = %for.cond37.preheader.us.preheader, %for.cond37.for.inc56_crit_edge.us
  %indvars.iv91 = phi i64 [ 0, %for.cond37.preheader.us.preheader ], [ %indvars.iv.next92, %for.cond37.for.inc56_crit_edge.us ]
  %30 = mul nuw nsw i64 %indvars.iv91, %3
  %arrayidx41.us = getelementptr inbounds nuw i32, ptr %vla, i64 %30
  %arrayidx45.us = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv91
  %arrayidx45.promoted.us = load i32, ptr %arrayidx45.us, align 4
  br i1 %min.iters.check147, label %for.body39.us.preheader, label %vector.ph148

vector.ph148:                                     ; preds = %for.cond37.preheader.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %arrayidx45.promoted.us, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph148
  %index152 = phi i64 [ 0, %vector.ph148 ], [ %index.next154, %vector.body151 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph148 ], [ %32, %vector.body151 ]
  %31 = getelementptr inbounds nuw i32, ptr %arrayidx41.us, i64 %index152
  %wide.load153 = load <4 x i32>, ptr %31, align 4, !tbaa !5
  %32 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load153, <4 x i32> %vec.phi)
  %index.next154 = add nuw i64 %index152, 4
  %33 = icmp eq i64 %index.next154, %n.vec150
  br i1 %33, label %middle.block155, label %vector.body151, !llvm.loop !18

middle.block155:                                  ; preds = %vector.body151
  %34 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %32)
  br i1 %cmp.n156, label %for.cond37.for.inc56_crit_edge.us, label %for.body39.us.preheader

for.body39.us.preheader:                          ; preds = %for.cond37.preheader.us, %middle.block155
  %indvars.iv86.ph = phi i64 [ 0, %for.cond37.preheader.us ], [ %n.vec150, %middle.block155 ]
  %spec.store.select55.us.ph = phi i32 [ %arrayidx45.promoted.us, %for.cond37.preheader.us ], [ %34, %middle.block155 ]
  br label %for.body39.us

for.body39.us:                                    ; preds = %for.body39.us.preheader, %for.body39.us
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %for.body39.us ], [ %indvars.iv86.ph, %for.body39.us.preheader ]
  %spec.store.select55.us = phi i32 [ %spec.store.select.us, %for.body39.us ], [ %spec.store.select55.us.ph, %for.body39.us.preheader ]
  %arrayidx43.us = getelementptr inbounds nuw i32, ptr %arrayidx41.us, i64 %indvars.iv86
  %35 = load i32, ptr %arrayidx43.us, align 4, !tbaa !5
  %spec.store.select.us = call i32 @llvm.smax.i32(i32 %35, i32 %spec.store.select55.us)
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count89
  br i1 %exitcond90.not, label %for.cond37.for.inc56_crit_edge.us, label %for.body39.us, !llvm.loop !19

for.cond37.for.inc56_crit_edge.us:                ; preds = %for.body39.us, %middle.block155
  %spec.store.select.us.lcssa = phi i32 [ %34, %middle.block155 ], [ %spec.store.select.us, %for.body39.us ]
  store i32 %spec.store.select.us.lcssa, ptr %arrayidx45.us, align 4
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %for.cond62.preheader.us.preheader, label %for.cond37.preheader.us, !llvm.loop !20

for.cond62.preheader.us.preheader:                ; preds = %for.cond37.for.inc56_crit_edge.us
  %wide.trip.count104 = zext nneg i32 %25 to i64
  %wide.trip.count99 = zext nneg i32 %24 to i64
  %min.iters.check161 = icmp ugt i32 %24, 3
  %ident.check159.not = icmp eq i32 %2, 1
  %or.cond176 = select i1 %min.iters.check161, i1 %ident.check159.not, i1 false
  %n.vec164 = and i64 %wide.trip.count94, 4294967292
  %cmp.n173 = icmp eq i64 %n.vec164, %wide.trip.count94
  br label %for.cond62.preheader.us

for.cond62.preheader.us:                          ; preds = %for.cond62.preheader.us.preheader, %for.cond62.for.inc83_crit_edge.us
  %indvars.iv101 = phi i64 [ 0, %for.cond62.preheader.us.preheader ], [ %indvars.iv.next102, %for.cond62.for.inc83_crit_edge.us ]
  %invariant.gep.us = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv101
  %arrayidx70.us = getelementptr inbounds nuw i32, ptr %vla2, i64 %indvars.iv101
  %arrayidx70.promoted.us = load i32, ptr %arrayidx70.us, align 4
  br i1 %or.cond176, label %vector.ph162, label %for.body64.us.preheader

vector.ph162:                                     ; preds = %for.cond62.preheader.us
  %broadcast.splatinsert165 = insertelement <4 x i32> poison, i32 %arrayidx70.promoted.us, i64 0
  %broadcast.splat166 = shufflevector <4 x i32> %broadcast.splatinsert165, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph162
  %index168 = phi i64 [ 0, %vector.ph162 ], [ %index.next171, %vector.body167 ]
  %vec.phi169 = phi <4 x i32> [ %broadcast.splat166, %vector.ph162 ], [ %37, %vector.body167 ]
  %36 = getelementptr inbounds nuw i32, ptr %invariant.gep.us, i64 %index168
  %wide.load170 = load <4 x i32>, ptr %36, align 4, !tbaa !5
  %37 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load170, <4 x i32> %vec.phi169)
  %index.next171 = add nuw i64 %index168, 4
  %38 = icmp eq i64 %index.next171, %n.vec164
  br i1 %38, label %middle.block172, label %vector.body167, !llvm.loop !21

middle.block172:                                  ; preds = %vector.body167
  %39 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %37)
  br i1 %cmp.n173, label %for.cond62.for.inc83_crit_edge.us, label %for.body64.us.preheader

for.body64.us.preheader:                          ; preds = %for.cond62.preheader.us, %middle.block172
  %indvars.iv96.ph = phi i64 [ 0, %for.cond62.preheader.us ], [ %n.vec164, %middle.block172 ]
  %spec.store.select4260.us.ph = phi i32 [ %arrayidx70.promoted.us, %for.cond62.preheader.us ], [ %39, %middle.block172 ]
  br label %for.body64.us

for.body64.us:                                    ; preds = %for.body64.us.preheader, %for.body64.us
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %for.body64.us ], [ %indvars.iv96.ph, %for.body64.us.preheader ]
  %spec.store.select4260.us = phi i32 [ %spec.store.select42.us, %for.body64.us ], [ %spec.store.select4260.us.ph, %for.body64.us.preheader ]
  %40 = mul nuw nsw i64 %indvars.iv96, %3
  %gep.us = getelementptr inbounds nuw i32, ptr %invariant.gep.us, i64 %40
  %41 = load i32, ptr %gep.us, align 4, !tbaa !5
  %spec.store.select42.us = call i32 @llvm.smin.i32(i32 %41, i32 %spec.store.select4260.us)
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %for.cond62.for.inc83_crit_edge.us, label %for.body64.us, !llvm.loop !22

for.cond62.for.inc83_crit_edge.us:                ; preds = %for.body64.us, %middle.block172
  %spec.store.select42.us.lcssa = phi i32 [ %39, %middle.block172 ], [ %spec.store.select42.us, %for.body64.us ]
  store i32 %spec.store.select42.us.lcssa, ptr %arrayidx70.us, align 4
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %exitcond105.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count104
  br i1 %exitcond105.not, label %for.cond86.preheader, label %for.cond62.preheader.us, !llvm.loop !23

for.cond86.preheader:                             ; preds = %for.cond62.for.inc83_crit_edge.us, %for.cond23.preheader
  %brmerge.not = and i1 %cmp2450, %cmp1348115
  br i1 %brmerge.not, label %for.cond89.preheader, label %if.then107

for.cond89.preheader:                             ; preds = %for.cond86.preheader, %for.inc103
  %42 = phi i32 [ %52, %for.inc103 ], [ %24, %for.cond86.preheader ]
  %43 = phi i32 [ %53, %for.inc103 ], [ %25, %for.cond86.preheader ]
  %44 = phi i32 [ %54, %for.inc103 ], [ %25, %for.cond86.preheader ]
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %for.inc103 ], [ 0, %for.cond86.preheader ]
  %k.069 = phi i32 [ %k.1.lcssa, %for.inc103 ], [ 0, %for.cond86.preheader ]
  %cmp9063 = icmp sgt i32 %44, 0
  br i1 %cmp9063, label %for.body91.lr.ph, label %for.inc103

for.body91.lr.ph:                                 ; preds = %for.cond89.preheader
  %arrayidx93 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv109
  %45 = load i32, ptr %arrayidx93, align 4, !tbaa !5
  %46 = trunc nuw nsw i64 %indvars.iv109 to i32
  br label %for.body91

for.body91:                                       ; preds = %for.body91.lr.ph, %for.inc100
  %47 = phi i32 [ %43, %for.body91.lr.ph ], [ %50, %for.inc100 ]
  %indvars.iv106 = phi i64 [ 0, %for.body91.lr.ph ], [ %indvars.iv.next107, %for.inc100 ]
  %k.165 = phi i32 [ %k.069, %for.body91.lr.ph ], [ %k.2, %for.inc100 ]
  %arrayidx95 = getelementptr inbounds nuw i32, ptr %vla2, i64 %indvars.iv106
  %48 = load i32, ptr %arrayidx95, align 4, !tbaa !5
  %cmp96 = icmp eq i32 %45, %48
  br i1 %cmp96, label %if.then97, label %for.inc100

if.then97:                                        ; preds = %for.body91
  %49 = trunc nuw nsw i64 %indvars.iv106 to i32
  %call98 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %46, i32 noundef %49)
  %.pre112 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc100

for.inc100:                                       ; preds = %for.body91, %if.then97
  %50 = phi i32 [ %.pre112, %if.then97 ], [ %47, %for.body91 ]
  %k.2 = phi i32 [ 1, %if.then97 ], [ %k.165, %for.body91 ]
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  %51 = sext i32 %50 to i64
  %cmp90 = icmp slt i64 %indvars.iv.next107, %51
  br i1 %cmp90, label %for.body91, label %for.inc103.loopexit, !llvm.loop !24

for.inc103.loopexit:                              ; preds = %for.inc100
  %.pre113 = load i32, ptr %m, align 4, !tbaa !5
  br label %for.inc103

for.inc103:                                       ; preds = %for.inc103.loopexit, %for.cond89.preheader
  %52 = phi i32 [ %42, %for.cond89.preheader ], [ %.pre113, %for.inc103.loopexit ]
  %53 = phi i32 [ %43, %for.cond89.preheader ], [ %50, %for.inc103.loopexit ]
  %54 = phi i32 [ %44, %for.cond89.preheader ], [ %50, %for.inc103.loopexit ]
  %k.1.lcssa = phi i32 [ %k.069, %for.cond89.preheader ], [ %k.2, %for.inc103.loopexit ]
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  %55 = sext i32 %52 to i64
  %cmp87 = icmp slt i64 %indvars.iv.next110, %55
  br i1 %cmp87, label %for.cond89.preheader, label %for.end105, !llvm.loop !25

for.end105:                                       ; preds = %for.inc103
  %56 = icmp eq i32 %k.1.lcssa, 0
  br i1 %56, label %if.then107, label %if.end109

if.then107:                                       ; preds = %entry, %for.cond86.preheader, %for.cond34.preheader, %for.end105
  %call108 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %for.end105
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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11, !16}
!16 = !{!"llvm.loop.unswitch.partial.disable"}
!17 = distinct !{!17, !10, !11, !12}
!18 = distinct !{!18, !10, !11, !12, !13}
!19 = distinct !{!19, !10, !11, !12}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11, !12, !13}
!22 = distinct !{!22, !10, !11, !12}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11, !16}
