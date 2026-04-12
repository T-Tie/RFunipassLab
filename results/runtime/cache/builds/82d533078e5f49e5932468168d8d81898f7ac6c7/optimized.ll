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
define dso_local noundef i32 @main() #0 {
entry:
  %t = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %t) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %t)
  %.pr = load i32, ptr %t, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = phi i32 [ %dec, %for.end ], [ %.pr, %entry ]
  %cmp = icmp sge i32 %0, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %n) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %sum) #9
  store i32 1, ptr %sum, align 4, !tbaa !5
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %call2 = call noundef range(i32 -2147483648, 2147483647) i32 @_Z5qufeni(i32 noundef %1) #9
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %2, %call2
  br i1 %cmp3, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %3 = load i32, ptr %sum, align 4, !tbaa !5
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %call4 = call noundef i32 @_Z3numiii(i32 noundef %4, i32 noundef %2, i32 noundef 2) #9
  %add = add nsw i32 %3, %call4
  store i32 %add, ptr %sum, align 4, !tbaa !5
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %5 = load i32, ptr %sum, align 4, !tbaa !5
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  %call6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call5, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %6 = load i32, ptr %t, align 4, !tbaa !5
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr %t, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %sum) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #9
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %t) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z5qufeni(i32 noundef %n) #3 {
entry:
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #8
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %j, align 4, !tbaa !5
  %call = call noundef i32 @_Z5powerii(i32 noundef 2, i32 noundef %0) #10
  %cmp = icmp sgt i32 %call, %n
  br i1 %cmp, label %if.then, label %for.inc

if.then:                                          ; preds = %for.cond
  %sub = sub nsw i32 %0, 1
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %j) #8
  ret i32 %sub

for.inc:                                          ; preds = %for.cond
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z3numiii(i32 noundef %n, i32 noundef %g, i32 noundef %h) #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  %a = alloca [20000 x i32], align 16
  %cmp = icmp eq i32 %g, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %cmp1 = icmp sge i32 %n, %h
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #8
  store i32 0, ptr %j, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %count) #8
  store i32 0, ptr %count, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 80000, ptr noundef align 16 %a) #8
  store i32 %h, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %0, %n
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %n, %0
  %cmp3 = icmp eq i32 %rem, 0
  br i1 %cmp3, label %if.then4, label %for.inc

if.then4:                                         ; preds = %for.body
  %1 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom
  store i32 %0, ptr %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then4
  %inc6 = add nsw i32 %0, 1
  store i32 %inc6, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %2, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.end
  store i32 0, ptr %retval, align 4
  br label %cleanup

if.else:                                          ; preds = %for.end
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc16, %if.else
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %3, %2
  br i1 %cmp10, label %for.inc16, label %for.end18

for.inc16:                                        ; preds = %for.cond9
  %4 = load i32, ptr %count, align 4, !tbaa !5
  %idxprom12 = sext i32 %3 to i64
  %arrayidx13 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom12
  %5 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %div = sdiv i32 %n, %5
  %sub = sub nsw i32 %g, 1
  %call = call noundef i32 @_Z3numiii(i32 noundef %div, i32 noundef %sub, i32 noundef %5) #11
  %add = add nsw i32 %4, %call
  store i32 %add, ptr %count, align 4, !tbaa !5
  %inc17 = add nsw i32 %3, 1
  store i32 %inc17, ptr %i, align 4, !tbaa !5
  br label %for.cond9, !llvm.loop !15

for.end18:                                        ; preds = %for.cond9
  %6 = load i32, ptr %count, align 4, !tbaa !5
  store i32 %6, ptr %retval, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end18, %if.then8
  call void @llvm.lifetime.end.p0(i64 noundef 80000, ptr noundef %a) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %count) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #8
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #5 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %__pf(ptr noundef nonnull align 8 dereferenceable(8) %this)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #6 {
entry:
  %vtable = load ptr, ptr %__os, align 8, !tbaa !16
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !18
  %add.ptr = getelementptr inbounds i8, ptr %__os, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %__os, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z5powerii(i32 noundef %a, i32 noundef %b) #3 {
entry:
  %sum = alloca i32, align 4
  %k = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %sum) #8
  store i32 1, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #8
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %b
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %1 = load i32, ptr %sum, align 4, !tbaa !5
  %mul = mul nsw i32 %1, %a
  store i32 %mul, ptr %sum, align 4, !tbaa !5
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %2 = load i32, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %k) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %sum) #8
  ret i32 %2
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #6 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %__os)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #5 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !20
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %__c)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #6 comdat {
entry:
  %tobool = icmp ne ptr %__f, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #12
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #5 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !38
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !44
  store i8 %1, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !16
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !18
  %call = call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  store i8 %call, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i8, ptr %retval, align 1
  ret i8 %3
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #7

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { nofree nosync nounwind }
attributes #11 = { nofree nosync nounwind memory(none) }
attributes #12 = { noreturn }

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
!18 = !{}
!19 = distinct !{!19, !10, !11}
!20 = !{!21, !35, i64 240}
!21 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !22, i64 0, !32, i64 216, !7, i64 224, !33, i64 225, !34, i64 232, !35, i64 240, !36, i64 248, !37, i64 256}
!22 = !{!"_ZTSSt8ios_base", !23, i64 8, !23, i64 16, !24, i64 24, !25, i64 28, !25, i64 32, !26, i64 40, !28, i64 48, !7, i64 64, !6, i64 192, !29, i64 200, !30, i64 208}
!23 = !{!"long", !7, i64 0}
!24 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!25 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!26 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !27, i64 0}
!27 = !{!"any pointer", !7, i64 0}
!28 = !{!"_ZTSNSt8ios_base6_WordsE", !27, i64 0, !23, i64 8}
!29 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !27, i64 0}
!30 = !{!"_ZTSSt6locale", !31, i64 0}
!31 = !{!"p1 _ZTSNSt6locale5_ImplE", !27, i64 0}
!32 = !{!"p1 _ZTSSo", !27, i64 0}
!33 = !{!"bool", !7, i64 0}
!34 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !27, i64 0}
!35 = !{!"p1 _ZTSSt5ctypeIcE", !27, i64 0}
!36 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !27, i64 0}
!37 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !27, i64 0}
!38 = !{!39, !7, i64 56}
!39 = !{!"_ZTSSt5ctypeIcE", !40, i64 0, !41, i64 16, !33, i64 24, !42, i64 32, !42, i64 40, !43, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!40 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!41 = !{!"p1 _ZTS15__locale_struct", !27, i64 0}
!42 = !{!"p1 int", !27, i64 0}
!43 = !{!"p1 short", !27, i64 0}
!44 = !{!7, !7, i64 0}
