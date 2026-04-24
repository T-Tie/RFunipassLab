; ModuleID = '<stdin>'
source_filename = "/tmp/tmpfj53a0yb.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %money = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %money) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %money)
  %0 = load i32, ptr %money, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 99
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %div = udiv i32 %0, 100
  %mul.neg = mul nsw i32 %div, -100
  %sub = add nsw i32 %mul.neg, %0
  store i32 %sub, ptr %money, align 4, !tbaa !5
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div)
  %vtable.i = load ptr, ptr %call2, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call2, i64 %vbase.offset.i
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
  %call1.i23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call2, i8 noundef signext %retval.0.i.i.i)
  br label %if.end

if.else:                                          ; preds = %entry
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %vtable.i25 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i26 = getelementptr i8, ptr %vtable.i25, i64 -24
  %vbase.offset.i27 = load i64, ptr %vbase.offset.ptr.i26, align 8
  %add.ptr.i28 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i27
  %_M_ctype.i.i29 = getelementptr inbounds nuw i8, ptr %add.ptr.i28, i64 240
  %5 = load ptr, ptr %_M_ctype.i.i29, align 8, !tbaa !11
  %tobool.not.i.i.i30 = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i30, label %if.then.i.i.i43, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31

if.then.i.i.i43:                                  ; preds = %if.else
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31: ; preds = %if.else
  %_M_widen_ok.i.i.i32 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %6 = load i8, ptr %_M_widen_ok.i.i.i32, align 8, !tbaa !29
  %tobool.not.i1.i.i33 = icmp eq i8 %6, 0
  br i1 %tobool.not.i1.i.i33, label %if.end.i.i.i39, label %if.then.i2.i.i34

if.then.i2.i.i34:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31
  %arrayidx.i.i.i35 = getelementptr inbounds nuw i8, ptr %5, i64 67
  %7 = load i8, ptr %arrayidx.i.i.i35, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit44

if.end.i.i.i39:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %5)
  %vtable.i.i.i40 = load ptr, ptr %5, align 8, !tbaa !9
  %vfn.i.i.i41 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i40, i64 48
  %8 = load ptr, ptr %vfn.i.i.i41, align 8
  %call.i.i.i42 = call noundef signext i8 %8(ptr noundef nonnull align 8 dereferenceable(570) %5, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit44

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit44: ; preds = %if.then.i2.i.i34, %if.end.i.i.i39
  %retval.0.i.i.i36 = phi i8 [ %7, %if.then.i2.i.i34 ], [ %call.i.i.i42, %if.end.i.i.i39 ]
  %call1.i37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i36)
  br label %if.end

if.end:                                           ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit44, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %call1.i37.sink = phi ptr [ %call1.i37, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit44 ], [ %call1.i23, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %call.i.i38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i37.sink)
  %9 = load i32, ptr %money, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %9, 49
  br i1 %cmp7, label %if.then8, label %if.else14

if.then8:                                         ; preds = %if.end
  %div6 = udiv i32 %9, 50
  %mul10.neg = mul nsw i32 %div6, -50
  %sub11 = add nsw i32 %mul10.neg, %9
  store i32 %sub11, ptr %money, align 4, !tbaa !5
  %call12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div6)
  %vtable.i45 = load ptr, ptr %call12, align 8, !tbaa !9
  %vbase.offset.ptr.i46 = getelementptr i8, ptr %vtable.i45, i64 -24
  %vbase.offset.i47 = load i64, ptr %vbase.offset.ptr.i46, align 8
  %add.ptr.i48 = getelementptr inbounds i8, ptr %call12, i64 %vbase.offset.i47
  %_M_ctype.i.i49 = getelementptr inbounds nuw i8, ptr %add.ptr.i48, i64 240
  %10 = load ptr, ptr %_M_ctype.i.i49, align 8, !tbaa !11
  %tobool.not.i.i.i50 = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i50, label %if.then.i.i.i63, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51

if.then.i.i.i63:                                  ; preds = %if.then8
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51: ; preds = %if.then8
  %_M_widen_ok.i.i.i52 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %11 = load i8, ptr %_M_widen_ok.i.i.i52, align 8, !tbaa !29
  %tobool.not.i1.i.i53 = icmp eq i8 %11, 0
  br i1 %tobool.not.i1.i.i53, label %if.end.i.i.i59, label %if.then.i2.i.i54

if.then.i2.i.i54:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51
  %arrayidx.i.i.i55 = getelementptr inbounds nuw i8, ptr %10, i64 67
  %12 = load i8, ptr %arrayidx.i.i.i55, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit64

if.end.i.i.i59:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %10)
  %vtable.i.i.i60 = load ptr, ptr %10, align 8, !tbaa !9
  %vfn.i.i.i61 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i60, i64 48
  %13 = load ptr, ptr %vfn.i.i.i61, align 8
  %call.i.i.i62 = call noundef signext i8 %13(ptr noundef nonnull align 8 dereferenceable(570) %10, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit64

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit64: ; preds = %if.then.i2.i.i54, %if.end.i.i.i59
  %retval.0.i.i.i56 = phi i8 [ %12, %if.then.i2.i.i54 ], [ %call.i.i.i62, %if.end.i.i.i59 ]
  %call1.i57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call12, i8 noundef signext %retval.0.i.i.i56)
  br label %if.end17

if.else14:                                        ; preds = %if.end
  %call1.i9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %vtable.i65 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i66 = getelementptr i8, ptr %vtable.i65, i64 -24
  %vbase.offset.i67 = load i64, ptr %vbase.offset.ptr.i66, align 8
  %add.ptr.i68 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i67
  %_M_ctype.i.i69 = getelementptr inbounds nuw i8, ptr %add.ptr.i68, i64 240
  %14 = load ptr, ptr %_M_ctype.i.i69, align 8, !tbaa !11
  %tobool.not.i.i.i70 = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i70, label %if.then.i.i.i83, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i71

if.then.i.i.i83:                                  ; preds = %if.else14
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i71: ; preds = %if.else14
  %_M_widen_ok.i.i.i72 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %15 = load i8, ptr %_M_widen_ok.i.i.i72, align 8, !tbaa !29
  %tobool.not.i1.i.i73 = icmp eq i8 %15, 0
  br i1 %tobool.not.i1.i.i73, label %if.end.i.i.i79, label %if.then.i2.i.i74

if.then.i2.i.i74:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i71
  %arrayidx.i.i.i75 = getelementptr inbounds nuw i8, ptr %14, i64 67
  %16 = load i8, ptr %arrayidx.i.i.i75, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit84

if.end.i.i.i79:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i71
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %14)
  %vtable.i.i.i80 = load ptr, ptr %14, align 8, !tbaa !9
  %vfn.i.i.i81 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i80, i64 48
  %17 = load ptr, ptr %vfn.i.i.i81, align 8
  %call.i.i.i82 = call noundef signext i8 %17(ptr noundef nonnull align 8 dereferenceable(570) %14, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit84

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit84: ; preds = %if.then.i2.i.i74, %if.end.i.i.i79
  %retval.0.i.i.i76 = phi i8 [ %16, %if.then.i2.i.i74 ], [ %call.i.i.i82, %if.end.i.i.i79 ]
  %call1.i77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i76)
  br label %if.end17

if.end17:                                         ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit84, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit64
  %call1.i77.sink = phi ptr [ %call1.i77, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit84 ], [ %call1.i57, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit64 ]
  %call.i.i78 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i77.sink)
  %18 = load i32, ptr %money, align 4, !tbaa !5
  %cmp19 = icmp sgt i32 %18, 19
  br i1 %cmp19, label %if.then20, label %if.else26

if.then20:                                        ; preds = %if.end17
  %div18 = udiv i32 %18, 20
  %mul22.neg = mul nsw i32 %div18, -20
  %sub23 = add nsw i32 %mul22.neg, %18
  store i32 %sub23, ptr %money, align 4, !tbaa !5
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div18)
  %vtable.i85 = load ptr, ptr %call24, align 8, !tbaa !9
  %vbase.offset.ptr.i86 = getelementptr i8, ptr %vtable.i85, i64 -24
  %vbase.offset.i87 = load i64, ptr %vbase.offset.ptr.i86, align 8
  %add.ptr.i88 = getelementptr inbounds i8, ptr %call24, i64 %vbase.offset.i87
  %_M_ctype.i.i89 = getelementptr inbounds nuw i8, ptr %add.ptr.i88, i64 240
  %19 = load ptr, ptr %_M_ctype.i.i89, align 8, !tbaa !11
  %tobool.not.i.i.i90 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.i90, label %if.then.i.i.i103, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i91

if.then.i.i.i103:                                 ; preds = %if.then20
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i91: ; preds = %if.then20
  %_M_widen_ok.i.i.i92 = getelementptr inbounds nuw i8, ptr %19, i64 56
  %20 = load i8, ptr %_M_widen_ok.i.i.i92, align 8, !tbaa !29
  %tobool.not.i1.i.i93 = icmp eq i8 %20, 0
  br i1 %tobool.not.i1.i.i93, label %if.end.i.i.i99, label %if.then.i2.i.i94

if.then.i2.i.i94:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i91
  %arrayidx.i.i.i95 = getelementptr inbounds nuw i8, ptr %19, i64 67
  %21 = load i8, ptr %arrayidx.i.i.i95, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit104

if.end.i.i.i99:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i91
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %19)
  %vtable.i.i.i100 = load ptr, ptr %19, align 8, !tbaa !9
  %vfn.i.i.i101 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i100, i64 48
  %22 = load ptr, ptr %vfn.i.i.i101, align 8
  %call.i.i.i102 = call noundef signext i8 %22(ptr noundef nonnull align 8 dereferenceable(570) %19, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit104

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit104: ; preds = %if.then.i2.i.i94, %if.end.i.i.i99
  %retval.0.i.i.i96 = phi i8 [ %21, %if.then.i2.i.i94 ], [ %call.i.i.i102, %if.end.i.i.i99 ]
  %call1.i97 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call24, i8 noundef signext %retval.0.i.i.i96)
  br label %if.end29

if.else26:                                        ; preds = %if.end17
  %call1.i13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %vtable.i105 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i106 = getelementptr i8, ptr %vtable.i105, i64 -24
  %vbase.offset.i107 = load i64, ptr %vbase.offset.ptr.i106, align 8
  %add.ptr.i108 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i107
  %_M_ctype.i.i109 = getelementptr inbounds nuw i8, ptr %add.ptr.i108, i64 240
  %23 = load ptr, ptr %_M_ctype.i.i109, align 8, !tbaa !11
  %tobool.not.i.i.i110 = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.i110, label %if.then.i.i.i123, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i111

if.then.i.i.i123:                                 ; preds = %if.else26
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i111: ; preds = %if.else26
  %_M_widen_ok.i.i.i112 = getelementptr inbounds nuw i8, ptr %23, i64 56
  %24 = load i8, ptr %_M_widen_ok.i.i.i112, align 8, !tbaa !29
  %tobool.not.i1.i.i113 = icmp eq i8 %24, 0
  br i1 %tobool.not.i1.i.i113, label %if.end.i.i.i119, label %if.then.i2.i.i114

if.then.i2.i.i114:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i111
  %arrayidx.i.i.i115 = getelementptr inbounds nuw i8, ptr %23, i64 67
  %25 = load i8, ptr %arrayidx.i.i.i115, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit124

if.end.i.i.i119:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i111
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %23)
  %vtable.i.i.i120 = load ptr, ptr %23, align 8, !tbaa !9
  %vfn.i.i.i121 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i120, i64 48
  %26 = load ptr, ptr %vfn.i.i.i121, align 8
  %call.i.i.i122 = call noundef signext i8 %26(ptr noundef nonnull align 8 dereferenceable(570) %23, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit124

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit124: ; preds = %if.then.i2.i.i114, %if.end.i.i.i119
  %retval.0.i.i.i116 = phi i8 [ %25, %if.then.i2.i.i114 ], [ %call.i.i.i122, %if.end.i.i.i119 ]
  %call1.i117 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i116)
  br label %if.end29

if.end29:                                         ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit124, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit104
  %call1.i117.sink = phi ptr [ %call1.i117, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit124 ], [ %call1.i97, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit104 ]
  %call.i.i118 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i117.sink)
  %27 = load i32, ptr %money, align 4, !tbaa !5
  %cmp31 = icmp sgt i32 %27, 9
  br i1 %cmp31, label %if.then32, label %if.else38

if.then32:                                        ; preds = %if.end29
  %div30 = udiv i32 %27, 10
  %mul34.neg = mul nsw i32 %div30, -10
  %sub35 = add nsw i32 %mul34.neg, %27
  store i32 %sub35, ptr %money, align 4, !tbaa !5
  %call36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div30)
  %vtable.i125 = load ptr, ptr %call36, align 8, !tbaa !9
  %vbase.offset.ptr.i126 = getelementptr i8, ptr %vtable.i125, i64 -24
  %vbase.offset.i127 = load i64, ptr %vbase.offset.ptr.i126, align 8
  %add.ptr.i128 = getelementptr inbounds i8, ptr %call36, i64 %vbase.offset.i127
  %_M_ctype.i.i129 = getelementptr inbounds nuw i8, ptr %add.ptr.i128, i64 240
  %28 = load ptr, ptr %_M_ctype.i.i129, align 8, !tbaa !11
  %tobool.not.i.i.i130 = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.i130, label %if.then.i.i.i143, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i131

if.then.i.i.i143:                                 ; preds = %if.then32
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i131: ; preds = %if.then32
  %_M_widen_ok.i.i.i132 = getelementptr inbounds nuw i8, ptr %28, i64 56
  %29 = load i8, ptr %_M_widen_ok.i.i.i132, align 8, !tbaa !29
  %tobool.not.i1.i.i133 = icmp eq i8 %29, 0
  br i1 %tobool.not.i1.i.i133, label %if.end.i.i.i139, label %if.then.i2.i.i134

if.then.i2.i.i134:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i131
  %arrayidx.i.i.i135 = getelementptr inbounds nuw i8, ptr %28, i64 67
  %30 = load i8, ptr %arrayidx.i.i.i135, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit144

if.end.i.i.i139:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i131
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %28)
  %vtable.i.i.i140 = load ptr, ptr %28, align 8, !tbaa !9
  %vfn.i.i.i141 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i140, i64 48
  %31 = load ptr, ptr %vfn.i.i.i141, align 8
  %call.i.i.i142 = call noundef signext i8 %31(ptr noundef nonnull align 8 dereferenceable(570) %28, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit144

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit144: ; preds = %if.then.i2.i.i134, %if.end.i.i.i139
  %retval.0.i.i.i136 = phi i8 [ %30, %if.then.i2.i.i134 ], [ %call.i.i.i142, %if.end.i.i.i139 ]
  %call1.i137 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call36, i8 noundef signext %retval.0.i.i.i136)
  br label %if.end41

if.else38:                                        ; preds = %if.end29
  %call1.i17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %vtable.i145 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i146 = getelementptr i8, ptr %vtable.i145, i64 -24
  %vbase.offset.i147 = load i64, ptr %vbase.offset.ptr.i146, align 8
  %add.ptr.i148 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i147
  %_M_ctype.i.i149 = getelementptr inbounds nuw i8, ptr %add.ptr.i148, i64 240
  %32 = load ptr, ptr %_M_ctype.i.i149, align 8, !tbaa !11
  %tobool.not.i.i.i150 = icmp eq ptr %32, null
  br i1 %tobool.not.i.i.i150, label %if.then.i.i.i163, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i151

if.then.i.i.i163:                                 ; preds = %if.else38
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i151: ; preds = %if.else38
  %_M_widen_ok.i.i.i152 = getelementptr inbounds nuw i8, ptr %32, i64 56
  %33 = load i8, ptr %_M_widen_ok.i.i.i152, align 8, !tbaa !29
  %tobool.not.i1.i.i153 = icmp eq i8 %33, 0
  br i1 %tobool.not.i1.i.i153, label %if.end.i.i.i159, label %if.then.i2.i.i154

if.then.i2.i.i154:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i151
  %arrayidx.i.i.i155 = getelementptr inbounds nuw i8, ptr %32, i64 67
  %34 = load i8, ptr %arrayidx.i.i.i155, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit164

if.end.i.i.i159:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i151
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %32)
  %vtable.i.i.i160 = load ptr, ptr %32, align 8, !tbaa !9
  %vfn.i.i.i161 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i160, i64 48
  %35 = load ptr, ptr %vfn.i.i.i161, align 8
  %call.i.i.i162 = call noundef signext i8 %35(ptr noundef nonnull align 8 dereferenceable(570) %32, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit164

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit164: ; preds = %if.then.i2.i.i154, %if.end.i.i.i159
  %retval.0.i.i.i156 = phi i8 [ %34, %if.then.i2.i.i154 ], [ %call.i.i.i162, %if.end.i.i.i159 ]
  %call1.i157 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i156)
  br label %if.end41

if.end41:                                         ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit164, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit144
  %call1.i157.sink = phi ptr [ %call1.i157, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit164 ], [ %call1.i137, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit144 ]
  %call.i.i158 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i157.sink)
  %36 = load i32, ptr %money, align 4, !tbaa !5
  %cmp43 = icmp sgt i32 %36, 4
  br i1 %cmp43, label %if.then44, label %if.else50

if.then44:                                        ; preds = %if.end41
  %div42 = udiv i32 %36, 5
  %mul46.neg = mul nsw i32 %div42, -5
  %sub47 = add nsw i32 %mul46.neg, %36
  store i32 %sub47, ptr %money, align 4, !tbaa !5
  %call48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div42)
  %vtable.i165 = load ptr, ptr %call48, align 8, !tbaa !9
  %vbase.offset.ptr.i166 = getelementptr i8, ptr %vtable.i165, i64 -24
  %vbase.offset.i167 = load i64, ptr %vbase.offset.ptr.i166, align 8
  %add.ptr.i168 = getelementptr inbounds i8, ptr %call48, i64 %vbase.offset.i167
  %_M_ctype.i.i169 = getelementptr inbounds nuw i8, ptr %add.ptr.i168, i64 240
  %37 = load ptr, ptr %_M_ctype.i.i169, align 8, !tbaa !11
  %tobool.not.i.i.i170 = icmp eq ptr %37, null
  br i1 %tobool.not.i.i.i170, label %if.then.i.i.i183, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i171

if.then.i.i.i183:                                 ; preds = %if.then44
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i171: ; preds = %if.then44
  %_M_widen_ok.i.i.i172 = getelementptr inbounds nuw i8, ptr %37, i64 56
  %38 = load i8, ptr %_M_widen_ok.i.i.i172, align 8, !tbaa !29
  %tobool.not.i1.i.i173 = icmp eq i8 %38, 0
  br i1 %tobool.not.i1.i.i173, label %if.end.i.i.i179, label %if.then.i2.i.i174

if.then.i2.i.i174:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i171
  %arrayidx.i.i.i175 = getelementptr inbounds nuw i8, ptr %37, i64 67
  %39 = load i8, ptr %arrayidx.i.i.i175, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit184

if.end.i.i.i179:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i171
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %37)
  %vtable.i.i.i180 = load ptr, ptr %37, align 8, !tbaa !9
  %vfn.i.i.i181 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i180, i64 48
  %40 = load ptr, ptr %vfn.i.i.i181, align 8
  %call.i.i.i182 = call noundef signext i8 %40(ptr noundef nonnull align 8 dereferenceable(570) %37, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit184

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit184: ; preds = %if.then.i2.i.i174, %if.end.i.i.i179
  %retval.0.i.i.i176 = phi i8 [ %39, %if.then.i2.i.i174 ], [ %call.i.i.i182, %if.end.i.i.i179 ]
  %call1.i177 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call48, i8 noundef signext %retval.0.i.i.i176)
  br label %if.end53

if.else50:                                        ; preds = %if.end41
  %call1.i21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %vtable.i185 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i186 = getelementptr i8, ptr %vtable.i185, i64 -24
  %vbase.offset.i187 = load i64, ptr %vbase.offset.ptr.i186, align 8
  %add.ptr.i188 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i187
  %_M_ctype.i.i189 = getelementptr inbounds nuw i8, ptr %add.ptr.i188, i64 240
  %41 = load ptr, ptr %_M_ctype.i.i189, align 8, !tbaa !11
  %tobool.not.i.i.i190 = icmp eq ptr %41, null
  br i1 %tobool.not.i.i.i190, label %if.then.i.i.i203, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i191

if.then.i.i.i203:                                 ; preds = %if.else50
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i191: ; preds = %if.else50
  %_M_widen_ok.i.i.i192 = getelementptr inbounds nuw i8, ptr %41, i64 56
  %42 = load i8, ptr %_M_widen_ok.i.i.i192, align 8, !tbaa !29
  %tobool.not.i1.i.i193 = icmp eq i8 %42, 0
  br i1 %tobool.not.i1.i.i193, label %if.end.i.i.i199, label %if.then.i2.i.i194

if.then.i2.i.i194:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i191
  %arrayidx.i.i.i195 = getelementptr inbounds nuw i8, ptr %41, i64 67
  %43 = load i8, ptr %arrayidx.i.i.i195, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit204

if.end.i.i.i199:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i191
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %41)
  %vtable.i.i.i200 = load ptr, ptr %41, align 8, !tbaa !9
  %vfn.i.i.i201 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i200, i64 48
  %44 = load ptr, ptr %vfn.i.i.i201, align 8
  %call.i.i.i202 = call noundef signext i8 %44(ptr noundef nonnull align 8 dereferenceable(570) %41, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit204

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit204: ; preds = %if.then.i2.i.i194, %if.end.i.i.i199
  %retval.0.i.i.i196 = phi i8 [ %43, %if.then.i2.i.i194 ], [ %call.i.i.i202, %if.end.i.i.i199 ]
  %call1.i197 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i196)
  br label %if.end53

if.end53:                                         ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit204, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit184
  %call1.i197.sink = phi ptr [ %call1.i197, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit204 ], [ %call1.i177, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit184 ]
  %call.i.i198 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i197.sink)
  %45 = load i32, ptr %money, align 4, !tbaa !5
  %call54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %45)
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

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

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
