; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnuturm82.cpp"
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
  %cmp86 = icmp sgt i32 %0, 0
  br i1 %cmp86, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx104 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.body

for.cond.cleanup:                                 ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0

for.body:                                         ; preds = %for.body.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %0, %for.body.lr.ph ], [ %16, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %k.087 = phi i32 [ 0, %for.body.lr.ph ], [ %inc160, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  %cmp257 = icmp sgt i32 %1, 0
  br i1 %cmp257, label %for.cond5.preheader, label %for.cond.cleanup17

for.cond15.preheader:                             ; preds = %for.cond.cleanup7
  %cmp1682 = icmp sgt i32 %4, 1
  br i1 %cmp1682, label %for.cond20.preheader.preheader, label %for.cond.cleanup17

for.cond20.preheader.preheader:                   ; preds = %for.cond15.preheader
  %2 = zext nneg i32 %4 to i64
  br label %for.cond20.preheader

for.cond5.preheader:                              ; preds = %for.body, %for.cond.cleanup7
  %3 = phi i32 [ %4, %for.cond.cleanup7 ], [ %1, %for.body ]
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %for.cond.cleanup7 ], [ 0, %for.body ]
  %cmp655 = icmp sgt i32 %3, 0
  br i1 %cmp655, label %for.body8, label %for.cond5.preheader.for.cond.cleanup7_crit_edge

for.cond5.preheader.for.cond.cleanup7_crit_edge:  ; preds = %for.cond5.preheader
  %.pre = sext i32 %3 to i64
  br label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.body8, %for.cond5.preheader.for.cond.cleanup7_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond5.preheader.for.cond.cleanup7_crit_edge ], [ %6, %for.body8 ]
  %4 = phi i32 [ %3, %for.cond5.preheader.for.cond.cleanup7_crit_edge ], [ %5, %for.body8 ]
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %cmp2 = icmp slt i64 %indvars.iv.next92, %.pre-phi
  br i1 %cmp2, label %for.cond5.preheader, label %for.cond15.preheader, !llvm.loop !9

for.body8:                                        ; preds = %for.cond5.preheader, %for.body8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.cond5.preheader ]
  %arrayidx10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv91, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp6 = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7, !llvm.loop !13

for.cond20.preheader:                             ; preds = %for.cond20.preheader.preheader, %for.cond.cleanup133
  %indvar = phi i64 [ 0, %for.cond20.preheader.preheader ], [ %indvar.next, %for.cond.cleanup133 ]
  %indvars.iv143 = phi i64 [ %2, %for.cond20.preheader.preheader ], [ %indvars.iv.next144, %for.cond.cleanup133 ]
  %ans.083 = phi i32 [ 0, %for.cond20.preheader.preheader ], [ %add, %for.cond.cleanup133 ]
  %7 = xor i64 %indvar, -1
  %8 = add i64 %7, %2
  %9 = xor i64 %indvar, -1
  %10 = add i64 %9, %2
  %min.iters.check178 = icmp ult i64 %8, 4
  %n.vec181 = and i64 %8, -4
  %11 = or disjoint i64 %n.vec181, 1
  %cmp.n191 = icmp eq i64 %8, %n.vec181
  %min.iters.check164 = icmp ult i64 %indvars.iv143, 4
  %n.vec167 = and i64 %indvars.iv143, -4
  %cmp.n175 = icmp eq i64 %indvars.iv143, %n.vec167
  br label %for.body23

for.cond.cleanup17:                               ; preds = %for.cond.cleanup133, %for.body, %for.cond15.preheader
  %ans.0.lcssa = phi i32 [ 0, %for.cond15.preheader ], [ 0, %for.body ], [ %add, %for.cond.cleanup133 ]
  %call157 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %ans.0.lcssa)
  %vtable.i = load ptr, ptr %call157, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call157, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %12 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !16
  %tobool.not.i.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.cond.cleanup17
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.cond.cleanup17
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 56
  %13 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !34
  %tobool.not.i1.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 67
  %14 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %12)
  %vtable.i.i.i = load ptr, ptr %12, align 8, !tbaa !14
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %15 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %15(ptr noundef nonnull align 8 dereferenceable(570) %12, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %14, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call157, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
  %inc160 = add nuw nsw i32 %k.087, 1
  %16 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc160, %16
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !41

for.body23:                                       ; preds = %for.cond20.preheader, %for.cond.cleanup47
  %indvars.iv102 = phi i64 [ 0, %for.cond20.preheader ], [ %indvars.iv.next103, %for.cond.cleanup47 ]
  %arrayidx25 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv102
  %17 = load i32, ptr %arrayidx25, align 16, !tbaa !5
  br i1 %min.iters.check178, label %for.body31.preheader, label %vector.ph179

vector.ph179:                                     ; preds = %for.body23
  %broadcast.splatinsert182 = insertelement <4 x i32> poison, i32 %17, i64 0
  %broadcast.splat183 = shufflevector <4 x i32> %broadcast.splatinsert182, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph179
  %index185 = phi i64 [ 0, %vector.ph179 ], [ %index.next189, %vector.body184 ]
  %vec.phi186 = phi <4 x i32> [ %broadcast.splat183, %vector.ph179 ], [ %19, %vector.body184 ]
  %offset.idx187 = or disjoint i64 %index185, 1
  %18 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv102, i64 %offset.idx187
  %wide.load188 = load <4 x i32>, ptr %18, align 4, !tbaa !5
  %19 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi186, <4 x i32> %wide.load188)
  %index.next189 = add nuw i64 %index185, 4
  %20 = icmp eq i64 %index.next189, %n.vec181
  br i1 %20, label %middle.block190, label %vector.body184, !llvm.loop !42

middle.block190:                                  ; preds = %vector.body184
  %21 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %19)
  br i1 %cmp.n191, label %for.body48.lr.ph, label %for.body31.preheader

for.body31.preheader:                             ; preds = %for.body23, %middle.block190
  %indvars.iv94.ph = phi i64 [ 1, %for.body23 ], [ %11, %middle.block190 ]
  %min.060.ph = phi i32 [ %17, %for.body23 ], [ %21, %middle.block190 ]
  br label %for.body31

for.body48.lr.ph:                                 ; preds = %for.body31, %middle.block190
  %spec.select.lcssa = phi i32 [ %21, %middle.block190 ], [ %spec.select, %for.body31 ]
  br i1 %min.iters.check164, label %for.body48.preheader, label %vector.ph165

vector.ph165:                                     ; preds = %for.body48.lr.ph
  %broadcast.splatinsert168 = insertelement <4 x i32> poison, i32 %spec.select.lcssa, i64 0
  %broadcast.splat169 = shufflevector <4 x i32> %broadcast.splatinsert168, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph165
  %index171 = phi i64 [ 0, %vector.ph165 ], [ %index.next173, %vector.body170 ]
  %22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv102, i64 %index171
  %wide.load172 = load <4 x i32>, ptr %22, align 16, !tbaa !5
  %23 = sub nsw <4 x i32> %wide.load172, %broadcast.splat169
  store <4 x i32> %23, ptr %22, align 16, !tbaa !5
  %index.next173 = add nuw i64 %index171, 4
  %24 = icmp eq i64 %index.next173, %n.vec167
  br i1 %24, label %middle.block174, label %vector.body170, !llvm.loop !45

middle.block174:                                  ; preds = %vector.body170
  br i1 %cmp.n175, label %for.cond.cleanup47, label %for.body48.preheader

for.body48.preheader:                             ; preds = %for.body48.lr.ph, %middle.block174
  %indvars.iv97.ph = phi i64 [ 0, %for.body48.lr.ph ], [ %n.vec167, %middle.block174 ]
  br label %for.body48

for.body31:                                       ; preds = %for.body31.preheader, %for.body31
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %for.body31 ], [ %indvars.iv94.ph, %for.body31.preheader ]
  %min.060 = phi i32 [ %spec.select, %for.body31 ], [ %min.060.ph, %for.body31.preheader ]
  %arrayidx35 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv102, i64 %indvars.iv94
  %25 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %min.060, i32 %25)
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next95, %indvars.iv143
  br i1 %exitcond.not, label %for.body48.lr.ph, label %for.body31, !llvm.loop !46

for.cond.cleanup47:                               ; preds = %for.body48, %middle.block174
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %indvars.iv143
  br i1 %exitcond106.not, label %for.body72.preheader.preheader, label %for.body23, !llvm.loop !47

for.body72.preheader.preheader:                   ; preds = %for.cond.cleanup47
  %min.iters.check153 = icmp ult i64 %10, 4
  %n.vec156 = and i64 %10, -4
  %26 = or disjoint i64 %n.vec156, 1
  %cmp.n161 = icmp eq i64 %10, %n.vec156
  br label %for.body72.preheader

for.body48:                                       ; preds = %for.body48.preheader, %for.body48
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %for.body48 ], [ %indvars.iv97.ph, %for.body48.preheader ]
  %arrayidx52 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv102, i64 %indvars.iv97
  %27 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %sub = sub nsw i32 %27, %spec.select.lcssa
  store i32 %sub, ptr %arrayidx52, align 4, !tbaa !5
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %indvars.iv143
  br i1 %exitcond101.not, label %for.cond.cleanup47, label %for.body48, !llvm.loop !48

for.cond111.preheader.us.preheader:               ; preds = %for.cond.cleanup90
  %28 = load i32, ptr %arrayidx104, align 4, !tbaa !5
  %add = add nsw i32 %28, %ans.083
  %min.iters.check = icmp ult i64 %indvars.iv143, 4
  %n.vec = and i64 %indvars.iv143, -4
  %cmp.n = icmp eq i64 %indvars.iv143, %n.vec
  br label %for.cond111.preheader.us

for.cond111.preheader.us:                         ; preds = %for.cond111.preheader.us.preheader, %for.cond111.for.cond.cleanup113_crit_edge.us
  %indvars.iv128 = phi i64 [ 1, %for.cond111.preheader.us.preheader ], [ %indvars.iv.next129, %for.cond111.for.cond.cleanup113_crit_edge.us ]
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1
  br i1 %min.iters.check, label %for.body114.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond111.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond111.preheader.us ]
  %29 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next129, i64 %index
  %wide.load = load <4 x i32>, ptr %29, align 16, !tbaa !5
  %30 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv128, i64 %index
  store <4 x i32> %wide.load, ptr %30, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %31 = icmp eq i64 %index.next, %n.vec
  br i1 %31, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond111.for.cond.cleanup113_crit_edge.us, label %for.body114.us.preheader

for.body114.us.preheader:                         ; preds = %for.cond111.preheader.us, %middle.block
  %indvars.iv123.ph = phi i64 [ 0, %for.cond111.preheader.us ], [ %n.vec, %middle.block ]
  br label %for.body114.us

for.body114.us:                                   ; preds = %for.body114.us.preheader, %for.body114.us
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %for.body114.us ], [ %indvars.iv123.ph, %for.body114.us.preheader ]
  %arrayidx119.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next129, i64 %indvars.iv123
  %32 = load i32, ptr %arrayidx119.us, align 4, !tbaa !5
  %arrayidx123.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv128, i64 %indvars.iv123
  store i32 %32, ptr %arrayidx123.us, align 4, !tbaa !5
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %indvars.iv143
  br i1 %exitcond127.not, label %for.cond111.for.cond.cleanup113_crit_edge.us, label %for.body114.us, !llvm.loop !50

for.cond111.for.cond.cleanup113_crit_edge.us:     ; preds = %for.body114.us, %middle.block
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %indvars.iv143
  br i1 %exitcond132.not, label %for.cond136.preheader.us, label %for.cond111.preheader.us, !llvm.loop !51

for.body72.preheader:                             ; preds = %for.body72.preheader.preheader, %for.cond.cleanup90
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %for.cond.cleanup90 ], [ 0, %for.body72.preheader.preheader ]
  %arrayidx67 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv117
  %33 = load i32, ptr %arrayidx67, align 4, !tbaa !5
  br i1 %min.iters.check153, label %for.body72.preheader194, label %vector.ph154

vector.ph154:                                     ; preds = %for.body72.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %33, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph154
  %index158 = phi i64 [ 0, %vector.ph154 ], [ %index.next159, %vector.body157 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph154 ], [ %49, %vector.body157 ]
  %offset.idx = or disjoint i64 %index158, 1
  %34 = or disjoint i64 %index158, 2
  %35 = or disjoint i64 %index158, 3
  %36 = add i64 %index158, 4
  %37 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %offset.idx, i64 %indvars.iv117
  %38 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %34, i64 %indvars.iv117
  %39 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %35, i64 %indvars.iv117
  %40 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %36, i64 %indvars.iv117
  %41 = load i32, ptr %37, align 4, !tbaa !5
  %42 = load i32, ptr %38, align 4, !tbaa !5
  %43 = load i32, ptr %39, align 4, !tbaa !5
  %44 = load i32, ptr %40, align 4, !tbaa !5
  %45 = insertelement <4 x i32> poison, i32 %41, i64 0
  %46 = insertelement <4 x i32> %45, i32 %42, i64 1
  %47 = insertelement <4 x i32> %46, i32 %43, i64 2
  %48 = insertelement <4 x i32> %47, i32 %44, i64 3
  %49 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi, <4 x i32> %48)
  %index.next159 = add nuw i64 %index158, 4
  %50 = icmp eq i64 %index.next159, %n.vec156
  br i1 %50, label %middle.block160, label %vector.body157, !llvm.loop !52

middle.block160:                                  ; preds = %vector.body157
  %51 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %49)
  br i1 %cmp.n161, label %for.body91.lr.ph, label %for.body72.preheader194

for.body72.preheader194:                          ; preds = %for.body72.preheader, %middle.block160
  %indvars.iv107.ph = phi i64 [ 1, %for.body72.preheader ], [ %26, %middle.block160 ]
  %min64.067.ph = phi i32 [ %33, %for.body72.preheader ], [ %51, %middle.block160 ]
  br label %for.body72

for.body91.lr.ph:                                 ; preds = %for.body72, %middle.block160
  %spec.select54.lcssa = phi i32 [ %51, %middle.block160 ], [ %spec.select54, %for.body72 ]
  br label %for.body91

for.body72:                                       ; preds = %for.body72.preheader194, %for.body72
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %for.body72 ], [ %indvars.iv107.ph, %for.body72.preheader194 ]
  %min64.067 = phi i32 [ %spec.select54, %for.body72 ], [ %min64.067.ph, %for.body72.preheader194 ]
  %arrayidx76 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv107, i64 %indvars.iv117
  %52 = load i32, ptr %arrayidx76, align 4, !tbaa !5
  %spec.select54 = call i32 @llvm.smin.i32(i32 %min64.067, i32 %52)
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %indvars.iv143
  br i1 %exitcond111.not, label %for.body91.lr.ph, label %for.body72, !llvm.loop !53

for.cond.cleanup90:                               ; preds = %for.body91
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %indvars.iv143
  br i1 %exitcond121.not, label %for.cond111.preheader.us.preheader, label %for.body72.preheader, !llvm.loop !54

for.body91:                                       ; preds = %for.body91.lr.ph, %for.body91
  %indvars.iv112 = phi i64 [ 0, %for.body91.lr.ph ], [ %indvars.iv.next113, %for.body91 ]
  %arrayidx95 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv112, i64 %indvars.iv117
  %53 = load i32, ptr %arrayidx95, align 4, !tbaa !5
  %sub96 = sub nsw i32 %53, %spec.select54.lcssa
  store i32 %sub96, ptr %arrayidx95, align 4, !tbaa !5
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  %exitcond116.not = icmp eq i64 %indvars.iv.next113, %indvars.iv143
  br i1 %exitcond116.not, label %for.cond.cleanup90, label %for.body91, !llvm.loop !55

for.cond136.preheader.us:                         ; preds = %for.cond111.for.cond.cleanup113_crit_edge.us, %for.cond136.for.cond.cleanup138_crit_edge.us
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %for.cond136.for.cond.cleanup138_crit_edge.us ], [ 1, %for.cond111.for.cond.cleanup113_crit_edge.us ]
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1
  br label %for.body139.us

for.body139.us:                                   ; preds = %for.cond136.preheader.us, %for.body139.us
  %indvars.iv133 = phi i64 [ 0, %for.cond136.preheader.us ], [ %indvars.iv.next134, %for.body139.us ]
  %arrayidx144.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv133, i64 %indvars.iv.next139
  %54 = load i32, ptr %arrayidx144.us, align 4, !tbaa !5
  %arrayidx148.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv133, i64 %indvars.iv138
  store i32 %54, ptr %arrayidx148.us, align 4, !tbaa !5
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %indvars.iv143
  br i1 %exitcond137.not, label %for.cond136.for.cond.cleanup138_crit_edge.us, label %for.body139.us, !llvm.loop !56

for.cond136.for.cond.cleanup138_crit_edge.us:     ; preds = %for.body139.us
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %indvars.iv143
  br i1 %exitcond142.not, label %for.cond.cleanup133, label %for.cond136.preheader.us, !llvm.loop !57

for.cond.cleanup133:                              ; preds = %for.cond136.for.cond.cleanup138_crit_edge.us
  %indvars.iv.next144 = add nsw i64 %indvars.iv143, -1
  %cmp16 = icmp sgt i64 %indvars.iv143, 2
  %indvar.next = add i64 %indvar, 1
  br i1 %cmp16, label %for.cond20.preheader, label %for.cond.cleanup17, !llvm.loop !58
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
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !8, i64 0}
!16 = !{!17, !31, i64 240}
!17 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !18, i64 0, !28, i64 216, !7, i64 224, !29, i64 225, !30, i64 232, !31, i64 240, !32, i64 248, !33, i64 256}
!18 = !{!"_ZTSSt8ios_base", !19, i64 8, !19, i64 16, !20, i64 24, !21, i64 28, !21, i64 32, !22, i64 40, !24, i64 48, !7, i64 64, !6, i64 192, !25, i64 200, !26, i64 208}
!19 = !{!"long", !7, i64 0}
!20 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!21 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!22 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !23, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = !{!"_ZTSNSt8ios_base6_WordsE", !23, i64 0, !19, i64 8}
!25 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !23, i64 0}
!26 = !{!"_ZTSSt6locale", !27, i64 0}
!27 = !{!"p1 _ZTSNSt6locale5_ImplE", !23, i64 0}
!28 = !{!"p1 _ZTSSo", !23, i64 0}
!29 = !{!"bool", !7, i64 0}
!30 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !23, i64 0}
!31 = !{!"p1 _ZTSSt5ctypeIcE", !23, i64 0}
!32 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !23, i64 0}
!33 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !23, i64 0}
!34 = !{!35, !7, i64 56}
!35 = !{!"_ZTSSt5ctypeIcE", !36, i64 0, !37, i64 16, !29, i64 24, !38, i64 32, !38, i64 40, !39, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!36 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!37 = !{!"p1 _ZTS15__locale_struct", !23, i64 0}
!38 = !{!"p1 int", !23, i64 0}
!39 = !{!"p1 short", !23, i64 0}
!40 = !{!7, !7, i64 0}
!41 = distinct !{!41, !10, !11}
!42 = distinct !{!42, !10, !11, !43, !44}
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !{!"llvm.loop.unroll.runtime.disable"}
!45 = distinct !{!45, !10, !11, !43, !44}
!46 = distinct !{!46, !10, !11, !43}
!47 = distinct !{!47, !10, !11}
!48 = distinct !{!48, !10, !11, !43}
!49 = distinct !{!49, !10, !11, !43, !44}
!50 = distinct !{!50, !10, !11, !43}
!51 = distinct !{!51, !10, !11}
!52 = distinct !{!52, !10, !11, !43, !44}
!53 = distinct !{!53, !10, !11, !43}
!54 = distinct !{!54, !10, !11}
!55 = distinct !{!55, !10, !11}
!56 = distinct !{!56, !10, !11}
!57 = distinct !{!57, !10, !11}
!58 = distinct !{!58, !10, !11}
