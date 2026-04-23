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
  %__c.addr.i96 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %str = alloca [257 x i8], align 16
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
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !21
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = add i64 %0, -258
  %or.cond.i = icmp ult i64 %2, -257
  %or.cond = select i1 %cmp.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %if.then6.i17

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i18.i = icmp eq i32 %call25.i, -1
  %vtable7.i18.pre125 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i18.i, label %if.then28.i, label %if.then6.i17, !prof !30

if.then28.i:                                      ; preds = %if.then19.i
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable7.i18.pre125, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  %vtable7.i18.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i17

if.then6.i17:                                     ; preds = %if.then28.i, %if.then19.i, %entry
  %vtable7.i18 = phi ptr [ %vtable7.i18.pre, %if.then28.i ], [ %vtable7.i18.pre125, %if.then19.i ], [ %vtable12.i, %entry ]
  %vbase.offset.ptr8.i19 = getelementptr i8, ptr %vtable7.i18, i64 -24
  %vbase.offset9.i20 = load i64, ptr %vbase.offset.ptr8.i19, align 8
  %add.ptr10.i21 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i20
  %_M_width.i17.i22 = getelementptr inbounds nuw i8, ptr %add.ptr10.i21, i64 16
  %4 = load i64, ptr %_M_width.i17.i22, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %substr, i64 noundef 257)
  %vtable12.i23 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i24 = getelementptr i8, ptr %vtable12.i23, i64 -24
  %vbase.offset14.i25 = load i64, ptr %vbase.offset.ptr13.i24, align 8
  %add.ptr15.i26 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i25
  %_M_streambuf_state.i.i.i27 = getelementptr inbounds nuw i8, ptr %add.ptr15.i26, i64 32
  %5 = load i32, ptr %_M_streambuf_state.i.i.i27, align 8, !tbaa !21
  %cmp.i.i28 = icmp eq i32 %5, 0
  %6 = add i64 %4, -258
  %or.cond.i32 = icmp ult i64 %6, -257
  %or.cond116 = select i1 %cmp.i.i28, i1 %or.cond.i32, i1 false
  br i1 %or.cond116, label %if.then19.i33, label %if.then6.i52

if.then19.i33:                                    ; preds = %if.then6.i17
  %_M_streambuf.i.i34 = getelementptr inbounds nuw i8, ptr %add.ptr15.i26, i64 232
  %7 = load ptr, ptr %_M_streambuf.i.i34, align 8, !tbaa !22
  %call25.i35 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %7)
  %cmp.i18.i36 = icmp eq i32 %call25.i35, -1
  %vtable7.i53.pre127 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i18.i36, label %if.then28.i37, label %if.then6.i52, !prof !30

if.then28.i37:                                    ; preds = %if.then19.i33
  %vbase.offset.ptr30.i39 = getelementptr i8, ptr %vtable7.i53.pre127, i64 -24
  %vbase.offset31.i40 = load i64, ptr %vbase.offset.ptr30.i39, align 8
  %add.ptr32.i41 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i40
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i41, i32 noundef 2)
  %vtable7.i53.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i52

if.then6.i52:                                     ; preds = %if.then28.i37, %if.then19.i33, %if.then6.i17
  %vtable7.i53 = phi ptr [ %vtable7.i53.pre, %if.then28.i37 ], [ %vtable7.i53.pre127, %if.then19.i33 ], [ %vtable12.i23, %if.then6.i17 ]
  %vbase.offset.ptr8.i54 = getelementptr i8, ptr %vtable7.i53, i64 -24
  %vbase.offset9.i55 = load i64, ptr %vbase.offset.ptr8.i54, align 8
  %add.ptr10.i56 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i55
  %_M_width.i17.i57 = getelementptr inbounds nuw i8, ptr %add.ptr10.i56, i64 16
  %8 = load i64, ptr %_M_width.i17.i57, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %replace, i64 noundef 257)
  %vtable12.i58 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i59 = getelementptr i8, ptr %vtable12.i58, i64 -24
  %vbase.offset14.i60 = load i64, ptr %vbase.offset.ptr13.i59, align 8
  %add.ptr15.i61 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i60
  %_M_streambuf_state.i.i.i62 = getelementptr inbounds nuw i8, ptr %add.ptr15.i61, i64 32
  %9 = load i32, ptr %_M_streambuf_state.i.i.i62, align 8, !tbaa !21
  %cmp.i.i63 = icmp eq i32 %9, 0
  %10 = add i64 %8, -258
  %or.cond.i67 = icmp ult i64 %10, -257
  %or.cond117 = select i1 %cmp.i.i63, i1 %or.cond.i67, i1 false
  br i1 %or.cond117, label %if.then19.i68, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit77

if.then19.i68:                                    ; preds = %if.then6.i52
  %_M_streambuf.i.i69 = getelementptr inbounds nuw i8, ptr %add.ptr15.i61, i64 232
  %11 = load ptr, ptr %_M_streambuf.i.i69, align 8, !tbaa !22
  %call25.i70 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %11)
  %cmp.i18.i71 = icmp eq i32 %call25.i70, -1
  br i1 %cmp.i18.i71, label %if.then28.i72, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit77, !prof !30

if.then28.i72:                                    ; preds = %if.then19.i68
  %vtable29.i73 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i74 = getelementptr i8, ptr %vtable29.i73, i64 -24
  %vbase.offset31.i75 = load i64, ptr %vbase.offset.ptr30.i74, align 8
  %add.ptr32.i76 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i75
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i76, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit77

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit77: ; preds = %if.then6.i52, %if.then19.i68, %if.then28.i72
  %call7 = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %str, ptr noundef nonnull dereferenceable(1) %substr) #7
  %cmp = icmp eq ptr %call7, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit77
  %call9 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %substr) #7
  %conv = trunc i64 %call9 to i32
  br label %for.cond

if.then:                                          ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit77
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #6
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %str, i64 noundef %call.i.i)
  %vtable.i109 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i110 = getelementptr i8, ptr %vtable.i109, i64 -24
  %vbase.offset.i111 = load i64, ptr %vbase.offset.ptr.i110, align 8
  %add.ptr.i112 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i111
  %call.i113 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i112, i8 noundef signext 10)
  %call1.i114 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i113)
  %call.i.i115 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i114)
  br label %if.end

for.cond:                                         ; preds = %for.cond.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv120 = phi i32 [ %conv, %for.cond.preheader ], [ %indvars.iv.next121, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %add.ptr = getelementptr inbounds nuw i8, ptr %str, i64 %indvars.iv
  %cmp14 = icmp ult ptr %add.ptr, %call7
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8, ptr %add.ptr, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %12, ptr %__c.addr.i, align 1, !tbaa !31
  %vtable.i82 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i83 = getelementptr i8, ptr %vtable.i82, i64 -24
  %vbase.offset.i84 = load i64, ptr %vbase.offset.ptr.i83, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i84
  %13 = load i64, ptr %gep, align 8, !tbaa !8
  %cmp.not.i = icmp eq i64 %13, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %call1.i87 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %12)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next121 = add i32 %indvars.iv120, 1
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  %call.i.i88 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %replace) #6
  %call1.i89 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %replace, i64 noundef %call.i.i88)
  %14 = sext i32 %indvars.iv120 to i64
  br label %for.cond18

for.cond18:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit108, %for.end
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit108 ], [ %14, %for.end ]
  %call21 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #7
  %cmp22 = icmp ugt i64 %call21, %indvars.iv122
  br i1 %cmp22, label %for.body23, label %if.end

for.body23:                                       ; preds = %for.cond18
  %arrayidx25 = getelementptr inbounds [257 x i8], ptr %str, i64 0, i64 %indvars.iv122
  %15 = load i8, ptr %arrayidx25, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i96)
  store i8 %15, ptr %__c.addr.i96, align 1, !tbaa !31
  %vtable.i97 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i98 = getelementptr i8, ptr %vtable.i97, i64 -24
  %vbase.offset.i99 = load i64, ptr %vbase.offset.ptr.i98, align 8
  %gep118 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i99
  %16 = load i64, ptr %gep118, align 8, !tbaa !8
  %cmp.not.i102 = icmp eq i64 %16, 0
  br i1 %cmp.not.i102, label %if.end.i106, label %if.then.i103

if.then.i103:                                     ; preds = %for.body23
  %call1.i104 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i96, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit108

if.end.i106:                                      ; preds = %for.body23
  %call2.i107 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %15)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit108

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit108: ; preds = %if.then.i103, %if.end.i106
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i96)
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1
  br label %for.cond18, !llvm.loop !35

if.end:                                           ; preds = %for.cond18, %if.then
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
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
