; ModuleID = '<stdin>'
source_filename = "/tmp/tmp18oetbzg.cpp"
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
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %a = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %a)
  %0 = load i32, ptr %a, align 4, !tbaa !5
  %div = sdiv i32 %0, 100
  %mul.neg = mul nsw i32 %div, -100
  %sub = add i32 %mul.neg, %0
  %div1 = sdiv i32 %sub, 50
  %mul2.neg = mul nsw i32 %div1, -50
  %sub3 = add i32 %mul2.neg, %sub
  %div4 = sdiv i32 %sub3, 20
  %mul5.neg = mul nsw i32 %div4, -20
  %sub6 = add i32 %mul5.neg, %sub3
  %div7 = sdiv i32 %sub6, 10
  %mul8.neg = mul nsw i32 %div7, -10
  %sub9 = add i32 %mul8.neg, %sub6
  %div10 = sdiv i32 %sub9, 5
  %mul11.neg = mul nsw i32 %div10, -5
  %sub12 = add i32 %mul11.neg, %sub9
  store i32 %sub12, ptr %a, align 4, !tbaa !5
  %call13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div)
  %vtable.i = load ptr, ptr %call13, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call13, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %1 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !11
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %entry
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %2 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !29
  %tobool.not.i1.i.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 67
  %3 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %1)
  %vtable.i.i.i = load ptr, ptr %1, align 8, !tbaa !9
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %4 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %4(ptr noundef nonnull align 8 dereferenceable(570) %1, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %3, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call13, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div1)
  %vtable.i11 = load ptr, ptr %call15, align 8, !tbaa !9
  %vbase.offset.ptr.i12 = getelementptr i8, ptr %vtable.i11, i64 -24
  %vbase.offset.i13 = load i64, ptr %vbase.offset.ptr.i12, align 8
  %add.ptr.i14 = getelementptr inbounds i8, ptr %call15, i64 %vbase.offset.i13
  %_M_ctype.i.i15 = getelementptr inbounds nuw i8, ptr %add.ptr.i14, i64 240
  %5 = load ptr, ptr %_M_ctype.i.i15, align 8, !tbaa !11
  %tobool.not.i.i.i16 = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i16, label %if.then.i.i.i29, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17

if.then.i.i.i29:                                  ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %_M_widen_ok.i.i.i18 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %6 = load i8, ptr %_M_widen_ok.i.i.i18, align 8, !tbaa !29
  %tobool.not.i1.i.i19 = icmp eq i8 %6, 0
  br i1 %tobool.not.i1.i.i19, label %if.end.i.i.i25, label %if.then.i2.i.i20

if.then.i2.i.i20:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17
  %arrayidx.i.i.i21 = getelementptr inbounds nuw i8, ptr %5, i64 67
  %7 = load i8, ptr %arrayidx.i.i.i21, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit30

if.end.i.i.i25:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %5)
  %vtable.i.i.i26 = load ptr, ptr %5, align 8, !tbaa !9
  %vfn.i.i.i27 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i26, i64 48
  %8 = load ptr, ptr %vfn.i.i.i27, align 8
  %call.i.i.i28 = call noundef signext i8 %8(ptr noundef nonnull align 8 dereferenceable(570) %5, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit30

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit30: ; preds = %if.then.i2.i.i20, %if.end.i.i.i25
  %retval.0.i.i.i22 = phi i8 [ %7, %if.then.i2.i.i20 ], [ %call.i.i.i28, %if.end.i.i.i25 ]
  %call1.i23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call15, i8 noundef signext %retval.0.i.i.i22)
  %call.i.i24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i23)
  %call17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div4)
  %vtable.i31 = load ptr, ptr %call17, align 8, !tbaa !9
  %vbase.offset.ptr.i32 = getelementptr i8, ptr %vtable.i31, i64 -24
  %vbase.offset.i33 = load i64, ptr %vbase.offset.ptr.i32, align 8
  %add.ptr.i34 = getelementptr inbounds i8, ptr %call17, i64 %vbase.offset.i33
  %_M_ctype.i.i35 = getelementptr inbounds nuw i8, ptr %add.ptr.i34, i64 240
  %9 = load ptr, ptr %_M_ctype.i.i35, align 8, !tbaa !11
  %tobool.not.i.i.i36 = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i36, label %if.then.i.i.i49, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i37

if.then.i.i.i49:                                  ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit30
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i37: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit30
  %_M_widen_ok.i.i.i38 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %10 = load i8, ptr %_M_widen_ok.i.i.i38, align 8, !tbaa !29
  %tobool.not.i1.i.i39 = icmp eq i8 %10, 0
  br i1 %tobool.not.i1.i.i39, label %if.end.i.i.i45, label %if.then.i2.i.i40

if.then.i2.i.i40:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i37
  %arrayidx.i.i.i41 = getelementptr inbounds nuw i8, ptr %9, i64 67
  %11 = load i8, ptr %arrayidx.i.i.i41, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit50

if.end.i.i.i45:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i37
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %9)
  %vtable.i.i.i46 = load ptr, ptr %9, align 8, !tbaa !9
  %vfn.i.i.i47 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i46, i64 48
  %12 = load ptr, ptr %vfn.i.i.i47, align 8
  %call.i.i.i48 = call noundef signext i8 %12(ptr noundef nonnull align 8 dereferenceable(570) %9, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit50

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit50: ; preds = %if.then.i2.i.i40, %if.end.i.i.i45
  %retval.0.i.i.i42 = phi i8 [ %11, %if.then.i2.i.i40 ], [ %call.i.i.i48, %if.end.i.i.i45 ]
  %call1.i43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call17, i8 noundef signext %retval.0.i.i.i42)
  %call.i.i44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i43)
  %call19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div7)
  %vtable.i51 = load ptr, ptr %call19, align 8, !tbaa !9
  %vbase.offset.ptr.i52 = getelementptr i8, ptr %vtable.i51, i64 -24
  %vbase.offset.i53 = load i64, ptr %vbase.offset.ptr.i52, align 8
  %add.ptr.i54 = getelementptr inbounds i8, ptr %call19, i64 %vbase.offset.i53
  %_M_ctype.i.i55 = getelementptr inbounds nuw i8, ptr %add.ptr.i54, i64 240
  %13 = load ptr, ptr %_M_ctype.i.i55, align 8, !tbaa !11
  %tobool.not.i.i.i56 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i56, label %if.then.i.i.i69, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i57

if.then.i.i.i69:                                  ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit50
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i57: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit50
  %_M_widen_ok.i.i.i58 = getelementptr inbounds nuw i8, ptr %13, i64 56
  %14 = load i8, ptr %_M_widen_ok.i.i.i58, align 8, !tbaa !29
  %tobool.not.i1.i.i59 = icmp eq i8 %14, 0
  br i1 %tobool.not.i1.i.i59, label %if.end.i.i.i65, label %if.then.i2.i.i60

if.then.i2.i.i60:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i57
  %arrayidx.i.i.i61 = getelementptr inbounds nuw i8, ptr %13, i64 67
  %15 = load i8, ptr %arrayidx.i.i.i61, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit70

if.end.i.i.i65:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i57
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %13)
  %vtable.i.i.i66 = load ptr, ptr %13, align 8, !tbaa !9
  %vfn.i.i.i67 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i66, i64 48
  %16 = load ptr, ptr %vfn.i.i.i67, align 8
  %call.i.i.i68 = call noundef signext i8 %16(ptr noundef nonnull align 8 dereferenceable(570) %13, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit70

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit70: ; preds = %if.then.i2.i.i60, %if.end.i.i.i65
  %retval.0.i.i.i62 = phi i8 [ %15, %if.then.i2.i.i60 ], [ %call.i.i.i68, %if.end.i.i.i65 ]
  %call1.i63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call19, i8 noundef signext %retval.0.i.i.i62)
  %call.i.i64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i63)
  %call21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div10)
  %vtable.i71 = load ptr, ptr %call21, align 8, !tbaa !9
  %vbase.offset.ptr.i72 = getelementptr i8, ptr %vtable.i71, i64 -24
  %vbase.offset.i73 = load i64, ptr %vbase.offset.ptr.i72, align 8
  %add.ptr.i74 = getelementptr inbounds i8, ptr %call21, i64 %vbase.offset.i73
  %_M_ctype.i.i75 = getelementptr inbounds nuw i8, ptr %add.ptr.i74, i64 240
  %17 = load ptr, ptr %_M_ctype.i.i75, align 8, !tbaa !11
  %tobool.not.i.i.i76 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i76, label %if.then.i.i.i89, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i77

if.then.i.i.i89:                                  ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit70
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i77: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit70
  %_M_widen_ok.i.i.i78 = getelementptr inbounds nuw i8, ptr %17, i64 56
  %18 = load i8, ptr %_M_widen_ok.i.i.i78, align 8, !tbaa !29
  %tobool.not.i1.i.i79 = icmp eq i8 %18, 0
  br i1 %tobool.not.i1.i.i79, label %if.end.i.i.i85, label %if.then.i2.i.i80

if.then.i2.i.i80:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i77
  %arrayidx.i.i.i81 = getelementptr inbounds nuw i8, ptr %17, i64 67
  %19 = load i8, ptr %arrayidx.i.i.i81, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit90

if.end.i.i.i85:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i77
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %17)
  %vtable.i.i.i86 = load ptr, ptr %17, align 8, !tbaa !9
  %vfn.i.i.i87 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i86, i64 48
  %20 = load ptr, ptr %vfn.i.i.i87, align 8
  %call.i.i.i88 = call noundef signext i8 %20(ptr noundef nonnull align 8 dereferenceable(570) %17, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit90

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit90: ; preds = %if.then.i2.i.i80, %if.end.i.i.i85
  %retval.0.i.i.i82 = phi i8 [ %19, %if.then.i2.i.i80 ], [ %call.i.i.i88, %if.end.i.i.i85 ]
  %call1.i83 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call21, i8 noundef signext %retval.0.i.i.i82)
  %call.i.i84 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i83)
  %call23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sub12)
  %vtable.i91 = load ptr, ptr %call23, align 8, !tbaa !9
  %vbase.offset.ptr.i92 = getelementptr i8, ptr %vtable.i91, i64 -24
  %vbase.offset.i93 = load i64, ptr %vbase.offset.ptr.i92, align 8
  %add.ptr.i94 = getelementptr inbounds i8, ptr %call23, i64 %vbase.offset.i93
  %_M_ctype.i.i95 = getelementptr inbounds nuw i8, ptr %add.ptr.i94, i64 240
  %21 = load ptr, ptr %_M_ctype.i.i95, align 8, !tbaa !11
  %tobool.not.i.i.i96 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.i96, label %if.then.i.i.i109, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i97

if.then.i.i.i109:                                 ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit90
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i97: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit90
  %_M_widen_ok.i.i.i98 = getelementptr inbounds nuw i8, ptr %21, i64 56
  %22 = load i8, ptr %_M_widen_ok.i.i.i98, align 8, !tbaa !29
  %tobool.not.i1.i.i99 = icmp eq i8 %22, 0
  br i1 %tobool.not.i1.i.i99, label %if.end.i.i.i105, label %if.then.i2.i.i100

if.then.i2.i.i100:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i97
  %arrayidx.i.i.i101 = getelementptr inbounds nuw i8, ptr %21, i64 67
  %23 = load i8, ptr %arrayidx.i.i.i101, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit110

if.end.i.i.i105:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i97
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %21)
  %vtable.i.i.i106 = load ptr, ptr %21, align 8, !tbaa !9
  %vfn.i.i.i107 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i106, i64 48
  %24 = load ptr, ptr %vfn.i.i.i107, align 8
  %call.i.i.i108 = call noundef signext i8 %24(ptr noundef nonnull align 8 dereferenceable(570) %21, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit110

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit110: ; preds = %if.then.i2.i.i100, %if.end.i.i.i105
  %retval.0.i.i.i102 = phi i8 [ %23, %if.then.i2.i.i100 ], [ %call.i.i.i108, %if.end.i.i.i105 ]
  %call1.i103 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call23, i8 noundef signext %retval.0.i.i.i102)
  %call.i.i104 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i103)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #4
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
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
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !26, i64 240}
!12 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !13, i64 0, !23, i64 216, !7, i64 224, !24, i64 225, !25, i64 232, !26, i64 240, !27, i64 248, !28, i64 256}
!13 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !15, i64 24, !16, i64 28, !16, i64 32, !17, i64 40, !19, i64 48, !7, i64 64, !6, i64 192, !20, i64 200, !21, i64 208}
!14 = !{!"long", !7, i64 0}
!15 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!16 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!17 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !14, i64 8}
!20 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!21 = !{!"_ZTSSt6locale", !22, i64 0}
!22 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!23 = !{!"p1 _ZTSSo", !18, i64 0}
!24 = !{!"bool", !7, i64 0}
!25 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !18, i64 0}
!26 = !{!"p1 _ZTSSt5ctypeIcE", !18, i64 0}
!27 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!28 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!29 = !{!30, !7, i64 56}
!30 = !{!"_ZTSSt5ctypeIcE", !31, i64 0, !32, i64 16, !24, i64 24, !33, i64 32, !33, i64 40, !34, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!31 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!32 = !{!"p1 _ZTS15__locale_struct", !18, i64 0}
!33 = !{!"p1 int", !18, i64 0}
!34 = !{!"p1 short", !18, i64 0}
!35 = !{!7, !7, i64 0}
