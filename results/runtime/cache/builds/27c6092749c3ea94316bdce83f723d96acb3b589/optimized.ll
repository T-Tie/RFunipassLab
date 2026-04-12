; ModuleID = '<stdin>'
source_filename = "/tmp/tmpw6kxs16u.cpp"
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
define dso_local noundef i32 @main() #0 {
entry:
  %__c.addr.i105 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %a = alloca [256 x i8], align 16
  %b = alloca [256 x i8], align 16
  %c = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 captures(none) dereferenceable(256) %a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 captures(none) dereferenceable(256) %a, i8 noundef 0, i64 noundef 256, i1 noundef false) #9
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 captures(none) dereferenceable(256) %b) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 captures(none) dereferenceable(256) %b, i8 noundef 0, i64 noundef 256, i1 noundef false) #9
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 captures(none) dereferenceable(256) %c) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 captures(none) dereferenceable(256) %c, i8 noundef 0, i64 noundef 256, i1 noundef false) #9
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8, !invariant.load !8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  %_M_width.i5.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i5.i, align 8, !tbaa !9
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(256) %a, i64 noundef 256)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8, !invariant.load !8
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !22
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = add i64 %0, -257
  %or.cond.i = icmp ult i64 %2, -256
  %or.cond = select i1 %cmp.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %if.then6.i20

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !23
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i6.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i6.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 %conv.i, i64 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  %vtable7.i21.pre155 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %tobool.not.i, label %if.then6.i20, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable7.i21.pre155, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8, !invariant.load !8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  %vtable7.i21.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i20

if.then6.i20:                                     ; preds = %if.then28.i, %if.then19.i, %entry
  %vtable7.i21 = phi ptr [ %vtable7.i21.pre, %if.then28.i ], [ %vtable7.i21.pre155, %if.then19.i ], [ %vtable12.i, %entry ]
  %vbase.offset.ptr8.i22 = getelementptr i8, ptr %vtable7.i21, i64 -24
  %vbase.offset9.i23 = load i64, ptr %vbase.offset.ptr8.i22, align 8, !invariant.load !8
  %add.ptr10.i24 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i23
  %_M_width.i5.i25 = getelementptr inbounds nuw i8, ptr %add.ptr10.i24, i64 16
  %4 = load i64, ptr %_M_width.i5.i25, align 8, !tbaa !9
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(256) %b, i64 noundef 256)
  %vtable12.i26 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i27 = getelementptr i8, ptr %vtable12.i26, i64 -24
  %vbase.offset14.i28 = load i64, ptr %vbase.offset.ptr13.i27, align 8, !invariant.load !8
  %add.ptr15.i29 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i28
  %_M_streambuf_state.i.i.i30 = getelementptr inbounds nuw i8, ptr %add.ptr15.i29, i64 32
  %5 = load i32, ptr %_M_streambuf_state.i.i.i30, align 8, !tbaa !22
  %cmp.i.i31 = icmp eq i32 %5, 0
  %6 = add i64 %4, -257
  %or.cond.i35 = icmp ult i64 %6, -256
  %or.cond120 = select i1 %cmp.i.i31, i1 %or.cond.i35, i1 false
  br i1 %or.cond120, label %if.then19.i36, label %if.then6.i56

if.then19.i36:                                    ; preds = %if.then6.i20
  %_M_streambuf.i.i37 = getelementptr inbounds nuw i8, ptr %add.ptr15.i29, i64 232
  %7 = load ptr, ptr %_M_streambuf.i.i37, align 8, !tbaa !23
  %call25.i38 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %7)
  %cmp.i6.i39 = icmp eq i32 %call25.i38, -1
  %conv.i40 = zext i1 %cmp.i6.i39 to i64
  %expval.i41 = call i64 @llvm.expect.i64(i64 %conv.i40, i64 1)
  %tobool.not.i42 = icmp eq i64 %expval.i41, 0
  %vtable7.i57.pre157 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %tobool.not.i42, label %if.then6.i56, label %if.then28.i43

if.then28.i43:                                    ; preds = %if.then19.i36
  %vbase.offset.ptr30.i45 = getelementptr i8, ptr %vtable7.i57.pre157, i64 -24
  %vbase.offset31.i46 = load i64, ptr %vbase.offset.ptr30.i45, align 8, !invariant.load !8
  %add.ptr32.i47 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i46
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i47, i32 noundef 2)
  %vtable7.i57.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i56

if.then6.i56:                                     ; preds = %if.then28.i43, %if.then19.i36, %if.then6.i20
  %vtable7.i57 = phi ptr [ %vtable7.i57.pre, %if.then28.i43 ], [ %vtable7.i57.pre157, %if.then19.i36 ], [ %vtable12.i26, %if.then6.i20 ]
  %vbase.offset.ptr8.i58 = getelementptr i8, ptr %vtable7.i57, i64 -24
  %vbase.offset9.i59 = load i64, ptr %vbase.offset.ptr8.i58, align 8, !invariant.load !8
  %add.ptr10.i60 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i59
  %_M_width.i5.i61 = getelementptr inbounds nuw i8, ptr %add.ptr10.i60, i64 16
  %8 = load i64, ptr %_M_width.i5.i61, align 8, !tbaa !9
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(256) %c, i64 noundef 256)
  %vtable12.i62 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i63 = getelementptr i8, ptr %vtable12.i62, i64 -24
  %vbase.offset14.i64 = load i64, ptr %vbase.offset.ptr13.i63, align 8, !invariant.load !8
  %add.ptr15.i65 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i64
  %_M_streambuf_state.i.i.i66 = getelementptr inbounds nuw i8, ptr %add.ptr15.i65, i64 32
  %9 = load i32, ptr %_M_streambuf_state.i.i.i66, align 8, !tbaa !22
  %cmp.i.i67 = icmp eq i32 %9, 0
  %10 = add i64 %8, -257
  %or.cond.i71 = icmp ult i64 %10, -256
  %or.cond121 = select i1 %cmp.i.i67, i1 %or.cond.i71, i1 false
  br i1 %or.cond121, label %if.then19.i72, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit84

if.then19.i72:                                    ; preds = %if.then6.i56
  %_M_streambuf.i.i73 = getelementptr inbounds nuw i8, ptr %add.ptr15.i65, i64 232
  %11 = load ptr, ptr %_M_streambuf.i.i73, align 8, !tbaa !23
  %call25.i74 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %11)
  %cmp.i6.i75 = icmp eq i32 %call25.i74, -1
  %conv.i76 = zext i1 %cmp.i6.i75 to i64
  %expval.i77 = call i64 @llvm.expect.i64(i64 %conv.i76, i64 1)
  %tobool.not.i78 = icmp eq i64 %expval.i77, 0
  br i1 %tobool.not.i78, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit84, label %if.then28.i79

if.then28.i79:                                    ; preds = %if.then19.i72
  %vtable29.i80 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i81 = getelementptr i8, ptr %vtable29.i80, i64 -24
  %vbase.offset31.i82 = load i64, ptr %vbase.offset.ptr30.i81, align 8, !invariant.load !8
  %add.ptr32.i83 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i82
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i83, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit84

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit84: ; preds = %if.then6.i56, %if.then19.i72, %if.then28.i79
  %call6 = call i64 @strlen(ptr noundef nonnull align 16 dereferenceable(256) %a) #10
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #11
  %conv9 = trunc i64 %call8 to i32
  %12 = load i8, ptr %b, align 16
  %smax = call i32 @llvm.smax.i32(i32 %conv9, i32 1)
  %13 = add nsw i32 %smax, -1
  %14 = zext nneg i32 %13 to i64
  %smax139 = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count140 = zext nneg i32 %smax139 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit84
  %indvars.iv149 = phi i32 [ %indvars.iv.next150, %for.inc30 ], [ %conv9, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit84 ]
  %indvars.iv145 = phi i32 [ %indvars.iv.next146, %for.inc30 ], [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit84 ]
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %for.inc30 ], [ %14, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit84 ]
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %for.inc30 ], [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit84 ]
  %exitcond141.not = icmp eq i64 %indvars.iv125, %wide.trip.count140
  br i1 %exitcond141.not, label %if.then34, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv125
  %15 = load i8, ptr %arrayidx, align 1, !tbaa !31
  %cmp13 = icmp eq i8 %15, %12
  br i1 %cmp13, label %for.cond14, label %for.inc30

for.cond14:                                       ; preds = %for.body, %for.inc
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %for.inc ], [ %indvars.iv125, %for.body ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv127, %indvars.iv134
  br i1 %exitcond.not, label %for.end, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  %arrayidx18 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv.next128
  %16 = load i8, ptr %arrayidx18, align 1, !tbaa !31
  %arrayidx21 = getelementptr inbounds nuw [256 x i8], ptr %b, i64 0, i64 %indvars.iv
  %17 = load i8, ptr %arrayidx21, align 1, !tbaa !31
  %cmp23.not = icmp eq i8 %16, %17
  br i1 %cmp23.not, label %for.inc, label %for.end.split.loop.exit

for.inc:                                          ; preds = %for.body16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond14, !llvm.loop !32

for.end.split.loop.exit:                          ; preds = %for.body16
  %18 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.cond14, %for.end.split.loop.exit
  %j.0.lcssa = phi i32 [ %18, %for.end.split.loop.exit ], [ %smax, %for.cond14 ]
  %cmp26 = icmp eq i32 %j.0.lcssa, %conv9
  br i1 %cmp26, label %for.cond37.preheader, label %for.inc30

for.cond37.preheader:                             ; preds = %for.end
  %wide.trip.count = zext i32 %indvars.iv145 to i64
  br label %for.cond37

for.inc30:                                        ; preds = %for.body, %for.end
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  %indvars.iv.next146 = add nuw i32 %indvars.iv145, 1
  %indvars.iv.next150 = add i32 %indvars.iv149, 1
  br label %for.cond, !llvm.loop !35

if.then34:                                        ; preds = %for.cond
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 16 dereferenceable(256) %a, i64 noundef %call6)
  br label %if.end57

for.cond37:                                       ; preds = %for.cond37.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv142 = phi i64 [ 0, %for.cond37.preheader ], [ %indvars.iv.next143, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %exitcond148.not = icmp eq i64 %indvars.iv142, %wide.trip.count
  br i1 %exitcond148.not, label %for.end45, label %for.inc43

for.inc43:                                        ; preds = %for.cond37
  %arrayidx41 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv142
  %19 = load i8, ptr %arrayidx41, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %19, ptr %__c.addr.i, align 1, !tbaa !31
  %vtable.i90 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i91 = getelementptr i8, ptr %vtable.i90, i64 -24
  %vbase.offset.i92 = load i64, ptr %vbase.offset.ptr.i91, align 8, !invariant.load !8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i92
  %20 = load i64, ptr %gep, align 8, !tbaa !9
  %cmp.not.i = icmp eq i64 %20, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.inc43
  %call1.i95 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.inc43
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %19)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1
  br label %for.cond37, !llvm.loop !36

for.end45:                                        ; preds = %for.cond37
  %call.i.i97 = call noundef i64 @strlen(ptr noundef nonnull align 16 dereferenceable(256) %c) #10
  %call1.i98 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 16 dereferenceable(256) %c, i64 noundef %call.i.i97)
  %21 = sext i32 %indvars.iv149 to i64
  %sext = shl i64 %call6, 32
  %22 = ashr exact i64 %sext, 32
  br label %for.cond48

for.cond48:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit117, %for.end45
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit117 ], [ %21, %for.end45 ]
  %cmp49 = icmp slt i64 %indvars.iv152, %22
  br i1 %cmp49, label %for.inc54, label %if.end57

for.inc54:                                        ; preds = %for.cond48
  %arrayidx52 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %indvars.iv152
  %23 = load i8, ptr %arrayidx52, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i105)
  store i8 %23, ptr %__c.addr.i105, align 1, !tbaa !31
  %vtable.i106 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i107 = getelementptr i8, ptr %vtable.i106, i64 -24
  %vbase.offset.i108 = load i64, ptr %vbase.offset.ptr.i107, align 8, !invariant.load !8
  %gep123 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i108
  %24 = load i64, ptr %gep123, align 8, !tbaa !9
  %cmp.not.i111 = icmp eq i64 %24, 0
  br i1 %cmp.not.i111, label %if.end.i115, label %if.then.i112

if.then.i112:                                     ; preds = %for.inc54
  %call1.i113 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i105, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit117

if.end.i115:                                      ; preds = %for.inc54
  %call2.i116 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %23)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit117

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit117: ; preds = %if.then.i112, %if.end.i115
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i105)
  %indvars.iv.next153 = add nsw i64 %indvars.iv152, 1
  br label %for.cond48, !llvm.loop !37

if.end57:                                         ; preds = %for.cond48, %if.then34
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull captures(none) %c) #10
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull captures(none) %b) #10
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull captures(none) %a) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #5 align 2 {
entry:
  %_M_streambuf_state.i = getelementptr inbounds nuw i8, ptr %this, i64 32
  %0 = load i32, ptr %_M_streambuf_state.i, align 8, !tbaa !22
  %or.i = or i32 %0, %__state
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %or.i)
  ret void
}

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) #6

; Function Attrs: mustprogress uwtable
define available_externally noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %this) #5 align 2 {
entry:
  %_M_in_cur.i = getelementptr inbounds nuw i8, ptr %this, i64 16
  %0 = load ptr, ptr %_M_in_cur.i, align 8, !tbaa !38
  %_M_in_end.i = getelementptr inbounds nuw i8, ptr %this, i64 24
  %1 = load ptr, ptr %_M_in_end.i, align 8, !tbaa !41
  %cmp = icmp ult ptr %0, %1
  %conv = zext i1 %cmp to i64
  %expval = tail call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool.not = icmp eq i64 %expval, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %0, align 1, !tbaa !31
  %conv.i = zext i8 %2 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  %vtable = load ptr, ptr %this, align 8, !tbaa !5
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 72
  %3 = load ptr, ptr %vfn, align 8, !invariant.load !8
  %call5 = tail call noundef i32 %3(ptr noundef nonnull align 8 dereferenceable(64) %this)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %__ret.0 = phi i32 [ %conv.i, %if.then ], [ %call5, %if.else ]
  ret i32 %__ret.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nofree nounwind }
attributes #9 = { nofree }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!8 = !{}
!9 = !{!10, !11, i64 16}
!10 = !{!"_ZTSSt8ios_base", !11, i64 8, !11, i64 16, !13, i64 24, !14, i64 28, !14, i64 32, !15, i64 40, !17, i64 48, !12, i64 64, !18, i64 192, !19, i64 200, !20, i64 208}
!11 = !{!"long", !12, i64 0}
!12 = !{!"omnipotent char", !7, i64 0}
!13 = !{!"_ZTSSt13_Ios_Fmtflags", !12, i64 0}
!14 = !{!"_ZTSSt12_Ios_Iostate", !12, i64 0}
!15 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !11, i64 8}
!18 = !{!"int", !12, i64 0}
!19 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!20 = !{!"_ZTSSt6locale", !21, i64 0}
!21 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!22 = !{!10, !14, i64 32}
!23 = !{!24, !27, i64 232}
!24 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !10, i64 0, !25, i64 216, !12, i64 224, !26, i64 225, !27, i64 232, !28, i64 240, !29, i64 248, !30, i64 256}
!25 = !{!"p1 _ZTSSo", !16, i64 0}
!26 = !{!"bool", !12, i64 0}
!27 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!28 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!29 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!30 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!31 = !{!12, !12, i64 0}
!32 = distinct !{!32, !33, !34}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !{!35, !33, !34}
!36 = distinct !{!36, !33, !34}
!37 = distinct !{!37, !33, !34}
!38 = !{!39, !40, i64 16}
!39 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !20, i64 56}
!40 = !{!"p1 omnipotent char", !16, i64 0}
!41 = !{!39, !40, i64 24}
