; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz8hw9an2.cpp"
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
  %__c.addr.i120 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %str = alloca [257 x i8], align 16
  %str152 = ptrtoint ptr %str to i64
  %substr = alloca [257 x i8], align 16
  %replace = alloca [257 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %str) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(257) %str, i8 0, i64 257, i1 false)
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %substr) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(257) %substr, i8 0, i64 257, i1 false)
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %replace) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(257) %replace, i8 0, i64 257, i1 false)
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  %_M_width.i17.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i17.i, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %str, i64 noundef 257)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %_M_streambuf_state.i.i18.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i18.i, align 8, !tbaa !21
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = add i64 %0, -258
  %or.cond.i = icmp ult i64 %2, -257
  %or.cond = select i1 %cmp.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %if.then6.i19

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %_M_in_cur.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %4 = load ptr, ptr %_M_in_cur.i.i.i, align 8, !tbaa !30
  %_M_in_end.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %5 = load ptr, ptr %_M_in_end.i.i.i, align 8, !tbaa !33
  %cmp.i19.i = icmp ult ptr %4, %5
  br i1 %cmp.i19.i, label %if.then6.i19, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i: ; preds = %if.then19.i
  %vtable.i.i = load ptr, ptr %3, align 8, !tbaa !5
  %vfn.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i, i64 72
  %6 = load ptr, ptr %vfn.i.i, align 8
  %call5.i.i = call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i20.i = icmp eq i32 %call5.i.i, -1
  %vtable7.i20.pre156 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i20.i, label %if.then28.i, label %if.then6.i19, !prof !35

if.then28.i:                                      ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable7.i20.pre156, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  %_M_streambuf_state.i.i21.i = getelementptr inbounds nuw i8, ptr %add.ptr32.i, i64 32
  %7 = load i32, ptr %_M_streambuf_state.i.i21.i, align 8, !tbaa !21
  %or.i.i22.i = or i32 %7, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef %or.i.i22.i)
  %vtable7.i20.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i19

if.then6.i19:                                     ; preds = %if.then28.i, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i, %if.then19.i, %entry
  %vtable7.i20 = phi ptr [ %vtable7.i20.pre, %if.then28.i ], [ %vtable7.i20.pre156, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i ], [ %vtable12.i, %if.then19.i ], [ %vtable12.i, %entry ]
  %vbase.offset.ptr8.i21 = getelementptr i8, ptr %vtable7.i20, i64 -24
  %vbase.offset9.i22 = load i64, ptr %vbase.offset.ptr8.i21, align 8
  %add.ptr10.i23 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i22
  %_M_width.i17.i24 = getelementptr inbounds nuw i8, ptr %add.ptr10.i23, i64 16
  %8 = load i64, ptr %_M_width.i17.i24, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %substr, i64 noundef 257)
  %vtable12.i25 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i26 = getelementptr i8, ptr %vtable12.i25, i64 -24
  %vbase.offset14.i27 = load i64, ptr %vbase.offset.ptr13.i26, align 8
  %add.ptr15.i28 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i27
  %_M_streambuf_state.i.i18.i29 = getelementptr inbounds nuw i8, ptr %add.ptr15.i28, i64 32
  %9 = load i32, ptr %_M_streambuf_state.i.i18.i29, align 8, !tbaa !21
  %cmp.i.i30 = icmp eq i32 %9, 0
  %10 = add i64 %8, -258
  %or.cond.i34 = icmp ult i64 %10, -257
  %or.cond139 = select i1 %cmp.i.i30, i1 %or.cond.i34, i1 false
  br i1 %or.cond139, label %if.then19.i35, label %if.then6.i64

if.then19.i35:                                    ; preds = %if.then6.i19
  %_M_streambuf.i.i36 = getelementptr inbounds nuw i8, ptr %add.ptr15.i28, i64 232
  %11 = load ptr, ptr %_M_streambuf.i.i36, align 8, !tbaa !22
  %_M_in_cur.i.i.i37 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %12 = load ptr, ptr %_M_in_cur.i.i.i37, align 8, !tbaa !30
  %_M_in_end.i.i.i38 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %13 = load ptr, ptr %_M_in_end.i.i.i38, align 8, !tbaa !33
  %cmp.i19.i39 = icmp ult ptr %12, %13
  br i1 %cmp.i19.i39, label %if.then6.i64, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i40, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i40: ; preds = %if.then19.i35
  %vtable.i.i41 = load ptr, ptr %11, align 8, !tbaa !5
  %vfn.i.i42 = getelementptr inbounds nuw i8, ptr %vtable.i.i41, i64 72
  %14 = load ptr, ptr %vfn.i.i42, align 8
  %call5.i.i43 = call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(64) %11)
  %cmp.i20.i44 = icmp eq i32 %call5.i.i43, -1
  %vtable7.i65.pre158 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i20.i44, label %if.then28.i45, label %if.then6.i64, !prof !35

if.then28.i45:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i40
  %vbase.offset.ptr30.i47 = getelementptr i8, ptr %vtable7.i65.pre158, i64 -24
  %vbase.offset31.i48 = load i64, ptr %vbase.offset.ptr30.i47, align 8
  %add.ptr32.i49 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i48
  %_M_streambuf_state.i.i21.i50 = getelementptr inbounds nuw i8, ptr %add.ptr32.i49, i64 32
  %15 = load i32, ptr %_M_streambuf_state.i.i21.i50, align 8, !tbaa !21
  %or.i.i22.i51 = or i32 %15, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i49, i32 noundef %or.i.i22.i51)
  %vtable7.i65.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i64

if.then6.i64:                                     ; preds = %if.then28.i45, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i40, %if.then19.i35, %if.then6.i19
  %vtable7.i65 = phi ptr [ %vtable7.i65.pre, %if.then28.i45 ], [ %vtable7.i65.pre158, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i40 ], [ %vtable12.i25, %if.then19.i35 ], [ %vtable12.i25, %if.then6.i19 ]
  %vbase.offset.ptr8.i66 = getelementptr i8, ptr %vtable7.i65, i64 -24
  %vbase.offset9.i67 = load i64, ptr %vbase.offset.ptr8.i66, align 8
  %add.ptr10.i68 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i67
  %_M_width.i17.i69 = getelementptr inbounds nuw i8, ptr %add.ptr10.i68, i64 16
  %16 = load i64, ptr %_M_width.i17.i69, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %replace, i64 noundef 257)
  %vtable12.i70 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i71 = getelementptr i8, ptr %vtable12.i70, i64 -24
  %vbase.offset14.i72 = load i64, ptr %vbase.offset.ptr13.i71, align 8
  %add.ptr15.i73 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i72
  %_M_streambuf_state.i.i18.i74 = getelementptr inbounds nuw i8, ptr %add.ptr15.i73, i64 32
  %17 = load i32, ptr %_M_streambuf_state.i.i18.i74, align 8, !tbaa !21
  %cmp.i.i75 = icmp eq i32 %17, 0
  %18 = add i64 %16, -258
  %or.cond.i79 = icmp ult i64 %18, -257
  %or.cond140 = select i1 %cmp.i.i75, i1 %or.cond.i79, i1 false
  br i1 %or.cond140, label %if.then19.i80, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit97

if.then19.i80:                                    ; preds = %if.then6.i64
  %_M_streambuf.i.i81 = getelementptr inbounds nuw i8, ptr %add.ptr15.i73, i64 232
  %19 = load ptr, ptr %_M_streambuf.i.i81, align 8, !tbaa !22
  %_M_in_cur.i.i.i82 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %20 = load ptr, ptr %_M_in_cur.i.i.i82, align 8, !tbaa !30
  %_M_in_end.i.i.i83 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %21 = load ptr, ptr %_M_in_end.i.i.i83, align 8, !tbaa !33
  %cmp.i19.i84 = icmp ult ptr %20, %21
  br i1 %cmp.i19.i84, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit97, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i85, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i85: ; preds = %if.then19.i80
  %vtable.i.i86 = load ptr, ptr %19, align 8, !tbaa !5
  %vfn.i.i87 = getelementptr inbounds nuw i8, ptr %vtable.i.i86, i64 72
  %22 = load ptr, ptr %vfn.i.i87, align 8
  %call5.i.i88 = call noundef i32 %22(ptr noundef nonnull align 8 dereferenceable(64) %19)
  %cmp.i20.i89 = icmp eq i32 %call5.i.i88, -1
  br i1 %cmp.i20.i89, label %if.then28.i90, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit97, !prof !35

if.then28.i90:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i85
  %vtable29.i91 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i92 = getelementptr i8, ptr %vtable29.i91, i64 -24
  %vbase.offset31.i93 = load i64, ptr %vbase.offset.ptr30.i92, align 8
  %add.ptr32.i94 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i93
  %_M_streambuf_state.i.i21.i95 = getelementptr inbounds nuw i8, ptr %add.ptr32.i94, i64 32
  %23 = load i32, ptr %_M_streambuf_state.i.i21.i95, align 8, !tbaa !21
  %or.i.i22.i96 = or i32 %23, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i94, i32 noundef %or.i.i22.i96)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit97

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit97: ; preds = %if.then6.i64, %if.then19.i80, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i85, %if.then28.i90
  %call7 = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %str, ptr noundef nonnull dereferenceable(1) %substr) #7
  %call7151 = ptrtoint ptr %call7 to i64
  %call9 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %substr) #7
  %cmp = icmp eq ptr %call7, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit97
  %cmp14141 = icmp ult ptr %str, %call7
  br i1 %cmp14141, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %24 = sub i64 %call7151, %str152
  br label %for.body

if.then:                                          ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit97
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #6
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %str, i64 noundef %call.i.i)
  %vtable.i133 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i134 = getelementptr i8, ptr %vtable.i133, i64 -24
  %vbase.offset.i135 = load i64, ptr %vbase.offset.ptr.i134, align 8
  %add.ptr.i136 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i135
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i136, i64 240
  %25 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !36
  %tobool.not.i.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %25, i64 56
  %26 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !37
  %tobool.not.i1.i.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %25, i64 67
  %27 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !43
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %25)
  %vtable.i.i.i = load ptr, ptr %25, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %28 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %28(ptr noundef nonnull align 8 dereferenceable(570) %25, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %27, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i137 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i138 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i137)
  br label %if.end

for.body:                                         ; preds = %for.body.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %arrayidx = getelementptr inbounds nuw [257 x i8], ptr %str, i64 0, i64 %indvars.iv
  %29 = load i8, ptr %arrayidx, align 1, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %29, ptr %__c.addr.i, align 1, !tbaa !43
  %vtable.i104 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i105 = getelementptr i8, ptr %vtable.i104, i64 -24
  %vbase.offset.i106 = load i64, ptr %vbase.offset.ptr.i105, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i106
  %30 = load i64, ptr %gep, align 8, !tbaa !8
  %cmp.not.i = icmp eq i64 %30, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %call1.i109 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %29)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %24
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !44

for.end:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %for.cond.preheader
  %i.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %24, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %call.i.i110 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %replace) #6
  %call1.i111 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %replace, i64 noundef %call.i.i110)
  %add = add i64 %i.0.lcssa, %call9
  %sext = shl i64 %add, 32
  %conv19145 = ashr exact i64 %sext, 32
  %call21146 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #7
  %cmp22147 = icmp ugt i64 %call21146, %conv19145
  br i1 %cmp22147, label %for.body23, label %if.end

for.body23:                                       ; preds = %for.end, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit132
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit132 ], [ %conv19145, %for.end ]
  %arrayidx25 = getelementptr inbounds [257 x i8], ptr %str, i64 0, i64 %indvars.iv153
  %31 = load i8, ptr %arrayidx25, align 1, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i120)
  store i8 %31, ptr %__c.addr.i120, align 1, !tbaa !43
  %vtable.i121 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i122 = getelementptr i8, ptr %vtable.i121, i64 -24
  %vbase.offset.i123 = load i64, ptr %vbase.offset.ptr.i122, align 8
  %gep144 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i123
  %32 = load i64, ptr %gep144, align 8, !tbaa !8
  %cmp.not.i126 = icmp eq i64 %32, 0
  br i1 %cmp.not.i126, label %if.end.i130, label %if.then.i127

if.then.i127:                                     ; preds = %for.body23
  %call1.i128 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i120, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit132

if.end.i130:                                      ; preds = %for.body23
  %call2.i131 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %31)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit132

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit132: ; preds = %if.then.i127, %if.end.i130
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i120)
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1
  %call21 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #7
  %cmp22 = icmp ugt i64 %call21, %indvars.iv.next154
  br i1 %cmp22, label %for.body23, label %if.end, !llvm.loop !47

if.end:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit132, %for.end, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %replace) #6
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %substr) #6
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %str) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { noreturn }

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
!36 = !{!23, !27, i64 240}
!37 = !{!38, !11, i64 56}
!38 = !{!"_ZTSSt5ctypeIcE", !39, i64 0, !40, i64 16, !25, i64 24, !41, i64 32, !41, i64 40, !42, i64 48, !11, i64 56, !11, i64 57, !11, i64 313, !11, i64 569}
!39 = !{!"_ZTSNSt6locale5facetE", !17, i64 8}
!40 = !{!"p1 _ZTS15__locale_struct", !15, i64 0}
!41 = !{!"p1 int", !15, i64 0}
!42 = !{!"p1 short", !15, i64 0}
!43 = !{!11, !11, i64 0}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = distinct !{!47, !45, !46}
