; ModuleID = '<stdin>'
source_filename = "/tmp/tmpw6x4t8wy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@sum = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp10 = icmp sgt i32 %0, 0
  br i1 %cmp10, label %for.cond1.preheader, label %for.end17

for.cond1.preheader:                              ; preds = %entry, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %11, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %0, %entry ]
  %i.011 = phi i32 [ %inc16, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 0, %entry ]
  %cmp28 = icmp sgt i32 %1, 0
  br i1 %cmp28, label %for.cond4.preheader, label %for.end12

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc10
  %2 = phi i32 [ %5, %for.inc10 ], [ %1, %for.cond1.preheader ]
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.inc10 ], [ 0, %for.cond1.preheader ]
  %cmp56 = icmp sgt i32 %2, 0
  br i1 %cmp56, label %for.body6, label %for.cond4.preheader.for.inc10_crit_edge

for.cond4.preheader.for.inc10_crit_edge:          ; preds = %for.cond4.preheader
  %.pre = sext i32 %2 to i64
  br label %for.inc10

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond4.preheader ]
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv15, i64 %indvars.iv
  %call9 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr @n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp5, label %for.body6, label %for.inc10, !llvm.loop !9

for.inc10:                                        ; preds = %for.body6, %for.cond4.preheader.for.inc10_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond4.preheader.for.inc10_crit_edge ], [ %4, %for.body6 ]
  %5 = phi i32 [ %2, %for.cond4.preheader.for.inc10_crit_edge ], [ %3, %for.body6 ]
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %cmp2 = icmp slt i64 %indvars.iv.next16, %.pre-phi
  br i1 %cmp2, label %for.cond4.preheader, label %for.end12, !llvm.loop !12

for.end12:                                        ; preds = %for.inc10, %for.cond1.preheader
  %.lcssa = phi i32 [ %1, %for.cond1.preheader ], [ %5, %for.inc10 ]
  store i32 %.lcssa, ptr @b, align 4, !tbaa !5
  tail call void @_Z6rezerov()
  %6 = load i32, ptr @sum, align 4, !tbaa !5
  %call13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %6)
  %vtable.i = load ptr, ptr %call13, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call13, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %7 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !16
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end12
  tail call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end12
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 56
  %8 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !34
  %tobool.not.i1.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 67
  %9 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %7)
  %vtable.i.i.i = load ptr, ptr %7, align 8, !tbaa !14
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %10 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = tail call noundef signext i8 %10(ptr noundef nonnull align 8 dereferenceable(570) %7, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %9, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call13, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  store i32 0, ptr @sum, align 4, !tbaa !5
  %inc16 = add nuw nsw i32 %i.011, 1
  %11 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc16, %11
  br i1 %cmp, label %for.cond1.preheader, label %for.end17, !llvm.loop !41

for.end17:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z6rezerov() local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %b.promoted = load i32, ptr @b, align 4
  %cmp50 = icmp sgt i32 %0, 1
  br i1 %cmp50, label %for.cond1.preheader.preheader, label %for.end70

for.cond1.preheader.preheader:                    ; preds = %entry
  %sum.promoted = load i32, ptr @sum, align 4
  %1 = add nsw i32 %0, -2
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.preheader, %_Z4delev.exit
  %k.053 = phi i32 [ %inc69, %_Z4delev.exit ], [ 0, %for.cond1.preheader.preheader ]
  %add.i4852 = phi i32 [ %add.i83, %_Z4delev.exit ], [ %sum.promoted, %for.cond1.preheader.preheader ]
  %sub674951 = phi i32 [ %sub67.pre-phi, %_Z4delev.exit ], [ %b.promoted, %for.cond1.preheader.preheader ]
  %2 = zext i32 %sub674951 to i64
  %3 = zext i32 %sub674951 to i64
  %4 = zext i32 %sub674951 to i64
  %5 = xor i32 %k.053, -1
  %6 = add i32 %b.promoted, %5
  %7 = zext i32 %6 to i64
  %8 = add nsw i64 %7, -1
  %cmp237 = icmp sgt i32 %sub674951, 0
  br i1 %cmp237, label %for.body3.preheader, label %for.end66._Z4delev.exit_crit_edge

for.body3.preheader:                              ; preds = %for.cond1.preheader
  %wide.trip.count63 = zext nneg i32 %sub674951 to i64
  %min.iters.check111 = icmp ult i32 %sub674951, 4
  %n.vec114 = and i64 %2, 2147483644
  %cmp.n123 = icmp eq i64 %n.vec114, %2
  %min.iters.check97 = icmp ult i32 %sub674951, 4
  %n.vec100 = and i64 %3, 2147483644
  %cmp.n108 = icmp eq i64 %n.vec100, %3
  br label %for.body3

for.body33.preheader:                             ; preds = %for.inc28
  %wide.trip.count78 = zext nneg i32 %sub674951 to i64
  %min.iters.check86 = icmp ult i32 %sub674951, 4
  %n.vec89 = and i64 %4, 2147483644
  %cmp.n94 = icmp eq i64 %n.vec89, %4
  br label %for.body33

for.body3:                                        ; preds = %for.body3.preheader, %for.inc28
  %indvars.iv60 = phi i64 [ 0, %for.body3.preheader ], [ %indvars.iv.next61, %for.inc28 ]
  %arrayidx = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv60
  %9 = load i32, ptr %arrayidx, align 16, !tbaa !5
  br i1 %min.iters.check111, label %for.body7.preheader, label %vector.ph112

vector.ph112:                                     ; preds = %for.body3
  %broadcast.splatinsert115 = insertelement <4 x i32> poison, i32 %9, i64 0
  %broadcast.splat116 = shufflevector <4 x i32> %broadcast.splatinsert115, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph112
  %index118 = phi i64 [ 0, %vector.ph112 ], [ %index.next121, %vector.body117 ]
  %vec.phi119 = phi <4 x i32> [ %broadcast.splat116, %vector.ph112 ], [ %11, %vector.body117 ]
  %10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv60, i64 %index118
  %wide.load120 = load <4 x i32>, ptr %10, align 16, !tbaa !5
  %11 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load120, <4 x i32> %vec.phi119)
  %index.next121 = add nuw i64 %index118, 4
  %12 = icmp eq i64 %index.next121, %n.vec114
  br i1 %12, label %middle.block122, label %vector.body117, !llvm.loop !42

middle.block122:                                  ; preds = %vector.body117
  %13 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %11)
  br i1 %cmp.n123, label %for.body19.lr.ph, label %for.body7.preheader

for.body7.preheader:                              ; preds = %for.body3, %middle.block122
  %indvars.iv.ph = phi i64 [ 0, %for.body3 ], [ %n.vec114, %middle.block122 ]
  %min.034.ph = phi i32 [ %9, %for.body3 ], [ %13, %middle.block122 ]
  br label %for.body7

for.body19.lr.ph:                                 ; preds = %for.body7, %middle.block122
  %spec.select.lcssa = phi i32 [ %13, %middle.block122 ], [ %spec.select, %for.body7 ]
  br i1 %min.iters.check97, label %for.body19.preheader, label %vector.ph98

vector.ph98:                                      ; preds = %for.body19.lr.ph
  %broadcast.splatinsert101 = insertelement <4 x i32> poison, i32 %spec.select.lcssa, i64 0
  %broadcast.splat102 = shufflevector <4 x i32> %broadcast.splatinsert101, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph98
  %index104 = phi i64 [ 0, %vector.ph98 ], [ %index.next106, %vector.body103 ]
  %14 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv60, i64 %index104
  %wide.load105 = load <4 x i32>, ptr %14, align 16, !tbaa !5
  %15 = sub nsw <4 x i32> %wide.load105, %broadcast.splat102
  store <4 x i32> %15, ptr %14, align 16, !tbaa !5
  %index.next106 = add nuw i64 %index104, 4
  %16 = icmp eq i64 %index.next106, %n.vec100
  br i1 %16, label %middle.block107, label %vector.body103, !llvm.loop !45

middle.block107:                                  ; preds = %vector.body103
  br i1 %cmp.n108, label %for.inc28, label %for.body19.preheader

for.body19.preheader:                             ; preds = %for.body19.lr.ph, %middle.block107
  %indvars.iv55.ph = phi i64 [ 0, %for.body19.lr.ph ], [ %n.vec100, %middle.block107 ]
  br label %for.body19

for.body7:                                        ; preds = %for.body7.preheader, %for.body7
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body7 ], [ %indvars.iv.ph, %for.body7.preheader ]
  %min.034 = phi i32 [ %spec.select, %for.body7 ], [ %min.034.ph, %for.body7.preheader ]
  %arrayidx11 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv60, i64 %indvars.iv
  %17 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %17, i32 %min.034)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count63
  br i1 %exitcond.not, label %for.body19.lr.ph, label %for.body7, !llvm.loop !46

for.body19:                                       ; preds = %for.body19.preheader, %for.body19
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.body19 ], [ %indvars.iv55.ph, %for.body19.preheader ]
  %arrayidx23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv60, i64 %indvars.iv55
  %18 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %sub24 = sub nsw i32 %18, %spec.select.lcssa
  store i32 %sub24, ptr %arrayidx23, align 4, !tbaa !5
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count63
  br i1 %exitcond59.not, label %for.inc28, label %for.body19, !llvm.loop !47

for.inc28:                                        ; preds = %for.body19, %middle.block107
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %for.body33.preheader, label %for.body3, !llvm.loop !48

for.body33:                                       ; preds = %for.body33.preheader, %for.inc64
  %indvars.iv75 = phi i64 [ 0, %for.body33.preheader ], [ %indvars.iv.next76, %for.inc64 ]
  %arrayidx35 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv75
  %19 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  br i1 %min.iters.check86, label %for.body38.preheader, label %vector.ph87

vector.ph87:                                      ; preds = %for.body33
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %19, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph87
  %index91 = phi i64 [ 0, %vector.ph87 ], [ %index.next92, %vector.body90 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph87 ], [ %35, %vector.body90 ]
  %20 = or disjoint i64 %index91, 1
  %21 = or disjoint i64 %index91, 2
  %22 = or disjoint i64 %index91, 3
  %23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %index91, i64 %indvars.iv75
  %24 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %20, i64 %indvars.iv75
  %25 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %21, i64 %indvars.iv75
  %26 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %22, i64 %indvars.iv75
  %27 = load i32, ptr %23, align 4, !tbaa !5
  %28 = load i32, ptr %24, align 4, !tbaa !5
  %29 = load i32, ptr %25, align 4, !tbaa !5
  %30 = load i32, ptr %26, align 4, !tbaa !5
  %31 = insertelement <4 x i32> poison, i32 %27, i64 0
  %32 = insertelement <4 x i32> %31, i32 %28, i64 1
  %33 = insertelement <4 x i32> %32, i32 %29, i64 2
  %34 = insertelement <4 x i32> %33, i32 %30, i64 3
  %35 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %34, <4 x i32> %vec.phi)
  %index.next92 = add nuw i64 %index91, 4
  %36 = icmp eq i64 %index.next92, %n.vec89
  br i1 %36, label %middle.block93, label %vector.body90, !llvm.loop !49

middle.block93:                                   ; preds = %vector.body90
  %37 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %35)
  br i1 %cmp.n94, label %for.body55.lr.ph, label %for.body38.preheader

for.body38.preheader:                             ; preds = %for.body33, %middle.block93
  %indvars.iv65.ph = phi i64 [ 0, %for.body33 ], [ %n.vec89, %middle.block93 ]
  %min.242.ph = phi i32 [ %19, %for.body33 ], [ %37, %middle.block93 ]
  br label %for.body38

for.body55.lr.ph:                                 ; preds = %for.body38, %middle.block93
  %spec.select30.lcssa = phi i32 [ %37, %middle.block93 ], [ %spec.select30, %for.body38 ]
  br label %for.body55

for.body38:                                       ; preds = %for.body38.preheader, %for.body38
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.body38 ], [ %indvars.iv65.ph, %for.body38.preheader ]
  %min.242 = phi i32 [ %spec.select30, %for.body38 ], [ %min.242.ph, %for.body38.preheader ]
  %arrayidx42 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv65, i64 %indvars.iv75
  %38 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %spec.select30 = tail call i32 @llvm.smin.i32(i32 %38, i32 %min.242)
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count78
  br i1 %exitcond69.not, label %for.body55.lr.ph, label %for.body38, !llvm.loop !50

for.body55:                                       ; preds = %for.body55.lr.ph, %for.body55
  %indvars.iv70 = phi i64 [ 0, %for.body55.lr.ph ], [ %indvars.iv.next71, %for.body55 ]
  %arrayidx59 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv70, i64 %indvars.iv75
  %39 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %sub60 = sub nsw i32 %39, %spec.select30.lcssa
  store i32 %sub60, ptr %arrayidx59, align 4, !tbaa !5
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count78
  br i1 %exitcond74.not, label %for.inc64, label %for.body55, !llvm.loop !51

for.inc64:                                        ; preds = %for.body55
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %for.end66, label %for.body33, !llvm.loop !52

for.end66:                                        ; preds = %for.inc64
  %40 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  %sub.i = add nsw i32 %sub674951, -1
  %cmp215.i = icmp samesign ugt i32 %sub674951, 2
  br i1 %cmp215.i, label %for.cond1.preheader.us.preheader.i, label %_Z4delev.exit

for.end66._Z4delev.exit_crit_edge:                ; preds = %for.cond1.preheader
  %41 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  %.pre = add nsw i32 %sub674951, -1
  br label %_Z4delev.exit

for.cond1.preheader.us.preheader.i:               ; preds = %for.end66
  %wide.trip.count30.i = zext nneg i32 %sub674951 to i64
  %wide.trip.count.i = zext nneg i32 %sub.i to i64
  %min.iters.check = icmp ult i64 %8, 4
  %n.vec = and i64 %8, -4
  %42 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %8, %n.vec
  br label %for.cond1.preheader.us.i

for.cond1.preheader.us.i:                         ; preds = %for.cond1.for.inc11_crit_edge.us.i, %for.cond1.preheader.us.preheader.i
  %indvars.iv27.i = phi i64 [ 0, %for.cond1.preheader.us.preheader.i ], [ %indvars.iv.next28.i, %for.cond1.for.inc11_crit_edge.us.i ]
  br i1 %min.iters.check, label %for.body3.us.i.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond1.preheader.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond1.preheader.us.i ]
  %offset.idx = or disjoint i64 %index, 1
  %43 = or disjoint i64 %index, 2
  %44 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv27.i, i64 %43
  %wide.load = load <4 x i32>, ptr %44, align 8, !tbaa !5
  %45 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv27.i, i64 %offset.idx
  store <4 x i32> %wide.load, ptr %45, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %46 = icmp eq i64 %index.next, %n.vec
  br i1 %46, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond1.for.inc11_crit_edge.us.i, label %for.body3.us.i.preheader

for.body3.us.i.preheader:                         ; preds = %for.cond1.preheader.us.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %for.cond1.preheader.us.i ], [ %42, %middle.block ]
  br label %for.body3.us.i

for.body3.us.i:                                   ; preds = %for.body3.us.i.preheader, %for.body3.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body3.us.i ], [ %indvars.iv.i.ph, %for.body3.us.i.preheader ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %arrayidx6.us.i = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv27.i, i64 %indvars.iv.next.i
  %47 = load i32, ptr %arrayidx6.us.i, align 4, !tbaa !5
  %arrayidx10.us.i = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv27.i, i64 %indvars.iv.i
  store i32 %47, ptr %arrayidx10.us.i, align 4, !tbaa !5
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.cond1.for.inc11_crit_edge.us.i, label %for.body3.us.i, !llvm.loop !54

for.cond1.for.inc11_crit_edge.us.i:               ; preds = %for.body3.us.i, %middle.block
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count30.i
  br i1 %exitcond31.not.i, label %for.cond18.preheader.us.i, label %for.cond1.preheader.us.i, !llvm.loop !55

for.cond18.preheader.us.i:                        ; preds = %for.cond1.for.inc11_crit_edge.us.i, %for.cond18.for.inc34_crit_edge.us.i
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %for.cond18.for.inc34_crit_edge.us.i ], [ 0, %for.cond1.for.inc11_crit_edge.us.i ]
  br label %for.body21.us.i

for.body21.us.i:                                  ; preds = %for.body21.us.i, %for.cond18.preheader.us.i
  %indvars.iv32.i = phi i64 [ 1, %for.cond18.preheader.us.i ], [ %indvars.iv.next33.i, %for.body21.us.i ]
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1
  %arrayidx26.us.i = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv.next33.i, i64 %indvars.iv37.i
  %48 = load i32, ptr %arrayidx26.us.i, align 4, !tbaa !5
  %arrayidx30.us.i = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv32.i, i64 %indvars.iv37.i
  store i32 %48, ptr %arrayidx30.us.i, align 4, !tbaa !5
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next33.i, %wide.trip.count.i
  br i1 %exitcond36.not.i, label %for.cond18.for.inc34_crit_edge.us.i, label %for.body21.us.i, !llvm.loop !56

for.cond18.for.inc34_crit_edge.us.i:              ; preds = %for.body21.us.i
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %wide.trip.count.i
  br i1 %exitcond41.not.i, label %_Z4delev.exit, label %for.cond18.preheader.us.i, !llvm.loop !57

_Z4delev.exit:                                    ; preds = %for.cond18.for.inc34_crit_edge.us.i, %for.end66._Z4delev.exit_crit_edge, %for.end66
  %.pn = phi i32 [ %41, %for.end66._Z4delev.exit_crit_edge ], [ %40, %for.end66 ], [ %40, %for.cond18.for.inc34_crit_edge.us.i ]
  %sub67.pre-phi = phi i32 [ %.pre, %for.end66._Z4delev.exit_crit_edge ], [ %sub.i, %for.end66 ], [ %sub.i, %for.cond18.for.inc34_crit_edge.us.i ]
  %add.i83 = add nsw i32 %add.i4852, %.pn
  %inc69 = add nuw nsw i32 %k.053, 1
  %exitcond81.not = icmp eq i32 %k.053, %1
  br i1 %exitcond81.not, label %for.cond.for.end70_crit_edge, label %for.cond1.preheader, !llvm.loop !58

for.cond.for.end70_crit_edge:                     ; preds = %_Z4delev.exit
  %49 = add i32 %b.promoted, 1
  %50 = sub i32 %49, %0
  store i32 %add.i83, ptr @sum, align 4, !tbaa !5
  store i32 %50, ptr @b, align 4, !tbaa !5
  br label %for.end70

for.end70:                                        ; preds = %for.cond.for.end70_crit_edge, %entry
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z4delev() local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  %1 = load i32, ptr @sum, align 4, !tbaa !5
  %add = add nsw i32 %1, %0
  store i32 %add, ptr @sum, align 4, !tbaa !5
  %2 = load i32, ptr @b, align 4, !tbaa !5
  %cmp17 = icmp sgt i32 %2, 0
  br i1 %cmp17, label %for.cond1.preheader.lr.ph, label %for.end36

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %sub = add nsw i32 %2, -1
  %cmp215 = icmp samesign ugt i32 %2, 2
  br i1 %cmp215, label %for.cond1.preheader.us.preheader, label %for.cond14.preheader

for.cond1.preheader.us.preheader:                 ; preds = %for.cond1.preheader.lr.ph
  %wide.trip.count30 = zext nneg i32 %2 to i64
  %wide.trip.count = zext i32 %sub to i64
  %3 = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp ult i64 %3, 4
  %n.vec = and i64 %3, -4
  %4 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %3, %n.vec
  br label %for.cond1.preheader.us

for.cond1.preheader.us:                           ; preds = %for.cond1.preheader.us.preheader, %for.cond1.for.inc11_crit_edge.us
  %indvars.iv27 = phi i64 [ 0, %for.cond1.preheader.us.preheader ], [ %indvars.iv.next28, %for.cond1.for.inc11_crit_edge.us ]
  br i1 %min.iters.check, label %for.body3.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond1.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond1.preheader.us ]
  %offset.idx = or disjoint i64 %index, 1
  %5 = or disjoint i64 %index, 2
  %6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv27, i64 %5
  %wide.load = load <4 x i32>, ptr %6, align 8, !tbaa !5
  %7 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv27, i64 %offset.idx
  store <4 x i32> %wide.load, ptr %7, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond1.for.inc11_crit_edge.us, label %for.body3.us.preheader

for.body3.us.preheader:                           ; preds = %for.cond1.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %for.cond1.preheader.us ], [ %4, %middle.block ]
  br label %for.body3.us

for.body3.us:                                     ; preds = %for.body3.us.preheader, %for.body3.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3.us ], [ %indvars.iv.ph, %for.body3.us.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx6.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv27, i64 %indvars.iv.next
  %9 = load i32, ptr %arrayidx6.us, align 4, !tbaa !5
  %arrayidx10.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv27, i64 %indvars.iv
  store i32 %9, ptr %arrayidx10.us, align 4, !tbaa !5
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond1.for.inc11_crit_edge.us, label %for.body3.us, !llvm.loop !60

for.cond1.for.inc11_crit_edge.us:                 ; preds = %for.body3.us, %middle.block
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond31.not = icmp eq i64 %indvars.iv.next28, %wide.trip.count30
  br i1 %exitcond31.not, label %for.cond14.preheader, label %for.cond1.preheader.us, !llvm.loop !55

for.cond14.preheader:                             ; preds = %for.cond1.for.inc11_crit_edge.us, %for.cond1.preheader.lr.ph
  %or.cond = icmp ult i32 %2, 3
  br i1 %or.cond, label %for.end36, label %for.cond18.preheader.us.preheader

for.cond18.preheader.us.preheader:                ; preds = %for.cond14.preheader
  %wide.trip.count40 = zext nneg i32 %sub to i64
  br label %for.cond18.preheader.us

for.cond18.preheader.us:                          ; preds = %for.cond18.preheader.us.preheader, %for.cond18.for.inc34_crit_edge.us
  %indvars.iv37 = phi i64 [ 0, %for.cond18.preheader.us.preheader ], [ %indvars.iv.next38, %for.cond18.for.inc34_crit_edge.us ]
  br label %for.body21.us

for.body21.us:                                    ; preds = %for.cond18.preheader.us, %for.body21.us
  %indvars.iv32 = phi i64 [ 1, %for.cond18.preheader.us ], [ %indvars.iv.next33, %for.body21.us ]
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %arrayidx26.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv.next33, i64 %indvars.iv37
  %10 = load i32, ptr %arrayidx26.us, align 4, !tbaa !5
  %arrayidx30.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv32, i64 %indvars.iv37
  store i32 %10, ptr %arrayidx30.us, align 4, !tbaa !5
  %exitcond36.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count40
  br i1 %exitcond36.not, label %for.cond18.for.inc34_crit_edge.us, label %for.body21.us, !llvm.loop !56

for.cond18.for.inc34_crit_edge.us:                ; preds = %for.body21.us
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count40
  br i1 %exitcond41.not, label %for.end36, label %for.cond18.preheader.us, !llvm.loop !57

for.end36:                                        ; preds = %for.cond18.for.inc34_crit_edge.us, %entry, %for.cond14.preheader
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn }

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
!59 = distinct !{!59, !10, !11, !43, !44}
!60 = distinct !{!60, !10, !11, !43}
