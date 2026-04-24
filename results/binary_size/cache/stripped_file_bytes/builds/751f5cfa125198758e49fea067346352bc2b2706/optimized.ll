; ModuleID = '<stdin>'
source_filename = "/tmp/tmppm_1t4oa.cpp"
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
  %money = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %money) #4
  store i32 0, ptr %money, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %money)
  %0 = load i32, ptr %money, align 4, !tbaa !5
  %div = sdiv i32 %0, 100
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div)
  %vtable.i = load ptr, ptr %call1, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call1, i64 %vbase.offset.i
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
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call1, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %5 = load i32, ptr %money, align 4, !tbaa !5
  %rem = srem i32 %5, 100
  store i32 %rem, ptr %money, align 4, !tbaa !5
  %div3.lhs.trunc = trunc nsw i32 %rem to i8
  %div389 = sdiv i8 %div3.lhs.trunc, 50
  %div3.sext = sext i8 %div389 to i32
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div3.sext)
  %vtable.i9 = load ptr, ptr %call4, align 8, !tbaa !9
  %vbase.offset.ptr.i10 = getelementptr i8, ptr %vtable.i9, i64 -24
  %vbase.offset.i11 = load i64, ptr %vbase.offset.ptr.i10, align 8
  %add.ptr.i12 = getelementptr inbounds i8, ptr %call4, i64 %vbase.offset.i11
  %_M_ctype.i.i13 = getelementptr inbounds nuw i8, ptr %add.ptr.i12, i64 240
  %6 = load ptr, ptr %_M_ctype.i.i13, align 8, !tbaa !11
  %tobool.not.i.i.i14 = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i14, label %if.then.i.i.i27, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i15

if.then.i.i.i27:                                  ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i15: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %_M_widen_ok.i.i.i16 = getelementptr inbounds nuw i8, ptr %6, i64 56
  %7 = load i8, ptr %_M_widen_ok.i.i.i16, align 8, !tbaa !29
  %tobool.not.i1.i.i17 = icmp eq i8 %7, 0
  br i1 %tobool.not.i1.i.i17, label %if.end.i.i.i23, label %if.then.i2.i.i18

if.then.i2.i.i18:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i15
  %arrayidx.i.i.i19 = getelementptr inbounds nuw i8, ptr %6, i64 67
  %8 = load i8, ptr %arrayidx.i.i.i19, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit28

if.end.i.i.i23:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i15
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %6)
  %vtable.i.i.i24 = load ptr, ptr %6, align 8, !tbaa !9
  %vfn.i.i.i25 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i24, i64 48
  %9 = load ptr, ptr %vfn.i.i.i25, align 8
  %call.i.i.i26 = call noundef signext i8 %9(ptr noundef nonnull align 8 dereferenceable(570) %6, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit28

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit28: ; preds = %if.then.i2.i.i18, %if.end.i.i.i23
  %retval.0.i.i.i20 = phi i8 [ %8, %if.then.i2.i.i18 ], [ %call.i.i.i26, %if.end.i.i.i23 ]
  %call1.i21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call4, i8 noundef signext %retval.0.i.i.i20)
  %call.i.i22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i21)
  %10 = load i32, ptr %money, align 4, !tbaa !5
  %rem6 = srem i32 %10, 50
  store i32 %rem6, ptr %money, align 4, !tbaa !5
  %div7.lhs.trunc = trunc nsw i32 %rem6 to i8
  %div790 = sdiv i8 %div7.lhs.trunc, 20
  %div7.sext = sext i8 %div790 to i32
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div7.sext)
  %vtable.i29 = load ptr, ptr %call8, align 8, !tbaa !9
  %vbase.offset.ptr.i30 = getelementptr i8, ptr %vtable.i29, i64 -24
  %vbase.offset.i31 = load i64, ptr %vbase.offset.ptr.i30, align 8
  %add.ptr.i32 = getelementptr inbounds i8, ptr %call8, i64 %vbase.offset.i31
  %_M_ctype.i.i33 = getelementptr inbounds nuw i8, ptr %add.ptr.i32, i64 240
  %11 = load ptr, ptr %_M_ctype.i.i33, align 8, !tbaa !11
  %tobool.not.i.i.i34 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i34, label %if.then.i.i.i47, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i35

if.then.i.i.i47:                                  ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit28
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i35: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit28
  %_M_widen_ok.i.i.i36 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %12 = load i8, ptr %_M_widen_ok.i.i.i36, align 8, !tbaa !29
  %tobool.not.i1.i.i37 = icmp eq i8 %12, 0
  br i1 %tobool.not.i1.i.i37, label %if.end.i.i.i43, label %if.then.i2.i.i38

if.then.i2.i.i38:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i35
  %arrayidx.i.i.i39 = getelementptr inbounds nuw i8, ptr %11, i64 67
  %13 = load i8, ptr %arrayidx.i.i.i39, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit48

if.end.i.i.i43:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i35
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %11)
  %vtable.i.i.i44 = load ptr, ptr %11, align 8, !tbaa !9
  %vfn.i.i.i45 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i44, i64 48
  %14 = load ptr, ptr %vfn.i.i.i45, align 8
  %call.i.i.i46 = call noundef signext i8 %14(ptr noundef nonnull align 8 dereferenceable(570) %11, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit48

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit48: ; preds = %if.then.i2.i.i38, %if.end.i.i.i43
  %retval.0.i.i.i40 = phi i8 [ %13, %if.then.i2.i.i38 ], [ %call.i.i.i46, %if.end.i.i.i43 ]
  %call1.i41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call8, i8 noundef signext %retval.0.i.i.i40)
  %call.i.i42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i41)
  %15 = load i32, ptr %money, align 4, !tbaa !5
  %rem10 = srem i32 %15, 20
  store i32 %rem10, ptr %money, align 4, !tbaa !5
  %div11.lhs.trunc = trunc nsw i32 %rem10 to i8
  %div1191 = sdiv i8 %div11.lhs.trunc, 10
  %div11.sext = sext i8 %div1191 to i32
  %call12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div11.sext)
  %vtable.i49 = load ptr, ptr %call12, align 8, !tbaa !9
  %vbase.offset.ptr.i50 = getelementptr i8, ptr %vtable.i49, i64 -24
  %vbase.offset.i51 = load i64, ptr %vbase.offset.ptr.i50, align 8
  %add.ptr.i52 = getelementptr inbounds i8, ptr %call12, i64 %vbase.offset.i51
  %_M_ctype.i.i53 = getelementptr inbounds nuw i8, ptr %add.ptr.i52, i64 240
  %16 = load ptr, ptr %_M_ctype.i.i53, align 8, !tbaa !11
  %tobool.not.i.i.i54 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i.i54, label %if.then.i.i.i67, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i55

if.then.i.i.i67:                                  ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit48
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i55: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit48
  %_M_widen_ok.i.i.i56 = getelementptr inbounds nuw i8, ptr %16, i64 56
  %17 = load i8, ptr %_M_widen_ok.i.i.i56, align 8, !tbaa !29
  %tobool.not.i1.i.i57 = icmp eq i8 %17, 0
  br i1 %tobool.not.i1.i.i57, label %if.end.i.i.i63, label %if.then.i2.i.i58

if.then.i2.i.i58:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i55
  %arrayidx.i.i.i59 = getelementptr inbounds nuw i8, ptr %16, i64 67
  %18 = load i8, ptr %arrayidx.i.i.i59, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68

if.end.i.i.i63:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i55
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %16)
  %vtable.i.i.i64 = load ptr, ptr %16, align 8, !tbaa !9
  %vfn.i.i.i65 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i64, i64 48
  %19 = load ptr, ptr %vfn.i.i.i65, align 8
  %call.i.i.i66 = call noundef signext i8 %19(ptr noundef nonnull align 8 dereferenceable(570) %16, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68: ; preds = %if.then.i2.i.i58, %if.end.i.i.i63
  %retval.0.i.i.i60 = phi i8 [ %18, %if.then.i2.i.i58 ], [ %call.i.i.i66, %if.end.i.i.i63 ]
  %call1.i61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call12, i8 noundef signext %retval.0.i.i.i60)
  %call.i.i62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i61)
  %20 = load i32, ptr %money, align 4, !tbaa !5
  %rem14 = srem i32 %20, 10
  store i32 %rem14, ptr %money, align 4, !tbaa !5
  %div15.lhs.trunc = trunc nsw i32 %rem14 to i8
  %div1592 = sdiv i8 %div15.lhs.trunc, 5
  %div15.sext = sext i8 %div1592 to i32
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div15.sext)
  %vtable.i69 = load ptr, ptr %call16, align 8, !tbaa !9
  %vbase.offset.ptr.i70 = getelementptr i8, ptr %vtable.i69, i64 -24
  %vbase.offset.i71 = load i64, ptr %vbase.offset.ptr.i70, align 8
  %add.ptr.i72 = getelementptr inbounds i8, ptr %call16, i64 %vbase.offset.i71
  %_M_ctype.i.i73 = getelementptr inbounds nuw i8, ptr %add.ptr.i72, i64 240
  %21 = load ptr, ptr %_M_ctype.i.i73, align 8, !tbaa !11
  %tobool.not.i.i.i74 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.i74, label %if.then.i.i.i87, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75

if.then.i.i.i87:                                  ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68
  %_M_widen_ok.i.i.i76 = getelementptr inbounds nuw i8, ptr %21, i64 56
  %22 = load i8, ptr %_M_widen_ok.i.i.i76, align 8, !tbaa !29
  %tobool.not.i1.i.i77 = icmp eq i8 %22, 0
  br i1 %tobool.not.i1.i.i77, label %if.end.i.i.i83, label %if.then.i2.i.i78

if.then.i2.i.i78:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75
  %arrayidx.i.i.i79 = getelementptr inbounds nuw i8, ptr %21, i64 67
  %23 = load i8, ptr %arrayidx.i.i.i79, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit88

if.end.i.i.i83:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %21)
  %vtable.i.i.i84 = load ptr, ptr %21, align 8, !tbaa !9
  %vfn.i.i.i85 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i84, i64 48
  %24 = load ptr, ptr %vfn.i.i.i85, align 8
  %call.i.i.i86 = call noundef signext i8 %24(ptr noundef nonnull align 8 dereferenceable(570) %21, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit88

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit88: ; preds = %if.then.i2.i.i78, %if.end.i.i.i83
  %retval.0.i.i.i80 = phi i8 [ %23, %if.then.i2.i.i78 ], [ %call.i.i.i86, %if.end.i.i.i83 ]
  %call1.i81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call16, i8 noundef signext %retval.0.i.i.i80)
  %call.i.i82 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i81)
  %25 = load i32, ptr %money, align 4, !tbaa !5
  %rem18 = srem i32 %25, 5
  store i32 %rem18, ptr %money, align 4, !tbaa !5
  %call19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %rem18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %money) #4
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
