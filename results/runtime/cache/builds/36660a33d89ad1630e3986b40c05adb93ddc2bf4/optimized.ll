; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxxey1ydd.cpp"
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
  %__c.addr.i66 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %call = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  %_M_width.i17.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i17.i, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %call, i64 noundef 400)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !21
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = add i64 %0, -401
  %or.cond.i = icmp ult i64 %2, -400
  %or.cond = select i1 %cmp.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %if.else.i

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i18.i = icmp eq i32 %call25.i, -1
  br i1 %cmp.i18.i, label %if.then28.i, label %if.else.i, !prof !30

if.then28.i:                                      ; preds = %if.then19.i
  %vtable29.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable29.i, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  br label %if.else.i

if.else.i:                                        ; preds = %if.then28.i, %if.then19.i, %entry
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %call) #7
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %call, i64 noundef %call.i.i)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call) #8
  %conv = trunc i64 %call4 to i32
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else.i
  %chang.0 = phi i32 [ %conv, %if.else.i ], [ %chang.1, %if.end ]
  %storemerge.in = load i32, ptr %n, align 4, !tbaa !31
  %storemerge = add nsw i32 %storemerge.in, -1
  store i32 %storemerge, ptr %n, align 4, !tbaa !31
  %cmp = icmp sgt i32 %storemerge.in, 1
  br i1 %cmp, label %if.then6.i22, label %while.end

if.then6.i22:                                     ; preds = %while.cond
  %vtable7.i23 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i24 = getelementptr i8, ptr %vtable7.i23, i64 -24
  %vbase.offset9.i25 = load i64, ptr %vbase.offset.ptr8.i24, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt3cin, i64 16), i64 %vbase.offset9.i25
  %4 = load i64, ptr %gep, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %call, i64 noundef 400)
  %vtable12.i28 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i29 = getelementptr i8, ptr %vtable12.i28, i64 -24
  %vbase.offset14.i30 = load i64, ptr %vbase.offset.ptr13.i29, align 8
  %add.ptr15.i31 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i30
  %_M_streambuf_state.i.i.i32 = getelementptr inbounds nuw i8, ptr %add.ptr15.i31, i64 32
  %5 = load i32, ptr %_M_streambuf_state.i.i.i32, align 8, !tbaa !21
  %cmp.i.i33 = icmp eq i32 %5, 0
  %6 = add i64 %4, -401
  %or.cond.i37 = icmp ult i64 %6, -400
  %or.cond91 = select i1 %cmp.i.i33, i1 %or.cond.i37, i1 false
  br i1 %or.cond91, label %if.then19.i38, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit47

if.then19.i38:                                    ; preds = %if.then6.i22
  %_M_streambuf.i.i39 = getelementptr inbounds nuw i8, ptr %add.ptr15.i31, i64 232
  %7 = load ptr, ptr %_M_streambuf.i.i39, align 8, !tbaa !22
  %call25.i40 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %7)
  %cmp.i18.i41 = icmp eq i32 %call25.i40, -1
  br i1 %cmp.i18.i41, label %if.then28.i42, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit47, !prof !30

if.then28.i42:                                    ; preds = %if.then19.i38
  %vtable29.i43 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i44 = getelementptr i8, ptr %vtable29.i43, i64 -24
  %vbase.offset31.i45 = load i64, ptr %vbase.offset.ptr30.i44, align 8
  %add.ptr32.i46 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i45
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i46, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit47

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit47: ; preds = %if.then6.i22, %if.then19.i38, %if.then28.i42
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call) #8
  %conv7 = trunc i64 %call6 to i32
  %add = add i32 %chang.0, 1
  %add8 = add i32 %add, %conv7
  %cmp9 = icmp sgt i32 %add8, 80
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit47
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 10, ptr %__c.addr.i, align 1, !tbaa !32
  %vtable.i48 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i49 = getelementptr i8, ptr %vtable.i48, i64 -24
  %vbase.offset.i50 = load i64, ptr %vbase.offset.ptr.i49, align 8
  %gep93 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i50
  %8 = load i64, ptr %gep93, align 8, !tbaa !8
  %cmp.not.i = icmp eq i64 %8, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i53

if.then.i53:                                      ; preds = %if.then
  %call1.i54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65

if.end.i:                                         ; preds = %if.then
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 10)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65: ; preds = %if.then.i53, %if.end.i
  %retval.0.i = phi ptr [ %call1.i54, %if.then.i53 ], [ @_ZSt4cout, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  br label %if.end

if.else:                                          ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit47
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i66)
  store i8 32, ptr %__c.addr.i66, align 1, !tbaa !32
  %vtable.i67 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i68 = getelementptr i8, ptr %vtable.i67, i64 -24
  %vbase.offset.i69 = load i64, ptr %vbase.offset.ptr.i68, align 8
  %gep92 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i69
  %9 = load i64, ptr %gep92, align 8, !tbaa !8
  %cmp.not.i72 = icmp eq i64 %9, 0
  br i1 %cmp.not.i72, label %if.end.i76, label %if.then.i73

if.then.i73:                                      ; preds = %if.else
  %call1.i74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i66, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89

if.end.i76:                                       ; preds = %if.else
  %call2.i77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89: ; preds = %if.then.i73, %if.end.i76
  %retval.0.i75 = phi ptr [ %call1.i74, %if.then.i73 ], [ @_ZSt4cout, %if.end.i76 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i66)
  br label %if.end

if.end:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65
  %retval.0.i75.sink = phi ptr [ %retval.0.i75, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89 ], [ %retval.0.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65 ]
  %chang.1 = phi i32 [ %add8, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89 ], [ %conv7, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65 ]
  %call.i.i81 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %call) #7
  %call1.i82 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i75.sink, ptr noundef nonnull %call, i64 noundef %call.i.i81)
  br label %while.cond, !llvm.loop !33

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) }
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
!31 = !{!17, !17, i64 0}
!32 = !{!11, !11, i64 0}
!33 = distinct !{!33, !34, !35}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"llvm.loop.unroll.disable"}
