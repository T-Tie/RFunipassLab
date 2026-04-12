; ModuleID = '<stdin>'
source_filename = "/tmp/tmp290nbhih.cpp"
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

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %year) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m1) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m2) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x) #9
  store i32 0, ptr %x, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %a) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %b) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc53, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end55

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %year)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 4 dereferenceable(4) %m1)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 4 dereferenceable(4) %m2)
  %2 = load i32, ptr %m1, align 4, !tbaa !5
  %3 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %2, %3
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 %2, ptr %a, align 4, !tbaa !5
  store i32 %3, ptr %b, align 4, !tbaa !5
  br label %if.end7

if.else:                                          ; preds = %for.body
  %cmp5 = icmp slt i32 %3, %2
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.else
  store i32 %3, ptr %a, align 4, !tbaa !5
  store i32 %2, ptr %b, align 4, !tbaa !5
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6, %if.then
  %4 = load i32, ptr %year, align 4, !tbaa !5
  %rem = srem i32 %4, 4
  %cmp8 = icmp eq i32 %rem, 0
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end7
  %rem9 = srem i32 %4, 100
  %cmp10 = icmp ne i32 %rem9, 0
  br i1 %cmp10, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end7
  %rem11 = srem i32 %4, 400
  %cmp12 = icmp eq i32 %rem11, 0
  br i1 %cmp12, label %if.then13, label %if.else29

if.then13:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %5 = load i32, ptr %a, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %if.then13
  %.sink10 = phi i32 [ %5, %if.then13 ], [ %inc, %for.inc ]
  %6 = load i32, ptr %b, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %.sink10, %6
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond14
  switch i32 %.sink10, label %sw.default [
    i32 1, label %for.inc
    i32 3, label %for.inc
    i32 5, label %for.inc
    i32 7, label %for.inc
    i32 8, label %for.inc
    i32 10, label %for.inc
    i32 12, label %for.inc
    i32 2, label %sw.bb17
  ]

sw.bb17:                                          ; preds = %for.body16
  br label %for.inc

sw.default:                                       ; preds = %for.body16
  br label %for.inc

for.inc:                                          ; preds = %sw.bb17, %sw.default, %for.body16, %for.body16, %for.body16, %for.body16, %for.body16, %for.body16, %for.body16
  %.sink3 = phi i32 [ 29, %sw.bb17 ], [ 30, %sw.default ], [ 31, %for.body16 ], [ 31, %for.body16 ], [ 31, %for.body16 ], [ 31, %for.body16 ], [ 31, %for.body16 ], [ 31, %for.body16 ], [ 31, %for.body16 ]
  %7 = load i32, ptr %x, align 4, !tbaa !5
  %add18 = add nsw i32 %7, %.sink3
  store i32 %add18, ptr %x, align 4, !tbaa !5
  %inc = add nsw i32 %.sink10, 1
  br label %for.cond14, !llvm.loop !9

for.end:                                          ; preds = %for.cond14
  %8 = load i32, ptr %x, align 4, !tbaa !5
  %rem20 = srem i32 %8, 7
  %cmp21 = icmp eq i32 %rem20, 0
  br i1 %cmp21, label %for.inc53, label %if.else25

if.else25:                                        ; preds = %for.end
  br label %for.inc53

if.else29:                                        ; preds = %lor.lhs.false
  %9 = load i32, ptr %a, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc40, %if.else29
  %.sink = phi i32 [ %9, %if.else29 ], [ %inc41, %for.inc40 ]
  %10 = load i32, ptr %b, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %.sink, %10
  br i1 %cmp31, label %for.body32, label %for.end42

for.body32:                                       ; preds = %for.cond30
  switch i32 %.sink, label %sw.default37 [
    i32 1, label %for.inc40
    i32 3, label %for.inc40
    i32 5, label %for.inc40
    i32 7, label %for.inc40
    i32 8, label %for.inc40
    i32 10, label %for.inc40
    i32 12, label %for.inc40
    i32 2, label %sw.bb35
  ]

sw.bb35:                                          ; preds = %for.body32
  br label %for.inc40

sw.default37:                                     ; preds = %for.body32
  br label %for.inc40

for.inc40:                                        ; preds = %sw.bb35, %sw.default37, %for.body32, %for.body32, %for.body32, %for.body32, %for.body32, %for.body32, %for.body32
  %.sink1 = phi i32 [ 28, %sw.bb35 ], [ 30, %sw.default37 ], [ 31, %for.body32 ], [ 31, %for.body32 ], [ 31, %for.body32 ], [ 31, %for.body32 ], [ 31, %for.body32 ], [ 31, %for.body32 ], [ 31, %for.body32 ]
  %11 = load i32, ptr %x, align 4, !tbaa !5
  %add36 = add nsw i32 %11, %.sink1
  store i32 %add36, ptr %x, align 4, !tbaa !5
  %inc41 = add nsw i32 %.sink, 1
  br label %for.cond30, !llvm.loop !12

for.end42:                                        ; preds = %for.cond30
  %12 = load i32, ptr %x, align 4, !tbaa !5
  %rem43 = srem i32 %12, 7
  %cmp44 = icmp eq i32 %rem43, 0
  br i1 %cmp44, label %for.inc53, label %if.else48

if.else48:                                        ; preds = %for.end42
  br label %for.inc53

for.inc53:                                        ; preds = %for.end, %if.else25, %for.end42, %if.else48
  %.str.1.sink.sink = phi ptr [ @.str.1, %if.else25 ], [ @.str, %for.end ], [ @.str.1, %if.else48 ], [ @.str, %for.end42 ]
  %call49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull dereferenceable(3) %.str.1.sink.sink)
  %call50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call49, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr %x, align 4, !tbaa !5
  %inc54 = add nsw i32 %0, 1
  store i32 %inc54, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end55:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %b) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %a) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m2) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m1) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %year) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) local_unnamed_addr #5 comdat align 2 {
entry:
  %call = call i64 @strlen(ptr noundef %__s) #10
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) local_unnamed_addr #6 comdat {
entry:
  %or = or i32 %__a, %__b
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
declare noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #5 align 2

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) local_unnamed_addr #3 comdat {
entry:
  %tobool = icmp ne ptr %__f, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #11
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #4 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !14
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !22
  store i8 %1, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !23
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !25
  %call = call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  store i8 %call, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i8, ptr %retval, align 1
  ret i8 %3
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #8

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

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
!14 = !{!15, !7, i64 56}
!15 = !{!"_ZTSSt5ctypeIcE", !16, i64 0, !17, i64 16, !19, i64 24, !20, i64 32, !20, i64 40, !21, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!16 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!17 = !{!"p1 _ZTS15__locale_struct", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"bool", !7, i64 0}
!20 = !{!"p1 int", !18, i64 0}
!21 = !{!"p1 short", !18, i64 0}
!22 = !{!7, !7, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !8, i64 0}
!25 = !{}
