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
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %s) #8
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %rep) #8
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %sub) #8
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  %_M_width.i1.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i1.i, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %s, i64 noundef 300)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !21
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = add i64 %0, -301
  %or.cond.i = icmp ult i64 %2, -300
  %or.cond = select i1 %cmp.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %if.then6.i10

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i2.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i2.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 %conv.i, i64 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  %vtable7.i11.pre122 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %tobool.not.i, label %if.then6.i10, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable7.i11.pre122, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  %vtable7.i11.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i10

if.then6.i10:                                     ; preds = %if.then28.i, %if.then19.i, %entry
  %vtable7.i11 = phi ptr [ %vtable7.i11.pre, %if.then28.i ], [ %vtable7.i11.pre122, %if.then19.i ], [ %vtable12.i, %entry ]
  %vbase.offset.ptr8.i12 = getelementptr i8, ptr %vtable7.i11, i64 -24
  %vbase.offset9.i13 = load i64, ptr %vbase.offset.ptr8.i12, align 8
  %add.ptr10.i14 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i13
  %_M_width.i1.i15 = getelementptr inbounds nuw i8, ptr %add.ptr10.i14, i64 16
  %4 = load i64, ptr %_M_width.i1.i15, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %sub, i64 noundef 300)
  %vtable12.i16 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i17 = getelementptr i8, ptr %vtable12.i16, i64 -24
  %vbase.offset14.i18 = load i64, ptr %vbase.offset.ptr13.i17, align 8
  %add.ptr15.i19 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i18
  %_M_streambuf_state.i.i.i20 = getelementptr inbounds nuw i8, ptr %add.ptr15.i19, i64 32
  %5 = load i32, ptr %_M_streambuf_state.i.i.i20, align 8, !tbaa !21
  %cmp.i.i21 = icmp eq i32 %5, 0
  %6 = add i64 %4, -301
  %or.cond.i25 = icmp ult i64 %6, -300
  %or.cond120 = select i1 %cmp.i.i21, i1 %or.cond.i25, i1 false
  br i1 %or.cond120, label %if.then19.i26, label %if.then6.i48

if.then19.i26:                                    ; preds = %if.then6.i10
  %_M_streambuf.i.i27 = getelementptr inbounds nuw i8, ptr %add.ptr15.i19, i64 232
  %7 = load ptr, ptr %_M_streambuf.i.i27, align 8, !tbaa !22
  %call25.i28 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %7)
  %cmp.i2.i29 = icmp eq i32 %call25.i28, -1
  %conv.i30 = zext i1 %cmp.i2.i29 to i64
  %expval.i31 = call i64 @llvm.expect.i64(i64 %conv.i30, i64 1)
  %tobool.not.i32 = icmp eq i64 %expval.i31, 0
  %vtable7.i49.pre124 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %tobool.not.i32, label %if.then6.i48, label %if.then28.i33

if.then28.i33:                                    ; preds = %if.then19.i26
  %vbase.offset.ptr30.i35 = getelementptr i8, ptr %vtable7.i49.pre124, i64 -24
  %vbase.offset31.i36 = load i64, ptr %vbase.offset.ptr30.i35, align 8
  %add.ptr32.i37 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i36
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i37, i32 noundef 2)
  %vtable7.i49.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i48

if.then6.i48:                                     ; preds = %if.then28.i33, %if.then19.i26, %if.then6.i10
  %vtable7.i49 = phi ptr [ %vtable7.i49.pre, %if.then28.i33 ], [ %vtable7.i49.pre124, %if.then19.i26 ], [ %vtable12.i16, %if.then6.i10 ]
  %vbase.offset.ptr8.i50 = getelementptr i8, ptr %vtable7.i49, i64 -24
  %vbase.offset9.i51 = load i64, ptr %vbase.offset.ptr8.i50, align 8
  %add.ptr10.i52 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i51
  %_M_width.i1.i53 = getelementptr inbounds nuw i8, ptr %add.ptr10.i52, i64 16
  %8 = load i64, ptr %_M_width.i1.i53, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %rep, i64 noundef 300)
  %vtable12.i54 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i55 = getelementptr i8, ptr %vtable12.i54, i64 -24
  %vbase.offset14.i56 = load i64, ptr %vbase.offset.ptr13.i55, align 8
  %add.ptr15.i57 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i56
  %_M_streambuf_state.i.i.i58 = getelementptr inbounds nuw i8, ptr %add.ptr15.i57, i64 32
  %9 = load i32, ptr %_M_streambuf_state.i.i.i58, align 8, !tbaa !21
  %cmp.i.i59 = icmp eq i32 %9, 0
  %10 = add i64 %8, -301
  %or.cond.i63 = icmp ult i64 %10, -300
  %or.cond121 = select i1 %cmp.i.i59, i1 %or.cond.i63, i1 false
  br i1 %or.cond121, label %if.then19.i64, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit76

if.then19.i64:                                    ; preds = %if.then6.i48
  %_M_streambuf.i.i65 = getelementptr inbounds nuw i8, ptr %add.ptr15.i57, i64 232
  %11 = load ptr, ptr %_M_streambuf.i.i65, align 8, !tbaa !22
  %call25.i66 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %11)
  %cmp.i2.i67 = icmp eq i32 %call25.i66, -1
  %conv.i68 = zext i1 %cmp.i2.i67 to i64
  %expval.i69 = call i64 @llvm.expect.i64(i64 %conv.i68, i64 1)
  %tobool.not.i70 = icmp eq i64 %expval.i69, 0
  br i1 %tobool.not.i70, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit76, label %if.then28.i71

if.then28.i71:                                    ; preds = %if.then19.i64
  %vtable29.i72 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i73 = getelementptr i8, ptr %vtable29.i72, i64 -24
  %vbase.offset31.i74 = load i64, ptr %vbase.offset.ptr30.i73, align 8
  %add.ptr32.i75 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i74
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i75, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit76

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit76: ; preds = %if.then6.i48, %if.then19.i64, %if.then28.i71
  %call7 = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %s, ptr noundef nonnull dereferenceable(1) %sub) #9
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.end, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit76
  store i8 0, ptr %call7, align 1, !tbaa !30
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #8
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %s, i64 noundef %call.i.i)
  %call.i.i83 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %rep) #8
  %call1.i84 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %rep, i64 noundef %call.i.i83)
  %call16 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %sub) #9
  %add.ptr = getelementptr inbounds nuw i8, ptr %call7, i64 %call16
  br label %if.end

if.end:                                           ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit76, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %s.sink126 = phi ptr [ %add.ptr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ %s, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit76 ]
  %call.i.i98 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %s.sink126) #8
  %call1.i99 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %s.sink126, i64 noundef %call.i.i98)
  %vtable.i113 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i114 = getelementptr i8, ptr %vtable.i113, i64 -24
  %vbase.offset.i115 = load i64, ptr %vbase.offset.ptr.i114, align 8
  %add.ptr.i116 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i115
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i116, i8 noundef signext 10)
  %call1.i117 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i118 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i117)
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %sub) #8
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %rep) #8
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %s) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #4 align 2 {
entry:
  %_M_streambuf_state.i = getelementptr inbounds nuw i8, ptr %this, i64 32
  %0 = load i32, ptr %_M_streambuf_state.i, align 8, !tbaa !21
  %or.i = or i32 %0, %__state
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %or.i)
  ret void
}

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) #5

; Function Attrs: mustprogress uwtable
define available_externally noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %this) #4 align 2 {
entry:
  %_M_in_cur.i = getelementptr inbounds nuw i8, ptr %this, i64 16
  %0 = load ptr, ptr %_M_in_cur.i, align 8, !tbaa !31
  %_M_in_end.i = getelementptr inbounds nuw i8, ptr %this, i64 24
  %1 = load ptr, ptr %_M_in_end.i, align 8, !tbaa !34
  %cmp = icmp ult ptr %0, %1
  %conv = zext i1 %cmp to i64
  %expval = tail call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool.not = icmp eq i64 %expval, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %0, align 1, !tbaa !30
  %conv.i = zext i8 %2 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  %vtable = load ptr, ptr %this, align 8, !tbaa !5
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 72
  %3 = load ptr, ptr %vfn, align 8
  %call5 = tail call noundef i32 %3(ptr noundef nonnull align 8 dereferenceable(64) %this)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %__ret.0 = phi i32 [ %conv.i, %if.then ], [ %call5, %if.else ]
  ret i32 %__ret.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #5

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw i8, ptr %this, i64 240
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !35
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.then.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

if.then.i:                                        ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #10
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
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !36
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !30
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !5
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8
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
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { noreturn }

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
!30 = !{!11, !11, i64 0}
!31 = !{!32, !33, i64 16}
!32 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !33, i64 8, !33, i64 16, !33, i64 24, !33, i64 32, !33, i64 40, !33, i64 48, !19, i64 56}
!33 = !{!"p1 omnipotent char", !15, i64 0}
!34 = !{!32, !33, i64 24}
!35 = !{!23, !27, i64 240}
!36 = !{!37, !11, i64 56}
!37 = !{!"_ZTSSt5ctypeIcE", !38, i64 0, !39, i64 16, !25, i64 24, !40, i64 32, !40, i64 40, !41, i64 48, !11, i64 56, !11, i64 57, !11, i64 313, !11, i64 569}
!38 = !{!"_ZTSNSt6locale5facetE", !17, i64 8}
!39 = !{!"p1 _ZTS15__locale_struct", !15, i64 0}
!40 = !{!"p1 int", !15, i64 0}
!41 = !{!"p1 short", !15, i64 0}
