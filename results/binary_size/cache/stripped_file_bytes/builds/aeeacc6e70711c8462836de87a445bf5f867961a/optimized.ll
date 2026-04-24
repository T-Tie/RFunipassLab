; ModuleID = '<stdin>'
source_filename = "/tmp/tmpw8ovaago.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [101 x [101 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: write) uwtable
define dso_local noundef i32 @_Z4xiaoi(i32 noundef %n) local_unnamed_addr #0 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end206, %entry
  %accumulator.tr = phi i32 [ 0, %entry ], [ %add, %for.end206 ]
  %n.tr = phi i32 [ %n, %entry ], [ %sub207, %for.end206 ]
  %cmp = icmp eq i32 %n.tr, 2
  br i1 %cmp, label %for.body, label %if.end81

for.body:                                         ; preds = %tailrecurse, %for.body24
  %cmp1 = phi i1 [ false, %for.body24 ], [ true, %tailrecurse ]
  %indvars.iv169 = phi i64 [ 1, %for.body24 ], [ 0, %tailrecurse ]
  %arrayidx = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv169
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.body7

for.body7:                                        ; preds = %for.body, %for.body7
  %cmp6 = phi i1 [ true, %for.body ], [ false, %for.body7 ]
  %indvars.iv163 = phi i64 [ 0, %for.body ], [ 1, %for.body7 ]
  %spec.store.select114115 = phi i32 [ %0, %for.body ], [ %spec.store.select, %for.body7 ]
  %arrayidx11 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv169, i64 %indvars.iv163
  %1 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %spec.store.select114115)
  br i1 %cmp6, label %for.body7, label %for.body24, !llvm.loop !9

for.body24:                                       ; preds = %for.body7
  %arrayidx30 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv169, i64 0
  %2 = load <2 x i32>, ptr %arrayidx30, align 4, !tbaa !5
  %3 = insertelement <2 x i32> poison, i32 %spec.store.select, i64 0
  %4 = shufflevector <2 x i32> %3, <2 x i32> poison, <2 x i32> zeroinitializer
  %5 = sub nsw <2 x i32> %2, %4
  store <2 x i32> %5, ptr %arrayidx30, align 4, !tbaa !5
  br i1 %cmp1, label %for.body, label %for.body39, !llvm.loop !12

for.body39:                                       ; preds = %for.body24, %for.body67
  %cmp38 = phi i1 [ false, %for.body67 ], [ true, %for.body24 ]
  %indvars.iv178 = phi i64 [ 1, %for.body67 ], [ 0, %for.body24 ]
  %arrayidx41 = getelementptr inbounds nuw [101 x i32], ptr @a, i64 0, i64 %indvars.iv178
  %6 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  br label %for.body46

for.body46:                                       ; preds = %for.body39, %for.body46
  %cmp45 = phi i1 [ true, %for.body39 ], [ false, %for.body46 ]
  %indvars.iv172 = phi i64 [ 0, %for.body39 ], [ 1, %for.body46 ]
  %spec.store.select97119120 = phi i32 [ %6, %for.body39 ], [ %spec.store.select97, %for.body46 ]
  %arrayidx50 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv172, i64 %indvars.iv178
  %7 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %spec.store.select97 = tail call i32 @llvm.smin.i32(i32 %7, i32 %spec.store.select97119120)
  br i1 %cmp45, label %for.body46, label %for.body67, !llvm.loop !13

for.body67:                                       ; preds = %for.body46
  %arrayidx73 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 0, i64 %indvars.iv178
  %8 = load i32, ptr %arrayidx73, align 4, !tbaa !5
  %sub74 = sub nsw i32 %8, %spec.store.select97
  store i32 %sub74, ptr %arrayidx73, align 4, !tbaa !5
  %arrayidx73.c = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 1, i64 %indvars.iv178
  %9 = load i32, ptr %arrayidx73.c, align 4, !tbaa !5
  %sub74.c = sub nsw i32 %9, %spec.store.select97
  store i32 %sub74.c, ptr %arrayidx73.c, align 4, !tbaa !5
  br i1 %cmp38, label %for.body39, label %for.end80, !llvm.loop !14

for.end80:                                        ; preds = %for.body67
  %10 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 408), align 8, !tbaa !5
  %accumulator.ret.tr = add nsw i32 %accumulator.tr, %10
  ret i32 %accumulator.ret.tr

if.end81:                                         ; preds = %tailrecurse
  %cmp82 = icmp sgt i32 %n.tr, 1
  tail call void @llvm.assume(i1 %cmp82)
  %wide.trip.count133 = zext nneg i32 %n.tr to i64
  %min.iters.check182 = icmp samesign ult i32 %n.tr, 4
  %n.vec185 = and i64 %wide.trip.count133, 2147483644
  %cmp.n193 = icmp eq i64 %n.vec185, %wide.trip.count133
  %min.iters.check = icmp samesign ult i32 %n.tr, 4
  %n.vec = and i64 %wide.trip.count133, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count133
  br label %for.body86

for.body86:                                       ; preds = %if.end81, %for.inc126
  %indvars.iv130 = phi i64 [ 0, %if.end81 ], [ %indvars.iv.next131, %for.inc126 ]
  %arrayidx88 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv130
  %11 = load i32, ptr %arrayidx88, align 4, !tbaa !5
  br i1 %min.iters.check182, label %for.body94.preheader, label %vector.ph183

vector.ph183:                                     ; preds = %for.body86
  %broadcast.splatinsert186 = insertelement <4 x i32> poison, i32 %11, i64 0
  %broadcast.splat187 = shufflevector <4 x i32> %broadcast.splatinsert186, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph183
  %index189 = phi i64 [ 0, %vector.ph183 ], [ %index.next191, %vector.body188 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat187, %vector.ph183 ], [ %13, %vector.body188 ]
  %12 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv130, i64 %index189
  %wide.load190 = load <4 x i32>, ptr %12, align 4, !tbaa !5
  %13 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load190, <4 x i32> %vec.phi)
  %index.next191 = add nuw i64 %index189, 4
  %14 = icmp eq i64 %index.next191, %n.vec185
  br i1 %14, label %middle.block192, label %vector.body188, !llvm.loop !15

middle.block192:                                  ; preds = %vector.body188
  %15 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %13)
  br i1 %cmp.n193, label %for.cond113.preheader, label %for.body94.preheader

for.body94.preheader:                             ; preds = %for.body86, %middle.block192
  %indvars.iv.ph = phi i64 [ 0, %for.body86 ], [ %n.vec185, %middle.block192 ]
  %spec.store.select98100101.ph = phi i32 [ %11, %for.body86 ], [ %15, %middle.block192 ]
  br label %for.body94

for.cond113.preheader:                            ; preds = %for.body94, %middle.block192
  %spec.store.select98.lcssa = phi i32 [ %15, %middle.block192 ], [ %spec.store.select98, %for.body94 ]
  br i1 %min.iters.check, label %for.body115.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond113.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.store.select98.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %16 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv130, i64 %index
  %wide.load = load <4 x i32>, ptr %16, align 4, !tbaa !5
  %17 = sub nsw <4 x i32> %wide.load, %broadcast.splat
  store <4 x i32> %17, ptr %16, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %18 = icmp eq i64 %index.next, %n.vec
  br i1 %18, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.inc126, label %for.body115.preheader

for.body115.preheader:                            ; preds = %for.cond113.preheader, %middle.block
  %indvars.iv125.ph = phi i64 [ 0, %for.cond113.preheader ], [ %n.vec, %middle.block ]
  br label %for.body115

for.body94:                                       ; preds = %for.body94.preheader, %for.body94
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body94 ], [ %indvars.iv.ph, %for.body94.preheader ]
  %spec.store.select98100101 = phi i32 [ %spec.store.select98, %for.body94 ], [ %spec.store.select98100101.ph, %for.body94.preheader ]
  %arrayidx98 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv130, i64 %indvars.iv
  %19 = load i32, ptr %arrayidx98, align 4, !tbaa !5
  %spec.store.select98 = tail call i32 @llvm.smin.i32(i32 %19, i32 %spec.store.select98100101)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count133
  br i1 %exitcond.not, label %for.cond113.preheader, label %for.body94, !llvm.loop !19

for.body115:                                      ; preds = %for.body115.preheader, %for.body115
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %for.body115 ], [ %indvars.iv125.ph, %for.body115.preheader ]
  %arrayidx121 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv130, i64 %indvars.iv125
  %20 = load i32, ptr %arrayidx121, align 4, !tbaa !5
  %sub122 = sub nsw i32 %20, %spec.store.select98.lcssa
  store i32 %sub122, ptr %arrayidx121, align 4, !tbaa !5
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count133
  br i1 %exitcond129.not, label %for.inc126, label %for.body115, !llvm.loop !20

for.inc126:                                       ; preds = %for.body115, %middle.block
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count133
  br i1 %exitcond134.not, label %for.body131.preheader, label %for.body86, !llvm.loop !21

for.body131.preheader:                            ; preds = %for.inc126
  %min.iters.check196 = icmp samesign ult i32 %n.tr, 4
  %n.vec199 = and i64 %wide.trip.count133, 2147483644
  %cmp.n207 = icmp eq i64 %n.vec199, %wide.trip.count133
  br label %for.body131

for.body131:                                      ; preds = %for.body131.preheader, %for.inc170
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %for.inc170 ], [ 0, %for.body131.preheader ]
  %arrayidx133 = getelementptr inbounds nuw [101 x i32], ptr @a, i64 0, i64 %indvars.iv145
  %21 = load i32, ptr %arrayidx133, align 4, !tbaa !5
  br i1 %min.iters.check196, label %for.body138.preheader, label %vector.ph197

vector.ph197:                                     ; preds = %for.body131
  %broadcast.splatinsert200 = insertelement <4 x i32> poison, i32 %21, i64 0
  %broadcast.splat201 = shufflevector <4 x i32> %broadcast.splatinsert200, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph197
  %index203 = phi i64 [ 0, %vector.ph197 ], [ %index.next205, %vector.body202 ]
  %vec.phi204 = phi <4 x i32> [ %broadcast.splat201, %vector.ph197 ], [ %37, %vector.body202 ]
  %22 = or disjoint i64 %index203, 1
  %23 = or disjoint i64 %index203, 2
  %24 = or disjoint i64 %index203, 3
  %25 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %index203, i64 %indvars.iv145
  %26 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %22, i64 %indvars.iv145
  %27 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %23, i64 %indvars.iv145
  %28 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %24, i64 %indvars.iv145
  %29 = load i32, ptr %25, align 4, !tbaa !5
  %30 = load i32, ptr %26, align 4, !tbaa !5
  %31 = load i32, ptr %27, align 4, !tbaa !5
  %32 = load i32, ptr %28, align 4, !tbaa !5
  %33 = insertelement <4 x i32> poison, i32 %29, i64 0
  %34 = insertelement <4 x i32> %33, i32 %30, i64 1
  %35 = insertelement <4 x i32> %34, i32 %31, i64 2
  %36 = insertelement <4 x i32> %35, i32 %32, i64 3
  %37 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %36, <4 x i32> %vec.phi204)
  %index.next205 = add nuw i64 %index203, 4
  %38 = icmp eq i64 %index.next205, %n.vec199
  br i1 %38, label %middle.block206, label %vector.body202, !llvm.loop !22

middle.block206:                                  ; preds = %vector.body202
  %39 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %37)
  br i1 %cmp.n207, label %for.cond157.preheader, label %for.body138.preheader

for.body138.preheader:                            ; preds = %for.body131, %middle.block206
  %indvars.iv135.ph = phi i64 [ 0, %for.body131 ], [ %n.vec199, %middle.block206 ]
  %spec.store.select99105106.ph = phi i32 [ %21, %for.body131 ], [ %39, %middle.block206 ]
  br label %for.body138

for.cond157.preheader:                            ; preds = %for.body138, %middle.block206
  %spec.store.select99.lcssa = phi i32 [ %39, %middle.block206 ], [ %spec.store.select99, %for.body138 ]
  br label %for.body159

for.body138:                                      ; preds = %for.body138.preheader, %for.body138
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %for.body138 ], [ %indvars.iv135.ph, %for.body138.preheader ]
  %spec.store.select99105106 = phi i32 [ %spec.store.select99, %for.body138 ], [ %spec.store.select99105106.ph, %for.body138.preheader ]
  %arrayidx142 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv135, i64 %indvars.iv145
  %40 = load i32, ptr %arrayidx142, align 4, !tbaa !5
  %spec.store.select99 = tail call i32 @llvm.smin.i32(i32 %40, i32 %spec.store.select99105106)
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count133
  br i1 %exitcond139.not, label %for.cond157.preheader, label %for.body138, !llvm.loop !23

for.body159:                                      ; preds = %for.cond157.preheader, %for.body159
  %indvars.iv140 = phi i64 [ 0, %for.cond157.preheader ], [ %indvars.iv.next141, %for.body159 ]
  %arrayidx165 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv140, i64 %indvars.iv145
  %41 = load i32, ptr %arrayidx165, align 4, !tbaa !5
  %sub166 = sub nsw i32 %41, %spec.store.select99.lcssa
  store i32 %sub166, ptr %arrayidx165, align 4, !tbaa !5
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count133
  br i1 %exitcond144.not, label %for.inc170, label %for.body159, !llvm.loop !24

for.inc170:                                       ; preds = %for.body159
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count133
  br i1 %exitcond149.not, label %for.end172, label %for.body131, !llvm.loop !25

for.end172:                                       ; preds = %for.inc170
  %42 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 408), align 8, !tbaa !5
  %cmp174112 = icmp samesign ugt i32 %n.tr, 2
  br i1 %cmp174112, label %for.body175.us.preheader, label %for.end206

for.body175.us.preheader:                         ; preds = %for.end172
  %43 = add nsw i64 %wide.trip.count133, -2
  %min.iters.check211 = icmp ult i64 %43, 4
  %n.vec214 = and i64 %43, -4
  %44 = or disjoint i64 %n.vec214, 2
  %cmp.n220 = icmp eq i64 %43, %n.vec214
  br label %for.body175.us

for.body175.us:                                   ; preds = %for.body175.us.preheader, %for.cond188.for.inc204_crit_edge.us
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %for.cond188.for.inc204_crit_edge.us ], [ 2, %for.body175.us.preheader ]
  %arrayidx177.us = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv157
  %45 = load i32, ptr %arrayidx177.us, align 4, !tbaa !5
  %46 = add nsw i64 %indvars.iv157, -1
  %arrayidx181.us = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %46
  store i32 %45, ptr %arrayidx181.us, align 4, !tbaa !5
  %arrayidx184.us = getelementptr inbounds nuw [101 x i32], ptr @a, i64 0, i64 %indvars.iv157
  %47 = load i32, ptr %arrayidx184.us, align 4, !tbaa !5
  %arrayidx187.us = getelementptr inbounds [101 x i32], ptr @a, i64 0, i64 %46
  store i32 %47, ptr %arrayidx187.us, align 4, !tbaa !5
  br i1 %min.iters.check211, label %for.body190.us.preheader, label %vector.body215

vector.body215:                                   ; preds = %for.body175.us, %vector.body215
  %index216 = phi i64 [ %index.next218, %vector.body215 ], [ 0, %for.body175.us ]
  %offset.idx = or disjoint i64 %index216, 2
  %48 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv157, i64 %offset.idx
  %wide.load217 = load <4 x i32>, ptr %48, align 4, !tbaa !5
  %49 = or disjoint i64 %index216, 1
  %50 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %46, i64 %49
  store <4 x i32> %wide.load217, ptr %50, align 4, !tbaa !5
  %index.next218 = add nuw i64 %index216, 4
  %51 = icmp eq i64 %index.next218, %n.vec214
  br i1 %51, label %middle.block219, label %vector.body215, !llvm.loop !26

middle.block219:                                  ; preds = %vector.body215
  br i1 %cmp.n220, label %for.cond188.for.inc204_crit_edge.us, label %for.body190.us.preheader

for.body190.us.preheader:                         ; preds = %for.body175.us, %middle.block219
  %indvars.iv151.ph = phi i64 [ 2, %for.body175.us ], [ %44, %middle.block219 ]
  br label %for.body190.us

for.body190.us:                                   ; preds = %for.body190.us.preheader, %for.body190.us
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %for.body190.us ], [ %indvars.iv151.ph, %for.body190.us.preheader ]
  %arrayidx194.us = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv157, i64 %indvars.iv151
  %52 = load i32, ptr %arrayidx194.us, align 4, !tbaa !5
  %53 = add nsw i64 %indvars.iv151, -1
  %arrayidx200.us = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %46, i64 %53
  store i32 %52, ptr %arrayidx200.us, align 4, !tbaa !5
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1
  %exitcond156.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count133
  br i1 %exitcond156.not, label %for.cond188.for.inc204_crit_edge.us, label %for.body190.us, !llvm.loop !27

for.cond188.for.inc204_crit_edge.us:              ; preds = %for.body190.us, %middle.block219
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1
  %exitcond162.not = icmp eq i64 %indvars.iv.next158, %wide.trip.count133
  br i1 %exitcond162.not, label %for.end206, label %for.body175.us, !llvm.loop !28

for.end206:                                       ; preds = %for.cond188.for.inc204_crit_edge.us, %for.end172
  %sub207 = add nsw i32 %n.tr, -1
  %add = add nsw i32 %accumulator.tr, %42
  br label %tailrecurse
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %n = alloca i32, align 4
  %ans = alloca [101 x i32], align 16
  %f = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #8
  call void @llvm.lifetime.start.p0(i64 404, ptr nonnull %ans) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(404) %ans, i8 0, i64 404, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not14 = icmp slt i32 %0, 1
  br i1 %cmp.not14, label %for.end28, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.end12
  %1 = phi i32 [ %7, %for.end12 ], [ %0, %entry ]
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.end12 ], [ 1, %entry ]
  %cmp212 = icmp sgt i32 %1, 0
  br i1 %cmp212, label %for.cond4.preheader, label %for.end12

for.cond19.preheader:                             ; preds = %for.end12
  %2 = icmp slt i32 %7, 1
  br i1 %2, label %for.end28, label %for.body21

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc10
  %3 = phi i32 [ %6, %for.inc10 ], [ %1, %for.cond1.preheader ]
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.inc10 ], [ 0, %for.cond1.preheader ]
  %cmp510 = icmp sgt i32 %3, 0
  br i1 %cmp510, label %for.body6, label %for.cond4.preheader.for.inc10_crit_edge

for.cond4.preheader.for.inc10_crit_edge:          ; preds = %for.cond4.preheader
  %.pre = sext i32 %3 to i64
  br label %for.inc10

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond4.preheader ]
  %arrayidx8 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv21, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp5 = icmp slt i64 %indvars.iv.next, %5
  br i1 %cmp5, label %for.body6, label %for.inc10, !llvm.loop !29

for.inc10:                                        ; preds = %for.body6, %for.cond4.preheader.for.inc10_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond4.preheader.for.inc10_crit_edge ], [ %5, %for.body6 ]
  %6 = phi i32 [ %3, %for.cond4.preheader.for.inc10_crit_edge ], [ %4, %for.body6 ]
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %cmp2 = icmp slt i64 %indvars.iv.next22, %.pre-phi
  br i1 %cmp2, label %for.cond4.preheader, label %for.end12, !llvm.loop !30

for.end12:                                        ; preds = %for.inc10, %for.cond1.preheader
  %.lcssa = phi i32 [ %1, %for.cond1.preheader ], [ %6, %for.inc10 ]
  %call13 = call noundef i32 @_Z4xiaoi(i32 noundef %.lcssa)
  %arrayidx15 = getelementptr inbounds nuw [101 x i32], ptr %ans, i64 0, i64 %indvars.iv24
  store i32 %call13, ptr %arrayidx15, align 4, !tbaa !5
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %8 = sext i32 %7 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv24, %8
  br i1 %cmp.not.not, label %for.cond1.preheader, label %for.cond19.preheader, !llvm.loop !32

for.body21:                                       ; preds = %for.cond19.preheader, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 1, %for.cond19.preheader ]
  %arrayidx23 = getelementptr inbounds nuw [101 x i32], ptr %ans, i64 0, i64 %indvars.iv27
  %9 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %9)
  %vtable.i = load ptr, ptr %call24, align 8, !tbaa !33
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call24, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %10 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !35
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body21
  call void @_ZSt16__throw_bad_castv() #9
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.body21
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 56
  %11 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !53
  %tobool.not.i1.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 67
  %12 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !59
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %10)
  %vtable.i.i.i = load ptr, ptr %10, align 8, !tbaa !33
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %13 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %13(ptr noundef nonnull align 8 dereferenceable(570) %10, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %12, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call24, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %14 = load i32, ptr %n, align 4, !tbaa !5
  %15 = sext i32 %14 to i64
  %cmp20.not.not = icmp slt i64 %indvars.iv27, %15
  br i1 %cmp20.not.not, label %for.body21, label %for.end28, !llvm.loop !60

for.end28:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry, %for.cond19.preheader
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f) #8
  %call29 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %f)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f) #8
  call void @llvm.lifetime.end.p0(i64 404, ptr nonnull %ans) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #8
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #7

attributes #0 = { mustprogress nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !10, !11, !16, !17}
!19 = distinct !{!19, !10, !11, !16}
!20 = distinct !{!20, !10, !11, !16}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11, !16, !17}
!23 = distinct !{!23, !10, !11, !16}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11, !16, !17}
!27 = distinct !{!27, !10, !11, !16}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10, !11}
!30 = distinct !{!30, !10, !11, !31}
!31 = !{!"llvm.loop.unswitch.partial.disable"}
!32 = distinct !{!32, !10, !11}
!33 = !{!34, !34, i64 0}
!34 = !{!"vtable pointer", !8, i64 0}
!35 = !{!36, !50, i64 240}
!36 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !37, i64 0, !47, i64 216, !7, i64 224, !48, i64 225, !49, i64 232, !50, i64 240, !51, i64 248, !52, i64 256}
!37 = !{!"_ZTSSt8ios_base", !38, i64 8, !38, i64 16, !39, i64 24, !40, i64 28, !40, i64 32, !41, i64 40, !43, i64 48, !7, i64 64, !6, i64 192, !44, i64 200, !45, i64 208}
!38 = !{!"long", !7, i64 0}
!39 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!40 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!41 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !42, i64 0}
!42 = !{!"any pointer", !7, i64 0}
!43 = !{!"_ZTSNSt8ios_base6_WordsE", !42, i64 0, !38, i64 8}
!44 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !42, i64 0}
!45 = !{!"_ZTSSt6locale", !46, i64 0}
!46 = !{!"p1 _ZTSNSt6locale5_ImplE", !42, i64 0}
!47 = !{!"p1 _ZTSSo", !42, i64 0}
!48 = !{!"bool", !7, i64 0}
!49 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !42, i64 0}
!50 = !{!"p1 _ZTSSt5ctypeIcE", !42, i64 0}
!51 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !42, i64 0}
!52 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !42, i64 0}
!53 = !{!54, !7, i64 56}
!54 = !{!"_ZTSSt5ctypeIcE", !55, i64 0, !56, i64 16, !48, i64 24, !57, i64 32, !57, i64 40, !58, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!55 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!56 = !{!"p1 _ZTS15__locale_struct", !42, i64 0}
!57 = !{!"p1 int", !42, i64 0}
!58 = !{!"p1 short", !42, i64 0}
!59 = !{!7, !7, i64 0}
!60 = distinct !{!60, !10, !11}
