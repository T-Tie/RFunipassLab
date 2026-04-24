; ModuleID = '<stdin>'
source_filename = "/tmp/tmp93qlsw6i.cpp"
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
  %n = alloca i32, align 4
  %a = alloca [80 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %a) #5
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  %_M_width.i17.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i17.i, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %a, i64 noundef 80)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %_M_streambuf_state.i.i18.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i18.i, align 8, !tbaa !21
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = add i64 %0, -81
  %or.cond.i = icmp ult i64 %2, -80
  %or.cond = select i1 %cmp.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %_M_in_cur.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %4 = load ptr, ptr %_M_in_cur.i.i.i, align 8, !tbaa !30
  %_M_in_end.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %5 = load ptr, ptr %_M_in_end.i.i.i, align 8, !tbaa !33
  %cmp.i19.i = icmp ult ptr %4, %5
  br i1 %cmp.i19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i: ; preds = %if.then19.i
  %vtable.i.i = load ptr, ptr %3, align 8, !tbaa !5
  %vfn.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i, i64 72
  %6 = load ptr, ptr %vfn.i.i, align 8
  %call5.i.i = call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i20.i = icmp eq i32 %call5.i.i, -1
  br i1 %cmp.i20.i, label %if.then28.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, !prof !35

if.then28.i:                                      ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i
  %vtable29.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable29.i, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  %_M_streambuf_state.i.i21.i = getelementptr inbounds nuw i8, ptr %add.ptr32.i, i64 32
  %7 = load i32, ptr %_M_streambuf_state.i.i21.i, align 8, !tbaa !21
  %or.i.i22.i = or i32 %7, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef %or.i.i22.i)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit: ; preds = %entry, %if.then19.i, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i, %if.then28.i
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #5
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %a, i64 noundef %call3)
  %8 = load i32, ptr %n, align 4, !tbaa !36
  %cmp89 = icmp sgt i32 %8, 1
  br i1 %cmp89, label %if.then6.i20, label %for.end

if.then6.i20:                                     ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, %for.inc
  %t.0.in91 = phi i64 [ %t.1.in, %for.inc ], [ %call3, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit ]
  %i.090 = phi i32 [ %inc, %for.inc ], [ 1, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit ]
  %vtable7.i21 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i22 = getelementptr i8, ptr %vtable7.i21, i64 -24
  %vbase.offset9.i23 = load i64, ptr %vbase.offset.ptr8.i22, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt3cin, i64 16), i64 %vbase.offset9.i23
  %9 = load i64, ptr %gep, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %a, i64 noundef 80)
  %vtable12.i26 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i27 = getelementptr i8, ptr %vtable12.i26, i64 -24
  %vbase.offset14.i28 = load i64, ptr %vbase.offset.ptr13.i27, align 8
  %add.ptr15.i29 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i28
  %_M_streambuf_state.i.i18.i30 = getelementptr inbounds nuw i8, ptr %add.ptr15.i29, i64 32
  %10 = load i32, ptr %_M_streambuf_state.i.i18.i30, align 8, !tbaa !21
  %cmp.i.i31 = icmp eq i32 %10, 0
  %11 = add i64 %9, -81
  %or.cond.i35 = icmp ult i64 %11, -80
  %or.cond86 = select i1 %cmp.i.i31, i1 %or.cond.i35, i1 false
  br i1 %or.cond86, label %if.then19.i36, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit53

if.then19.i36:                                    ; preds = %if.then6.i20
  %_M_streambuf.i.i37 = getelementptr inbounds nuw i8, ptr %add.ptr15.i29, i64 232
  %12 = load ptr, ptr %_M_streambuf.i.i37, align 8, !tbaa !22
  %_M_in_cur.i.i.i38 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %13 = load ptr, ptr %_M_in_cur.i.i.i38, align 8, !tbaa !30
  %_M_in_end.i.i.i39 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %14 = load ptr, ptr %_M_in_end.i.i.i39, align 8, !tbaa !33
  %cmp.i19.i40 = icmp ult ptr %13, %14
  br i1 %cmp.i19.i40, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit53, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i41, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i41: ; preds = %if.then19.i36
  %vtable.i.i42 = load ptr, ptr %12, align 8, !tbaa !5
  %vfn.i.i43 = getelementptr inbounds nuw i8, ptr %vtable.i.i42, i64 72
  %15 = load ptr, ptr %vfn.i.i43, align 8
  %call5.i.i44 = call noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(64) %12)
  %cmp.i20.i45 = icmp eq i32 %call5.i.i44, -1
  br i1 %cmp.i20.i45, label %if.then28.i46, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit53, !prof !35

if.then28.i46:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i41
  %vtable29.i47 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i48 = getelementptr i8, ptr %vtable29.i47, i64 -24
  %vbase.offset31.i49 = load i64, ptr %vbase.offset.ptr30.i48, align 8
  %add.ptr32.i50 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i49
  %_M_streambuf_state.i.i21.i51 = getelementptr inbounds nuw i8, ptr %add.ptr32.i50, i64 32
  %16 = load i32, ptr %_M_streambuf_state.i.i21.i51, align 8, !tbaa !21
  %or.i.i22.i52 = or i32 %16, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i50, i32 noundef %or.i.i22.i52)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit53

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit53: ; preds = %if.then6.i20, %if.then19.i36, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i41, %if.then28.i46
  %t.0 = shl i64 %t.0.in91, 32
  %sext = add i64 %t.0, 4294967296
  %conv8 = ashr exact i64 %sext, 32
  %call10 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #6
  %add11 = add i64 %call10, %conv8
  %cmp12 = icmp ult i64 %add11, 81
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit53
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 32, ptr %__c.addr.i, align 1, !tbaa !37
  %vtable.i54 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i55 = getelementptr i8, ptr %vtable.i54, i64 -24
  %vbase.offset.i56 = load i64, ptr %vbase.offset.ptr.i55, align 8
  %gep88 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i56
  %17 = load i64, ptr %gep88, align 8, !tbaa !8
  %cmp.not.i = icmp eq i64 %17, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %call1.i59 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.then
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi ptr [ %call1.i59, %if.then.i ], [ @_ZSt4cout, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %call.i.i60 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #5
  %call1.i61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i, ptr noundef nonnull %a, i64 noundef %call.i.i60)
  %call18 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #6
  %add19 = add i64 %call18, %conv8
  br label %for.inc

if.else:                                          ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit53
  %vtable.i80 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i81 = getelementptr i8, ptr %vtable.i80, i64 -24
  %vbase.offset.i82 = load i64, ptr %vbase.offset.ptr.i81, align 8
  %gep87 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i82
  %18 = load ptr, ptr %gep87, align 8, !tbaa !38
  %tobool.not.i.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.else
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 56
  %19 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !39
  %tobool.not.i1.i.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 67
  %20 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !37
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %18)
  %vtable.i.i.i = load ptr, ptr %18, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %21 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %21(ptr noundef nonnull align 8 dereferenceable(570) %18, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %20, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i84 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i85 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i84)
  %call.i.i70 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #5
  %call1.i71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i85, ptr noundef nonnull %a, i64 noundef %call.i.i70)
  %call26 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #6
  br label %for.inc

for.inc:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %t.1.in = phi i64 [ %add19, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %call26, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %inc = add nuw nsw i32 %i.090, 1
  %22 = load i32, ptr %n, align 4, !tbaa !36
  %cmp = icmp slt i32 %inc, %22
  br i1 %cmp, label %if.then6.i20, label %for.end, !llvm.loop !45

for.end:                                          ; preds = %for.inc, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!36 = !{!17, !17, i64 0}
!37 = !{!11, !11, i64 0}
!38 = !{!23, !27, i64 240}
!39 = !{!40, !11, i64 56}
!40 = !{!"_ZTSSt5ctypeIcE", !41, i64 0, !42, i64 16, !25, i64 24, !43, i64 32, !43, i64 40, !44, i64 48, !11, i64 56, !11, i64 57, !11, i64 313, !11, i64 569}
!41 = !{!"_ZTSNSt6locale5facetE", !17, i64 8}
!42 = !{!"p1 _ZTS15__locale_struct", !15, i64 0}
!43 = !{!"p1 int", !15, i64 0}
!44 = !{!"p1 short", !15, i64 0}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
