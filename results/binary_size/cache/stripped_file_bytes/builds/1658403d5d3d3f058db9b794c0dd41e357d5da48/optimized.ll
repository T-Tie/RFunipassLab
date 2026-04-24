; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnyzv0t_d.cpp"
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
  %__c.addr.i = alloca i8, align 1
  %str = alloca [256 x i8], align 16
  %substr = alloca [256 x i8], align 16
  %replace = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %str) #5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %substr) #5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %replace) #5
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  %_M_width.i17.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i17.i, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %str, i64 noundef 256)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %_M_streambuf_state.i.i18.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i18.i, align 8, !tbaa !21
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = add i64 %0, -257
  %or.cond.i = icmp ult i64 %2, -256
  %or.cond = select i1 %cmp.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %if.then6.i26

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %_M_in_cur.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %4 = load ptr, ptr %_M_in_cur.i.i.i, align 8, !tbaa !30
  %_M_in_end.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %5 = load ptr, ptr %_M_in_end.i.i.i, align 8, !tbaa !33
  %cmp.i19.i = icmp ult ptr %4, %5
  br i1 %cmp.i19.i, label %if.then6.i26, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i: ; preds = %if.then19.i
  %vtable.i.i = load ptr, ptr %3, align 8, !tbaa !5
  %vfn.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i, i64 72
  %6 = load ptr, ptr %vfn.i.i, align 8
  %call5.i.i = call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i20.i = icmp eq i32 %call5.i.i, -1
  %vtable7.i27.pre194 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i20.i, label %if.then28.i, label %if.then6.i26, !prof !35

if.then28.i:                                      ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable7.i27.pre194, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  %_M_streambuf_state.i.i21.i = getelementptr inbounds nuw i8, ptr %add.ptr32.i, i64 32
  %7 = load i32, ptr %_M_streambuf_state.i.i21.i, align 8, !tbaa !21
  %or.i.i22.i = or i32 %7, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef %or.i.i22.i)
  %vtable7.i27.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i26

if.then6.i26:                                     ; preds = %if.then28.i, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i, %if.then19.i, %entry
  %vtable7.i27 = phi ptr [ %vtable7.i27.pre, %if.then28.i ], [ %vtable7.i27.pre194, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i ], [ %vtable12.i, %if.then19.i ], [ %vtable12.i, %entry ]
  %vbase.offset.ptr8.i28 = getelementptr i8, ptr %vtable7.i27, i64 -24
  %vbase.offset9.i29 = load i64, ptr %vbase.offset.ptr8.i28, align 8
  %add.ptr10.i30 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i29
  %_M_width.i17.i31 = getelementptr inbounds nuw i8, ptr %add.ptr10.i30, i64 16
  %8 = load i64, ptr %_M_width.i17.i31, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %substr, i64 noundef 256)
  %vtable12.i32 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i33 = getelementptr i8, ptr %vtable12.i32, i64 -24
  %vbase.offset14.i34 = load i64, ptr %vbase.offset.ptr13.i33, align 8
  %add.ptr15.i35 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i34
  %_M_streambuf_state.i.i18.i36 = getelementptr inbounds nuw i8, ptr %add.ptr15.i35, i64 32
  %9 = load i32, ptr %_M_streambuf_state.i.i18.i36, align 8, !tbaa !21
  %cmp.i.i37 = icmp eq i32 %9, 0
  %10 = add i64 %8, -257
  %or.cond.i41 = icmp ult i64 %10, -256
  %or.cond166 = select i1 %cmp.i.i37, i1 %or.cond.i41, i1 false
  br i1 %or.cond166, label %if.then19.i42, label %if.then6.i71

if.then19.i42:                                    ; preds = %if.then6.i26
  %_M_streambuf.i.i43 = getelementptr inbounds nuw i8, ptr %add.ptr15.i35, i64 232
  %11 = load ptr, ptr %_M_streambuf.i.i43, align 8, !tbaa !22
  %_M_in_cur.i.i.i44 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %12 = load ptr, ptr %_M_in_cur.i.i.i44, align 8, !tbaa !30
  %_M_in_end.i.i.i45 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %13 = load ptr, ptr %_M_in_end.i.i.i45, align 8, !tbaa !33
  %cmp.i19.i46 = icmp ult ptr %12, %13
  br i1 %cmp.i19.i46, label %if.then6.i71, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i47, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i47: ; preds = %if.then19.i42
  %vtable.i.i48 = load ptr, ptr %11, align 8, !tbaa !5
  %vfn.i.i49 = getelementptr inbounds nuw i8, ptr %vtable.i.i48, i64 72
  %14 = load ptr, ptr %vfn.i.i49, align 8
  %call5.i.i50 = call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(64) %11)
  %cmp.i20.i51 = icmp eq i32 %call5.i.i50, -1
  %vtable7.i72.pre196 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i20.i51, label %if.then28.i52, label %if.then6.i71, !prof !35

if.then28.i52:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i47
  %vbase.offset.ptr30.i54 = getelementptr i8, ptr %vtable7.i72.pre196, i64 -24
  %vbase.offset31.i55 = load i64, ptr %vbase.offset.ptr30.i54, align 8
  %add.ptr32.i56 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i55
  %_M_streambuf_state.i.i21.i57 = getelementptr inbounds nuw i8, ptr %add.ptr32.i56, i64 32
  %15 = load i32, ptr %_M_streambuf_state.i.i21.i57, align 8, !tbaa !21
  %or.i.i22.i58 = or i32 %15, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i56, i32 noundef %or.i.i22.i58)
  %vtable7.i72.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i71

if.then6.i71:                                     ; preds = %if.then28.i52, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i47, %if.then19.i42, %if.then6.i26
  %vtable7.i72 = phi ptr [ %vtable7.i72.pre, %if.then28.i52 ], [ %vtable7.i72.pre196, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i47 ], [ %vtable12.i32, %if.then19.i42 ], [ %vtable12.i32, %if.then6.i26 ]
  %vbase.offset.ptr8.i73 = getelementptr i8, ptr %vtable7.i72, i64 -24
  %vbase.offset9.i74 = load i64, ptr %vbase.offset.ptr8.i73, align 8
  %add.ptr10.i75 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i74
  %_M_width.i17.i76 = getelementptr inbounds nuw i8, ptr %add.ptr10.i75, i64 16
  %16 = load i64, ptr %_M_width.i17.i76, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %replace, i64 noundef 256)
  %vtable12.i77 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i78 = getelementptr i8, ptr %vtable12.i77, i64 -24
  %vbase.offset14.i79 = load i64, ptr %vbase.offset.ptr13.i78, align 8
  %add.ptr15.i80 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i79
  %_M_streambuf_state.i.i18.i81 = getelementptr inbounds nuw i8, ptr %add.ptr15.i80, i64 32
  %17 = load i32, ptr %_M_streambuf_state.i.i18.i81, align 8, !tbaa !21
  %cmp.i.i82 = icmp eq i32 %17, 0
  %18 = add i64 %16, -257
  %or.cond.i86 = icmp ult i64 %18, -256
  %or.cond167 = select i1 %cmp.i.i82, i1 %or.cond.i86, i1 false
  br i1 %or.cond167, label %if.then19.i87, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit104

if.then19.i87:                                    ; preds = %if.then6.i71
  %_M_streambuf.i.i88 = getelementptr inbounds nuw i8, ptr %add.ptr15.i80, i64 232
  %19 = load ptr, ptr %_M_streambuf.i.i88, align 8, !tbaa !22
  %_M_in_cur.i.i.i89 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %20 = load ptr, ptr %_M_in_cur.i.i.i89, align 8, !tbaa !30
  %_M_in_end.i.i.i90 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %21 = load ptr, ptr %_M_in_end.i.i.i90, align 8, !tbaa !33
  %cmp.i19.i91 = icmp ult ptr %20, %21
  br i1 %cmp.i19.i91, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit104, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i92, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i92: ; preds = %if.then19.i87
  %vtable.i.i93 = load ptr, ptr %19, align 8, !tbaa !5
  %vfn.i.i94 = getelementptr inbounds nuw i8, ptr %vtable.i.i93, i64 72
  %22 = load ptr, ptr %vfn.i.i94, align 8
  %call5.i.i95 = call noundef i32 %22(ptr noundef nonnull align 8 dereferenceable(64) %19)
  %cmp.i20.i96 = icmp eq i32 %call5.i.i95, -1
  br i1 %cmp.i20.i96, label %if.then28.i97, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit104, !prof !35

if.then28.i97:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i92
  %vtable29.i98 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i99 = getelementptr i8, ptr %vtable29.i98, i64 -24
  %vbase.offset31.i100 = load i64, ptr %vbase.offset.ptr30.i99, align 8
  %add.ptr32.i101 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i100
  %_M_streambuf_state.i.i21.i102 = getelementptr inbounds nuw i8, ptr %add.ptr32.i101, i64 32
  %23 = load i32, ptr %_M_streambuf_state.i.i21.i102, align 8, !tbaa !21
  %or.i.i22.i103 = or i32 %23, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i101, i32 noundef %or.i.i22.i103)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit104

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit104: ; preds = %if.then6.i71, %if.then19.i87, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i92, %if.then28.i97
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #5
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %substr) #6
  %conv9 = trunc i64 %call8 to i32
  %cmp.not172 = icmp slt i32 %conv, %conv9
  br i1 %cmp.not172, label %if.else, label %for.cond13.preheader.lr.ph

for.cond13.preheader.lr.ph:                       ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit104
  %cmp14169 = icmp sgt i32 %conv9, 0
  br i1 %cmp14169, label %for.cond13.preheader.us.preheader, label %for.cond13.preheader.lr.ph.split

for.cond13.preheader.us.preheader:                ; preds = %for.cond13.preheader.lr.ph
  %24 = add i64 %call6, 1
  %25 = sub i64 %24, %call8
  %wide.trip.count187 = and i64 %25, 4294967295
  %wide.trip.count = and i64 %call8, 2147483647
  br label %for.cond13.preheader.us

for.cond13.preheader.us:                          ; preds = %for.cond13.preheader.us.preheader, %for.inc24.us
  %indvars.iv184 = phi i64 [ 0, %for.cond13.preheader.us.preheader ], [ %indvars.iv.next185, %for.inc24.us ]
  br label %for.body15.us

for.body15.us:                                    ; preds = %for.cond13.preheader.us, %for.inc.us
  %indvars.iv = phi i64 [ 0, %for.cond13.preheader.us ], [ %indvars.iv.next, %for.inc.us ]
  %26 = add nuw nsw i64 %indvars.iv, %indvars.iv184
  %arrayidx.us = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %26
  %27 = load i8, ptr %arrayidx.us, align 1, !tbaa !36
  %arrayidx18.us = getelementptr inbounds nuw [256 x i8], ptr %substr, i64 0, i64 %indvars.iv
  %28 = load i8, ptr %arrayidx18.us, align 1, !tbaa !36
  %cmp20.not.us = icmp eq i8 %27, %28
  br i1 %cmp20.not.us, label %for.inc.us, label %for.end.us

for.end.us:                                       ; preds = %for.body15.us
  %29 = trunc nuw nsw i64 %indvars.iv to i32
  %cmp21.us = icmp eq i32 %29, %conv9
  br i1 %cmp21.us, label %for.cond28.preheader, label %for.inc24.us

for.inc24.us:                                     ; preds = %for.end.us
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  br i1 %exitcond188.not, label %if.else, label %for.cond13.preheader.us, !llvm.loop !37

for.inc.us:                                       ; preds = %for.body15.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond28.preheader, label %for.body15.us, !llvm.loop !40

for.cond13.preheader.lr.ph.split:                 ; preds = %for.cond13.preheader.lr.ph
  %cmp21 = icmp eq i32 %conv9, 0
  br i1 %cmp21, label %for.end36, label %if.else

for.cond28.preheader:                             ; preds = %for.end.us, %for.inc.us
  %cmp29178.not = icmp eq i64 %indvars.iv184, 0
  br i1 %cmp29178.not, label %for.end36, label %for.body30.preheader

for.body30.preheader:                             ; preds = %for.cond28.preheader
  %wide.trip.count192 = and i64 %indvars.iv184, 4294967295
  br label %for.body30

for.body30:                                       ; preds = %for.body30.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv189 = phi i64 [ 0, %for.body30.preheader ], [ %indvars.iv.next190, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %arrayidx32 = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %indvars.iv189
  %30 = load i8, ptr %arrayidx32, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %30, ptr %__c.addr.i, align 1, !tbaa !36
  %vtable.i105 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i106 = getelementptr i8, ptr %vtable.i105, i64 -24
  %vbase.offset.i107 = load i64, ptr %vbase.offset.ptr.i106, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i107
  %31 = load i64, ptr %gep, align 8, !tbaa !8
  %cmp.not.i = icmp eq i64 %31, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body30
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body30
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %30)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %for.end36, label %for.body30, !llvm.loop !41

for.end36:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %for.cond28.preheader, %for.cond13.preheader.lr.ph.split
  %idx.ext.pre-phi = phi i64 [ 0, %for.cond13.preheader.lr.ph.split ], [ 0, %for.cond28.preheader ], [ %wide.trip.count192, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %replace) #5
  %call1.i110 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %replace, i64 noundef %call.i.i)
  %add.ptr = getelementptr inbounds nuw i8, ptr %str, i64 %idx.ext.pre-phi
  %sext = shl i64 %call8, 32
  %idx.ext40 = ashr exact i64 %sext, 32
  %add.ptr41 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext40
  %call.i.i119 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr41) #5
  %call1.i120 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %add.ptr41, i64 noundef %call.i.i119)
  %vtable.i140 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i141 = getelementptr i8, ptr %vtable.i140, i64 -24
  %vbase.offset.i142 = load i64, ptr %vbase.offset.ptr.i141, align 8
  %add.ptr.i143 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i142
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i143, i64 240
  %32 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !42
  %tobool.not.i.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end36
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end36
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %32, i64 56
  %33 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !43
  %tobool.not.i1.i.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %32, i64 67
  %34 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !36
  br label %if.end47

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %32)
  %vtable.i.i.i = load ptr, ptr %32, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %35 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %35(ptr noundef nonnull align 8 dereferenceable(570) %32, i8 noundef signext 10)
  br label %if.end47

if.else:                                          ; preds = %for.inc24.us, %for.cond13.preheader.lr.ph.split, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit104
  %call1.i130 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %str, i64 noundef %call6)
  %vtable.i146 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i147 = getelementptr i8, ptr %vtable.i146, i64 -24
  %vbase.offset.i148 = load i64, ptr %vbase.offset.ptr.i147, align 8
  %add.ptr.i149 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i148
  %_M_ctype.i.i150 = getelementptr inbounds nuw i8, ptr %add.ptr.i149, i64 240
  %36 = load ptr, ptr %_M_ctype.i.i150, align 8, !tbaa !42
  %tobool.not.i.i.i151 = icmp eq ptr %36, null
  br i1 %tobool.not.i.i.i151, label %if.then.i.i.i164, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i152

if.then.i.i.i164:                                 ; preds = %if.else
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i152: ; preds = %if.else
  %_M_widen_ok.i.i.i153 = getelementptr inbounds nuw i8, ptr %36, i64 56
  %37 = load i8, ptr %_M_widen_ok.i.i.i153, align 8, !tbaa !43
  %tobool.not.i1.i.i154 = icmp eq i8 %37, 0
  br i1 %tobool.not.i1.i.i154, label %if.end.i.i.i160, label %if.then.i2.i.i155

if.then.i2.i.i155:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i152
  %arrayidx.i.i.i156 = getelementptr inbounds nuw i8, ptr %36, i64 67
  %38 = load i8, ptr %arrayidx.i.i.i156, align 1, !tbaa !36
  br label %if.end47

if.end.i.i.i160:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i152
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %36)
  %vtable.i.i.i161 = load ptr, ptr %36, align 8, !tbaa !5
  %vfn.i.i.i162 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i161, i64 48
  %39 = load ptr, ptr %vfn.i.i.i162, align 8
  %call.i.i.i163 = call noundef signext i8 %39(ptr noundef nonnull align 8 dereferenceable(570) %36, i8 noundef signext 10)
  br label %if.end47

if.end47:                                         ; preds = %if.end.i.i.i160, %if.then.i2.i.i155, %if.end.i.i.i, %if.then.i2.i.i
  %retval.0.i.i.i157.sink = phi i8 [ %34, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ], [ %38, %if.then.i2.i.i155 ], [ %call.i.i.i163, %if.end.i.i.i160 ]
  %call1.i158 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i157.sink)
  %call.i.i159 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i158)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %replace) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %substr) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %str) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

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
!42 = !{!23, !27, i64 240}
!43 = !{!44, !11, i64 56}
!44 = !{!"_ZTSSt5ctypeIcE", !45, i64 0, !46, i64 16, !25, i64 24, !47, i64 32, !47, i64 40, !48, i64 48, !11, i64 56, !11, i64 57, !11, i64 313, !11, i64 569}
!45 = !{!"_ZTSNSt6locale5facetE", !17, i64 8}
!46 = !{!"p1 _ZTS15__locale_struct", !15, i64 0}
!47 = !{!"p1 int", !15, i64 0}
!48 = !{!"p1 short", !15, i64 0}
