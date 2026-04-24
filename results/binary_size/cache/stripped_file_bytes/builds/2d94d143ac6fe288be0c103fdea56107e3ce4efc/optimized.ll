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
  %__c.addr.i110 = alloca i8, align 1
  %__c.addr.i97 = alloca i8, align 1
  %__c.addr.i84 = alloca i8, align 1
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
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !21
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = add i64 %0, -261
  %or.cond.i = icmp ult i64 %2, -260
  %or.cond = select i1 %cmp.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %if.then6.i18

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i18.i = icmp eq i32 %call25.i, -1
  %vtable7.i19.pre136 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i18.i, label %if.then28.i, label %if.then6.i18, !prof !30

if.then28.i:                                      ; preds = %if.then19.i
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable7.i19.pre136, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  %vtable7.i19.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i18

if.then6.i18:                                     ; preds = %if.then28.i, %if.then19.i, %entry
  %vtable7.i19 = phi ptr [ %vtable7.i19.pre, %if.then28.i ], [ %vtable7.i19.pre136, %if.then19.i ], [ %vtable12.i, %entry ]
  %vbase.offset.ptr8.i20 = getelementptr i8, ptr %vtable7.i19, i64 -24
  %vbase.offset9.i21 = load i64, ptr %vbase.offset.ptr8.i20, align 8
  %add.ptr10.i22 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i21
  %_M_width.i17.i23 = getelementptr inbounds nuw i8, ptr %add.ptr10.i22, i64 16
  %4 = load i64, ptr %_M_width.i17.i23, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %subStr, i64 noundef 260)
  %vtable12.i24 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i25 = getelementptr i8, ptr %vtable12.i24, i64 -24
  %vbase.offset14.i26 = load i64, ptr %vbase.offset.ptr13.i25, align 8
  %add.ptr15.i27 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i26
  %_M_streambuf_state.i.i.i28 = getelementptr inbounds nuw i8, ptr %add.ptr15.i27, i64 32
  %5 = load i32, ptr %_M_streambuf_state.i.i.i28, align 8, !tbaa !21
  %cmp.i.i29 = icmp eq i32 %5, 0
  %6 = add i64 %4, -261
  %or.cond.i33 = icmp ult i64 %6, -260
  %or.cond129 = select i1 %cmp.i.i29, i1 %or.cond.i33, i1 false
  br i1 %or.cond129, label %if.then19.i34, label %if.then6.i53

if.then19.i34:                                    ; preds = %if.then6.i18
  %_M_streambuf.i.i35 = getelementptr inbounds nuw i8, ptr %add.ptr15.i27, i64 232
  %7 = load ptr, ptr %_M_streambuf.i.i35, align 8, !tbaa !22
  %call25.i36 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %7)
  %cmp.i18.i37 = icmp eq i32 %call25.i36, -1
  %vtable7.i54.pre138 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i18.i37, label %if.then28.i38, label %if.then6.i53, !prof !30

if.then28.i38:                                    ; preds = %if.then19.i34
  %vbase.offset.ptr30.i40 = getelementptr i8, ptr %vtable7.i54.pre138, i64 -24
  %vbase.offset31.i41 = load i64, ptr %vbase.offset.ptr30.i40, align 8
  %add.ptr32.i42 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i41
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i42, i32 noundef 2)
  %vtable7.i54.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i53

if.then6.i53:                                     ; preds = %if.then28.i38, %if.then19.i34, %if.then6.i18
  %vtable7.i54 = phi ptr [ %vtable7.i54.pre, %if.then28.i38 ], [ %vtable7.i54.pre138, %if.then19.i34 ], [ %vtable12.i24, %if.then6.i18 ]
  %vbase.offset.ptr8.i55 = getelementptr i8, ptr %vtable7.i54, i64 -24
  %vbase.offset9.i56 = load i64, ptr %vbase.offset.ptr8.i55, align 8
  %add.ptr10.i57 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i56
  %_M_width.i17.i58 = getelementptr inbounds nuw i8, ptr %add.ptr10.i57, i64 16
  %8 = load i64, ptr %_M_width.i17.i58, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %replace, i64 noundef 260)
  %vtable12.i59 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i60 = getelementptr i8, ptr %vtable12.i59, i64 -24
  %vbase.offset14.i61 = load i64, ptr %vbase.offset.ptr13.i60, align 8
  %add.ptr15.i62 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i61
  %_M_streambuf_state.i.i.i63 = getelementptr inbounds nuw i8, ptr %add.ptr15.i62, i64 32
  %9 = load i32, ptr %_M_streambuf_state.i.i.i63, align 8, !tbaa !21
  %cmp.i.i64 = icmp eq i32 %9, 0
  %10 = add i64 %8, -261
  %or.cond.i68 = icmp ult i64 %10, -260
  %or.cond130 = select i1 %cmp.i.i64, i1 %or.cond.i68, i1 false
  br i1 %or.cond130, label %if.then19.i69, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit78

if.then19.i69:                                    ; preds = %if.then6.i53
  %_M_streambuf.i.i70 = getelementptr inbounds nuw i8, ptr %add.ptr15.i62, i64 232
  %11 = load ptr, ptr %_M_streambuf.i.i70, align 8, !tbaa !22
  %call25.i71 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %11)
  %cmp.i18.i72 = icmp eq i32 %call25.i71, -1
  br i1 %cmp.i18.i72, label %if.then28.i73, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit78, !prof !30

if.then28.i73:                                    ; preds = %if.then19.i69
  %vtable29.i74 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i75 = getelementptr i8, ptr %vtable29.i74, i64 -24
  %vbase.offset31.i76 = load i64, ptr %vbase.offset.ptr30.i75, align 8
  %add.ptr32.i77 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i76
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i77, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit78

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit78: ; preds = %if.then6.i53, %if.then19.i69, %if.then28.i73
  %call9 = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %str, ptr noundef nonnull dereferenceable(1) %subStr) #6
  %cmp = icmp eq ptr %call9, null
  br i1 %cmp, label %while.cond, label %if.else

while.cond:                                       ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit78, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %start.0 = phi ptr [ %incdec.ptr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %str, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit78 ]
  %12 = load i8, ptr %start.0, align 1, !tbaa !31
  %cmp10.not = icmp eq i8 %12, 0
  br i1 %cmp10.not, label %if.end, label %while.body

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %start.0, i64 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %12, ptr %__c.addr.i, align 1, !tbaa !31
  %vtable.i79 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i80 = getelementptr i8, ptr %vtable.i79, i64 -24
  %vbase.offset.i81 = load i64, ptr %vbase.offset.ptr.i80, align 8
  %gep134 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i81
  %13 = load i64, ptr %gep134, align 8, !tbaa !8
  %cmp.not.i = icmp eq i64 %13, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %while.body
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %12)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  br label %while.cond, !llvm.loop !32

if.else:                                          ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit78
  %call13 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %subStr) #6
  br label %while.cond15

while.cond15:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit96, %if.else
  %start.1 = phi ptr [ %str, %if.else ], [ %incdec.ptr18, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit96 ]
  %cmp16.not = icmp eq ptr %start.1, %call9
  br i1 %cmp16.not, label %while.cond21, label %while.body17

while.body17:                                     ; preds = %while.cond15
  %incdec.ptr18 = getelementptr inbounds nuw i8, ptr %start.1, i64 1
  %14 = load i8, ptr %start.1, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i84)
  store i8 %14, ptr %__c.addr.i84, align 1, !tbaa !31
  %vtable.i85 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i86 = getelementptr i8, ptr %vtable.i85, i64 -24
  %vbase.offset.i87 = load i64, ptr %vbase.offset.ptr.i86, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i87
  %15 = load i64, ptr %gep, align 8, !tbaa !8
  %cmp.not.i90 = icmp eq i64 %15, 0
  br i1 %cmp.not.i90, label %if.end.i94, label %if.then.i91

if.then.i91:                                      ; preds = %while.body17
  %call1.i92 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i84, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit96

if.end.i94:                                       ; preds = %while.body17
  %call2.i95 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %14)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit96

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit96: ; preds = %if.then.i91, %if.end.i94
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i84)
  br label %while.cond15, !llvm.loop !35

while.cond21:                                     ; preds = %while.cond15, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit109
  %rep.0 = phi ptr [ %incdec.ptr25, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit109 ], [ %replace, %while.cond15 ]
  %16 = load i8, ptr %rep.0, align 1, !tbaa !31
  %cmp23.not = icmp eq i8 %16, 0
  br i1 %cmp23.not, label %while.end27, label %while.body24

while.body24:                                     ; preds = %while.cond21
  %incdec.ptr25 = getelementptr inbounds nuw i8, ptr %rep.0, i64 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i97)
  store i8 %16, ptr %__c.addr.i97, align 1, !tbaa !31
  %vtable.i98 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i99 = getelementptr i8, ptr %vtable.i98, i64 -24
  %vbase.offset.i100 = load i64, ptr %vbase.offset.ptr.i99, align 8
  %gep132 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i100
  %17 = load i64, ptr %gep132, align 8, !tbaa !8
  %cmp.not.i103 = icmp eq i64 %17, 0
  br i1 %cmp.not.i103, label %if.end.i107, label %if.then.i104

if.then.i104:                                     ; preds = %while.body24
  %call1.i105 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i97, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit109

if.end.i107:                                      ; preds = %while.body24
  %call2.i108 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %16)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit109

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit109: ; preds = %if.then.i104, %if.end.i107
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i97)
  br label %while.cond21, !llvm.loop !36

while.end27:                                      ; preds = %while.cond21
  %sext = shl i64 %call13, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr inbounds i8, ptr %call9, i64 %idx.ext
  br label %while.cond28

while.cond28:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit122, %while.end27
  %node.0 = phi ptr [ %add.ptr, %while.end27 ], [ %incdec.ptr32, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit122 ]
  %18 = load i8, ptr %node.0, align 1, !tbaa !31
  %cmp30.not = icmp eq i8 %18, 0
  br i1 %cmp30.not, label %if.end, label %while.body31

while.body31:                                     ; preds = %while.cond28
  %incdec.ptr32 = getelementptr inbounds nuw i8, ptr %node.0, i64 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i110)
  store i8 %18, ptr %__c.addr.i110, align 1, !tbaa !31
  %vtable.i111 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i112 = getelementptr i8, ptr %vtable.i111, i64 -24
  %vbase.offset.i113 = load i64, ptr %vbase.offset.ptr.i112, align 8
  %gep133 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i113
  %19 = load i64, ptr %gep133, align 8, !tbaa !8
  %cmp.not.i116 = icmp eq i64 %19, 0
  br i1 %cmp.not.i116, label %if.end.i120, label %if.then.i117

if.then.i117:                                     ; preds = %while.body31
  %call1.i118 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i110, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit122

if.end.i120:                                      ; preds = %while.body31
  %call2.i121 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %18)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit122

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit122: ; preds = %if.then.i117, %if.end.i120
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i110)
  br label %while.cond28, !llvm.loop !37

if.end:                                           ; preds = %while.cond28, %while.cond
  %vtable.i123 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i124 = getelementptr i8, ptr %vtable.i123, i64 -24
  %vbase.offset.i125 = load i64, ptr %vbase.offset.ptr.i124, align 8
  %add.ptr.i126 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i125
  %call.i127 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i126, i8 noundef signext 10)
  %call1.i128 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i127)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i128)
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

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
!30 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!31 = !{!11, !11, i64 0}
!32 = distinct !{!32, !33, !34}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !{!35, !33, !34}
!36 = distinct !{!36, !33, !34}
!37 = distinct !{!37, !33, !34}
