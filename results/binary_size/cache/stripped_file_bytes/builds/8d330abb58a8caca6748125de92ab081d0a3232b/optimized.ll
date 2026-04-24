; ModuleID = '<stdin>'
source_filename = "/tmp/tmp2gzhtx6j.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@num = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z3sumii(i32 noundef %a, i32 noundef %i) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %a, 1
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %cmp1.not8 = icmp sgt i32 %i, %a
  br i1 %cmp1.not8, label %if.end5, label %while.body

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @num, align 4, !tbaa !5
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @num, align 4, !tbaa !5
  br label %if.end5

while.body:                                       ; preds = %while.cond.preheader, %if.end
  %i.addr.09 = phi i32 [ %inc4, %if.end ], [ %i, %while.cond.preheader ]
  %rem = srem i32 %a, %i.addr.09
  %div = sdiv i32 %a, %i.addr.09
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %while.body
  %call = tail call noundef i32 @_Z3sumii(i32 noundef %div, i32 noundef %i.addr.09)
  br label %if.end

if.end:                                           ; preds = %if.then3, %while.body
  %inc4 = add i32 %i.addr.09, 1
  %exitcond.not = icmp eq i32 %i.addr.09, %a
  br i1 %exitcond.not, label %if.end5, label %while.body, !llvm.loop !9

if.end5:                                          ; preds = %if.end, %while.cond.preheader, %if.then
  %1 = load i32, ptr @num, align 4, !tbaa !5
  ret i32 %1
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %a = alloca i32, align 4
  %t = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %t)
  %0 = load i32, ptr %t, align 4, !tbaa !5
  %cmp11 = icmp sgt i32 %0, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %j.012 = phi i32 [ %inc8, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 0, %entry ]
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %a)
  %1 = load i32, ptr %a, align 4, !tbaa !5
  %cmp2.not8 = icmp slt i32 %1, 4
  br i1 %cmp2.not8, label %while.end, label %while.body

while.body:                                       ; preds = %for.body, %if.end
  %2 = phi i32 [ %4, %if.end ], [ %1, %for.body ]
  %count.010 = phi i32 [ %count.1, %if.end ], [ 1, %for.body ]
  %i.09 = phi i32 [ %inc, %if.end ], [ 2, %for.body ]
  %rem = srem i32 %2, %i.09
  %div4 = sdiv i32 %2, %i.09
  %cmp3 = icmp eq i32 %rem, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, ptr @num, align 4, !tbaa !5
  %call5 = call noundef i32 @_Z3sumii(i32 noundef %div4, i32 noundef %i.09)
  %3 = load i32, ptr @num, align 4, !tbaa !5
  %add = add nsw i32 %3, %count.010
  %.pre = load i32, ptr %a, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %4 = phi i32 [ %.pre, %if.then ], [ %2, %while.body ]
  %count.1 = phi i32 [ %add, %if.then ], [ %count.010, %while.body ]
  %inc = add nuw nsw i32 %i.09, 1
  %div = sdiv i32 %4, 2
  %cmp2.not.not = icmp slt i32 %i.09, %div
  br i1 %cmp2.not.not, label %while.body, label %while.end, !llvm.loop !12

while.end:                                        ; preds = %if.end, %for.body
  %count.0.lcssa = phi i32 [ 1, %for.body ], [ %count.1, %if.end ]
  %call6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %count.0.lcssa)
  %vtable.i = load ptr, ptr %call6, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call6, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %5 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !15
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %while.end
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %while.end
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  %6 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !33
  %tobool.not.i1.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 67
  %7 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !39
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %5)
  %vtable.i.i.i = load ptr, ptr %5, align 8, !tbaa !13
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %8 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %8(ptr noundef nonnull align 8 dereferenceable(570) %5, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %7, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call6, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc8 = add nuw nsw i32 %j.012, 1
  %9 = load i32, ptr %t, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc8, %9
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !40

for.end:                                          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

attributes #0 = { mustprogress nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
!15 = !{!16, !30, i64 240}
!16 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !17, i64 0, !27, i64 216, !7, i64 224, !28, i64 225, !29, i64 232, !30, i64 240, !31, i64 248, !32, i64 256}
!17 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !19, i64 24, !20, i64 28, !20, i64 32, !21, i64 40, !23, i64 48, !7, i64 64, !6, i64 192, !24, i64 200, !25, i64 208}
!18 = !{!"long", !7, i64 0}
!19 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!20 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!21 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = !{!"_ZTSNSt8ios_base6_WordsE", !22, i64 0, !18, i64 8}
!24 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !22, i64 0}
!25 = !{!"_ZTSSt6locale", !26, i64 0}
!26 = !{!"p1 _ZTSNSt6locale5_ImplE", !22, i64 0}
!27 = !{!"p1 _ZTSSo", !22, i64 0}
!28 = !{!"bool", !7, i64 0}
!29 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !22, i64 0}
!30 = !{!"p1 _ZTSSt5ctypeIcE", !22, i64 0}
!31 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!32 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!33 = !{!34, !7, i64 56}
!34 = !{!"_ZTSSt5ctypeIcE", !35, i64 0, !36, i64 16, !28, i64 24, !37, i64 32, !37, i64 40, !38, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!35 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!36 = !{!"p1 _ZTS15__locale_struct", !22, i64 0}
!37 = !{!"p1 int", !22, i64 0}
!38 = !{!"p1 short", !22, i64 0}
!39 = !{!7, !7, i64 0}
!40 = distinct !{!40, !10, !11}
