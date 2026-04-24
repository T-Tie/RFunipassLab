; ModuleID = '<stdin>'
source_filename = "/tmp/tmpt9gd6uup.cpp"
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
@.str.1 = private unnamed_addr constant [5 x i8] c"same\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"worse\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %a)
  %call.i6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %call.i, ptr noundef nonnull align 8 dereferenceable(8) %b)
  %0 = load double, ptr %b, align 8, !tbaa !5
  %1 = load double, ptr %a, align 8, !tbaa !5
  %div = fdiv double %0, %1
  %2 = load i32, ptr %n, align 4, !tbaa !9
  %cmp85 = icmp sgt i32 %2, 1
  br i1 %cmp85, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.inc, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0

for.body:                                         ; preds = %entry, %for.inc
  %i.086 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %call.i7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %a)
  %call.i8 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %call.i7, ptr noundef nonnull align 8 dereferenceable(8) %b)
  %3 = load double, ptr %b, align 8, !tbaa !5
  %4 = load double, ptr %a, align 8, !tbaa !5
  %div5 = fdiv double %3, %4
  %cmp6 = fcmp ogt double %div5, %div
  br i1 %cmp6, label %if.then, label %if.else14

if.then:                                          ; preds = %for.body
  %sub7 = fsub double %div5, %div
  %cmp8 = fcmp ogt double %sub7, 5.000000e-02
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 6)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep83 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i
  %5 = load ptr, ptr %gep83, align 8, !tbaa !13
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then9
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then9
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  %6 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !31
  %tobool.not.i1.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 67
  %7 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !37
  br label %for.inc

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %5)
  %vtable.i.i.i = load ptr, ptr %5, align 8, !tbaa !11
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %8 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %8(ptr noundef nonnull align 8 dereferenceable(570) %5, i8 noundef signext 10)
  br label %for.inc

if.else:                                          ; preds = %if.then
  %call1.i11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 4)
  %vtable.i21 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i22 = getelementptr i8, ptr %vtable.i21, i64 -24
  %vbase.offset.i23 = load i64, ptr %vbase.offset.ptr.i22, align 8
  %gep82 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i23
  %9 = load ptr, ptr %gep82, align 8, !tbaa !13
  %tobool.not.i.i.i26 = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i26, label %if.then.i.i.i39, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27

if.then.i.i.i39:                                  ; preds = %if.else
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27: ; preds = %if.else
  %_M_widen_ok.i.i.i28 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %10 = load i8, ptr %_M_widen_ok.i.i.i28, align 8, !tbaa !31
  %tobool.not.i1.i.i29 = icmp eq i8 %10, 0
  br i1 %tobool.not.i1.i.i29, label %if.end.i.i.i35, label %if.then.i2.i.i30

if.then.i2.i.i30:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27
  %arrayidx.i.i.i31 = getelementptr inbounds nuw i8, ptr %9, i64 67
  %11 = load i8, ptr %arrayidx.i.i.i31, align 1, !tbaa !37
  br label %for.inc

if.end.i.i.i35:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %9)
  %vtable.i.i.i36 = load ptr, ptr %9, align 8, !tbaa !11
  %vfn.i.i.i37 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i36, i64 48
  %12 = load ptr, ptr %vfn.i.i.i37, align 8
  %call.i.i.i38 = call noundef signext i8 %12(ptr noundef nonnull align 8 dereferenceable(570) %9, i8 noundef signext 10)
  br label %for.inc

if.else14:                                        ; preds = %for.body
  %sub15 = fsub double %div, %div5
  %cmp16 = fcmp ogt double %sub15, 5.000000e-02
  br i1 %cmp16, label %if.then17, label %if.else20

if.then17:                                        ; preds = %if.else14
  %call1.i14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 5)
  %vtable.i41 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i42 = getelementptr i8, ptr %vtable.i41, i64 -24
  %vbase.offset.i43 = load i64, ptr %vbase.offset.ptr.i42, align 8
  %gep81 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i43
  %13 = load ptr, ptr %gep81, align 8, !tbaa !13
  %tobool.not.i.i.i46 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i46, label %if.then.i.i.i59, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i47

if.then.i.i.i59:                                  ; preds = %if.then17
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i47: ; preds = %if.then17
  %_M_widen_ok.i.i.i48 = getelementptr inbounds nuw i8, ptr %13, i64 56
  %14 = load i8, ptr %_M_widen_ok.i.i.i48, align 8, !tbaa !31
  %tobool.not.i1.i.i49 = icmp eq i8 %14, 0
  br i1 %tobool.not.i1.i.i49, label %if.end.i.i.i55, label %if.then.i2.i.i50

if.then.i2.i.i50:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i47
  %arrayidx.i.i.i51 = getelementptr inbounds nuw i8, ptr %13, i64 67
  %15 = load i8, ptr %arrayidx.i.i.i51, align 1, !tbaa !37
  br label %for.inc

if.end.i.i.i55:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i47
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %13)
  %vtable.i.i.i56 = load ptr, ptr %13, align 8, !tbaa !11
  %vfn.i.i.i57 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i56, i64 48
  %16 = load ptr, ptr %vfn.i.i.i57, align 8
  %call.i.i.i58 = call noundef signext i8 %16(ptr noundef nonnull align 8 dereferenceable(570) %13, i8 noundef signext 10)
  br label %for.inc

if.else20:                                        ; preds = %if.else14
  %call1.i17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 4)
  %vtable.i61 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i62 = getelementptr i8, ptr %vtable.i61, i64 -24
  %vbase.offset.i63 = load i64, ptr %vbase.offset.ptr.i62, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i63
  %17 = load ptr, ptr %gep, align 8, !tbaa !13
  %tobool.not.i.i.i66 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i66, label %if.then.i.i.i79, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i67

if.then.i.i.i79:                                  ; preds = %if.else20
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i67: ; preds = %if.else20
  %_M_widen_ok.i.i.i68 = getelementptr inbounds nuw i8, ptr %17, i64 56
  %18 = load i8, ptr %_M_widen_ok.i.i.i68, align 8, !tbaa !31
  %tobool.not.i1.i.i69 = icmp eq i8 %18, 0
  br i1 %tobool.not.i1.i.i69, label %if.end.i.i.i75, label %if.then.i2.i.i70

if.then.i2.i.i70:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i67
  %arrayidx.i.i.i71 = getelementptr inbounds nuw i8, ptr %17, i64 67
  %19 = load i8, ptr %arrayidx.i.i.i71, align 1, !tbaa !37
  br label %for.inc

if.end.i.i.i75:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i67
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %17)
  %vtable.i.i.i76 = load ptr, ptr %17, align 8, !tbaa !11
  %vfn.i.i.i77 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i76, i64 48
  %20 = load ptr, ptr %vfn.i.i.i77, align 8
  %call.i.i.i78 = call noundef signext i8 %20(ptr noundef nonnull align 8 dereferenceable(570) %17, i8 noundef signext 10)
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i75, %if.then.i2.i.i70, %if.end.i.i.i55, %if.then.i2.i.i50, %if.end.i.i.i35, %if.then.i2.i.i30, %if.end.i.i.i, %if.then.i2.i.i
  %retval.0.i.i.i32.sink = phi i8 [ %7, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ], [ %11, %if.then.i2.i.i30 ], [ %call.i.i.i38, %if.end.i.i.i35 ], [ %15, %if.then.i2.i.i50 ], [ %call.i.i.i58, %if.end.i.i.i55 ], [ %19, %if.then.i2.i.i70 ], [ %call.i.i.i78, %if.end.i.i.i75 ]
  %call1.i33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i32.sink)
  %call.i.i34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i33)
  %inc = add nuw nsw i32 %i.086, 1
  %21 = load i32, ptr %n, align 4, !tbaa !9
  %sub = add nsw i32 %21, -1
  %cmp = icmp slt i32 %inc, %sub
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !38
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
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"vtable pointer", !8, i64 0}
!13 = !{!14, !28, i64 240}
!14 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !15, i64 0, !25, i64 216, !7, i64 224, !26, i64 225, !27, i64 232, !28, i64 240, !29, i64 248, !30, i64 256}
!15 = !{!"_ZTSSt8ios_base", !16, i64 8, !16, i64 16, !17, i64 24, !18, i64 28, !18, i64 32, !19, i64 40, !21, i64 48, !7, i64 64, !10, i64 192, !22, i64 200, !23, i64 208}
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
!33 = !{!"_ZTSNSt6locale5facetE", !10, i64 8}
!34 = !{!"p1 _ZTS15__locale_struct", !20, i64 0}
!35 = !{!"p1 int", !20, i64 0}
!36 = !{!"p1 short", !20, i64 0}
!37 = !{!7, !7, i64 0}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
