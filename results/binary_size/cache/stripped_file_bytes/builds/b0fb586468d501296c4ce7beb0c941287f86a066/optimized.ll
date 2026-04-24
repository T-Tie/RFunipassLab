; ModuleID = '<stdin>'
source_filename = "/tmp/tmpw4ndku7j.cpp"
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
  %a = alloca [110 x [110 x i32]], align 16
  %x = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 48400, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x)
  %0 = load i32, ptr %x, align 4, !tbaa !5
  %cmp.not116 = icmp slt i32 %0, 1
  br i1 %cmp.not116, label %for.end155, label %for.cond1.preheader.lr.ph

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %add.ptr100 = getelementptr inbounds nuw i8, ptr %a, i64 888
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %0, %for.cond1.preheader.lr.ph ], [ %51, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %k.0117 = phi i32 [ 1, %for.cond1.preheader.lr.ph ], [ %inc154, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %cmp2.not83 = icmp slt i32 %1, 1
  br i1 %cmp2.not83, label %for.end150, label %for.cond4.preheader

for.cond14.preheader:                             ; preds = %for.inc11
  %cmp15112 = icmp sgt i32 %12, 1
  br i1 %cmp15112, label %for.cond17.preheader.preheader, label %for.end150

for.cond17.preheader.preheader:                   ; preds = %for.cond14.preheader
  %2 = add nuw i32 %12, 1
  %3 = zext i32 %2 to i64
  %4 = zext nneg i32 %12 to i64
  %5 = zext nneg i32 %12 to i64
  %6 = zext nneg i32 %12 to i64
  %7 = zext nneg i32 %12 to i64
  %8 = zext nneg i32 %12 to i64
  br label %for.cond17.preheader

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc11
  %9 = phi i32 [ %12, %for.inc11 ], [ %1, %for.cond1.preheader ]
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %for.inc11 ], [ 1, %for.cond1.preheader ]
  %cmp5.not81 = icmp slt i32 %9, 1
  br i1 %cmp5.not81, label %for.cond4.preheader.for.inc11_crit_edge, label %for.body6.lr.ph

for.cond4.preheader.for.inc11_crit_edge:          ; preds = %for.cond4.preheader
  %.pre = sext i32 %9 to i64
  br label %for.inc11

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %add.ptr = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv121
  br label %for.body6

for.body6:                                        ; preds = %for.body6.lr.ph, %for.body6
  %indvars.iv = phi i64 [ 1, %for.body6.lr.ph ], [ %indvars.iv.next, %for.body6 ]
  %add.ptr9 = getelementptr inbounds nuw i32, ptr %add.ptr, i64 %indvars.iv
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %10 = load i32, ptr %x, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %cmp5.not.not = icmp slt i64 %indvars.iv, %11
  br i1 %cmp5.not.not, label %for.body6, label %for.inc11, !llvm.loop !9

for.inc11:                                        ; preds = %for.body6, %for.cond4.preheader.for.inc11_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond4.preheader.for.inc11_crit_edge ], [ %11, %for.body6 ]
  %12 = phi i32 [ %9, %for.cond4.preheader.for.inc11_crit_edge ], [ %10, %for.body6 ]
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  %cmp2.not.not = icmp slt i64 %indvars.iv121, %.pre-phi
  br i1 %cmp2.not.not, label %for.cond4.preheader, label %for.cond14.preheader, !llvm.loop !12

for.cond17.preheader:                             ; preds = %for.cond17.preheader.preheader, %for.inc149
  %indvar = phi i64 [ 0, %for.cond17.preheader.preheader ], [ %indvar.next, %for.inc149 ]
  %indvars.iv177 = phi i64 [ %4, %for.cond17.preheader.preheader ], [ %indvars.iv.next178, %for.inc149 ]
  %indvars.iv175 = phi i64 [ %3, %for.cond17.preheader.preheader ], [ %indvars.iv.next176, %for.inc149 ]
  %sum.0113 = phi i32 [ 0, %for.cond17.preheader.preheader ], [ %add, %for.inc149 ]
  %13 = sub i64 %8, %indvar
  %14 = sub i64 %7, %indvar
  %15 = sub i64 %6, %indvar
  %16 = sub i64 %5, %indvar
  %min.iters.check217 = icmp ult i64 %13, 4
  %n.vec220 = and i64 %13, -4
  %17 = or disjoint i64 %n.vec220, 1
  %cmp.n228 = icmp eq i64 %13, %n.vec220
  %min.iters.check204 = icmp ult i64 %14, 4
  %n.vec207 = and i64 %14, -4
  %18 = or disjoint i64 %n.vec207, 1
  %cmp.n214 = icmp eq i64 %14, %n.vec207
  br label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.cond17.preheader, %for.inc53
  %indvars.iv134 = phi i64 [ 1, %for.cond17.preheader ], [ %indvars.iv.next135, %for.inc53 ]
  %add.ptr24 = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv134
  br i1 %min.iters.check217, label %for.body22.preheader, label %vector.ph218

vector.ph218:                                     ; preds = %for.cond20.preheader
  %invariant.gep243 = getelementptr i8, ptr %add.ptr24, i64 4
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph218
  %index222 = phi i64 [ 0, %vector.ph218 ], [ %index.next226, %vector.body221 ]
  %vec.phi223 = phi <4 x i32> [ splat (i32 100000), %vector.ph218 ], [ %19, %vector.body221 ]
  %gep244 = getelementptr i32, ptr %invariant.gep243, i64 %index222
  %wide.load225 = load <4 x i32>, ptr %gep244, align 4, !tbaa !5
  %19 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load225, <4 x i32> %vec.phi223)
  %index.next226 = add nuw i64 %index222, 4
  %20 = icmp eq i64 %index.next226, %n.vec220
  br i1 %20, label %middle.block227, label %vector.body221, !llvm.loop !14

middle.block227:                                  ; preds = %vector.body221
  %21 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %19)
  br i1 %cmp.n228, label %for.body39.lr.ph, label %for.body22.preheader

for.body22.preheader:                             ; preds = %for.cond20.preheader, %middle.block227
  %indvars.iv124.ph = phi i64 [ 1, %for.cond20.preheader ], [ %17, %middle.block227 ]
  %min.087.ph = phi i32 [ 100000, %for.cond20.preheader ], [ %21, %middle.block227 ]
  br label %for.body22

for.body39.lr.ph:                                 ; preds = %for.body22, %middle.block227
  %spec.select.lcssa = phi i32 [ %21, %middle.block227 ], [ %spec.select, %for.body22 ]
  br i1 %min.iters.check204, label %for.body39.preheader, label %vector.ph205

vector.ph205:                                     ; preds = %for.body39.lr.ph
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.select.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.gep245 = getelementptr i8, ptr %add.ptr24, i64 4
  br label %vector.body208

vector.body208:                                   ; preds = %vector.body208, %vector.ph205
  %index209 = phi i64 [ 0, %vector.ph205 ], [ %index.next212, %vector.body208 ]
  %gep246 = getelementptr i32, ptr %invariant.gep245, i64 %index209
  %wide.load211 = load <4 x i32>, ptr %gep246, align 4, !tbaa !5
  %22 = sub nsw <4 x i32> %wide.load211, %broadcast.splat
  store <4 x i32> %22, ptr %gep246, align 4, !tbaa !5
  %index.next212 = add nuw i64 %index209, 4
  %23 = icmp eq i64 %index.next212, %n.vec207
  br i1 %23, label %middle.block213, label %vector.body208, !llvm.loop !17

middle.block213:                                  ; preds = %vector.body208
  br i1 %cmp.n214, label %for.inc53, label %for.body39.preheader

for.body39.preheader:                             ; preds = %for.body39.lr.ph, %middle.block213
  %indvars.iv129.ph = phi i64 [ 1, %for.body39.lr.ph ], [ %18, %middle.block213 ]
  br label %for.body39

for.body22:                                       ; preds = %for.body22.preheader, %for.body22
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %for.body22 ], [ %indvars.iv124.ph, %for.body22.preheader ]
  %min.087 = phi i32 [ %spec.select, %for.body22 ], [ %min.087.ph, %for.body22.preheader ]
  %add.ptr27 = getelementptr inbounds nuw i32, ptr %add.ptr24, i64 %indvars.iv124
  %24 = load i32, ptr %add.ptr27, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %24, i32 %min.087)
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next125, %indvars.iv175
  br i1 %exitcond.not, label %for.body39.lr.ph, label %for.body22, !llvm.loop !18

for.body39:                                       ; preds = %for.body39.preheader, %for.body39
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %for.body39 ], [ %indvars.iv129.ph, %for.body39.preheader ]
  %add.ptr44 = getelementptr inbounds nuw i32, ptr %add.ptr24, i64 %indvars.iv129
  %25 = load i32, ptr %add.ptr44, align 4, !tbaa !5
  %sub = sub nsw i32 %25, %spec.select.lcssa
  store i32 %sub, ptr %add.ptr44, align 4, !tbaa !5
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %indvars.iv175
  br i1 %exitcond133.not, label %for.inc53, label %for.body39, !llvm.loop !19

for.inc53:                                        ; preds = %for.body39, %middle.block213
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %indvars.iv175
  br i1 %exitcond138.not, label %for.cond59.preheader.preheader, label %for.cond20.preheader, !llvm.loop !20

for.cond59.preheader.preheader:                   ; preds = %for.inc53
  %min.iters.check192 = icmp ult i64 %15, 4
  %n.vec195 = and i64 %15, -4
  %26 = or disjoint i64 %n.vec195, 1
  %cmp.n201 = icmp eq i64 %15, %n.vec195
  br label %for.cond59.preheader

for.cond59.preheader:                             ; preds = %for.cond59.preheader.preheader, %for.inc95
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %for.inc95 ], [ 1, %for.cond59.preheader.preheader ]
  %invariant.gep = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv149
  br i1 %min.iters.check192, label %for.body61.preheader, label %vector.ph193

vector.ph193:                                     ; preds = %for.cond59.preheader
  %invariant.gep247 = getelementptr i8, ptr %invariant.gep, i64 440
  %invariant.gep249 = getelementptr i8, ptr %invariant.gep, i64 880
  %invariant.gep251 = getelementptr i8, ptr %invariant.gep, i64 1320
  %invariant.gep253 = getelementptr i8, ptr %invariant.gep, i64 1760
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph193
  %index197 = phi i64 [ 0, %vector.ph193 ], [ %index.next199, %vector.body196 ]
  %vec.phi = phi <4 x i32> [ splat (i32 100000), %vector.ph193 ], [ %35, %vector.body196 ]
  %gep248 = getelementptr [110 x i32], ptr %invariant.gep247, i64 %index197
  %gep250 = getelementptr [110 x i32], ptr %invariant.gep249, i64 %index197
  %gep252 = getelementptr [110 x i32], ptr %invariant.gep251, i64 %index197
  %gep254 = getelementptr [110 x i32], ptr %invariant.gep253, i64 %index197
  %27 = load i32, ptr %gep248, align 4, !tbaa !5
  %28 = load i32, ptr %gep250, align 4, !tbaa !5
  %29 = load i32, ptr %gep252, align 4, !tbaa !5
  %30 = load i32, ptr %gep254, align 4, !tbaa !5
  %31 = insertelement <4 x i32> poison, i32 %27, i64 0
  %32 = insertelement <4 x i32> %31, i32 %28, i64 1
  %33 = insertelement <4 x i32> %32, i32 %29, i64 2
  %34 = insertelement <4 x i32> %33, i32 %30, i64 3
  %35 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %34, <4 x i32> %vec.phi)
  %index.next199 = add nuw i64 %index197, 4
  %36 = icmp eq i64 %index.next199, %n.vec195
  br i1 %36, label %middle.block200, label %vector.body196, !llvm.loop !21

middle.block200:                                  ; preds = %vector.body196
  %37 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %35)
  br i1 %cmp.n201, label %for.body80.lr.ph, label %for.body61.preheader

for.body61.preheader:                             ; preds = %for.cond59.preheader, %middle.block200
  %indvars.iv139.ph = phi i64 [ 1, %for.cond59.preheader ], [ %26, %middle.block200 ]
  %min.294.ph = phi i32 [ 100000, %for.cond59.preheader ], [ %37, %middle.block200 ]
  br label %for.body61

for.body80.lr.ph:                                 ; preds = %for.body61, %middle.block200
  %spec.select80.lcssa = phi i32 [ %37, %middle.block200 ], [ %spec.select80, %for.body61 ]
  br label %for.body80

for.body61:                                       ; preds = %for.body61.preheader, %for.body61
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %for.body61 ], [ %indvars.iv139.ph, %for.body61.preheader ]
  %min.294 = phi i32 [ %spec.select80, %for.body61 ], [ %min.294.ph, %for.body61.preheader ]
  %gep = getelementptr inbounds nuw [110 x i32], ptr %invariant.gep, i64 %indvars.iv139
  %38 = load i32, ptr %gep, align 4, !tbaa !5
  %spec.select80 = call i32 @llvm.smin.i32(i32 %38, i32 %min.294)
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %indvars.iv175
  br i1 %exitcond143.not, label %for.body80.lr.ph, label %for.body61, !llvm.loop !22

for.body80:                                       ; preds = %for.body80.lr.ph, %for.body80
  %indvars.iv144 = phi i64 [ 1, %for.body80.lr.ph ], [ %indvars.iv.next145, %for.body80 ]
  %gep99 = getelementptr inbounds nuw [110 x i32], ptr %invariant.gep, i64 %indvars.iv144
  %39 = load i32, ptr %gep99, align 4, !tbaa !5
  %sub86 = sub nsw i32 %39, %spec.select80.lcssa
  store i32 %sub86, ptr %gep99, align 4, !tbaa !5
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %indvars.iv175
  br i1 %exitcond148.not, label %for.inc95, label %for.body80, !llvm.loop !23

for.inc95:                                        ; preds = %for.body80
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %indvars.iv175
  br i1 %exitcond153.not, label %for.end97, label %for.cond59.preheader, !llvm.loop !24

for.end97:                                        ; preds = %for.inc95
  %40 = load i32, ptr %add.ptr100, align 8, !tbaa !5
  %add = add nsw i32 %40, %sum.0113
  %cmp103.not.not104 = icmp samesign ugt i64 %indvars.iv177, 2
  br i1 %cmp103.not.not104, label %for.cond105.preheader.preheader, label %for.end150

for.cond105.preheader.preheader:                  ; preds = %for.end97
  %min.iters.check = icmp ult i64 %16, 4
  %n.vec = and i64 %16, -4
  %41 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %16, %n.vec
  br label %for.cond105.preheader

for.cond105.preheader:                            ; preds = %for.cond105.preheader.preheader, %for.cond105.for.inc122_crit_edge
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %for.cond105.for.inc122_crit_edge ], [ 2, %for.cond105.preheader.preheader ]
  %add.ptr109 = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv160
  %add.ptr110 = getelementptr inbounds nuw i8, ptr %add.ptr109, i64 440
  br i1 %min.iters.check, label %for.body107.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond105.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond105.preheader ]
  %offset.idx = or disjoint i64 %index, 1
  %42 = getelementptr inbounds nuw i32, ptr %add.ptr110, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %42, align 4, !tbaa !5
  %43 = getelementptr inbounds nuw i32, ptr %add.ptr109, i64 %offset.idx
  store <4 x i32> %wide.load, ptr %43, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %44 = icmp eq i64 %index.next, %n.vec
  br i1 %44, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond105.for.inc122_crit_edge, label %for.body107.preheader

for.body107.preheader:                            ; preds = %for.cond105.preheader, %middle.block
  %indvars.iv155.ph = phi i64 [ 1, %for.cond105.preheader ], [ %41, %middle.block ]
  br label %for.body107

for.body107:                                      ; preds = %for.body107.preheader, %for.body107
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %for.body107 ], [ %indvars.iv155.ph, %for.body107.preheader ]
  %add.ptr113 = getelementptr inbounds nuw i32, ptr %add.ptr110, i64 %indvars.iv155
  %45 = load i32, ptr %add.ptr113, align 4, !tbaa !5
  %add.ptr118 = getelementptr inbounds nuw i32, ptr %add.ptr109, i64 %indvars.iv155
  store i32 %45, ptr %add.ptr118, align 4, !tbaa !5
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1
  %exitcond159.not = icmp eq i64 %indvars.iv.next156, %indvars.iv175
  br i1 %exitcond159.not, label %for.cond105.for.inc122_crit_edge, label %for.body107, !llvm.loop !26

for.cond105.for.inc122_crit_edge:                 ; preds = %for.body107, %middle.block
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %indvars.iv177
  br i1 %exitcond164.not, label %for.cond129.preheader, label %for.cond105.preheader, !llvm.loop !27

for.cond129.preheader:                            ; preds = %for.cond105.for.inc122_crit_edge, %for.cond129.for.inc146_crit_edge
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %for.cond129.for.inc146_crit_edge ], [ 2, %for.cond105.for.inc122_crit_edge ]
  %invariant.gep108 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv170
  br label %for.body131

for.body131:                                      ; preds = %for.cond129.preheader, %for.body131
  %indvars.iv165 = phi i64 [ 1, %for.cond129.preheader ], [ %indvars.iv.next166, %for.body131 ]
  %gep109 = getelementptr inbounds nuw [110 x i32], ptr %invariant.gep108, i64 %indvars.iv165
  %add.ptr137 = getelementptr inbounds nuw i8, ptr %gep109, i64 4
  %46 = load i32, ptr %add.ptr137, align 4, !tbaa !5
  store i32 %46, ptr %gep109, align 4, !tbaa !5
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1
  %exitcond169.not = icmp eq i64 %indvars.iv.next166, %indvars.iv175
  br i1 %exitcond169.not, label %for.cond129.for.inc146_crit_edge, label %for.body131, !llvm.loop !28

for.cond129.for.inc146_crit_edge:                 ; preds = %for.body131
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1
  %exitcond174.not = icmp eq i64 %indvars.iv.next171, %indvars.iv177
  br i1 %exitcond174.not, label %for.inc149, label %for.cond129.preheader, !llvm.loop !29

for.inc149:                                       ; preds = %for.cond129.for.inc146_crit_edge
  %indvars.iv.next178 = add nsw i64 %indvars.iv177, -1
  %cmp15 = icmp sgt i64 %indvars.iv177, 2
  %indvars.iv.next176 = add nsw i64 %indvars.iv175, -1
  %indvar.next = add i64 %indvar, 1
  br i1 %cmp15, label %for.cond17.preheader, label %for.end150, !llvm.loop !30

for.end150:                                       ; preds = %for.end97, %for.inc149, %for.cond1.preheader, %for.cond14.preheader
  %sum.0.lcssa = phi i32 [ 0, %for.cond14.preheader ], [ 0, %for.cond1.preheader ], [ %add, %for.inc149 ], [ %add, %for.end97 ]
  %call151 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0.lcssa)
  %vtable.i = load ptr, ptr %call151, align 8, !tbaa !31
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call151, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %47 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !33
  %tobool.not.i.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end150
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end150
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %47, i64 56
  %48 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !51
  %tobool.not.i1.i.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %47, i64 67
  %49 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !57
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %47)
  %vtable.i.i.i = load ptr, ptr %47, align 8, !tbaa !31
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %50 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %50(ptr noundef nonnull align 8 dereferenceable(570) %47, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %49, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call151, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc154 = add nuw nsw i32 %k.0117, 1
  %51 = load i32, ptr %x, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %k.0117, %51
  br i1 %cmp.not.not, label %for.cond1.preheader, label %for.end155, !llvm.loop !58

for.end155:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x) #5
  call void @llvm.lifetime.end.p0(i64 48400, ptr nonnull %a) #5
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
