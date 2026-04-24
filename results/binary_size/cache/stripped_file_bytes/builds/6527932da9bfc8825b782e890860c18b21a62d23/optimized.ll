; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwoisyfir.cpp"
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
  %str = alloca [270 x i8], align 16
  %subs = alloca [70 x i8], align 16
  %rep = alloca [70 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 270, ptr nonnull %str) #5
  call void @llvm.lifetime.start.p0(i64 70, ptr nonnull %subs) #5
  call void @llvm.lifetime.start.p0(i64 70, ptr nonnull %rep) #5
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  %_M_width.i17.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i17.i, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %str, i64 noundef 270)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %_M_streambuf_state.i.i18.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i18.i, align 8, !tbaa !21
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = add i64 %0, -271
  %or.cond.i = icmp ult i64 %2, -270
  %or.cond = select i1 %cmp.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %if.then6.i15

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %_M_in_cur.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %4 = load ptr, ptr %_M_in_cur.i.i.i, align 8, !tbaa !30
  %_M_in_end.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %5 = load ptr, ptr %_M_in_end.i.i.i, align 8, !tbaa !33
  %cmp.i19.i = icmp ult ptr %4, %5
  br i1 %cmp.i19.i, label %if.then6.i15, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i: ; preds = %if.then19.i
  %vtable.i.i = load ptr, ptr %3, align 8, !tbaa !5
  %vfn.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i, i64 72
  %6 = load ptr, ptr %vfn.i.i, align 8
  %call5.i.i = call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i20.i = icmp eq i32 %call5.i.i, -1
  %vtable7.i16.pre112 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i20.i, label %if.then28.i, label %if.then6.i15, !prof !35

if.then28.i:                                      ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable7.i16.pre112, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  %_M_streambuf_state.i.i21.i = getelementptr inbounds nuw i8, ptr %add.ptr32.i, i64 32
  %7 = load i32, ptr %_M_streambuf_state.i.i21.i, align 8, !tbaa !21
  %or.i.i22.i = or i32 %7, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef %or.i.i22.i)
  %vtable7.i16.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i15

if.then6.i15:                                     ; preds = %if.then28.i, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i, %if.then19.i, %entry
  %vtable7.i16 = phi ptr [ %vtable7.i16.pre, %if.then28.i ], [ %vtable7.i16.pre112, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i ], [ %vtable12.i, %if.then19.i ], [ %vtable12.i, %entry ]
  %vbase.offset.ptr8.i17 = getelementptr i8, ptr %vtable7.i16, i64 -24
  %vbase.offset9.i18 = load i64, ptr %vbase.offset.ptr8.i17, align 8
  %add.ptr10.i19 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i18
  %_M_width.i17.i20 = getelementptr inbounds nuw i8, ptr %add.ptr10.i19, i64 16
  %8 = load i64, ptr %_M_width.i17.i20, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %subs, i64 noundef 70)
  %vtable12.i21 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i22 = getelementptr i8, ptr %vtable12.i21, i64 -24
  %vbase.offset14.i23 = load i64, ptr %vbase.offset.ptr13.i22, align 8
  %add.ptr15.i24 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i23
  %_M_streambuf_state.i.i18.i25 = getelementptr inbounds nuw i8, ptr %add.ptr15.i24, i64 32
  %9 = load i32, ptr %_M_streambuf_state.i.i18.i25, align 8, !tbaa !21
  %cmp.i.i26 = icmp eq i32 %9, 0
  %10 = add i64 %8, -71
  %or.cond.i30 = icmp ult i64 %10, -70
  %or.cond106 = select i1 %cmp.i.i26, i1 %or.cond.i30, i1 false
  br i1 %or.cond106, label %if.then19.i31, label %if.then6.i60

if.then19.i31:                                    ; preds = %if.then6.i15
  %_M_streambuf.i.i32 = getelementptr inbounds nuw i8, ptr %add.ptr15.i24, i64 232
  %11 = load ptr, ptr %_M_streambuf.i.i32, align 8, !tbaa !22
  %_M_in_cur.i.i.i33 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %12 = load ptr, ptr %_M_in_cur.i.i.i33, align 8, !tbaa !30
  %_M_in_end.i.i.i34 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %13 = load ptr, ptr %_M_in_end.i.i.i34, align 8, !tbaa !33
  %cmp.i19.i35 = icmp ult ptr %12, %13
  br i1 %cmp.i19.i35, label %if.then6.i60, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i36, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i36: ; preds = %if.then19.i31
  %vtable.i.i37 = load ptr, ptr %11, align 8, !tbaa !5
  %vfn.i.i38 = getelementptr inbounds nuw i8, ptr %vtable.i.i37, i64 72
  %14 = load ptr, ptr %vfn.i.i38, align 8
  %call5.i.i39 = call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(64) %11)
  %cmp.i20.i40 = icmp eq i32 %call5.i.i39, -1
  %vtable7.i61.pre114 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i20.i40, label %if.then28.i41, label %if.then6.i60, !prof !35

if.then28.i41:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i36
  %vbase.offset.ptr30.i43 = getelementptr i8, ptr %vtable7.i61.pre114, i64 -24
  %vbase.offset31.i44 = load i64, ptr %vbase.offset.ptr30.i43, align 8
  %add.ptr32.i45 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i44
  %_M_streambuf_state.i.i21.i46 = getelementptr inbounds nuw i8, ptr %add.ptr32.i45, i64 32
  %15 = load i32, ptr %_M_streambuf_state.i.i21.i46, align 8, !tbaa !21
  %or.i.i22.i47 = or i32 %15, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i45, i32 noundef %or.i.i22.i47)
  %vtable7.i61.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i60

if.then6.i60:                                     ; preds = %if.then28.i41, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i36, %if.then19.i31, %if.then6.i15
  %vtable7.i61 = phi ptr [ %vtable7.i61.pre, %if.then28.i41 ], [ %vtable7.i61.pre114, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i36 ], [ %vtable12.i21, %if.then19.i31 ], [ %vtable12.i21, %if.then6.i15 ]
  %vbase.offset.ptr8.i62 = getelementptr i8, ptr %vtable7.i61, i64 -24
  %vbase.offset9.i63 = load i64, ptr %vbase.offset.ptr8.i62, align 8
  %add.ptr10.i64 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i63
  %_M_width.i17.i65 = getelementptr inbounds nuw i8, ptr %add.ptr10.i64, i64 16
  %16 = load i64, ptr %_M_width.i17.i65, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %rep, i64 noundef 70)
  %vtable12.i66 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i67 = getelementptr i8, ptr %vtable12.i66, i64 -24
  %vbase.offset14.i68 = load i64, ptr %vbase.offset.ptr13.i67, align 8
  %add.ptr15.i69 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i68
  %_M_streambuf_state.i.i18.i70 = getelementptr inbounds nuw i8, ptr %add.ptr15.i69, i64 32
  %17 = load i32, ptr %_M_streambuf_state.i.i18.i70, align 8, !tbaa !21
  %cmp.i.i71 = icmp eq i32 %17, 0
  %18 = add i64 %16, -71
  %or.cond.i75 = icmp ult i64 %18, -70
  %or.cond107 = select i1 %cmp.i.i71, i1 %or.cond.i75, i1 false
  br i1 %or.cond107, label %if.then19.i76, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit93

if.then19.i76:                                    ; preds = %if.then6.i60
  %_M_streambuf.i.i77 = getelementptr inbounds nuw i8, ptr %add.ptr15.i69, i64 232
  %19 = load ptr, ptr %_M_streambuf.i.i77, align 8, !tbaa !22
  %_M_in_cur.i.i.i78 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %20 = load ptr, ptr %_M_in_cur.i.i.i78, align 8, !tbaa !30
  %_M_in_end.i.i.i79 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %21 = load ptr, ptr %_M_in_end.i.i.i79, align 8, !tbaa !33
  %cmp.i19.i80 = icmp ult ptr %20, %21
  br i1 %cmp.i19.i80, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit93, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i81, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i81: ; preds = %if.then19.i76
  %vtable.i.i82 = load ptr, ptr %19, align 8, !tbaa !5
  %vfn.i.i83 = getelementptr inbounds nuw i8, ptr %vtable.i.i82, i64 72
  %22 = load ptr, ptr %vfn.i.i83, align 8
  %call5.i.i84 = call noundef i32 %22(ptr noundef nonnull align 8 dereferenceable(64) %19)
  %cmp.i20.i85 = icmp eq i32 %call5.i.i84, -1
  br i1 %cmp.i20.i85, label %if.then28.i86, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit93, !prof !35

if.then28.i86:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i81
  %vtable29.i87 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i88 = getelementptr i8, ptr %vtable29.i87, i64 -24
  %vbase.offset31.i89 = load i64, ptr %vbase.offset.ptr30.i88, align 8
  %add.ptr32.i90 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i89
  %_M_streambuf_state.i.i21.i91 = getelementptr inbounds nuw i8, ptr %add.ptr32.i90, i64 32
  %23 = load i32, ptr %_M_streambuf_state.i.i21.i91, align 8, !tbaa !21
  %or.i.i22.i92 = or i32 %23, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i90, i32 noundef %or.i.i22.i92)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit93

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit93: ; preds = %if.then6.i60, %if.then19.i76, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i81, %if.then28.i86
  %call7 = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %str, ptr noundef nonnull dereferenceable(1) %subs) #6
  %cmp.not = icmp eq ptr %call7, null
  %24 = load i8, ptr %rep, align 16
  %cmp8.not108 = icmp eq i8 %24, 0
  %or.cond111 = select i1 %cmp.not, i1 true, i1 %cmp8.not108
  br i1 %or.cond111, label %if.end, label %for.body

for.body:                                         ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit93, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit93 ]
  %25 = phi i8 [ %26, %for.body ], [ %24, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit93 ]
  %p.0109 = phi ptr [ %incdec.ptr, %for.body ], [ %call7, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit93 ]
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p.0109, i64 1
  store i8 %25, ptr %p.0109, align 1, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds nuw [70 x i8], ptr %rep, i64 0, i64 %indvars.iv.next
  %26 = load i8, ptr %arrayidx, align 1, !tbaa !36
  %cmp8.not = icmp eq i8 %26, 0
  br i1 %cmp8.not, label %if.end, label %for.body, !llvm.loop !37

if.end:                                           ; preds = %for.body, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit93
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #5
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %str, i64 noundef %call.i.i)
  %vtable.i100 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i101 = getelementptr i8, ptr %vtable.i100, i64 -24
  %vbase.offset.i102 = load i64, ptr %vbase.offset.ptr.i101, align 8
  %add.ptr.i103 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i102
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i103, i64 240
  %27 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !40
  %tobool.not.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.end
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %27, i64 56
  %28 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !41
  %tobool.not.i1.i.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %27, i64 67
  %29 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !36
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %27)
  %vtable.i.i.i = load ptr, ptr %27, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %30 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %30(ptr noundef nonnull align 8 dereferenceable(570) %27, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %29, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i104 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i105 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i104)
  call void @llvm.lifetime.end.p0(i64 70, ptr nonnull %rep) #5
  call void @llvm.lifetime.end.p0(i64 70, ptr nonnull %subs) #5
  call void @llvm.lifetime.end.p0(i64 270, ptr nonnull %str) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

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
!40 = !{!23, !27, i64 240}
!41 = !{!42, !11, i64 56}
!42 = !{!"_ZTSSt5ctypeIcE", !43, i64 0, !44, i64 16, !25, i64 24, !45, i64 32, !45, i64 40, !46, i64 48, !11, i64 56, !11, i64 57, !11, i64 313, !11, i64 569}
!43 = !{!"_ZTSNSt6locale5facetE", !17, i64 8}
!44 = !{!"p1 _ZTS15__locale_struct", !15, i64 0}
!45 = !{!"p1 int", !15, i64 0}
!46 = !{!"p1 short", !15, i64 0}
