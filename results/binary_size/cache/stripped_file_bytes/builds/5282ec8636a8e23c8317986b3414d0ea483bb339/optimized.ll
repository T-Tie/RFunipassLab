; ModuleID = '<stdin>'
source_filename = "/tmp/tmpkodtl3k_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %min1 = alloca [100 x i32], align 16
  %min2 = alloca [100 x i32], align 16
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %min1) #5
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %min2) #5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp105 = icmp sgt i32 %0, 0
  br i1 %cmp105, label %for.body.lr.ph, label %for.end167

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx120 = getelementptr inbounds nuw i8, ptr %a, i64 404
  %wide.trip.count112 = zext nneg i32 %0 to i64
  br label %for.cond4.preheader.us.preheader

for.cond4.preheader.us.preheader:                 ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %for.body.lr.ph
  %q.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %inc166, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  store i32 %0, ptr %n, align 4, !tbaa !5
  br label %for.cond4.preheader.us

for.cond4.preheader.us:                           ; preds = %for.cond4.preheader.us.preheader, %for.cond4.for.inc10_crit_edge.us
  %indvars.iv109 = phi i64 [ 0, %for.cond4.preheader.us.preheader ], [ %indvars.iv.next110, %for.cond4.for.inc10_crit_edge.us ]
  br label %for.body6.us

for.body6.us:                                     ; preds = %for.cond4.preheader.us, %for.body6.us
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader.us ], [ %indvars.iv.next, %for.body6.us ]
  %arrayidx8.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv109, i64 %indvars.iv
  %call9.us = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8.us)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count112
  br i1 %exitcond.not, label %for.cond4.for.inc10_crit_edge.us, label %for.body6.us, !llvm.loop !9

for.cond4.for.inc10_crit_edge.us:                 ; preds = %for.body6.us
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  %exitcond113.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count112
  br i1 %exitcond113.not, label %while.condthread-pre-split, label %for.cond4.preheader.us, !llvm.loop !12

while.condthread-pre-split:                       ; preds = %for.cond4.for.inc10_crit_edge.us
  %.pr.pre = load i32, ptr %n, align 4, !tbaa !5
  %cmp13103 = icmp sgt i32 %.pr.pre, 1
  br i1 %cmp13103, label %for.cond14.preheader.preheader, label %while.end

for.cond14.preheader.preheader:                   ; preds = %while.condthread-pre-split
  %1 = zext nneg i32 %.pr.pre to i64
  %2 = add nsw i64 %1, -2
  br label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond14.preheader.preheader, %for.end162
  %indvar = phi i64 [ 0, %for.cond14.preheader.preheader ], [ %indvar.next, %for.end162 ]
  %indvars.iv187 = phi i64 [ %1, %for.cond14.preheader.preheader ], [ %indvars.iv.next188, %for.end162 ]
  %d.0104 = phi i32 [ 0, %for.cond14.preheader.preheader ], [ %add, %for.end162 ]
  %3 = sub i64 %2, %indvar
  %min.iters.check245 = icmp ult i64 %indvars.iv187, 4
  br i1 %min.iters.check245, label %for.body16.preheader, label %vector.ph246

vector.ph246:                                     ; preds = %for.cond14.preheader
  %n.vec248 = and i64 %indvars.iv187, -4
  br label %vector.body249

vector.body249:                                   ; preds = %vector.body249, %vector.ph246
  %index250 = phi i64 [ 0, %vector.ph246 ], [ %index.next251, %vector.body249 ]
  %4 = getelementptr inbounds nuw [100 x i32], ptr %min1, i64 0, i64 %index250
  store <4 x i32> splat (i32 1000), ptr %4, align 16, !tbaa !5
  %index.next251 = add nuw i64 %index250, 4
  %5 = icmp eq i64 %index.next251, %n.vec248
  br i1 %5, label %middle.block252, label %vector.body249, !llvm.loop !13

middle.block252:                                  ; preds = %vector.body249
  %cmp.n253 = icmp eq i64 %indvars.iv187, %n.vec248
  br i1 %cmp.n253, label %for.body24.preheader, label %for.body16.preheader

for.body16.preheader:                             ; preds = %for.cond14.preheader, %middle.block252
  %indvars.iv114.ph = phi i64 [ 0, %for.cond14.preheader ], [ %n.vec248, %middle.block252 ]
  br label %for.body16

for.body16:                                       ; preds = %for.body16.preheader, %for.body16
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %for.body16 ], [ %indvars.iv114.ph, %for.body16.preheader ]
  %arrayidx18 = getelementptr inbounds nuw [100 x i32], ptr %min1, i64 0, i64 %indvars.iv114
  store i32 1000, ptr %arrayidx18, align 4, !tbaa !5
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %indvars.iv187
  br i1 %exitcond118.not, label %for.body24.preheader, label %for.body16, !llvm.loop !16

for.body24.preheader:                             ; preds = %for.body16, %middle.block252
  %min.iters.check234 = icmp ult i64 %indvars.iv187, 4
  br i1 %min.iters.check234, label %for.body24.preheader256, label %vector.ph235

vector.ph235:                                     ; preds = %for.body24.preheader
  %n.vec237 = and i64 %indvars.iv187, -4
  br label %vector.body238

vector.body238:                                   ; preds = %vector.body238, %vector.ph235
  %index239 = phi i64 [ 0, %vector.ph235 ], [ %index.next240, %vector.body238 ]
  %6 = getelementptr inbounds nuw [100 x i32], ptr %min2, i64 0, i64 %index239
  store <4 x i32> splat (i32 1000), ptr %6, align 16, !tbaa !5
  %index.next240 = add nuw i64 %index239, 4
  %7 = icmp eq i64 %index.next240, %n.vec237
  br i1 %7, label %middle.block241, label %vector.body238, !llvm.loop !17

middle.block241:                                  ; preds = %vector.body238
  %cmp.n242 = icmp eq i64 %indvars.iv187, %n.vec237
  br i1 %cmp.n242, label %for.cond33.preheader.us.preheader, label %for.body24.preheader256

for.body24.preheader256:                          ; preds = %for.body24.preheader, %middle.block241
  %indvars.iv119.ph = phi i64 [ 0, %for.body24.preheader ], [ %n.vec237, %middle.block241 ]
  br label %for.body24

for.cond33.preheader.us.preheader:                ; preds = %for.body24, %middle.block241
  %min.iters.check218 = icmp ult i64 %indvars.iv187, 4
  %n.vec221 = and i64 %indvars.iv187, -4
  %cmp.n230 = icmp eq i64 %indvars.iv187, %n.vec221
  br label %for.cond33.preheader.us

for.cond33.preheader.us:                          ; preds = %for.cond33.preheader.us.preheader, %for.cond33.for.inc52_crit_edge.us
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %for.cond33.for.inc52_crit_edge.us ], [ 0, %for.cond33.preheader.us.preheader ]
  %arrayidx37.us = getelementptr inbounds nuw [100 x i32], ptr %min1, i64 0, i64 %indvars.iv129
  %arrayidx37.promoted.us = load i32, ptr %arrayidx37.us, align 4
  br i1 %min.iters.check218, label %for.body35.us.preheader, label %vector.ph219

vector.ph219:                                     ; preds = %for.cond33.preheader.us
  %broadcast.splatinsert222 = insertelement <4 x i32> poison, i32 %arrayidx37.promoted.us, i64 0
  %broadcast.splat223 = shufflevector <4 x i32> %broadcast.splatinsert222, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph219
  %index225 = phi i64 [ 0, %vector.ph219 ], [ %index.next228, %vector.body224 ]
  %vec.phi226 = phi <4 x i32> [ %broadcast.splat223, %vector.ph219 ], [ %9, %vector.body224 ]
  %8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv129, i64 %index225
  %wide.load227 = load <4 x i32>, ptr %8, align 16, !tbaa !5
  %9 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi226, <4 x i32> %wide.load227)
  %index.next228 = add nuw i64 %index225, 4
  %10 = icmp eq i64 %index.next228, %n.vec221
  br i1 %10, label %middle.block229, label %vector.body224, !llvm.loop !18

middle.block229:                                  ; preds = %vector.body224
  %11 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %9)
  br i1 %cmp.n230, label %for.cond33.for.inc52_crit_edge.us, label %for.body35.us.preheader

for.body35.us.preheader:                          ; preds = %for.cond33.preheader.us, %middle.block229
  %indvars.iv124.ph = phi i64 [ 0, %for.cond33.preheader.us ], [ %n.vec221, %middle.block229 ]
  %spec.store.select79.us.ph = phi i32 [ %arrayidx37.promoted.us, %for.cond33.preheader.us ], [ %11, %middle.block229 ]
  br label %for.body35.us

for.body35.us:                                    ; preds = %for.body35.us.preheader, %for.body35.us
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %for.body35.us ], [ %indvars.iv124.ph, %for.body35.us.preheader ]
  %spec.store.select79.us = phi i32 [ %spec.store.select.us, %for.body35.us ], [ %spec.store.select79.us.ph, %for.body35.us.preheader ]
  %arrayidx41.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv129, i64 %indvars.iv124
  %12 = load i32, ptr %arrayidx41.us, align 4, !tbaa !5
  %spec.store.select.us = call i32 @llvm.smin.i32(i32 %spec.store.select79.us, i32 %12)
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %indvars.iv187
  br i1 %exitcond128.not, label %for.cond33.for.inc52_crit_edge.us, label %for.body35.us, !llvm.loop !19

for.cond33.for.inc52_crit_edge.us:                ; preds = %for.body35.us, %middle.block229
  %spec.store.select.us.lcssa = phi i32 [ %11, %middle.block229 ], [ %spec.store.select.us, %for.body35.us ]
  store i32 %spec.store.select.us.lcssa, ptr %arrayidx37.us, align 4
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %indvars.iv187
  br i1 %exitcond133.not, label %for.cond58.preheader.us.preheader, label %for.cond33.preheader.us, !llvm.loop !20

for.cond58.preheader.us.preheader:                ; preds = %for.cond33.for.inc52_crit_edge.us
  %min.iters.check204 = icmp ult i64 %indvars.iv187, 4
  %n.vec207 = and i64 %indvars.iv187, -4
  %cmp.n215 = icmp eq i64 %indvars.iv187, %n.vec207
  br label %for.cond58.preheader.us

for.body24:                                       ; preds = %for.body24.preheader256, %for.body24
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.body24 ], [ %indvars.iv119.ph, %for.body24.preheader256 ]
  %arrayidx26 = getelementptr inbounds nuw [100 x i32], ptr %min2, i64 0, i64 %indvars.iv119
  store i32 1000, ptr %arrayidx26, align 4, !tbaa !5
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %indvars.iv187
  br i1 %exitcond123.not, label %for.cond33.preheader.us.preheader, label %for.body24, !llvm.loop !21

for.cond58.preheader.us:                          ; preds = %for.cond58.preheader.us.preheader, %for.cond58.for.inc70_crit_edge.us
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %for.cond58.for.inc70_crit_edge.us ], [ 0, %for.cond58.preheader.us.preheader ]
  %arrayidx62.us = getelementptr inbounds nuw [100 x i32], ptr %min1, i64 0, i64 %indvars.iv139
  %13 = load i32, ptr %arrayidx62.us, align 4, !tbaa !5
  br i1 %min.iters.check204, label %for.body60.us.preheader, label %vector.ph205

vector.ph205:                                     ; preds = %for.cond58.preheader.us
  %broadcast.splatinsert208 = insertelement <4 x i32> poison, i32 %13, i64 0
  %broadcast.splat209 = shufflevector <4 x i32> %broadcast.splatinsert208, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph205
  %index211 = phi i64 [ 0, %vector.ph205 ], [ %index.next213, %vector.body210 ]
  %14 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv139, i64 %index211
  %wide.load212 = load <4 x i32>, ptr %14, align 16, !tbaa !5
  %15 = sub nsw <4 x i32> %wide.load212, %broadcast.splat209
  store <4 x i32> %15, ptr %14, align 16, !tbaa !5
  %index.next213 = add nuw i64 %index211, 4
  %16 = icmp eq i64 %index.next213, %n.vec207
  br i1 %16, label %middle.block214, label %vector.body210, !llvm.loop !22

middle.block214:                                  ; preds = %vector.body210
  br i1 %cmp.n215, label %for.cond58.for.inc70_crit_edge.us, label %for.body60.us.preheader

for.body60.us.preheader:                          ; preds = %for.cond58.preheader.us, %middle.block214
  %indvars.iv134.ph = phi i64 [ 0, %for.cond58.preheader.us ], [ %n.vec207, %middle.block214 ]
  br label %for.body60.us

for.body60.us:                                    ; preds = %for.body60.us.preheader, %for.body60.us
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %for.body60.us ], [ %indvars.iv134.ph, %for.body60.us.preheader ]
  %arrayidx66.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv139, i64 %indvars.iv134
  %17 = load i32, ptr %arrayidx66.us, align 4, !tbaa !5
  %sub.us = sub nsw i32 %17, %13
  store i32 %sub.us, ptr %arrayidx66.us, align 4, !tbaa !5
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %indvars.iv187
  br i1 %exitcond138.not, label %for.cond58.for.inc70_crit_edge.us, label %for.body60.us, !llvm.loop !23

for.cond58.for.inc70_crit_edge.us:                ; preds = %for.body60.us, %middle.block214
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %indvars.iv187
  br i1 %exitcond143.not, label %for.cond76.preheader.us.preheader, label %for.cond58.preheader.us, !llvm.loop !24

for.cond76.preheader.us.preheader:                ; preds = %for.cond58.for.inc70_crit_edge.us
  %min.iters.check193 = icmp ult i64 %indvars.iv187, 4
  %n.vec196 = and i64 %indvars.iv187, -4
  %cmp.n201 = icmp eq i64 %indvars.iv187, %n.vec196
  br label %for.cond76.preheader.us

for.cond76.preheader.us:                          ; preds = %for.cond76.preheader.us.preheader, %for.cond76.for.inc97_crit_edge.us
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %for.cond76.for.inc97_crit_edge.us ], [ 0, %for.cond76.preheader.us.preheader ]
  %arrayidx80.us = getelementptr inbounds nuw [100 x i32], ptr %min2, i64 0, i64 %indvars.iv149
  %arrayidx80.promoted.us = load i32, ptr %arrayidx80.us, align 4
  br i1 %min.iters.check193, label %for.body78.us.preheader, label %vector.ph194

vector.ph194:                                     ; preds = %for.cond76.preheader.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %arrayidx80.promoted.us, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph194
  %index198 = phi i64 [ 0, %vector.ph194 ], [ %index.next199, %vector.body197 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph194 ], [ %33, %vector.body197 ]
  %18 = or disjoint i64 %index198, 1
  %19 = or disjoint i64 %index198, 2
  %20 = or disjoint i64 %index198, 3
  %21 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %index198, i64 %indvars.iv149
  %22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %18, i64 %indvars.iv149
  %23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %19, i64 %indvars.iv149
  %24 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %20, i64 %indvars.iv149
  %25 = load i32, ptr %21, align 4, !tbaa !5
  %26 = load i32, ptr %22, align 4, !tbaa !5
  %27 = load i32, ptr %23, align 4, !tbaa !5
  %28 = load i32, ptr %24, align 4, !tbaa !5
  %29 = insertelement <4 x i32> poison, i32 %25, i64 0
  %30 = insertelement <4 x i32> %29, i32 %26, i64 1
  %31 = insertelement <4 x i32> %30, i32 %27, i64 2
  %32 = insertelement <4 x i32> %31, i32 %28, i64 3
  %33 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi, <4 x i32> %32)
  %index.next199 = add nuw i64 %index198, 4
  %34 = icmp eq i64 %index.next199, %n.vec196
  br i1 %34, label %middle.block200, label %vector.body197, !llvm.loop !25

middle.block200:                                  ; preds = %vector.body197
  %35 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %33)
  br i1 %cmp.n201, label %for.cond76.for.inc97_crit_edge.us, label %for.body78.us.preheader

for.body78.us.preheader:                          ; preds = %for.cond76.preheader.us, %middle.block200
  %indvars.iv144.ph = phi i64 [ 0, %for.cond76.preheader.us ], [ %n.vec196, %middle.block200 ]
  %spec.store.select6988.us.ph = phi i32 [ %arrayidx80.promoted.us, %for.cond76.preheader.us ], [ %35, %middle.block200 ]
  br label %for.body78.us

for.body78.us:                                    ; preds = %for.body78.us.preheader, %for.body78.us
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %for.body78.us ], [ %indvars.iv144.ph, %for.body78.us.preheader ]
  %spec.store.select6988.us = phi i32 [ %spec.store.select69.us, %for.body78.us ], [ %spec.store.select6988.us.ph, %for.body78.us.preheader ]
  %arrayidx84.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv144, i64 %indvars.iv149
  %36 = load i32, ptr %arrayidx84.us, align 4, !tbaa !5
  %spec.store.select69.us = call i32 @llvm.smin.i32(i32 %spec.store.select6988.us, i32 %36)
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %indvars.iv187
  br i1 %exitcond148.not, label %for.cond76.for.inc97_crit_edge.us, label %for.body78.us, !llvm.loop !26

for.cond76.for.inc97_crit_edge.us:                ; preds = %for.body78.us, %middle.block200
  %spec.store.select69.us.lcssa = phi i32 [ %35, %middle.block200 ], [ %spec.store.select69.us, %for.body78.us ]
  store i32 %spec.store.select69.us.lcssa, ptr %arrayidx80.us, align 4
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %indvars.iv187
  br i1 %exitcond153.not, label %for.cond103.preheader.us, label %for.cond76.preheader.us, !llvm.loop !27

for.cond103.preheader.us:                         ; preds = %for.cond76.for.inc97_crit_edge.us, %for.cond103.for.inc116_crit_edge.us
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %for.cond103.for.inc116_crit_edge.us ], [ 0, %for.cond76.for.inc97_crit_edge.us ]
  %arrayidx107.us = getelementptr inbounds nuw [100 x i32], ptr %min2, i64 0, i64 %indvars.iv159
  %37 = load i32, ptr %arrayidx107.us, align 4, !tbaa !5
  br label %for.body105.us

for.body105.us:                                   ; preds = %for.cond103.preheader.us, %for.body105.us
  %indvars.iv154 = phi i64 [ 0, %for.cond103.preheader.us ], [ %indvars.iv.next155, %for.body105.us ]
  %arrayidx111.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv154, i64 %indvars.iv159
  %38 = load i32, ptr %arrayidx111.us, align 4, !tbaa !5
  %sub112.us = sub nsw i32 %38, %37
  store i32 %sub112.us, ptr %arrayidx111.us, align 4, !tbaa !5
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1
  %exitcond158.not = icmp eq i64 %indvars.iv.next155, %indvars.iv187
  br i1 %exitcond158.not, label %for.cond103.for.inc116_crit_edge.us, label %for.body105.us, !llvm.loop !28

for.cond103.for.inc116_crit_edge.us:              ; preds = %for.body105.us
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %indvars.iv187
  br i1 %exitcond163.not, label %for.cond124.preheader.lr.ph, label %for.cond103.preheader.us, !llvm.loop !29

for.cond124.preheader.lr.ph:                      ; preds = %for.cond103.for.inc116_crit_edge.us
  %39 = load i32, ptr %arrayidx120, align 4, !tbaa !5
  %add = add nsw i32 %39, %d.0104
  %cmp12595 = icmp samesign ugt i64 %indvars.iv187, 2
  br i1 %cmp12595, label %for.cond124.preheader.us, label %for.cond145.preheader.lr.ph

for.cond124.preheader.us:                         ; preds = %for.cond124.preheader.lr.ph, %for.cond124.for.inc139_crit_edge.us
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %for.cond124.for.inc139_crit_edge.us ], [ 0, %for.cond124.preheader.lr.ph ]
  br label %for.body126.us

for.body126.us:                                   ; preds = %for.cond124.preheader.us, %for.body126.us
  %indvars.iv164 = phi i64 [ 2, %for.cond124.preheader.us ], [ %indvars.iv.next165, %for.body126.us ]
  %arrayidx130.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv164, i64 %indvars.iv170
  %40 = load i32, ptr %arrayidx130.us, align 4, !tbaa !5
  %41 = add nsw i64 %indvars.iv164, -1
  %arrayidx135.us = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %41, i64 %indvars.iv170
  store i32 %40, ptr %arrayidx135.us, align 4, !tbaa !5
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1
  %exitcond169.not = icmp eq i64 %indvars.iv.next165, %indvars.iv187
  br i1 %exitcond169.not, label %for.cond124.for.inc139_crit_edge.us, label %for.body126.us, !llvm.loop !30

for.cond124.for.inc139_crit_edge.us:              ; preds = %for.body126.us
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1
  %exitcond174.not = icmp eq i64 %indvars.iv.next171, %indvars.iv187
  br i1 %exitcond174.not, label %for.cond145.preheader.lr.ph, label %for.cond124.preheader.us, !llvm.loop !31

for.cond145.preheader.lr.ph:                      ; preds = %for.cond124.for.inc139_crit_edge.us, %for.cond124.preheader.lr.ph
  %cmp14699 = icmp samesign ugt i64 %indvars.iv187, 2
  %min.iters.check = icmp ult i64 %3, 4
  %n.vec = and i64 %3, -4
  %42 = or disjoint i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  br label %for.cond145.preheader

for.cond145.preheader:                            ; preds = %for.cond145.preheader.lr.ph, %for.inc160
  %indvars.iv182 = phi i64 [ 0, %for.cond145.preheader.lr.ph ], [ %indvars.iv.next183, %for.inc160 ]
  br i1 %cmp14699, label %for.body147.preheader, label %for.inc160

for.body147.preheader:                            ; preds = %for.cond145.preheader
  br i1 %min.iters.check, label %for.body147.preheader255, label %vector.body

vector.body:                                      ; preds = %for.body147.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.body147.preheader ]
  %offset.idx = or disjoint i64 %index, 2
  %43 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv182, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %43, align 8, !tbaa !5
  %44 = or disjoint i64 %index, 1
  %45 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv182, i64 %44
  store <4 x i32> %wide.load, ptr %45, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %46 = icmp eq i64 %index.next, %n.vec
  br i1 %46, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.inc160, label %for.body147.preheader255

for.body147.preheader255:                         ; preds = %for.body147.preheader, %middle.block
  %indvars.iv176.ph = phi i64 [ 2, %for.body147.preheader ], [ %42, %middle.block ]
  br label %for.body147

for.body147:                                      ; preds = %for.body147.preheader255, %for.body147
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %for.body147 ], [ %indvars.iv176.ph, %for.body147.preheader255 ]
  %arrayidx151 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv182, i64 %indvars.iv176
  %47 = load i32, ptr %arrayidx151, align 4, !tbaa !5
  %48 = add nsw i64 %indvars.iv176, -1
  %arrayidx156 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv182, i64 %48
  store i32 %47, ptr %arrayidx156, align 4, !tbaa !5
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1
  %exitcond181.not = icmp eq i64 %indvars.iv.next177, %indvars.iv187
  br i1 %exitcond181.not, label %for.inc160, label %for.body147, !llvm.loop !33

for.inc160:                                       ; preds = %for.body147, %middle.block, %for.cond145.preheader
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1
  %exitcond186.not = icmp eq i64 %indvars.iv.next183, %indvars.iv187
  br i1 %exitcond186.not, label %for.end162, label %for.cond145.preheader, !llvm.loop !34

for.end162:                                       ; preds = %for.inc160
  %indvars.iv.next188 = add nsw i64 %indvars.iv187, -1
  %cmp13 = icmp sgt i64 %indvars.iv187, 2
  %indvar.next = add i64 %indvar, 1
  br i1 %cmp13, label %for.cond14.preheader, label %while.cond.while.end_crit_edge, !llvm.loop !35

while.cond.while.end_crit_edge:                   ; preds = %for.end162
  %49 = trunc nuw nsw i64 %indvars.iv.next188 to i32
  store i32 %49, ptr %n, align 4, !tbaa !5
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.condthread-pre-split
  %d.0.lcssa = phi i32 [ %add, %while.cond.while.end_crit_edge ], [ 0, %while.condthread-pre-split ]
  %call163 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %d.0.lcssa)
  %vtable.i = load ptr, ptr %call163, align 8, !tbaa !36
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call163, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %50 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !38
  %tobool.not.i.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %while.end
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %while.end
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %50, i64 56
  %51 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !56
  %tobool.not.i1.i.i = icmp eq i8 %51, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %50, i64 67
  %52 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !62
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %50)
  %vtable.i.i.i = load ptr, ptr %50, align 8, !tbaa !36
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %53 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %53(ptr noundef nonnull align 8 dereferenceable(570) %50, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %52, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call163, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc166 = add nuw nsw i32 %q.0106, 1
  %exitcond190.not = icmp eq i32 %inc166, %0
  br i1 %exitcond190.not, label %for.end167, label %for.cond4.preheader.us.preheader, !llvm.loop !63

for.end167:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %min2) #5
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %min1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

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
!17 = distinct !{!17, !10, !11, !14, !15}
!18 = distinct !{!18, !10, !11, !14, !15}
!19 = distinct !{!19, !10, !11, !14}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11, !14}
!22 = distinct !{!22, !10, !11, !14, !15}
!23 = distinct !{!23, !10, !11, !14}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11, !14, !15}
!26 = distinct !{!26, !10, !11, !14}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10, !11}
!30 = distinct !{!30, !10, !11}
!31 = distinct !{!31, !10, !11}
!32 = distinct !{!32, !10, !11, !14, !15}
!33 = distinct !{!33, !10, !11, !14}
!34 = distinct !{!34, !10, !11}
!35 = distinct !{!35, !10, !11}
!36 = !{!37, !37, i64 0}
!37 = !{!"vtable pointer", !8, i64 0}
!38 = !{!39, !53, i64 240}
!39 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !40, i64 0, !50, i64 216, !7, i64 224, !51, i64 225, !52, i64 232, !53, i64 240, !54, i64 248, !55, i64 256}
!40 = !{!"_ZTSSt8ios_base", !41, i64 8, !41, i64 16, !42, i64 24, !43, i64 28, !43, i64 32, !44, i64 40, !46, i64 48, !7, i64 64, !6, i64 192, !47, i64 200, !48, i64 208}
!41 = !{!"long", !7, i64 0}
!42 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!43 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!44 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !45, i64 0}
!45 = !{!"any pointer", !7, i64 0}
!46 = !{!"_ZTSNSt8ios_base6_WordsE", !45, i64 0, !41, i64 8}
!47 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !45, i64 0}
!48 = !{!"_ZTSSt6locale", !49, i64 0}
!49 = !{!"p1 _ZTSNSt6locale5_ImplE", !45, i64 0}
!50 = !{!"p1 _ZTSSo", !45, i64 0}
!51 = !{!"bool", !7, i64 0}
!52 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !45, i64 0}
!53 = !{!"p1 _ZTSSt5ctypeIcE", !45, i64 0}
!54 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !45, i64 0}
!55 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !45, i64 0}
!56 = !{!57, !7, i64 56}
!57 = !{!"_ZTSSt5ctypeIcE", !58, i64 0, !59, i64 16, !51, i64 24, !60, i64 32, !60, i64 40, !61, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!58 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!59 = !{!"p1 _ZTS15__locale_struct", !45, i64 0}
!60 = !{!"p1 int", !45, i64 0}
!61 = !{!"p1 short", !45, i64 0}
!62 = !{!7, !7, i64 0}
!63 = distinct !{!63, !10, !11}
