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
  %__c.addr.i108 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %a = alloca [256 x i8], align 16
  %b = alloca [256 x i8], align 16
  %c = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %a, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %b) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %b, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %c) #7
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
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !21
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = add i64 %0, -257
  %or.cond.i = icmp ult i64 %2, -256
  %or.cond = select i1 %cmp.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %if.then6.i29

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i18.i = icmp eq i32 %call25.i, -1
  %vtable7.i30.pre152 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i18.i, label %if.then28.i, label %if.then6.i29, !prof !30

if.then28.i:                                      ; preds = %if.then19.i
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable7.i30.pre152, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  %vtable7.i30.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i29

if.then6.i29:                                     ; preds = %if.then28.i, %if.then19.i, %entry
  %vtable7.i30 = phi ptr [ %vtable7.i30.pre, %if.then28.i ], [ %vtable7.i30.pre152, %if.then19.i ], [ %vtable12.i, %entry ]
  %vbase.offset.ptr8.i31 = getelementptr i8, ptr %vtable7.i30, i64 -24
  %vbase.offset9.i32 = load i64, ptr %vbase.offset.ptr8.i31, align 8
  %add.ptr10.i33 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i32
  %_M_width.i17.i34 = getelementptr inbounds nuw i8, ptr %add.ptr10.i33, i64 16
  %4 = load i64, ptr %_M_width.i17.i34, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %b, i64 noundef 256)
  %vtable12.i35 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i36 = getelementptr i8, ptr %vtable12.i35, i64 -24
  %vbase.offset14.i37 = load i64, ptr %vbase.offset.ptr13.i36, align 8
  %add.ptr15.i38 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i37
  %_M_streambuf_state.i.i.i39 = getelementptr inbounds nuw i8, ptr %add.ptr15.i38, i64 32
  %5 = load i32, ptr %_M_streambuf_state.i.i.i39, align 8, !tbaa !21
  %cmp.i.i40 = icmp eq i32 %5, 0
  %6 = add i64 %4, -257
  %or.cond.i44 = icmp ult i64 %6, -256
  %or.cond122 = select i1 %cmp.i.i40, i1 %or.cond.i44, i1 false
  br i1 %or.cond122, label %if.then19.i45, label %if.then6.i64

if.then19.i45:                                    ; preds = %if.then6.i29
  %_M_streambuf.i.i46 = getelementptr inbounds nuw i8, ptr %add.ptr15.i38, i64 232
  %7 = load ptr, ptr %_M_streambuf.i.i46, align 8, !tbaa !22
  %call25.i47 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %7)
  %cmp.i18.i48 = icmp eq i32 %call25.i47, -1
  %vtable7.i65.pre154 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i18.i48, label %if.then28.i49, label %if.then6.i64, !prof !30

if.then28.i49:                                    ; preds = %if.then19.i45
  %vbase.offset.ptr30.i51 = getelementptr i8, ptr %vtable7.i65.pre154, i64 -24
  %vbase.offset31.i52 = load i64, ptr %vbase.offset.ptr30.i51, align 8
  %add.ptr32.i53 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i52
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i53, i32 noundef 2)
  %vtable7.i65.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i64

if.then6.i64:                                     ; preds = %if.then28.i49, %if.then19.i45, %if.then6.i29
  %vtable7.i65 = phi ptr [ %vtable7.i65.pre, %if.then28.i49 ], [ %vtable7.i65.pre154, %if.then19.i45 ], [ %vtable12.i35, %if.then6.i29 ]
  %vbase.offset.ptr8.i66 = getelementptr i8, ptr %vtable7.i65, i64 -24
  %vbase.offset9.i67 = load i64, ptr %vbase.offset.ptr8.i66, align 8
  %add.ptr10.i68 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i67
  %_M_width.i17.i69 = getelementptr inbounds nuw i8, ptr %add.ptr10.i68, i64 16
  %8 = load i64, ptr %_M_width.i17.i69, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %c, i64 noundef 256)
  %vtable12.i70 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i71 = getelementptr i8, ptr %vtable12.i70, i64 -24
  %vbase.offset14.i72 = load i64, ptr %vbase.offset.ptr13.i71, align 8
  %add.ptr15.i73 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i72
  %_M_streambuf_state.i.i.i74 = getelementptr inbounds nuw i8, ptr %add.ptr15.i73, i64 32
  %9 = load i32, ptr %_M_streambuf_state.i.i.i74, align 8, !tbaa !21
  %cmp.i.i75 = icmp eq i32 %9, 0
  %10 = add i64 %8, -257
  %or.cond.i79 = icmp ult i64 %10, -256
  %or.cond123 = select i1 %cmp.i.i75, i1 %or.cond.i79, i1 false
  br i1 %or.cond123, label %if.then19.i80, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit89

if.then19.i80:                                    ; preds = %if.then6.i64
  %_M_streambuf.i.i81 = getelementptr inbounds nuw i8, ptr %add.ptr15.i73, i64 232
  %11 = load ptr, ptr %_M_streambuf.i.i81, align 8, !tbaa !22
  %call25.i82 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %11)
  %cmp.i18.i83 = icmp eq i32 %call25.i82, -1
  br i1 %cmp.i18.i83, label %if.then28.i84, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit89, !prof !30

if.then28.i84:                                    ; preds = %if.then19.i80
  %vtable29.i85 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i86 = getelementptr i8, ptr %vtable29.i85, i64 -24
  %vbase.offset31.i87 = load i64, ptr %vbase.offset.ptr30.i86, align 8
  %add.ptr32.i88 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i87
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i88, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit89

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit89: ; preds = %if.then6.i64, %if.then19.i80, %if.then28.i84
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #7
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #8
  %conv9 = trunc i64 %call8 to i32
  %12 = load i8, ptr %b, align 16
  %smax = call i32 @llvm.smax.i32(i32 %conv9, i32 1)
  %smax135 = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count136 = zext nneg i32 %smax135 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit89
  %indvars.iv146 = phi i32 [ %indvars.iv.next147, %for.inc30 ], [ %conv9, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit89 ]
  %indvars.iv141 = phi i32 [ %indvars.iv.next142, %for.inc30 ], [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit89 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc30 ], [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit89 ]
  %exitcond137.not = icmp eq i64 %indvars.iv, %wide.trip.count136
  br i1 %exitcond137.not, label %if.then34, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv
  %13 = load i8, ptr %arrayidx, align 1, !tbaa !31
  %cmp13 = icmp eq i8 %13, %12
  br i1 %cmp13, label %for.cond14, label %for.inc30

for.cond14:                                       ; preds = %for.body, %for.inc
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %for.inc ], [ 1, %for.body ]
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %for.inc ], [ %indvars.iv, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv129, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  %arrayidx18 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv.next128
  %14 = load i8, ptr %arrayidx18, align 1, !tbaa !31
  %arrayidx21 = getelementptr inbounds nuw [256 x i8], ptr %b, i64 0, i64 %indvars.iv129
  %15 = load i8, ptr %arrayidx21, align 1, !tbaa !31
  %cmp23.not = icmp eq i8 %14, %15
  br i1 %cmp23.not, label %for.inc, label %for.end.split.loop.exit

for.inc:                                          ; preds = %for.body16
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  br label %for.cond14, !llvm.loop !32

for.end.split.loop.exit:                          ; preds = %for.body16
  %16 = trunc nuw nsw i64 %indvars.iv129 to i32
  br label %for.end

for.end:                                          ; preds = %for.cond14, %for.end.split.loop.exit
  %j.0.lcssa = phi i32 [ %16, %for.end.split.loop.exit ], [ %smax, %for.cond14 ]
  %cmp26 = icmp eq i32 %j.0.lcssa, %conv9
  br i1 %cmp26, label %for.cond37.preheader, label %for.inc30

for.cond37.preheader:                             ; preds = %for.end
  %wide.trip.count144 = zext i32 %indvars.iv141 to i64
  br label %for.cond37

for.inc30:                                        ; preds = %for.body, %for.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next142 = add nuw i32 %indvars.iv141, 1
  %indvars.iv.next147 = add i32 %indvars.iv146, 1
  br label %for.cond, !llvm.loop !35

if.then34:                                        ; preds = %for.cond
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %a, i64 noundef %call6)
  br label %if.end57

for.cond37:                                       ; preds = %for.cond37.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv138 = phi i64 [ 0, %for.cond37.preheader ], [ %indvars.iv.next139, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %exitcond145.not = icmp eq i64 %indvars.iv138, %wide.trip.count144
  br i1 %exitcond145.not, label %for.end45, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx41 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv138
  %17 = load i8, ptr %arrayidx41, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %17, ptr %__c.addr.i, align 1, !tbaa !31
  %vtable.i94 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i95 = getelementptr i8, ptr %vtable.i94, i64 -24
  %vbase.offset.i96 = load i64, ptr %vbase.offset.ptr.i95, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i96
  %18 = load i64, ptr %gep, align 8, !tbaa !8
  %cmp.not.i = icmp eq i64 %18, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body39
  %call1.i99 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body39
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %17)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1
  br label %for.cond37, !llvm.loop !36

for.end45:                                        ; preds = %for.cond37
  %call.i.i100 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %c) #7
  %call1.i101 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %c, i64 noundef %call.i.i100)
  %19 = sext i32 %indvars.iv146 to i64
  %sext = shl i64 %call6, 32
  %20 = ashr exact i64 %sext, 32
  br label %for.cond48

for.cond48:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit120, %for.end45
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit120 ], [ %19, %for.end45 ]
  %cmp49 = icmp slt i64 %indvars.iv149, %20
  br i1 %cmp49, label %for.body50, label %if.end57

for.body50:                                       ; preds = %for.cond48
  %arrayidx52 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %indvars.iv149
  %21 = load i8, ptr %arrayidx52, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i108)
  store i8 %21, ptr %__c.addr.i108, align 1, !tbaa !31
  %vtable.i109 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i110 = getelementptr i8, ptr %vtable.i109, i64 -24
  %vbase.offset.i111 = load i64, ptr %vbase.offset.ptr.i110, align 8
  %gep125 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i111
  %22 = load i64, ptr %gep125, align 8, !tbaa !8
  %cmp.not.i114 = icmp eq i64 %22, 0
  br i1 %cmp.not.i114, label %if.end.i118, label %if.then.i115

if.then.i115:                                     ; preds = %for.body50
  %call1.i116 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i108, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit120

if.end.i118:                                      ; preds = %for.body50
  %call2.i119 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %21)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit120

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit120: ; preds = %if.then.i115, %if.end.i118
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i108)
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, 1
  br label %for.cond48, !llvm.loop !37

if.end57:                                         ; preds = %for.cond48, %if.then34
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %a) #7
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

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
