; ModuleID = '<stdin>'
source_filename = "/tmp/tmpc13fv5qe.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@substring = dso_local global [256 x i8] zeroinitializer, align 16
@S = dso_local global [256 x i8] zeroinitializer, align 16
@replacement = dso_local global [256 x i8] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i87 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8
  %gep120 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt3cin, i64 16), i64 %vbase.offset9.i
  %0 = load i64, ptr %gep120, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull @S, i64 noundef 256)
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
  br i1 %or.cond, label %if.then19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.then19.i:                                      ; preds = %while.cond
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i18.i = icmp eq i32 %call25.i, -1
  %vtable.pre122 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i18.i, label %if.then28.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, !prof !30

if.then28.i:                                      ; preds = %if.then19.i
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable.pre122, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  %vtable.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit: ; preds = %while.cond, %if.then19.i, %if.then28.i
  %vtable = phi ptr [ %vtable12.i, %while.cond ], [ %vtable.pre122, %if.then19.i ], [ %vtable.pre, %if.then28.i ]
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset
  %_M_streambuf_state.i.i.i9 = getelementptr inbounds nuw i8, ptr %add.ptr, i64 32
  %4 = load i32, ptr %_M_streambuf_state.i.i.i9, align 8, !tbaa !21
  %and.i.i.i = and i32 %4, 5
  %cmp.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.not.i, label %if.then6.i19, label %while.end

if.then6.i19:                                     ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  %_M_width.i17.i24 = getelementptr inbounds nuw i8, ptr %add.ptr, i64 16
  %5 = load i64, ptr %_M_width.i17.i24, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull @substring, i64 noundef 256)
  %vtable12.i25 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i26 = getelementptr i8, ptr %vtable12.i25, i64 -24
  %vbase.offset14.i27 = load i64, ptr %vbase.offset.ptr13.i26, align 8
  %add.ptr15.i28 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i27
  %_M_streambuf_state.i.i.i29 = getelementptr inbounds nuw i8, ptr %add.ptr15.i28, i64 32
  %6 = load i32, ptr %_M_streambuf_state.i.i.i29, align 8, !tbaa !21
  %cmp.i.i30 = icmp eq i32 %6, 0
  %7 = add i64 %5, -257
  %or.cond.i34 = icmp ult i64 %7, -256
  %or.cond117 = select i1 %cmp.i.i30, i1 %or.cond.i34, i1 false
  br i1 %or.cond117, label %if.then19.i35, label %if.then6.i54

if.then19.i35:                                    ; preds = %if.then6.i19
  %_M_streambuf.i.i36 = getelementptr inbounds nuw i8, ptr %add.ptr15.i28, i64 232
  %8 = load ptr, ptr %_M_streambuf.i.i36, align 8, !tbaa !22
  %call25.i37 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %8)
  %cmp.i18.i38 = icmp eq i32 %call25.i37, -1
  %vtable7.i55.pre124 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i18.i38, label %if.then28.i39, label %if.then6.i54, !prof !30

if.then28.i39:                                    ; preds = %if.then19.i35
  %vbase.offset.ptr30.i41 = getelementptr i8, ptr %vtable7.i55.pre124, i64 -24
  %vbase.offset31.i42 = load i64, ptr %vbase.offset.ptr30.i41, align 8
  %add.ptr32.i43 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i42
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i43, i32 noundef 2)
  %vtable7.i55.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i54

if.then6.i54:                                     ; preds = %if.then28.i39, %if.then19.i35, %if.then6.i19
  %vtable7.i55 = phi ptr [ %vtable7.i55.pre, %if.then28.i39 ], [ %vtable7.i55.pre124, %if.then19.i35 ], [ %vtable12.i25, %if.then6.i19 ]
  %vbase.offset.ptr8.i56 = getelementptr i8, ptr %vtable7.i55, i64 -24
  %vbase.offset9.i57 = load i64, ptr %vbase.offset.ptr8.i56, align 8
  %gep121 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt3cin, i64 16), i64 %vbase.offset9.i57
  %9 = load i64, ptr %gep121, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull @replacement, i64 noundef 256)
  %vtable12.i60 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i61 = getelementptr i8, ptr %vtable12.i60, i64 -24
  %vbase.offset14.i62 = load i64, ptr %vbase.offset.ptr13.i61, align 8
  %add.ptr15.i63 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i62
  %_M_streambuf_state.i.i.i64 = getelementptr inbounds nuw i8, ptr %add.ptr15.i63, i64 32
  %10 = load i32, ptr %_M_streambuf_state.i.i.i64, align 8, !tbaa !21
  %cmp.i.i65 = icmp eq i32 %10, 0
  %11 = add i64 %9, -257
  %or.cond.i69 = icmp ult i64 %11, -256
  %or.cond118 = select i1 %cmp.i.i65, i1 %or.cond.i69, i1 false
  br i1 %or.cond118, label %if.then19.i70, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit79

if.then19.i70:                                    ; preds = %if.then6.i54
  %_M_streambuf.i.i71 = getelementptr inbounds nuw i8, ptr %add.ptr15.i63, i64 232
  %12 = load ptr, ptr %_M_streambuf.i.i71, align 8, !tbaa !22
  %call25.i72 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %12)
  %cmp.i18.i73 = icmp eq i32 %call25.i72, -1
  br i1 %cmp.i18.i73, label %if.then28.i74, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit79, !prof !30

if.then28.i74:                                    ; preds = %if.then19.i70
  %vtable29.i75 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i76 = getelementptr i8, ptr %vtable29.i75, i64 -24
  %vbase.offset31.i77 = load i64, ptr %vbase.offset.ptr30.i76, align 8
  %add.ptr32.i78 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i77
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i78, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit79

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit79: ; preds = %if.then6.i54, %if.then19.i70, %if.then28.i74
  %call4 = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) @S, ptr noundef nonnull dereferenceable(1) @substring) #6
  %cmp.not = icmp eq ptr %call4, null
  br i1 %cmp.not, label %if.then19, label %for.cond

for.cond:                                         ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit79, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %q.0 = phi ptr [ %incdec.ptr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ @S, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit79 ]
  %cmp5 = icmp ult ptr %q.0, %call4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i8, ptr %q.0, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %13, ptr %__c.addr.i, align 1, !tbaa !31
  %vtable.i80 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i81 = getelementptr i8, ptr %vtable.i80, i64 -24
  %vbase.offset.i82 = load i64, ptr %vbase.offset.ptr.i81, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i82
  %14 = load i64, ptr %gep, align 8, !tbaa !8
  %cmp.not.i = icmp eq i64 %14, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %13)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %q.0, i64 1
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) @replacement) #7
  %call1.i85 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @replacement, i64 noundef %call.i.i)
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @substring) #6
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %call4, i64 %call8
  br label %for.cond10

for.cond10:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit99, %for.end
  %q.1 = phi ptr [ %add.ptr9, %for.end ], [ %incdec.ptr15, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit99 ]
  %15 = load i8, ptr %q.1, align 1, !tbaa !31
  %cmp11.not = icmp eq i8 %15, 0
  br i1 %cmp11.not, label %for.end16, label %for.body12

for.body12:                                       ; preds = %for.cond10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i87)
  store i8 %15, ptr %__c.addr.i87, align 1, !tbaa !31
  %vtable.i88 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i89 = getelementptr i8, ptr %vtable.i88, i64 -24
  %vbase.offset.i90 = load i64, ptr %vbase.offset.ptr.i89, align 8
  %gep119 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i90
  %16 = load i64, ptr %gep119, align 8, !tbaa !8
  %cmp.not.i93 = icmp eq i64 %16, 0
  br i1 %cmp.not.i93, label %if.end.i97, label %if.then.i94

if.then.i94:                                      ; preds = %for.body12
  %call1.i95 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i87, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit99

if.end.i97:                                       ; preds = %for.body12
  %call2.i98 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %15)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit99

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit99: ; preds = %if.then.i94, %if.end.i97
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i87)
  %incdec.ptr15 = getelementptr inbounds nuw i8, ptr %q.1, i64 1
  br label %for.cond10, !llvm.loop !35

for.end16:                                        ; preds = %for.cond10
  %vtable.i104 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i105 = getelementptr i8, ptr %vtable.i104, i64 -24
  %vbase.offset.i106 = load i64, ptr %vbase.offset.ptr.i105, align 8
  %add.ptr.i107 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i106
  %call.i108 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i107, i8 noundef signext 10)
  %call1.i109 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i108)
  %call.i.i110 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i109)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @S, i8 0, i64 256, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @substring, i8 0, i64 256, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @replacement, i8 0, i64 256, i1 false)
  br label %while.cond.backedge

if.then19:                                        ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit79
  %call.i.i100 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) @S) #7
  %call1.i101 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @S, i64 noundef %call.i.i100)
  %vtable.i111 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i112 = getelementptr i8, ptr %vtable.i111, i64 -24
  %vbase.offset.i113 = load i64, ptr %vbase.offset.ptr.i112, align 8
  %add.ptr.i114 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i113
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i114, i8 noundef signext 10)
  %call1.i115 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i116 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i115)
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then19, %for.end16
  br label %while.cond, !llvm.loop !36

while.end:                                        ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

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
