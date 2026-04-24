; ModuleID = '<stdin>'
source_filename = "/tmp/tmpb746k0c5.cpp"
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
  %__c.addr.i122 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %str = alloca [256 x i8], align 16
  %str1 = alloca [256 x i8], align 16
  %str2 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %str) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %str1) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %str2) #4
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
  br i1 %or.cond, label %if.then19.i, label %if.then6.i29

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %_M_in_cur.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %4 = load ptr, ptr %_M_in_cur.i.i.i, align 8, !tbaa !30
  %_M_in_end.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %5 = load ptr, ptr %_M_in_end.i.i.i, align 8, !tbaa !33
  %cmp.i19.i = icmp ult ptr %4, %5
  br i1 %cmp.i19.i, label %if.then6.i29, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i: ; preds = %if.then19.i
  %vtable.i.i = load ptr, ptr %3, align 8, !tbaa !5
  %vfn.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i, i64 72
  %6 = load ptr, ptr %vfn.i.i, align 8
  %call5.i.i = call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i20.i = icmp eq i32 %call5.i.i, -1
  %vtable7.i30.pre183 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i20.i, label %if.then28.i, label %if.then6.i29, !prof !35

if.then28.i:                                      ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable7.i30.pre183, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  %_M_streambuf_state.i.i21.i = getelementptr inbounds nuw i8, ptr %add.ptr32.i, i64 32
  %7 = load i32, ptr %_M_streambuf_state.i.i21.i, align 8, !tbaa !21
  %or.i.i22.i = or i32 %7, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef %or.i.i22.i)
  %vtable7.i30.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i29

if.then6.i29:                                     ; preds = %if.then28.i, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i, %if.then19.i, %entry
  %vtable7.i30 = phi ptr [ %vtable7.i30.pre, %if.then28.i ], [ %vtable7.i30.pre183, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i ], [ %vtable12.i, %if.then19.i ], [ %vtable12.i, %entry ]
  %vbase.offset.ptr8.i31 = getelementptr i8, ptr %vtable7.i30, i64 -24
  %vbase.offset9.i32 = load i64, ptr %vbase.offset.ptr8.i31, align 8
  %add.ptr10.i33 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i32
  %_M_width.i17.i34 = getelementptr inbounds nuw i8, ptr %add.ptr10.i33, i64 16
  %8 = load i64, ptr %_M_width.i17.i34, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %str1, i64 noundef 256)
  %vtable12.i35 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i36 = getelementptr i8, ptr %vtable12.i35, i64 -24
  %vbase.offset14.i37 = load i64, ptr %vbase.offset.ptr13.i36, align 8
  %add.ptr15.i38 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i37
  %_M_streambuf_state.i.i18.i39 = getelementptr inbounds nuw i8, ptr %add.ptr15.i38, i64 32
  %9 = load i32, ptr %_M_streambuf_state.i.i18.i39, align 8, !tbaa !21
  %cmp.i.i40 = icmp eq i32 %9, 0
  %10 = add i64 %8, -257
  %or.cond.i44 = icmp ult i64 %10, -256
  %or.cond145 = select i1 %cmp.i.i40, i1 %or.cond.i44, i1 false
  br i1 %or.cond145, label %if.then19.i45, label %if.then6.i74

if.then19.i45:                                    ; preds = %if.then6.i29
  %_M_streambuf.i.i46 = getelementptr inbounds nuw i8, ptr %add.ptr15.i38, i64 232
  %11 = load ptr, ptr %_M_streambuf.i.i46, align 8, !tbaa !22
  %_M_in_cur.i.i.i47 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %12 = load ptr, ptr %_M_in_cur.i.i.i47, align 8, !tbaa !30
  %_M_in_end.i.i.i48 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %13 = load ptr, ptr %_M_in_end.i.i.i48, align 8, !tbaa !33
  %cmp.i19.i49 = icmp ult ptr %12, %13
  br i1 %cmp.i19.i49, label %if.then6.i74, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i50, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i50: ; preds = %if.then19.i45
  %vtable.i.i51 = load ptr, ptr %11, align 8, !tbaa !5
  %vfn.i.i52 = getelementptr inbounds nuw i8, ptr %vtable.i.i51, i64 72
  %14 = load ptr, ptr %vfn.i.i52, align 8
  %call5.i.i53 = call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(64) %11)
  %cmp.i20.i54 = icmp eq i32 %call5.i.i53, -1
  %vtable7.i75.pre185 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i20.i54, label %if.then28.i55, label %if.then6.i74, !prof !35

if.then28.i55:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i50
  %vbase.offset.ptr30.i57 = getelementptr i8, ptr %vtable7.i75.pre185, i64 -24
  %vbase.offset31.i58 = load i64, ptr %vbase.offset.ptr30.i57, align 8
  %add.ptr32.i59 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i58
  %_M_streambuf_state.i.i21.i60 = getelementptr inbounds nuw i8, ptr %add.ptr32.i59, i64 32
  %15 = load i32, ptr %_M_streambuf_state.i.i21.i60, align 8, !tbaa !21
  %or.i.i22.i61 = or i32 %15, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i59, i32 noundef %or.i.i22.i61)
  %vtable7.i75.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i74

if.then6.i74:                                     ; preds = %if.then28.i55, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i50, %if.then19.i45, %if.then6.i29
  %vtable7.i75 = phi ptr [ %vtable7.i75.pre, %if.then28.i55 ], [ %vtable7.i75.pre185, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i50 ], [ %vtable12.i35, %if.then19.i45 ], [ %vtable12.i35, %if.then6.i29 ]
  %vbase.offset.ptr8.i76 = getelementptr i8, ptr %vtable7.i75, i64 -24
  %vbase.offset9.i77 = load i64, ptr %vbase.offset.ptr8.i76, align 8
  %add.ptr10.i78 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i77
  %_M_width.i17.i79 = getelementptr inbounds nuw i8, ptr %add.ptr10.i78, i64 16
  %16 = load i64, ptr %_M_width.i17.i79, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %str2, i64 noundef 256)
  %vtable12.i80 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i81 = getelementptr i8, ptr %vtable12.i80, i64 -24
  %vbase.offset14.i82 = load i64, ptr %vbase.offset.ptr13.i81, align 8
  %add.ptr15.i83 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i82
  %_M_streambuf_state.i.i18.i84 = getelementptr inbounds nuw i8, ptr %add.ptr15.i83, i64 32
  %17 = load i32, ptr %_M_streambuf_state.i.i18.i84, align 8, !tbaa !21
  %cmp.i.i85 = icmp eq i32 %17, 0
  %18 = add i64 %16, -257
  %or.cond.i89 = icmp ult i64 %18, -256
  %or.cond146 = select i1 %cmp.i.i85, i1 %or.cond.i89, i1 false
  br i1 %or.cond146, label %if.then19.i90, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit107

if.then19.i90:                                    ; preds = %if.then6.i74
  %_M_streambuf.i.i91 = getelementptr inbounds nuw i8, ptr %add.ptr15.i83, i64 232
  %19 = load ptr, ptr %_M_streambuf.i.i91, align 8, !tbaa !22
  %_M_in_cur.i.i.i92 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %20 = load ptr, ptr %_M_in_cur.i.i.i92, align 8, !tbaa !30
  %_M_in_end.i.i.i93 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %21 = load ptr, ptr %_M_in_end.i.i.i93, align 8, !tbaa !33
  %cmp.i19.i94 = icmp ult ptr %20, %21
  br i1 %cmp.i19.i94, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit107, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i95, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i95: ; preds = %if.then19.i90
  %vtable.i.i96 = load ptr, ptr %19, align 8, !tbaa !5
  %vfn.i.i97 = getelementptr inbounds nuw i8, ptr %vtable.i.i96, i64 72
  %22 = load ptr, ptr %vfn.i.i97, align 8
  %call5.i.i98 = call noundef i32 %22(ptr noundef nonnull align 8 dereferenceable(64) %19)
  %cmp.i20.i99 = icmp eq i32 %call5.i.i98, -1
  br i1 %cmp.i20.i99, label %if.then28.i100, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit107, !prof !35

if.then28.i100:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i95
  %vtable29.i101 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i102 = getelementptr i8, ptr %vtable29.i101, i64 -24
  %vbase.offset31.i103 = load i64, ptr %vbase.offset.ptr30.i102, align 8
  %add.ptr32.i104 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i103
  %_M_streambuf_state.i.i21.i105 = getelementptr inbounds nuw i8, ptr %add.ptr32.i104, i64 32
  %23 = load i32, ptr %_M_streambuf_state.i.i21.i105, align 8, !tbaa !21
  %or.i.i22.i106 = or i32 %23, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i104, i32 noundef %or.i.i22.i106)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit107

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit107: ; preds = %if.then6.i74, %if.then19.i90, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i95, %if.then28.i100
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #5
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str1) #5
  %conv9 = trunc i64 %call8 to i32
  %cmp.not151 = icmp slt i32 %conv, %conv9
  br i1 %cmp.not151, label %if.then46, label %for.cond10.preheader.lr.ph

for.cond10.preheader.lr.ph:                       ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit107
  %cmp12.not.not148 = icmp sgt i32 %conv9, 0
  br i1 %cmp12.not.not148, label %for.cond10.preheader.us.preheader, label %for.cond10.preheader.lr.ph.split

for.cond10.preheader.us.preheader:                ; preds = %for.cond10.preheader.lr.ph
  %24 = add i64 %call6, 1
  %25 = sub i64 %24, %call8
  %wide.trip.count173 = and i64 %25, 4294967295
  %wide.trip.count = and i64 %call8, 2147483647
  br label %for.cond10.preheader.us

for.cond10.preheader.us:                          ; preds = %for.cond10.preheader.us.preheader, %for.inc42.us
  %indvars.iv170 = phi i64 [ 0, %for.cond10.preheader.us.preheader ], [ %indvars.iv.next171, %for.inc42.us ]
  br label %for.body13.us

for.body13.us:                                    ; preds = %for.cond10.preheader.us, %for.inc.us
  %indvars.iv = phi i64 [ 0, %for.cond10.preheader.us ], [ %indvars.iv.next, %for.inc.us ]
  %26 = add nuw nsw i64 %indvars.iv, %indvars.iv170
  %arrayidx.us = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %26
  %27 = load i8, ptr %arrayidx.us, align 1, !tbaa !36
  %arrayidx16.us = getelementptr inbounds nuw [256 x i8], ptr %str1, i64 0, i64 %indvars.iv
  %28 = load i8, ptr %arrayidx16.us, align 1, !tbaa !36
  %cmp18.us = icmp eq i8 %27, %28
  br i1 %cmp18.us, label %for.inc.us, label %for.end.us

for.end.us:                                       ; preds = %for.body13.us
  %29 = trunc nuw nsw i64 %indvars.iv to i32
  %cmp19.us = icmp eq i32 %29, %conv9
  br i1 %cmp19.us, label %for.cond21.preheader, label %for.inc42.us

for.inc42.us:                                     ; preds = %for.end.us
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1
  %exitcond174.not = icmp eq i64 %indvars.iv.next171, %wide.trip.count173
  br i1 %exitcond174.not, label %if.then46, label %for.cond10.preheader.us, !llvm.loop !37

for.inc.us:                                       ; preds = %for.body13.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond21.preheader, label %for.body13.us, !llvm.loop !40

for.cond10.preheader.lr.ph.split:                 ; preds = %for.cond10.preheader.lr.ph
  %cmp19 = icmp eq i32 %conv9, 0
  br i1 %cmp19, label %for.end29, label %if.then46

for.cond21.preheader:                             ; preds = %for.end.us, %for.inc.us
  %30 = trunc nuw nsw i64 %indvars.iv170 to i32
  %cmp22160.not = icmp eq i64 %indvars.iv170, 0
  br i1 %cmp22160.not, label %for.end29, label %for.body23.preheader

for.body23.preheader:                             ; preds = %for.cond21.preheader
  %wide.trip.count178 = and i64 %indvars.iv170, 4294967295
  br label %for.body23

for.body23:                                       ; preds = %for.body23.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv175 = phi i64 [ 0, %for.body23.preheader ], [ %indvars.iv.next176, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %arrayidx25 = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %indvars.iv175
  %31 = load i8, ptr %arrayidx25, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %31, ptr %__c.addr.i, align 1, !tbaa !36
  %vtable.i108 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i109 = getelementptr i8, ptr %vtable.i108, i64 -24
  %vbase.offset.i110 = load i64, ptr %vbase.offset.ptr.i109, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i110
  %32 = load i64, ptr %gep, align 8, !tbaa !8
  %cmp.not.i = icmp eq i64 %32, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body23
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body23
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %31)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1
  %exitcond179.not = icmp eq i64 %indvars.iv.next176, %wide.trip.count178
  br i1 %exitcond179.not, label %for.end29, label %for.body23, !llvm.loop !41

for.end29:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %for.cond10.preheader.lr.ph.split, %for.cond21.preheader
  %.us-phi192 = phi i32 [ 0, %for.cond21.preheader ], [ 0, %for.cond10.preheader.lr.ph.split ], [ %30, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %str2) #4
  %call1.i113 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %str2, i64 noundef %call.i.i)
  %add32 = add nuw nsw i32 %.us-phi192, %conv9
  %cmp34163 = icmp slt i32 %add32, %conv
  br i1 %cmp34163, label %for.body35.preheader, label %if.end49

for.body35.preheader:                             ; preds = %for.end29
  %33 = zext i32 %add32 to i64
  br label %for.body35

for.body35:                                       ; preds = %for.body35.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit134
  %indvars.iv180 = phi i64 [ %33, %for.body35.preheader ], [ %indvars.iv.next181, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit134 ]
  %arrayidx37 = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %indvars.iv180
  %34 = load i8, ptr %arrayidx37, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i122)
  store i8 %34, ptr %__c.addr.i122, align 1, !tbaa !36
  %vtable.i123 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i124 = getelementptr i8, ptr %vtable.i123, i64 -24
  %vbase.offset.i125 = load i64, ptr %vbase.offset.ptr.i124, align 8
  %gep162 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i125
  %35 = load i64, ptr %gep162, align 8, !tbaa !8
  %cmp.not.i128 = icmp eq i64 %35, 0
  br i1 %cmp.not.i128, label %if.end.i132, label %if.then.i129

if.then.i129:                                     ; preds = %for.body35
  %call1.i130 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i122, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit134

if.end.i132:                                      ; preds = %for.body35
  %call2.i133 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %34)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit134

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit134: ; preds = %if.then.i129, %if.end.i132
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i122)
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1
  %36 = trunc nuw i64 %indvars.iv.next181 to i32
  %cmp34 = icmp slt i32 %36, %conv
  br i1 %cmp34, label %for.body35, label %if.end49, !llvm.loop !42

if.then46:                                        ; preds = %for.inc42.us, %for.cond10.preheader.lr.ph.split, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit107
  %call.i.i135 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #4
  %call1.i136 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %str, i64 noundef %call.i.i135)
  br label %if.end49

if.end49:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit134, %for.end29, %if.then46
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %str2) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %str1) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %str) #4
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

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
