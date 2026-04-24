; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8v7woiq6.cpp"
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
@.str = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %mona = alloca i32, align 4
  %monb = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %year) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mona) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %monb) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not37 = icmp slt i32 %0, 1
  br i1 %cmp.not37, label %for.end29, label %for.body

for.body:                                         ; preds = %entry, %for.inc27
  %k.038 = phi i32 [ %inc28, %for.inc27 ], [ 1, %entry ]
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %year)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 4 dereferenceable(4) %mona)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 4 dereferenceable(4) %monb)
  %1 = load i32, ptr %year, align 4, !tbaa !5
  %2 = and i32 %1, 3
  %cmp4 = icmp ne i32 %2, 0
  %rem5 = srem i32 %1, 100
  %cmp6.not = icmp eq i32 %rem5, 0
  %or.cond = or i1 %cmp4, %cmp6.not
  br i1 %or.cond, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %for.body
  %rem7 = srem i32 %1, 400
  %cmp8 = icmp eq i32 %rem7, 0
  %3 = select i1 %cmp8, i32 29, i32 28
  br label %lor.end

lor.end:                                          ; preds = %for.body, %lor.rhs
  %conv = phi i32 [ %3, %lor.rhs ], [ 29, %for.body ]
  %4 = load i32, ptr %mona, align 4, !tbaa !5
  %5 = load i32, ptr %monb, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %4, %5
  br i1 %cmp9, label %if.end, label %if.else

if.else:                                          ; preds = %lor.end
  store i32 %5, ptr %mona, align 4, !tbaa !5
  store i32 %4, ptr %monb, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %lor.end, %if.else
  %6 = phi i32 [ %5, %lor.end ], [ %4, %if.else ]
  %7 = phi i32 [ %4, %lor.end ], [ %5, %if.else ]
  %cmp11.not.not33 = icmp slt i32 %7, %6
  br i1 %cmp11.not.not33, label %for.body12, label %if.then20

for.body12:                                       ; preds = %if.end, %for.inc
  %days.035 = phi i32 [ %days.1, %for.inc ], [ 0, %if.end ]
  %mon.034 = phi i32 [ %inc, %for.inc ], [ %7, %if.end ]
  switch i32 %mon.034, label %for.inc [
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 5, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 10, label %sw.bb
    i32 12, label %sw.bb
    i32 4, label %sw.bb13
    i32 6, label %sw.bb13
    i32 9, label %sw.bb13
    i32 11, label %sw.bb13
    i32 2, label %sw.bb15
  ]

sw.bb:                                            ; preds = %for.body12, %for.body12, %for.body12, %for.body12, %for.body12, %for.body12, %for.body12
  %add = add nsw i32 %days.035, 31
  br label %for.inc

sw.bb13:                                          ; preds = %for.body12, %for.body12, %for.body12, %for.body12
  %add14 = add nsw i32 %days.035, 30
  br label %for.inc

sw.bb15:                                          ; preds = %for.body12
  %add17 = add nsw i32 %days.035, %conv
  br label %for.inc

for.inc:                                          ; preds = %for.body12, %sw.bb, %sw.bb13, %sw.bb15
  %days.1 = phi i32 [ %days.035, %for.body12 ], [ %add, %sw.bb ], [ %add14, %sw.bb13 ], [ %add17, %sw.bb15 ]
  %inc = add nsw i32 %mon.034, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.end, label %for.body12, !llvm.loop !9

for.end:                                          ; preds = %for.inc
  %8 = srem i32 %days.1, 7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %if.then20, label %if.else23

if.then20:                                        ; preds = %if.end, %for.end
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep36 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i
  %10 = load ptr, ptr %gep36, align 8, !tbaa !14
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then20
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then20
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 56
  %11 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !32
  %tobool.not.i1.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 67
  %12 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !38
  br label %for.inc27

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %10)
  %vtable.i.i.i = load ptr, ptr %10, align 8, !tbaa !12
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %13 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %13(ptr noundef nonnull align 8 dereferenceable(570) %10, i8 noundef signext 10)
  br label %for.inc27

if.else23:                                        ; preds = %for.end
  %call1.i9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2)
  %vtable.i13 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %vbase.offset.ptr.i14 = getelementptr i8, ptr %vtable.i13, i64 -24
  %vbase.offset.i15 = load i64, ptr %vbase.offset.ptr.i14, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i15
  %14 = load ptr, ptr %gep, align 8, !tbaa !14
  %tobool.not.i.i.i18 = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i18, label %if.then.i.i.i31, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19

if.then.i.i.i31:                                  ; preds = %if.else23
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19: ; preds = %if.else23
  %_M_widen_ok.i.i.i20 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %15 = load i8, ptr %_M_widen_ok.i.i.i20, align 8, !tbaa !32
  %tobool.not.i1.i.i21 = icmp eq i8 %15, 0
  br i1 %tobool.not.i1.i.i21, label %if.end.i.i.i27, label %if.then.i2.i.i22

if.then.i2.i.i22:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19
  %arrayidx.i.i.i23 = getelementptr inbounds nuw i8, ptr %14, i64 67
  %16 = load i8, ptr %arrayidx.i.i.i23, align 1, !tbaa !38
  br label %for.inc27

if.end.i.i.i27:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %14)
  %vtable.i.i.i28 = load ptr, ptr %14, align 8, !tbaa !12
  %vfn.i.i.i29 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i28, i64 48
  %17 = load ptr, ptr %vfn.i.i.i29, align 8
  %call.i.i.i30 = call noundef signext i8 %17(ptr noundef nonnull align 8 dereferenceable(570) %14, i8 noundef signext 10)
  br label %for.inc27

for.inc27:                                        ; preds = %if.end.i.i.i27, %if.then.i2.i.i22, %if.end.i.i.i, %if.then.i2.i.i
  %retval.0.i.i.i.sink = phi i8 [ %12, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ], [ %16, %if.then.i2.i.i22 ], [ %call.i.i.i30, %if.end.i.i.i27 ]
  %call1.i11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i.sink)
  %call.i.i12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i11)
  %inc28 = add nuw nsw i32 %k.038, 1
  %18 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %k.038, %18
  br i1 %cmp.not.not, label %for.body, label %for.end29, !llvm.loop !39

for.end29:                                        ; preds = %for.inc27, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %monb) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mona) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %year) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !8, i64 0}
!14 = !{!15, !29, i64 240}
!15 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !16, i64 0, !26, i64 216, !7, i64 224, !27, i64 225, !28, i64 232, !29, i64 240, !30, i64 248, !31, i64 256}
!16 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !18, i64 24, !19, i64 28, !19, i64 32, !20, i64 40, !22, i64 48, !7, i64 64, !6, i64 192, !23, i64 200, !24, i64 208}
!17 = !{!"long", !7, i64 0}
!18 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!19 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!20 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !21, i64 0}
!21 = !{!"any pointer", !7, i64 0}
!22 = !{!"_ZTSNSt8ios_base6_WordsE", !21, i64 0, !17, i64 8}
!23 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !21, i64 0}
!24 = !{!"_ZTSSt6locale", !25, i64 0}
!25 = !{!"p1 _ZTSNSt6locale5_ImplE", !21, i64 0}
!26 = !{!"p1 _ZTSSo", !21, i64 0}
!27 = !{!"bool", !7, i64 0}
!28 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !21, i64 0}
!29 = !{!"p1 _ZTSSt5ctypeIcE", !21, i64 0}
!30 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !21, i64 0}
!31 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !21, i64 0}
!32 = !{!33, !7, i64 56}
!33 = !{!"_ZTSSt5ctypeIcE", !34, i64 0, !35, i64 16, !27, i64 24, !36, i64 32, !36, i64 40, !37, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!34 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!35 = !{!"p1 _ZTS15__locale_struct", !21, i64 0}
!36 = !{!"p1 int", !21, i64 0}
!37 = !{!"p1 short", !21, i64 0}
!38 = !{!7, !7, i64 0}
!39 = distinct !{!39, !10, !11}
