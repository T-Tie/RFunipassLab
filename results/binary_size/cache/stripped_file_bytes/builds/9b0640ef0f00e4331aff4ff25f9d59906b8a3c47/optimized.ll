; ModuleID = '<stdin>'
source_filename = "/tmp/tmprxnguj0q.cpp"
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
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not87 = icmp slt i32 %0, 1
  br i1 %cmp.not87, label %for.end138, label %for.cond1.preheader.lr.ph

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %arrayidx88 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %0, %for.cond1.preheader.lr.ph ], [ %52, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %k.088 = phi i32 [ 1, %for.cond1.preheader.lr.ph ], [ %inc137, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %cmp257 = icmp sgt i32 %1, 0
  br i1 %cmp257, label %for.cond4.preheader, label %for.end133

for.cond13.preheader:                             ; preds = %for.inc10
  %cmp1483 = icmp sgt i32 %8, 1
  br i1 %cmp1483, label %for.cond16.preheader.lr.ph, label %for.end133

for.cond16.preheader.lr.ph:                       ; preds = %for.cond13.preheader
  %cmp9077.not = icmp eq i32 %8, 2
  %wide.trip.count106 = zext nneg i32 %8 to i64
  %2 = add nsw i64 %wide.trip.count106, -1
  %min.iters.check179 = icmp ult i32 %8, 5
  %n.vec182 = and i64 %2, -4
  %3 = or disjoint i64 %n.vec182, 1
  %cmp.n192 = icmp eq i64 %2, %n.vec182
  %min.iters.check165 = icmp ult i32 %8, 4
  %n.vec168 = and i64 %wide.trip.count106, 2147483644
  %cmp.n176 = icmp eq i64 %n.vec168, %wide.trip.count106
  %min.iters.check154 = icmp ult i32 %8, 5
  %n.vec157 = and i64 %2, -4
  %4 = or disjoint i64 %n.vec157, 1
  %cmp.n162 = icmp eq i64 %2, %n.vec157
  %min.iters.check = icmp ult i32 %8, 4
  %n.vec = and i64 %wide.trip.count106, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count106
  br label %for.cond16.preheader

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc10
  %5 = phi i32 [ %8, %for.inc10 ], [ %1, %for.cond1.preheader ]
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %for.inc10 ], [ 0, %for.cond1.preheader ]
  %cmp555 = icmp sgt i32 %5, 0
  br i1 %cmp555, label %for.body6, label %for.cond4.preheader.for.inc10_crit_edge

for.cond4.preheader.for.inc10_crit_edge:          ; preds = %for.cond4.preheader
  %.pre = sext i32 %5 to i64
  br label %for.inc10

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond4.preheader ]
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv92, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp5 = icmp slt i64 %indvars.iv.next, %7
  br i1 %cmp5, label %for.body6, label %for.inc10, !llvm.loop !9

for.inc10:                                        ; preds = %for.body6, %for.cond4.preheader.for.inc10_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond4.preheader.for.inc10_crit_edge ], [ %7, %for.body6 ]
  %8 = phi i32 [ %5, %for.cond4.preheader.for.inc10_crit_edge ], [ %6, %for.body6 ]
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  %cmp2 = icmp slt i64 %indvars.iv.next93, %.pre-phi
  br i1 %cmp2, label %for.cond4.preheader, label %for.cond13.preheader, !llvm.loop !12

for.cond16.preheader:                             ; preds = %for.cond16.preheader.lr.ph, %for.inc131
  %l.085 = phi i32 [ 1, %for.cond16.preheader.lr.ph ], [ %inc132, %for.inc131 ]
  %sum.184 = phi i32 [ 0, %for.cond16.preheader.lr.ph ], [ %add, %for.inc131 ]
  br label %for.body18

for.body18:                                       ; preds = %for.cond16.preheader, %for.inc47
  %indvars.iv103 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next104, %for.inc47 ]
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv103
  %9 = load i32, ptr %arrayidx20, align 16, !tbaa !5
  br i1 %min.iters.check179, label %for.body24.preheader, label %vector.ph180

vector.ph180:                                     ; preds = %for.body18
  %broadcast.splatinsert183 = insertelement <4 x i32> poison, i32 %9, i64 0
  %broadcast.splat184 = shufflevector <4 x i32> %broadcast.splatinsert183, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body185

vector.body185:                                   ; preds = %vector.body185, %vector.ph180
  %index186 = phi i64 [ 0, %vector.ph180 ], [ %index.next190, %vector.body185 ]
  %vec.phi187 = phi <4 x i32> [ %broadcast.splat184, %vector.ph180 ], [ %11, %vector.body185 ]
  %offset.idx188 = or disjoint i64 %index186, 1
  %10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv103, i64 %offset.idx188
  %wide.load189 = load <4 x i32>, ptr %10, align 4, !tbaa !5
  %11 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load189, <4 x i32> %vec.phi187)
  %index.next190 = add nuw i64 %index186, 4
  %12 = icmp eq i64 %index.next190, %n.vec182
  br i1 %12, label %middle.block191, label %vector.body185, !llvm.loop !14

middle.block191:                                  ; preds = %vector.body185
  %13 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %11)
  br i1 %cmp.n192, label %for.body39.lr.ph, label %for.body24.preheader

for.body24.preheader:                             ; preds = %for.body18, %middle.block191
  %indvars.iv95.ph = phi i64 [ 1, %for.body18 ], [ %3, %middle.block191 ]
  %min.061.ph = phi i32 [ %9, %for.body18 ], [ %13, %middle.block191 ]
  br label %for.body24

for.body39.lr.ph:                                 ; preds = %for.body24, %middle.block191
  %spec.select.lcssa = phi i32 [ %13, %middle.block191 ], [ %spec.select, %for.body24 ]
  br i1 %min.iters.check165, label %for.body39.preheader, label %vector.ph166

vector.ph166:                                     ; preds = %for.body39.lr.ph
  %broadcast.splatinsert169 = insertelement <4 x i32> poison, i32 %spec.select.lcssa, i64 0
  %broadcast.splat170 = shufflevector <4 x i32> %broadcast.splatinsert169, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body171

vector.body171:                                   ; preds = %vector.body171, %vector.ph166
  %index172 = phi i64 [ 0, %vector.ph166 ], [ %index.next174, %vector.body171 ]
  %14 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv103, i64 %index172
  %wide.load173 = load <4 x i32>, ptr %14, align 16, !tbaa !5
  %15 = sub nsw <4 x i32> %wide.load173, %broadcast.splat170
  store <4 x i32> %15, ptr %14, align 16, !tbaa !5
  %index.next174 = add nuw i64 %index172, 4
  %16 = icmp eq i64 %index.next174, %n.vec168
  br i1 %16, label %middle.block175, label %vector.body171, !llvm.loop !17

middle.block175:                                  ; preds = %vector.body171
  br i1 %cmp.n176, label %for.inc47, label %for.body39.preheader

for.body39.preheader:                             ; preds = %for.body39.lr.ph, %middle.block175
  %indvars.iv98.ph = phi i64 [ 0, %for.body39.lr.ph ], [ %n.vec168, %middle.block175 ]
  br label %for.body39

for.body24:                                       ; preds = %for.body24.preheader, %for.body24
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.body24 ], [ %indvars.iv95.ph, %for.body24.preheader ]
  %min.061 = phi i32 [ %spec.select, %for.body24 ], [ %min.061.ph, %for.body24.preheader ]
  %arrayidx28 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv103, i64 %indvars.iv95
  %17 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %17, i32 %min.061)
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count106
  br i1 %exitcond.not, label %for.body39.lr.ph, label %for.body24, !llvm.loop !18

for.body39:                                       ; preds = %for.body39.preheader, %for.body39
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %for.body39 ], [ %indvars.iv98.ph, %for.body39.preheader ]
  %arrayidx43 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv103, i64 %indvars.iv98
  %18 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %sub = sub nsw i32 %18, %spec.select.lcssa
  store i32 %sub, ptr %arrayidx43, align 4, !tbaa !5
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count106
  br i1 %exitcond102.not, label %for.inc47, label %for.body39, !llvm.loop !19

for.inc47:                                        ; preds = %for.body39, %middle.block175
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %for.body52, label %for.body18, !llvm.loop !20

for.body52:                                       ; preds = %for.inc47, %for.inc84
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %for.inc84 ], [ 0, %for.inc47 ]
  %arrayidx55 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv118
  %19 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  br i1 %min.iters.check154, label %for.body58.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %for.body52
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %19, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph155
  %index159 = phi i64 [ 0, %vector.ph155 ], [ %index.next160, %vector.body158 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph155 ], [ %35, %vector.body158 ]
  %offset.idx = or disjoint i64 %index159, 1
  %20 = or disjoint i64 %index159, 2
  %21 = or disjoint i64 %index159, 3
  %22 = add i64 %index159, 4
  %23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %offset.idx, i64 %indvars.iv118
  %24 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %20, i64 %indvars.iv118
  %25 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %21, i64 %indvars.iv118
  %26 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %22, i64 %indvars.iv118
  %27 = load i32, ptr %23, align 4, !tbaa !5
  %28 = load i32, ptr %24, align 4, !tbaa !5
  %29 = load i32, ptr %25, align 4, !tbaa !5
  %30 = load i32, ptr %26, align 4, !tbaa !5
  %31 = insertelement <4 x i32> poison, i32 %27, i64 0
  %32 = insertelement <4 x i32> %31, i32 %28, i64 1
  %33 = insertelement <4 x i32> %32, i32 %29, i64 2
  %34 = insertelement <4 x i32> %33, i32 %30, i64 3
  %35 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %34, <4 x i32> %vec.phi)
  %index.next160 = add nuw i64 %index159, 4
  %36 = icmp eq i64 %index.next160, %n.vec157
  br i1 %36, label %middle.block161, label %vector.body158, !llvm.loop !21

middle.block161:                                  ; preds = %vector.body158
  %37 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %35)
  br i1 %cmp.n162, label %for.body75.lr.ph, label %for.body58.preheader

for.body58.preheader:                             ; preds = %for.body52, %middle.block161
  %indvars.iv108.ph = phi i64 [ 1, %for.body52 ], [ %4, %middle.block161 ]
  %min.269.ph = phi i32 [ %19, %for.body52 ], [ %37, %middle.block161 ]
  br label %for.body58

for.body75.lr.ph:                                 ; preds = %for.body58, %middle.block161
  %spec.select54.lcssa = phi i32 [ %37, %middle.block161 ], [ %spec.select54, %for.body58 ]
  br label %for.body75

for.body58:                                       ; preds = %for.body58.preheader, %for.body58
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %for.body58 ], [ %indvars.iv108.ph, %for.body58.preheader ]
  %min.269 = phi i32 [ %spec.select54, %for.body58 ], [ %min.269.ph, %for.body58.preheader ]
  %arrayidx62 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv108, i64 %indvars.iv118
  %38 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %spec.select54 = call i32 @llvm.smin.i32(i32 %38, i32 %min.269)
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count106
  br i1 %exitcond112.not, label %for.body75.lr.ph, label %for.body58, !llvm.loop !22

for.body75:                                       ; preds = %for.body75.lr.ph, %for.body75
  %indvars.iv113 = phi i64 [ 0, %for.body75.lr.ph ], [ %indvars.iv.next114, %for.body75 ]
  %arrayidx79 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv113, i64 %indvars.iv118
  %39 = load i32, ptr %arrayidx79, align 4, !tbaa !5
  %sub80 = sub nsw i32 %39, %spec.select54.lcssa
  store i32 %sub80, ptr %arrayidx79, align 4, !tbaa !5
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count106
  br i1 %exitcond117.not, label %for.inc84, label %for.body75, !llvm.loop !23

for.inc84:                                        ; preds = %for.body75
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count106
  br i1 %exitcond122.not, label %for.end86, label %for.body52, !llvm.loop !24

for.end86:                                        ; preds = %for.inc84
  %40 = load i32, ptr %arrayidx88, align 4, !tbaa !5
  %add = add nsw i32 %40, %sum.184
  br i1 %cmp9077.not, label %for.inc131, label %for.cond92.preheader.us

for.cond92.preheader.us:                          ; preds = %for.end86, %for.cond92.for.inc107_crit_edge.us
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %for.cond92.for.inc107_crit_edge.us ], [ 2, %for.end86 ]
  %41 = add nsw i64 %indvars.iv129, -1
  br i1 %min.iters.check, label %for.body94.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond92.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond92.preheader.us ]
  %42 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv129, i64 %index
  %wide.load = load <4 x i32>, ptr %42, align 16, !tbaa !5
  %43 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %41, i64 %index
  store <4 x i32> %wide.load, ptr %43, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %44 = icmp eq i64 %index.next, %n.vec
  br i1 %44, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond92.for.inc107_crit_edge.us, label %for.body94.us.preheader

for.body94.us.preheader:                          ; preds = %for.cond92.preheader.us, %middle.block
  %indvars.iv124.ph = phi i64 [ 0, %for.cond92.preheader.us ], [ %n.vec, %middle.block ]
  br label %for.body94.us

for.body94.us:                                    ; preds = %for.body94.us.preheader, %for.body94.us
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %for.body94.us ], [ %indvars.iv124.ph, %for.body94.us.preheader ]
  %arrayidx98.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv129, i64 %indvars.iv124
  %45 = load i32, ptr %arrayidx98.us, align 4, !tbaa !5
  %arrayidx103.us = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %41, i64 %indvars.iv124
  store i32 %45, ptr %arrayidx103.us, align 4, !tbaa !5
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count106
  br i1 %exitcond128.not, label %for.cond92.for.inc107_crit_edge.us, label %for.body94.us, !llvm.loop !26

for.cond92.for.inc107_crit_edge.us:               ; preds = %for.body94.us, %middle.block
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  %exitcond134.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count106
  br i1 %exitcond134.not, label %for.cond113.preheader.us, label %for.cond92.preheader.us, !llvm.loop !27

for.cond113.preheader.us:                         ; preds = %for.cond92.for.inc107_crit_edge.us, %for.cond113.for.inc128_crit_edge.us
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %for.cond113.for.inc128_crit_edge.us ], [ 2, %for.cond92.for.inc107_crit_edge.us ]
  %46 = add nsw i64 %indvars.iv140, -1
  br label %for.body115.us

for.body115.us:                                   ; preds = %for.cond113.preheader.us, %for.body115.us
  %indvars.iv135 = phi i64 [ 0, %for.cond113.preheader.us ], [ %indvars.iv.next136, %for.body115.us ]
  %arrayidx119.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv135, i64 %indvars.iv140
  %47 = load i32, ptr %arrayidx119.us, align 4, !tbaa !5
  %arrayidx124.us = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv135, i64 %46
  store i32 %47, ptr %arrayidx124.us, align 4, !tbaa !5
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count106
  br i1 %exitcond139.not, label %for.cond113.for.inc128_crit_edge.us, label %for.body115.us, !llvm.loop !28

for.cond113.for.inc128_crit_edge.us:              ; preds = %for.body115.us
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  %exitcond145.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count106
  br i1 %exitcond145.not, label %for.inc131, label %for.cond113.preheader.us, !llvm.loop !29

for.inc131:                                       ; preds = %for.cond113.for.inc128_crit_edge.us, %for.end86
  %inc132 = add nuw nsw i32 %l.085, 1
  %exitcond146.not = icmp eq i32 %inc132, %8
  br i1 %exitcond146.not, label %for.end133, label %for.cond16.preheader, !llvm.loop !30

for.end133:                                       ; preds = %for.inc131, %for.cond1.preheader, %for.cond13.preheader
  %sum.1.lcssa = phi i32 [ 0, %for.cond13.preheader ], [ 0, %for.cond1.preheader ], [ %add, %for.inc131 ]
  %call134 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.1.lcssa)
  %vtable.i = load ptr, ptr %call134, align 8, !tbaa !31
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call134, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %48 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !33
  %tobool.not.i.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end133
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end133
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %48, i64 56
  %49 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !51
  %tobool.not.i1.i.i = icmp eq i8 %49, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %48, i64 67
  %50 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !57
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %48)
  %vtable.i.i.i = load ptr, ptr %48, align 8, !tbaa !31
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %51 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %51(ptr noundef nonnull align 8 dereferenceable(570) %48, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %50, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call134, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc137 = add nuw nsw i32 %k.088, 1
  %52 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %k.088, %52
  br i1 %cmp.not.not, label %for.cond1.preheader, label %for.end138, !llvm.loop !58

for.end138:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
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
