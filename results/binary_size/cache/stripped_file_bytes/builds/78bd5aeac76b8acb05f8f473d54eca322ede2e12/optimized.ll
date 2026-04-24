; ModuleID = '<stdin>'
source_filename = "/tmp/tmp27rfxg7c.cpp"
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %.pr = load i32, ptr %n, align 4, !tbaa !5
  %cmp122 = icmp sgt i32 %.pr, 99
  br i1 %cmp122, label %while.body.preheader, label %while.cond1thread-pre-split

while.body.preheader:                             ; preds = %entry
  %0 = add nsw i32 %.pr, -100
  %1 = call i32 @llvm.usub.sat.i32(i32 %.pr, i32 199)
  %2 = add nuw i32 %1, 99
  %3 = udiv i32 %2, 100
  %.neg = mul nsw i32 %3, -100
  %4 = add nsw i32 %.neg, %0
  %5 = add nuw nsw i32 %3, 1
  store i32 %4, ptr %n, align 4, !tbaa !5
  br label %while.cond1thread-pre-split

while.cond1thread-pre-split:                      ; preds = %while.body.preheader, %entry
  %.pr117 = phi i32 [ %4, %while.body.preheader ], [ %.pr, %entry ]
  %a.0.lcssa = phi i32 [ %5, %while.body.preheader ], [ 0, %entry ]
  %cmp2124 = icmp sgt i32 %.pr117, 49
  br i1 %cmp2124, label %while.body3.preheader, label %while.cond7thread-pre-split

while.body3.preheader:                            ; preds = %while.cond1thread-pre-split
  %6 = add nsw i32 %.pr117, -50
  %7 = call i32 @llvm.usub.sat.i32(i32 %.pr117, i32 99)
  %8 = add nuw i32 %7, 49
  %9 = udiv i32 %8, 50
  %.neg148 = mul nsw i32 %9, -50
  %10 = add nsw i32 %.neg148, %6
  %11 = add nuw nsw i32 %9, 1
  store i32 %10, ptr %n, align 4, !tbaa !5
  br label %while.cond7thread-pre-split

while.cond7thread-pre-split:                      ; preds = %while.body3.preheader, %while.cond1thread-pre-split
  %.pr118 = phi i32 [ %10, %while.body3.preheader ], [ %.pr117, %while.cond1thread-pre-split ]
  %b.0.lcssa = phi i32 [ %11, %while.body3.preheader ], [ 0, %while.cond1thread-pre-split ]
  %cmp8127 = icmp sgt i32 %.pr118, 19
  br i1 %cmp8127, label %while.body9.preheader, label %while.cond13thread-pre-split

while.body9.preheader:                            ; preds = %while.cond7thread-pre-split
  %12 = add nsw i32 %.pr118, -20
  %13 = call i32 @llvm.usub.sat.i32(i32 %.pr118, i32 39)
  %14 = add nuw i32 %13, 19
  %15 = udiv i32 %14, 20
  %.neg149 = mul nsw i32 %15, -20
  %16 = add nsw i32 %.neg149, %12
  %17 = add nuw nsw i32 %15, 1
  store i32 %16, ptr %n, align 4, !tbaa !5
  br label %while.cond13thread-pre-split

while.cond13thread-pre-split:                     ; preds = %while.body9.preheader, %while.cond7thread-pre-split
  %.pr119 = phi i32 [ %16, %while.body9.preheader ], [ %.pr118, %while.cond7thread-pre-split ]
  %c.0.lcssa = phi i32 [ %17, %while.body9.preheader ], [ 0, %while.cond7thread-pre-split ]
  %cmp14130 = icmp sgt i32 %.pr119, 9
  br i1 %cmp14130, label %while.body15.preheader, label %while.cond19thread-pre-split

while.body15.preheader:                           ; preds = %while.cond13thread-pre-split
  %18 = add nsw i32 %.pr119, -10
  %19 = call i32 @llvm.usub.sat.i32(i32 %.pr119, i32 19)
  %20 = add nuw i32 %19, 9
  %21 = udiv i32 %20, 10
  %.neg150 = mul nsw i32 %21, -10
  %22 = add nsw i32 %.neg150, %18
  %23 = add nuw nsw i32 %21, 1
  store i32 %22, ptr %n, align 4, !tbaa !5
  br label %while.cond19thread-pre-split

while.cond19thread-pre-split:                     ; preds = %while.body15.preheader, %while.cond13thread-pre-split
  %.pr120 = phi i32 [ %22, %while.body15.preheader ], [ %.pr119, %while.cond13thread-pre-split ]
  %d.0.lcssa = phi i32 [ %23, %while.body15.preheader ], [ 0, %while.cond13thread-pre-split ]
  %cmp20133 = icmp sgt i32 %.pr120, 4
  br i1 %cmp20133, label %while.body21.preheader, label %while.cond25thread-pre-split

while.body21.preheader:                           ; preds = %while.cond19thread-pre-split
  %24 = add nsw i32 %.pr120, -5
  %25 = call i32 @llvm.usub.sat.i32(i32 %.pr120, i32 9)
  %26 = add nuw i32 %25, 4
  %27 = udiv i32 %26, 5
  %.neg151 = mul nsw i32 %27, -5
  %28 = add nsw i32 %.neg151, %24
  %29 = add nuw nsw i32 %27, 1
  store i32 %28, ptr %n, align 4, !tbaa !5
  br label %while.cond25thread-pre-split

while.cond25thread-pre-split:                     ; preds = %while.body21.preheader, %while.cond19thread-pre-split
  %.pr121 = phi i32 [ %28, %while.body21.preheader ], [ %.pr120, %while.cond19thread-pre-split ]
  %e.0.lcssa = phi i32 [ %29, %while.body21.preheader ], [ 0, %while.cond19thread-pre-split ]
  %cmp26136 = icmp sgt i32 %.pr121, 0
  br i1 %cmp26136, label %while.body27.preheader, label %while.end30

while.body27.preheader:                           ; preds = %while.cond25thread-pre-split
  store i32 0, ptr %n, align 4, !tbaa !5
  br label %while.end30

while.end30:                                      ; preds = %while.body27.preheader, %while.cond25thread-pre-split
  %f.0.lcssa = phi i32 [ %.pr121, %while.body27.preheader ], [ 0, %while.cond25thread-pre-split ]
  %call31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %a.0.lcssa)
  %vtable.i = load ptr, ptr %call31, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call31, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %30 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !11
  %tobool.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %while.end30
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %while.end30
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %30, i64 56
  %31 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !29
  %tobool.not.i1.i.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %30, i64 67
  %32 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %30)
  %vtable.i.i.i = load ptr, ptr %30, align 8, !tbaa !9
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %33 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %33(ptr noundef nonnull align 8 dereferenceable(570) %30, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %32, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call31, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %call33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i, i32 noundef %b.0.lcssa)
  %vtable.i17 = load ptr, ptr %call33, align 8, !tbaa !9
  %vbase.offset.ptr.i18 = getelementptr i8, ptr %vtable.i17, i64 -24
  %vbase.offset.i19 = load i64, ptr %vbase.offset.ptr.i18, align 8
  %add.ptr.i20 = getelementptr inbounds i8, ptr %call33, i64 %vbase.offset.i19
  %_M_ctype.i.i21 = getelementptr inbounds nuw i8, ptr %add.ptr.i20, i64 240
  %34 = load ptr, ptr %_M_ctype.i.i21, align 8, !tbaa !11
  %tobool.not.i.i.i22 = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i22, label %if.then.i.i.i35, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i23

if.then.i.i.i35:                                  ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i23: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %_M_widen_ok.i.i.i24 = getelementptr inbounds nuw i8, ptr %34, i64 56
  %35 = load i8, ptr %_M_widen_ok.i.i.i24, align 8, !tbaa !29
  %tobool.not.i1.i.i25 = icmp eq i8 %35, 0
  br i1 %tobool.not.i1.i.i25, label %if.end.i.i.i31, label %if.then.i2.i.i26

if.then.i2.i.i26:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i23
  %arrayidx.i.i.i27 = getelementptr inbounds nuw i8, ptr %34, i64 67
  %36 = load i8, ptr %arrayidx.i.i.i27, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit36

if.end.i.i.i31:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i23
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %34)
  %vtable.i.i.i32 = load ptr, ptr %34, align 8, !tbaa !9
  %vfn.i.i.i33 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i32, i64 48
  %37 = load ptr, ptr %vfn.i.i.i33, align 8
  %call.i.i.i34 = call noundef signext i8 %37(ptr noundef nonnull align 8 dereferenceable(570) %34, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit36

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit36: ; preds = %if.then.i2.i.i26, %if.end.i.i.i31
  %retval.0.i.i.i28 = phi i8 [ %36, %if.then.i2.i.i26 ], [ %call.i.i.i34, %if.end.i.i.i31 ]
  %call1.i29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call33, i8 noundef signext %retval.0.i.i.i28)
  %call.i.i30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i29)
  %call35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i30, i32 noundef %c.0.lcssa)
  %vtable.i37 = load ptr, ptr %call35, align 8, !tbaa !9
  %vbase.offset.ptr.i38 = getelementptr i8, ptr %vtable.i37, i64 -24
  %vbase.offset.i39 = load i64, ptr %vbase.offset.ptr.i38, align 8
  %add.ptr.i40 = getelementptr inbounds i8, ptr %call35, i64 %vbase.offset.i39
  %_M_ctype.i.i41 = getelementptr inbounds nuw i8, ptr %add.ptr.i40, i64 240
  %38 = load ptr, ptr %_M_ctype.i.i41, align 8, !tbaa !11
  %tobool.not.i.i.i42 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i.i42, label %if.then.i.i.i55, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i43

if.then.i.i.i55:                                  ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit36
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i43: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit36
  %_M_widen_ok.i.i.i44 = getelementptr inbounds nuw i8, ptr %38, i64 56
  %39 = load i8, ptr %_M_widen_ok.i.i.i44, align 8, !tbaa !29
  %tobool.not.i1.i.i45 = icmp eq i8 %39, 0
  br i1 %tobool.not.i1.i.i45, label %if.end.i.i.i51, label %if.then.i2.i.i46

if.then.i2.i.i46:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i43
  %arrayidx.i.i.i47 = getelementptr inbounds nuw i8, ptr %38, i64 67
  %40 = load i8, ptr %arrayidx.i.i.i47, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit56

if.end.i.i.i51:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i43
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %38)
  %vtable.i.i.i52 = load ptr, ptr %38, align 8, !tbaa !9
  %vfn.i.i.i53 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i52, i64 48
  %41 = load ptr, ptr %vfn.i.i.i53, align 8
  %call.i.i.i54 = call noundef signext i8 %41(ptr noundef nonnull align 8 dereferenceable(570) %38, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit56

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit56: ; preds = %if.then.i2.i.i46, %if.end.i.i.i51
  %retval.0.i.i.i48 = phi i8 [ %40, %if.then.i2.i.i46 ], [ %call.i.i.i54, %if.end.i.i.i51 ]
  %call1.i49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call35, i8 noundef signext %retval.0.i.i.i48)
  %call.i.i50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i49)
  %call37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i50, i32 noundef %d.0.lcssa)
  %vtable.i57 = load ptr, ptr %call37, align 8, !tbaa !9
  %vbase.offset.ptr.i58 = getelementptr i8, ptr %vtable.i57, i64 -24
  %vbase.offset.i59 = load i64, ptr %vbase.offset.ptr.i58, align 8
  %add.ptr.i60 = getelementptr inbounds i8, ptr %call37, i64 %vbase.offset.i59
  %_M_ctype.i.i61 = getelementptr inbounds nuw i8, ptr %add.ptr.i60, i64 240
  %42 = load ptr, ptr %_M_ctype.i.i61, align 8, !tbaa !11
  %tobool.not.i.i.i62 = icmp eq ptr %42, null
  br i1 %tobool.not.i.i.i62, label %if.then.i.i.i75, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i63

if.then.i.i.i75:                                  ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit56
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i63: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit56
  %_M_widen_ok.i.i.i64 = getelementptr inbounds nuw i8, ptr %42, i64 56
  %43 = load i8, ptr %_M_widen_ok.i.i.i64, align 8, !tbaa !29
  %tobool.not.i1.i.i65 = icmp eq i8 %43, 0
  br i1 %tobool.not.i1.i.i65, label %if.end.i.i.i71, label %if.then.i2.i.i66

if.then.i2.i.i66:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i63
  %arrayidx.i.i.i67 = getelementptr inbounds nuw i8, ptr %42, i64 67
  %44 = load i8, ptr %arrayidx.i.i.i67, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit76

if.end.i.i.i71:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i63
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %42)
  %vtable.i.i.i72 = load ptr, ptr %42, align 8, !tbaa !9
  %vfn.i.i.i73 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i72, i64 48
  %45 = load ptr, ptr %vfn.i.i.i73, align 8
  %call.i.i.i74 = call noundef signext i8 %45(ptr noundef nonnull align 8 dereferenceable(570) %42, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit76

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit76: ; preds = %if.then.i2.i.i66, %if.end.i.i.i71
  %retval.0.i.i.i68 = phi i8 [ %44, %if.then.i2.i.i66 ], [ %call.i.i.i74, %if.end.i.i.i71 ]
  %call1.i69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call37, i8 noundef signext %retval.0.i.i.i68)
  %call.i.i70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i69)
  %call39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i70, i32 noundef %e.0.lcssa)
  %vtable.i77 = load ptr, ptr %call39, align 8, !tbaa !9
  %vbase.offset.ptr.i78 = getelementptr i8, ptr %vtable.i77, i64 -24
  %vbase.offset.i79 = load i64, ptr %vbase.offset.ptr.i78, align 8
  %add.ptr.i80 = getelementptr inbounds i8, ptr %call39, i64 %vbase.offset.i79
  %_M_ctype.i.i81 = getelementptr inbounds nuw i8, ptr %add.ptr.i80, i64 240
  %46 = load ptr, ptr %_M_ctype.i.i81, align 8, !tbaa !11
  %tobool.not.i.i.i82 = icmp eq ptr %46, null
  br i1 %tobool.not.i.i.i82, label %if.then.i.i.i95, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i83

if.then.i.i.i95:                                  ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit76
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i83: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit76
  %_M_widen_ok.i.i.i84 = getelementptr inbounds nuw i8, ptr %46, i64 56
  %47 = load i8, ptr %_M_widen_ok.i.i.i84, align 8, !tbaa !29
  %tobool.not.i1.i.i85 = icmp eq i8 %47, 0
  br i1 %tobool.not.i1.i.i85, label %if.end.i.i.i91, label %if.then.i2.i.i86

if.then.i2.i.i86:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i83
  %arrayidx.i.i.i87 = getelementptr inbounds nuw i8, ptr %46, i64 67
  %48 = load i8, ptr %arrayidx.i.i.i87, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit96

if.end.i.i.i91:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i83
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %46)
  %vtable.i.i.i92 = load ptr, ptr %46, align 8, !tbaa !9
  %vfn.i.i.i93 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i92, i64 48
  %49 = load ptr, ptr %vfn.i.i.i93, align 8
  %call.i.i.i94 = call noundef signext i8 %49(ptr noundef nonnull align 8 dereferenceable(570) %46, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit96

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit96: ; preds = %if.then.i2.i.i86, %if.end.i.i.i91
  %retval.0.i.i.i88 = phi i8 [ %48, %if.then.i2.i.i86 ], [ %call.i.i.i94, %if.end.i.i.i91 ]
  %call1.i89 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call39, i8 noundef signext %retval.0.i.i.i88)
  %call.i.i90 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i89)
  %call41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i90, i32 noundef %f.0.lcssa)
  %vtable.i97 = load ptr, ptr %call41, align 8, !tbaa !9
  %vbase.offset.ptr.i98 = getelementptr i8, ptr %vtable.i97, i64 -24
  %vbase.offset.i99 = load i64, ptr %vbase.offset.ptr.i98, align 8
  %add.ptr.i100 = getelementptr inbounds i8, ptr %call41, i64 %vbase.offset.i99
  %_M_ctype.i.i101 = getelementptr inbounds nuw i8, ptr %add.ptr.i100, i64 240
  %50 = load ptr, ptr %_M_ctype.i.i101, align 8, !tbaa !11
  %tobool.not.i.i.i102 = icmp eq ptr %50, null
  br i1 %tobool.not.i.i.i102, label %if.then.i.i.i115, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i103

if.then.i.i.i115:                                 ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit96
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i103: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit96
  %_M_widen_ok.i.i.i104 = getelementptr inbounds nuw i8, ptr %50, i64 56
  %51 = load i8, ptr %_M_widen_ok.i.i.i104, align 8, !tbaa !29
  %tobool.not.i1.i.i105 = icmp eq i8 %51, 0
  br i1 %tobool.not.i1.i.i105, label %if.end.i.i.i111, label %if.then.i2.i.i106

if.then.i2.i.i106:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i103
  %arrayidx.i.i.i107 = getelementptr inbounds nuw i8, ptr %50, i64 67
  %52 = load i8, ptr %arrayidx.i.i.i107, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit116

if.end.i.i.i111:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i103
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %50)
  %vtable.i.i.i112 = load ptr, ptr %50, align 8, !tbaa !9
  %vfn.i.i.i113 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i112, i64 48
  %53 = load ptr, ptr %vfn.i.i.i113, align 8
  %call.i.i.i114 = call noundef signext i8 %53(ptr noundef nonnull align 8 dereferenceable(570) %50, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit116

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit116: ; preds = %if.then.i2.i.i106, %if.end.i.i.i111
  %retval.0.i.i.i108 = phi i8 [ %52, %if.then.i2.i.i106 ], [ %call.i.i.i114, %if.end.i.i.i111 ]
  %call1.i109 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call41, i8 noundef signext %retval.0.i.i.i108)
  %call.i.i110 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i109)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #4

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
