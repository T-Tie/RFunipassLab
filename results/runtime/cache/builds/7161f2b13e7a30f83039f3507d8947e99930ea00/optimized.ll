; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_t3dpcv3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %t = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %t)
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load i32, ptr %t, align 4, !tbaa !5
  %cmp = icmp sge i32 %0, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %call2 = call noundef i32 @_Z5qufeni(i32 noundef %1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %i.0 = phi i32 [ 2, %while.body ], [ %inc, %for.inc ]
  %sum.0 = phi i32 [ 1, %while.body ], [ %add, %for.inc ]
  %cmp3 = icmp sle i32 %i.0, %call2
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %call4 = call noundef i32 @_Z3numiii(i32 noundef %2, i32 noundef %i.0, i32 noundef 2)
  %add = add nsw i32 %sum.0, %call4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %call6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call5, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %3 = load i32, ptr %t, align 4, !tbaa !5
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %t, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z5qufeni(i32 noundef %n) local_unnamed_addr #3 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %phiofops = phi i32 [ 0, %entry ], [ %j.0, %for.inc ]
  %j.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %call = call noundef i32 @_Z5powerii(i32 noundef 2, i32 noundef %j.0)
  %cmp = icmp sgt i32 %call, %n
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  ret i32 %phiofops

if.end:                                           ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1
  br label %for.cond, !llvm.loop !13
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z3numiii(i32 noundef %n, i32 noundef %g, i32 noundef %h) local_unnamed_addr #3 {
entry:
  %a = alloca [20000 x i32], align 16
  %cmp = icmp eq i32 %g, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %cmp1 = icmp sge i32 %n, %h
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 80000, ptr %a) #7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %i.0 = phi i32 [ %h, %if.end ], [ %inc6, %for.inc ]
  %j.0 = phi i32 [ 0, %if.end ], [ %j.1, %for.inc ]
  %cmp2 = icmp slt i32 %i.0, %n
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %n, %i.0
  %cmp3 = icmp eq i32 %rem, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.body
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom
  store i32 %i.0, ptr %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %j.0, 1
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %for.body
  %j.1 = phi i32 [ %inc, %if.then4 ], [ %j.0, %for.body ]
  br label %for.inc

for.inc:                                          ; preds = %if.end5
  %inc6 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %cmp7 = icmp eq i32 %j.0, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.end
  br label %cleanup

if.else:                                          ; preds = %for.end
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc16, %if.else
  %i.1 = phi i32 [ 0, %if.else ], [ %inc17, %for.inc16 ]
  %count.0 = phi i32 [ 0, %if.else ], [ %add, %for.inc16 ]
  %cmp10 = icmp slt i32 %i.1, %j.0
  br i1 %cmp10, label %for.body11, label %for.end18

for.body11:                                       ; preds = %for.cond9
  %idxprom12 = sext i32 %i.1 to i64
  %arrayidx13 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom12
  %0 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %div = sdiv i32 %n, %0
  %sub = sub nsw i32 %g, 1
  %call = call noundef i32 @_Z3numiii(i32 noundef %div, i32 noundef %sub, i32 noundef %0)
  %add = add nsw i32 %count.0, %call
  br label %for.inc16

for.inc16:                                        ; preds = %for.body11
  %inc17 = add nsw i32 %i.1, 1
  br label %for.cond9, !llvm.loop !15

for.end18:                                        ; preds = %for.cond9
  br label %cleanup

cleanup:                                          ; preds = %for.end18, %if.then8
  %retval.1 = phi i32 [ 0, %if.then8 ], [ %count.0, %for.end18 ]
  call void @llvm.lifetime.end.p0(i64 80000, ptr %a) #7
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %retval.1, %cleanup ]
  ret i32 %retval.0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) local_unnamed_addr #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %__pf(ptr noundef nonnull align 8 dereferenceable(8) %this)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %vtable = load ptr, ptr %__os, align 8, !tbaa !16
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %__os, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %__os, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z5powerii(i32 noundef %a, i32 noundef %b) local_unnamed_addr #5 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %sum.0 = phi i32 [ 1, %entry ], [ %mul, %for.inc ]
  %k.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %cmp = icmp sle i32 %k.0, %b
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %sum.0, %a
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  ret i32 %sum.0
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) local_unnamed_addr #4 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %__os)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) local_unnamed_addr #3 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !19
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %__c)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) local_unnamed_addr #4 comdat {
entry:
  %tobool = icmp ne ptr %__f, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #3 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !37
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !43
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !16
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8
  %call = call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !8, i64 0}
!18 = distinct !{!18, !10, !11}
!19 = !{!20, !34, i64 240}
!20 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !21, i64 0, !31, i64 216, !7, i64 224, !32, i64 225, !33, i64 232, !34, i64 240, !35, i64 248, !36, i64 256}
!21 = !{!"_ZTSSt8ios_base", !22, i64 8, !22, i64 16, !23, i64 24, !24, i64 28, !24, i64 32, !25, i64 40, !27, i64 48, !7, i64 64, !6, i64 192, !28, i64 200, !29, i64 208}
!22 = !{!"long", !7, i64 0}
!23 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!24 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!25 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !26, i64 0}
!26 = !{!"any pointer", !7, i64 0}
!27 = !{!"_ZTSNSt8ios_base6_WordsE", !26, i64 0, !22, i64 8}
!28 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !26, i64 0}
!29 = !{!"_ZTSSt6locale", !30, i64 0}
!30 = !{!"p1 _ZTSNSt6locale5_ImplE", !26, i64 0}
!31 = !{!"p1 _ZTSSo", !26, i64 0}
!32 = !{!"bool", !7, i64 0}
!33 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !26, i64 0}
!34 = !{!"p1 _ZTSSt5ctypeIcE", !26, i64 0}
!35 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !26, i64 0}
!36 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !26, i64 0}
!37 = !{!38, !7, i64 56}
!38 = !{!"_ZTSSt5ctypeIcE", !39, i64 0, !40, i64 16, !32, i64 24, !41, i64 32, !41, i64 40, !42, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!39 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!40 = !{!"p1 _ZTS15__locale_struct", !26, i64 0}
!41 = !{!"p1 int", !26, i64 0}
!42 = !{!"p1 short", !26, i64 0}
!43 = !{!7, !7, i64 0}
