; ModuleID = '<stdin>'
source_filename = "/tmp/tmpzf5w3c2h.cpp"
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
  %sum = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sum) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %sum)
  %0 = load i32, ptr %sum, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 99
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %div = udiv i32 %0, 100
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div)
  %vtable.i = load ptr, ptr %call1, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call1, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %1 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !11
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then
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
  %5 = load i32, ptr %sum, align 4, !tbaa !5
  %.fr = freeze i32 %5
  %6 = srem i32 %.fr, 100
  store i32 %6, ptr %sum, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  %vtable.i18 = load ptr, ptr %call4, align 8, !tbaa !9
  %vbase.offset.ptr.i19 = getelementptr i8, ptr %vtable.i18, i64 -24
  %vbase.offset.i20 = load i64, ptr %vbase.offset.ptr.i19, align 8
  %add.ptr.i21 = getelementptr inbounds i8, ptr %call4, i64 %vbase.offset.i20
  %_M_ctype.i.i22 = getelementptr inbounds nuw i8, ptr %add.ptr.i21, i64 240
  %7 = load ptr, ptr %_M_ctype.i.i22, align 8, !tbaa !11
  %tobool.not.i.i.i23 = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i23, label %if.then.i.i.i36, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i24

if.then.i.i.i36:                                  ; preds = %if.else
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i24: ; preds = %if.else
  %_M_widen_ok.i.i.i25 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %8 = load i8, ptr %_M_widen_ok.i.i.i25, align 8, !tbaa !29
  %tobool.not.i1.i.i26 = icmp eq i8 %8, 0
  br i1 %tobool.not.i1.i.i26, label %if.end.i.i.i32, label %if.then.i2.i.i27

if.then.i2.i.i27:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i24
  %arrayidx.i.i.i28 = getelementptr inbounds nuw i8, ptr %7, i64 67
  %9 = load i8, ptr %arrayidx.i.i.i28, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit37

if.end.i.i.i32:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i24
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %7)
  %vtable.i.i.i33 = load ptr, ptr %7, align 8, !tbaa !9
  %vfn.i.i.i34 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i33, i64 48
  %10 = load ptr, ptr %vfn.i.i.i34, align 8
  %call.i.i.i35 = call noundef signext i8 %10(ptr noundef nonnull align 8 dereferenceable(570) %7, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit37

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit37: ; preds = %if.then.i2.i.i27, %if.end.i.i.i32
  %retval.0.i.i.i29 = phi i8 [ %9, %if.then.i2.i.i27 ], [ %call.i.i.i35, %if.end.i.i.i32 ]
  %call1.i30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call4, i8 noundef signext %retval.0.i.i.i29)
  %call.i.i31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i30)
  %.pr = load i32, ptr %sum, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit37, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %11 = phi i32 [ %.pr, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit37 ], [ %6, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %cmp6 = icmp sgt i32 %11, 49
  br i1 %cmp6, label %if.then7, label %if.else14

if.then7:                                         ; preds = %if.end
  %div8 = udiv i32 %11, 50
  %call9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div8)
  %vtable.i38 = load ptr, ptr %call9, align 8, !tbaa !9
  %vbase.offset.ptr.i39 = getelementptr i8, ptr %vtable.i38, i64 -24
  %vbase.offset.i40 = load i64, ptr %vbase.offset.ptr.i39, align 8
  %add.ptr.i41 = getelementptr inbounds i8, ptr %call9, i64 %vbase.offset.i40
  %_M_ctype.i.i42 = getelementptr inbounds nuw i8, ptr %add.ptr.i41, i64 240
  %12 = load ptr, ptr %_M_ctype.i.i42, align 8, !tbaa !11
  %tobool.not.i.i.i43 = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.i43, label %if.then.i.i.i56, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44

if.then.i.i.i56:                                  ; preds = %if.then7
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44: ; preds = %if.then7
  %_M_widen_ok.i.i.i45 = getelementptr inbounds nuw i8, ptr %12, i64 56
  %13 = load i8, ptr %_M_widen_ok.i.i.i45, align 8, !tbaa !29
  %tobool.not.i1.i.i46 = icmp eq i8 %13, 0
  br i1 %tobool.not.i1.i.i46, label %if.end.i.i.i52, label %if.then.i2.i.i47

if.then.i2.i.i47:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44
  %arrayidx.i.i.i48 = getelementptr inbounds nuw i8, ptr %12, i64 67
  %14 = load i8, ptr %arrayidx.i.i.i48, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit57

if.end.i.i.i52:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %12)
  %vtable.i.i.i53 = load ptr, ptr %12, align 8, !tbaa !9
  %vfn.i.i.i54 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i53, i64 48
  %15 = load ptr, ptr %vfn.i.i.i54, align 8
  %call.i.i.i55 = call noundef signext i8 %15(ptr noundef nonnull align 8 dereferenceable(570) %12, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit57

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit57: ; preds = %if.then.i2.i.i47, %if.end.i.i.i52
  %retval.0.i.i.i49 = phi i8 [ %14, %if.then.i2.i.i47 ], [ %call.i.i.i55, %if.end.i.i.i52 ]
  %call1.i50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call9, i8 noundef signext %retval.0.i.i.i49)
  %call.i.i51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i50)
  %16 = load i32, ptr %sum, align 4, !tbaa !5
  %.fr5 = freeze i32 %16
  %17 = srem i32 %.fr5, 50
  store i32 %17, ptr %sum, align 4, !tbaa !5
  br label %if.end17

if.else14:                                        ; preds = %if.end
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  %vtable.i58 = load ptr, ptr %call15, align 8, !tbaa !9
  %vbase.offset.ptr.i59 = getelementptr i8, ptr %vtable.i58, i64 -24
  %vbase.offset.i60 = load i64, ptr %vbase.offset.ptr.i59, align 8
  %add.ptr.i61 = getelementptr inbounds i8, ptr %call15, i64 %vbase.offset.i60
  %_M_ctype.i.i62 = getelementptr inbounds nuw i8, ptr %add.ptr.i61, i64 240
  %18 = load ptr, ptr %_M_ctype.i.i62, align 8, !tbaa !11
  %tobool.not.i.i.i63 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i63, label %if.then.i.i.i76, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i64

if.then.i.i.i76:                                  ; preds = %if.else14
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i64: ; preds = %if.else14
  %_M_widen_ok.i.i.i65 = getelementptr inbounds nuw i8, ptr %18, i64 56
  %19 = load i8, ptr %_M_widen_ok.i.i.i65, align 8, !tbaa !29
  %tobool.not.i1.i.i66 = icmp eq i8 %19, 0
  br i1 %tobool.not.i1.i.i66, label %if.end.i.i.i72, label %if.then.i2.i.i67

if.then.i2.i.i67:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i64
  %arrayidx.i.i.i68 = getelementptr inbounds nuw i8, ptr %18, i64 67
  %20 = load i8, ptr %arrayidx.i.i.i68, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit77

if.end.i.i.i72:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i64
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %18)
  %vtable.i.i.i73 = load ptr, ptr %18, align 8, !tbaa !9
  %vfn.i.i.i74 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i73, i64 48
  %21 = load ptr, ptr %vfn.i.i.i74, align 8
  %call.i.i.i75 = call noundef signext i8 %21(ptr noundef nonnull align 8 dereferenceable(570) %18, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit77

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit77: ; preds = %if.then.i2.i.i67, %if.end.i.i.i72
  %retval.0.i.i.i69 = phi i8 [ %20, %if.then.i2.i.i67 ], [ %call.i.i.i75, %if.end.i.i.i72 ]
  %call1.i70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call15, i8 noundef signext %retval.0.i.i.i69)
  %call.i.i71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i70)
  %.pr198 = load i32, ptr %sum, align 4, !tbaa !5
  br label %if.end17

if.end17:                                         ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit77, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit57
  %22 = phi i32 [ %.pr198, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit77 ], [ %17, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit57 ]
  %cmp18 = icmp sgt i32 %22, 19
  br i1 %cmp18, label %if.then19, label %if.else26

if.then19:                                        ; preds = %if.end17
  %div20 = udiv i32 %22, 20
  %call21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div20)
  %vtable.i78 = load ptr, ptr %call21, align 8, !tbaa !9
  %vbase.offset.ptr.i79 = getelementptr i8, ptr %vtable.i78, i64 -24
  %vbase.offset.i80 = load i64, ptr %vbase.offset.ptr.i79, align 8
  %add.ptr.i81 = getelementptr inbounds i8, ptr %call21, i64 %vbase.offset.i80
  %_M_ctype.i.i82 = getelementptr inbounds nuw i8, ptr %add.ptr.i81, i64 240
  %23 = load ptr, ptr %_M_ctype.i.i82, align 8, !tbaa !11
  %tobool.not.i.i.i83 = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.i83, label %if.then.i.i.i96, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i84

if.then.i.i.i96:                                  ; preds = %if.then19
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i84: ; preds = %if.then19
  %_M_widen_ok.i.i.i85 = getelementptr inbounds nuw i8, ptr %23, i64 56
  %24 = load i8, ptr %_M_widen_ok.i.i.i85, align 8, !tbaa !29
  %tobool.not.i1.i.i86 = icmp eq i8 %24, 0
  br i1 %tobool.not.i1.i.i86, label %if.end.i.i.i92, label %if.then.i2.i.i87

if.then.i2.i.i87:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i84
  %arrayidx.i.i.i88 = getelementptr inbounds nuw i8, ptr %23, i64 67
  %25 = load i8, ptr %arrayidx.i.i.i88, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit97

if.end.i.i.i92:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i84
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %23)
  %vtable.i.i.i93 = load ptr, ptr %23, align 8, !tbaa !9
  %vfn.i.i.i94 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i93, i64 48
  %26 = load ptr, ptr %vfn.i.i.i94, align 8
  %call.i.i.i95 = call noundef signext i8 %26(ptr noundef nonnull align 8 dereferenceable(570) %23, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit97

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit97: ; preds = %if.then.i2.i.i87, %if.end.i.i.i92
  %retval.0.i.i.i89 = phi i8 [ %25, %if.then.i2.i.i87 ], [ %call.i.i.i95, %if.end.i.i.i92 ]
  %call1.i90 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call21, i8 noundef signext %retval.0.i.i.i89)
  %call.i.i91 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i90)
  %27 = load i32, ptr %sum, align 4, !tbaa !5
  %.fr6 = freeze i32 %27
  %28 = srem i32 %.fr6, 20
  store i32 %28, ptr %sum, align 4, !tbaa !5
  br label %if.end29

if.else26:                                        ; preds = %if.end17
  %call27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  %vtable.i98 = load ptr, ptr %call27, align 8, !tbaa !9
  %vbase.offset.ptr.i99 = getelementptr i8, ptr %vtable.i98, i64 -24
  %vbase.offset.i100 = load i64, ptr %vbase.offset.ptr.i99, align 8
  %add.ptr.i101 = getelementptr inbounds i8, ptr %call27, i64 %vbase.offset.i100
  %_M_ctype.i.i102 = getelementptr inbounds nuw i8, ptr %add.ptr.i101, i64 240
  %29 = load ptr, ptr %_M_ctype.i.i102, align 8, !tbaa !11
  %tobool.not.i.i.i103 = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i103, label %if.then.i.i.i116, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i104

if.then.i.i.i116:                                 ; preds = %if.else26
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i104: ; preds = %if.else26
  %_M_widen_ok.i.i.i105 = getelementptr inbounds nuw i8, ptr %29, i64 56
  %30 = load i8, ptr %_M_widen_ok.i.i.i105, align 8, !tbaa !29
  %tobool.not.i1.i.i106 = icmp eq i8 %30, 0
  br i1 %tobool.not.i1.i.i106, label %if.end.i.i.i112, label %if.then.i2.i.i107

if.then.i2.i.i107:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i104
  %arrayidx.i.i.i108 = getelementptr inbounds nuw i8, ptr %29, i64 67
  %31 = load i8, ptr %arrayidx.i.i.i108, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit117

if.end.i.i.i112:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i104
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %29)
  %vtable.i.i.i113 = load ptr, ptr %29, align 8, !tbaa !9
  %vfn.i.i.i114 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i113, i64 48
  %32 = load ptr, ptr %vfn.i.i.i114, align 8
  %call.i.i.i115 = call noundef signext i8 %32(ptr noundef nonnull align 8 dereferenceable(570) %29, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit117

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit117: ; preds = %if.then.i2.i.i107, %if.end.i.i.i112
  %retval.0.i.i.i109 = phi i8 [ %31, %if.then.i2.i.i107 ], [ %call.i.i.i115, %if.end.i.i.i112 ]
  %call1.i110 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call27, i8 noundef signext %retval.0.i.i.i109)
  %call.i.i111 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i110)
  %.pr199 = load i32, ptr %sum, align 4, !tbaa !5
  br label %if.end29

if.end29:                                         ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit117, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit97
  %33 = phi i32 [ %.pr199, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit117 ], [ %28, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit97 ]
  %cmp30 = icmp sgt i32 %33, 9
  br i1 %cmp30, label %if.then31, label %if.else38

if.then31:                                        ; preds = %if.end29
  %div32 = udiv i32 %33, 10
  %call33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div32)
  %vtable.i118 = load ptr, ptr %call33, align 8, !tbaa !9
  %vbase.offset.ptr.i119 = getelementptr i8, ptr %vtable.i118, i64 -24
  %vbase.offset.i120 = load i64, ptr %vbase.offset.ptr.i119, align 8
  %add.ptr.i121 = getelementptr inbounds i8, ptr %call33, i64 %vbase.offset.i120
  %_M_ctype.i.i122 = getelementptr inbounds nuw i8, ptr %add.ptr.i121, i64 240
  %34 = load ptr, ptr %_M_ctype.i.i122, align 8, !tbaa !11
  %tobool.not.i.i.i123 = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i123, label %if.then.i.i.i136, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i124

if.then.i.i.i136:                                 ; preds = %if.then31
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i124: ; preds = %if.then31
  %_M_widen_ok.i.i.i125 = getelementptr inbounds nuw i8, ptr %34, i64 56
  %35 = load i8, ptr %_M_widen_ok.i.i.i125, align 8, !tbaa !29
  %tobool.not.i1.i.i126 = icmp eq i8 %35, 0
  br i1 %tobool.not.i1.i.i126, label %if.end.i.i.i132, label %if.then.i2.i.i127

if.then.i2.i.i127:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i124
  %arrayidx.i.i.i128 = getelementptr inbounds nuw i8, ptr %34, i64 67
  %36 = load i8, ptr %arrayidx.i.i.i128, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit137

if.end.i.i.i132:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i124
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %34)
  %vtable.i.i.i133 = load ptr, ptr %34, align 8, !tbaa !9
  %vfn.i.i.i134 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i133, i64 48
  %37 = load ptr, ptr %vfn.i.i.i134, align 8
  %call.i.i.i135 = call noundef signext i8 %37(ptr noundef nonnull align 8 dereferenceable(570) %34, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit137

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit137: ; preds = %if.then.i2.i.i127, %if.end.i.i.i132
  %retval.0.i.i.i129 = phi i8 [ %36, %if.then.i2.i.i127 ], [ %call.i.i.i135, %if.end.i.i.i132 ]
  %call1.i130 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call33, i8 noundef signext %retval.0.i.i.i129)
  %call.i.i131 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i130)
  %38 = load i32, ptr %sum, align 4, !tbaa !5
  %.fr7 = freeze i32 %38
  %39 = srem i32 %.fr7, 10
  store i32 %39, ptr %sum, align 4, !tbaa !5
  br label %if.end41

if.else38:                                        ; preds = %if.end29
  %call39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  %vtable.i138 = load ptr, ptr %call39, align 8, !tbaa !9
  %vbase.offset.ptr.i139 = getelementptr i8, ptr %vtable.i138, i64 -24
  %vbase.offset.i140 = load i64, ptr %vbase.offset.ptr.i139, align 8
  %add.ptr.i141 = getelementptr inbounds i8, ptr %call39, i64 %vbase.offset.i140
  %_M_ctype.i.i142 = getelementptr inbounds nuw i8, ptr %add.ptr.i141, i64 240
  %40 = load ptr, ptr %_M_ctype.i.i142, align 8, !tbaa !11
  %tobool.not.i.i.i143 = icmp eq ptr %40, null
  br i1 %tobool.not.i.i.i143, label %if.then.i.i.i156, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i144

if.then.i.i.i156:                                 ; preds = %if.else38
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i144: ; preds = %if.else38
  %_M_widen_ok.i.i.i145 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %41 = load i8, ptr %_M_widen_ok.i.i.i145, align 8, !tbaa !29
  %tobool.not.i1.i.i146 = icmp eq i8 %41, 0
  br i1 %tobool.not.i1.i.i146, label %if.end.i.i.i152, label %if.then.i2.i.i147

if.then.i2.i.i147:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i144
  %arrayidx.i.i.i148 = getelementptr inbounds nuw i8, ptr %40, i64 67
  %42 = load i8, ptr %arrayidx.i.i.i148, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit157

if.end.i.i.i152:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i144
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %40)
  %vtable.i.i.i153 = load ptr, ptr %40, align 8, !tbaa !9
  %vfn.i.i.i154 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i153, i64 48
  %43 = load ptr, ptr %vfn.i.i.i154, align 8
  %call.i.i.i155 = call noundef signext i8 %43(ptr noundef nonnull align 8 dereferenceable(570) %40, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit157

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit157: ; preds = %if.then.i2.i.i147, %if.end.i.i.i152
  %retval.0.i.i.i149 = phi i8 [ %42, %if.then.i2.i.i147 ], [ %call.i.i.i155, %if.end.i.i.i152 ]
  %call1.i150 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call39, i8 noundef signext %retval.0.i.i.i149)
  %call.i.i151 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i150)
  %.pr200 = load i32, ptr %sum, align 4, !tbaa !5
  br label %if.end41

if.end41:                                         ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit157, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit137
  %44 = phi i32 [ %.pr200, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit157 ], [ %39, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit137 ]
  %cmp42 = icmp sgt i32 %44, 4
  br i1 %cmp42, label %if.then43, label %if.else50

if.then43:                                        ; preds = %if.end41
  %div44 = udiv i32 %44, 5
  %call45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div44)
  %vtable.i158 = load ptr, ptr %call45, align 8, !tbaa !9
  %vbase.offset.ptr.i159 = getelementptr i8, ptr %vtable.i158, i64 -24
  %vbase.offset.i160 = load i64, ptr %vbase.offset.ptr.i159, align 8
  %add.ptr.i161 = getelementptr inbounds i8, ptr %call45, i64 %vbase.offset.i160
  %_M_ctype.i.i162 = getelementptr inbounds nuw i8, ptr %add.ptr.i161, i64 240
  %45 = load ptr, ptr %_M_ctype.i.i162, align 8, !tbaa !11
  %tobool.not.i.i.i163 = icmp eq ptr %45, null
  br i1 %tobool.not.i.i.i163, label %if.then.i.i.i176, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i164

if.then.i.i.i176:                                 ; preds = %if.then43
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i164: ; preds = %if.then43
  %_M_widen_ok.i.i.i165 = getelementptr inbounds nuw i8, ptr %45, i64 56
  %46 = load i8, ptr %_M_widen_ok.i.i.i165, align 8, !tbaa !29
  %tobool.not.i1.i.i166 = icmp eq i8 %46, 0
  br i1 %tobool.not.i1.i.i166, label %if.end.i.i.i172, label %if.then.i2.i.i167

if.then.i2.i.i167:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i164
  %arrayidx.i.i.i168 = getelementptr inbounds nuw i8, ptr %45, i64 67
  %47 = load i8, ptr %arrayidx.i.i.i168, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit177

if.end.i.i.i172:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i164
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %45)
  %vtable.i.i.i173 = load ptr, ptr %45, align 8, !tbaa !9
  %vfn.i.i.i174 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i173, i64 48
  %48 = load ptr, ptr %vfn.i.i.i174, align 8
  %call.i.i.i175 = call noundef signext i8 %48(ptr noundef nonnull align 8 dereferenceable(570) %45, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit177

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit177: ; preds = %if.then.i2.i.i167, %if.end.i.i.i172
  %retval.0.i.i.i169 = phi i8 [ %47, %if.then.i2.i.i167 ], [ %call.i.i.i175, %if.end.i.i.i172 ]
  %call1.i170 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call45, i8 noundef signext %retval.0.i.i.i169)
  %call.i.i171 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i170)
  %49 = load i32, ptr %sum, align 4, !tbaa !5
  %.fr8 = freeze i32 %49
  %50 = srem i32 %.fr8, 5
  store i32 %50, ptr %sum, align 4, !tbaa !5
  br label %if.end53

if.else50:                                        ; preds = %if.end41
  %call51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  %vtable.i178 = load ptr, ptr %call51, align 8, !tbaa !9
  %vbase.offset.ptr.i179 = getelementptr i8, ptr %vtable.i178, i64 -24
  %vbase.offset.i180 = load i64, ptr %vbase.offset.ptr.i179, align 8
  %add.ptr.i181 = getelementptr inbounds i8, ptr %call51, i64 %vbase.offset.i180
  %_M_ctype.i.i182 = getelementptr inbounds nuw i8, ptr %add.ptr.i181, i64 240
  %51 = load ptr, ptr %_M_ctype.i.i182, align 8, !tbaa !11
  %tobool.not.i.i.i183 = icmp eq ptr %51, null
  br i1 %tobool.not.i.i.i183, label %if.then.i.i.i196, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i184

if.then.i.i.i196:                                 ; preds = %if.else50
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i184: ; preds = %if.else50
  %_M_widen_ok.i.i.i185 = getelementptr inbounds nuw i8, ptr %51, i64 56
  %52 = load i8, ptr %_M_widen_ok.i.i.i185, align 8, !tbaa !29
  %tobool.not.i1.i.i186 = icmp eq i8 %52, 0
  br i1 %tobool.not.i1.i.i186, label %if.end.i.i.i192, label %if.then.i2.i.i187

if.then.i2.i.i187:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i184
  %arrayidx.i.i.i188 = getelementptr inbounds nuw i8, ptr %51, i64 67
  %53 = load i8, ptr %arrayidx.i.i.i188, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit197

if.end.i.i.i192:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i184
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %51)
  %vtable.i.i.i193 = load ptr, ptr %51, align 8, !tbaa !9
  %vfn.i.i.i194 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i193, i64 48
  %54 = load ptr, ptr %vfn.i.i.i194, align 8
  %call.i.i.i195 = call noundef signext i8 %54(ptr noundef nonnull align 8 dereferenceable(570) %51, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit197

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit197: ; preds = %if.then.i2.i.i187, %if.end.i.i.i192
  %retval.0.i.i.i189 = phi i8 [ %53, %if.then.i2.i.i187 ], [ %call.i.i.i195, %if.end.i.i.i192 ]
  %call1.i190 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call51, i8 noundef signext %retval.0.i.i.i189)
  %call.i.i191 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i190)
  %.pre = load i32, ptr %sum, align 4, !tbaa !5
  br label %if.end53

if.end53:                                         ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit197, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit177
  %55 = phi i32 [ %.pre, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit197 ], [ %50, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit177 ]
  %call54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %55)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sum) #4
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
