; ModuleID = '<stdin>'
source_filename = "/tmp/tmp7eqkw1xe.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %str = alloca [50 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %str) #6
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  %_M_width.i17.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i17.i, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %str, i64 noundef 50)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %_M_streambuf_state.i.i18.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i18.i, align 8, !tbaa !21
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = add i64 %0, -51
  %or.cond.i = icmp ult i64 %2, -50
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
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #6
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %str, i64 noundef %call.i.i)
  %call369 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %cmp.not70 = icmp eq i32 %call369, 10
  br i1 %cmp.not70, label %for.end, label %if.then6.i18

if.then6.i18:                                     ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit51
  %vtable7.i19 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i20 = getelementptr i8, ptr %vtable7.i19, i64 -24
  %vbase.offset9.i21 = load i64, ptr %vbase.offset.ptr8.i20, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt3cin, i64 16), i64 %vbase.offset9.i21
  %8 = load i64, ptr %gep, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %str, i64 noundef 50)
  %vtable12.i24 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i25 = getelementptr i8, ptr %vtable12.i24, i64 -24
  %vbase.offset14.i26 = load i64, ptr %vbase.offset.ptr13.i25, align 8
  %add.ptr15.i27 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i26
  %_M_streambuf_state.i.i18.i28 = getelementptr inbounds nuw i8, ptr %add.ptr15.i27, i64 32
  %9 = load i32, ptr %_M_streambuf_state.i.i18.i28, align 8, !tbaa !21
  %cmp.i.i29 = icmp eq i32 %9, 0
  %10 = add i64 %8, -51
  %or.cond.i33 = icmp ult i64 %10, -50
  %or.cond68 = select i1 %cmp.i.i29, i1 %or.cond.i33, i1 false
  br i1 %or.cond68, label %if.then19.i34, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit51

if.then19.i34:                                    ; preds = %if.then6.i18
  %_M_streambuf.i.i35 = getelementptr inbounds nuw i8, ptr %add.ptr15.i27, i64 232
  %11 = load ptr, ptr %_M_streambuf.i.i35, align 8, !tbaa !22
  %_M_in_cur.i.i.i36 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %12 = load ptr, ptr %_M_in_cur.i.i.i36, align 8, !tbaa !30
  %_M_in_end.i.i.i37 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %13 = load ptr, ptr %_M_in_end.i.i.i37, align 8, !tbaa !33
  %cmp.i19.i38 = icmp ult ptr %12, %13
  br i1 %cmp.i19.i38, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit51, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i39, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i39: ; preds = %if.then19.i34
  %vtable.i.i40 = load ptr, ptr %11, align 8, !tbaa !5
  %vfn.i.i41 = getelementptr inbounds nuw i8, ptr %vtable.i.i40, i64 72
  %14 = load ptr, ptr %vfn.i.i41, align 8
  %call5.i.i42 = call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(64) %11)
  %cmp.i20.i43 = icmp eq i32 %call5.i.i42, -1
  br i1 %cmp.i20.i43, label %if.then28.i44, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit51, !prof !35

if.then28.i44:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i39
  %vtable29.i45 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i46 = getelementptr i8, ptr %vtable29.i45, i64 -24
  %vbase.offset31.i47 = load i64, ptr %vbase.offset.ptr30.i46, align 8
  %add.ptr32.i48 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i47
  %_M_streambuf_state.i.i21.i49 = getelementptr inbounds nuw i8, ptr %add.ptr32.i48, i64 32
  %15 = load i32, ptr %_M_streambuf_state.i.i21.i49, align 8, !tbaa !21
  %or.i.i22.i50 = or i32 %15, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i48, i32 noundef %or.i.i22.i50)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit51

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit51: ; preds = %if.then6.i18, %if.then19.i34, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i39, %if.then28.i44
  %call1.i53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %call.i.i54 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #6
  %call1.i55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %str, i64 noundef %call.i.i54)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(50) %str, i8 0, i64 50, i1 false)
  %call3 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %cmp.not = icmp eq i32 %call3, 10
  br i1 %cmp.not, label %for.end, label %if.then6.i18, !llvm.loop !36

for.end:                                          ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit51, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  %vtable.i62 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i63 = getelementptr i8, ptr %vtable.i62, i64 -24
  %vbase.offset.i64 = load i64, ptr %vbase.offset.ptr.i63, align 8
  %add.ptr.i65 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i64
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i65, i64 240
  %16 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !39
  %tobool.not.i.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 56
  %17 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !40
  %tobool.not.i1.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 67
  %18 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !46
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %16)
  %vtable.i.i.i = load ptr, ptr %16, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %19 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %19(ptr noundef nonnull align 8 dereferenceable(570) %16, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %18, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i66)
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %str) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
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
!36 = distinct !{!36, !37, !38}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = !{!23, !27, i64 240}
!40 = !{!41, !11, i64 56}
!41 = !{!"_ZTSSt5ctypeIcE", !42, i64 0, !43, i64 16, !25, i64 24, !44, i64 32, !44, i64 40, !45, i64 48, !11, i64 56, !11, i64 57, !11, i64 313, !11, i64 569}
!42 = !{!"_ZTSNSt6locale5facetE", !17, i64 8}
!43 = !{!"p1 _ZTS15__locale_struct", !15, i64 0}
!44 = !{!"p1 int", !15, i64 0}
!45 = !{!"p1 short", !15, i64 0}
!46 = !{!11, !11, i64 0}
