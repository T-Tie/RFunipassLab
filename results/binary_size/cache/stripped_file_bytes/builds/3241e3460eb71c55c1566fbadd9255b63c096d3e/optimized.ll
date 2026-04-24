; ModuleID = '<stdin>'
source_filename = "/tmp/tmppt7axdys.cpp"
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
  %cmp100 = icmp sgt i32 %0, 0
  br i1 %cmp100, label %for.cond1.preheader.lr.ph, label %for.end166

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %arrayidx103 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %0, %for.cond1.preheader.lr.ph ], [ %56, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %m.0101 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc165, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %cmp269 = icmp sgt i32 %1, 0
  br i1 %cmp269, label %for.cond4.preheader, label %for.end161

for.cond13.preheader:                             ; preds = %for.inc10
  %sub = add i32 %10, -1
  %cmp1496 = icmp sgt i32 %10, 1
  br i1 %cmp1496, label %for.cond16.preheader.lr.ph, label %for.end161

for.cond16.preheader.lr.ph:                       ; preds = %for.cond13.preheader
  %cmp10988.not = icmp eq i32 %10, 2
  %idxprom126 = zext nneg i32 %sub to i64
  %2 = mul nuw nsw i64 %idxprom126, 400
  %scevgep = getelementptr i8, ptr %a, i64 %2
  %3 = zext i32 %sub to i64
  %4 = shl nuw nsw i64 %3, 2
  %wide.trip.count149 = zext nneg i32 %10 to i64
  %5 = add nsw i64 %3, -1
  %min.iters.check = icmp ult i64 %5, 4
  %n.vec = and i64 %5, -4
  %6 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %5, %n.vec
  br label %for.cond16.preheader

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc10
  %7 = phi i32 [ %10, %for.inc10 ], [ %1, %for.cond1.preheader ]
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %for.inc10 ], [ 0, %for.cond1.preheader ]
  %cmp567 = icmp sgt i32 %7, 0
  br i1 %cmp567, label %for.body6, label %for.cond4.preheader.for.inc10_crit_edge

for.cond4.preheader.for.inc10_crit_edge:          ; preds = %for.cond4.preheader
  %.pre = sext i32 %7 to i64
  br label %for.inc10

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond4.preheader ]
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv107, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp5 = icmp slt i64 %indvars.iv.next, %9
  br i1 %cmp5, label %for.body6, label %for.inc10, !llvm.loop !9

for.inc10:                                        ; preds = %for.body6, %for.cond4.preheader.for.inc10_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond4.preheader.for.inc10_crit_edge ], [ %9, %for.body6 ]
  %10 = phi i32 [ %7, %for.cond4.preheader.for.inc10_crit_edge ], [ %8, %for.body6 ]
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  %cmp2 = icmp slt i64 %indvars.iv.next108, %.pre-phi
  br i1 %cmp2, label %for.cond4.preheader, label %for.cond13.preheader, !llvm.loop !12

for.cond16.preheader:                             ; preds = %for.cond16.preheader.lr.ph, %for.inc159
  %indvars.iv113 = phi i32 [ %10, %for.cond16.preheader.lr.ph ], [ %indvars.iv.next114, %for.inc159 ]
  %sum.098 = phi i32 [ 0, %for.cond16.preheader.lr.ph ], [ %add, %for.inc159 ]
  %k.097 = phi i32 [ 0, %for.cond16.preheader.lr.ph ], [ %inc160, %for.inc159 ]
  %11 = zext i32 %indvars.iv113 to i64
  %12 = zext i32 %indvars.iv113 to i64
  %13 = zext i32 %indvars.iv113 to i64
  %cmp1877 = icmp sgt i32 %10, %k.097
  br i1 %cmp1877, label %for.body19.preheader, label %for.cond107.preheader.lr.ph

for.body19.preheader:                             ; preds = %for.cond16.preheader
  %wide.trip.count123 = zext i32 %indvars.iv113 to i64
  %min.iters.check203 = icmp ult i32 %indvars.iv113, 4
  %n.vec206 = and i64 %11, 4294967292
  %cmp.n215 = icmp eq i64 %n.vec206, %11
  %min.iters.check189 = icmp ult i32 %indvars.iv113, 4
  %n.vec192 = and i64 %12, 4294967292
  %cmp.n200 = icmp eq i64 %n.vec192, %12
  br label %for.body19

for.body61.preheader:                             ; preds = %for.inc55
  %wide.trip.count138 = zext i32 %indvars.iv113 to i64
  %min.iters.check178 = icmp ult i32 %indvars.iv113, 4
  %n.vec181 = and i64 %13, 4294967292
  %cmp.n186 = icmp eq i64 %n.vec181, %13
  br label %for.body61

for.body19:                                       ; preds = %for.body19.preheader, %for.inc55
  %indvars.iv120 = phi i64 [ 0, %for.body19.preheader ], [ %indvars.iv.next121, %for.inc55 ]
  %arrayidx21 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv120
  %14 = load i32, ptr %arrayidx21, align 16, !tbaa !5
  br i1 %min.iters.check203, label %for.body26.preheader, label %vector.ph204

vector.ph204:                                     ; preds = %for.body19
  %broadcast.splatinsert207 = insertelement <4 x i32> poison, i32 %14, i64 0
  %broadcast.splat208 = shufflevector <4 x i32> %broadcast.splatinsert207, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph204
  %index210 = phi i64 [ 0, %vector.ph204 ], [ %index.next213, %vector.body209 ]
  %vec.phi211 = phi <4 x i32> [ %broadcast.splat208, %vector.ph204 ], [ %16, %vector.body209 ]
  %15 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv120, i64 %index210
  %wide.load212 = load <4 x i32>, ptr %15, align 16, !tbaa !5
  %16 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load212, <4 x i32> %vec.phi211)
  %index.next213 = add nuw i64 %index210, 4
  %17 = icmp eq i64 %index.next213, %n.vec206
  br i1 %17, label %middle.block214, label %vector.body209, !llvm.loop !14

middle.block214:                                  ; preds = %vector.body209
  %18 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %16)
  br i1 %cmp.n215, label %for.body42.lr.ph, label %for.body26.preheader

for.body26.preheader:                             ; preds = %for.body19, %middle.block214
  %indvars.iv110.ph = phi i64 [ 0, %for.body19 ], [ %n.vec206, %middle.block214 ]
  %min.073.ph = phi i32 [ %14, %for.body19 ], [ %18, %middle.block214 ]
  br label %for.body26

for.body42.lr.ph:                                 ; preds = %for.body26, %middle.block214
  %spec.select.lcssa = phi i32 [ %18, %middle.block214 ], [ %spec.select, %for.body26 ]
  br i1 %min.iters.check189, label %for.body42.preheader, label %vector.ph190

vector.ph190:                                     ; preds = %for.body42.lr.ph
  %broadcast.splatinsert193 = insertelement <4 x i32> poison, i32 %spec.select.lcssa, i64 0
  %broadcast.splat194 = shufflevector <4 x i32> %broadcast.splatinsert193, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph190
  %index196 = phi i64 [ 0, %vector.ph190 ], [ %index.next198, %vector.body195 ]
  %19 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv120, i64 %index196
  %wide.load197 = load <4 x i32>, ptr %19, align 16, !tbaa !5
  %20 = sub nsw <4 x i32> %wide.load197, %broadcast.splat194
  store <4 x i32> %20, ptr %19, align 16, !tbaa !5
  %index.next198 = add nuw i64 %index196, 4
  %21 = icmp eq i64 %index.next198, %n.vec192
  br i1 %21, label %middle.block199, label %vector.body195, !llvm.loop !17

middle.block199:                                  ; preds = %vector.body195
  br i1 %cmp.n200, label %for.inc55, label %for.body42.preheader

for.body42.preheader:                             ; preds = %for.body42.lr.ph, %middle.block199
  %indvars.iv115.ph = phi i64 [ 0, %for.body42.lr.ph ], [ %n.vec192, %middle.block199 ]
  br label %for.body42

for.body26:                                       ; preds = %for.body26.preheader, %for.body26
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %for.body26 ], [ %indvars.iv110.ph, %for.body26.preheader ]
  %min.073 = phi i32 [ %spec.select, %for.body26 ], [ %min.073.ph, %for.body26.preheader ]
  %arrayidx30 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv120, i64 %indvars.iv110
  %22 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %22, i32 %min.073)
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count123
  br i1 %exitcond.not, label %for.body42.lr.ph, label %for.body26, !llvm.loop !18

for.body42:                                       ; preds = %for.body42.preheader, %for.body42
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %for.body42 ], [ %indvars.iv115.ph, %for.body42.preheader ]
  %arrayidx46 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv120, i64 %indvars.iv115
  %23 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %sub47 = sub nsw i32 %23, %spec.select.lcssa
  store i32 %sub47, ptr %arrayidx46, align 4, !tbaa !5
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count123
  br i1 %exitcond119.not, label %for.inc55, label %for.body42, !llvm.loop !19

for.inc55:                                        ; preds = %for.body42, %middle.block199
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %for.body61.preheader, label %for.body19, !llvm.loop !20

for.body61:                                       ; preds = %for.body61.preheader, %for.inc99
  %indvars.iv135 = phi i64 [ 0, %for.body61.preheader ], [ %indvars.iv.next136, %for.inc99 ]
  %arrayidx64 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv135
  %24 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  br i1 %min.iters.check178, label %for.body68.preheader, label %vector.ph179

vector.ph179:                                     ; preds = %for.body61
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %24, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph179
  %index183 = phi i64 [ 0, %vector.ph179 ], [ %index.next184, %vector.body182 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph179 ], [ %40, %vector.body182 ]
  %25 = or disjoint i64 %index183, 1
  %26 = or disjoint i64 %index183, 2
  %27 = or disjoint i64 %index183, 3
  %28 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %index183, i64 %indvars.iv135
  %29 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %25, i64 %indvars.iv135
  %30 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %26, i64 %indvars.iv135
  %31 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %27, i64 %indvars.iv135
  %32 = load i32, ptr %28, align 4, !tbaa !5
  %33 = load i32, ptr %29, align 4, !tbaa !5
  %34 = load i32, ptr %30, align 4, !tbaa !5
  %35 = load i32, ptr %31, align 4, !tbaa !5
  %36 = insertelement <4 x i32> poison, i32 %32, i64 0
  %37 = insertelement <4 x i32> %36, i32 %33, i64 1
  %38 = insertelement <4 x i32> %37, i32 %34, i64 2
  %39 = insertelement <4 x i32> %38, i32 %35, i64 3
  %40 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %39, <4 x i32> %vec.phi)
  %index.next184 = add nuw i64 %index183, 4
  %41 = icmp eq i64 %index.next184, %n.vec181
  br i1 %41, label %middle.block185, label %vector.body182, !llvm.loop !21

middle.block185:                                  ; preds = %vector.body182
  %42 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %40)
  br i1 %cmp.n186, label %for.body86.lr.ph, label %for.body68.preheader

for.body68.preheader:                             ; preds = %for.body61, %middle.block185
  %indvars.iv125.ph = phi i64 [ 0, %for.body61 ], [ %n.vec181, %middle.block185 ]
  %min.282.ph = phi i32 [ %24, %for.body61 ], [ %42, %middle.block185 ]
  br label %for.body68

for.body86.lr.ph:                                 ; preds = %for.body68, %middle.block185
  %spec.select66.lcssa = phi i32 [ %42, %middle.block185 ], [ %spec.select66, %for.body68 ]
  br label %for.body86

for.body68:                                       ; preds = %for.body68.preheader, %for.body68
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %for.body68 ], [ %indvars.iv125.ph, %for.body68.preheader ]
  %min.282 = phi i32 [ %spec.select66, %for.body68 ], [ %min.282.ph, %for.body68.preheader ]
  %arrayidx72 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv125, i64 %indvars.iv135
  %43 = load i32, ptr %arrayidx72, align 4, !tbaa !5
  %spec.select66 = call i32 @llvm.smin.i32(i32 %43, i32 %min.282)
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count138
  br i1 %exitcond129.not, label %for.body86.lr.ph, label %for.body68, !llvm.loop !22

for.body86:                                       ; preds = %for.body86.lr.ph, %for.body86
  %indvars.iv130 = phi i64 [ 0, %for.body86.lr.ph ], [ %indvars.iv.next131, %for.body86 ]
  %arrayidx90 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv130, i64 %indvars.iv135
  %44 = load i32, ptr %arrayidx90, align 4, !tbaa !5
  %sub91 = sub nsw i32 %44, %spec.select66.lcssa
  store i32 %sub91, ptr %arrayidx90, align 4, !tbaa !5
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count138
  br i1 %exitcond134.not, label %for.inc99, label %for.body86, !llvm.loop !23

for.inc99:                                        ; preds = %for.body86
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %for.cond107.preheader.lr.ph, label %for.body61, !llvm.loop !24

for.cond107.preheader.lr.ph:                      ; preds = %for.inc99, %for.cond16.preheader
  %45 = load i32, ptr %arrayidx103, align 4, !tbaa !5
  %add = add nsw i32 %45, %sum.098
  br i1 %cmp10988.not, label %for.cond107.preheader, label %for.cond107.preheader.us

for.cond107.preheader.us:                         ; preds = %for.cond107.preheader.lr.ph, %for.cond107.for.end122_crit_edge.us
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %for.cond107.for.end122_crit_edge.us ], [ 0, %for.cond107.preheader.lr.ph ]
  br i1 %min.iters.check, label %for.body110.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond107.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond107.preheader.us ]
  %offset.idx = or disjoint i64 %index, 1
  %46 = or disjoint i64 %index, 2
  %47 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv146, i64 %46
  %wide.load = load <4 x i32>, ptr %47, align 8, !tbaa !5
  %48 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv146, i64 %offset.idx
  store <4 x i32> %wide.load, ptr %48, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %49 = icmp eq i64 %index.next, %n.vec
  br i1 %49, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond107.for.end122_crit_edge.us, label %for.body110.us.preheader

for.body110.us.preheader:                         ; preds = %for.cond107.preheader.us, %middle.block
  %indvars.iv141.ph = phi i64 [ 1, %for.cond107.preheader.us ], [ %6, %middle.block ]
  br label %for.body110.us

for.body110.us:                                   ; preds = %for.body110.us.preheader, %for.body110.us
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %for.body110.us ], [ %indvars.iv141.ph, %for.body110.us.preheader ]
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1
  %arrayidx115.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv146, i64 %indvars.iv.next142
  %50 = load i32, ptr %arrayidx115.us, align 4, !tbaa !5
  %arrayidx119.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv146, i64 %indvars.iv141
  store i32 %50, ptr %arrayidx119.us, align 4, !tbaa !5
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %3
  br i1 %exitcond145.not, label %for.cond107.for.end122_crit_edge.us, label %for.body110.us, !llvm.loop !26

for.cond107.for.end122_crit_edge.us:              ; preds = %for.body110.us, %middle.block
  %arrayidx127.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv146, i64 %idxprom126
  store i32 0, ptr %arrayidx127.us, align 4, !tbaa !5
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %for.cond135.preheader.us, label %for.cond107.preheader.us, !llvm.loop !27

for.cond135.preheader.preheader:                  ; preds = %for.cond107.preheader
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep, i8 0, i64 %4, i1 false), !tbaa !5
  br label %for.inc159

for.cond135.preheader.us:                         ; preds = %for.cond107.for.end122_crit_edge.us, %for.cond135.for.end150_crit_edge.us
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %for.cond135.for.end150_crit_edge.us ], [ 0, %for.cond107.for.end122_crit_edge.us ]
  br label %for.body138.us

for.body138.us:                                   ; preds = %for.cond135.preheader.us, %for.body138.us
  %indvars.iv156 = phi i64 [ 1, %for.cond135.preheader.us ], [ %indvars.iv.next157, %for.body138.us ]
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1
  %arrayidx143.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next157, i64 %indvars.iv161
  %51 = load i32, ptr %arrayidx143.us, align 4, !tbaa !5
  %arrayidx147.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv156, i64 %indvars.iv161
  store i32 %51, ptr %arrayidx147.us, align 4, !tbaa !5
  %exitcond160.not = icmp eq i64 %indvars.iv.next157, %3
  br i1 %exitcond160.not, label %for.cond135.for.end150_crit_edge.us, label %for.body138.us, !llvm.loop !28

for.cond135.for.end150_crit_edge.us:              ; preds = %for.body138.us
  %arrayidx155.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom126, i64 %indvars.iv161
  store i32 0, ptr %arrayidx155.us, align 4, !tbaa !5
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %3
  br i1 %exitcond165.not, label %for.inc159, label %for.cond135.preheader.us, !llvm.loop !29

for.cond107.preheader:                            ; preds = %for.cond107.preheader.lr.ph, %for.cond107.preheader
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %for.cond107.preheader ], [ 0, %for.cond107.preheader.lr.ph ]
  %arrayidx127 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv151, i64 %idxprom126
  store i32 0, ptr %arrayidx127, align 4, !tbaa !5
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, 2
  br i1 %exitcond155.not, label %for.cond135.preheader.preheader, label %for.cond107.preheader, !llvm.loop !27

for.inc159:                                       ; preds = %for.cond135.for.end150_crit_edge.us, %for.cond135.preheader.preheader
  %inc160 = add nuw nsw i32 %k.097, 1
  %indvars.iv.next114 = add i32 %indvars.iv113, -1
  %exitcond169.not = icmp eq i32 %inc160, %sub
  br i1 %exitcond169.not, label %for.end161, label %for.cond16.preheader, !llvm.loop !30

for.end161:                                       ; preds = %for.inc159, %for.cond1.preheader, %for.cond13.preheader
  %sum.0.lcssa = phi i32 [ 0, %for.cond13.preheader ], [ 0, %for.cond1.preheader ], [ %add, %for.inc159 ]
  %call162 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0.lcssa)
  %vtable.i = load ptr, ptr %call162, align 8, !tbaa !31
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call162, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %52 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !33
  %tobool.not.i.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end161
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end161
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %52, i64 56
  %53 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !51
  %tobool.not.i1.i.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %52, i64 67
  %54 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !57
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %52)
  %vtable.i.i.i = load ptr, ptr %52, align 8, !tbaa !31
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %55 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %55(ptr noundef nonnull align 8 dereferenceable(570) %52, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %54, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call162, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc165 = add nuw nsw i32 %m.0101, 1
  %56 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc165, %56
  br i1 %cmp, label %for.cond1.preheader, label %for.end166, !llvm.loop !58

for.end166:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #6
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
