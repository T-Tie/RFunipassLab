; ModuleID = '<stdin>'
source_filename = "/tmp/tmphmeehz_2.cpp"
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %tobool.not104 = icmp eq i32 %0, 0
  br i1 %tobool.not104, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %n1.0105 = phi i32 [ %dec141, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %0, %entry ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = zext i32 %1 to i64
  %3 = call ptr @llvm.stacksave.p0()
  %4 = mul nuw i64 %2, %2
  %vla = alloca i32, i64 %4, align 16
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp71 = icmp sgt i32 %5, 0
  br i1 %cmp71, label %for.cond1.preheader, label %for.end138

for.cond10.preheader:                             ; preds = %for.inc7
  %cmp11100 = icmp sgt i32 %11, 1
  br i1 %cmp11100, label %for.cond13.preheader.lr.ph, label %for.end138

for.cond13.preheader.lr.ph:                       ; preds = %for.cond10.preheader
  %arrayidx93 = getelementptr inbounds nuw i32, ptr %vla, i64 %2
  %arrayidx94 = getelementptr inbounds nuw i8, ptr %arrayidx93, i64 4
  %6 = zext nneg i32 %11 to i64
  %ident.check199.not = icmp eq i32 %1, 1
  %ident.check185.not = icmp eq i32 %1, 1
  %ident.check.not = icmp eq i32 %1, 1
  br label %for.cond13.preheader

for.cond1.preheader:                              ; preds = %while.body, %for.inc7
  %7 = phi i32 [ %11, %for.inc7 ], [ %5, %while.body ]
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %for.inc7 ], [ 0, %while.body ]
  %cmp269 = icmp sgt i32 %7, 0
  br i1 %cmp269, label %for.body3.lr.ph, label %for.cond1.preheader.for.inc7_crit_edge

for.cond1.preheader.for.inc7_crit_edge:           ; preds = %for.cond1.preheader
  %.pre = sext i32 %7 to i64
  br label %for.inc7

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %8 = mul nuw nsw i64 %indvars.iv109, %2
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %8
  br label %for.body3

for.body3:                                        ; preds = %for.body3.lr.ph, %for.body3
  %indvars.iv = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next, %for.body3 ]
  %arrayidx5 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %10 = sext i32 %9 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %10
  br i1 %cmp2, label %for.body3, label %for.inc7, !llvm.loop !9

for.inc7:                                         ; preds = %for.body3, %for.cond1.preheader.for.inc7_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond1.preheader.for.inc7_crit_edge ], [ %10, %for.body3 ]
  %11 = phi i32 [ %7, %for.cond1.preheader.for.inc7_crit_edge ], [ %9, %for.body3 ]
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  %cmp = icmp slt i64 %indvars.iv.next110, %.pre-phi
  br i1 %cmp, label %for.cond1.preheader, label %for.cond10.preheader, !llvm.loop !12

for.cond13.preheader:                             ; preds = %for.inc137, %for.cond13.preheader.lr.ph
  %indvar = phi i64 [ %indvar.next, %for.inc137 ], [ 0, %for.cond13.preheader.lr.ph ]
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %for.inc137 ], [ %6, %for.cond13.preheader.lr.ph ]
  %sum.0102 = phi i32 [ %add, %for.inc137 ], [ 0, %for.cond13.preheader.lr.ph ]
  %12 = xor i64 %indvar, -1
  %13 = add i64 %12, %6
  %14 = xor i64 %indvar, -1
  %15 = add i64 %14, %6
  %min.iters.check229 = icmp ult i64 %13, 4
  %n.vec232 = and i64 %13, -4
  %16 = or disjoint i64 %n.vec232, 1
  %cmp.n242 = icmp eq i64 %13, %n.vec232
  %min.iters.check215 = icmp ult i64 %indvars.iv162, 4
  %n.vec218 = and i64 %indvars.iv162, -4
  %cmp.n226 = icmp eq i64 %indvars.iv162, %n.vec218
  br label %for.body15

for.body15:                                       ; preds = %for.cond13.preheader, %for.end47
  %indvars.iv120 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next121, %for.end47 ]
  %17 = mul nuw nsw i64 %indvars.iv120, %2
  %arrayidx17 = getelementptr inbounds nuw i32, ptr %vla, i64 %17
  %18 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  br i1 %min.iters.check229, label %for.body21.preheader, label %vector.ph230

vector.ph230:                                     ; preds = %for.body15
  %broadcast.splatinsert233 = insertelement <4 x i32> poison, i32 %18, i64 0
  %broadcast.splat234 = shufflevector <4 x i32> %broadcast.splatinsert233, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.gep = getelementptr i8, ptr %arrayidx17, i64 4
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph230
  %index236 = phi i64 [ 0, %vector.ph230 ], [ %index.next240, %vector.body235 ]
  %vec.phi237 = phi <4 x i32> [ %broadcast.splat234, %vector.ph230 ], [ %19, %vector.body235 ]
  %gep260 = getelementptr i32, ptr %invariant.gep, i64 %index236
  %wide.load239 = load <4 x i32>, ptr %gep260, align 4, !tbaa !5
  %19 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load239, <4 x i32> %vec.phi237)
  %index.next240 = add nuw i64 %index236, 4
  %20 = icmp eq i64 %index.next240, %n.vec232
  br i1 %20, label %middle.block241, label %vector.body235, !llvm.loop !14

middle.block241:                                  ; preds = %vector.body235
  %21 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %19)
  br i1 %cmp.n242, label %for.body36.lr.ph, label %for.body21.preheader

for.body21.preheader:                             ; preds = %for.body15, %middle.block241
  %indvars.iv112.ph = phi i64 [ 1, %for.body15 ], [ %16, %middle.block241 ]
  %min.075.ph = phi i32 [ %18, %for.body15 ], [ %21, %middle.block241 ]
  br label %for.body21

for.body36.lr.ph:                                 ; preds = %for.body21, %middle.block241
  %spec.select.lcssa = phi i32 [ %21, %middle.block241 ], [ %spec.select, %for.body21 ]
  br i1 %min.iters.check215, label %for.body36.preheader, label %vector.ph216

vector.ph216:                                     ; preds = %for.body36.lr.ph
  %broadcast.splatinsert219 = insertelement <4 x i32> poison, i32 %spec.select.lcssa, i64 0
  %broadcast.splat220 = shufflevector <4 x i32> %broadcast.splatinsert219, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph216
  %index222 = phi i64 [ 0, %vector.ph216 ], [ %index.next224, %vector.body221 ]
  %22 = getelementptr inbounds nuw i32, ptr %arrayidx17, i64 %index222
  %wide.load223 = load <4 x i32>, ptr %22, align 4, !tbaa !5
  %23 = sub nsw <4 x i32> %wide.load223, %broadcast.splat220
  store <4 x i32> %23, ptr %22, align 4, !tbaa !5
  %index.next224 = add nuw i64 %index222, 4
  %24 = icmp eq i64 %index.next224, %n.vec218
  br i1 %24, label %middle.block225, label %vector.body221, !llvm.loop !17

middle.block225:                                  ; preds = %vector.body221
  br i1 %cmp.n226, label %for.end47, label %for.body36.preheader

for.body36.preheader:                             ; preds = %for.body36.lr.ph, %middle.block225
  %indvars.iv115.ph = phi i64 [ 0, %for.body36.lr.ph ], [ %n.vec218, %middle.block225 ]
  br label %for.body36

for.body21:                                       ; preds = %for.body21.preheader, %for.body21
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %for.body21 ], [ %indvars.iv112.ph, %for.body21.preheader ]
  %min.075 = phi i32 [ %spec.select, %for.body21 ], [ %min.075.ph, %for.body21.preheader ]
  %arrayidx25 = getelementptr inbounds nuw i32, ptr %arrayidx17, i64 %indvars.iv112
  %25 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %25, i32 %min.075)
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next113, %indvars.iv162
  br i1 %exitcond.not, label %for.body36.lr.ph, label %for.body21, !llvm.loop !18

for.body36:                                       ; preds = %for.body36.preheader, %for.body36
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %for.body36 ], [ %indvars.iv115.ph, %for.body36.preheader ]
  %arrayidx40 = getelementptr inbounds nuw i32, ptr %arrayidx17, i64 %indvars.iv115
  %26 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %sub = sub nsw i32 %26, %spec.select.lcssa
  store i32 %sub, ptr %arrayidx40, align 4, !tbaa !5
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %indvars.iv162
  br i1 %exitcond119.not, label %for.end47, label %for.body36, !llvm.loop !19

for.end47:                                        ; preds = %for.body36, %middle.block225
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %indvars.iv162
  br i1 %exitcond124.not, label %for.body60.preheader.preheader, label %for.body15, !llvm.loop !20

for.body60.preheader.preheader:                   ; preds = %for.end47
  %min.iters.check201 = icmp ugt i64 %15, 3
  %or.cond = select i1 %min.iters.check201, i1 %ident.check199.not, i1 false
  %n.vec204 = and i64 %15, -4
  %27 = or disjoint i64 %n.vec204, 1
  %cmp.n212 = icmp eq i64 %15, %n.vec204
  %min.iters.check187 = icmp ugt i64 %indvars.iv162, 3
  %or.cond245 = select i1 %min.iters.check187, i1 %ident.check185.not, i1 false
  %n.vec190 = and i64 %indvars.iv162, -4
  %cmp.n196 = icmp eq i64 %indvars.iv162, %n.vec190
  br label %for.body60.preheader

for.body60.preheader:                             ; preds = %for.body60.preheader.preheader, %for.end89
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %for.end89 ], [ 0, %for.body60.preheader.preheader ]
  %arrayidx57 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv135
  %28 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  br i1 %or.cond, label %vector.ph202, label %for.body60.preheader247

vector.ph202:                                     ; preds = %for.body60.preheader
  %broadcast.splatinsert205 = insertelement <4 x i32> poison, i32 %28, i64 0
  %broadcast.splat206 = shufflevector <4 x i32> %broadcast.splatinsert205, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.gep261 = getelementptr i8, ptr %arrayidx57, i64 4
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph202
  %index208 = phi i64 [ 0, %vector.ph202 ], [ %index.next210, %vector.body207 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat206, %vector.ph202 ], [ %29, %vector.body207 ]
  %gep262 = getelementptr i32, ptr %invariant.gep261, i64 %index208
  %wide.load209 = load <4 x i32>, ptr %gep262, align 4, !tbaa !5
  %29 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load209, <4 x i32> %vec.phi)
  %index.next210 = add nuw i64 %index208, 4
  %30 = icmp eq i64 %index.next210, %n.vec204
  br i1 %30, label %middle.block211, label %vector.body207, !llvm.loop !21

middle.block211:                                  ; preds = %vector.body207
  %31 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %29)
  br i1 %cmp.n212, label %for.cond75.preheader, label %for.body60.preheader247

for.body60.preheader247:                          ; preds = %for.body60.preheader, %middle.block211
  %indvars.iv125.ph = phi i64 [ 1, %for.body60.preheader ], [ %27, %middle.block211 ]
  %min54.082.ph = phi i32 [ %28, %for.body60.preheader ], [ %31, %middle.block211 ]
  br label %for.body60

for.cond75.preheader:                             ; preds = %for.body60, %middle.block211
  %spec.select68.lcssa = phi i32 [ %31, %middle.block211 ], [ %spec.select68, %for.body60 ]
  br i1 %or.cond245, label %vector.ph188, label %for.body77.preheader

vector.ph188:                                     ; preds = %for.cond75.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.select68.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph188
  %index192 = phi i64 [ 0, %vector.ph188 ], [ %index.next194, %vector.body191 ]
  %32 = getelementptr inbounds nuw i32, ptr %arrayidx57, i64 %index192
  %wide.load193 = load <4 x i32>, ptr %32, align 4, !tbaa !5
  %33 = sub nsw <4 x i32> %wide.load193, %broadcast.splat
  store <4 x i32> %33, ptr %32, align 4, !tbaa !5
  %index.next194 = add nuw i64 %index192, 4
  %34 = icmp eq i64 %index.next194, %n.vec190
  br i1 %34, label %middle.block195, label %vector.body191, !llvm.loop !22

middle.block195:                                  ; preds = %vector.body191
  br i1 %cmp.n196, label %for.end89, label %for.body77.preheader

for.body77.preheader:                             ; preds = %for.cond75.preheader, %middle.block195
  %indvars.iv130.ph = phi i64 [ 0, %for.cond75.preheader ], [ %n.vec190, %middle.block195 ]
  br label %for.body77

for.body60:                                       ; preds = %for.body60.preheader247, %for.body60
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %for.body60 ], [ %indvars.iv125.ph, %for.body60.preheader247 ]
  %min54.082 = phi i32 [ %spec.select68, %for.body60 ], [ %min54.082.ph, %for.body60.preheader247 ]
  %35 = mul nuw nsw i64 %indvars.iv125, %2
  %gep = getelementptr inbounds nuw i32, ptr %arrayidx57, i64 %35
  %36 = load i32, ptr %gep, align 4, !tbaa !5
  %spec.select68 = call i32 @llvm.smin.i32(i32 %36, i32 %min54.082)
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %indvars.iv162
  br i1 %exitcond129.not, label %for.cond75.preheader, label %for.body60, !llvm.loop !23

for.body77:                                       ; preds = %for.body77.preheader, %for.body77
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %for.body77 ], [ %indvars.iv130.ph, %for.body77.preheader ]
  %37 = mul nuw nsw i64 %indvars.iv130, %2
  %gep85 = getelementptr inbounds nuw i32, ptr %arrayidx57, i64 %37
  %38 = load i32, ptr %gep85, align 4, !tbaa !5
  %sub82 = sub nsw i32 %38, %spec.select68.lcssa
  store i32 %sub82, ptr %gep85, align 4, !tbaa !5
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %indvars.iv162
  br i1 %exitcond134.not, label %for.end89, label %for.body77, !llvm.loop !24

for.end89:                                        ; preds = %for.body77, %middle.block195
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %indvars.iv162
  br i1 %exitcond139.not, label %for.end92, label %for.body60.preheader, !llvm.loop !25

for.end92:                                        ; preds = %for.end89
  %39 = load i32, ptr %arrayidx94, align 4, !tbaa !5
  %add = add nsw i32 %39, %sum.0102
  %cmp9694 = icmp sgt i64 %indvars.iv162, 2
  br i1 %cmp9694, label %for.cond98.preheader.us.preheader, label %for.end138

for.cond98.preheader.us.preheader:                ; preds = %for.end92
  %min.iters.check173 = icmp ne i64 %indvars.iv162, 3
  %or.cond246 = select i1 %min.iters.check173, i1 %ident.check.not, i1 false
  %n.vec176 = and i64 %indvars.iv162, 9223372036854775804
  %cmp.n182 = icmp eq i64 %indvars.iv162, %n.vec176
  br label %for.cond98.preheader.us

for.cond98.preheader.us:                          ; preds = %for.cond98.preheader.us.preheader, %for.cond98.for.inc113_crit_edge.us
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %for.cond98.for.inc113_crit_edge.us ], [ 2, %for.cond98.preheader.us.preheader ]
  %invariant.gep92.us = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv145
  br i1 %or.cond246, label %vector.body177, label %for.body100.us.preheader

vector.body177:                                   ; preds = %for.cond98.preheader.us, %vector.body177
  %index178 = phi i64 [ %index.next180, %vector.body177 ], [ 0, %for.cond98.preheader.us ]
  %40 = getelementptr inbounds nuw i32, ptr %invariant.gep92.us, i64 %index178
  %wide.load179 = load <4 x i32>, ptr %40, align 4, !tbaa !5
  %41 = getelementptr i8, ptr %40, i64 -4
  store <4 x i32> %wide.load179, ptr %41, align 4, !tbaa !5
  %index.next180 = add nuw i64 %index178, 4
  %42 = icmp eq i64 %index.next180, %n.vec176
  br i1 %42, label %middle.block181, label %vector.body177, !llvm.loop !26

middle.block181:                                  ; preds = %vector.body177
  br i1 %cmp.n182, label %for.cond98.for.inc113_crit_edge.us, label %for.body100.us.preheader

for.body100.us.preheader:                         ; preds = %for.cond98.preheader.us, %middle.block181
  %indvars.iv140.ph = phi i64 [ 0, %for.cond98.preheader.us ], [ %n.vec176, %middle.block181 ]
  br label %for.body100.us

for.body100.us:                                   ; preds = %for.body100.us.preheader, %for.body100.us
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %for.body100.us ], [ %indvars.iv140.ph, %for.body100.us.preheader ]
  %43 = mul nuw nsw i64 %indvars.iv140, %2
  %gep93.us = getelementptr inbounds nuw i32, ptr %invariant.gep92.us, i64 %43
  %44 = load i32, ptr %gep93.us, align 4, !tbaa !5
  %arrayidx109.us = getelementptr i8, ptr %gep93.us, i64 -4
  store i32 %44, ptr %arrayidx109.us, align 4, !tbaa !5
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %indvars.iv162
  br i1 %exitcond144.not, label %for.cond98.for.inc113_crit_edge.us, label %for.body100.us, !llvm.loop !27

for.cond98.for.inc113_crit_edge.us:               ; preds = %for.body100.us, %middle.block181
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %indvars.iv162
  br i1 %exitcond149.not, label %for.cond119.preheader.us.preheader, label %for.cond98.preheader.us, !llvm.loop !28

for.cond119.preheader.us.preheader:               ; preds = %for.cond98.for.inc113_crit_edge.us
  %min.iters.check = icmp eq i64 %indvars.iv162, 3
  %n.vec = and i64 %indvars.iv162, 9223372036854775804
  %cmp.n = icmp eq i64 %indvars.iv162, %n.vec
  br label %for.cond119.preheader.us

for.cond119.preheader.us:                         ; preds = %for.cond119.preheader.us.preheader, %for.cond119.for.inc134_crit_edge.us
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %for.cond119.for.inc134_crit_edge.us ], [ 2, %for.cond119.preheader.us.preheader ]
  %45 = mul nuw nsw i64 %indvars.iv156, %2
  %arrayidx123.us = getelementptr inbounds nuw i32, ptr %vla, i64 %45
  %46 = add nsw i64 %indvars.iv156, -1
  %47 = mul nuw nsw i64 %46, %2
  %arrayidx128.us = getelementptr inbounds i32, ptr %vla, i64 %47
  br i1 %min.iters.check, label %for.body121.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond119.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond119.preheader.us ]
  %48 = getelementptr inbounds nuw i32, ptr %arrayidx123.us, i64 %index
  %wide.load = load <4 x i32>, ptr %48, align 4, !tbaa !5
  %49 = getelementptr inbounds nuw i32, ptr %arrayidx128.us, i64 %index
  store <4 x i32> %wide.load, ptr %49, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %50 = icmp eq i64 %index.next, %n.vec
  br i1 %50, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond119.for.inc134_crit_edge.us, label %for.body121.us.preheader

for.body121.us.preheader:                         ; preds = %for.cond119.preheader.us, %middle.block
  %indvars.iv151.ph = phi i64 [ 0, %for.cond119.preheader.us ], [ %n.vec, %middle.block ]
  br label %for.body121.us

for.body121.us:                                   ; preds = %for.body121.us.preheader, %for.body121.us
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %for.body121.us ], [ %indvars.iv151.ph, %for.body121.us.preheader ]
  %arrayidx125.us = getelementptr inbounds nuw i32, ptr %arrayidx123.us, i64 %indvars.iv151
  %51 = load i32, ptr %arrayidx125.us, align 4, !tbaa !5
  %arrayidx130.us = getelementptr inbounds nuw i32, ptr %arrayidx128.us, i64 %indvars.iv151
  store i32 %51, ptr %arrayidx130.us, align 4, !tbaa !5
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %indvars.iv162
  br i1 %exitcond155.not, label %for.cond119.for.inc134_crit_edge.us, label %for.body121.us, !llvm.loop !30

for.cond119.for.inc134_crit_edge.us:              ; preds = %for.body121.us, %middle.block
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1
  %exitcond161.not = icmp eq i64 %indvars.iv.next157, %indvars.iv162
  br i1 %exitcond161.not, label %for.inc137, label %for.cond119.preheader.us, !llvm.loop !31

for.inc137:                                       ; preds = %for.cond119.for.inc134_crit_edge.us
  %indvars.iv.next163 = add nsw i64 %indvars.iv162, -1
  %indvar.next = add i64 %indvar, 1
  br label %for.cond13.preheader, !llvm.loop !32

for.end138:                                       ; preds = %for.end92, %while.body, %for.cond10.preheader
  %sum.0.lcssa = phi i32 [ 0, %for.cond10.preheader ], [ 0, %while.body ], [ %add, %for.end92 ]
  %call139 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0.lcssa)
  %vtable.i = load ptr, ptr %call139, align 8, !tbaa !33
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call139, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %52 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !35
  %tobool.not.i.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end138
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end138
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %52, i64 56
  %53 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !53
  %tobool.not.i1.i.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %52, i64 67
  %54 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !59
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %52)
  %vtable.i.i.i = load ptr, ptr %52, align 8, !tbaa !33
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %55 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %55(ptr noundef nonnull align 8 dereferenceable(570) %52, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %54, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call139, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %dec141 = add nsw i32 %n1.0105, -1
  call void @llvm.stackrestore.p0(ptr %3)
  %tobool.not = icmp eq i32 %dec141, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !60

while.end:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

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
!22 = distinct !{!22, !10, !11, !15, !16}
!23 = distinct !{!23, !10, !11, !15}
!24 = distinct !{!24, !10, !11, !15}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11, !15, !16}
!27 = distinct !{!27, !10, !11, !15}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10, !11, !15, !16}
!30 = distinct !{!30, !10, !11, !15}
!31 = distinct !{!31, !10, !11}
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
