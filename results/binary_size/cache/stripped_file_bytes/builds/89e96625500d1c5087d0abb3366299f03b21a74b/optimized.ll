; ModuleID = '<stdin>'
source_filename = "/tmp/tmp7qo9lvwl.cpp"
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
  %__c.addr.i130 = alloca i8, align 1
  %__c.addr.i117 = alloca i8, align 1
  %__c.addr.i104 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %str = alloca [260 x i8], align 16
  %subStr = alloca [260 x i8], align 16
  %replace = alloca [260 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %str) #5
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %subStr) #5
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %replace) #5
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  %_M_width.i17.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i17.i, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %str, i64 noundef 260)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %_M_streambuf_state.i.i18.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i18.i, align 8, !tbaa !21
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = add i64 %0, -261
  %or.cond.i = icmp ult i64 %2, -260
  %or.cond = select i1 %cmp.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %if.then6.i20

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %_M_in_cur.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %4 = load ptr, ptr %_M_in_cur.i.i.i, align 8, !tbaa !30
  %_M_in_end.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %5 = load ptr, ptr %_M_in_end.i.i.i, align 8, !tbaa !33
  %cmp.i19.i = icmp ult ptr %4, %5
  br i1 %cmp.i19.i, label %if.then6.i20, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i: ; preds = %if.then19.i
  %vtable.i.i = load ptr, ptr %3, align 8, !tbaa !5
  %vfn.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i, i64 72
  %6 = load ptr, ptr %vfn.i.i, align 8
  %call5.i.i = call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i20.i = icmp eq i32 %call5.i.i, -1
  %vtable7.i21.pre163 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i20.i, label %if.then28.i, label %if.then6.i20, !prof !35

if.then28.i:                                      ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable7.i21.pre163, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  %_M_streambuf_state.i.i21.i = getelementptr inbounds nuw i8, ptr %add.ptr32.i, i64 32
  %7 = load i32, ptr %_M_streambuf_state.i.i21.i, align 8, !tbaa !21
  %or.i.i22.i = or i32 %7, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef %or.i.i22.i)
  %vtable7.i21.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i20

if.then6.i20:                                     ; preds = %if.then28.i, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i, %if.then19.i, %entry
  %vtable7.i21 = phi ptr [ %vtable7.i21.pre, %if.then28.i ], [ %vtable7.i21.pre163, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i ], [ %vtable12.i, %if.then19.i ], [ %vtable12.i, %entry ]
  %vbase.offset.ptr8.i22 = getelementptr i8, ptr %vtable7.i21, i64 -24
  %vbase.offset9.i23 = load i64, ptr %vbase.offset.ptr8.i22, align 8
  %add.ptr10.i24 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i23
  %_M_width.i17.i25 = getelementptr inbounds nuw i8, ptr %add.ptr10.i24, i64 16
  %8 = load i64, ptr %_M_width.i17.i25, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %subStr, i64 noundef 260)
  %vtable12.i26 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i27 = getelementptr i8, ptr %vtable12.i26, i64 -24
  %vbase.offset14.i28 = load i64, ptr %vbase.offset.ptr13.i27, align 8
  %add.ptr15.i29 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i28
  %_M_streambuf_state.i.i18.i30 = getelementptr inbounds nuw i8, ptr %add.ptr15.i29, i64 32
  %9 = load i32, ptr %_M_streambuf_state.i.i18.i30, align 8, !tbaa !21
  %cmp.i.i31 = icmp eq i32 %9, 0
  %10 = add i64 %8, -261
  %or.cond.i35 = icmp ult i64 %10, -260
  %or.cond148 = select i1 %cmp.i.i31, i1 %or.cond.i35, i1 false
  br i1 %or.cond148, label %if.then19.i36, label %if.then6.i65

if.then19.i36:                                    ; preds = %if.then6.i20
  %_M_streambuf.i.i37 = getelementptr inbounds nuw i8, ptr %add.ptr15.i29, i64 232
  %11 = load ptr, ptr %_M_streambuf.i.i37, align 8, !tbaa !22
  %_M_in_cur.i.i.i38 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %12 = load ptr, ptr %_M_in_cur.i.i.i38, align 8, !tbaa !30
  %_M_in_end.i.i.i39 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %13 = load ptr, ptr %_M_in_end.i.i.i39, align 8, !tbaa !33
  %cmp.i19.i40 = icmp ult ptr %12, %13
  br i1 %cmp.i19.i40, label %if.then6.i65, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i41, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i41: ; preds = %if.then19.i36
  %vtable.i.i42 = load ptr, ptr %11, align 8, !tbaa !5
  %vfn.i.i43 = getelementptr inbounds nuw i8, ptr %vtable.i.i42, i64 72
  %14 = load ptr, ptr %vfn.i.i43, align 8
  %call5.i.i44 = call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(64) %11)
  %cmp.i20.i45 = icmp eq i32 %call5.i.i44, -1
  %vtable7.i66.pre165 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i20.i45, label %if.then28.i46, label %if.then6.i65, !prof !35

if.then28.i46:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i41
  %vbase.offset.ptr30.i48 = getelementptr i8, ptr %vtable7.i66.pre165, i64 -24
  %vbase.offset31.i49 = load i64, ptr %vbase.offset.ptr30.i48, align 8
  %add.ptr32.i50 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i49
  %_M_streambuf_state.i.i21.i51 = getelementptr inbounds nuw i8, ptr %add.ptr32.i50, i64 32
  %15 = load i32, ptr %_M_streambuf_state.i.i21.i51, align 8, !tbaa !21
  %or.i.i22.i52 = or i32 %15, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i50, i32 noundef %or.i.i22.i52)
  %vtable7.i66.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i65

if.then6.i65:                                     ; preds = %if.then28.i46, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i41, %if.then19.i36, %if.then6.i20
  %vtable7.i66 = phi ptr [ %vtable7.i66.pre, %if.then28.i46 ], [ %vtable7.i66.pre165, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i41 ], [ %vtable12.i26, %if.then19.i36 ], [ %vtable12.i26, %if.then6.i20 ]
  %vbase.offset.ptr8.i67 = getelementptr i8, ptr %vtable7.i66, i64 -24
  %vbase.offset9.i68 = load i64, ptr %vbase.offset.ptr8.i67, align 8
  %add.ptr10.i69 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i68
  %_M_width.i17.i70 = getelementptr inbounds nuw i8, ptr %add.ptr10.i69, i64 16
  %16 = load i64, ptr %_M_width.i17.i70, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %replace, i64 noundef 260)
  %vtable12.i71 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i72 = getelementptr i8, ptr %vtable12.i71, i64 -24
  %vbase.offset14.i73 = load i64, ptr %vbase.offset.ptr13.i72, align 8
  %add.ptr15.i74 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i73
  %_M_streambuf_state.i.i18.i75 = getelementptr inbounds nuw i8, ptr %add.ptr15.i74, i64 32
  %17 = load i32, ptr %_M_streambuf_state.i.i18.i75, align 8, !tbaa !21
  %cmp.i.i76 = icmp eq i32 %17, 0
  %18 = add i64 %16, -261
  %or.cond.i80 = icmp ult i64 %18, -260
  %or.cond149 = select i1 %cmp.i.i76, i1 %or.cond.i80, i1 false
  br i1 %or.cond149, label %if.then19.i81, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit98

if.then19.i81:                                    ; preds = %if.then6.i65
  %_M_streambuf.i.i82 = getelementptr inbounds nuw i8, ptr %add.ptr15.i74, i64 232
  %19 = load ptr, ptr %_M_streambuf.i.i82, align 8, !tbaa !22
  %_M_in_cur.i.i.i83 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %20 = load ptr, ptr %_M_in_cur.i.i.i83, align 8, !tbaa !30
  %_M_in_end.i.i.i84 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %21 = load ptr, ptr %_M_in_end.i.i.i84, align 8, !tbaa !33
  %cmp.i19.i85 = icmp ult ptr %20, %21
  br i1 %cmp.i19.i85, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit98, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i86, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i86: ; preds = %if.then19.i81
  %vtable.i.i87 = load ptr, ptr %19, align 8, !tbaa !5
  %vfn.i.i88 = getelementptr inbounds nuw i8, ptr %vtable.i.i87, i64 72
  %22 = load ptr, ptr %vfn.i.i88, align 8
  %call5.i.i89 = call noundef i32 %22(ptr noundef nonnull align 8 dereferenceable(64) %19)
  %cmp.i20.i90 = icmp eq i32 %call5.i.i89, -1
  br i1 %cmp.i20.i90, label %if.then28.i91, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit98, !prof !35

if.then28.i91:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i86
  %vtable29.i92 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i93 = getelementptr i8, ptr %vtable29.i92, i64 -24
  %vbase.offset31.i94 = load i64, ptr %vbase.offset.ptr30.i93, align 8
  %add.ptr32.i95 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i94
  %_M_streambuf_state.i.i21.i96 = getelementptr inbounds nuw i8, ptr %add.ptr32.i95, i64 32
  %23 = load i32, ptr %_M_streambuf_state.i.i21.i96, align 8, !tbaa !21
  %or.i.i22.i97 = or i32 %23, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i95, i32 noundef %or.i.i22.i97)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit98

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit98: ; preds = %if.then6.i65, %if.then19.i81, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i86, %if.then28.i91
  %call9 = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %str, ptr noundef nonnull dereferenceable(1) %subStr) #6
  %cmp = icmp eq ptr %call9, null
  br i1 %cmp, label %while.cond.preheader, label %if.else

while.cond.preheader:                             ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit98
  %24 = load i8, ptr %str, align 16, !tbaa !36
  %cmp10.not160 = icmp eq i8 %24, 0
  br i1 %cmp10.not160, label %if.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %25 = phi i8 [ %27, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %24, %while.cond.preheader ]
  %start.0161 = phi ptr [ %incdec.ptr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %str, %while.cond.preheader ]
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %start.0161, i64 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %25, ptr %__c.addr.i, align 1, !tbaa !36
  %vtable.i99 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i100 = getelementptr i8, ptr %vtable.i99, i64 -24
  %vbase.offset.i101 = load i64, ptr %vbase.offset.ptr.i100, align 8
  %gep159 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i101
  %26 = load i64, ptr %gep159, align 8, !tbaa !8
  %cmp.not.i = icmp eq i64 %26, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %while.body
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %25)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %27 = load i8, ptr %incdec.ptr, align 1, !tbaa !36
  %cmp10.not = icmp eq i8 %27, 0
  br i1 %cmp10.not, label %if.end, label %while.body, !llvm.loop !37

if.else:                                          ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit98
  %call13 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %subStr) #6
  %cmp16.not151 = icmp eq ptr %str, %call9
  br i1 %cmp16.not151, label %while.cond21.preheader, label %while.body17

while.cond21.preheader:                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit116, %if.else
  %28 = load i8, ptr %replace, align 16, !tbaa !36
  %cmp23.not154 = icmp eq i8 %28, 0
  br i1 %cmp23.not154, label %while.end27, label %while.body24

while.body17:                                     ; preds = %if.else, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit116
  %start.1152 = phi ptr [ %incdec.ptr18, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit116 ], [ %str, %if.else ]
  %incdec.ptr18 = getelementptr inbounds nuw i8, ptr %start.1152, i64 1
  %29 = load i8, ptr %start.1152, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i104)
  store i8 %29, ptr %__c.addr.i104, align 1, !tbaa !36
  %vtable.i105 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i106 = getelementptr i8, ptr %vtable.i105, i64 -24
  %vbase.offset.i107 = load i64, ptr %vbase.offset.ptr.i106, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i107
  %30 = load i64, ptr %gep, align 8, !tbaa !8
  %cmp.not.i110 = icmp eq i64 %30, 0
  br i1 %cmp.not.i110, label %if.end.i114, label %if.then.i111

if.then.i111:                                     ; preds = %while.body17
  %call1.i112 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i104, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit116

if.end.i114:                                      ; preds = %while.body17
  %call2.i115 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %29)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit116

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit116: ; preds = %if.then.i111, %if.end.i114
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i104)
  %cmp16.not = icmp eq ptr %incdec.ptr18, %call9
  br i1 %cmp16.not, label %while.cond21.preheader, label %while.body17, !llvm.loop !40

while.body24:                                     ; preds = %while.cond21.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit129
  %31 = phi i8 [ %33, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit129 ], [ %28, %while.cond21.preheader ]
  %rep.0155 = phi ptr [ %incdec.ptr25, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit129 ], [ %replace, %while.cond21.preheader ]
  %incdec.ptr25 = getelementptr inbounds nuw i8, ptr %rep.0155, i64 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i117)
  store i8 %31, ptr %__c.addr.i117, align 1, !tbaa !36
  %vtable.i118 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i119 = getelementptr i8, ptr %vtable.i118, i64 -24
  %vbase.offset.i120 = load i64, ptr %vbase.offset.ptr.i119, align 8
  %gep153 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i120
  %32 = load i64, ptr %gep153, align 8, !tbaa !8
  %cmp.not.i123 = icmp eq i64 %32, 0
  br i1 %cmp.not.i123, label %if.end.i127, label %if.then.i124

if.then.i124:                                     ; preds = %while.body24
  %call1.i125 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i117, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit129

if.end.i127:                                      ; preds = %while.body24
  %call2.i128 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %31)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit129

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit129: ; preds = %if.then.i124, %if.end.i127
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i117)
  %33 = load i8, ptr %incdec.ptr25, align 1, !tbaa !36
  %cmp23.not = icmp eq i8 %33, 0
  br i1 %cmp23.not, label %while.end27, label %while.body24, !llvm.loop !41

while.end27:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit129, %while.cond21.preheader
  %sext = shl i64 %call13, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr inbounds i8, ptr %call9, i64 %idx.ext
  %34 = load i8, ptr %add.ptr, align 1, !tbaa !36
  %cmp30.not157 = icmp eq i8 %34, 0
  br i1 %cmp30.not157, label %if.end, label %while.body31

while.body31:                                     ; preds = %while.end27, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit142
  %35 = phi i8 [ %37, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit142 ], [ %34, %while.end27 ]
  %node.0158 = phi ptr [ %incdec.ptr32, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit142 ], [ %add.ptr, %while.end27 ]
  %incdec.ptr32 = getelementptr inbounds nuw i8, ptr %node.0158, i64 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i130)
  store i8 %35, ptr %__c.addr.i130, align 1, !tbaa !36
  %vtable.i131 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i132 = getelementptr i8, ptr %vtable.i131, i64 -24
  %vbase.offset.i133 = load i64, ptr %vbase.offset.ptr.i132, align 8
  %gep156 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i133
  %36 = load i64, ptr %gep156, align 8, !tbaa !8
  %cmp.not.i136 = icmp eq i64 %36, 0
  br i1 %cmp.not.i136, label %if.end.i140, label %if.then.i137

if.then.i137:                                     ; preds = %while.body31
  %call1.i138 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i130, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit142

if.end.i140:                                      ; preds = %while.body31
  %call2.i141 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %35)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit142

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit142: ; preds = %if.then.i137, %if.end.i140
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i130)
  %37 = load i8, ptr %incdec.ptr32, align 1, !tbaa !36
  %cmp30.not = icmp eq i8 %37, 0
  br i1 %cmp30.not, label %if.end, label %while.body31, !llvm.loop !42

if.end:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit142, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %while.end27, %while.cond.preheader
  %vtable.i143 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i144 = getelementptr i8, ptr %vtable.i143, i64 -24
  %vbase.offset.i145 = load i64, ptr %vbase.offset.ptr.i144, align 8
  %add.ptr.i146 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i145
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i146, i64 240
  %38 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !43
  %tobool.not.i.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.end
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %38, i64 56
  %39 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !44
  %tobool.not.i1.i.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %38, i64 67
  %40 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !36
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %38)
  %vtable.i.i.i = load ptr, ptr %38, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %41 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %41(ptr noundef nonnull align 8 dereferenceable(570) %38, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %40, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i147 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i147)
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %replace) #5
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %subStr) #5
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %str) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!36 = !{!11, !11, i64 0}
!37 = distinct !{!37, !38, !39}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = distinct !{!40, !38, !39}
!41 = distinct !{!41, !38, !39}
!42 = distinct !{!42, !38, !39}
!43 = !{!23, !27, i64 240}
!44 = !{!45, !11, i64 56}
!45 = !{!"_ZTSSt5ctypeIcE", !46, i64 0, !47, i64 16, !25, i64 24, !48, i64 32, !48, i64 40, !49, i64 48, !11, i64 56, !11, i64 57, !11, i64 313, !11, i64 569}
!46 = !{!"_ZTSNSt6locale5facetE", !17, i64 8}
!47 = !{!"p1 _ZTS15__locale_struct", !15, i64 0}
!48 = !{!"p1 int", !15, i64 0}
!49 = !{!"p1 short", !15, i64 0}
