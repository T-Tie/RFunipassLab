; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmvils95n.cpp"
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
@.str = private unnamed_addr constant [7 x i8] c"better\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"same\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %a1 = alloca double, align 8
  %b1 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b1) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 8 dereferenceable(8) %a)
  %call.i3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %call.i, ptr noundef nonnull align 8 dereferenceable(8) %b)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not57 = icmp sgt i32 %0, 1
  br i1 %cmp.not.not57, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %i.058 = phi i32 [ %inc, %for.inc ], [ 1, %entry ]
  %call.i4 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %a1)
  %call.i5 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %call.i4, ptr noundef nonnull align 8 dereferenceable(8) %b1)
  %1 = load double, ptr %b1, align 8, !tbaa !9
  %2 = load double, ptr %a1, align 8, !tbaa !9
  %3 = load double, ptr %b, align 8, !tbaa !9
  %4 = load double, ptr %a, align 8, !tbaa !9
  %5 = insertelement <2 x double> poison, double %1, i64 0
  %6 = insertelement <2 x double> %5, double %3, i64 1
  %7 = insertelement <2 x double> poison, double %2, i64 0
  %8 = insertelement <2 x double> %7, double %4, i64 1
  %9 = fdiv <2 x double> %6, %8
  %shift = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %10 = fsub <2 x double> %9, %shift
  %sub6 = extractelement <2 x double> %10, i64 0
  %cmp7 = fcmp ogt double %sub6, 5.000000e-02
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 6)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep56 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i
  %11 = load ptr, ptr %gep56, align 8, !tbaa !13
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 56
  %12 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !31
  %tobool.not.i1.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 67
  %13 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !37
  br label %for.inc

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %11)
  %vtable.i.i.i = load ptr, ptr %11, align 8, !tbaa !11
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %14 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %14(ptr noundef nonnull align 8 dereferenceable(570) %11, i8 noundef signext 10)
  br label %for.inc

if.else:                                          ; preds = %for.body
  %cmp10 = fcmp olt double %sub6, -5.000000e-02
  br i1 %cmp10, label %if.then11, label %if.else14

if.then11:                                        ; preds = %if.else
  %call1.i8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 5)
  %vtable.i15 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i16 = getelementptr i8, ptr %vtable.i15, i64 -24
  %vbase.offset.i17 = load i64, ptr %vbase.offset.ptr.i16, align 8
  %gep55 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i17
  %15 = load ptr, ptr %gep55, align 8, !tbaa !13
  %tobool.not.i.i.i20 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i20, label %if.then.i.i.i33, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i21

if.then.i.i.i33:                                  ; preds = %if.then11
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i21: ; preds = %if.then11
  %_M_widen_ok.i.i.i22 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %16 = load i8, ptr %_M_widen_ok.i.i.i22, align 8, !tbaa !31
  %tobool.not.i1.i.i23 = icmp eq i8 %16, 0
  br i1 %tobool.not.i1.i.i23, label %if.end.i.i.i29, label %if.then.i2.i.i24

if.then.i2.i.i24:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i21
  %arrayidx.i.i.i25 = getelementptr inbounds nuw i8, ptr %15, i64 67
  %17 = load i8, ptr %arrayidx.i.i.i25, align 1, !tbaa !37
  br label %for.inc

if.end.i.i.i29:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i21
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %15)
  %vtable.i.i.i30 = load ptr, ptr %15, align 8, !tbaa !11
  %vfn.i.i.i31 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i30, i64 48
  %18 = load ptr, ptr %vfn.i.i.i31, align 8
  %call.i.i.i32 = call noundef signext i8 %18(ptr noundef nonnull align 8 dereferenceable(570) %15, i8 noundef signext 10)
  br label %for.inc

if.else14:                                        ; preds = %if.else
  %call1.i11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 4)
  %vtable.i35 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i36 = getelementptr i8, ptr %vtable.i35, i64 -24
  %vbase.offset.i37 = load i64, ptr %vbase.offset.ptr.i36, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i37
  %19 = load ptr, ptr %gep, align 8, !tbaa !13
  %tobool.not.i.i.i40 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.i40, label %if.then.i.i.i53, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i41

if.then.i.i.i53:                                  ; preds = %if.else14
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i41: ; preds = %if.else14
  %_M_widen_ok.i.i.i42 = getelementptr inbounds nuw i8, ptr %19, i64 56
  %20 = load i8, ptr %_M_widen_ok.i.i.i42, align 8, !tbaa !31
  %tobool.not.i1.i.i43 = icmp eq i8 %20, 0
  br i1 %tobool.not.i1.i.i43, label %if.end.i.i.i49, label %if.then.i2.i.i44

if.then.i2.i.i44:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i41
  %arrayidx.i.i.i45 = getelementptr inbounds nuw i8, ptr %19, i64 67
  %21 = load i8, ptr %arrayidx.i.i.i45, align 1, !tbaa !37
  br label %for.inc

if.end.i.i.i49:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i41
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %19)
  %vtable.i.i.i50 = load ptr, ptr %19, align 8, !tbaa !11
  %vfn.i.i.i51 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i50, i64 48
  %22 = load ptr, ptr %vfn.i.i.i51, align 8
  %call.i.i.i52 = call noundef signext i8 %22(ptr noundef nonnull align 8 dereferenceable(570) %19, i8 noundef signext 10)
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i49, %if.then.i2.i.i44, %if.end.i.i.i29, %if.then.i2.i.i24, %if.end.i.i.i, %if.then.i2.i.i
  %retval.0.i.i.i.sink = phi i8 [ %13, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ], [ %17, %if.then.i2.i.i24 ], [ %call.i.i.i32, %if.end.i.i.i29 ], [ %21, %if.then.i2.i.i44 ], [ %call.i.i.i52, %if.end.i.i.i49 ]
  %call1.i13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i.sink)
  %call.i.i14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i13)
  %inc = add nuw nsw i32 %i.058, 1
  %23 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %inc, %23
  br i1 %cmp.not.not, label %for.body, label %for.end, !llvm.loop !38

for.end:                                          ; preds = %for.inc, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"vtable pointer", !8, i64 0}
!13 = !{!14, !28, i64 240}
!14 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !15, i64 0, !25, i64 216, !7, i64 224, !26, i64 225, !27, i64 232, !28, i64 240, !29, i64 248, !30, i64 256}
!15 = !{!"_ZTSSt8ios_base", !16, i64 8, !16, i64 16, !17, i64 24, !18, i64 28, !18, i64 32, !19, i64 40, !21, i64 48, !7, i64 64, !6, i64 192, !22, i64 200, !23, i64 208}
!16 = !{!"long", !7, i64 0}
!17 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!18 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!19 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !20, i64 0}
!20 = !{!"any pointer", !7, i64 0}
!21 = !{!"_ZTSNSt8ios_base6_WordsE", !20, i64 0, !16, i64 8}
!22 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !20, i64 0}
!23 = !{!"_ZTSSt6locale", !24, i64 0}
!24 = !{!"p1 _ZTSNSt6locale5_ImplE", !20, i64 0}
!25 = !{!"p1 _ZTSSo", !20, i64 0}
!26 = !{!"bool", !7, i64 0}
!27 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !20, i64 0}
!28 = !{!"p1 _ZTSSt5ctypeIcE", !20, i64 0}
!29 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !20, i64 0}
!30 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !20, i64 0}
!31 = !{!32, !7, i64 56}
!32 = !{!"_ZTSSt5ctypeIcE", !33, i64 0, !34, i64 16, !26, i64 24, !35, i64 32, !35, i64 40, !36, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!33 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!34 = !{!"p1 _ZTS15__locale_struct", !20, i64 0}
!35 = !{!"p1 int", !20, i64 0}
!36 = !{!"p1 short", !20, i64 0}
!37 = !{!7, !7, i64 0}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
