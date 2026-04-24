; ModuleID = '<stdin>'
source_filename = "/tmp/tmp75jfmpv6.cpp"
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
  %a = alloca [100 x [100 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not96 = icmp slt i32 %0, 1
  br i1 %cmp.not96, label %for.end163, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr105 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %0, %for.body.lr.ph ], [ %43, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %m.097 = phi i32 [ 1, %for.body.lr.ph ], [ %inc162, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) %a, i8 0, i64 40000, i1 false)
  %cmp261 = icmp sgt i32 %1, 0
  br i1 %cmp261, label %for.cond4.preheader, label %for.end158

for.cond15.preheader:                             ; preds = %for.inc12
  %cmp1692 = icmp sgt i32 %6, 1
  br i1 %cmp1692, label %for.cond18.preheader.lr.ph, label %for.end158

for.cond18.preheader.lr.ph:                       ; preds = %for.cond15.preheader
  %wide.trip.count143 = zext nneg i32 %6 to i64
  %wide.trip.count153 = zext nneg i32 %6 to i64
  %2 = add nsw i32 %6, -2
  %min.iters.check = icmp ult i32 %6, 4
  %n.vec = and i64 %wide.trip.count153, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count153
  br label %for.cond18.preheader

for.cond4.preheader:                              ; preds = %for.body, %for.inc12
  %3 = phi i32 [ %6, %for.inc12 ], [ %1, %for.body ]
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %for.inc12 ], [ 0, %for.body ]
  %cmp559 = icmp sgt i32 %3, 0
  br i1 %cmp559, label %for.body6.lr.ph, label %for.cond4.preheader.for.inc12_crit_edge

for.cond4.preheader.for.inc12_crit_edge:          ; preds = %for.cond4.preheader
  %.pre = sext i32 %3 to i64
  br label %for.inc12

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %add.ptr = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv101
  br label %for.body6

for.body6:                                        ; preds = %for.body6.lr.ph, %for.body6
  %indvars.iv = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next, %for.body6 ]
  %add.ptr10 = getelementptr inbounds nuw i32, ptr %add.ptr, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp5 = icmp slt i64 %indvars.iv.next, %5
  br i1 %cmp5, label %for.body6, label %for.inc12, !llvm.loop !9

for.inc12:                                        ; preds = %for.body6, %for.cond4.preheader.for.inc12_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond4.preheader.for.inc12_crit_edge ], [ %5, %for.body6 ]
  %6 = phi i32 [ %3, %for.cond4.preheader.for.inc12_crit_edge ], [ %4, %for.body6 ]
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %cmp2 = icmp slt i64 %indvars.iv.next102, %.pre-phi
  br i1 %cmp2, label %for.cond4.preheader, label %for.cond15.preheader, !llvm.loop !12

for.cond18.preheader:                             ; preds = %for.cond18.preheader.lr.ph, %for.inc156
  %indvars.iv107 = phi i32 [ %6, %for.cond18.preheader.lr.ph ], [ %indvars.iv.next108, %for.inc156 ]
  %sum.094 = phi i32 [ 0, %for.cond18.preheader.lr.ph ], [ %add, %for.inc156 ]
  %k.093 = phi i32 [ 0, %for.cond18.preheader.lr.ph ], [ %inc157, %for.inc156 ]
  %7 = zext i32 %indvars.iv107 to i64
  %8 = zext i32 %indvars.iv107 to i64
  %9 = zext i32 %indvars.iv107 to i64
  %cmp2069 = icmp sgt i32 %6, %k.093
  br i1 %cmp2069, label %for.cond22.preheader.preheader, label %for.cond109.preheader.us.preheader

for.cond22.preheader.preheader:                   ; preds = %for.cond18.preheader
  %wide.trip.count117 = zext i32 %indvars.iv107 to i64
  %min.iters.check186 = icmp ult i32 %indvars.iv107, 4
  %n.vec189 = and i64 %7, 4294967292
  %cmp.n196 = icmp eq i64 %n.vec189, %7
  %min.iters.check174 = icmp ult i32 %indvars.iv107, 4
  %n.vec177 = and i64 %8, 4294967292
  %cmp.n183 = icmp eq i64 %n.vec177, %8
  br label %for.cond22.preheader

for.cond63.preheader.preheader:                   ; preds = %for.inc56
  %wide.trip.count132 = zext i32 %indvars.iv107 to i64
  %min.iters.check163 = icmp ult i32 %indvars.iv107, 4
  %n.vec166 = and i64 %9, 4294967292
  %cmp.n171 = icmp eq i64 %n.vec166, %9
  br label %for.cond63.preheader

for.cond22.preheader:                             ; preds = %for.cond22.preheader.preheader, %for.inc56
  %indvars.iv114 = phi i64 [ 0, %for.cond22.preheader.preheader ], [ %indvars.iv.next115, %for.inc56 ]
  %add.ptr28 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv114
  br i1 %min.iters.check186, label %for.body25.preheader, label %vector.body190

vector.body190:                                   ; preds = %for.cond22.preheader, %vector.body190
  %index191 = phi i64 [ %index.next194, %vector.body190 ], [ 0, %for.cond22.preheader ]
  %vec.phi192 = phi <4 x i32> [ %11, %vector.body190 ], [ splat (i32 100000), %for.cond22.preheader ]
  %10 = getelementptr inbounds nuw i32, ptr %add.ptr28, i64 %index191
  %wide.load193 = load <4 x i32>, ptr %10, align 16, !tbaa !5
  %11 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load193, <4 x i32> %vec.phi192)
  %index.next194 = add nuw i64 %index191, 4
  %12 = icmp eq i64 %index.next194, %n.vec189
  br i1 %12, label %middle.block195, label %vector.body190, !llvm.loop !14

middle.block195:                                  ; preds = %vector.body190
  %13 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %11)
  br i1 %cmp.n196, label %for.body45.lr.ph, label %for.body25.preheader

for.body25.preheader:                             ; preds = %for.cond22.preheader, %middle.block195
  %indvars.iv104.ph = phi i64 [ 0, %for.cond22.preheader ], [ %n.vec189, %middle.block195 ]
  %min.065.ph = phi i32 [ 100000, %for.cond22.preheader ], [ %13, %middle.block195 ]
  br label %for.body25

for.body45.lr.ph:                                 ; preds = %for.body25, %middle.block195
  %spec.select.lcssa = phi i32 [ %13, %middle.block195 ], [ %spec.select, %for.body25 ]
  br i1 %min.iters.check174, label %for.body45.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %for.body45.lr.ph
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.select.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph175
  %index179 = phi i64 [ 0, %vector.ph175 ], [ %index.next181, %vector.body178 ]
  %14 = getelementptr inbounds nuw i32, ptr %add.ptr28, i64 %index179
  %wide.load180 = load <4 x i32>, ptr %14, align 16, !tbaa !5
  %15 = sub nsw <4 x i32> %wide.load180, %broadcast.splat
  store <4 x i32> %15, ptr %14, align 16, !tbaa !5
  %index.next181 = add nuw i64 %index179, 4
  %16 = icmp eq i64 %index.next181, %n.vec177
  br i1 %16, label %middle.block182, label %vector.body178, !llvm.loop !17

middle.block182:                                  ; preds = %vector.body178
  br i1 %cmp.n183, label %for.inc56, label %for.body45.preheader

for.body45.preheader:                             ; preds = %for.body45.lr.ph, %middle.block182
  %indvars.iv109.ph = phi i64 [ 0, %for.body45.lr.ph ], [ %n.vec177, %middle.block182 ]
  br label %for.body45

for.body25:                                       ; preds = %for.body25.preheader, %for.body25
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %for.body25 ], [ %indvars.iv104.ph, %for.body25.preheader ]
  %min.065 = phi i32 [ %spec.select, %for.body25 ], [ %min.065.ph, %for.body25.preheader ]
  %add.ptr31 = getelementptr inbounds nuw i32, ptr %add.ptr28, i64 %indvars.iv104
  %17 = load i32, ptr %add.ptr31, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %17, i32 %min.065)
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count117
  br i1 %exitcond.not, label %for.body45.lr.ph, label %for.body25, !llvm.loop !18

for.body45:                                       ; preds = %for.body45.preheader, %for.body45
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %for.body45 ], [ %indvars.iv109.ph, %for.body45.preheader ]
  %add.ptr51 = getelementptr inbounds nuw i32, ptr %add.ptr28, i64 %indvars.iv109
  %18 = load i32, ptr %add.ptr51, align 4, !tbaa !5
  %sub52 = sub nsw i32 %18, %spec.select.lcssa
  store i32 %sub52, ptr %add.ptr51, align 4, !tbaa !5
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  %exitcond113.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count117
  br i1 %exitcond113.not, label %for.inc56, label %for.body45, !llvm.loop !19

for.inc56:                                        ; preds = %for.body45, %middle.block182
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %for.cond63.preheader.preheader, label %for.cond22.preheader, !llvm.loop !20

for.cond63.preheader:                             ; preds = %for.cond63.preheader.preheader, %for.inc99
  %indvars.iv129 = phi i64 [ 0, %for.cond63.preheader.preheader ], [ %indvars.iv.next130, %for.inc99 ]
  %invariant.gep = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv129
  br i1 %min.iters.check163, label %for.body66.preheader, label %vector.ph164

vector.ph164:                                     ; preds = %for.cond63.preheader
  %invariant.gep211 = getelementptr i8, ptr %invariant.gep, i64 400
  %invariant.gep213 = getelementptr i8, ptr %invariant.gep, i64 800
  %invariant.gep215 = getelementptr i8, ptr %invariant.gep, i64 1200
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph164
  %index168 = phi i64 [ 0, %vector.ph164 ], [ %index.next169, %vector.body167 ]
  %vec.phi = phi <4 x i32> [ splat (i32 100000), %vector.ph164 ], [ %28, %vector.body167 ]
  %19 = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %index168
  %gep212 = getelementptr [100 x i32], ptr %invariant.gep211, i64 %index168
  %gep214 = getelementptr [100 x i32], ptr %invariant.gep213, i64 %index168
  %gep216 = getelementptr [100 x i32], ptr %invariant.gep215, i64 %index168
  %20 = load i32, ptr %19, align 4, !tbaa !5
  %21 = load i32, ptr %gep212, align 4, !tbaa !5
  %22 = load i32, ptr %gep214, align 4, !tbaa !5
  %23 = load i32, ptr %gep216, align 4, !tbaa !5
  %24 = insertelement <4 x i32> poison, i32 %20, i64 0
  %25 = insertelement <4 x i32> %24, i32 %21, i64 1
  %26 = insertelement <4 x i32> %25, i32 %22, i64 2
  %27 = insertelement <4 x i32> %26, i32 %23, i64 3
  %28 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %27, <4 x i32> %vec.phi)
  %index.next169 = add nuw i64 %index168, 4
  %29 = icmp eq i64 %index.next169, %n.vec166
  br i1 %29, label %middle.block170, label %vector.body167, !llvm.loop !21

middle.block170:                                  ; preds = %vector.body167
  %30 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %28)
  br i1 %cmp.n171, label %for.body88.lr.ph, label %for.body66.preheader

for.body66.preheader:                             ; preds = %for.cond63.preheader, %middle.block170
  %indvars.iv119.ph = phi i64 [ 0, %for.cond63.preheader ], [ %n.vec166, %middle.block170 ]
  %min.274.ph = phi i32 [ 100000, %for.cond63.preheader ], [ %30, %middle.block170 ]
  br label %for.body66

for.body88.lr.ph:                                 ; preds = %for.body66, %middle.block170
  %spec.select58.lcssa = phi i32 [ %30, %middle.block170 ], [ %spec.select58, %for.body66 ]
  br label %for.body88

for.body66:                                       ; preds = %for.body66.preheader, %for.body66
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.body66 ], [ %indvars.iv119.ph, %for.body66.preheader ]
  %min.274 = phi i32 [ %spec.select58, %for.body66 ], [ %min.274.ph, %for.body66.preheader ]
  %gep = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %indvars.iv119
  %31 = load i32, ptr %gep, align 4, !tbaa !5
  %spec.select58 = call i32 @llvm.smin.i32(i32 %31, i32 %min.274)
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count132
  br i1 %exitcond123.not, label %for.body88.lr.ph, label %for.body66, !llvm.loop !22

for.body88:                                       ; preds = %for.body88.lr.ph, %for.body88
  %indvars.iv124 = phi i64 [ 0, %for.body88.lr.ph ], [ %indvars.iv.next125, %for.body88 ]
  %gep79 = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %indvars.iv124
  %32 = load i32, ptr %gep79, align 4, !tbaa !5
  %sub95 = sub nsw i32 %32, %spec.select58.lcssa
  store i32 %sub95, ptr %gep79, align 4, !tbaa !5
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count132
  br i1 %exitcond128.not, label %for.inc99, label %for.body88, !llvm.loop !23

for.inc99:                                        ; preds = %for.body88
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %for.cond109.preheader.us.preheader, label %for.cond63.preheader, !llvm.loop !24

for.cond109.preheader.us.preheader:               ; preds = %for.inc99, %for.cond18.preheader
  %33 = load i32, ptr %add.ptr105, align 4, !tbaa !5
  %add = add nsw i32 %33, %sum.094
  br label %for.cond109.preheader.us

for.cond109.preheader.us:                         ; preds = %for.cond109.preheader.us.preheader, %for.cond109.for.inc128_crit_edge.us
  %indvars.iv140 = phi i64 [ 1, %for.cond109.preheader.us.preheader ], [ %indvars.iv.next141, %for.cond109.for.inc128_crit_edge.us ]
  %add.ptr114.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv140
  %add.ptr115.us = getelementptr inbounds nuw i8, ptr %add.ptr114.us, i64 400
  br i1 %min.iters.check, label %for.body111.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond109.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond109.preheader.us ]
  %34 = getelementptr inbounds nuw i32, ptr %add.ptr115.us, i64 %index
  %wide.load = load <4 x i32>, ptr %34, align 16, !tbaa !5
  %35 = getelementptr inbounds nuw i32, ptr %add.ptr114.us, i64 %index
  store <4 x i32> %wide.load, ptr %35, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %36 = icmp eq i64 %index.next, %n.vec
  br i1 %36, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond109.for.inc128_crit_edge.us, label %for.body111.us.preheader

for.body111.us.preheader:                         ; preds = %for.cond109.preheader.us, %middle.block
  %indvars.iv135.ph = phi i64 [ 0, %for.cond109.preheader.us ], [ %n.vec, %middle.block ]
  br label %for.body111.us

for.body111.us:                                   ; preds = %for.body111.us.preheader, %for.body111.us
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %for.body111.us ], [ %indvars.iv135.ph, %for.body111.us.preheader ]
  %add.ptr118.us = getelementptr inbounds nuw i32, ptr %add.ptr115.us, i64 %indvars.iv135
  %37 = load i32, ptr %add.ptr118.us, align 4, !tbaa !5
  %add.ptr124.us = getelementptr inbounds nuw i32, ptr %add.ptr114.us, i64 %indvars.iv135
  store i32 %37, ptr %add.ptr124.us, align 4, !tbaa !5
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count143
  br i1 %exitcond139.not, label %for.cond109.for.inc128_crit_edge.us, label %for.body111.us, !llvm.loop !26

for.cond109.for.inc128_crit_edge.us:              ; preds = %for.body111.us, %middle.block
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %for.cond134.preheader.us, label %for.cond109.preheader.us, !llvm.loop !27

for.cond134.preheader.us:                         ; preds = %for.cond109.for.inc128_crit_edge.us, %for.cond134.for.inc153_crit_edge.us
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %for.cond134.for.inc153_crit_edge.us ], [ 1, %for.cond109.for.inc128_crit_edge.us ]
  %invariant.gep88.us = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv150
  br label %for.body136.us

for.body136.us:                                   ; preds = %for.cond134.preheader.us, %for.body136.us
  %indvars.iv145 = phi i64 [ 0, %for.cond134.preheader.us ], [ %indvars.iv.next146, %for.body136.us ]
  %gep89.us = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep88.us, i64 %indvars.iv145
  %add.ptr143.us = getelementptr inbounds nuw i8, ptr %gep89.us, i64 4
  %38 = load i32, ptr %add.ptr143.us, align 4, !tbaa !5
  store i32 %38, ptr %gep89.us, align 4, !tbaa !5
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count153
  br i1 %exitcond149.not, label %for.cond134.for.inc153_crit_edge.us, label %for.body136.us, !llvm.loop !28

for.cond134.for.inc153_crit_edge.us:              ; preds = %for.body136.us
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %for.inc156, label %for.cond134.preheader.us, !llvm.loop !29

for.inc156:                                       ; preds = %for.cond134.for.inc153_crit_edge.us
  %inc157 = add nuw nsw i32 %k.093, 1
  %indvars.iv.next108 = add i32 %indvars.iv107, -1
  %exitcond155.not = icmp eq i32 %k.093, %2
  br i1 %exitcond155.not, label %for.end158, label %for.cond18.preheader, !llvm.loop !30

for.end158:                                       ; preds = %for.inc156, %for.body, %for.cond15.preheader
  %sum.0.lcssa = phi i32 [ 0, %for.cond15.preheader ], [ 0, %for.body ], [ %add, %for.inc156 ]
  %call159 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0.lcssa)
  %vtable.i = load ptr, ptr %call159, align 8, !tbaa !31
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call159, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %39 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !33
  %tobool.not.i.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end158
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end158
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %39, i64 56
  %40 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !51
  %tobool.not.i1.i.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %39, i64 67
  %41 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !57
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %39)
  %vtable.i.i.i = load ptr, ptr %39, align 8, !tbaa !31
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %42 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %42(ptr noundef nonnull align 8 dereferenceable(570) %39, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %41, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call159, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc162 = add nuw nsw i32 %m.097, 1
  %43 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %m.097, %43
  br i1 %cmp.not.not, label %for.body, label %for.end163, !llvm.loop !58

for.end163:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

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
!19 = distinct !{!19, !10, !11, !15}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11, !15, !16}
!22 = distinct !{!22, !10, !11, !15}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11, !15, !16}
!26 = distinct !{!26, !10, !11, !15}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10, !11}
!30 = distinct !{!30, !10, !11}
!31 = !{!32, !32, i64 0}
!32 = !{!"vtable pointer", !8, i64 0}
!33 = !{!34, !48, i64 240}
!34 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !35, i64 0, !45, i64 216, !7, i64 224, !46, i64 225, !47, i64 232, !48, i64 240, !49, i64 248, !50, i64 256}
!35 = !{!"_ZTSSt8ios_base", !36, i64 8, !36, i64 16, !37, i64 24, !38, i64 28, !38, i64 32, !39, i64 40, !41, i64 48, !7, i64 64, !6, i64 192, !42, i64 200, !43, i64 208}
!36 = !{!"long", !7, i64 0}
!37 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!38 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!39 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !40, i64 0}
!40 = !{!"any pointer", !7, i64 0}
!41 = !{!"_ZTSNSt8ios_base6_WordsE", !40, i64 0, !36, i64 8}
!42 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !40, i64 0}
!43 = !{!"_ZTSSt6locale", !44, i64 0}
!44 = !{!"p1 _ZTSNSt6locale5_ImplE", !40, i64 0}
!45 = !{!"p1 _ZTSSo", !40, i64 0}
!46 = !{!"bool", !7, i64 0}
!47 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !40, i64 0}
!48 = !{!"p1 _ZTSSt5ctypeIcE", !40, i64 0}
!49 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !40, i64 0}
!50 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !40, i64 0}
!51 = !{!52, !7, i64 56}
!52 = !{!"_ZTSSt5ctypeIcE", !53, i64 0, !54, i64 16, !46, i64 24, !55, i64 32, !55, i64 40, !56, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!53 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!54 = !{!"p1 _ZTS15__locale_struct", !40, i64 0}
!55 = !{!"p1 int", !40, i64 0}
!56 = !{!"p1 short", !40, i64 0}
!57 = !{!7, !7, i64 0}
!58 = distinct !{!58, !10, !11}
