; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjv428e67.cpp"
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
  %cmp94 = icmp sgt i32 %0, 0
  br i1 %cmp94, label %for.cond1.preheader, label %for.cond.cleanup

for.cond1.preheader:                              ; preds = %entry, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %41, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %0, %entry ]
  %k.095 = phi i32 [ %inc137, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 0, %entry ]
  %cmp251 = icmp sgt i32 %1, 0
  br i1 %cmp251, label %for.cond5.preheader, label %for.cond.cleanup17

for.cond.cleanup:                                 ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
  ret i32 0

for.cond15.preheader:                             ; preds = %for.cond.cleanup7
  %cmp1688 = icmp sgt i32 %3, 1
  br i1 %cmp1688, label %for.cond20.preheader.lr.ph, label %for.cond.cleanup17

for.cond20.preheader.lr.ph:                       ; preds = %for.cond15.preheader
  %sub = add nsw i32 %3, -1
  %wide.trip.count148 = zext nneg i32 %sub to i64
  %wide.trip.count126 = zext nneg i32 %3 to i64
  %wide.trip.count141 = zext nneg i32 %3 to i64
  br label %for.body23.us.preheader

for.cond5.preheader:                              ; preds = %for.cond1.preheader, %for.cond.cleanup7
  %2 = phi i32 [ %3, %for.cond.cleanup7 ], [ %1, %for.cond1.preheader ]
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %for.cond.cleanup7 ], [ 0, %for.cond1.preheader ]
  %cmp649 = icmp sgt i32 %2, 0
  br i1 %cmp649, label %for.body8, label %for.cond5.preheader.for.cond.cleanup7_crit_edge

for.cond5.preheader.for.cond.cleanup7_crit_edge:  ; preds = %for.cond5.preheader
  %.pre = sext i32 %2 to i64
  br label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.body8, %for.cond5.preheader.for.cond.cleanup7_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond5.preheader.for.cond.cleanup7_crit_edge ], [ %5, %for.body8 ]
  %3 = phi i32 [ %2, %for.cond5.preheader.for.cond.cleanup7_crit_edge ], [ %4, %for.body8 ]
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %cmp2 = icmp slt i64 %indvars.iv.next102, %.pre-phi
  br i1 %cmp2, label %for.cond5.preheader, label %for.cond15.preheader, !llvm.loop !9

for.body8:                                        ; preds = %for.cond5.preheader, %for.body8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.cond5.preheader ]
  %arrayidx10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv101, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp6 = icmp slt i64 %indvars.iv.next, %5
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7, !llvm.loop !13

for.body23.us.preheader:                          ; preds = %for.cond20.preheader.lr.ph, %for.cond.cleanup72
  %indvars.iv143 = phi i64 [ 0, %for.cond20.preheader.lr.ph ], [ %indvars.iv.next144, %for.cond.cleanup72 ]
  %indvars.iv107 = phi i64 [ 1, %for.cond20.preheader.lr.ph ], [ %indvars.iv.next108, %for.cond.cleanup72 ]
  %total.089 = phi i32 [ 0, %for.cond20.preheader.lr.ph ], [ %add130, %for.cond.cleanup72 ]
  %6 = trunc i64 %indvars.iv143 to i32
  %7 = add i32 %6, 2
  %smax172 = call i32 @llvm.smax.i32(i32 %3, i32 %7)
  %8 = trunc i64 %indvars.iv143 to i32
  %reass.sub = sub i32 %smax172, %8
  %9 = add i32 %reass.sub, -2
  %10 = zext i32 %9 to i64
  %11 = add nuw nsw i64 %10, 1
  %12 = trunc i64 %indvars.iv143 to i32
  %13 = add i32 %12, 2
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 %13)
  %14 = trunc i64 %indvars.iv143 to i32
  %reass.sub190 = sub i32 %smax, %14
  %15 = add i32 %reass.sub190, -2
  %16 = zext i32 %15 to i64
  %17 = add nuw nsw i64 %16, 1
  %18 = xor i64 %indvars.iv143, -1
  %19 = add nsw i64 %18, %wide.trip.count126
  %min.iters.check174 = icmp ult i32 %9, 3
  %n.vec177 = and i64 %11, 8589934588
  %20 = add nuw i64 %indvars.iv107, %n.vec177
  %cmp.n187 = icmp eq i64 %11, %n.vec177
  %min.iters.check158 = icmp ult i32 %15, 3
  %n.vec161 = and i64 %17, 8589934588
  %21 = add nuw i64 %indvars.iv107, %n.vec161
  %cmp.n169 = icmp eq i64 %17, %n.vec161
  br label %for.body23.us

for.body23.us:                                    ; preds = %for.body23.us.preheader, %for.inc66.us
  %indvars.iv123 = phi i64 [ 0, %for.body23.us.preheader ], [ %indvars.iv.next124, %for.inc66.us ]
  %22 = add nuw i64 %indvars.iv123, 4294967295
  %23 = and i64 %22, 4294967295
  %or.cond.not.us = icmp samesign ult i64 %23, %indvars.iv143
  br i1 %or.cond.not.us, label %for.inc66.us, label %if.end.us

if.end.us:                                        ; preds = %for.body23.us
  %arrayidx27.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv123
  %24 = load i32, ptr %arrayidx27.us, align 16, !tbaa !5
  br i1 %min.iters.check174, label %for.body33.us.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %if.end.us
  %broadcast.splatinsert178 = insertelement <4 x i32> poison, i32 %24, i64 0
  %broadcast.splat179 = shufflevector <4 x i32> %broadcast.splatinsert178, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph175
  %index181 = phi i64 [ 0, %vector.ph175 ], [ %index.next185, %vector.body180 ]
  %vec.phi182 = phi <4 x i32> [ %broadcast.splat179, %vector.ph175 ], [ %26, %vector.body180 ]
  %offset.idx183 = add i64 %indvars.iv107, %index181
  %25 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv123, i64 %offset.idx183
  %wide.load184 = load <4 x i32>, ptr %25, align 4, !tbaa !5
  %26 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load184, <4 x i32> %vec.phi182)
  %index.next185 = add nuw i64 %index181, 4
  %27 = icmp eq i64 %index.next185, %n.vec177
  br i1 %27, label %middle.block186, label %vector.body180, !llvm.loop !14

middle.block186:                                  ; preds = %vector.body180
  %28 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %26)
  br i1 %cmp.n187, label %for.body57.us.preheader, label %for.body33.us.preheader

for.body33.us.preheader:                          ; preds = %if.end.us, %middle.block186
  %indvars.iv117.ph = phi i64 [ %indvars.iv107, %if.end.us ], [ %20, %middle.block186 ]
  %minValue.054.us.ph = phi i32 [ %24, %if.end.us ], [ %28, %middle.block186 ]
  br label %for.body33.us

for.body57.us:                                    ; preds = %for.body57.us.preheader192, %for.body57.us
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %for.body57.us ], [ %indvars.iv120.ph, %for.body57.us.preheader192 ]
  %arrayidx61.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv123, i64 %indvars.iv120
  %29 = load i32, ptr %arrayidx61.us, align 4, !tbaa !5
  %sub62.us = sub nsw i32 %29, %spec.select.us.lcssa
  store i32 %sub62.us, ptr %arrayidx61.us, align 4, !tbaa !5
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  %30 = trunc nuw i64 %indvars.iv.next121 to i32
  %cmp55.us = icmp sgt i32 %3, %30
  br i1 %cmp55.us, label %for.body57.us, label %for.inc66.us, !llvm.loop !17

for.body33.us:                                    ; preds = %for.body33.us.preheader, %for.body33.us
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %for.body33.us ], [ %indvars.iv117.ph, %for.body33.us.preheader ]
  %minValue.054.us = phi i32 [ %spec.select.us, %for.body33.us ], [ %minValue.054.us.ph, %for.body33.us.preheader ]
  %arrayidx37.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv123, i64 %indvars.iv117
  %31 = load i32, ptr %arrayidx37.us, align 4, !tbaa !5
  %spec.select.us = call i32 @llvm.smin.i32(i32 %31, i32 %minValue.054.us)
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  %32 = trunc nuw i64 %indvars.iv.next118 to i32
  %cmp31.us = icmp sgt i32 %3, %32
  br i1 %cmp31.us, label %for.body33.us, label %for.body57.us.preheader, !llvm.loop !18

for.inc66.us:                                     ; preds = %for.body57.us, %middle.block168, %for.body23.us
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %for.body73.preheader, label %for.body23.us, !llvm.loop !19

for.body73.preheader:                             ; preds = %for.inc66.us
  %min.iters.check = icmp ult i64 %19, 4
  %n.vec = and i64 %19, -4
  %33 = add i64 %indvars.iv107, %n.vec
  %cmp.n = icmp eq i64 %19, %n.vec
  br label %for.body73

for.body57.us.preheader:                          ; preds = %for.body33.us, %middle.block186
  %spec.select.us.lcssa = phi i32 [ %28, %middle.block186 ], [ %spec.select.us, %for.body33.us ]
  %sub51.us = sub nsw i32 %24, %spec.select.us.lcssa
  store i32 %sub51.us, ptr %arrayidx27.us, align 16, !tbaa !5
  br i1 %min.iters.check158, label %for.body57.us.preheader192, label %vector.ph159

vector.ph159:                                     ; preds = %for.body57.us.preheader
  %broadcast.splatinsert162 = insertelement <4 x i32> poison, i32 %spec.select.us.lcssa, i64 0
  %broadcast.splat163 = shufflevector <4 x i32> %broadcast.splatinsert162, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph159
  %index165 = phi i64 [ 0, %vector.ph159 ], [ %index.next167, %vector.body164 ]
  %offset.idx166 = add i64 %indvars.iv107, %index165
  %34 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv123, i64 %offset.idx166
  %wide.load = load <4 x i32>, ptr %34, align 4, !tbaa !5
  %35 = sub nsw <4 x i32> %wide.load, %broadcast.splat163
  store <4 x i32> %35, ptr %34, align 4, !tbaa !5
  %index.next167 = add nuw i64 %index165, 4
  %36 = icmp eq i64 %index.next167, %n.vec161
  br i1 %36, label %middle.block168, label %vector.body164, !llvm.loop !20

middle.block168:                                  ; preds = %vector.body164
  br i1 %cmp.n169, label %for.inc66.us, label %for.body57.us.preheader192

for.body57.us.preheader192:                       ; preds = %for.body57.us.preheader, %middle.block168
  %indvars.iv120.ph = phi i64 [ %indvars.iv107, %for.body57.us.preheader ], [ %21, %middle.block168 ]
  br label %for.body57.us

for.cond.cleanup17:                               ; preds = %for.cond.cleanup72, %for.cond1.preheader, %for.cond15.preheader
  %total.0.lcssa = phi i32 [ 0, %for.cond15.preheader ], [ 0, %for.cond1.preheader ], [ %add130, %for.cond.cleanup72 ]
  %call134 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %total.0.lcssa)
  %vtable.i = load ptr, ptr %call134, align 8, !tbaa !21
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call134, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %37 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !23
  %tobool.not.i.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.cond.cleanup17
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.cond.cleanup17
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %37, i64 56
  %38 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !41
  %tobool.not.i1.i.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %37, i64 67
  %39 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !47
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %37)
  %vtable.i.i.i = load ptr, ptr %37, align 8, !tbaa !21
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %40 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %40(ptr noundef nonnull align 8 dereferenceable(570) %37, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %39, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call134, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc137 = add nuw nsw i32 %k.095, 1
  %41 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc137, %41
  br i1 %cmp, label %for.cond1.preheader, label %for.cond.cleanup, !llvm.loop !48

for.cond.cleanup72:                               ; preds = %for.inc121
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1
  %arrayidx129 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next144, i64 %indvars.iv.next144
  %42 = load i32, ptr %arrayidx129, align 4, !tbaa !5
  %add130 = add nsw i32 %42, %total.089
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  %exitcond149.not = icmp eq i64 %indvars.iv.next144, %wide.trip.count148
  br i1 %exitcond149.not, label %for.cond.cleanup17, label %for.body23.us.preheader, !llvm.loop !49

for.body73:                                       ; preds = %for.body73.preheader, %for.inc121
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %for.inc121 ], [ 0, %for.body73.preheader ]
  %43 = add nuw i64 %indvars.iv138, 4294967295
  %44 = and i64 %43, 4294967295
  %or.cond47.not = icmp samesign ult i64 %44, %indvars.iv143
  br i1 %or.cond47.not, label %for.inc121, label %for.body88.preheader

for.body88.preheader:                             ; preds = %for.body73
  %arrayidx82 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv138
  %45 = load i32, ptr %arrayidx82, align 4, !tbaa !5
  br i1 %min.iters.check, label %for.body88.preheader191, label %vector.ph

vector.ph:                                        ; preds = %for.body88.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %45, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %61, %vector.body ]
  %offset.idx = add i64 %indvars.iv107, %index
  %46 = add i64 %offset.idx, 1
  %47 = add i64 %offset.idx, 2
  %48 = add i64 %offset.idx, 3
  %49 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %offset.idx, i64 %indvars.iv138
  %50 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %46, i64 %indvars.iv138
  %51 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %47, i64 %indvars.iv138
  %52 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %48, i64 %indvars.iv138
  %53 = load i32, ptr %49, align 4, !tbaa !5
  %54 = load i32, ptr %50, align 4, !tbaa !5
  %55 = load i32, ptr %51, align 4, !tbaa !5
  %56 = load i32, ptr %52, align 4, !tbaa !5
  %57 = insertelement <4 x i32> poison, i32 %53, i64 0
  %58 = insertelement <4 x i32> %57, i32 %54, i64 1
  %59 = insertelement <4 x i32> %58, i32 %55, i64 2
  %60 = insertelement <4 x i32> %59, i32 %56, i64 3
  %61 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %60, <4 x i32> %vec.phi)
  %index.next = add nuw i64 %index, 4
  %62 = icmp eq i64 %index.next, %n.vec
  br i1 %62, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %63 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %61)
  br i1 %cmp.n, label %for.body112.preheader, label %for.body88.preheader191

for.body88.preheader191:                          ; preds = %for.body88.preheader, %middle.block
  %indvars.iv128.ph = phi i64 [ %indvars.iv107, %for.body88.preheader ], [ %33, %middle.block ]
  %minValue79.081.ph = phi i32 [ %45, %for.body88.preheader ], [ %63, %middle.block ]
  br label %for.body88

for.body112.preheader:                            ; preds = %for.body88, %middle.block
  %spec.select48.lcssa = phi i32 [ %63, %middle.block ], [ %spec.select48, %for.body88 ]
  %sub106 = sub nsw i32 %45, %spec.select48.lcssa
  store i32 %sub106, ptr %arrayidx82, align 4, !tbaa !5
  br label %for.body112

for.body88:                                       ; preds = %for.body88.preheader191, %for.body88
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %for.body88 ], [ %indvars.iv128.ph, %for.body88.preheader191 ]
  %minValue79.081 = phi i32 [ %spec.select48, %for.body88 ], [ %minValue79.081.ph, %for.body88.preheader191 ]
  %arrayidx92 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv128, i64 %indvars.iv138
  %64 = load i32, ptr %arrayidx92, align 4, !tbaa !5
  %spec.select48 = call i32 @llvm.smin.i32(i32 %64, i32 %minValue79.081)
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count141
  br i1 %exitcond132.not, label %for.body112.preheader, label %for.body88, !llvm.loop !51

for.body112:                                      ; preds = %for.body112.preheader, %for.body112
  %indvars.iv133 = phi i64 [ %indvars.iv107, %for.body112.preheader ], [ %indvars.iv.next134, %for.body112 ]
  %arrayidx116 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv133, i64 %indvars.iv138
  %65 = load i32, ptr %arrayidx116, align 4, !tbaa !5
  %sub117 = sub nsw i32 %65, %spec.select48.lcssa
  store i32 %sub117, ptr %arrayidx116, align 4, !tbaa !5
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count141
  br i1 %exitcond137.not, label %for.inc121, label %for.body112, !llvm.loop !52

for.inc121:                                       ; preds = %for.body112, %for.body73
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %for.cond.cleanup72, label %for.body73, !llvm.loop !53
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

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
!17 = distinct !{!17, !10, !11, !15}
!18 = distinct !{!18, !10, !11, !15}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11, !15, !16}
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !8, i64 0}
!23 = !{!24, !38, i64 240}
!24 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !25, i64 0, !35, i64 216, !7, i64 224, !36, i64 225, !37, i64 232, !38, i64 240, !39, i64 248, !40, i64 256}
!25 = !{!"_ZTSSt8ios_base", !26, i64 8, !26, i64 16, !27, i64 24, !28, i64 28, !28, i64 32, !29, i64 40, !31, i64 48, !7, i64 64, !6, i64 192, !32, i64 200, !33, i64 208}
!26 = !{!"long", !7, i64 0}
!27 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!28 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!29 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !30, i64 0}
!30 = !{!"any pointer", !7, i64 0}
!31 = !{!"_ZTSNSt8ios_base6_WordsE", !30, i64 0, !26, i64 8}
!32 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !30, i64 0}
!33 = !{!"_ZTSSt6locale", !34, i64 0}
!34 = !{!"p1 _ZTSNSt6locale5_ImplE", !30, i64 0}
!35 = !{!"p1 _ZTSSo", !30, i64 0}
!36 = !{!"bool", !7, i64 0}
!37 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !30, i64 0}
!38 = !{!"p1 _ZTSSt5ctypeIcE", !30, i64 0}
!39 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !30, i64 0}
!40 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !30, i64 0}
!41 = !{!42, !7, i64 56}
!42 = !{!"_ZTSSt5ctypeIcE", !43, i64 0, !44, i64 16, !36, i64 24, !45, i64 32, !45, i64 40, !46, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!43 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!44 = !{!"p1 _ZTS15__locale_struct", !30, i64 0}
!45 = !{!"p1 int", !30, i64 0}
!46 = !{!"p1 short", !30, i64 0}
!47 = !{!7, !7, i64 0}
!48 = distinct !{!48, !10, !11}
!49 = distinct !{!49, !10, !11}
!50 = distinct !{!50, !10, !11, !15, !16}
!51 = distinct !{!51, !10, !11, !15}
!52 = distinct !{!52, !10, !11}
!53 = distinct !{!53, !10, !11}
