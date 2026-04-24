; ModuleID = '<stdin>'
source_filename = "/tmp/tmpkzlcz578.cpp"
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
  %nq = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nq) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %nq)
  %0 = load i32, ptr %nq, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  %3 = mul nuw i64 %1, %1
  %4 = mul nuw i64 %3, %1
  %vla1 = alloca i32, i64 %4, align 16
  %cmp100 = icmp sgt i32 %0, 0
  br i1 %cmp100, label %for.cond2.preheader.us, label %for.end185

for.cond2.preheader.us:                           ; preds = %entry, %for.cond2.for.inc16_crit_edge.split.us.us
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %for.cond2.for.inc16_crit_edge.split.us.us ], [ 0, %entry ]
  %5 = mul nuw nsw i64 %3, %indvars.iv155
  %arrayidx.us = getelementptr inbounds nuw i32, ptr %vla1, i64 %5
  br label %for.cond5.preheader.us.us

for.cond5.preheader.us.us:                        ; preds = %for.cond5.for.inc13_crit_edge.us.us, %for.cond2.preheader.us
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %for.cond5.for.inc13_crit_edge.us.us ], [ 0, %for.cond2.preheader.us ]
  %6 = mul nuw nsw i64 %indvars.iv150, %1
  %arrayidx9.us.us = getelementptr inbounds nuw i32, ptr %arrayidx.us, i64 %6
  br label %for.body7.us.us

for.body7.us.us:                                  ; preds = %for.body7.us.us, %for.cond5.preheader.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body7.us.us ], [ 0, %for.cond5.preheader.us.us ]
  %arrayidx11.us.us = getelementptr inbounds nuw i32, ptr %arrayidx9.us.us, i64 %indvars.iv
  %call12.us.us = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx11.us.us)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %1
  br i1 %exitcond.not, label %for.cond5.for.inc13_crit_edge.us.us, label %for.body7.us.us, !llvm.loop !9

for.cond5.for.inc13_crit_edge.us.us:              ; preds = %for.body7.us.us
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %1
  br i1 %exitcond154.not, label %for.cond2.for.inc16_crit_edge.split.us.us, label %for.cond5.preheader.us.us, !llvm.loop !12

for.cond2.for.inc16_crit_edge.split.us.us:        ; preds = %for.cond5.for.inc13_crit_edge.us.us
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1
  %exitcond159.not = icmp eq i64 %indvars.iv.next156, %1
  br i1 %exitcond159.not, label %for.body21.lr.ph, label %for.cond2.preheader.us, !llvm.loop !13

for.body21.lr.ph:                                 ; preds = %for.cond2.for.inc16_crit_edge.split.us.us
  %cmp25128.not = icmp eq i32 %0, 1
  br i1 %cmp25128.not, label %for.cond176.preheader.thread231, label %for.body21.us.preheader

for.body21.us.preheader:                          ; preds = %for.body21.lr.ph
  %sub149 = add nsw i32 %0, -1
  %wide.trip.count207 = zext i32 %sub149 to i64
  %min.iters.check233 = icmp ult i32 %0, 4
  %n.vec236 = and i64 %1, 2147483644
  %cmp.n242 = icmp eq i64 %n.vec236, %1
  br label %for.body21.us

for.cond176.preheader.thread231:                  ; preds = %for.body21.lr.ph
  store i32 0, ptr %vla, align 16
  br label %for.body178.preheader

for.body21.us:                                    ; preds = %for.body21.us.preheader, %for.cond24.for.inc173_crit_edge.us
  %indvars.iv217 = phi i64 [ 0, %for.body21.us.preheader ], [ %indvars.iv.next218, %for.cond24.for.inc173_crit_edge.us ]
  %arrayidx23.us = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv217
  %7 = mul nuw nsw i64 %3, %indvars.iv217
  %arrayidx31.us = getelementptr inbounds nuw i32, ptr %vla1, i64 %7
  %arrayidx116.us = getelementptr inbounds nuw i32, ptr %arrayidx31.us, i64 %1
  %arrayidx117.us = getelementptr inbounds nuw i8, ptr %arrayidx116.us, i64 4
  br label %for.cond27.preheader.us

for.end113.us:                                    ; preds = %for.cond98.for.inc111_crit_edge.us
  %8 = load i32, ptr %arrayidx117.us, align 4, !tbaa !5
  %add.us = add nsw i32 %21, %8
  %cmp121120.us = icmp sgt i64 %indvars.iv214, 2
  br i1 %cmp121120.us, label %for.cond123.preheader.us.us, label %for.cond24.for.inc173_crit_edge.us

for.inc171.us:                                    ; preds = %for.cond148.for.inc168_crit_edge.us.us
  %indvars.iv.next215 = add nsw i64 %indvars.iv214, -1
  %indvar.next = add i64 %indvar, 1
  br label %for.cond27.preheader.us, !llvm.loop !14

for.body79.us.preheader:                          ; preds = %for.cond54.for.inc66_crit_edge.us, %for.cond98.for.inc111_crit_edge.us
  %indvars.iv185 = phi i64 [ %indvars.iv.next186, %for.cond98.for.inc111_crit_edge.us ], [ 0, %for.cond54.for.inc66_crit_edge.us ]
  %arrayidx76.us = getelementptr inbounds nuw i32, ptr %arrayidx31.us, i64 %indvars.iv185
  %9 = load i32, ptr %arrayidx76.us, align 4, !tbaa !5
  br label %for.body79.us

for.body100.us:                                   ; preds = %for.body79.us, %for.body100.us
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %for.body100.us ], [ 0, %for.body79.us ]
  %10 = mul nuw nsw i64 %indvars.iv180, %1
  %gep113.us = getelementptr inbounds nuw i32, ptr %arrayidx76.us, i64 %10
  %11 = load i32, ptr %gep113.us, align 4, !tbaa !5
  %sub107.us = sub nsw i32 %11, %spec.select94.us
  store i32 %sub107.us, ptr %gep113.us, align 4, !tbaa !5
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, %indvars.iv214
  br i1 %exitcond184.not, label %for.cond98.for.inc111_crit_edge.us, label %for.body100.us, !llvm.loop !15

for.body79.us:                                    ; preds = %for.body79.us.preheader, %for.body79.us
  %indvars.iv175 = phi i64 [ 1, %for.body79.us.preheader ], [ %indvars.iv.next176, %for.body79.us ]
  %min.2109.us = phi i32 [ %9, %for.body79.us.preheader ], [ %spec.select94.us, %for.body79.us ]
  %12 = mul nuw nsw i64 %indvars.iv175, %1
  %gep.us = getelementptr inbounds nuw i32, ptr %arrayidx76.us, i64 %12
  %13 = load i32, ptr %gep.us, align 4, !tbaa !5
  %spec.select94.us = call i32 @llvm.smin.i32(i32 %13, i32 %min.2109.us)
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1
  %exitcond179.not = icmp eq i64 %indvars.iv.next176, %indvars.iv214
  br i1 %exitcond179.not, label %for.body100.us, label %for.body79.us, !llvm.loop !16

for.body29.us:                                    ; preds = %for.cond27.preheader.us, %for.cond54.for.inc66_crit_edge.us
  %indvars.iv170 = phi i64 [ 0, %for.cond27.preheader.us ], [ %indvars.iv.next171, %for.cond54.for.inc66_crit_edge.us ]
  %14 = mul nuw nsw i64 %indvars.iv170, %1
  %arrayidx33.us = getelementptr inbounds nuw i32, ptr %arrayidx31.us, i64 %14
  %15 = load i32, ptr %arrayidx33.us, align 4, !tbaa !5
  br i1 %min.iters.check257, label %for.body37.us.preheader, label %vector.ph258

vector.ph258:                                     ; preds = %for.body29.us
  %broadcast.splatinsert261 = insertelement <4 x i32> poison, i32 %15, i64 0
  %broadcast.splat262 = shufflevector <4 x i32> %broadcast.splatinsert261, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.gep = getelementptr i8, ptr %arrayidx33.us, i64 4
  br label %vector.body263

vector.body263:                                   ; preds = %vector.body263, %vector.ph258
  %index264 = phi i64 [ 0, %vector.ph258 ], [ %index.next266, %vector.body263 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat262, %vector.ph258 ], [ %16, %vector.body263 ]
  %gep = getelementptr i32, ptr %invariant.gep, i64 %index264
  %wide.load265 = load <4 x i32>, ptr %gep, align 4, !tbaa !5
  %16 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load265, <4 x i32> %vec.phi)
  %index.next266 = add nuw i64 %index264, 4
  %17 = icmp eq i64 %index.next266, %n.vec260
  br i1 %17, label %middle.block267, label %vector.body263, !llvm.loop !17

middle.block267:                                  ; preds = %vector.body263
  %18 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %16)
  br i1 %cmp.n268, label %for.cond35.for.cond54.preheader_crit_edge.us, label %for.body37.us.preheader

for.body37.us.preheader:                          ; preds = %for.body29.us, %middle.block267
  %indvars.iv160.ph = phi i64 [ 1, %for.body29.us ], [ %24, %middle.block267 ]
  %min.0103.us.ph = phi i32 [ %15, %for.body29.us ], [ %18, %middle.block267 ]
  br label %for.body37.us

for.body56.us:                                    ; preds = %for.body56.us.preheader, %for.body56.us
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %for.body56.us ], [ %indvars.iv165.ph, %for.body56.us.preheader ]
  %arrayidx62.us = getelementptr inbounds nuw i32, ptr %arrayidx33.us, i64 %indvars.iv165
  %19 = load i32, ptr %arrayidx62.us, align 4, !tbaa !5
  %sub.us = sub nsw i32 %19, %spec.select.us.lcssa
  store i32 %sub.us, ptr %arrayidx62.us, align 4, !tbaa !5
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1
  %exitcond169.not = icmp eq i64 %indvars.iv.next166, %indvars.iv214
  br i1 %exitcond169.not, label %for.cond54.for.inc66_crit_edge.us, label %for.body56.us, !llvm.loop !20

for.body37.us:                                    ; preds = %for.body37.us.preheader, %for.body37.us
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %for.body37.us ], [ %indvars.iv160.ph, %for.body37.us.preheader ]
  %min.0103.us = phi i32 [ %spec.select.us, %for.body37.us ], [ %min.0103.us.ph, %for.body37.us.preheader ]
  %arrayidx43.us = getelementptr inbounds nuw i32, ptr %arrayidx33.us, i64 %indvars.iv160
  %20 = load i32, ptr %arrayidx43.us, align 4, !tbaa !5
  %spec.select.us = call i32 @llvm.smin.i32(i32 %20, i32 %min.0103.us)
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %indvars.iv214
  br i1 %exitcond164.not, label %for.cond35.for.cond54.preheader_crit_edge.us, label %for.body37.us, !llvm.loop !21

for.cond27.preheader.us:                          ; preds = %for.inc171.us, %for.body21.us
  %indvar = phi i64 [ %indvar.next, %for.inc171.us ], [ 0, %for.body21.us ]
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %for.inc171.us ], [ %1, %for.body21.us ]
  %21 = phi i32 [ %add.us, %for.inc171.us ], [ 0, %for.body21.us ]
  %22 = xor i64 %indvar, -1
  %23 = add i64 %22, %1
  %min.iters.check257 = icmp ult i64 %23, 4
  %n.vec260 = and i64 %23, -4
  %24 = or disjoint i64 %n.vec260, 1
  %cmp.n268 = icmp eq i64 %23, %n.vec260
  %min.iters.check245 = icmp ult i64 %indvars.iv214, 4
  %n.vec248 = and i64 %indvars.iv214, -4
  %cmp.n254 = icmp eq i64 %indvars.iv214, %n.vec248
  br label %for.body29.us

for.cond35.for.cond54.preheader_crit_edge.us:     ; preds = %for.body37.us, %middle.block267
  %spec.select.us.lcssa = phi i32 [ %18, %middle.block267 ], [ %spec.select.us, %for.body37.us ]
  br i1 %min.iters.check245, label %for.body56.us.preheader, label %vector.ph246

vector.ph246:                                     ; preds = %for.cond35.for.cond54.preheader_crit_edge.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.select.us.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body249

vector.body249:                                   ; preds = %vector.body249, %vector.ph246
  %index250 = phi i64 [ 0, %vector.ph246 ], [ %index.next252, %vector.body249 ]
  %25 = getelementptr inbounds nuw i32, ptr %arrayidx33.us, i64 %index250
  %wide.load251 = load <4 x i32>, ptr %25, align 4, !tbaa !5
  %26 = sub nsw <4 x i32> %wide.load251, %broadcast.splat
  store <4 x i32> %26, ptr %25, align 4, !tbaa !5
  %index.next252 = add nuw i64 %index250, 4
  %27 = icmp eq i64 %index.next252, %n.vec248
  br i1 %27, label %middle.block253, label %vector.body249, !llvm.loop !22

middle.block253:                                  ; preds = %vector.body249
  br i1 %cmp.n254, label %for.cond54.for.inc66_crit_edge.us, label %for.body56.us.preheader

for.body56.us.preheader:                          ; preds = %for.cond35.for.cond54.preheader_crit_edge.us, %middle.block253
  %indvars.iv165.ph = phi i64 [ 0, %for.cond35.for.cond54.preheader_crit_edge.us ], [ %n.vec248, %middle.block253 ]
  br label %for.body56.us

for.cond54.for.inc66_crit_edge.us:                ; preds = %for.body56.us, %middle.block253
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1
  %exitcond174.not = icmp eq i64 %indvars.iv.next171, %indvars.iv214
  br i1 %exitcond174.not, label %for.body79.us.preheader, label %for.body29.us, !llvm.loop !23

for.cond98.for.inc111_crit_edge.us:               ; preds = %for.body100.us
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1
  %exitcond189.not = icmp eq i64 %indvars.iv.next186, %indvars.iv214
  br i1 %exitcond189.not, label %for.end113.us, label %for.body79.us.preheader, !llvm.loop !24

for.cond123.preheader.us.us:                      ; preds = %for.end113.us, %for.cond123.for.inc142_crit_edge.us.us
  %indvars.iv198 = phi i64 [ %indvars.iv.next199, %for.cond123.for.inc142_crit_edge.us.us ], [ 2, %for.end113.us ]
  %28 = mul nuw nsw i64 %indvars.iv198, %1
  %arrayidx129.us.us = getelementptr inbounds nuw i32, ptr %arrayidx31.us, i64 %28
  %29 = add nsw i64 %indvars.iv198, -1
  %30 = mul nuw nsw i64 %29, %1
  %arrayidx136.us.us = getelementptr inbounds i32, ptr %arrayidx31.us, i64 %30
  br i1 %min.iters.check233, label %for.body125.us.us.preheader, label %vector.body237

vector.body237:                                   ; preds = %for.cond123.preheader.us.us, %vector.body237
  %index238 = phi i64 [ %index.next240, %vector.body237 ], [ 0, %for.cond123.preheader.us.us ]
  %31 = getelementptr inbounds nuw i32, ptr %arrayidx129.us.us, i64 %index238
  %wide.load239 = load <4 x i32>, ptr %31, align 4, !tbaa !5
  %32 = getelementptr inbounds nuw i32, ptr %arrayidx136.us.us, i64 %index238
  store <4 x i32> %wide.load239, ptr %32, align 4, !tbaa !5
  %index.next240 = add nuw i64 %index238, 4
  %33 = icmp eq i64 %index.next240, %n.vec236
  br i1 %33, label %middle.block241, label %vector.body237, !llvm.loop !25

middle.block241:                                  ; preds = %vector.body237
  br i1 %cmp.n242, label %for.cond123.for.inc142_crit_edge.us.us, label %for.body125.us.us.preheader

for.body125.us.us.preheader:                      ; preds = %for.cond123.preheader.us.us, %middle.block241
  %indvars.iv193.ph = phi i64 [ 0, %for.cond123.preheader.us.us ], [ %n.vec236, %middle.block241 ]
  br label %for.body125.us.us

for.body125.us.us:                                ; preds = %for.body125.us.us.preheader, %for.body125.us.us
  %indvars.iv193 = phi i64 [ %indvars.iv.next194, %for.body125.us.us ], [ %indvars.iv193.ph, %for.body125.us.us.preheader ]
  %arrayidx131.us.us = getelementptr inbounds nuw i32, ptr %arrayidx129.us.us, i64 %indvars.iv193
  %34 = load i32, ptr %arrayidx131.us.us, align 4, !tbaa !5
  %arrayidx138.us.us = getelementptr inbounds nuw i32, ptr %arrayidx136.us.us, i64 %indvars.iv193
  store i32 %34, ptr %arrayidx138.us.us, align 4, !tbaa !5
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1
  %exitcond197.not = icmp eq i64 %indvars.iv.next194, %1
  br i1 %exitcond197.not, label %for.cond123.for.inc142_crit_edge.us.us, label %for.body125.us.us, !llvm.loop !26

for.cond123.for.inc142_crit_edge.us.us:           ; preds = %for.body125.us.us, %middle.block241
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1
  %exitcond203.not = icmp eq i64 %indvars.iv.next199, %indvars.iv214
  br i1 %exitcond203.not, label %for.cond148.preheader.us.us, label %for.cond123.preheader.us.us, !llvm.loop !27

for.cond148.preheader.us.us:                      ; preds = %for.cond123.for.inc142_crit_edge.us.us, %for.cond148.for.inc168_crit_edge.us.us
  %indvars.iv209 = phi i64 [ %indvars.iv.next210, %for.cond148.for.inc168_crit_edge.us.us ], [ 2, %for.cond123.for.inc142_crit_edge.us.us ]
  %invariant.gep124.us.us = getelementptr inbounds nuw i32, ptr %arrayidx31.us, i64 %indvars.iv209
  br label %for.body151.us.us

for.body151.us.us:                                ; preds = %for.cond148.preheader.us.us, %for.body151.us.us
  %indvars.iv204 = phi i64 [ %indvars.iv.next205, %for.body151.us.us ], [ 0, %for.cond148.preheader.us.us ]
  %35 = mul nuw nsw i64 %indvars.iv204, %1
  %gep125.us.us = getelementptr inbounds nuw i32, ptr %invariant.gep124.us.us, i64 %35
  %36 = load i32, ptr %gep125.us.us, align 4, !tbaa !5
  %arrayidx164.us.us = getelementptr i8, ptr %gep125.us.us, i64 -4
  store i32 %36, ptr %arrayidx164.us.us, align 4, !tbaa !5
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1
  %exitcond208.not = icmp eq i64 %indvars.iv.next205, %wide.trip.count207
  br i1 %exitcond208.not, label %for.cond148.for.inc168_crit_edge.us.us, label %for.body151.us.us, !llvm.loop !28

for.cond148.for.inc168_crit_edge.us.us:           ; preds = %for.body151.us.us
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1
  %exitcond213.not = icmp eq i64 %indvars.iv.next210, %indvars.iv214
  br i1 %exitcond213.not, label %for.inc171.us, label %for.cond148.preheader.us.us, !llvm.loop !29

for.cond24.for.inc173_crit_edge.us:               ; preds = %for.end113.us
  store i32 %add.us, ptr %arrayidx23.us, align 4, !tbaa !5
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1
  %exitcond221.not = icmp eq i64 %indvars.iv.next218, %1
  br i1 %exitcond221.not, label %for.body178.preheader, label %for.body21.us, !llvm.loop !30

for.body178.preheader:                            ; preds = %for.cond24.for.inc173_crit_edge.us, %for.cond176.preheader.thread231
  br label %for.body178

for.body178:                                      ; preds = %for.body178.preheader, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %indvars.iv225 = phi i64 [ %indvars.iv.next226, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 0, %for.body178.preheader ]
  %arrayidx180 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv225
  %37 = load i32, ptr %arrayidx180, align 4, !tbaa !5
  %call181 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %37)
  %vtable.i = load ptr, ptr %call181, align 8, !tbaa !31
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call181, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %38 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !33
  %tobool.not.i.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body178
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.body178
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %38, i64 56
  %39 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !51
  %tobool.not.i1.i.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %38, i64 67
  %40 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !57
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %38)
  %vtable.i.i.i = load ptr, ptr %38, align 8, !tbaa !31
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %41 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %41(ptr noundef nonnull align 8 dereferenceable(570) %38, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %40, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call181, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1
  %exitcond229.not = icmp eq i64 %indvars.iv.next226, %1
  br i1 %exitcond229.not, label %for.end185, label %for.body178, !llvm.loop !58

for.end185:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nq) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

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
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11, !18, !19}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !10, !11, !18}
!21 = distinct !{!21, !10, !11, !18}
!22 = distinct !{!22, !10, !11, !18, !19}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11, !18, !19}
!26 = distinct !{!26, !10, !11, !18}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11, !18}
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
