; ModuleID = '/tmp/tmp20hb142r.cpp'
source_filename = "/tmp/tmp20hb142r.cpp"
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
  %retval = alloca i32, align 4
  %length = alloca i32, align 4
  %a = alloca [110 x i32], align 16
  %i = alloca i32, align 4
  %sec = alloca i32, align 4
  %point = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #7
  store i32 0, ptr %length, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 440, ptr %a) #7
  call void @llvm.memset.p0.i64(ptr align 16 %a, i8 0, i64 440, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %length)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %length, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  br label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [110 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %sec) #7
  store i32 1, ptr %sec, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %point) #7
  store i32 0, ptr %point, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.end, %for.end
  %4 = load i32, ptr %point, align 4, !tbaa !5
  %5 = load i32, ptr %sec, align 4, !tbaa !5
  %add = add nsw i32 %4, %5
  %6 = load i32, ptr %length, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %add, %6
  br i1 %cmp2, label %while.body, label %while.end25

while.body:                                       ; preds = %while.cond
  br label %while.cond3

while.cond3:                                      ; preds = %if.end, %while.body
  %7 = load i32, ptr %point, align 4, !tbaa !5
  %8 = load i32, ptr %sec, align 4, !tbaa !5
  %add4 = add nsw i32 %7, %8
  %9 = load i32, ptr %length, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %add4, %9
  br i1 %cmp5, label %while.body6, label %while.end

while.body6:                                      ; preds = %while.cond3
  %10 = load i32, ptr %point, align 4, !tbaa !5
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [110 x i32], ptr %a, i64 0, i64 %idxprom7
  %11 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %12 = load i32, ptr %point, align 4, !tbaa !5
  %13 = load i32, ptr %sec, align 4, !tbaa !5
  %add9 = add nsw i32 %12, %13
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [110 x i32], ptr %a, i64 0, i64 %idxprom10
  %14 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %11, %14
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %while.body6
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #7
  %15 = load i32, ptr %point, align 4, !tbaa !5
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [110 x i32], ptr %a, i64 0, i64 %idxprom13
  %16 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  store i32 %16, ptr %temp, align 4, !tbaa !5
  %17 = load i32, ptr %point, align 4, !tbaa !5
  %18 = load i32, ptr %sec, align 4, !tbaa !5
  %add15 = add nsw i32 %17, %18
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds [110 x i32], ptr %a, i64 0, i64 %idxprom16
  %19 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %20 = load i32, ptr %point, align 4, !tbaa !5
  %idxprom18 = sext i32 %20 to i64
  %arrayidx19 = getelementptr inbounds [110 x i32], ptr %a, i64 0, i64 %idxprom18
  store i32 %19, ptr %arrayidx19, align 4, !tbaa !5
  %21 = load i32, ptr %temp, align 4, !tbaa !5
  %22 = load i32, ptr %point, align 4, !tbaa !5
  %23 = load i32, ptr %sec, align 4, !tbaa !5
  %add20 = add nsw i32 %22, %23
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds [110 x i32], ptr %a, i64 0, i64 %idxprom21
  store i32 %21, ptr %arrayidx22, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body6
  %24 = load i32, ptr %point, align 4, !tbaa !5
  %25 = load i32, ptr %sec, align 4, !tbaa !5
  %mul = mul nsw i32 %25, 2
  %add23 = add nsw i32 %24, %mul
  store i32 %add23, ptr %point, align 4, !tbaa !5
  br label %while.cond3, !llvm.loop !12

while.end:                                        ; preds = %while.cond3
  %26 = load i32, ptr %sec, align 4, !tbaa !5
  %mul24 = mul nsw i32 %26, 2
  store i32 %mul24, ptr %sec, align 4, !tbaa !5
  store i32 0, ptr %point, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !13

while.end25:                                      ; preds = %while.cond
  %arrayidx26 = getelementptr inbounds [110 x i32], ptr %a, i64 0, i64 0
  %27 = load i32, ptr %arrayidx26, align 16, !tbaa !5
  %call27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %27)
  %call28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call27, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %28 = load i32, ptr %sec, align 4, !tbaa !5
  %div = sdiv i32 %28, 4
  store i32 %div, ptr %sec, align 4, !tbaa !5
  %29 = load i32, ptr %sec, align 4, !tbaa !5
  %idxprom29 = sext i32 %29 to i64
  %arrayidx30 = getelementptr inbounds [110 x i32], ptr %a, i64 0, i64 %idxprom29
  %30 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %31 = load i32, ptr %sec, align 4, !tbaa !5
  %mul31 = mul nsw i32 %31, 2
  %idxprom32 = sext i32 %mul31 to i64
  %arrayidx33 = getelementptr inbounds [110 x i32], ptr %a, i64 0, i64 %idxprom32
  %32 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %cmp34 = icmp sgt i32 %30, %32
  br i1 %cmp34, label %if.then35, label %if.else

if.then35:                                        ; preds = %while.end25
  %33 = load i32, ptr %sec, align 4, !tbaa !5
  %idxprom36 = sext i32 %33 to i64
  %arrayidx37 = getelementptr inbounds [110 x i32], ptr %a, i64 0, i64 %idxprom36
  %34 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %call38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %34)
  %call39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call38, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end45

if.else:                                          ; preds = %while.end25
  %35 = load i32, ptr %sec, align 4, !tbaa !5
  %mul40 = mul nsw i32 %35, 2
  %idxprom41 = sext i32 %mul40 to i64
  %arrayidx42 = getelementptr inbounds [110 x i32], ptr %a, i64 0, i64 %idxprom41
  %36 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %36)
  %call44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call43, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then35
  call void @llvm.lifetime.end.p0(i64 4, ptr %point) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %sec) #7
  call void @llvm.lifetime.end.p0(i64 440, ptr %a) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !14
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !17
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !17
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !14
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !14, !nonnull !18, !align !19
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !14, !nonnull !18, !align !19
  %vtable = load ptr, ptr %1, align 8, !tbaa !20
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !14
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !14, !nonnull !18, !align !19
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !22
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !24
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !25
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !24
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #5 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !41
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !41
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !41
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #4 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !41
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !24
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !42
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !24
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !24
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !24
  %vtable = load ptr, ptr %this1, align 8, !tbaa !20
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %4 = load ptr, ptr %vfn, align 8
  %call = call noundef signext i8 %4(ptr noundef nonnull align 8 dereferenceable(570) %this1, i8 noundef signext %3)
  store i8 %call, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8, ptr %retval, align 1
  ret i8 %5
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTSSo", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{}
!19 = !{i64 8}
!20 = !{!21, !21, i64 0}
!21 = !{!"vtable pointer", !8, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !16, i64 0}
!24 = !{!7, !7, i64 0}
!25 = !{!26, !38, i64 240}
!26 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !27, i64 0, !15, i64 216, !7, i64 224, !36, i64 225, !37, i64 232, !38, i64 240, !39, i64 248, !40, i64 256}
!27 = !{!"_ZTSSt8ios_base", !28, i64 8, !28, i64 16, !29, i64 24, !30, i64 28, !30, i64 32, !31, i64 40, !32, i64 48, !7, i64 64, !6, i64 192, !33, i64 200, !34, i64 208}
!28 = !{!"long", !7, i64 0}
!29 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!30 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!31 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!32 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !28, i64 8}
!33 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!34 = !{!"_ZTSSt6locale", !35, i64 0}
!35 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!36 = !{!"bool", !7, i64 0}
!37 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!38 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!39 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!40 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!41 = !{!38, !38, i64 0}
!42 = !{!43, !7, i64 56}
!43 = !{!"_ZTSSt5ctypeIcE", !44, i64 0, !45, i64 16, !36, i64 24, !46, i64 32, !46, i64 40, !47, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!44 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!45 = !{!"p1 _ZTS15__locale_struct", !16, i64 0}
!46 = !{!"p1 int", !16, i64 0}
!47 = !{!"p1 short", !16, i64 0}
