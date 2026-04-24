; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjw1g1b6q.cpp"
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
  %cocktail1 = alloca double, align 8
  %cocktail2 = alloca double, align 8
  %extra1 = alloca [10000 x double], align 16
  %extra2 = alloca [10000 x double], align 16
  %extra = alloca [10000 x double], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cocktail1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cocktail2) #5
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %extra1) #5
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %extra2) #5
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %extra) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %cocktail1)
  %call.i13 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %call.i, ptr noundef nonnull align 8 dereferenceable(8) %cocktail2)
  %0 = load double, ptr %cocktail2, align 8, !tbaa !5
  %1 = load double, ptr %cocktail1, align 8, !tbaa !5
  %div = fdiv double %0, %1
  %2 = load i32, ptr %n, align 4, !tbaa !9
  %cmp66 = icmp sgt i32 %2, 1
  br i1 %cmp66, label %for.body, label %for.end38

for.cond14.preheader:                             ; preds = %for.body
  %3 = icmp sgt i32 %6, 1
  br i1 %3, label %for.body17, label %for.end38

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [10000 x double], ptr %extra1, i64 0, i64 %indvars.iv
  %call.i14 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %arrayidx)
  %arrayidx5 = getelementptr inbounds nuw [10000 x double], ptr %extra2, i64 0, i64 %indvars.iv
  %call.i15 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %call.i14, ptr noundef nonnull align 8 dereferenceable(8) %arrayidx5)
  %4 = load double, ptr %arrayidx5, align 8, !tbaa !5
  %5 = load double, ptr %arrayidx, align 8, !tbaa !5
  %div11 = fdiv double %4, %5
  %arrayidx13 = getelementptr inbounds nuw [10000 x double], ptr %extra, i64 0, i64 %indvars.iv
  store double %div11, ptr %arrayidx13, align 8, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %6 = load i32, ptr %n, align 4, !tbaa !9
  %sub = add nsw i32 %6, -1
  %7 = sext i32 %sub to i64
  %cmp = icmp slt i64 %indvars.iv.next, %7
  br i1 %cmp, label %for.body, label %for.cond14.preheader, !llvm.loop !11

for.body17:                                       ; preds = %for.cond14.preheader, %for.inc36
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %for.inc36 ], [ 0, %for.cond14.preheader ]
  %arrayidx19 = getelementptr inbounds nuw [10000 x double], ptr %extra, i64 0, i64 %indvars.iv74
  %8 = load double, ptr %arrayidx19, align 8, !tbaa !5
  %sub20 = fsub double %8, %div
  %cmp21 = fcmp ogt double %sub20, 5.000000e-02
  br i1 %cmp21, label %if.then, label %if.else

if.then:                                          ; preds = %for.body17
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 6)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep69 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i
  %9 = load ptr, ptr %gep69, align 8, !tbaa !16
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 56
  %10 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !34
  %tobool.not.i1.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 67
  %11 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !40
  br label %for.inc36.sink.split

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %9)
  %vtable.i.i.i = load ptr, ptr %9, align 8, !tbaa !14
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %12 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %12(ptr noundef nonnull align 8 dereferenceable(570) %9, i8 noundef signext 10)
  br label %for.inc36.sink.split

if.else:                                          ; preds = %for.body17
  %cmp24 = fcmp olt double %sub20, -5.000000e-02
  br i1 %cmp24, label %if.then25, label %if.else28

if.then25:                                        ; preds = %if.else
  %call1.i18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 5)
  %vtable.i25 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i26 = getelementptr i8, ptr %vtable.i25, i64 -24
  %vbase.offset.i27 = load i64, ptr %vbase.offset.ptr.i26, align 8
  %gep68 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i27
  %13 = load ptr, ptr %gep68, align 8, !tbaa !16
  %tobool.not.i.i.i30 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i30, label %if.then.i.i.i43, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31

if.then.i.i.i43:                                  ; preds = %if.then25
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31: ; preds = %if.then25
  %_M_widen_ok.i.i.i32 = getelementptr inbounds nuw i8, ptr %13, i64 56
  %14 = load i8, ptr %_M_widen_ok.i.i.i32, align 8, !tbaa !34
  %tobool.not.i1.i.i33 = icmp eq i8 %14, 0
  br i1 %tobool.not.i1.i.i33, label %if.end.i.i.i39, label %if.then.i2.i.i34

if.then.i2.i.i34:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31
  %arrayidx.i.i.i35 = getelementptr inbounds nuw i8, ptr %13, i64 67
  %15 = load i8, ptr %arrayidx.i.i.i35, align 1, !tbaa !40
  br label %for.inc36.sink.split

if.end.i.i.i39:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %13)
  %vtable.i.i.i40 = load ptr, ptr %13, align 8, !tbaa !14
  %vfn.i.i.i41 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i40, i64 48
  %16 = load ptr, ptr %vfn.i.i.i41, align 8
  %call.i.i.i42 = call noundef signext i8 %16(ptr noundef nonnull align 8 dereferenceable(570) %13, i8 noundef signext 10)
  br label %for.inc36.sink.split

if.else28:                                        ; preds = %if.else
  %17 = call double @llvm.fabs.f64(double %sub20)
  %or.cond = fcmp ugt double %17, 5.000000e-02
  br i1 %or.cond, label %for.inc36, label %if.then31

if.then31:                                        ; preds = %if.else28
  %call1.i21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 4)
  %vtable.i45 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i46 = getelementptr i8, ptr %vtable.i45, i64 -24
  %vbase.offset.i47 = load i64, ptr %vbase.offset.ptr.i46, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i47
  %18 = load ptr, ptr %gep, align 8, !tbaa !16
  %tobool.not.i.i.i50 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i50, label %if.then.i.i.i63, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51

if.then.i.i.i63:                                  ; preds = %if.then31
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51: ; preds = %if.then31
  %_M_widen_ok.i.i.i52 = getelementptr inbounds nuw i8, ptr %18, i64 56
  %19 = load i8, ptr %_M_widen_ok.i.i.i52, align 8, !tbaa !34
  %tobool.not.i1.i.i53 = icmp eq i8 %19, 0
  br i1 %tobool.not.i1.i.i53, label %if.end.i.i.i59, label %if.then.i2.i.i54

if.then.i2.i.i54:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51
  %arrayidx.i.i.i55 = getelementptr inbounds nuw i8, ptr %18, i64 67
  %20 = load i8, ptr %arrayidx.i.i.i55, align 1, !tbaa !40
  br label %for.inc36.sink.split

if.end.i.i.i59:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %18)
  %vtable.i.i.i60 = load ptr, ptr %18, align 8, !tbaa !14
  %vfn.i.i.i61 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i60, i64 48
  %21 = load ptr, ptr %vfn.i.i.i61, align 8
  %call.i.i.i62 = call noundef signext i8 %21(ptr noundef nonnull align 8 dereferenceable(570) %18, i8 noundef signext 10)
  br label %for.inc36.sink.split

for.inc36.sink.split:                             ; preds = %if.end.i.i.i59, %if.then.i2.i.i54, %if.end.i.i.i39, %if.then.i2.i.i34, %if.end.i.i.i, %if.then.i2.i.i
  %retval.0.i.i.i.sink = phi i8 [ %11, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ], [ %15, %if.then.i2.i.i34 ], [ %call.i.i.i42, %if.end.i.i.i39 ], [ %20, %if.then.i2.i.i54 ], [ %call.i.i.i62, %if.end.i.i.i59 ]
  %call1.i23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i.sink)
  %call.i.i24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i23)
  br label %for.inc36

for.inc36:                                        ; preds = %for.inc36.sink.split, %if.else28
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %22 = load i32, ptr %n, align 4, !tbaa !9
  %sub15 = add nsw i32 %22, -1
  %23 = sext i32 %sub15 to i64
  %cmp16 = icmp slt i64 %indvars.iv.next75, %23
  br i1 %cmp16, label %for.body17, label %for.end38, !llvm.loop !41

for.end38:                                        ; preds = %for.inc36, %entry, %for.cond14.preheader
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %extra) #5
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %extra2) #5
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %extra1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cocktail2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cocktail1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !8, i64 0}
!16 = !{!17, !31, i64 240}
!17 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !18, i64 0, !28, i64 216, !7, i64 224, !29, i64 225, !30, i64 232, !31, i64 240, !32, i64 248, !33, i64 256}
!18 = !{!"_ZTSSt8ios_base", !19, i64 8, !19, i64 16, !20, i64 24, !21, i64 28, !21, i64 32, !22, i64 40, !24, i64 48, !7, i64 64, !10, i64 192, !25, i64 200, !26, i64 208}
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
!36 = !{!"_ZTSNSt6locale5facetE", !10, i64 8}
!37 = !{!"p1 _ZTS15__locale_struct", !23, i64 0}
!38 = !{!"p1 int", !23, i64 0}
!39 = !{!"p1 short", !23, i64 0}
!40 = !{!7, !7, i64 0}
!41 = distinct !{!41, !12, !13}
