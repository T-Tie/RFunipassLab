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

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [300 x i8], align 16
  %rep = alloca [300 x i8], align 16
  %sub = alloca [300 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %s) #5
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %rep) #5
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %sub) #5
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  %_M_width.i17.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i17.i, align 8, !tbaa !8
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
  br i1 %or.cond, label %if.then19.i, label %if.then6.i11

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i18.i = icmp eq i32 %call25.i, -1
  %vtable7.i12.pre113 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i18.i, label %if.then28.i, label %if.then6.i11, !prof !30

if.then28.i:                                      ; preds = %if.then19.i
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable7.i12.pre113, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  %vtable7.i12.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i11

if.then6.i11:                                     ; preds = %if.then28.i, %if.then19.i, %entry
  %vtable7.i12 = phi ptr [ %vtable7.i12.pre, %if.then28.i ], [ %vtable7.i12.pre113, %if.then19.i ], [ %vtable12.i, %entry ]
  %vbase.offset.ptr8.i13 = getelementptr i8, ptr %vtable7.i12, i64 -24
  %vbase.offset9.i14 = load i64, ptr %vbase.offset.ptr8.i13, align 8
  %add.ptr10.i15 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i14
  %_M_width.i17.i16 = getelementptr inbounds nuw i8, ptr %add.ptr10.i15, i64 16
  %4 = load i64, ptr %_M_width.i17.i16, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %sub, i64 noundef 300)
  %vtable12.i17 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i18 = getelementptr i8, ptr %vtable12.i17, i64 -24
  %vbase.offset14.i19 = load i64, ptr %vbase.offset.ptr13.i18, align 8
  %add.ptr15.i20 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i19
  %_M_streambuf_state.i.i.i21 = getelementptr inbounds nuw i8, ptr %add.ptr15.i20, i64 32
  %5 = load i32, ptr %_M_streambuf_state.i.i.i21, align 8, !tbaa !21
  %cmp.i.i22 = icmp eq i32 %5, 0
  %6 = add i64 %4, -301
  %or.cond.i26 = icmp ult i64 %6, -300
  %or.cond111 = select i1 %cmp.i.i22, i1 %or.cond.i26, i1 false
  br i1 %or.cond111, label %if.then19.i27, label %if.then6.i46

if.then19.i27:                                    ; preds = %if.then6.i11
  %_M_streambuf.i.i28 = getelementptr inbounds nuw i8, ptr %add.ptr15.i20, i64 232
  %7 = load ptr, ptr %_M_streambuf.i.i28, align 8, !tbaa !22
  %call25.i29 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %7)
  %cmp.i18.i30 = icmp eq i32 %call25.i29, -1
  %vtable7.i47.pre115 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i18.i30, label %if.then28.i31, label %if.then6.i46, !prof !30

if.then28.i31:                                    ; preds = %if.then19.i27
  %vbase.offset.ptr30.i33 = getelementptr i8, ptr %vtable7.i47.pre115, i64 -24
  %vbase.offset31.i34 = load i64, ptr %vbase.offset.ptr30.i33, align 8
  %add.ptr32.i35 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i34
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i35, i32 noundef 2)
  %vtable7.i47.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i46

if.then6.i46:                                     ; preds = %if.then28.i31, %if.then19.i27, %if.then6.i11
  %vtable7.i47 = phi ptr [ %vtable7.i47.pre, %if.then28.i31 ], [ %vtable7.i47.pre115, %if.then19.i27 ], [ %vtable12.i17, %if.then6.i11 ]
  %vbase.offset.ptr8.i48 = getelementptr i8, ptr %vtable7.i47, i64 -24
  %vbase.offset9.i49 = load i64, ptr %vbase.offset.ptr8.i48, align 8
  %add.ptr10.i50 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i49
  %_M_width.i17.i51 = getelementptr inbounds nuw i8, ptr %add.ptr10.i50, i64 16
  %8 = load i64, ptr %_M_width.i17.i51, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %rep, i64 noundef 300)
  %vtable12.i52 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i53 = getelementptr i8, ptr %vtable12.i52, i64 -24
  %vbase.offset14.i54 = load i64, ptr %vbase.offset.ptr13.i53, align 8
  %add.ptr15.i55 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i54
  %_M_streambuf_state.i.i.i56 = getelementptr inbounds nuw i8, ptr %add.ptr15.i55, i64 32
  %9 = load i32, ptr %_M_streambuf_state.i.i.i56, align 8, !tbaa !21
  %cmp.i.i57 = icmp eq i32 %9, 0
  %10 = add i64 %8, -301
  %or.cond.i61 = icmp ult i64 %10, -300
  %or.cond112 = select i1 %cmp.i.i57, i1 %or.cond.i61, i1 false
  br i1 %or.cond112, label %if.then19.i62, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit71

if.then19.i62:                                    ; preds = %if.then6.i46
  %_M_streambuf.i.i63 = getelementptr inbounds nuw i8, ptr %add.ptr15.i55, i64 232
  %11 = load ptr, ptr %_M_streambuf.i.i63, align 8, !tbaa !22
  %call25.i64 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %11)
  %cmp.i18.i65 = icmp eq i32 %call25.i64, -1
  br i1 %cmp.i18.i65, label %if.then28.i66, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit71, !prof !30

if.then28.i66:                                    ; preds = %if.then19.i62
  %vtable29.i67 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i68 = getelementptr i8, ptr %vtable29.i67, i64 -24
  %vbase.offset31.i69 = load i64, ptr %vbase.offset.ptr30.i68, align 8
  %add.ptr32.i70 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i69
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i70, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit71

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit71: ; preds = %if.then6.i46, %if.then19.i62, %if.then28.i66
  %call7 = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %s, ptr noundef nonnull dereferenceable(1) %sub) #6
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.end, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit71
  store i8 0, ptr %call7, align 1, !tbaa !31
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #5
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %s, i64 noundef %call.i.i)
  %call.i.i76 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %rep) #5
  %call1.i77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %rep, i64 noundef %call.i.i76)
  %call16 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %sub) #6
  %add.ptr = getelementptr inbounds nuw i8, ptr %call7, i64 %call16
  br label %if.end

if.end:                                           ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit71, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %s.sink117 = phi ptr [ %add.ptr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ %s, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit71 ]
  %call.i.i90 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %s.sink117) #5
  %call1.i91 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %s.sink117, i64 noundef %call.i.i90)
  %vtable.i105 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i106 = getelementptr i8, ptr %vtable.i105, i64 -24
  %vbase.offset.i107 = load i64, ptr %vbase.offset.ptr.i106, align 8
  %add.ptr.i108 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i107
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i108, i8 noundef signext 10)
  %call1.i109 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i110 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i109)
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %sub) #5
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %rep) #5
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %s) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #2

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

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!30 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!31 = !{!11, !11, i64 0}
