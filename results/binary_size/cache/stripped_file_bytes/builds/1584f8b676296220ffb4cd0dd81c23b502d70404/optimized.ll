; ModuleID = '<stdin>'
source_filename = "/tmp/tmpfok_9dr5.cpp"
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %rem = srem i32 %0, 100
  %div = sdiv i32 %0, 100
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div)
  %vtable.i = load ptr, ptr %call2, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call2, i64 %vbase.offset.i
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
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call2, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %rem4.lhs.trunc = trunc nsw i32 %rem to i8
  %rem4114 = srem i8 %rem4.lhs.trunc, 50
  %div6115 = sdiv i8 %rem4.lhs.trunc, 50
  %div6.sext = sext i8 %div6115 to i32
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div6.sext)
  %vtable.i14 = load ptr, ptr %call8, align 8, !tbaa !9
  %vbase.offset.ptr.i15 = getelementptr i8, ptr %vtable.i14, i64 -24
  %vbase.offset.i16 = load i64, ptr %vbase.offset.ptr.i15, align 8
  %add.ptr.i17 = getelementptr inbounds i8, ptr %call8, i64 %vbase.offset.i16
  %_M_ctype.i.i18 = getelementptr inbounds nuw i8, ptr %add.ptr.i17, i64 240
  %5 = load ptr, ptr %_M_ctype.i.i18, align 8, !tbaa !11
  %tobool.not.i.i.i19 = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i19, label %if.then.i.i.i32, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i20

if.then.i.i.i32:                                  ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i20: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %_M_widen_ok.i.i.i21 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %6 = load i8, ptr %_M_widen_ok.i.i.i21, align 8, !tbaa !29
  %tobool.not.i1.i.i22 = icmp eq i8 %6, 0
  br i1 %tobool.not.i1.i.i22, label %if.end.i.i.i28, label %if.then.i2.i.i23

if.then.i2.i.i23:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i20
  %arrayidx.i.i.i24 = getelementptr inbounds nuw i8, ptr %5, i64 67
  %7 = load i8, ptr %arrayidx.i.i.i24, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit33

if.end.i.i.i28:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i20
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %5)
  %vtable.i.i.i29 = load ptr, ptr %5, align 8, !tbaa !9
  %vfn.i.i.i30 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i29, i64 48
  %8 = load ptr, ptr %vfn.i.i.i30, align 8
  %call.i.i.i31 = call noundef signext i8 %8(ptr noundef nonnull align 8 dereferenceable(570) %5, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit33

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit33: ; preds = %if.then.i2.i.i23, %if.end.i.i.i28
  %retval.0.i.i.i25 = phi i8 [ %7, %if.then.i2.i.i23 ], [ %call.i.i.i31, %if.end.i.i.i28 ]
  %call1.i26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call8, i8 noundef signext %retval.0.i.i.i25)
  %call.i.i27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i26)
  %rem10116 = srem i8 %rem4114, 20
  %div12117 = sdiv i8 %rem4114, 20
  %div12.sext = sext i8 %div12117 to i32
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div12.sext)
  %vtable.i34 = load ptr, ptr %call14, align 8, !tbaa !9
  %vbase.offset.ptr.i35 = getelementptr i8, ptr %vtable.i34, i64 -24
  %vbase.offset.i36 = load i64, ptr %vbase.offset.ptr.i35, align 8
  %add.ptr.i37 = getelementptr inbounds i8, ptr %call14, i64 %vbase.offset.i36
  %_M_ctype.i.i38 = getelementptr inbounds nuw i8, ptr %add.ptr.i37, i64 240
  %9 = load ptr, ptr %_M_ctype.i.i38, align 8, !tbaa !11
  %tobool.not.i.i.i39 = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i39, label %if.then.i.i.i52, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i40

if.then.i.i.i52:                                  ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit33
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i40: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit33
  %_M_widen_ok.i.i.i41 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %10 = load i8, ptr %_M_widen_ok.i.i.i41, align 8, !tbaa !29
  %tobool.not.i1.i.i42 = icmp eq i8 %10, 0
  br i1 %tobool.not.i1.i.i42, label %if.end.i.i.i48, label %if.then.i2.i.i43

if.then.i2.i.i43:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i40
  %arrayidx.i.i.i44 = getelementptr inbounds nuw i8, ptr %9, i64 67
  %11 = load i8, ptr %arrayidx.i.i.i44, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit53

if.end.i.i.i48:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i40
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %9)
  %vtable.i.i.i49 = load ptr, ptr %9, align 8, !tbaa !9
  %vfn.i.i.i50 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i49, i64 48
  %12 = load ptr, ptr %vfn.i.i.i50, align 8
  %call.i.i.i51 = call noundef signext i8 %12(ptr noundef nonnull align 8 dereferenceable(570) %9, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit53

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit53: ; preds = %if.then.i2.i.i43, %if.end.i.i.i48
  %retval.0.i.i.i45 = phi i8 [ %11, %if.then.i2.i.i43 ], [ %call.i.i.i51, %if.end.i.i.i48 ]
  %call1.i46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call14, i8 noundef signext %retval.0.i.i.i45)
  %call.i.i47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i46)
  %rem16118 = srem i8 %rem10116, 10
  %div18119 = sdiv i8 %rem10116, 10
  %div18.sext = sext i8 %div18119 to i32
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div18.sext)
  %vtable.i54 = load ptr, ptr %call20, align 8, !tbaa !9
  %vbase.offset.ptr.i55 = getelementptr i8, ptr %vtable.i54, i64 -24
  %vbase.offset.i56 = load i64, ptr %vbase.offset.ptr.i55, align 8
  %add.ptr.i57 = getelementptr inbounds i8, ptr %call20, i64 %vbase.offset.i56
  %_M_ctype.i.i58 = getelementptr inbounds nuw i8, ptr %add.ptr.i57, i64 240
  %13 = load ptr, ptr %_M_ctype.i.i58, align 8, !tbaa !11
  %tobool.not.i.i.i59 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i59, label %if.then.i.i.i72, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i60

if.then.i.i.i72:                                  ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit53
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i60: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit53
  %_M_widen_ok.i.i.i61 = getelementptr inbounds nuw i8, ptr %13, i64 56
  %14 = load i8, ptr %_M_widen_ok.i.i.i61, align 8, !tbaa !29
  %tobool.not.i1.i.i62 = icmp eq i8 %14, 0
  br i1 %tobool.not.i1.i.i62, label %if.end.i.i.i68, label %if.then.i2.i.i63

if.then.i2.i.i63:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i60
  %arrayidx.i.i.i64 = getelementptr inbounds nuw i8, ptr %13, i64 67
  %15 = load i8, ptr %arrayidx.i.i.i64, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit73

if.end.i.i.i68:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i60
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %13)
  %vtable.i.i.i69 = load ptr, ptr %13, align 8, !tbaa !9
  %vfn.i.i.i70 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i69, i64 48
  %16 = load ptr, ptr %vfn.i.i.i70, align 8
  %call.i.i.i71 = call noundef signext i8 %16(ptr noundef nonnull align 8 dereferenceable(570) %13, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit73

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit73: ; preds = %if.then.i2.i.i63, %if.end.i.i.i68
  %retval.0.i.i.i65 = phi i8 [ %15, %if.then.i2.i.i63 ], [ %call.i.i.i71, %if.end.i.i.i68 ]
  %call1.i66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call20, i8 noundef signext %retval.0.i.i.i65)
  %call.i.i67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i66)
  %rem22120 = srem i8 %rem16118, 5
  %rem22.sext = sext i8 %rem22120 to i32
  %div24121 = sdiv i8 %rem16118, 5
  %div24.sext = sext i8 %div24121 to i32
  %call26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div24.sext)
  %vtable.i74 = load ptr, ptr %call26, align 8, !tbaa !9
  %vbase.offset.ptr.i75 = getelementptr i8, ptr %vtable.i74, i64 -24
  %vbase.offset.i76 = load i64, ptr %vbase.offset.ptr.i75, align 8
  %add.ptr.i77 = getelementptr inbounds i8, ptr %call26, i64 %vbase.offset.i76
  %_M_ctype.i.i78 = getelementptr inbounds nuw i8, ptr %add.ptr.i77, i64 240
  %17 = load ptr, ptr %_M_ctype.i.i78, align 8, !tbaa !11
  %tobool.not.i.i.i79 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i79, label %if.then.i.i.i92, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i80

if.then.i.i.i92:                                  ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit73
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i80: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit73
  %_M_widen_ok.i.i.i81 = getelementptr inbounds nuw i8, ptr %17, i64 56
  %18 = load i8, ptr %_M_widen_ok.i.i.i81, align 8, !tbaa !29
  %tobool.not.i1.i.i82 = icmp eq i8 %18, 0
  br i1 %tobool.not.i1.i.i82, label %if.end.i.i.i88, label %if.then.i2.i.i83

if.then.i2.i.i83:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i80
  %arrayidx.i.i.i84 = getelementptr inbounds nuw i8, ptr %17, i64 67
  %19 = load i8, ptr %arrayidx.i.i.i84, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit93

if.end.i.i.i88:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i80
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %17)
  %vtable.i.i.i89 = load ptr, ptr %17, align 8, !tbaa !9
  %vfn.i.i.i90 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i89, i64 48
  %20 = load ptr, ptr %vfn.i.i.i90, align 8
  %call.i.i.i91 = call noundef signext i8 %20(ptr noundef nonnull align 8 dereferenceable(570) %17, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit93

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit93: ; preds = %if.then.i2.i.i83, %if.end.i.i.i88
  %retval.0.i.i.i85 = phi i8 [ %19, %if.then.i2.i.i83 ], [ %call.i.i.i91, %if.end.i.i.i88 ]
  %call1.i86 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call26, i8 noundef signext %retval.0.i.i.i85)
  %call.i.i87 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i86)
  %call28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %rem22.sext)
  %vtable.i94 = load ptr, ptr %call28, align 8, !tbaa !9
  %vbase.offset.ptr.i95 = getelementptr i8, ptr %vtable.i94, i64 -24
  %vbase.offset.i96 = load i64, ptr %vbase.offset.ptr.i95, align 8
  %add.ptr.i97 = getelementptr inbounds i8, ptr %call28, i64 %vbase.offset.i96
  %_M_ctype.i.i98 = getelementptr inbounds nuw i8, ptr %add.ptr.i97, i64 240
  %21 = load ptr, ptr %_M_ctype.i.i98, align 8, !tbaa !11
  %tobool.not.i.i.i99 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.i99, label %if.then.i.i.i112, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i100

if.then.i.i.i112:                                 ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit93
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i100: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit93
  %_M_widen_ok.i.i.i101 = getelementptr inbounds nuw i8, ptr %21, i64 56
  %22 = load i8, ptr %_M_widen_ok.i.i.i101, align 8, !tbaa !29
  %tobool.not.i1.i.i102 = icmp eq i8 %22, 0
  br i1 %tobool.not.i1.i.i102, label %if.end.i.i.i108, label %if.then.i2.i.i103

if.then.i2.i.i103:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i100
  %arrayidx.i.i.i104 = getelementptr inbounds nuw i8, ptr %21, i64 67
  %23 = load i8, ptr %arrayidx.i.i.i104, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit113

if.end.i.i.i108:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i100
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %21)
  %vtable.i.i.i109 = load ptr, ptr %21, align 8, !tbaa !9
  %vfn.i.i.i110 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i109, i64 48
  %24 = load ptr, ptr %vfn.i.i.i110, align 8
  %call.i.i.i111 = call noundef signext i8 %24(ptr noundef nonnull align 8 dereferenceable(570) %21, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit113

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit113: ; preds = %if.then.i2.i.i103, %if.end.i.i.i108
  %retval.0.i.i.i105 = phi i8 [ %23, %if.then.i2.i.i103 ], [ %call.i.i.i111, %if.end.i.i.i108 ]
  %call1.i106 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call28, i8 noundef signext %retval.0.i.i.i105)
  %call.i.i107 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i106)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
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
