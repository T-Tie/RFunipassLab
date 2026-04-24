; ModuleID = '<stdin>'
source_filename = "/tmp/tmpj4kq90l1.cpp"
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
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp98 = icmp sgt i32 %0, 0
  br i1 %cmp98, label %for.cond1.preheader.lr.ph, label %for.end150

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %arrayidx96 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %0, %for.cond1.preheader.lr.ph ], [ %59, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %k.099 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %add149, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %cmp270 = icmp sgt i32 %1, 0
  br i1 %cmp270, label %for.cond4.preheader, label %for.end145

for.cond13.preheader:                             ; preds = %for.inc10
  %cmp1493 = icmp sgt i32 %6, 1
  br i1 %cmp1493, label %for.cond16.preheader.preheader, label %for.end145

for.cond16.preheader.preheader:                   ; preds = %for.cond13.preheader
  %2 = zext nneg i32 %6 to i64
  br label %for.cond16.preheader

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc10
  %3 = phi i32 [ %6, %for.inc10 ], [ %1, %for.cond1.preheader ]
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %for.inc10 ], [ 0, %for.cond1.preheader ]
  %cmp568 = icmp sgt i32 %3, 0
  br i1 %cmp568, label %for.body6, label %for.cond4.preheader.for.inc10_crit_edge

for.cond4.preheader.for.inc10_crit_edge:          ; preds = %for.cond4.preheader
  %.pre = sext i32 %3 to i64
  br label %for.inc10

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond4.preheader ]
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv103, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp5 = icmp slt i64 %indvars.iv.next, %5
  br i1 %cmp5, label %for.body6, label %for.inc10, !llvm.loop !9

for.inc10:                                        ; preds = %for.body6, %for.cond4.preheader.for.inc10_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond4.preheader.for.inc10_crit_edge ], [ %5, %for.body6 ]
  %6 = phi i32 [ %3, %for.cond4.preheader.for.inc10_crit_edge ], [ %4, %for.body6 ]
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  %cmp2 = icmp slt i64 %indvars.iv.next104, %.pre-phi
  br i1 %cmp2, label %for.cond4.preheader, label %for.cond13.preheader, !llvm.loop !12

for.cond16.preheader:                             ; preds = %for.cond16.preheader.preheader, %for.inc143
  %indvar = phi i64 [ 0, %for.cond16.preheader.preheader ], [ %indvar.next, %for.inc143 ]
  %indvars.iv150 = phi i64 [ %2, %for.cond16.preheader.preheader ], [ %indvars.iv.next151, %for.inc143 ]
  %sum.096 = phi i32 [ 0, %for.cond16.preheader.preheader ], [ %add97, %for.inc143 ]
  %7 = xor i64 %indvar, -1
  %8 = add i64 %7, %2
  %9 = xor i64 %indvar, -1
  %10 = add i64 %9, %2
  %11 = xor i64 %indvar, -1
  %12 = add i64 %11, %2
  %min.iters.check188 = icmp ult i64 %8, 4
  %n.vec191 = and i64 %8, -4
  %13 = or disjoint i64 %n.vec191, 1
  %cmp.n201 = icmp eq i64 %8, %n.vec191
  %min.iters.check174 = icmp ult i64 %indvars.iv150, 4
  %n.vec177 = and i64 %indvars.iv150, -4
  %cmp.n185 = icmp eq i64 %indvars.iv150, %n.vec177
  br label %for.body18

for.body18:                                       ; preds = %for.cond16.preheader, %for.inc51
  %indvars.iv114 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next115, %for.inc51 ]
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv114
  %14 = load i32, ptr %arrayidx20, align 16, !tbaa !5
  br i1 %min.iters.check188, label %for.body24.preheader, label %vector.ph189

vector.ph189:                                     ; preds = %for.body18
  %broadcast.splatinsert192 = insertelement <4 x i32> poison, i32 %14, i64 0
  %broadcast.splat193 = shufflevector <4 x i32> %broadcast.splatinsert192, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph189
  %index195 = phi i64 [ 0, %vector.ph189 ], [ %index.next199, %vector.body194 ]
  %vec.phi196 = phi <4 x i32> [ %broadcast.splat193, %vector.ph189 ], [ %16, %vector.body194 ]
  %offset.idx197 = or disjoint i64 %index195, 1
  %15 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv114, i64 %offset.idx197
  %wide.load198 = load <4 x i32>, ptr %15, align 4, !tbaa !5
  %16 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load198, <4 x i32> %vec.phi196)
  %index.next199 = add nuw i64 %index195, 4
  %17 = icmp eq i64 %index.next199, %n.vec191
  br i1 %17, label %middle.block200, label %vector.body194, !llvm.loop !14

middle.block200:                                  ; preds = %vector.body194
  %18 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %16)
  br i1 %cmp.n201, label %for.body39.lr.ph, label %for.body24.preheader

for.body24.preheader:                             ; preds = %for.body18, %middle.block200
  %indvars.iv106.ph = phi i64 [ 1, %for.body18 ], [ %13, %middle.block200 ]
  %min.074.ph = phi i32 [ %14, %for.body18 ], [ %18, %middle.block200 ]
  br label %for.body24

for.body39.lr.ph:                                 ; preds = %for.body24, %middle.block200
  %spec.select.lcssa = phi i32 [ %18, %middle.block200 ], [ %spec.select, %for.body24 ]
  br i1 %min.iters.check174, label %for.body39.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %for.body39.lr.ph
  %broadcast.splatinsert178 = insertelement <4 x i32> poison, i32 %spec.select.lcssa, i64 0
  %broadcast.splat179 = shufflevector <4 x i32> %broadcast.splatinsert178, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph175
  %index181 = phi i64 [ 0, %vector.ph175 ], [ %index.next183, %vector.body180 ]
  %19 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv114, i64 %index181
  %wide.load182 = load <4 x i32>, ptr %19, align 16, !tbaa !5
  %20 = sub nsw <4 x i32> %wide.load182, %broadcast.splat179
  store <4 x i32> %20, ptr %19, align 16, !tbaa !5
  %index.next183 = add nuw i64 %index181, 4
  %21 = icmp eq i64 %index.next183, %n.vec177
  br i1 %21, label %middle.block184, label %vector.body180, !llvm.loop !17

middle.block184:                                  ; preds = %vector.body180
  br i1 %cmp.n185, label %for.inc51, label %for.body39.preheader

for.body39.preheader:                             ; preds = %for.body39.lr.ph, %middle.block184
  %indvars.iv109.ph = phi i64 [ 0, %for.body39.lr.ph ], [ %n.vec177, %middle.block184 ]
  br label %for.body39

for.body24:                                       ; preds = %for.body24.preheader, %for.body24
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %for.body24 ], [ %indvars.iv106.ph, %for.body24.preheader ]
  %min.074 = phi i32 [ %spec.select, %for.body24 ], [ %min.074.ph, %for.body24.preheader ]
  %arrayidx28 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv114, i64 %indvars.iv106
  %22 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %22, i32 %min.074)
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next107, %indvars.iv150
  br i1 %exitcond.not, label %for.body39.lr.ph, label %for.body24, !llvm.loop !18

for.body39:                                       ; preds = %for.body39.preheader, %for.body39
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %for.body39 ], [ %indvars.iv109.ph, %for.body39.preheader ]
  %arrayidx43 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv114, i64 %indvars.iv109
  %23 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %sub = sub nsw i32 %23, %spec.select.lcssa
  store i32 %sub, ptr %arrayidx43, align 4, !tbaa !5
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  %exitcond113.not = icmp eq i64 %indvars.iv.next110, %indvars.iv150
  br i1 %exitcond113.not, label %for.inc51, label %for.body39, !llvm.loop !19

for.inc51:                                        ; preds = %for.body39, %middle.block184
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %indvars.iv150
  br i1 %exitcond118.not, label %for.body62.preheader.preheader, label %for.body18, !llvm.loop !20

for.body62.preheader.preheader:                   ; preds = %for.inc51
  %min.iters.check162 = icmp ult i64 %10, 4
  %n.vec165 = and i64 %10, -4
  %24 = or disjoint i64 %n.vec165, 1
  %cmp.n171 = icmp eq i64 %10, %n.vec165
  br label %for.body62.preheader

for.body62.preheader:                             ; preds = %for.body62.preheader.preheader, %for.inc92
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %for.inc92 ], [ 0, %for.body62.preheader.preheader ]
  %arrayidx59 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv129
  %25 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  br i1 %min.iters.check162, label %for.body62.preheader204, label %vector.ph163

vector.ph163:                                     ; preds = %for.body62.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %25, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph163
  %index167 = phi i64 [ 0, %vector.ph163 ], [ %index.next169, %vector.body166 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph163 ], [ %41, %vector.body166 ]
  %offset.idx168 = or disjoint i64 %index167, 1
  %26 = or disjoint i64 %index167, 2
  %27 = or disjoint i64 %index167, 3
  %28 = add i64 %index167, 4
  %29 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %offset.idx168, i64 %indvars.iv129
  %30 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %26, i64 %indvars.iv129
  %31 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %27, i64 %indvars.iv129
  %32 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %28, i64 %indvars.iv129
  %33 = load i32, ptr %29, align 4, !tbaa !5
  %34 = load i32, ptr %30, align 4, !tbaa !5
  %35 = load i32, ptr %31, align 4, !tbaa !5
  %36 = load i32, ptr %32, align 4, !tbaa !5
  %37 = insertelement <4 x i32> poison, i32 %33, i64 0
  %38 = insertelement <4 x i32> %37, i32 %34, i64 1
  %39 = insertelement <4 x i32> %38, i32 %35, i64 2
  %40 = insertelement <4 x i32> %39, i32 %36, i64 3
  %41 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %40, <4 x i32> %vec.phi)
  %index.next169 = add nuw i64 %index167, 4
  %42 = icmp eq i64 %index.next169, %n.vec165
  br i1 %42, label %middle.block170, label %vector.body166, !llvm.loop !21

middle.block170:                                  ; preds = %vector.body166
  %43 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %41)
  br i1 %cmp.n171, label %for.body79.lr.ph, label %for.body62.preheader204

for.body62.preheader204:                          ; preds = %for.body62.preheader, %middle.block170
  %indvars.iv119.ph = phi i64 [ 1, %for.body62.preheader ], [ %24, %middle.block170 ]
  %min.281.ph = phi i32 [ %25, %for.body62.preheader ], [ %43, %middle.block170 ]
  br label %for.body62

for.body79.lr.ph:                                 ; preds = %for.body62, %middle.block170
  %spec.select67.lcssa = phi i32 [ %43, %middle.block170 ], [ %spec.select67, %for.body62 ]
  br label %for.body79

for.body62:                                       ; preds = %for.body62.preheader204, %for.body62
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.body62 ], [ %indvars.iv119.ph, %for.body62.preheader204 ]
  %min.281 = phi i32 [ %spec.select67, %for.body62 ], [ %min.281.ph, %for.body62.preheader204 ]
  %arrayidx66 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv119, i64 %indvars.iv129
  %44 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  %spec.select67 = call i32 @llvm.smin.i32(i32 %44, i32 %min.281)
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %indvars.iv150
  br i1 %exitcond123.not, label %for.body79.lr.ph, label %for.body62, !llvm.loop !22

for.body79:                                       ; preds = %for.body79.lr.ph, %for.body79
  %indvars.iv124 = phi i64 [ 0, %for.body79.lr.ph ], [ %indvars.iv.next125, %for.body79 ]
  %arrayidx83 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv124, i64 %indvars.iv129
  %45 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %sub84 = sub nsw i32 %45, %spec.select67.lcssa
  store i32 %sub84, ptr %arrayidx83, align 4, !tbaa !5
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %indvars.iv150
  br i1 %exitcond128.not, label %for.inc92, label %for.body79, !llvm.loop !23

for.inc92:                                        ; preds = %for.body79
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %indvars.iv150
  br i1 %exitcond133.not, label %for.end94, label %for.body62.preheader, !llvm.loop !24

for.end94:                                        ; preds = %for.inc92
  %46 = load i32, ptr %arrayidx96, align 4, !tbaa !5
  %add97 = add nsw i32 %46, %sum.096
  %cmp98.not = icmp eq i64 %indvars.iv150, 2
  br i1 %cmp98.not, label %for.end145, label %for.body102

for.cond123.preheader.us:                         ; preds = %for.cond123.preheader.us.preheader, %for.cond123.for.inc139_crit_edge.us
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %for.cond123.for.inc139_crit_edge.us ], [ 1, %for.cond123.preheader.us.preheader ]
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1
  br i1 %min.iters.check, label %for.body125.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond123.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond123.preheader.us ]
  %offset.idx = or disjoint i64 %index, 1
  %47 = or disjoint i64 %index, 2
  %48 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next146, i64 %47
  %wide.load = load <4 x i32>, ptr %48, align 8, !tbaa !5
  %49 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv145, i64 %offset.idx
  store <4 x i32> %wide.load, ptr %49, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %50 = icmp eq i64 %index.next, %n.vec
  br i1 %50, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond123.for.inc139_crit_edge.us, label %for.body125.us.preheader

for.body125.us.preheader:                         ; preds = %for.cond123.preheader.us, %middle.block
  %indvars.iv140.ph = phi i64 [ 1, %for.cond123.preheader.us ], [ %54, %middle.block ]
  br label %for.body125.us

for.body125.us:                                   ; preds = %for.body125.us.preheader, %for.body125.us
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %for.body125.us ], [ %indvars.iv140.ph, %for.body125.us.preheader ]
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  %arrayidx131.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next146, i64 %indvars.iv.next141
  %51 = load i32, ptr %arrayidx131.us, align 4, !tbaa !5
  %arrayidx135.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv145, i64 %indvars.iv140
  store i32 %51, ptr %arrayidx135.us, align 4, !tbaa !5
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %indvars.iv150
  br i1 %exitcond144.not, label %for.cond123.for.inc139_crit_edge.us, label %for.body125.us, !llvm.loop !26

for.cond123.for.inc139_crit_edge.us:              ; preds = %for.body125.us, %middle.block
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %indvars.iv150
  br i1 %exitcond149.not, label %for.inc143, label %for.cond123.preheader.us, !llvm.loop !27

for.body102:                                      ; preds = %for.end94, %for.body102
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %for.body102 ], [ 1, %for.end94 ]
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  %arrayidx106 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv.next135
  %52 = load i32, ptr %arrayidx106, align 4, !tbaa !5
  %arrayidx109 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv134
  store i32 %52, ptr %arrayidx109, align 4, !tbaa !5
  %arrayidx112 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next135
  %53 = load i32, ptr %arrayidx112, align 16, !tbaa !5
  %arrayidx115 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv134
  store i32 %53, ptr %arrayidx115, align 16, !tbaa !5
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %indvars.iv150
  br i1 %exitcond138.not, label %for.cond123.preheader.us.preheader, label %for.body102, !llvm.loop !28

for.cond123.preheader.us.preheader:               ; preds = %for.body102
  %min.iters.check = icmp ult i64 %12, 4
  %n.vec = and i64 %12, -4
  %54 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %12, %n.vec
  br label %for.cond123.preheader.us

for.inc143:                                       ; preds = %for.cond123.for.inc139_crit_edge.us
  %indvars.iv.next151 = add nsw i64 %indvars.iv150, -1
  %cmp14 = icmp sgt i64 %indvars.iv150, 2
  %indvar.next = add i64 %indvar, 1
  br i1 %cmp14, label %for.cond16.preheader, label %for.end145, !llvm.loop !29

for.end145:                                       ; preds = %for.end94, %for.inc143, %for.cond1.preheader, %for.cond13.preheader
  %sum.0.lcssa = phi i32 [ 0, %for.cond13.preheader ], [ 0, %for.cond1.preheader ], [ %add97, %for.inc143 ], [ %add97, %for.end94 ]
  %call146 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0.lcssa)
  %vtable.i = load ptr, ptr %call146, align 8, !tbaa !30
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call146, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %55 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !32
  %tobool.not.i.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end145
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end145
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %55, i64 56
  %56 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !50
  %tobool.not.i1.i.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %55, i64 67
  %57 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !56
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %55)
  %vtable.i.i.i = load ptr, ptr %55, align 8, !tbaa !30
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %58 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %58(ptr noundef nonnull align 8 dereferenceable(570) %55, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %57, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call146, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %add149 = add nuw nsw i32 %k.099, 1
  %59 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %add149, %59
  br i1 %cmp, label %for.cond1.preheader, label %for.end150, !llvm.loop !57

for.end150:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
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
!30 = !{!31, !31, i64 0}
!31 = !{!"vtable pointer", !8, i64 0}
!32 = !{!33, !47, i64 240}
!33 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !34, i64 0, !44, i64 216, !7, i64 224, !45, i64 225, !46, i64 232, !47, i64 240, !48, i64 248, !49, i64 256}
!34 = !{!"_ZTSSt8ios_base", !35, i64 8, !35, i64 16, !36, i64 24, !37, i64 28, !37, i64 32, !38, i64 40, !40, i64 48, !7, i64 64, !6, i64 192, !41, i64 200, !42, i64 208}
!35 = !{!"long", !7, i64 0}
!36 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!37 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!38 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !39, i64 0}
!39 = !{!"any pointer", !7, i64 0}
!40 = !{!"_ZTSNSt8ios_base6_WordsE", !39, i64 0, !35, i64 8}
!41 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !39, i64 0}
!42 = !{!"_ZTSSt6locale", !43, i64 0}
!43 = !{!"p1 _ZTSNSt6locale5_ImplE", !39, i64 0}
!44 = !{!"p1 _ZTSSo", !39, i64 0}
!45 = !{!"bool", !7, i64 0}
!46 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !39, i64 0}
!47 = !{!"p1 _ZTSSt5ctypeIcE", !39, i64 0}
!48 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !39, i64 0}
!49 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !39, i64 0}
!50 = !{!51, !7, i64 56}
!51 = !{!"_ZTSSt5ctypeIcE", !52, i64 0, !53, i64 16, !45, i64 24, !54, i64 32, !54, i64 40, !55, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!52 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!53 = !{!"p1 _ZTS15__locale_struct", !39, i64 0}
!54 = !{!"p1 int", !39, i64 0}
!55 = !{!"p1 short", !39, i64 0}
!56 = !{!7, !7, i64 0}
!57 = distinct !{!57, !10, !11}
