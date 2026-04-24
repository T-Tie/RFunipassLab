; ModuleID = '<stdin>'
source_filename = "/tmp/tmp31o7t6tr.cpp"
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
  %b = alloca [110 x i32], align 16
  %num1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 48400, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 440, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num1) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %num1)
  %0 = load i32, ptr %num1, align 4, !tbaa !5
  %cmp136 = icmp sgt i32 %0, 0
  br i1 %cmp136, label %for.cond2.preheader.lr.ph, label %for.end187

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %add.ptr127 = getelementptr inbounds nuw i8, ptr %a, i64 444
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %0, %for.cond2.preheader.lr.ph ], [ %41, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %m.0137 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc186, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %cmp3105 = icmp sgt i32 %1, 0
  br i1 %cmp3105, label %for.cond5.preheader.us.preheader, label %while.end

for.cond5.preheader.us.preheader:                 ; preds = %for.cond2.preheader
  %wide.trip.count143 = zext nneg i32 %1 to i64
  br label %for.cond5.preheader.us

for.cond5.preheader.us:                           ; preds = %for.cond5.preheader.us.preheader, %for.cond5.for.inc12_crit_edge.us
  %indvars.iv140 = phi i64 [ 0, %for.cond5.preheader.us.preheader ], [ %indvars.iv.next141, %for.cond5.for.inc12_crit_edge.us ]
  %add.ptr.us = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv140
  br label %for.body7.us

for.body7.us:                                     ; preds = %for.cond5.preheader.us, %for.body7.us
  %indvars.iv = phi i64 [ 0, %for.cond5.preheader.us ], [ %indvars.iv.next, %for.body7.us ]
  %add.ptr10.us = getelementptr inbounds nuw i32, ptr %add.ptr.us, i64 %indvars.iv
  %call11.us = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr10.us)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count143
  br i1 %exitcond.not, label %for.cond5.for.inc12_crit_edge.us, label %for.body7.us, !llvm.loop !9

for.cond5.for.inc12_crit_edge.us:                 ; preds = %for.body7.us
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %while.cond.preheader, label %for.cond5.preheader.us, !llvm.loop !12

while.cond.preheader:                             ; preds = %for.cond5.for.inc12_crit_edge.us
  %cmp15132.not = icmp eq i32 %1, 1
  br i1 %cmp15132.not, label %while.end, label %for.cond16.preheader.preheader

for.cond16.preheader.preheader:                   ; preds = %while.cond.preheader
  %2 = add nsw i32 %1, -1
  %3 = zext nneg i32 %2 to i64
  %4 = zext nneg i32 %1 to i64
  br label %for.cond16.preheader

while.cond.loopexit:                              ; preds = %for.cond159.for.inc180_crit_edge.us
  %cmp15 = icmp sgt i64 %indvars.iv209, 2
  %indvars.iv.next208 = add nsw i64 %indvars.iv207, -1
  br i1 %cmp15, label %for.cond16.preheader, label %while.end, !llvm.loop !13

for.cond16.preheader:                             ; preds = %for.cond16.preheader.preheader, %while.cond.loopexit
  %indvars.iv209 = phi i64 [ %4, %for.cond16.preheader.preheader ], [ %indvars.iv.next210, %while.cond.loopexit ]
  %indvars.iv207 = phi i64 [ %3, %for.cond16.preheader.preheader ], [ %indvars.iv.next208, %while.cond.loopexit ]
  %sum.0133 = phi i32 [ 0, %for.cond16.preheader.preheader ], [ %add, %while.cond.loopexit ]
  %min.iters.check240 = icmp ult i64 %indvars.iv209, 4
  %n.vec243 = and i64 %indvars.iv209, -4
  %cmp.n250 = icmp eq i64 %indvars.iv209, %n.vec243
  br label %for.body18.us

for.body18.us:                                    ; preds = %for.cond21.for.inc42_crit_edge.us, %for.cond16.preheader
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %for.cond21.for.inc42_crit_edge.us ], [ 0, %for.cond16.preheader ]
  %add.ptr20.us = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv150
  %add.ptr25.us = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv150
  br i1 %min.iters.check240, label %for.body23.us.preheader, label %vector.body244

vector.body244:                                   ; preds = %for.body18.us, %vector.body244
  %index245 = phi i64 [ %index.next248, %vector.body244 ], [ 0, %for.body18.us ]
  %vec.phi246 = phi <4 x i32> [ %6, %vector.body244 ], [ splat (i32 10000), %for.body18.us ]
  %5 = getelementptr inbounds nuw i32, ptr %add.ptr25.us, i64 %index245
  %wide.load247 = load <4 x i32>, ptr %5, align 8, !tbaa !5
  %6 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load247, <4 x i32> %vec.phi246)
  %index.next248 = add nuw i64 %index245, 4
  %7 = icmp eq i64 %index.next248, %n.vec243
  br i1 %7, label %middle.block249, label %vector.body244, !llvm.loop !14

middle.block249:                                  ; preds = %vector.body244
  %8 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %6)
  br i1 %cmp.n250, label %for.cond21.for.inc42_crit_edge.us, label %for.body23.us.preheader

for.body23.us.preheader:                          ; preds = %for.body18.us, %middle.block249
  %indvars.iv145.ph = phi i64 [ 0, %for.body18.us ], [ %n.vec243, %middle.block249 ]
  %spec.store.select109.us.ph = phi i32 [ 10000, %for.body18.us ], [ %8, %middle.block249 ]
  br label %for.body23.us

for.body23.us:                                    ; preds = %for.body23.us.preheader, %for.body23.us
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %for.body23.us ], [ %indvars.iv145.ph, %for.body23.us.preheader ]
  %spec.store.select109.us = phi i32 [ %spec.store.select.us, %for.body23.us ], [ %spec.store.select109.us.ph, %for.body23.us.preheader ]
  %add.ptr28.us = getelementptr inbounds nuw i32, ptr %add.ptr25.us, i64 %indvars.iv145
  %9 = load i32, ptr %add.ptr28.us, align 4, !tbaa !5
  %spec.store.select.us = call i32 @llvm.smin.i32(i32 %9, i32 %spec.store.select109.us)
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %indvars.iv209
  br i1 %exitcond149.not, label %for.cond21.for.inc42_crit_edge.us, label %for.body23.us, !llvm.loop !17

for.cond21.for.inc42_crit_edge.us:                ; preds = %for.body23.us, %middle.block249
  %spec.store.select.us.lcssa = phi i32 [ %8, %middle.block249 ], [ %spec.store.select.us, %for.body23.us ]
  store i32 %spec.store.select.us.lcssa, ptr %add.ptr20.us, align 4
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %indvars.iv209
  br i1 %exitcond154.not, label %for.cond48.preheader.us.preheader, label %for.body18.us, !llvm.loop !18

for.cond48.preheader.us.preheader:                ; preds = %for.cond21.for.inc42_crit_edge.us
  %min.iters.check228 = icmp ult i64 %indvars.iv209, 4
  %n.vec231 = and i64 %indvars.iv209, -4
  %cmp.n237 = icmp eq i64 %indvars.iv209, %n.vec231
  br label %for.cond48.preheader.us

for.cond48.preheader.us:                          ; preds = %for.cond48.preheader.us.preheader, %for.cond48.for.inc66_crit_edge.us
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %for.cond48.for.inc66_crit_edge.us ], [ 0, %for.cond48.preheader.us.preheader ]
  %add.ptr52.us = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv160
  %add.ptr57.us = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv160
  %10 = load i32, ptr %add.ptr57.us, align 4, !tbaa !5
  br i1 %min.iters.check228, label %for.body50.us.preheader, label %vector.ph229

vector.ph229:                                     ; preds = %for.cond48.preheader.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %10, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph229
  %index233 = phi i64 [ 0, %vector.ph229 ], [ %index.next235, %vector.body232 ]
  %11 = getelementptr inbounds nuw i32, ptr %add.ptr52.us, i64 %index233
  %wide.load234 = load <4 x i32>, ptr %11, align 8, !tbaa !5
  %12 = sub nsw <4 x i32> %wide.load234, %broadcast.splat
  store <4 x i32> %12, ptr %11, align 8, !tbaa !5
  %index.next235 = add nuw i64 %index233, 4
  %13 = icmp eq i64 %index.next235, %n.vec231
  br i1 %13, label %middle.block236, label %vector.body232, !llvm.loop !19

middle.block236:                                  ; preds = %vector.body232
  br i1 %cmp.n237, label %for.cond48.for.inc66_crit_edge.us, label %for.body50.us.preheader

for.body50.us.preheader:                          ; preds = %for.cond48.preheader.us, %middle.block236
  %indvars.iv155.ph = phi i64 [ 0, %for.cond48.preheader.us ], [ %n.vec231, %middle.block236 ]
  br label %for.body50.us

for.body50.us:                                    ; preds = %for.body50.us.preheader, %for.body50.us
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %for.body50.us ], [ %indvars.iv155.ph, %for.body50.us.preheader ]
  %add.ptr55.us = getelementptr inbounds nuw i32, ptr %add.ptr52.us, i64 %indvars.iv155
  %14 = load i32, ptr %add.ptr55.us, align 4, !tbaa !5
  %sub.us = sub nsw i32 %14, %10
  store i32 %sub.us, ptr %add.ptr55.us, align 4, !tbaa !5
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1
  %exitcond159.not = icmp eq i64 %indvars.iv.next156, %indvars.iv209
  br i1 %exitcond159.not, label %for.cond48.for.inc66_crit_edge.us, label %for.body50.us, !llvm.loop !20

for.cond48.for.inc66_crit_edge.us:                ; preds = %for.body50.us, %middle.block236
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %indvars.iv209
  br i1 %exitcond164.not, label %for.body71.us.preheader, label %for.cond48.preheader.us, !llvm.loop !21

for.body71.us.preheader:                          ; preds = %for.cond48.for.inc66_crit_edge.us
  %min.iters.check217 = icmp ult i64 %indvars.iv209, 4
  %n.vec220 = and i64 %indvars.iv209, -4
  %cmp.n225 = icmp eq i64 %indvars.iv209, %n.vec220
  br label %for.body71.us

for.body71.us:                                    ; preds = %for.body71.us.preheader, %for.cond74.for.inc97_crit_edge.us
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %for.cond74.for.inc97_crit_edge.us ], [ 0, %for.body71.us.preheader ]
  %add.ptr73.us = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv170
  %invariant.gep.us = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv170
  br i1 %min.iters.check217, label %for.body76.us.preheader, label %vector.ph218

vector.ph218:                                     ; preds = %for.body71.us
  %invariant.gep = getelementptr i8, ptr %invariant.gep.us, i64 440
  %invariant.gep259 = getelementptr i8, ptr %invariant.gep.us, i64 880
  %invariant.gep261 = getelementptr i8, ptr %invariant.gep.us, i64 1320
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph218
  %index222 = phi i64 [ 0, %vector.ph218 ], [ %index.next223, %vector.body221 ]
  %vec.phi = phi <4 x i32> [ splat (i32 10000), %vector.ph218 ], [ %24, %vector.body221 ]
  %15 = getelementptr inbounds nuw [110 x i32], ptr %invariant.gep.us, i64 %index222
  %gep = getelementptr [110 x i32], ptr %invariant.gep, i64 %index222
  %gep260 = getelementptr [110 x i32], ptr %invariant.gep259, i64 %index222
  %gep262 = getelementptr [110 x i32], ptr %invariant.gep261, i64 %index222
  %16 = load i32, ptr %15, align 4, !tbaa !5
  %17 = load i32, ptr %gep, align 4, !tbaa !5
  %18 = load i32, ptr %gep260, align 4, !tbaa !5
  %19 = load i32, ptr %gep262, align 4, !tbaa !5
  %20 = insertelement <4 x i32> poison, i32 %16, i64 0
  %21 = insertelement <4 x i32> %20, i32 %17, i64 1
  %22 = insertelement <4 x i32> %21, i32 %18, i64 2
  %23 = insertelement <4 x i32> %22, i32 %19, i64 3
  %24 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %23, <4 x i32> %vec.phi)
  %index.next223 = add nuw i64 %index222, 4
  %25 = icmp eq i64 %index.next223, %n.vec220
  br i1 %25, label %middle.block224, label %vector.body221, !llvm.loop !22

middle.block224:                                  ; preds = %vector.body221
  %26 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %24)
  br i1 %cmp.n225, label %for.cond74.for.inc97_crit_edge.us, label %for.body76.us.preheader

for.body76.us.preheader:                          ; preds = %for.body71.us, %middle.block224
  %indvars.iv165.ph = phi i64 [ 0, %for.body71.us ], [ %n.vec220, %middle.block224 ]
  %spec.store.select102117.us.ph = phi i32 [ 10000, %for.body71.us ], [ %26, %middle.block224 ]
  br label %for.body76.us

for.body76.us:                                    ; preds = %for.body76.us.preheader, %for.body76.us
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %for.body76.us ], [ %indvars.iv165.ph, %for.body76.us.preheader ]
  %spec.store.select102117.us = phi i32 [ %spec.store.select102.us, %for.body76.us ], [ %spec.store.select102117.us.ph, %for.body76.us.preheader ]
  %gep.us = getelementptr inbounds nuw [110 x i32], ptr %invariant.gep.us, i64 %indvars.iv165
  %27 = load i32, ptr %gep.us, align 4, !tbaa !5
  %spec.store.select102.us = call i32 @llvm.smin.i32(i32 %27, i32 %spec.store.select102117.us)
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1
  %exitcond169.not = icmp eq i64 %indvars.iv.next166, %indvars.iv209
  br i1 %exitcond169.not, label %for.cond74.for.inc97_crit_edge.us, label %for.body76.us, !llvm.loop !23

for.cond74.for.inc97_crit_edge.us:                ; preds = %for.body76.us, %middle.block224
  %spec.store.select102.us.lcssa = phi i32 [ %26, %middle.block224 ], [ %spec.store.select102.us, %for.body76.us ]
  store i32 %spec.store.select102.us.lcssa, ptr %add.ptr73.us, align 4
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1
  %exitcond174.not = icmp eq i64 %indvars.iv.next171, %indvars.iv209
  br i1 %exitcond174.not, label %for.cond103.preheader.us.preheader, label %for.body71.us, !llvm.loop !24

for.cond103.preheader.us.preheader:               ; preds = %for.cond74.for.inc97_crit_edge.us
  %min.iters.check = icmp ult i64 %indvars.iv209, 4
  %n.vec = and i64 %indvars.iv209, -4
  %cmp.n = icmp eq i64 %indvars.iv209, %n.vec
  br label %for.cond103.preheader.us

for.cond103.preheader.us:                         ; preds = %for.cond103.preheader.us.preheader, %for.cond103.for.inc122_crit_edge.us
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %for.cond103.for.inc122_crit_edge.us ], [ 0, %for.cond103.preheader.us.preheader ]
  %add.ptr107.us = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv180
  br i1 %min.iters.check, label %for.body105.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond103.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond103.preheader.us ]
  %28 = getelementptr inbounds nuw i32, ptr %add.ptr107.us, i64 %index
  %wide.load = load <4 x i32>, ptr %28, align 8, !tbaa !5
  %29 = getelementptr inbounds nuw i32, ptr %b, i64 %index
  %wide.load215 = load <4 x i32>, ptr %29, align 16, !tbaa !5
  %30 = sub nsw <4 x i32> %wide.load, %wide.load215
  store <4 x i32> %30, ptr %28, align 8, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %31 = icmp eq i64 %index.next, %n.vec
  br i1 %31, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond103.for.inc122_crit_edge.us, label %for.body105.us.preheader

for.body105.us.preheader:                         ; preds = %for.cond103.preheader.us, %middle.block
  %indvars.iv175.ph = phi i64 [ 0, %for.cond103.preheader.us ], [ %n.vec, %middle.block ]
  br label %for.body105.us

for.body105.us:                                   ; preds = %for.body105.us.preheader, %for.body105.us
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %for.body105.us ], [ %indvars.iv175.ph, %for.body105.us.preheader ]
  %add.ptr110.us = getelementptr inbounds nuw i32, ptr %add.ptr107.us, i64 %indvars.iv175
  %32 = load i32, ptr %add.ptr110.us, align 4, !tbaa !5
  %add.ptr112.us = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv175
  %33 = load i32, ptr %add.ptr112.us, align 4, !tbaa !5
  %sub113.us = sub nsw i32 %32, %33
  store i32 %sub113.us, ptr %add.ptr110.us, align 4, !tbaa !5
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1
  %exitcond179.not = icmp eq i64 %indvars.iv.next176, %indvars.iv209
  br i1 %exitcond179.not, label %for.cond103.for.inc122_crit_edge.us, label %for.body105.us, !llvm.loop !26

for.cond103.for.inc122_crit_edge.us:              ; preds = %for.body105.us, %middle.block
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, %indvars.iv209
  br i1 %exitcond184.not, label %for.cond131.preheader.us.preheader, label %for.cond103.preheader.us, !llvm.loop !27

for.cond131.preheader.us.preheader:               ; preds = %for.cond103.for.inc122_crit_edge.us
  %34 = load i32, ptr %add.ptr127, align 4, !tbaa !5
  %add = add nsw i32 %34, %sum.0133
  br label %for.cond131.preheader.us

for.cond131.preheader.us:                         ; preds = %for.cond131.preheader.us.preheader, %for.cond131.for.inc152_crit_edge.us
  %indvars.iv192 = phi i64 [ 0, %for.cond131.preheader.us.preheader ], [ %indvars.iv.next193, %for.cond131.for.inc152_crit_edge.us ]
  %add.ptr138.us = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv192
  br label %for.body134.us

for.body134.us:                                   ; preds = %for.cond131.preheader.us, %for.inc149.us
  %indvars.iv185 = phi i64 [ 0, %for.cond131.preheader.us ], [ %indvars.iv.next186, %for.inc149.us ]
  %cmp135.not.us = icmp eq i64 %indvars.iv185, 0
  br i1 %cmp135.not.us, label %for.inc149.us, label %if.then136.us

if.then136.us:                                    ; preds = %for.body134.us
  %add.ptr141.us = getelementptr inbounds nuw i32, ptr %add.ptr138.us, i64 %indvars.iv185
  %add.ptr142.us = getelementptr inbounds nuw i8, ptr %add.ptr141.us, i64 4
  %35 = load i32, ptr %add.ptr142.us, align 4, !tbaa !5
  store i32 %35, ptr %add.ptr141.us, align 4, !tbaa !5
  br label %for.inc149.us

for.inc149.us:                                    ; preds = %if.then136.us, %for.body134.us
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1
  %exitcond191.not = icmp eq i64 %indvars.iv.next186, %indvars.iv207
  br i1 %exitcond191.not, label %for.cond131.for.inc152_crit_edge.us, label %for.body134.us, !llvm.loop !28

for.cond131.for.inc152_crit_edge.us:              ; preds = %for.inc149.us
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1
  %exitcond196.not = icmp eq i64 %indvars.iv.next193, %indvars.iv209
  br i1 %exitcond196.not, label %for.cond159.preheader.us.preheader, label %for.cond131.preheader.us, !llvm.loop !29

for.cond159.preheader.us.preheader:               ; preds = %for.cond131.for.inc152_crit_edge.us
  %indvars.iv.next210 = add nsw i64 %indvars.iv209, -1
  br label %for.cond159.preheader.us

for.cond159.preheader.us:                         ; preds = %for.cond159.preheader.us.preheader, %for.cond159.for.inc180_crit_edge.us
  %indvars.iv202 = phi i64 [ 0, %for.cond159.preheader.us.preheader ], [ %indvars.iv.next203, %for.cond159.for.inc180_crit_edge.us ]
  br label %for.body162.us

for.body162.us:                                   ; preds = %for.cond159.preheader.us, %for.inc177.us
  %indvars.iv197 = phi i64 [ 0, %for.cond159.preheader.us ], [ %indvars.iv.next198, %for.inc177.us ]
  %cmp163.not.us = icmp eq i64 %indvars.iv197, 0
  br i1 %cmp163.not.us, label %for.inc177.us, label %if.then164.us

if.then164.us:                                    ; preds = %for.body162.us
  %add.ptr166.us = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv197
  %add.ptr167.us = getelementptr inbounds nuw i8, ptr %add.ptr166.us, i64 440
  %add.ptr170.us = getelementptr inbounds nuw i32, ptr %add.ptr167.us, i64 %indvars.iv202
  %36 = load i32, ptr %add.ptr170.us, align 4, !tbaa !5
  %add.ptr175.us = getelementptr inbounds nuw i32, ptr %add.ptr166.us, i64 %indvars.iv202
  store i32 %36, ptr %add.ptr175.us, align 4, !tbaa !5
  br label %for.inc177.us

for.inc177.us:                                    ; preds = %if.then164.us, %for.body162.us
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1
  %exitcond201.not = icmp eq i64 %indvars.iv.next198, %indvars.iv207
  br i1 %exitcond201.not, label %for.cond159.for.inc180_crit_edge.us, label %for.body162.us, !llvm.loop !30

for.cond159.for.inc180_crit_edge.us:              ; preds = %for.inc177.us
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1
  %exitcond206.not = icmp eq i64 %indvars.iv.next203, %indvars.iv207
  br i1 %exitcond206.not, label %while.cond.loopexit, label %for.cond159.preheader.us, !llvm.loop !31

while.end:                                        ; preds = %while.cond.loopexit, %for.cond2.preheader, %while.cond.preheader
  %sum.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ 0, %for.cond2.preheader ], [ %add, %while.cond.loopexit ]
  %call183 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0.lcssa)
  %vtable.i = load ptr, ptr %call183, align 8, !tbaa !32
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call183, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %37 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !34
  %tobool.not.i.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %while.end
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %while.end
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %37, i64 56
  %38 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !52
  %tobool.not.i1.i.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %37, i64 67
  %39 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !58
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %37)
  %vtable.i.i.i = load ptr, ptr %37, align 8, !tbaa !32
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %40 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %40(ptr noundef nonnull align 8 dereferenceable(570) %37, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %39, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call183, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc186 = add nuw nsw i32 %m.0137, 1
  %41 = load i32, ptr %num1, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc186, %41
  br i1 %cmp, label %for.cond2.preheader, label %for.end187, !llvm.loop !59

for.end187:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  %call188 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call189 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call190 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call191 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num1) #5
  call void @llvm.lifetime.end.p0(i64 440, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 48400, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !10, !11, !15}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11, !15, !16}
!20 = distinct !{!20, !10, !11, !15}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11, !15, !16}
!23 = distinct !{!23, !10, !11, !15}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11, !15, !16}
!26 = distinct !{!26, !10, !11, !15}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10, !11}
!30 = distinct !{!30, !10, !11}
!31 = distinct !{!31, !10, !11}
!32 = !{!33, !33, i64 0}
!33 = !{!"vtable pointer", !8, i64 0}
!34 = !{!35, !49, i64 240}
!35 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !36, i64 0, !46, i64 216, !7, i64 224, !47, i64 225, !48, i64 232, !49, i64 240, !50, i64 248, !51, i64 256}
!36 = !{!"_ZTSSt8ios_base", !37, i64 8, !37, i64 16, !38, i64 24, !39, i64 28, !39, i64 32, !40, i64 40, !42, i64 48, !7, i64 64, !6, i64 192, !43, i64 200, !44, i64 208}
!37 = !{!"long", !7, i64 0}
!38 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!39 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!40 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !41, i64 0}
!41 = !{!"any pointer", !7, i64 0}
!42 = !{!"_ZTSNSt8ios_base6_WordsE", !41, i64 0, !37, i64 8}
!43 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !41, i64 0}
!44 = !{!"_ZTSSt6locale", !45, i64 0}
!45 = !{!"p1 _ZTSNSt6locale5_ImplE", !41, i64 0}
!46 = !{!"p1 _ZTSSo", !41, i64 0}
!47 = !{!"bool", !7, i64 0}
!48 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !41, i64 0}
!49 = !{!"p1 _ZTSSt5ctypeIcE", !41, i64 0}
!50 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !41, i64 0}
!51 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !41, i64 0}
!52 = !{!53, !7, i64 56}
!53 = !{!"_ZTSSt5ctypeIcE", !54, i64 0, !55, i64 16, !47, i64 24, !56, i64 32, !56, i64 40, !57, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!54 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!55 = !{!"p1 _ZTS15__locale_struct", !41, i64 0}
!56 = !{!"p1 int", !41, i64 0}
!57 = !{!"p1 short", !41, i64 0}
!58 = !{!7, !7, i64 0}
!59 = distinct !{!59, !10, !11}
