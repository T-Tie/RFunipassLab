; ModuleID = '<stdin>'
source_filename = "/tmp/tmphclkdo22.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %s = alloca [300 x i8], align 16
  %rep = alloca [300 x i8], align 16
  %sub = alloca [300 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 300, ptr noundef nonnull align 16 captures(none) dereferenceable(300) %s) #8
  call void @llvm.lifetime.start.p0(i64 noundef 300, ptr noundef nonnull align 16 captures(none) dereferenceable(300) %rep) #8
  call void @llvm.lifetime.start.p0(i64 noundef 300, ptr noundef nonnull align 16 captures(none) dereferenceable(300) %sub) #8
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8, !invariant.load !8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  %_M_width.i5.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i5.i, align 8, !tbaa !9
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(300) %s, i64 noundef 300)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8, !invariant.load !8
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !22
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = add i64 %0, -301
  %or.cond.i = icmp ult i64 %2, -300
  %or.cond = select i1 %cmp.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %if.then6.i9

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !23
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i6.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i6.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 %conv.i, i64 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  %vtable7.i10.pre118 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %tobool.not.i, label %if.then6.i9, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable7.i10.pre118, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8, !invariant.load !8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  %vtable7.i10.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i9

if.then6.i9:                                      ; preds = %if.then28.i, %if.then19.i, %entry
  %vtable7.i10 = phi ptr [ %vtable7.i10.pre, %if.then28.i ], [ %vtable7.i10.pre118, %if.then19.i ], [ %vtable12.i, %entry ]
  %vbase.offset.ptr8.i11 = getelementptr i8, ptr %vtable7.i10, i64 -24
  %vbase.offset9.i12 = load i64, ptr %vbase.offset.ptr8.i11, align 8, !invariant.load !8
  %add.ptr10.i13 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i12
  %_M_width.i5.i14 = getelementptr inbounds nuw i8, ptr %add.ptr10.i13, i64 16
  %4 = load i64, ptr %_M_width.i5.i14, align 8, !tbaa !9
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(300) %sub, i64 noundef 300)
  %vtable12.i15 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i16 = getelementptr i8, ptr %vtable12.i15, i64 -24
  %vbase.offset14.i17 = load i64, ptr %vbase.offset.ptr13.i16, align 8, !invariant.load !8
  %add.ptr15.i18 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i17
  %_M_streambuf_state.i.i.i19 = getelementptr inbounds nuw i8, ptr %add.ptr15.i18, i64 32
  %5 = load i32, ptr %_M_streambuf_state.i.i.i19, align 8, !tbaa !22
  %cmp.i.i20 = icmp eq i32 %5, 0
  %6 = add i64 %4, -301
  %or.cond.i24 = icmp ult i64 %6, -300
  %or.cond116 = select i1 %cmp.i.i20, i1 %or.cond.i24, i1 false
  br i1 %or.cond116, label %if.then19.i25, label %if.then6.i45

if.then19.i25:                                    ; preds = %if.then6.i9
  %_M_streambuf.i.i26 = getelementptr inbounds nuw i8, ptr %add.ptr15.i18, i64 232
  %7 = load ptr, ptr %_M_streambuf.i.i26, align 8, !tbaa !23
  %call25.i27 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %7)
  %cmp.i6.i28 = icmp eq i32 %call25.i27, -1
  %conv.i29 = zext i1 %cmp.i6.i28 to i64
  %expval.i30 = call i64 @llvm.expect.i64(i64 %conv.i29, i64 1)
  %tobool.not.i31 = icmp eq i64 %expval.i30, 0
  %vtable7.i46.pre120 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %tobool.not.i31, label %if.then6.i45, label %if.then28.i32

if.then28.i32:                                    ; preds = %if.then19.i25
  %vbase.offset.ptr30.i34 = getelementptr i8, ptr %vtable7.i46.pre120, i64 -24
  %vbase.offset31.i35 = load i64, ptr %vbase.offset.ptr30.i34, align 8, !invariant.load !8
  %add.ptr32.i36 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i35
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i36, i32 noundef 2)
  %vtable7.i46.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i45

if.then6.i45:                                     ; preds = %if.then28.i32, %if.then19.i25, %if.then6.i9
  %vtable7.i46 = phi ptr [ %vtable7.i46.pre, %if.then28.i32 ], [ %vtable7.i46.pre120, %if.then19.i25 ], [ %vtable12.i15, %if.then6.i9 ]
  %vbase.offset.ptr8.i47 = getelementptr i8, ptr %vtable7.i46, i64 -24
  %vbase.offset9.i48 = load i64, ptr %vbase.offset.ptr8.i47, align 8, !invariant.load !8
  %add.ptr10.i49 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i48
  %_M_width.i5.i50 = getelementptr inbounds nuw i8, ptr %add.ptr10.i49, i64 16
  %8 = load i64, ptr %_M_width.i5.i50, align 8, !tbaa !9
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(300) %rep, i64 noundef 300)
  %vtable12.i51 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i52 = getelementptr i8, ptr %vtable12.i51, i64 -24
  %vbase.offset14.i53 = load i64, ptr %vbase.offset.ptr13.i52, align 8, !invariant.load !8
  %add.ptr15.i54 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i53
  %_M_streambuf_state.i.i.i55 = getelementptr inbounds nuw i8, ptr %add.ptr15.i54, i64 32
  %9 = load i32, ptr %_M_streambuf_state.i.i.i55, align 8, !tbaa !22
  %cmp.i.i56 = icmp eq i32 %9, 0
  %10 = add i64 %8, -301
  %or.cond.i60 = icmp ult i64 %10, -300
  %or.cond117 = select i1 %cmp.i.i56, i1 %or.cond.i60, i1 false
  br i1 %or.cond117, label %if.then19.i61, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit73

if.then19.i61:                                    ; preds = %if.then6.i45
  %_M_streambuf.i.i62 = getelementptr inbounds nuw i8, ptr %add.ptr15.i54, i64 232
  %11 = load ptr, ptr %_M_streambuf.i.i62, align 8, !tbaa !23
  %call25.i63 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %11)
  %cmp.i6.i64 = icmp eq i32 %call25.i63, -1
  %conv.i65 = zext i1 %cmp.i6.i64 to i64
  %expval.i66 = call i64 @llvm.expect.i64(i64 %conv.i65, i64 1)
  %tobool.not.i67 = icmp eq i64 %expval.i66, 0
  br i1 %tobool.not.i67, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit73, label %if.then28.i68

if.then28.i68:                                    ; preds = %if.then19.i61
  %vtable29.i69 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i70 = getelementptr i8, ptr %vtable29.i69, i64 -24
  %vbase.offset31.i71 = load i64, ptr %vbase.offset.ptr30.i70, align 8, !invariant.load !8
  %add.ptr32.i72 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i71
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i72, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit73

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit73: ; preds = %if.then6.i45, %if.then19.i61, %if.then28.i68
  %call7 = call noundef ptr @strstr(ptr noundef nonnull align 16 dereferenceable(300) %s, ptr noundef nonnull dereferenceable(1) %sub) #9
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.end, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit73
  store i8 0, ptr %call7, align 1, !tbaa !31
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull align 16 dereferenceable(300) %s) #10
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 16 dereferenceable(300) %s, i64 noundef %call.i.i)
  %call.i.i80 = call noundef i64 @strlen(ptr noundef nonnull align 16 dereferenceable(300) %rep) #10
  %call1.i81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 16 dereferenceable(300) %rep, i64 noundef %call.i.i80)
  %call16 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %sub) #9
  %add.ptr = getelementptr inbounds nuw i8, ptr %call7, i64 %call16
  br label %if.end

if.end:                                           ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit73, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %s.sink122 = phi ptr [ %add.ptr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ %s, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit73 ]
  %call.i.i95 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %s.sink122) #10
  %call1.i96 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %s.sink122, i64 noundef %call.i.i95)
  %vtable.i110 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i111 = getelementptr i8, ptr %vtable.i110, i64 -24
  %vbase.offset.i112 = load i64, ptr %vbase.offset.ptr.i111, align 8, !invariant.load !8
  %add.ptr.i113 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i112
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i113, i8 noundef signext 10)
  %call1.i114 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i115 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i114)
  call void @llvm.lifetime.end.p0(i64 noundef 300, ptr noundef nonnull captures(none) %sub) #10
  call void @llvm.lifetime.end.p0(i64 noundef 300, ptr noundef nonnull captures(none) %rep) #10
  call void @llvm.lifetime.end.p0(i64 noundef 300, ptr noundef nonnull captures(none) %s) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind willreturn memory(read)
declare noundef ptr @strstr(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #4 align 2 {
entry:
  %_M_streambuf_state.i = getelementptr inbounds nuw i8, ptr %this, i64 32
  %0 = load i32, ptr %_M_streambuf_state.i, align 8, !tbaa !22
  %or.i = or i32 %0, %__state
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %or.i)
  ret void
}

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) #5

; Function Attrs: mustprogress uwtable
define available_externally noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %this) #4 align 2 {
entry:
  %_M_in_cur.i = getelementptr inbounds nuw i8, ptr %this, i64 16
  %0 = load ptr, ptr %_M_in_cur.i, align 8, !tbaa !32
  %_M_in_end.i = getelementptr inbounds nuw i8, ptr %this, i64 24
  %1 = load ptr, ptr %_M_in_end.i, align 8, !tbaa !35
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
declare i64 @llvm.expect.i64(i64, i64) #6

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #5

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw i8, ptr %this, i64 240
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !36
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.then.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

if.then.i:                                        ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #11
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit:    ; preds = %entry
  %call2 = tail call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %0, i8 noundef signext %__c)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #4 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !37
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !31
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !5
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !8
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #7

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind willreturn }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

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
!32 = !{!33, !34, i64 16}
!33 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !34, i64 8, !34, i64 16, !34, i64 24, !34, i64 32, !34, i64 40, !34, i64 48, !20, i64 56}
!34 = !{!"p1 omnipotent char", !16, i64 0}
!35 = !{!33, !34, i64 24}
!36 = !{!24, !28, i64 240}
!37 = !{!38, !12, i64 56}
!38 = !{!"_ZTSSt5ctypeIcE", !39, i64 0, !40, i64 16, !26, i64 24, !41, i64 32, !41, i64 40, !42, i64 48, !12, i64 56, !12, i64 57, !12, i64 313, !12, i64 569}
!39 = !{!"_ZTSNSt6locale5facetE", !18, i64 8}
!40 = !{!"p1 _ZTS15__locale_struct", !16, i64 0}
!41 = !{!"p1 int", !16, i64 0}
!42 = !{!"p1 short", !16, i64 0}
