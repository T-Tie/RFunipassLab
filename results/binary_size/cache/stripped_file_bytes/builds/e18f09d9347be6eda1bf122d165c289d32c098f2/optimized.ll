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
  %__c.addr.i100 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %str = alloca [256 x i8], align 16
  %str1 = alloca [256 x i8], align 16
  %str2 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %str) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %str1) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %str2) #6
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
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !21
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = add i64 %0, -257
  %or.cond.i = icmp ult i64 %2, -256
  %or.cond = select i1 %cmp.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %if.then6.i27

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i18.i = icmp eq i32 %call25.i, -1
  %vtable7.i28.pre147 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i18.i, label %if.then28.i, label %if.then6.i27, !prof !30

if.then28.i:                                      ; preds = %if.then19.i
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable7.i28.pre147, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  %vtable7.i28.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i27

if.then6.i27:                                     ; preds = %if.then28.i, %if.then19.i, %entry
  %vtable7.i28 = phi ptr [ %vtable7.i28.pre, %if.then28.i ], [ %vtable7.i28.pre147, %if.then19.i ], [ %vtable12.i, %entry ]
  %vbase.offset.ptr8.i29 = getelementptr i8, ptr %vtable7.i28, i64 -24
  %vbase.offset9.i30 = load i64, ptr %vbase.offset.ptr8.i29, align 8
  %add.ptr10.i31 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i30
  %_M_width.i17.i32 = getelementptr inbounds nuw i8, ptr %add.ptr10.i31, i64 16
  %4 = load i64, ptr %_M_width.i17.i32, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %str1, i64 noundef 256)
  %vtable12.i33 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i34 = getelementptr i8, ptr %vtable12.i33, i64 -24
  %vbase.offset14.i35 = load i64, ptr %vbase.offset.ptr13.i34, align 8
  %add.ptr15.i36 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i35
  %_M_streambuf_state.i.i.i37 = getelementptr inbounds nuw i8, ptr %add.ptr15.i36, i64 32
  %5 = load i32, ptr %_M_streambuf_state.i.i.i37, align 8, !tbaa !21
  %cmp.i.i38 = icmp eq i32 %5, 0
  %6 = add i64 %4, -257
  %or.cond.i42 = icmp ult i64 %6, -256
  %or.cond121 = select i1 %cmp.i.i38, i1 %or.cond.i42, i1 false
  br i1 %or.cond121, label %if.then19.i43, label %if.then6.i62

if.then19.i43:                                    ; preds = %if.then6.i27
  %_M_streambuf.i.i44 = getelementptr inbounds nuw i8, ptr %add.ptr15.i36, i64 232
  %7 = load ptr, ptr %_M_streambuf.i.i44, align 8, !tbaa !22
  %call25.i45 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %7)
  %cmp.i18.i46 = icmp eq i32 %call25.i45, -1
  %vtable7.i63.pre149 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i18.i46, label %if.then28.i47, label %if.then6.i62, !prof !30

if.then28.i47:                                    ; preds = %if.then19.i43
  %vbase.offset.ptr30.i49 = getelementptr i8, ptr %vtable7.i63.pre149, i64 -24
  %vbase.offset31.i50 = load i64, ptr %vbase.offset.ptr30.i49, align 8
  %add.ptr32.i51 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i50
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i51, i32 noundef 2)
  %vtable7.i63.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i62

if.then6.i62:                                     ; preds = %if.then28.i47, %if.then19.i43, %if.then6.i27
  %vtable7.i63 = phi ptr [ %vtable7.i63.pre, %if.then28.i47 ], [ %vtable7.i63.pre149, %if.then19.i43 ], [ %vtable12.i33, %if.then6.i27 ]
  %vbase.offset.ptr8.i64 = getelementptr i8, ptr %vtable7.i63, i64 -24
  %vbase.offset9.i65 = load i64, ptr %vbase.offset.ptr8.i64, align 8
  %add.ptr10.i66 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i65
  %_M_width.i17.i67 = getelementptr inbounds nuw i8, ptr %add.ptr10.i66, i64 16
  %8 = load i64, ptr %_M_width.i17.i67, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %str2, i64 noundef 256)
  %vtable12.i68 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i69 = getelementptr i8, ptr %vtable12.i68, i64 -24
  %vbase.offset14.i70 = load i64, ptr %vbase.offset.ptr13.i69, align 8
  %add.ptr15.i71 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i70
  %_M_streambuf_state.i.i.i72 = getelementptr inbounds nuw i8, ptr %add.ptr15.i71, i64 32
  %9 = load i32, ptr %_M_streambuf_state.i.i.i72, align 8, !tbaa !21
  %cmp.i.i73 = icmp eq i32 %9, 0
  %10 = add i64 %8, -257
  %or.cond.i77 = icmp ult i64 %10, -256
  %or.cond122 = select i1 %cmp.i.i73, i1 %or.cond.i77, i1 false
  br i1 %or.cond122, label %if.then19.i78, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit87

if.then19.i78:                                    ; preds = %if.then6.i62
  %_M_streambuf.i.i79 = getelementptr inbounds nuw i8, ptr %add.ptr15.i71, i64 232
  %11 = load ptr, ptr %_M_streambuf.i.i79, align 8, !tbaa !22
  %call25.i80 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %11)
  %cmp.i18.i81 = icmp eq i32 %call25.i80, -1
  br i1 %cmp.i18.i81, label %if.then28.i82, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit87, !prof !30

if.then28.i82:                                    ; preds = %if.then19.i78
  %vtable29.i83 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i84 = getelementptr i8, ptr %vtable29.i83, i64 -24
  %vbase.offset31.i85 = load i64, ptr %vbase.offset.ptr30.i84, align 8
  %add.ptr32.i86 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i85
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i86, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit87

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit87: ; preds = %if.then6.i62, %if.then19.i78, %if.then28.i82
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #7
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str1) #7
  %conv9 = trunc i64 %call8 to i32
  %sub = sub nsw i32 %conv, %conv9
  %smax = call i32 @llvm.smax.i32(i32 %conv9, i32 0)
  %smax131 = call i32 @llvm.smax.i32(i32 %sub, i32 -1)
  %12 = add i32 %smax131, 1
  %wide.trip.count132 = zext i32 %12 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit87
  %indvars.iv137 = phi i32 [ %indvars.iv.next138, %for.inc42 ], [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit87 ]
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %for.inc42 ], [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit87 ]
  %exitcond133 = icmp eq i64 %indvars.iv128, %wide.trip.count132
  br i1 %exitcond133, label %if.then46, label %for.cond10

for.cond10:                                       ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body13

for.body13:                                       ; preds = %for.cond10
  %13 = add nuw nsw i64 %indvars.iv, %indvars.iv128
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %13
  %14 = load i8, ptr %arrayidx, align 1, !tbaa !31
  %arrayidx16 = getelementptr inbounds nuw [256 x i8], ptr %str1, i64 0, i64 %indvars.iv
  %15 = load i8, ptr %arrayidx16, align 1, !tbaa !31
  %cmp18 = icmp eq i8 %14, %15
  br i1 %cmp18, label %for.inc, label %for.end.split.loop.exit

for.inc:                                          ; preds = %for.body13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond10, !llvm.loop !32

for.end.split.loop.exit:                          ; preds = %for.body13
  %16 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.cond10, %for.end.split.loop.exit
  %j.0.lcssa = phi i32 [ %16, %for.end.split.loop.exit ], [ %smax, %for.cond10 ]
  %cmp19 = icmp eq i32 %j.0.lcssa, %conv9
  br i1 %cmp19, label %for.cond21.preheader, label %for.inc42

for.cond21.preheader:                             ; preds = %for.end
  %wide.trip.count140 = zext i32 %indvars.iv137 to i64
  br label %for.cond21

for.cond21:                                       ; preds = %for.cond21.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv134 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next135, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %exitcond141.not = icmp eq i64 %indvars.iv134, %wide.trip.count140
  br i1 %exitcond141.not, label %for.end29, label %for.body23

for.body23:                                       ; preds = %for.cond21
  %arrayidx25 = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %indvars.iv134
  %17 = load i8, ptr %arrayidx25, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %17, ptr %__c.addr.i, align 1, !tbaa !31
  %vtable.i88 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i89 = getelementptr i8, ptr %vtable.i88, i64 -24
  %vbase.offset.i90 = load i64, ptr %vbase.offset.ptr.i89, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i90
  %18 = load i64, ptr %gep, align 8, !tbaa !8
  %cmp.not.i = icmp eq i64 %18, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body23
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body23
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %17)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  br label %for.cond21, !llvm.loop !35

for.end29:                                        ; preds = %for.cond21
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %str2) #6
  %call1.i93 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %str2, i64 noundef %call.i.i)
  %19 = add i32 %indvars.iv137, %conv9
  %20 = zext i32 %19 to i64
  br label %for.cond33

for.cond33:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit112, %for.end29
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit112 ], [ %20, %for.end29 ]
  %21 = trunc nuw i64 %indvars.iv144 to i32
  %cmp34 = icmp slt i32 %21, %conv
  br i1 %cmp34, label %for.body35, label %if.end49

for.body35:                                       ; preds = %for.cond33
  %arrayidx37 = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %indvars.iv144
  %22 = load i8, ptr %arrayidx37, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i100)
  store i8 %22, ptr %__c.addr.i100, align 1, !tbaa !31
  %vtable.i101 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i102 = getelementptr i8, ptr %vtable.i101, i64 -24
  %vbase.offset.i103 = load i64, ptr %vbase.offset.ptr.i102, align 8
  %gep124 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i103
  %23 = load i64, ptr %gep124, align 8, !tbaa !8
  %cmp.not.i106 = icmp eq i64 %23, 0
  br i1 %cmp.not.i106, label %if.end.i110, label %if.then.i107

if.then.i107:                                     ; preds = %for.body35
  %call1.i108 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i100, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit112

if.end.i110:                                      ; preds = %for.body35
  %call2.i111 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %22)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit112

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit112: ; preds = %if.then.i107, %if.end.i110
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i100)
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1
  br label %for.cond33, !llvm.loop !36

for.inc42:                                        ; preds = %for.end
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1
  %indvars.iv.next138 = add nuw i32 %indvars.iv137, 1
  br label %for.cond, !llvm.loop !37

if.then46:                                        ; preds = %for.cond
  %call.i.i113 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #6
  %call1.i114 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %str, i64 noundef %call.i.i113)
  br label %if.end49

if.end49:                                         ; preds = %for.cond33, %if.then46
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %str2) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %str1) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %str) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
