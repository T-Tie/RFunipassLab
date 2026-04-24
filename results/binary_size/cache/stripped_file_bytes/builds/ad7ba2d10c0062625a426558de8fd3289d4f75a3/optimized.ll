; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz14istdm.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [40 x i8] zeroinitializer, align 16
@b = dso_local global [40 x i8] zeroinitializer, align 16
@num = dso_local local_unnamed_addr global i32 0, align 4
@linelen = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  %_M_width.i17.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i17.i, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull @b, i64 noundef 40)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %_M_streambuf_state.i.i18.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i18.i, align 8, !tbaa !21
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = add i64 %0, -41
  %or.cond.i = icmp ult i64 %2, -40
  %or.cond = select i1 %cmp.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %_M_in_cur.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %4 = load ptr, ptr %_M_in_cur.i.i.i, align 8, !tbaa !30
  %_M_in_end.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %5 = load ptr, ptr %_M_in_end.i.i.i, align 8, !tbaa !33
  %cmp.i19.i = icmp ult ptr %4, %5
  br i1 %cmp.i19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i: ; preds = %if.then19.i
  %vtable.i.i = load ptr, ptr %3, align 8, !tbaa !5
  %vfn.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i, i64 72
  %6 = load ptr, ptr %vfn.i.i, align 8
  %call5.i.i = call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i20.i = icmp eq i32 %call5.i.i, -1
  br i1 %cmp.i20.i, label %if.then28.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, !prof !35

if.then28.i:                                      ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i
  %vtable29.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable29.i, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  %_M_streambuf_state.i.i21.i = getelementptr inbounds nuw i8, ptr %add.ptr32.i, i64 32
  %7 = load i32, ptr %_M_streambuf_state.i.i21.i, align 8, !tbaa !21
  %or.i.i22.i = or i32 %7, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef %or.i.i22.i)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit: ; preds = %entry, %if.then19.i, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i, %if.then28.i
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) @b) #5
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @b, i64 noundef %call.i.i)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @b) #6
  %conv = trunc i64 %call3 to i32
  store i32 %conv, ptr @linelen, align 4, !tbaa !36
  br label %while.cond

while.cond:                                       ; preds = %if.end34, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  %cnt.0 = phi i32 [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit ], [ %cnt.1, %if.end34 ]
  %vtable7.i17 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i18 = getelementptr i8, ptr %vtable7.i17, i64 -24
  %vbase.offset9.i19 = load i64, ptr %vbase.offset.ptr8.i18, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt3cin, i64 16), i64 %vbase.offset9.i19
  %8 = load i64, ptr %gep, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull @a, i64 noundef 40)
  %vtable12.i22 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i23 = getelementptr i8, ptr %vtable12.i22, i64 -24
  %vbase.offset14.i24 = load i64, ptr %vbase.offset.ptr13.i23, align 8
  %add.ptr15.i25 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i24
  %_M_streambuf_state.i.i18.i26 = getelementptr inbounds nuw i8, ptr %add.ptr15.i25, i64 32
  %9 = load i32, ptr %_M_streambuf_state.i.i18.i26, align 8, !tbaa !21
  %cmp.i.i27 = icmp eq i32 %9, 0
  %10 = add i64 %8, -41
  %or.cond.i31 = icmp ult i64 %10, -40
  %or.cond89 = select i1 %cmp.i.i27, i1 %or.cond.i31, i1 false
  br i1 %or.cond89, label %if.then19.i32, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit49

if.then19.i32:                                    ; preds = %while.cond
  %_M_streambuf.i.i33 = getelementptr inbounds nuw i8, ptr %add.ptr15.i25, i64 232
  %11 = load ptr, ptr %_M_streambuf.i.i33, align 8, !tbaa !22
  %_M_in_cur.i.i.i34 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %12 = load ptr, ptr %_M_in_cur.i.i.i34, align 8, !tbaa !30
  %_M_in_end.i.i.i35 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %13 = load ptr, ptr %_M_in_end.i.i.i35, align 8, !tbaa !33
  %cmp.i19.i36 = icmp ult ptr %12, %13
  br i1 %cmp.i19.i36, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit49, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i37, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i37: ; preds = %if.then19.i32
  %vtable.i.i38 = load ptr, ptr %11, align 8, !tbaa !5
  %vfn.i.i39 = getelementptr inbounds nuw i8, ptr %vtable.i.i38, i64 72
  %14 = load ptr, ptr %vfn.i.i39, align 8
  %call5.i.i40 = call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(64) %11)
  %cmp.i20.i41 = icmp eq i32 %call5.i.i40, -1
  br i1 %cmp.i20.i41, label %if.then28.i42, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit49, !prof !35

if.then28.i42:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i37
  %vtable29.i43 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i44 = getelementptr i8, ptr %vtable29.i43, i64 -24
  %vbase.offset31.i45 = load i64, ptr %vbase.offset.ptr30.i44, align 8
  %add.ptr32.i46 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i45
  %_M_streambuf_state.i.i21.i47 = getelementptr inbounds nuw i8, ptr %add.ptr32.i46, i64 32
  %15 = load i32, ptr %_M_streambuf_state.i.i21.i47, align 8, !tbaa !21
  %or.i.i22.i48 = or i32 %15, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i46, i32 noundef %or.i.i22.i48)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit49

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit49: ; preds = %while.cond, %if.then19.i32, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i37, %if.then28.i42
  %call5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @a) #6
  %conv6 = trunc i64 %call5 to i32
  store i32 %conv6, ptr @num, align 4, !tbaa !36
  %16 = load i32, ptr @linelen, align 4, !tbaa !36
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit49
  %vtable.i63 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i64 = getelementptr i8, ptr %vtable.i63, i64 -24
  %vbase.offset.i65 = load i64, ptr %vbase.offset.ptr.i64, align 8
  %gep91 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i65
  %17 = load ptr, ptr %gep91, align 8, !tbaa !37
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %17, i64 56
  %18 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !38
  %tobool.not.i1.i.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %17, i64 67
  %19 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !44
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %17)
  %vtable.i.i.i = load ptr, ptr %17, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %20 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %20(ptr noundef nonnull align 8 dereferenceable(570) %17, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %19, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i67)
  %call.i.i50 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) @a) #5
  %call1.i51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i68, ptr noundef nonnull @a, i64 noundef %call.i.i50)
  %21 = load i32, ptr @linelen, align 4, !tbaa !36
  %22 = load i32, ptr @num, align 4, !tbaa !36
  %add = add nsw i32 %22, %21
  store i32 %add, ptr @linelen, align 4, !tbaa !36
  br label %if.end34

if.else:                                          ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit49
  %add9 = add nsw i32 %16, %conv6
  %cmp11 = icmp sgt i32 %add9, 79
  br i1 %cmp11, label %if.then12, label %if.else16

if.then12:                                        ; preds = %if.else
  %vtable.i69 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i70 = getelementptr i8, ptr %vtable.i69, i64 -24
  %vbase.offset.i71 = load i64, ptr %vbase.offset.ptr.i70, align 8
  %gep90 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i71
  %23 = load ptr, ptr %gep90, align 8, !tbaa !37
  %tobool.not.i.i.i74 = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.i74, label %if.then.i.i.i87, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75

if.then.i.i.i87:                                  ; preds = %if.then12
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75: ; preds = %if.then12
  %_M_widen_ok.i.i.i76 = getelementptr inbounds nuw i8, ptr %23, i64 56
  %24 = load i8, ptr %_M_widen_ok.i.i.i76, align 8, !tbaa !38
  %tobool.not.i1.i.i77 = icmp eq i8 %24, 0
  br i1 %tobool.not.i1.i.i77, label %if.end.i.i.i83, label %if.then.i2.i.i78

if.then.i2.i.i78:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75
  %arrayidx.i.i.i79 = getelementptr inbounds nuw i8, ptr %23, i64 67
  %25 = load i8, ptr %arrayidx.i.i.i79, align 1, !tbaa !44
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit88

if.end.i.i.i83:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %23)
  %vtable.i.i.i84 = load ptr, ptr %23, align 8, !tbaa !5
  %vfn.i.i.i85 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i84, i64 48
  %26 = load ptr, ptr %vfn.i.i.i85, align 8
  %call.i.i.i86 = call noundef signext i8 %26(ptr noundef nonnull align 8 dereferenceable(570) %23, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit88

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit88: ; preds = %if.then.i2.i.i78, %if.end.i.i.i83
  %retval.0.i.i.i80 = phi i8 [ %25, %if.then.i2.i.i78 ], [ %call.i.i.i86, %if.end.i.i.i83 ]
  %call1.i81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i80)
  %call.i.i82 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i81)
  %call.i.i53 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) @a) #5
  %call1.i54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i82, ptr noundef nonnull @a, i64 noundef %call.i.i53)
  %27 = load i32, ptr @num, align 4, !tbaa !36
  br label %if.end30

if.else16:                                        ; preds = %if.else
  %cmp19 = icmp eq i32 %add9, 79
  %call1.i56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %call.i.i57 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) @a) #5
  %call1.i58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @a, i64 noundef %call.i.i57)
  br i1 %cmp19, label %if.end30, label %if.else24

if.else24:                                        ; preds = %if.else16
  %28 = load i32, ptr @linelen, align 4, !tbaa !36
  %29 = load i32, ptr @num, align 4, !tbaa !36
  %add28 = add i32 %28, 1
  %add29 = add i32 %add28, %29
  br label %if.end30

if.end30:                                         ; preds = %if.else16, %if.else24, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit88
  %.sink = phi i32 [ %add29, %if.else24 ], [ %27, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit88 ], [ 0, %if.else16 ]
  store i32 %.sink, ptr @linelen, align 4, !tbaa !36
  %30 = load i32, ptr %n, align 4, !tbaa !36
  %31 = add i32 %30, -2
  %cmp31 = icmp eq i32 %cnt.0, %31
  br i1 %cmp31, label %while.end, label %if.end34

if.end34:                                         ; preds = %if.end30, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %cnt.1 = add nuw nsw i32 %cnt.0, 1
  br label %while.cond, !llvm.loop !45

while.end:                                        ; preds = %if.end30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 16}
!9 = !{!"_ZTSSt8ios_base", !10, i64 8, !10, i64 16, !12, i64 24, !13, i64 28, !13, i64 32, !14, i64 40, !16, i64 48, !11, i64 64, !17, i64 192, !18, i64 200, !19, i64 208}
!10 = !{!"long", !11, i64 0}
!11 = !{!"omnipotent char", !7, i64 0}
!12 = !{!"_ZTSSt13_Ios_Fmtflags", !11, i64 0}
!13 = !{!"_ZTSSt12_Ios_Iostate", !11, i64 0}
!14 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !15, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"_ZTSNSt8ios_base6_WordsE", !15, i64 0, !10, i64 8}
!17 = !{!"int", !11, i64 0}
!18 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !15, i64 0}
!19 = !{!"_ZTSSt6locale", !20, i64 0}
!20 = !{!"p1 _ZTSNSt6locale5_ImplE", !15, i64 0}
!21 = !{!9, !13, i64 32}
!22 = !{!23, !26, i64 232}
!23 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !9, i64 0, !24, i64 216, !11, i64 224, !25, i64 225, !26, i64 232, !27, i64 240, !28, i64 248, !29, i64 256}
!24 = !{!"p1 _ZTSSo", !15, i64 0}
!25 = !{!"bool", !11, i64 0}
!26 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 0}
!27 = !{!"p1 _ZTSSt5ctypeIcE", !15, i64 0}
!28 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!29 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!30 = !{!31, !32, i64 16}
!31 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !32, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !19, i64 56}
!32 = !{!"p1 omnipotent char", !15, i64 0}
!33 = !{!31, !32, i64 24}
!34 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!35 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!36 = !{!17, !17, i64 0}
!37 = !{!23, !27, i64 240}
!38 = !{!39, !11, i64 56}
!39 = !{!"_ZTSSt5ctypeIcE", !40, i64 0, !41, i64 16, !25, i64 24, !42, i64 32, !42, i64 40, !43, i64 48, !11, i64 56, !11, i64 57, !11, i64 313, !11, i64 569}
!40 = !{!"_ZTSNSt6locale5facetE", !17, i64 8}
!41 = !{!"p1 _ZTS15__locale_struct", !15, i64 0}
!42 = !{!"p1 int", !15, i64 0}
!43 = !{!"p1 short", !15, i64 0}
!44 = !{!11, !11, i64 0}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
