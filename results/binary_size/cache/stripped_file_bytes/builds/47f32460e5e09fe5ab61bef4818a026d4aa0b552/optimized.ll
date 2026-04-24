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
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i132 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %a = alloca [256 x i8], align 16
  %b = alloca [256 x i8], align 16
  %c = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %a, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %b) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %b, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %c) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %c, i8 0, i64 256, i1 false)
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  %_M_width.i17.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i17.i, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %a, i64 noundef 256)
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
  br i1 %or.cond, label %if.then19.i, label %if.then6.i31

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %_M_in_cur.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %4 = load ptr, ptr %_M_in_cur.i.i.i, align 8, !tbaa !30
  %_M_in_end.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %5 = load ptr, ptr %_M_in_end.i.i.i, align 8, !tbaa !33
  %cmp.i19.i = icmp ult ptr %4, %5
  br i1 %cmp.i19.i, label %if.then6.i31, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i: ; preds = %if.then19.i
  %vtable.i.i = load ptr, ptr %3, align 8, !tbaa !5
  %vfn.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i, i64 72
  %6 = load ptr, ptr %vfn.i.i, align 8
  %call5.i.i = call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i20.i = icmp eq i32 %call5.i.i, -1
  %vtable7.i32.pre202 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i20.i, label %if.then28.i, label %if.then6.i31, !prof !35

if.then28.i:                                      ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable7.i32.pre202, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  %_M_streambuf_state.i.i21.i = getelementptr inbounds nuw i8, ptr %add.ptr32.i, i64 32
  %7 = load i32, ptr %_M_streambuf_state.i.i21.i, align 8, !tbaa !21
  %or.i.i22.i = or i32 %7, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef %or.i.i22.i)
  %vtable7.i32.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i31

if.then6.i31:                                     ; preds = %if.then28.i, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i, %if.then19.i, %entry
  %vtable7.i32 = phi ptr [ %vtable7.i32.pre, %if.then28.i ], [ %vtable7.i32.pre202, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i ], [ %vtable12.i, %if.then19.i ], [ %vtable12.i, %entry ]
  %vbase.offset.ptr8.i33 = getelementptr i8, ptr %vtable7.i32, i64 -24
  %vbase.offset9.i34 = load i64, ptr %vbase.offset.ptr8.i33, align 8
  %add.ptr10.i35 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i34
  %_M_width.i17.i36 = getelementptr inbounds nuw i8, ptr %add.ptr10.i35, i64 16
  %8 = load i64, ptr %_M_width.i17.i36, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %b, i64 noundef 256)
  %vtable12.i37 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i38 = getelementptr i8, ptr %vtable12.i37, i64 -24
  %vbase.offset14.i39 = load i64, ptr %vbase.offset.ptr13.i38, align 8
  %add.ptr15.i40 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i39
  %_M_streambuf_state.i.i18.i41 = getelementptr inbounds nuw i8, ptr %add.ptr15.i40, i64 32
  %9 = load i32, ptr %_M_streambuf_state.i.i18.i41, align 8, !tbaa !21
  %cmp.i.i42 = icmp eq i32 %9, 0
  %10 = add i64 %8, -257
  %or.cond.i46 = icmp ult i64 %10, -256
  %or.cond146 = select i1 %cmp.i.i42, i1 %or.cond.i46, i1 false
  br i1 %or.cond146, label %if.then19.i47, label %if.then6.i76

if.then19.i47:                                    ; preds = %if.then6.i31
  %_M_streambuf.i.i48 = getelementptr inbounds nuw i8, ptr %add.ptr15.i40, i64 232
  %11 = load ptr, ptr %_M_streambuf.i.i48, align 8, !tbaa !22
  %_M_in_cur.i.i.i49 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %12 = load ptr, ptr %_M_in_cur.i.i.i49, align 8, !tbaa !30
  %_M_in_end.i.i.i50 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %13 = load ptr, ptr %_M_in_end.i.i.i50, align 8, !tbaa !33
  %cmp.i19.i51 = icmp ult ptr %12, %13
  br i1 %cmp.i19.i51, label %if.then6.i76, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i52, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i52: ; preds = %if.then19.i47
  %vtable.i.i53 = load ptr, ptr %11, align 8, !tbaa !5
  %vfn.i.i54 = getelementptr inbounds nuw i8, ptr %vtable.i.i53, i64 72
  %14 = load ptr, ptr %vfn.i.i54, align 8
  %call5.i.i55 = call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(64) %11)
  %cmp.i20.i56 = icmp eq i32 %call5.i.i55, -1
  %vtable7.i77.pre204 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i20.i56, label %if.then28.i57, label %if.then6.i76, !prof !35

if.then28.i57:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i52
  %vbase.offset.ptr30.i59 = getelementptr i8, ptr %vtable7.i77.pre204, i64 -24
  %vbase.offset31.i60 = load i64, ptr %vbase.offset.ptr30.i59, align 8
  %add.ptr32.i61 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i60
  %_M_streambuf_state.i.i21.i62 = getelementptr inbounds nuw i8, ptr %add.ptr32.i61, i64 32
  %15 = load i32, ptr %_M_streambuf_state.i.i21.i62, align 8, !tbaa !21
  %or.i.i22.i63 = or i32 %15, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i61, i32 noundef %or.i.i22.i63)
  %vtable7.i77.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i76

if.then6.i76:                                     ; preds = %if.then28.i57, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i52, %if.then19.i47, %if.then6.i31
  %vtable7.i77 = phi ptr [ %vtable7.i77.pre, %if.then28.i57 ], [ %vtable7.i77.pre204, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i52 ], [ %vtable12.i37, %if.then19.i47 ], [ %vtable12.i37, %if.then6.i31 ]
  %vbase.offset.ptr8.i78 = getelementptr i8, ptr %vtable7.i77, i64 -24
  %vbase.offset9.i79 = load i64, ptr %vbase.offset.ptr8.i78, align 8
  %add.ptr10.i80 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i79
  %_M_width.i17.i81 = getelementptr inbounds nuw i8, ptr %add.ptr10.i80, i64 16
  %16 = load i64, ptr %_M_width.i17.i81, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %c, i64 noundef 256)
  %vtable12.i82 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i83 = getelementptr i8, ptr %vtable12.i82, i64 -24
  %vbase.offset14.i84 = load i64, ptr %vbase.offset.ptr13.i83, align 8
  %add.ptr15.i85 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i84
  %_M_streambuf_state.i.i18.i86 = getelementptr inbounds nuw i8, ptr %add.ptr15.i85, i64 32
  %17 = load i32, ptr %_M_streambuf_state.i.i18.i86, align 8, !tbaa !21
  %cmp.i.i87 = icmp eq i32 %17, 0
  %18 = add i64 %16, -257
  %or.cond.i91 = icmp ult i64 %18, -256
  %or.cond147 = select i1 %cmp.i.i87, i1 %or.cond.i91, i1 false
  br i1 %or.cond147, label %if.then19.i92, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit109

if.then19.i92:                                    ; preds = %if.then6.i76
  %_M_streambuf.i.i93 = getelementptr inbounds nuw i8, ptr %add.ptr15.i85, i64 232
  %19 = load ptr, ptr %_M_streambuf.i.i93, align 8, !tbaa !22
  %_M_in_cur.i.i.i94 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %20 = load ptr, ptr %_M_in_cur.i.i.i94, align 8, !tbaa !30
  %_M_in_end.i.i.i95 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %21 = load ptr, ptr %_M_in_end.i.i.i95, align 8, !tbaa !33
  %cmp.i19.i96 = icmp ult ptr %20, %21
  br i1 %cmp.i19.i96, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit109, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i97, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i97: ; preds = %if.then19.i92
  %vtable.i.i98 = load ptr, ptr %19, align 8, !tbaa !5
  %vfn.i.i99 = getelementptr inbounds nuw i8, ptr %vtable.i.i98, i64 72
  %22 = load ptr, ptr %vfn.i.i99, align 8
  %call5.i.i100 = call noundef i32 %22(ptr noundef nonnull align 8 dereferenceable(64) %19)
  %cmp.i20.i101 = icmp eq i32 %call5.i.i100, -1
  br i1 %cmp.i20.i101, label %if.then28.i102, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit109, !prof !35

if.then28.i102:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i97
  %vtable29.i103 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i104 = getelementptr i8, ptr %vtable29.i103, i64 -24
  %vbase.offset31.i105 = load i64, ptr %vbase.offset.ptr30.i104, align 8
  %add.ptr32.i106 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i105
  %_M_streambuf_state.i.i21.i107 = getelementptr inbounds nuw i8, ptr %add.ptr32.i106, i64 32
  %23 = load i32, ptr %_M_streambuf_state.i.i21.i107, align 8, !tbaa !21
  %or.i.i22.i108 = or i32 %23, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i106, i32 noundef %or.i.i22.i108)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit109

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit109: ; preds = %if.then6.i76, %if.then19.i92, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i97, %if.then28.i102
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #5
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #6
  %call8.fr = freeze i64 %call8
  %conv9 = trunc i64 %call8.fr to i32
  %cmp.not153 = icmp sgt i32 %conv, 0
  br i1 %cmp.not153, label %for.body.lr.ph, label %if.then34

for.body.lr.ph:                                   ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit109
  %24 = load i8, ptr %b, align 16, !tbaa !36
  %cmp15149 = icmp sgt i32 %conv9, 1
  br i1 %cmp15149, label %for.body.us.preheader, label %for.body.lr.ph.split

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %25 = add nsw i32 %conv9, -1
  %wide.trip.count192 = and i64 %call6, 2147483647
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.inc30.us
  %indvars.iv187 = phi i32 [ %25, %for.body.us.preheader ], [ %indvars.iv.next188, %for.inc30.us ]
  %indvars.iv180 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next181, %for.inc30.us ]
  %arrayidx.us = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv180
  %26 = load i8, ptr %arrayidx.us, align 1, !tbaa !36
  %cmp13.us = icmp eq i8 %26, %24
  br i1 %cmp13.us, label %for.body16.us.preheader, label %for.inc30.us

for.body16.us.preheader:                          ; preds = %for.body.us
  %wide.trip.count189 = zext i32 %indvars.iv187 to i64
  br label %for.body16.us

for.body16.us:                                    ; preds = %for.body16.us.preheader, %for.inc.us
  %indvars.iv182 = phi i64 [ %indvars.iv180, %for.body16.us.preheader ], [ %indvars.iv.next183, %for.inc.us ]
  %indvars.iv178 = phi i64 [ 1, %for.body16.us.preheader ], [ %indvars.iv.next179, %for.inc.us ]
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1
  %arrayidx18.us = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv.next183
  %27 = load i8, ptr %arrayidx18.us, align 1, !tbaa !36
  %arrayidx21.us = getelementptr inbounds nuw [256 x i8], ptr %b, i64 0, i64 %indvars.iv178
  %28 = load i8, ptr %arrayidx21.us, align 1, !tbaa !36
  %cmp23.not.us = icmp eq i8 %27, %28
  br i1 %cmp23.not.us, label %for.inc.us, label %for.end.us

for.end.us:                                       ; preds = %for.body16.us
  %29 = trunc nuw nsw i64 %indvars.iv178 to i32
  %cmp26.us = icmp eq i32 %29, %conv9
  br i1 %cmp26.us, label %for.cond37.preheader, label %for.inc30.us

for.inc30.us:                                     ; preds = %for.end.us, %for.body.us
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1
  %indvars.iv.next188 = add i32 %indvars.iv187, 1
  %exitcond193.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count192
  br i1 %exitcond193.not, label %if.then34, label %for.body.us, !llvm.loop !37

for.inc.us:                                       ; preds = %for.body16.us
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1
  %exitcond190.not = icmp eq i64 %indvars.iv.next183, %wide.trip.count189
  br i1 %exitcond190.not, label %for.cond37.preheader, label %for.body16.us, !llvm.loop !40

for.body.lr.ph.split:                             ; preds = %for.body.lr.ph
  %cmp26 = icmp eq i32 %conv9, 1
  br i1 %cmp26, label %for.body.us155.preheader, label %if.then34

for.body.us155.preheader:                         ; preds = %for.body.lr.ph.split
  %wide.trip.count = and i64 %call6, 2147483647
  br label %for.body.us155

for.body.us155:                                   ; preds = %for.body.us155.preheader, %for.inc30.us160
  %indvars.iv = phi i64 [ 0, %for.body.us155.preheader ], [ %indvars.iv.next, %for.inc30.us160 ]
  %arrayidx.us158 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv
  %30 = load i8, ptr %arrayidx.us158, align 1, !tbaa !36
  %cmp13.us159 = icmp eq i8 %30, %24
  br i1 %cmp13.us159, label %for.cond37.preheader, label %for.inc30.us160

for.inc30.us160:                                  ; preds = %for.body.us155
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.then34, label %for.body.us155, !llvm.loop !37

for.cond37.preheader:                             ; preds = %for.body.us155, %for.end.us, %for.inc.us
  %.us-phi.in = phi i64 [ %indvars.iv180, %for.inc.us ], [ %indvars.iv180, %for.end.us ], [ %indvars.iv, %for.body.us155 ]
  %.us-phi = trunc i64 %.us-phi.in to i32
  %cmp38167.not = icmp eq i32 %.us-phi, 0
  br i1 %cmp38167.not, label %for.end45, label %for.body39.preheader

for.body39.preheader:                             ; preds = %for.cond37.preheader
  %wide.trip.count197 = and i64 %.us-phi.in, 4294967295
  br label %for.body39

if.then34:                                        ; preds = %for.inc30.us160, %for.inc30.us, %for.body.lr.ph.split, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit109
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %a, i64 noundef %call6)
  br label %if.end57

for.body39:                                       ; preds = %for.body39.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv194 = phi i64 [ 0, %for.body39.preheader ], [ %indvars.iv.next195, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %arrayidx41 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv194
  %31 = load i8, ptr %arrayidx41, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %31, ptr %__c.addr.i, align 1, !tbaa !36
  %vtable.i116 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i117 = getelementptr i8, ptr %vtable.i116, i64 -24
  %vbase.offset.i118 = load i64, ptr %vbase.offset.ptr.i117, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i118
  %32 = load i64, ptr %gep, align 8, !tbaa !8
  %cmp.not.i = icmp eq i64 %32, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body39
  %call1.i121 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body39
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %31)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1
  %exitcond198.not = icmp eq i64 %indvars.iv.next195, %wide.trip.count197
  br i1 %exitcond198.not, label %for.end45, label %for.body39, !llvm.loop !41

for.end45:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %for.cond37.preheader
  %call.i.i122 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %c) #5
  %call1.i123 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %c, i64 noundef %call.i.i122)
  %add = add nsw i32 %.us-phi, %conv9
  %cmp49170 = icmp slt i32 %add, %conv
  br i1 %cmp49170, label %for.body50.preheader, label %if.end57

for.body50.preheader:                             ; preds = %for.end45
  %33 = sext i32 %add to i64
  %34 = and i64 %call6, 2147483647
  br label %for.body50

for.body50:                                       ; preds = %for.body50.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit144
  %indvars.iv199 = phi i64 [ %33, %for.body50.preheader ], [ %indvars.iv.next200, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit144 ]
  %arrayidx52 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %indvars.iv199
  %35 = load i8, ptr %arrayidx52, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i132)
  store i8 %35, ptr %__c.addr.i132, align 1, !tbaa !36
  %vtable.i133 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i134 = getelementptr i8, ptr %vtable.i133, i64 -24
  %vbase.offset.i135 = load i64, ptr %vbase.offset.ptr.i134, align 8
  %gep169 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i135
  %36 = load i64, ptr %gep169, align 8, !tbaa !8
  %cmp.not.i138 = icmp eq i64 %36, 0
  br i1 %cmp.not.i138, label %if.end.i142, label %if.then.i139

if.then.i139:                                     ; preds = %for.body50
  %call1.i140 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i132, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit144

if.end.i142:                                      ; preds = %for.body50
  %call2.i143 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %35)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit144

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit144: ; preds = %if.then.i139, %if.end.i142
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i132)
  %indvars.iv.next200 = add nsw i64 %indvars.iv199, 1
  %cmp49 = icmp slt i64 %indvars.iv.next200, %34
  br i1 %cmp49, label %for.body50, label %if.end57, !llvm.loop !42

if.end57:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit144, %for.end45, %if.then34
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
