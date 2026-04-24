; ModuleID = '<stdin>'
source_filename = "/tmp/tmpkxspa_zo.cpp"
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not104 = icmp slt i32 %0, 1
  br i1 %cmp.not104, label %for.end156, label %for.cond1.preheader.lr.ph

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %arrayidx94 = getelementptr inbounds nuw i8, ptr %a, i64 404
  %scevgep = getelementptr inbounds nuw i8, ptr %a, i64 4
  %scevgep147 = getelementptr inbounds nuw i8, ptr %a, i64 8
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc154
  %1 = phi i32 [ %0, %for.cond1.preheader.lr.ph ], [ %58, %for.inc154 ]
  %k.0105 = phi i32 [ 1, %for.cond1.preheader.lr.ph ], [ %inc155, %for.inc154 ]
  %cmp274 = icmp sgt i32 %1, 0
  br i1 %cmp274, label %for.cond4.preheader, label %while.end

while.cond.preheader:                             ; preds = %for.inc10
  %cmp13100 = icmp sgt i32 %10, 1
  br i1 %cmp13100, label %for.cond14.preheader.preheader, label %while.end

for.cond14.preheader.preheader:                   ; preds = %while.cond.preheader
  %2 = add nsw i32 %10, -1
  %3 = add nsw i32 %10, -2
  %4 = zext nneg i32 %3 to i64
  %5 = zext i32 %2 to i64
  %6 = zext nneg i32 %10 to i64
  br label %for.cond14.preheader

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc10
  %7 = phi i32 [ %10, %for.inc10 ], [ %1, %for.cond1.preheader ]
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %for.inc10 ], [ 0, %for.cond1.preheader ]
  %cmp572 = icmp sgt i32 %7, 0
  br i1 %cmp572, label %for.body6, label %for.cond4.preheader.for.inc10_crit_edge

for.cond4.preheader.for.inc10_crit_edge:          ; preds = %for.cond4.preheader
  %.pre = sext i32 %7 to i64
  br label %for.inc10

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond4.preheader ]
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv109, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp5 = icmp slt i64 %indvars.iv.next, %9
  br i1 %cmp5, label %for.body6, label %for.inc10, !llvm.loop !9

for.inc10:                                        ; preds = %for.body6, %for.cond4.preheader.for.inc10_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond4.preheader.for.inc10_crit_edge ], [ %9, %for.body6 ]
  %10 = phi i32 [ %7, %for.cond4.preheader.for.inc10_crit_edge ], [ %8, %for.body6 ]
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  %cmp2 = icmp slt i64 %indvars.iv.next110, %.pre-phi
  br i1 %cmp2, label %for.cond4.preheader, label %while.cond.preheader, !llvm.loop !12

while.cond.loopexit:                              ; preds = %for.cond127.for.inc144_crit_edge.us, %for.end92
  %indvars.iv.next166 = add nsw i64 %indvars.iv165, -1
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond173.not = icmp eq i64 %indvar.next, %5
  br i1 %exitcond173.not, label %while.end, label %for.cond14.preheader, !llvm.loop !14

for.cond14.preheader:                             ; preds = %for.cond14.preheader.preheader, %while.cond.loopexit
  %indvars.iv167 = phi i64 [ %6, %for.cond14.preheader.preheader ], [ %indvars.iv.next168, %while.cond.loopexit ]
  %indvars.iv165 = phi i64 [ %5, %for.cond14.preheader.preheader ], [ %indvars.iv.next166, %while.cond.loopexit ]
  %indvar = phi i64 [ 0, %for.cond14.preheader.preheader ], [ %indvar.next, %while.cond.loopexit ]
  %sum.0102 = phi i32 [ 0, %for.cond14.preheader.preheader ], [ %add, %while.cond.loopexit ]
  %11 = xor i64 %indvar, -1
  %12 = add nsw i64 %11, %5
  %13 = sub nsw i64 %4, %indvar
  %14 = shl i64 %13, 2
  %min.iters.check206 = icmp ult i64 %indvars.iv167, 4
  %n.vec209 = and i64 %indvars.iv167, -4
  %cmp.n218 = icmp eq i64 %indvars.iv167, %n.vec209
  %min.iters.check192 = icmp ult i64 %indvars.iv167, 4
  %n.vec195 = and i64 %indvars.iv167, -4
  %cmp.n203 = icmp eq i64 %indvars.iv167, %n.vec195
  br label %for.body16

for.body16:                                       ; preds = %for.cond14.preheader, %for.inc49
  %indvars.iv120 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next121, %for.inc49 ]
  %arrayidx18 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv120
  %15 = load i32, ptr %arrayidx18, align 16, !tbaa !5
  br i1 %min.iters.check206, label %for.body22.preheader, label %vector.ph207

vector.ph207:                                     ; preds = %for.body16
  %broadcast.splatinsert210 = insertelement <4 x i32> poison, i32 %15, i64 0
  %broadcast.splat211 = shufflevector <4 x i32> %broadcast.splatinsert210, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph207
  %index213 = phi i64 [ 0, %vector.ph207 ], [ %index.next216, %vector.body212 ]
  %vec.phi214 = phi <4 x i32> [ %broadcast.splat211, %vector.ph207 ], [ %17, %vector.body212 ]
  %16 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv120, i64 %index213
  %wide.load215 = load <4 x i32>, ptr %16, align 16, !tbaa !5
  %17 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load215, <4 x i32> %vec.phi214)
  %index.next216 = add nuw i64 %index213, 4
  %18 = icmp eq i64 %index.next216, %n.vec209
  br i1 %18, label %middle.block217, label %vector.body212, !llvm.loop !15

middle.block217:                                  ; preds = %vector.body212
  %19 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %17)
  br i1 %cmp.n218, label %for.body37.lr.ph, label %for.body22.preheader

for.body22.preheader:                             ; preds = %for.body16, %middle.block217
  %indvars.iv112.ph = phi i64 [ 0, %for.body16 ], [ %n.vec209, %middle.block217 ]
  %min.078.ph = phi i32 [ %15, %for.body16 ], [ %19, %middle.block217 ]
  br label %for.body22

for.body37.lr.ph:                                 ; preds = %for.body22, %middle.block217
  %spec.select.lcssa = phi i32 [ %19, %middle.block217 ], [ %spec.select, %for.body22 ]
  br i1 %min.iters.check192, label %for.body37.preheader, label %vector.ph193

vector.ph193:                                     ; preds = %for.body37.lr.ph
  %broadcast.splatinsert196 = insertelement <4 x i32> poison, i32 %spec.select.lcssa, i64 0
  %broadcast.splat197 = shufflevector <4 x i32> %broadcast.splatinsert196, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph193
  %index199 = phi i64 [ 0, %vector.ph193 ], [ %index.next201, %vector.body198 ]
  %20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv120, i64 %index199
  %wide.load200 = load <4 x i32>, ptr %20, align 16, !tbaa !5
  %21 = sub nsw <4 x i32> %wide.load200, %broadcast.splat197
  store <4 x i32> %21, ptr %20, align 16, !tbaa !5
  %index.next201 = add nuw i64 %index199, 4
  %22 = icmp eq i64 %index.next201, %n.vec195
  br i1 %22, label %middle.block202, label %vector.body198, !llvm.loop !18

middle.block202:                                  ; preds = %vector.body198
  br i1 %cmp.n203, label %for.inc49, label %for.body37.preheader

for.body37.preheader:                             ; preds = %for.body37.lr.ph, %middle.block202
  %indvars.iv115.ph = phi i64 [ 0, %for.body37.lr.ph ], [ %n.vec195, %middle.block202 ]
  br label %for.body37

for.body22:                                       ; preds = %for.body22.preheader, %for.body22
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %for.body22 ], [ %indvars.iv112.ph, %for.body22.preheader ]
  %min.078 = phi i32 [ %spec.select, %for.body22 ], [ %min.078.ph, %for.body22.preheader ]
  %arrayidx26 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv120, i64 %indvars.iv112
  %23 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %23, i32 %min.078)
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next113, %indvars.iv167
  br i1 %exitcond.not, label %for.body37.lr.ph, label %for.body22, !llvm.loop !19

for.body37:                                       ; preds = %for.body37.preheader, %for.body37
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %for.body37 ], [ %indvars.iv115.ph, %for.body37.preheader ]
  %arrayidx41 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv120, i64 %indvars.iv115
  %24 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %sub = sub nsw i32 %24, %spec.select.lcssa
  store i32 %sub, ptr %arrayidx41, align 4, !tbaa !5
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %indvars.iv167
  br i1 %exitcond119.not, label %for.inc49, label %for.body37, !llvm.loop !20

for.inc49:                                        ; preds = %for.body37, %middle.block202
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %indvars.iv167
  br i1 %exitcond124.not, label %for.body54.preheader, label %for.body16, !llvm.loop !21

for.body54.preheader:                             ; preds = %for.inc49
  %min.iters.check181 = icmp ult i64 %indvars.iv167, 4
  %n.vec184 = and i64 %indvars.iv167, -4
  %cmp.n189 = icmp eq i64 %indvars.iv167, %n.vec184
  br label %for.body54

for.body54:                                       ; preds = %for.body54.preheader, %for.inc90
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %for.inc90 ], [ 0, %for.body54.preheader ]
  %arrayidx57 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv135
  %25 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  br i1 %min.iters.check181, label %for.body60.preheader, label %vector.ph182

vector.ph182:                                     ; preds = %for.body54
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %25, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body185

vector.body185:                                   ; preds = %vector.body185, %vector.ph182
  %index186 = phi i64 [ 0, %vector.ph182 ], [ %index.next187, %vector.body185 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph182 ], [ %41, %vector.body185 ]
  %26 = or disjoint i64 %index186, 1
  %27 = or disjoint i64 %index186, 2
  %28 = or disjoint i64 %index186, 3
  %29 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %index186, i64 %indvars.iv135
  %30 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %26, i64 %indvars.iv135
  %31 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %27, i64 %indvars.iv135
  %32 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %28, i64 %indvars.iv135
  %33 = load i32, ptr %29, align 4, !tbaa !5
  %34 = load i32, ptr %30, align 4, !tbaa !5
  %35 = load i32, ptr %31, align 4, !tbaa !5
  %36 = load i32, ptr %32, align 4, !tbaa !5
  %37 = insertelement <4 x i32> poison, i32 %33, i64 0
  %38 = insertelement <4 x i32> %37, i32 %34, i64 1
  %39 = insertelement <4 x i32> %38, i32 %35, i64 2
  %40 = insertelement <4 x i32> %39, i32 %36, i64 3
  %41 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %40, <4 x i32> %vec.phi)
  %index.next187 = add nuw i64 %index186, 4
  %42 = icmp eq i64 %index.next187, %n.vec184
  br i1 %42, label %middle.block188, label %vector.body185, !llvm.loop !22

middle.block188:                                  ; preds = %vector.body185
  %43 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %41)
  br i1 %cmp.n189, label %for.body77.lr.ph, label %for.body60.preheader

for.body60.preheader:                             ; preds = %for.body54, %middle.block188
  %indvars.iv125.ph = phi i64 [ 0, %for.body54 ], [ %n.vec184, %middle.block188 ]
  %min.285.ph = phi i32 [ %25, %for.body54 ], [ %43, %middle.block188 ]
  br label %for.body60

for.body77.lr.ph:                                 ; preds = %for.body60, %middle.block188
  %spec.select71.lcssa = phi i32 [ %43, %middle.block188 ], [ %spec.select71, %for.body60 ]
  br label %for.body77

for.body60:                                       ; preds = %for.body60.preheader, %for.body60
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %for.body60 ], [ %indvars.iv125.ph, %for.body60.preheader ]
  %min.285 = phi i32 [ %spec.select71, %for.body60 ], [ %min.285.ph, %for.body60.preheader ]
  %arrayidx64 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv125, i64 %indvars.iv135
  %44 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %spec.select71 = call i32 @llvm.smin.i32(i32 %44, i32 %min.285)
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %indvars.iv167
  br i1 %exitcond129.not, label %for.body77.lr.ph, label %for.body60, !llvm.loop !23

for.body77:                                       ; preds = %for.body77.lr.ph, %for.body77
  %indvars.iv130 = phi i64 [ 0, %for.body77.lr.ph ], [ %indvars.iv.next131, %for.body77 ]
  %arrayidx81 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv130, i64 %indvars.iv135
  %45 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %sub82 = sub nsw i32 %45, %spec.select71.lcssa
  store i32 %sub82, ptr %arrayidx81, align 4, !tbaa !5
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %indvars.iv167
  br i1 %exitcond134.not, label %for.inc90, label %for.body77, !llvm.loop !24

for.inc90:                                        ; preds = %for.body77
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %indvars.iv167
  br i1 %exitcond139.not, label %for.end92, label %for.body54, !llvm.loop !25

for.end92:                                        ; preds = %for.inc90
  %46 = load i32, ptr %arrayidx94, align 4, !tbaa !5
  %add = add nsw i32 %46, %sum.0102
  %indvars.iv.next168 = add nsw i64 %indvars.iv167, -1
  %cmp9791 = icmp samesign ugt i64 %indvars.iv167, 2
  br i1 %cmp9791, label %for.body98, label %while.cond.loopexit

for.body98:                                       ; preds = %for.end92, %for.body98
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %for.body98 ], [ 1, %for.end92 ]
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  %arrayidx101 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next141
  %47 = load i32, ptr %arrayidx101, align 16, !tbaa !5
  %arrayidx104 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv140
  store i32 %47, ptr %arrayidx104, align 16, !tbaa !5
  %exitcond146.not = icmp eq i64 %indvars.iv.next141, %indvars.iv165
  br i1 %exitcond146.not, label %for.cond127.preheader.us.preheader, label %for.body98, !llvm.loop !26

for.cond127.preheader.us.preheader:               ; preds = %for.body98
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %scevgep, ptr nonnull align 8 %scevgep147, i64 %14, i1 false), !tbaa !5
  %min.iters.check = icmp ult i64 %12, 4
  %n.vec = and i64 %12, -4
  %48 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %12, %n.vec
  br label %for.cond127.preheader.us

for.cond127.preheader.us:                         ; preds = %for.cond127.preheader.us.preheader, %for.cond127.for.inc144_crit_edge.us
  %indvars.iv160 = phi i64 [ 1, %for.cond127.preheader.us.preheader ], [ %indvars.iv.next161, %for.cond127.for.inc144_crit_edge.us ]
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1
  br i1 %min.iters.check, label %for.body130.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond127.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond127.preheader.us ]
  %offset.idx = or disjoint i64 %index, 1
  %49 = or disjoint i64 %index, 2
  %50 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next161, i64 %49
  %wide.load = load <4 x i32>, ptr %50, align 8, !tbaa !5
  %51 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv160, i64 %offset.idx
  store <4 x i32> %wide.load, ptr %51, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %52 = icmp eq i64 %index.next, %n.vec
  br i1 %52, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond127.for.inc144_crit_edge.us, label %for.body130.us.preheader

for.body130.us.preheader:                         ; preds = %for.cond127.preheader.us, %middle.block
  %indvars.iv155.ph = phi i64 [ 1, %for.cond127.preheader.us ], [ %48, %middle.block ]
  br label %for.body130.us

for.body130.us:                                   ; preds = %for.body130.us.preheader, %for.body130.us
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %for.body130.us ], [ %indvars.iv155.ph, %for.body130.us.preheader ]
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1
  %arrayidx136.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next161, i64 %indvars.iv.next156
  %53 = load i32, ptr %arrayidx136.us, align 4, !tbaa !5
  %arrayidx140.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv160, i64 %indvars.iv155
  store i32 %53, ptr %arrayidx140.us, align 4, !tbaa !5
  %exitcond159.not = icmp eq i64 %indvars.iv.next156, %indvars.iv165
  br i1 %exitcond159.not, label %for.cond127.for.inc144_crit_edge.us, label %for.body130.us, !llvm.loop !28

for.cond127.for.inc144_crit_edge.us:              ; preds = %for.body130.us, %middle.block
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %indvars.iv165
  br i1 %exitcond164.not, label %while.cond.loopexit, label %for.cond127.preheader.us, !llvm.loop !29

while.end:                                        ; preds = %while.cond.loopexit, %for.cond1.preheader, %while.cond.preheader
  %sum.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ 0, %for.cond1.preheader ], [ %add, %while.cond.loopexit ]
  %cmp148 = icmp eq i32 %k.0105, 1
  br i1 %cmp148, label %for.inc154, label %if.else

if.else:                                          ; preds = %while.end
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !30
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i
  %54 = load ptr, ptr %gep, align 8, !tbaa !32
  %tobool.not.i.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.else
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %54, i64 56
  %55 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !50
  %tobool.not.i1.i.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %54, i64 67
  %56 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !56
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %54)
  %vtable.i.i.i = load ptr, ptr %54, align 8, !tbaa !30
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %57 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %57(ptr noundef nonnull align 8 dereferenceable(570) %54, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %56, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %for.inc154

for.inc154:                                       ; preds = %while.end, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %_ZSt4cout.sink = phi ptr [ %call.i.i, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ @_ZSt4cout, %while.end ]
  %call150 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %_ZSt4cout.sink, i32 noundef %sum.0.lcssa)
  %inc155 = add nuw nsw i32 %k.0105, 1
  %58 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %k.0105, %58
  br i1 %cmp.not.not, label %for.cond1.preheader, label %for.end156, !llvm.loop !57

for.end156:                                       ; preds = %for.inc154, %entry
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11, !16, !17}
!28 = distinct !{!28, !10, !11, !16}
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
