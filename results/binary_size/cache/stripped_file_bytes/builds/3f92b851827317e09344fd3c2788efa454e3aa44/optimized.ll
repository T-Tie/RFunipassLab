; ModuleID = '<stdin>'
source_filename = "/tmp/tmpsisdh41s.cpp"
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
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp104 = icmp sgt i32 %0, 0
  br i1 %cmp104, label %for.cond1.preheader.lr.ph, label %for.end159

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %arrayidx103 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %0, %for.cond1.preheader.lr.ph ], [ %14, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %k.0105 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc158, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %cmp271 = icmp sgt i32 %1, 0
  br i1 %cmp271, label %for.cond4.preheader, label %for.cond.cleanup

for.cond13.preheader:                             ; preds = %for.inc10
  %sub = add i32 %5, -1
  %cmp14100 = icmp sgt i32 %5, 1
  br i1 %cmp14100, label %for.cond16.preheader, label %for.cond.cleanup

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc10
  %2 = phi i32 [ %5, %for.inc10 ], [ %1, %for.cond1.preheader ]
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %for.inc10 ], [ 0, %for.cond1.preheader ]
  %cmp569 = icmp sgt i32 %2, 0
  br i1 %cmp569, label %for.body6, label %for.cond4.preheader.for.inc10_crit_edge

for.cond4.preheader.for.inc10_crit_edge:          ; preds = %for.cond4.preheader
  %.pre = sext i32 %2 to i64
  br label %for.inc10

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond4.preheader ]
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv111, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp5, label %for.body6, label %for.inc10, !llvm.loop !9

for.inc10:                                        ; preds = %for.body6, %for.cond4.preheader.for.inc10_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond4.preheader.for.inc10_crit_edge ], [ %4, %for.body6 ]
  %5 = phi i32 [ %2, %for.cond4.preheader.for.inc10_crit_edge ], [ %3, %for.body6 ]
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  %cmp2 = icmp slt i64 %indvars.iv.next112, %.pre-phi
  br i1 %cmp2, label %for.cond4.preheader, label %for.cond13.preheader, !llvm.loop !12

for.cond16.preheader:                             ; preds = %for.cond13.preheader, %for.inc152
  %indvars.iv153 = phi i32 [ %indvars.iv.next154, %for.inc152 ], [ %sub, %for.cond13.preheader ]
  %indvars.iv117 = phi i32 [ %indvars.iv.next118, %for.inc152 ], [ %5, %for.cond13.preheader ]
  %q.0102 = phi i32 [ %inc153, %for.inc152 ], [ 0, %for.cond13.preheader ]
  %sum.0101 = phi i32 [ %add, %for.inc152 ], [ 0, %for.cond13.preheader ]
  %6 = zext i32 %indvars.iv117 to i64
  %7 = zext i32 %indvars.iv117 to i64
  %8 = zext i32 %indvars.iv117 to i64
  %9 = zext i32 %indvars.iv117 to i64
  %cmp1879 = icmp sle i32 %5, %q.0102
  br i1 %cmp1879, label %for.end101, label %for.body19.preheader

for.body19.preheader:                             ; preds = %for.cond16.preheader
  %wide.trip.count127 = zext i32 %indvars.iv117 to i64
  %min.iters.check205 = icmp ult i32 %indvars.iv117, 4
  %n.vec208 = and i64 %6, 4294967292
  %cmp.n217 = icmp eq i64 %n.vec208, %6
  %min.iters.check191 = icmp ult i32 %indvars.iv117, 4
  %n.vec194 = and i64 %7, 4294967292
  %cmp.n202 = icmp eq i64 %n.vec194, %7
  br label %for.body19

for.cond.cleanup:                                 ; preds = %for.inc152, %for.cond1.preheader, %for.cond13.preheader
  %sum.0.lcssa = phi i32 [ 0, %for.cond13.preheader ], [ 0, %for.cond1.preheader ], [ %add, %for.inc152 ]
  %call155 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0.lcssa)
  %vtable.i = load ptr, ptr %call155, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call155, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %10 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !16
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.cond.cleanup
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.cond.cleanup
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 56
  %11 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !34
  %tobool.not.i1.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 67
  %12 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %10)
  %vtable.i.i.i = load ptr, ptr %10, align 8, !tbaa !14
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %13 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %13(ptr noundef nonnull align 8 dereferenceable(570) %10, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %12, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call155, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc158 = add nuw nsw i32 %k.0105, 1
  %14 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc158, %14
  br i1 %cmp, label %for.cond1.preheader, label %for.end159, !llvm.loop !41

for.body61.preheader:                             ; preds = %for.inc55
  %wide.trip.count142 = zext i32 %indvars.iv117 to i64
  %min.iters.check180 = icmp ult i32 %indvars.iv117, 4
  %n.vec183 = and i64 %8, 4294967292
  %cmp.n188 = icmp eq i64 %n.vec183, %8
  br label %for.body61

for.body19:                                       ; preds = %for.body19.preheader, %for.inc55
  %indvars.iv124 = phi i64 [ 0, %for.body19.preheader ], [ %indvars.iv.next125, %for.inc55 ]
  %arrayidx21 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv124
  %15 = load i32, ptr %arrayidx21, align 16, !tbaa !5
  br i1 %min.iters.check205, label %for.body26.preheader, label %vector.ph206

vector.ph206:                                     ; preds = %for.body19
  %broadcast.splatinsert209 = insertelement <4 x i32> poison, i32 %15, i64 0
  %broadcast.splat210 = shufflevector <4 x i32> %broadcast.splatinsert209, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph206
  %index212 = phi i64 [ 0, %vector.ph206 ], [ %index.next215, %vector.body211 ]
  %vec.phi213 = phi <4 x i32> [ %broadcast.splat210, %vector.ph206 ], [ %17, %vector.body211 ]
  %16 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv124, i64 %index212
  %wide.load214 = load <4 x i32>, ptr %16, align 16, !tbaa !5
  %17 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load214, <4 x i32> %vec.phi213)
  %index.next215 = add nuw i64 %index212, 4
  %18 = icmp eq i64 %index.next215, %n.vec208
  br i1 %18, label %middle.block216, label %vector.body211, !llvm.loop !42

middle.block216:                                  ; preds = %vector.body211
  %19 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %17)
  br i1 %cmp.n217, label %for.body42.lr.ph, label %for.body26.preheader

for.body26.preheader:                             ; preds = %for.body19, %middle.block216
  %indvars.iv114.ph = phi i64 [ 0, %for.body19 ], [ %n.vec208, %middle.block216 ]
  %t.075.ph = phi i32 [ %15, %for.body19 ], [ %19, %middle.block216 ]
  br label %for.body26

for.body42.lr.ph:                                 ; preds = %for.body26, %middle.block216
  %spec.select.lcssa = phi i32 [ %19, %middle.block216 ], [ %spec.select, %for.body26 ]
  br i1 %min.iters.check191, label %for.body42.preheader, label %vector.ph192

vector.ph192:                                     ; preds = %for.body42.lr.ph
  %broadcast.splatinsert195 = insertelement <4 x i32> poison, i32 %spec.select.lcssa, i64 0
  %broadcast.splat196 = shufflevector <4 x i32> %broadcast.splatinsert195, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph192
  %index198 = phi i64 [ 0, %vector.ph192 ], [ %index.next200, %vector.body197 ]
  %20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv124, i64 %index198
  %wide.load199 = load <4 x i32>, ptr %20, align 16, !tbaa !5
  %21 = sub nsw <4 x i32> %wide.load199, %broadcast.splat196
  store <4 x i32> %21, ptr %20, align 16, !tbaa !5
  %index.next200 = add nuw i64 %index198, 4
  %22 = icmp eq i64 %index.next200, %n.vec194
  br i1 %22, label %middle.block201, label %vector.body197, !llvm.loop !45

middle.block201:                                  ; preds = %vector.body197
  br i1 %cmp.n202, label %for.inc55, label %for.body42.preheader

for.body42.preheader:                             ; preds = %for.body42.lr.ph, %middle.block201
  %indvars.iv119.ph = phi i64 [ 0, %for.body42.lr.ph ], [ %n.vec194, %middle.block201 ]
  br label %for.body42

for.body26:                                       ; preds = %for.body26.preheader, %for.body26
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %for.body26 ], [ %indvars.iv114.ph, %for.body26.preheader ]
  %t.075 = phi i32 [ %spec.select, %for.body26 ], [ %t.075.ph, %for.body26.preheader ]
  %arrayidx30 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv124, i64 %indvars.iv114
  %23 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %23, i32 %t.075)
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count127
  br i1 %exitcond.not, label %for.body42.lr.ph, label %for.body26, !llvm.loop !46

for.body42:                                       ; preds = %for.body42.preheader, %for.body42
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.body42 ], [ %indvars.iv119.ph, %for.body42.preheader ]
  %arrayidx46 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv124, i64 %indvars.iv119
  %24 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %sub47 = sub nsw i32 %24, %spec.select.lcssa
  store i32 %sub47, ptr %arrayidx46, align 4, !tbaa !5
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count127
  br i1 %exitcond123.not, label %for.inc55, label %for.body42, !llvm.loop !47

for.inc55:                                        ; preds = %for.body42, %middle.block201
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %for.body61.preheader, label %for.body19, !llvm.loop !48

for.body61:                                       ; preds = %for.body61.preheader, %for.inc99
  %indvars.iv139 = phi i64 [ 0, %for.body61.preheader ], [ %indvars.iv.next140, %for.inc99 ]
  %arrayidx64 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv139
  %25 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  br i1 %min.iters.check180, label %for.body68.preheader, label %vector.ph181

vector.ph181:                                     ; preds = %for.body61
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %25, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph181
  %index185 = phi i64 [ 0, %vector.ph181 ], [ %index.next186, %vector.body184 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph181 ], [ %41, %vector.body184 ]
  %26 = or disjoint i64 %index185, 1
  %27 = or disjoint i64 %index185, 2
  %28 = or disjoint i64 %index185, 3
  %29 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %index185, i64 %indvars.iv139
  %30 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %26, i64 %indvars.iv139
  %31 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %27, i64 %indvars.iv139
  %32 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %28, i64 %indvars.iv139
  %33 = load i32, ptr %29, align 4, !tbaa !5
  %34 = load i32, ptr %30, align 4, !tbaa !5
  %35 = load i32, ptr %31, align 4, !tbaa !5
  %36 = load i32, ptr %32, align 4, !tbaa !5
  %37 = insertelement <4 x i32> poison, i32 %33, i64 0
  %38 = insertelement <4 x i32> %37, i32 %34, i64 1
  %39 = insertelement <4 x i32> %38, i32 %35, i64 2
  %40 = insertelement <4 x i32> %39, i32 %36, i64 3
  %41 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %40, <4 x i32> %vec.phi)
  %index.next186 = add nuw i64 %index185, 4
  %42 = icmp eq i64 %index.next186, %n.vec183
  br i1 %42, label %middle.block187, label %vector.body184, !llvm.loop !49

middle.block187:                                  ; preds = %vector.body184
  %43 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %41)
  br i1 %cmp.n188, label %for.body86.lr.ph, label %for.body68.preheader

for.body68.preheader:                             ; preds = %for.body61, %middle.block187
  %indvars.iv129.ph = phi i64 [ 0, %for.body61 ], [ %n.vec183, %middle.block187 ]
  %t.284.ph = phi i32 [ %25, %for.body61 ], [ %43, %middle.block187 ]
  br label %for.body68

for.body86.lr.ph:                                 ; preds = %for.body68, %middle.block187
  %spec.select68.lcssa = phi i32 [ %43, %middle.block187 ], [ %spec.select68, %for.body68 ]
  br label %for.body86

for.body68:                                       ; preds = %for.body68.preheader, %for.body68
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %for.body68 ], [ %indvars.iv129.ph, %for.body68.preheader ]
  %t.284 = phi i32 [ %spec.select68, %for.body68 ], [ %t.284.ph, %for.body68.preheader ]
  %arrayidx72 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv129, i64 %indvars.iv139
  %44 = load i32, ptr %arrayidx72, align 4, !tbaa !5
  %spec.select68 = call i32 @llvm.smin.i32(i32 %44, i32 %t.284)
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count142
  br i1 %exitcond133.not, label %for.body86.lr.ph, label %for.body68, !llvm.loop !50

for.body86:                                       ; preds = %for.body86.lr.ph, %for.body86
  %indvars.iv134 = phi i64 [ 0, %for.body86.lr.ph ], [ %indvars.iv.next135, %for.body86 ]
  %arrayidx90 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv134, i64 %indvars.iv139
  %45 = load i32, ptr %arrayidx90, align 4, !tbaa !5
  %sub91 = sub nsw i32 %45, %spec.select68.lcssa
  store i32 %sub91, ptr %arrayidx90, align 4, !tbaa !5
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count142
  br i1 %exitcond138.not, label %for.inc99, label %for.body86, !llvm.loop !51

for.inc99:                                        ; preds = %for.body86
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count142
  br i1 %exitcond143.not, label %for.end101, label %for.body61, !llvm.loop !52

for.end101:                                       ; preds = %for.inc99, %for.cond16.preheader
  %46 = load i32, ptr %arrayidx103, align 4, !tbaa !5
  %add = add nsw i32 %46, %sum.0101
  %47 = sub nsw i32 %q.0102, %5
  %cmp10792 = icmp sgt i32 %47, -3
  %brmerge = or i1 %cmp10792, %cmp1879
  br i1 %brmerge, label %for.inc152, label %for.cond109.preheader.us.preheader

for.cond109.preheader.us.preheader:               ; preds = %for.end101
  %wide.trip.count155 = zext i32 %indvars.iv153 to i64
  %wide.trip.count148 = zext i32 %indvars.iv117 to i64
  %min.iters.check = icmp ult i32 %indvars.iv117, 4
  %n.vec = and i64 %9, 4294967292
  %cmp.n = icmp eq i64 %n.vec, %9
  br label %for.cond109.preheader.us

for.cond109.preheader.us:                         ; preds = %for.cond109.preheader.us.preheader, %for.cond109.for.inc125_crit_edge.us
  %indvars.iv150 = phi i64 [ 1, %for.cond109.preheader.us.preheader ], [ %indvars.iv.next151, %for.cond109.for.inc125_crit_edge.us ]
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1
  br i1 %min.iters.check, label %for.body112.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond109.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond109.preheader.us ]
  %48 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next151, i64 %index
  %wide.load = load <4 x i32>, ptr %48, align 16, !tbaa !5
  %49 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv150, i64 %index
  store <4 x i32> %wide.load, ptr %49, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %50 = icmp eq i64 %index.next, %n.vec
  br i1 %50, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond109.for.inc125_crit_edge.us, label %for.body112.us.preheader

for.body112.us.preheader:                         ; preds = %for.cond109.preheader.us, %middle.block
  %indvars.iv145.ph = phi i64 [ 0, %for.cond109.preheader.us ], [ %n.vec, %middle.block ]
  br label %for.body112.us

for.body112.us:                                   ; preds = %for.body112.us.preheader, %for.body112.us
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %for.body112.us ], [ %indvars.iv145.ph, %for.body112.us.preheader ]
  %arrayidx117.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next151, i64 %indvars.iv145
  %51 = load i32, ptr %arrayidx117.us, align 4, !tbaa !5
  %arrayidx121.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv150, i64 %indvars.iv145
  store i32 %51, ptr %arrayidx121.us, align 4, !tbaa !5
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count148
  br i1 %exitcond149.not, label %for.cond109.for.inc125_crit_edge.us, label %for.body112.us, !llvm.loop !54

for.cond109.for.inc125_crit_edge.us:              ; preds = %for.body112.us, %middle.block
  %exitcond156.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count155
  br i1 %exitcond156.not, label %for.cond128.preheader, label %for.cond109.preheader.us, !llvm.loop !55

for.cond128.preheader:                            ; preds = %for.cond109.for.inc125_crit_edge.us
  %brmerge176 = or i1 %cmp10792, %cmp1879
  br i1 %brmerge176, label %for.inc152, label %for.cond133.preheader.us.preheader

for.cond133.preheader.us.preheader:               ; preds = %for.cond128.preheader
  %wide.trip.count165 = zext i32 %indvars.iv153 to i64
  %wide.trip.count160 = zext i32 %indvars.iv117 to i64
  br label %for.cond133.preheader.us

for.cond133.preheader.us:                         ; preds = %for.cond133.preheader.us.preheader, %for.cond133.for.inc149_crit_edge.us
  %indvars.iv162 = phi i64 [ 1, %for.cond133.preheader.us.preheader ], [ %indvars.iv.next163, %for.cond133.for.inc149_crit_edge.us ]
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1
  br label %for.body136.us

for.body136.us:                                   ; preds = %for.cond133.preheader.us, %for.body136.us
  %indvars.iv157 = phi i64 [ 0, %for.cond133.preheader.us ], [ %indvars.iv.next158, %for.body136.us ]
  %arrayidx141.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv157, i64 %indvars.iv.next163
  %52 = load i32, ptr %arrayidx141.us, align 4, !tbaa !5
  %arrayidx145.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv157, i64 %indvars.iv162
  store i32 %52, ptr %arrayidx145.us, align 4, !tbaa !5
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1
  %exitcond161.not = icmp eq i64 %indvars.iv.next158, %wide.trip.count160
  br i1 %exitcond161.not, label %for.cond133.for.inc149_crit_edge.us, label %for.body136.us, !llvm.loop !56

for.cond133.for.inc149_crit_edge.us:              ; preds = %for.body136.us
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count165
  br i1 %exitcond166.not, label %for.inc152, label %for.cond133.preheader.us, !llvm.loop !57

for.inc152:                                       ; preds = %for.cond133.for.inc149_crit_edge.us, %for.cond128.preheader, %for.end101
  %inc153 = add nuw nsw i32 %q.0102, 1
  %indvars.iv.next118 = add i32 %indvars.iv117, -1
  %indvars.iv.next154 = add i32 %indvars.iv153, -1
  %exitcond167.not = icmp eq i32 %inc153, %sub
  br i1 %exitcond167.not, label %for.cond.cleanup, label %for.cond16.preheader, !llvm.loop !58

for.end159:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11, !13}
!13 = !{!"llvm.loop.unswitch.partial.disable"}
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
!47 = distinct !{!47, !10, !11, !43}
!48 = distinct !{!48, !10, !11}
!49 = distinct !{!49, !10, !11, !43, !44}
!50 = distinct !{!50, !10, !11, !43}
!51 = distinct !{!51, !10, !11}
!52 = distinct !{!52, !10, !11}
!53 = distinct !{!53, !10, !11, !43, !44}
!54 = distinct !{!54, !10, !11, !43}
!55 = distinct !{!55, !10, !11}
!56 = distinct !{!56, !10, !11}
!57 = distinct !{!57, !10, !11}
!58 = distinct !{!58, !10, !11}
