; ModuleID = '<stdin>'
source_filename = "/tmp/tmpub0e10v3.cpp"
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

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z3funii(i32 noundef %m, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %n, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %i.0 = phi i32 [ 2, %if.then ], [ %inc, %for.inc ]
  %sum.0 = phi i32 [ 1, %if.then ], [ %sum.1, %for.inc ]
  %mul = mul nsw i32 %i.0, %i.0
  %cmp1 = icmp sle i32 %mul, %m
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %m, %i.0
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %for.body
  %div = sdiv i32 %m, %i.0
  %call = call noundef i32 @_Z3funii(i32 noundef %div, i32 noundef %i.0)
  %add = add nsw i32 %sum.0, %call
  br label %if.end

if.end:                                           ; preds = %if.then3, %for.body
  %sum.1 = phi i32 [ %add, %if.then3 ], [ %sum.0, %for.body ]
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %if.end18

if.else:                                          ; preds = %entry
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc15, %if.else
  %i.1 = phi i32 [ %n, %if.else ], [ %inc16, %for.inc15 ]
  %sum.3 = phi i32 [ 1, %if.else ], [ %sum.4, %for.inc15 ]
  %mul5 = mul nsw i32 %i.1, %i.1
  %cmp6 = icmp sle i32 %mul5, %m
  br i1 %cmp6, label %for.body7, label %for.end17

for.body7:                                        ; preds = %for.cond4
  %rem8 = srem i32 %m, %i.1
  %cmp9 = icmp eq i32 %rem8, 0
  br i1 %cmp9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %for.body7
  %div11 = sdiv i32 %m, %i.1
  %call12 = call noundef i32 @_Z3funii(i32 noundef %div11, i32 noundef %i.1)
  %add13 = add nsw i32 %sum.3, %call12
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %for.body7
  %sum.4 = phi i32 [ %add13, %if.then10 ], [ %sum.3, %for.body7 ]
  br label %for.inc15

for.inc15:                                        ; preds = %if.end14
  %inc16 = add nsw i32 %i.1, 1
  br label %for.cond4, !llvm.loop !8

for.end17:                                        ; preds = %for.cond4
  br label %if.end18

if.end18:                                         ; preds = %for.end17, %for.end
  %sum.2 = phi i32 [ %sum.0, %for.end ], [ %sum.3, %for.end17 ]
  ret i32 %sum.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %b = alloca i32, align 4
  %a = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #6
  call void @llvm.lifetime.start.p0(i64 4000, ptr %a) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !9
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %b)
  %1 = load i32, ptr %b, align 4, !tbaa !9
  %call2 = call noundef i32 @_Z3funii(i32 noundef %1, i32 noundef 1)
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr %a, i64 0, i64 %idxprom
  store i32 %call2, ptr %arrayidx, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc11, %for.inc10 ]
  %2 = load i32, ptr %n, align 4, !tbaa !9
  %cmp4 = icmp slt i32 %i.1, %2
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %idxprom6 = sext i32 %i.1 to i64
  %arrayidx7 = getelementptr inbounds [1000 x i32], ptr %a, i64 0, i64 %idxprom6
  %3 = load i32, ptr %arrayidx7, align 4, !tbaa !9
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %3)
  %call9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc10

for.inc10:                                        ; preds = %for.body5
  %inc11 = add nsw i32 %i.1, 1
  br label %for.cond3, !llvm.loop !14

for.end12:                                        ; preds = %for.cond3
  call void @llvm.lifetime.end.p0(i64 4000, ptr %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) local_unnamed_addr #0 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %__pf(ptr noundef nonnull align 8 dereferenceable(8) %this)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %vtable = load ptr, ptr %__os, align 8, !tbaa !15
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %__os, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %__os, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) local_unnamed_addr #4 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %__os)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) local_unnamed_addr #0 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !17
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %__c)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) local_unnamed_addr #4 comdat {
entry:
  %tobool = icmp ne ptr %__f, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #0 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !35
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !41
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !15
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8
  %call = call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !6, !7}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C++ TBAA"}
!13 = distinct !{!13, !6, !7}
!14 = distinct !{!14, !6, !7}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !12, i64 0}
!17 = !{!18, !32, i64 240}
!18 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !19, i64 0, !29, i64 216, !11, i64 224, !30, i64 225, !31, i64 232, !32, i64 240, !33, i64 248, !34, i64 256}
!19 = !{!"_ZTSSt8ios_base", !20, i64 8, !20, i64 16, !21, i64 24, !22, i64 28, !22, i64 32, !23, i64 40, !25, i64 48, !11, i64 64, !10, i64 192, !26, i64 200, !27, i64 208}
!20 = !{!"long", !11, i64 0}
!21 = !{!"_ZTSSt13_Ios_Fmtflags", !11, i64 0}
!22 = !{!"_ZTSSt12_Ios_Iostate", !11, i64 0}
!23 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !24, i64 0}
!24 = !{!"any pointer", !11, i64 0}
!25 = !{!"_ZTSNSt8ios_base6_WordsE", !24, i64 0, !20, i64 8}
!26 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !24, i64 0}
!27 = !{!"_ZTSSt6locale", !28, i64 0}
!28 = !{!"p1 _ZTSNSt6locale5_ImplE", !24, i64 0}
!29 = !{!"p1 _ZTSSo", !24, i64 0}
!30 = !{!"bool", !11, i64 0}
!31 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !24, i64 0}
!32 = !{!"p1 _ZTSSt5ctypeIcE", !24, i64 0}
!33 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !24, i64 0}
!34 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !24, i64 0}
!35 = !{!36, !11, i64 56}
!36 = !{!"_ZTSSt5ctypeIcE", !37, i64 0, !38, i64 16, !30, i64 24, !39, i64 32, !39, i64 40, !40, i64 48, !11, i64 56, !11, i64 57, !11, i64 313, !11, i64 569}
!37 = !{!"_ZTSNSt6locale5facetE", !10, i64 8}
!38 = !{!"p1 _ZTS15__locale_struct", !24, i64 0}
!39 = !{!"p1 int", !24, i64 0}
!40 = !{!"p1 short", !24, i64 0}
!41 = !{!11, !11, i64 0}
