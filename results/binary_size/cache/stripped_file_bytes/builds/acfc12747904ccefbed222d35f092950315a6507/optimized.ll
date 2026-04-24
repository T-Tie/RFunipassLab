; ModuleID = '<stdin>'
source_filename = "/tmp/tmpx18bw6es.cpp"
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca double, i64 %1, align 16
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = zext i32 %3 to i64
  %vla1 = alloca [2 x double], i64 %4, align 16
  %cmp62 = icmp sgt i32 %3, 0
  br i1 %cmp62, label %for.cond2.preheader, label %for.end42

for.cond2.preheader:                              ; preds = %entry, %for.cond2.preheader
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.cond2.preheader ], [ 0, %entry ]
  %arrayidx6 = getelementptr inbounds nuw [2 x double], ptr %vla1, i64 %indvars.iv69, i64 0
  %call.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %arrayidx6)
  %arrayidx6.c = getelementptr inbounds nuw [2 x double], ptr %vla1, i64 %indvars.iv69, i64 1
  %call.i.c = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %arrayidx6.c)
  %arrayidx9 = getelementptr inbounds nuw [2 x double], ptr %vla1, i64 %indvars.iv69
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %arrayidx9, i64 8
  %5 = load double, ptr %arrayidx10, align 8, !tbaa !9
  %6 = load double, ptr %arrayidx9, align 16, !tbaa !9
  %div = fdiv double %5, %6
  %arrayidx15 = getelementptr inbounds nuw double, ptr %vla, i64 %indvars.iv69
  store double %div, ptr %arrayidx15, align 8, !tbaa !9
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %8 = sext i32 %7 to i64
  %cmp = icmp slt i64 %indvars.iv.next70, %8
  br i1 %cmp, label %for.cond2.preheader, label %for.cond19.preheader, !llvm.loop !11

for.cond19.preheader:                             ; preds = %for.cond2.preheader
  %9 = icmp sgt i32 %7, 1
  br i1 %9, label %for.body21.lr.ph, label %for.end42

for.body21.lr.ph:                                 ; preds = %for.cond19.preheader
  %10 = load double, ptr %vla, align 16, !tbaa !9
  br label %for.body21

for.body21:                                       ; preds = %for.body21.lr.ph, %for.inc40
  %indvars.iv72 = phi i64 [ 1, %for.body21.lr.ph ], [ %indvars.iv.next73, %for.inc40 ]
  %arrayidx23 = getelementptr inbounds nuw double, ptr %vla, i64 %indvars.iv72
  %11 = load double, ptr %arrayidx23, align 8, !tbaa !9
  %sub = fsub double %11, %10
  %cmp25 = fcmp ogt double %sub, 5.000000e-02
  br i1 %cmp25, label %if.then, label %if.else

if.then:                                          ; preds = %for.body21
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 6)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep65 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i
  %12 = load ptr, ptr %gep65, align 8, !tbaa !16
  %tobool.not.i.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 56
  %13 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !34
  %tobool.not.i1.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 67
  %14 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !40
  br label %for.inc40

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %12)
  %vtable.i.i.i = load ptr, ptr %12, align 8, !tbaa !14
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %15 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %15(ptr noundef nonnull align 8 dereferenceable(570) %12, i8 noundef signext 10)
  br label %for.inc40

if.else:                                          ; preds = %for.body21
  %sub31 = fsub double %10, %11
  %cmp32 = fcmp ogt double %sub31, 5.000000e-02
  br i1 %cmp32, label %if.then33, label %if.else36

if.then33:                                        ; preds = %if.else
  %call1.i14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 5)
  %vtable.i21 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i22 = getelementptr i8, ptr %vtable.i21, i64 -24
  %vbase.offset.i23 = load i64, ptr %vbase.offset.ptr.i22, align 8
  %gep64 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i23
  %16 = load ptr, ptr %gep64, align 8, !tbaa !16
  %tobool.not.i.i.i26 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i.i26, label %if.then.i.i.i39, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27

if.then.i.i.i39:                                  ; preds = %if.then33
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27: ; preds = %if.then33
  %_M_widen_ok.i.i.i28 = getelementptr inbounds nuw i8, ptr %16, i64 56
  %17 = load i8, ptr %_M_widen_ok.i.i.i28, align 8, !tbaa !34
  %tobool.not.i1.i.i29 = icmp eq i8 %17, 0
  br i1 %tobool.not.i1.i.i29, label %if.end.i.i.i35, label %if.then.i2.i.i30

if.then.i2.i.i30:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27
  %arrayidx.i.i.i31 = getelementptr inbounds nuw i8, ptr %16, i64 67
  %18 = load i8, ptr %arrayidx.i.i.i31, align 1, !tbaa !40
  br label %for.inc40

if.end.i.i.i35:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %16)
  %vtable.i.i.i36 = load ptr, ptr %16, align 8, !tbaa !14
  %vfn.i.i.i37 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i36, i64 48
  %19 = load ptr, ptr %vfn.i.i.i37, align 8
  %call.i.i.i38 = call noundef signext i8 %19(ptr noundef nonnull align 8 dereferenceable(570) %16, i8 noundef signext 10)
  br label %for.inc40

if.else36:                                        ; preds = %if.else
  %call1.i17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 4)
  %vtable.i41 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i42 = getelementptr i8, ptr %vtable.i41, i64 -24
  %vbase.offset.i43 = load i64, ptr %vbase.offset.ptr.i42, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i43
  %20 = load ptr, ptr %gep, align 8, !tbaa !16
  %tobool.not.i.i.i46 = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i46, label %if.then.i.i.i59, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i47

if.then.i.i.i59:                                  ; preds = %if.else36
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i47: ; preds = %if.else36
  %_M_widen_ok.i.i.i48 = getelementptr inbounds nuw i8, ptr %20, i64 56
  %21 = load i8, ptr %_M_widen_ok.i.i.i48, align 8, !tbaa !34
  %tobool.not.i1.i.i49 = icmp eq i8 %21, 0
  br i1 %tobool.not.i1.i.i49, label %if.end.i.i.i55, label %if.then.i2.i.i50

if.then.i2.i.i50:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i47
  %arrayidx.i.i.i51 = getelementptr inbounds nuw i8, ptr %20, i64 67
  %22 = load i8, ptr %arrayidx.i.i.i51, align 1, !tbaa !40
  br label %for.inc40

if.end.i.i.i55:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i47
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %20)
  %vtable.i.i.i56 = load ptr, ptr %20, align 8, !tbaa !14
  %vfn.i.i.i57 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i56, i64 48
  %23 = load ptr, ptr %vfn.i.i.i57, align 8
  %call.i.i.i58 = call noundef signext i8 %23(ptr noundef nonnull align 8 dereferenceable(570) %20, i8 noundef signext 10)
  br label %for.inc40

for.inc40:                                        ; preds = %if.end.i.i.i55, %if.then.i2.i.i50, %if.end.i.i.i35, %if.then.i2.i.i30, %if.end.i.i.i, %if.then.i2.i.i
  %retval.0.i.i.i.sink = phi i8 [ %14, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ], [ %18, %if.then.i2.i.i30 ], [ %call.i.i.i38, %if.end.i.i.i35 ], [ %22, %if.then.i2.i.i50 ], [ %call.i.i.i58, %if.end.i.i.i55 ]
  %call1.i19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i.sink)
  %call.i.i20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i19)
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %24 = load i32, ptr %n, align 4, !tbaa !5
  %25 = sext i32 %24 to i64
  %cmp20 = icmp slt i64 %indvars.iv.next73, %25
  br i1 %cmp20, label %for.body21, label %for.end42, !llvm.loop !41

for.end42:                                        ; preds = %for.inc40, %entry, %for.cond19.preheader
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

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
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !8, i64 0}
!16 = !{!17, !31, i64 240}
!17 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !18, i64 0, !28, i64 216, !7, i64 224, !29, i64 225, !30, i64 232, !31, i64 240, !32, i64 248, !33, i64 256}
!18 = !{!"_ZTSSt8ios_base", !19, i64 8, !19, i64 16, !20, i64 24, !21, i64 28, !21, i64 32, !22, i64 40, !24, i64 48, !7, i64 64, !6, i64 192, !25, i64 200, !26, i64 208}
!19 = !{!"long", !7, i64 0}
!20 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!21 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!22 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !23, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = !{!"_ZTSNSt8ios_base6_WordsE", !23, i64 0, !19, i64 8}
!25 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !23, i64 0}
!26 = !{!"_ZTSSt6locale", !27, i64 0}
!27 = !{!"p1 _ZTSNSt6locale5_ImplE", !23, i64 0}
!28 = !{!"p1 _ZTSSo", !23, i64 0}
!29 = !{!"bool", !7, i64 0}
!30 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !23, i64 0}
!31 = !{!"p1 _ZTSSt5ctypeIcE", !23, i64 0}
!32 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !23, i64 0}
!33 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !23, i64 0}
!34 = !{!35, !7, i64 56}
!35 = !{!"_ZTSSt5ctypeIcE", !36, i64 0, !37, i64 16, !29, i64 24, !38, i64 32, !38, i64 40, !39, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!36 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!37 = !{!"p1 _ZTS15__locale_struct", !23, i64 0}
!38 = !{!"p1 int", !23, i64 0}
!39 = !{!"p1 short", !23, i64 0}
!40 = !{!7, !7, i64 0}
!41 = distinct !{!41, !12, !13}
