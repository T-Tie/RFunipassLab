; ModuleID = '<stdin>'
source_filename = "/tmp/tmprwosuzdr.cpp"
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
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp80 = icmp sgt i32 %0, 0
  br i1 %cmp80, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx109 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond5.preheader.preheader

for.cond.cleanup:                                 ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0

for.cond5.preheader.preheader:                    ; preds = %for.body.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc166, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  store i32 %0, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  br label %for.cond5.preheader

while.cond.preheader:                             ; preds = %for.cond.cleanup7
  %cmp1577 = icmp sgt i32 %5, 1
  br i1 %cmp1577, label %for.cond17.preheader.preheader, label %while.end

for.cond17.preheader.preheader:                   ; preds = %while.cond.preheader
  %1 = add nsw i32 %5, -1
  %2 = zext i32 %1 to i64
  %3 = zext nneg i32 %5 to i64
  br label %for.cond17.preheader

for.cond5.preheader:                              ; preds = %for.cond5.preheader.preheader, %for.cond.cleanup7
  %4 = phi i32 [ %0, %for.cond5.preheader.preheader ], [ %5, %for.cond.cleanup7 ]
  %indvars.iv87 = phi i64 [ 0, %for.cond5.preheader.preheader ], [ %indvars.iv.next88, %for.cond.cleanup7 ]
  %cmp650 = icmp sgt i32 %4, 0
  br i1 %cmp650, label %for.body8, label %for.cond5.preheader.for.cond.cleanup7_crit_edge

for.cond5.preheader.for.cond.cleanup7_crit_edge:  ; preds = %for.cond5.preheader
  %.pre = sext i32 %4 to i64
  br label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.body8, %for.cond5.preheader.for.cond.cleanup7_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond5.preheader.for.cond.cleanup7_crit_edge ], [ %7, %for.body8 ]
  %5 = phi i32 [ %4, %for.cond5.preheader.for.cond.cleanup7_crit_edge ], [ %6, %for.body8 ]
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %cmp2 = icmp slt i64 %indvars.iv.next88, %.pre-phi
  br i1 %cmp2, label %for.cond5.preheader, label %while.cond.preheader, !llvm.loop !9

for.body8:                                        ; preds = %for.cond5.preheader, %for.body8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.cond5.preheader ]
  %arrayidx10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv87, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp6 = icmp slt i64 %indvars.iv.next, %7
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7, !llvm.loop !13

for.cond17.preheader:                             ; preds = %for.cond17.preheader.preheader, %for.cond.cleanup139
  %indvar = phi i64 [ 0, %for.cond17.preheader.preheader ], [ %indvar.next, %for.cond.cleanup139 ]
  %indvars.iv143 = phi i64 [ %3, %for.cond17.preheader.preheader ], [ %indvars.iv.next144, %for.cond.cleanup139 ]
  %indvars.iv141 = phi i64 [ %2, %for.cond17.preheader.preheader ], [ %indvars.iv.next142, %for.cond.cleanup139 ]
  %sum.078 = phi i32 [ 0, %for.cond17.preheader.preheader ], [ %add, %for.cond.cleanup139 ]
  %8 = xor i64 %indvar, -1
  %9 = add i64 %8, %2
  %min.iters.check190 = icmp ult i64 %indvars.iv143, 4
  %n.vec193 = and i64 %indvars.iv143, -4
  %cmp.n202 = icmp eq i64 %indvars.iv143, %n.vec193
  %min.iters.check176 = icmp ult i64 %indvars.iv143, 4
  %n.vec179 = and i64 %indvars.iv143, -4
  %cmp.n187 = icmp eq i64 %indvars.iv143, %n.vec179
  br label %for.body20

for.body20:                                       ; preds = %for.cond17.preheader, %for.cond.cleanup44
  %indvars.iv98 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next99, %for.cond.cleanup44 ]
  %arrayidx22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv98
  %10 = load i32, ptr %arrayidx22, align 16, !tbaa !5
  br i1 %min.iters.check190, label %for.body28.preheader, label %vector.ph191

vector.ph191:                                     ; preds = %for.body20
  %broadcast.splatinsert194 = insertelement <4 x i32> poison, i32 %10, i64 0
  %broadcast.splat195 = shufflevector <4 x i32> %broadcast.splatinsert194, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph191
  %index197 = phi i64 [ 0, %vector.ph191 ], [ %index.next200, %vector.body196 ]
  %vec.phi198 = phi <4 x i32> [ %broadcast.splat195, %vector.ph191 ], [ %12, %vector.body196 ]
  %11 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv98, i64 %index197
  %wide.load199 = load <4 x i32>, ptr %11, align 16, !tbaa !5
  %12 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load199, <4 x i32> %vec.phi198)
  %index.next200 = add nuw i64 %index197, 4
  %13 = icmp eq i64 %index.next200, %n.vec193
  br i1 %13, label %middle.block201, label %vector.body196, !llvm.loop !14

middle.block201:                                  ; preds = %vector.body196
  %14 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %12)
  br i1 %cmp.n202, label %for.body45.lr.ph, label %for.body28.preheader

for.body28.preheader:                             ; preds = %for.body20, %middle.block201
  %indvars.iv90.ph = phi i64 [ 0, %for.body20 ], [ %n.vec193, %middle.block201 ]
  %min.055.ph = phi i32 [ %10, %for.body20 ], [ %14, %middle.block201 ]
  br label %for.body28

for.body45.lr.ph:                                 ; preds = %for.body28, %middle.block201
  %spec.select.lcssa = phi i32 [ %14, %middle.block201 ], [ %spec.select, %for.body28 ]
  br i1 %min.iters.check176, label %for.body45.preheader, label %vector.ph177

vector.ph177:                                     ; preds = %for.body45.lr.ph
  %broadcast.splatinsert180 = insertelement <4 x i32> poison, i32 %spec.select.lcssa, i64 0
  %broadcast.splat181 = shufflevector <4 x i32> %broadcast.splatinsert180, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph177
  %index183 = phi i64 [ 0, %vector.ph177 ], [ %index.next185, %vector.body182 ]
  %15 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv98, i64 %index183
  %wide.load184 = load <4 x i32>, ptr %15, align 16, !tbaa !5
  %16 = sub nsw <4 x i32> %wide.load184, %broadcast.splat181
  store <4 x i32> %16, ptr %15, align 16, !tbaa !5
  %index.next185 = add nuw i64 %index183, 4
  %17 = icmp eq i64 %index.next185, %n.vec179
  br i1 %17, label %middle.block186, label %vector.body182, !llvm.loop !17

middle.block186:                                  ; preds = %vector.body182
  br i1 %cmp.n187, label %for.cond.cleanup44, label %for.body45.preheader

for.body45.preheader:                             ; preds = %for.body45.lr.ph, %middle.block186
  %indvars.iv93.ph = phi i64 [ 0, %for.body45.lr.ph ], [ %n.vec179, %middle.block186 ]
  br label %for.body45

for.body28:                                       ; preds = %for.body28.preheader, %for.body28
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %for.body28 ], [ %indvars.iv90.ph, %for.body28.preheader ]
  %min.055 = phi i32 [ %spec.select, %for.body28 ], [ %min.055.ph, %for.body28.preheader ]
  %arrayidx32 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv98, i64 %indvars.iv90
  %18 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %18, i32 %min.055)
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next91, %indvars.iv143
  br i1 %exitcond.not, label %for.body45.lr.ph, label %for.body28, !llvm.loop !18

for.cond.cleanup44:                               ; preds = %for.body45, %middle.block186
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %indvars.iv143
  br i1 %exitcond102.not, label %for.body64.preheader, label %for.body20, !llvm.loop !19

for.body64.preheader:                             ; preds = %for.cond.cleanup44
  %min.iters.check165 = icmp ult i64 %indvars.iv143, 4
  %n.vec168 = and i64 %indvars.iv143, -4
  %cmp.n173 = icmp eq i64 %indvars.iv143, %n.vec168
  br label %for.body64

for.body45:                                       ; preds = %for.body45.preheader, %for.body45
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %for.body45 ], [ %indvars.iv93.ph, %for.body45.preheader ]
  %arrayidx49 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv98, i64 %indvars.iv93
  %19 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %sub = sub nsw i32 %19, %spec.select.lcssa
  store i32 %sub, ptr %arrayidx49, align 4, !tbaa !5
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %indvars.iv143
  br i1 %exitcond97.not, label %for.cond.cleanup44, label %for.body45, !llvm.loop !20

for.cond116.preheader.lr.ph:                      ; preds = %for.cond.cleanup91
  %20 = load i32, ptr %arrayidx109, align 4, !tbaa !5
  %add = add nsw i32 %20, %sum.078
  %cmp11869 = icmp samesign ugt i64 %indvars.iv143, 2
  br i1 %cmp11869, label %for.cond116.preheader.us.preheader, label %for.cond.cleanup139.thread

for.cond116.preheader.us.preheader:               ; preds = %for.cond116.preheader.lr.ph
  %min.iters.check = icmp ult i64 %9, 4
  %n.vec = and i64 %9, -4
  %21 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %9, %n.vec
  br label %for.cond116.preheader.us

for.cond116.preheader.us:                         ; preds = %for.cond116.preheader.us.preheader, %for.cond116.for.cond.cleanup119_crit_edge.us
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %for.cond116.for.cond.cleanup119_crit_edge.us ], [ 0, %for.cond116.preheader.us.preheader ]
  br i1 %min.iters.check, label %for.body120.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond116.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond116.preheader.us ]
  %offset.idx = or disjoint i64 %index, 1
  %22 = or disjoint i64 %index, 2
  %23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv126, i64 %22
  %wide.load = load <4 x i32>, ptr %23, align 8, !tbaa !5
  %24 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv126, i64 %offset.idx
  store <4 x i32> %wide.load, ptr %24, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %25 = icmp eq i64 %index.next, %n.vec
  br i1 %25, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond116.for.cond.cleanup119_crit_edge.us, label %for.body120.us.preheader

for.body120.us.preheader:                         ; preds = %for.cond116.preheader.us, %middle.block
  %indvars.iv119.ph = phi i64 [ 1, %for.cond116.preheader.us ], [ %21, %middle.block ]
  br label %for.body120.us

for.body120.us:                                   ; preds = %for.body120.us.preheader, %for.body120.us
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.body120.us ], [ %indvars.iv119.ph, %for.body120.us.preheader ]
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  %arrayidx125.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv126, i64 %indvars.iv.next120
  %26 = load i32, ptr %arrayidx125.us, align 4, !tbaa !5
  %arrayidx129.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv126, i64 %indvars.iv119
  store i32 %26, ptr %arrayidx129.us, align 4, !tbaa !5
  %exitcond125.not = icmp eq i64 %indvars.iv.next120, %indvars.iv141
  br i1 %exitcond125.not, label %for.cond116.for.cond.cleanup119_crit_edge.us, label %for.body120.us, !llvm.loop !22

for.cond116.for.cond.cleanup119_crit_edge.us:     ; preds = %for.body120.us, %middle.block
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %indvars.iv143
  br i1 %exitcond130.not, label %for.cond142.preheader.us, label %for.cond116.preheader.us, !llvm.loop !23

for.body64:                                       ; preds = %for.body64.preheader, %for.cond.cleanup91
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %for.cond.cleanup91 ], [ 0, %for.body64.preheader ]
  %arrayidx68 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv113
  %27 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  br i1 %min.iters.check165, label %for.body73.preheader, label %vector.ph166

vector.ph166:                                     ; preds = %for.body64
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %27, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph166
  %index170 = phi i64 [ 0, %vector.ph166 ], [ %index.next171, %vector.body169 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph166 ], [ %43, %vector.body169 ]
  %28 = or disjoint i64 %index170, 1
  %29 = or disjoint i64 %index170, 2
  %30 = or disjoint i64 %index170, 3
  %31 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %index170, i64 %indvars.iv113
  %32 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %28, i64 %indvars.iv113
  %33 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %29, i64 %indvars.iv113
  %34 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %30, i64 %indvars.iv113
  %35 = load i32, ptr %31, align 4, !tbaa !5
  %36 = load i32, ptr %32, align 4, !tbaa !5
  %37 = load i32, ptr %33, align 4, !tbaa !5
  %38 = load i32, ptr %34, align 4, !tbaa !5
  %39 = insertelement <4 x i32> poison, i32 %35, i64 0
  %40 = insertelement <4 x i32> %39, i32 %36, i64 1
  %41 = insertelement <4 x i32> %40, i32 %37, i64 2
  %42 = insertelement <4 x i32> %41, i32 %38, i64 3
  %43 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %42, <4 x i32> %vec.phi)
  %index.next171 = add nuw i64 %index170, 4
  %44 = icmp eq i64 %index.next171, %n.vec168
  br i1 %44, label %middle.block172, label %vector.body169, !llvm.loop !24

middle.block172:                                  ; preds = %vector.body169
  %45 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %43)
  br i1 %cmp.n173, label %for.body92.lr.ph, label %for.body73.preheader

for.body73.preheader:                             ; preds = %for.body64, %middle.block172
  %indvars.iv103.ph = phi i64 [ 0, %for.body64 ], [ %n.vec168, %middle.block172 ]
  %min65.062.ph = phi i32 [ %27, %for.body64 ], [ %45, %middle.block172 ]
  br label %for.body73

for.body92.lr.ph:                                 ; preds = %for.body73, %middle.block172
  %spec.select49.lcssa = phi i32 [ %45, %middle.block172 ], [ %spec.select49, %for.body73 ]
  br label %for.body92

for.body73:                                       ; preds = %for.body73.preheader, %for.body73
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %for.body73 ], [ %indvars.iv103.ph, %for.body73.preheader ]
  %min65.062 = phi i32 [ %spec.select49, %for.body73 ], [ %min65.062.ph, %for.body73.preheader ]
  %arrayidx77 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv103, i64 %indvars.iv113
  %46 = load i32, ptr %arrayidx77, align 4, !tbaa !5
  %spec.select49 = call i32 @llvm.smin.i32(i32 %46, i32 %min65.062)
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %indvars.iv143
  br i1 %exitcond107.not, label %for.body92.lr.ph, label %for.body73, !llvm.loop !25

for.cond.cleanup91:                               ; preds = %for.body92
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %indvars.iv143
  br i1 %exitcond117.not, label %for.cond116.preheader.lr.ph, label %for.body64, !llvm.loop !26

for.body92:                                       ; preds = %for.body92.lr.ph, %for.body92
  %indvars.iv108 = phi i64 [ 0, %for.body92.lr.ph ], [ %indvars.iv.next109, %for.body92 ]
  %arrayidx96 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv108, i64 %indvars.iv113
  %47 = load i32, ptr %arrayidx96, align 4, !tbaa !5
  %sub97 = sub nsw i32 %47, %spec.select49.lcssa
  store i32 %sub97, ptr %arrayidx96, align 4, !tbaa !5
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %indvars.iv143
  br i1 %exitcond112.not, label %for.cond.cleanup91, label %for.body92, !llvm.loop !27

for.cond142.preheader.us:                         ; preds = %for.cond116.for.cond.cleanup119_crit_edge.us, %for.cond142.for.cond.cleanup145_crit_edge.us
  %indvars.iv136 = phi i64 [ %indvars.iv.next137, %for.cond142.for.cond.cleanup145_crit_edge.us ], [ 0, %for.cond116.for.cond.cleanup119_crit_edge.us ]
  br label %for.body146.us

for.body146.us:                                   ; preds = %for.cond142.preheader.us, %for.body146.us
  %indvars.iv131 = phi i64 [ 1, %for.cond142.preheader.us ], [ %indvars.iv.next132, %for.body146.us ]
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1
  %arrayidx151.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next132, i64 %indvars.iv136
  %48 = load i32, ptr %arrayidx151.us, align 4, !tbaa !5
  %arrayidx155.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv131, i64 %indvars.iv136
  store i32 %48, ptr %arrayidx155.us, align 4, !tbaa !5
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %indvars.iv141
  br i1 %exitcond135.not, label %for.cond142.for.cond.cleanup145_crit_edge.us, label %for.body146.us, !llvm.loop !28

for.cond142.for.cond.cleanup145_crit_edge.us:     ; preds = %for.body146.us
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  %exitcond140.not = icmp eq i64 %indvars.iv.next137, %indvars.iv143
  br i1 %exitcond140.not, label %for.cond.cleanup139, label %for.cond142.preheader.us, !llvm.loop !29

for.cond.cleanup139.thread:                       ; preds = %for.cond116.preheader.lr.ph
  %indvars.iv.next144150 = add nsw i64 %indvars.iv143, -1
  br label %while.cond.while.end_crit_edge

for.cond.cleanup139:                              ; preds = %for.cond142.for.cond.cleanup145_crit_edge.us
  %indvars.iv.next144 = add nsw i64 %indvars.iv143, -1
  %cmp15 = icmp sgt i64 %indvars.iv143, 2
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, -1
  %indvar.next = add i64 %indvar, 1
  br i1 %cmp15, label %for.cond17.preheader, label %while.cond.while.end_crit_edge, !llvm.loop !30

while.cond.while.end_crit_edge:                   ; preds = %for.cond.cleanup139, %for.cond.cleanup139.thread
  %indvars.iv.next144153 = phi i64 [ %indvars.iv.next144150, %for.cond.cleanup139.thread ], [ %indvars.iv.next144, %for.cond.cleanup139 ]
  %49 = trunc nuw nsw i64 %indvars.iv.next144153 to i32
  store i32 %49, ptr %n, align 4, !tbaa !5
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.preheader
  %sum.0.lcssa = phi i32 [ %add, %while.cond.while.end_crit_edge ], [ 0, %while.cond.preheader ]
  %call163 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0.lcssa)
  %vtable.i = load ptr, ptr %call163, align 8, !tbaa !31
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call163, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %50 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !33
  %tobool.not.i.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %while.end
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %while.end
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %50, i64 56
  %51 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !51
  %tobool.not.i1.i.i = icmp eq i8 %51, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %50, i64 67
  %52 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !57
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %50)
  %vtable.i.i.i = load ptr, ptr %50, align 8, !tbaa !31
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %53 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %53(ptr noundef nonnull align 8 dereferenceable(570) %50, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %52, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call163, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
  %inc166 = add nuw nsw i32 %i.081, 1
  %exitcond148.not = icmp eq i32 %inc166, %0
  br i1 %exitcond148.not, label %for.cond.cleanup, label %for.cond5.preheader.preheader, !llvm.loop !58
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

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
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.unswitch.partial.disable"}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !10, !11, !15, !16}
!18 = distinct !{!18, !10, !11, !15}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11, !15}
!21 = distinct !{!21, !10, !11, !15, !16}
!22 = distinct !{!22, !10, !11, !15}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11, !15, !16}
!25 = distinct !{!25, !10, !11, !15}
!26 = distinct !{!26, !10, !11}
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
