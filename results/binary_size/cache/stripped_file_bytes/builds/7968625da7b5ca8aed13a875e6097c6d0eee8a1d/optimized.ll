; ModuleID = '/tmp/tmpj1mv1cwn.cpp'
source_filename = "/tmp/tmpj1mv1cwn.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@_ZSt3cin = external global %"class.std::basic_istream", align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_Z3delPc(ptr noundef %str) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %count = alloca i32, align 4
  %q = alloca ptr, align 8
  %temp = alloca i8, align 1
  store ptr %str, ptr %str.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9
  %0 = load ptr, ptr %str.addr, align 8, !tbaa !5
  store ptr %0, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #9
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %1 = load ptr, ptr %p, align 8, !tbaa !5
  %2 = load i8, ptr %1, align 1, !tbaa !10
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %p, align 8, !tbaa !5
  %4 = load i8, ptr %3, align 1, !tbaa !10
  %conv1 = sext i8 %4 to i32
  %cmp2 = icmp eq i32 %conv1, 32
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load ptr, ptr %p, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 1
  %6 = load i8, ptr %add.ptr, align 1, !tbaa !10
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv3, 32
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %temp) #9
  store i32 0, ptr %count, align 4, !tbaa !11
  %7 = load ptr, ptr %p, align 8, !tbaa !5
  %add.ptr5 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %add.ptr5, ptr %q, align 8, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %if.then
  %8 = load ptr, ptr %q, align 8, !tbaa !5
  %add.ptr7 = getelementptr inbounds i8, ptr %8, i64 1
  %9 = load i8, ptr %add.ptr7, align 1, !tbaa !10
  %conv8 = sext i8 %9 to i32
  %cmp9 = icmp ne i32 %conv8, 0
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond6
  %10 = load ptr, ptr %q, align 8, !tbaa !5
  %11 = load i8, ptr %10, align 1, !tbaa !10
  store i8 %11, ptr %temp, align 1, !tbaa !10
  %12 = load ptr, ptr %q, align 8, !tbaa !5
  %add.ptr11 = getelementptr inbounds i8, ptr %12, i64 1
  %13 = load i8, ptr %add.ptr11, align 1, !tbaa !10
  %14 = load ptr, ptr %q, align 8, !tbaa !5
  store i8 %13, ptr %14, align 1, !tbaa !10
  %15 = load i8, ptr %temp, align 1, !tbaa !10
  %16 = load ptr, ptr %q, align 8, !tbaa !5
  %add.ptr12 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 %15, ptr %add.ptr12, align 1, !tbaa !10
  %17 = load i32, ptr %count, align 4, !tbaa !11
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %count, align 4, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %18 = load ptr, ptr %q, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %q, align 8, !tbaa !5
  br label %for.cond6, !llvm.loop !13

for.end:                                          ; preds = %for.cond6
  %19 = load ptr, ptr %p, align 8, !tbaa !5
  %add.ptr13 = getelementptr inbounds i8, ptr %19, i64 1
  %20 = load i32, ptr %count, align 4, !tbaa !11
  %idx.ext = sext i32 %20 to i64
  %add.ptr14 = getelementptr inbounds i8, ptr %add.ptr13, i64 %idx.ext
  store i8 0, ptr %add.ptr14, align 1, !tbaa !10
  %21 = load ptr, ptr %p, align 8, !tbaa !5
  %add.ptr15 = getelementptr inbounds i8, ptr %21, i64 -1
  store ptr %add.ptr15, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 1, ptr %temp) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #9
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %for.body
  br label %for.inc16

for.inc16:                                        ; preds = %if.end
  %22 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr17 = getelementptr inbounds nuw i8, ptr %22, i32 1
  store ptr %incdec.ptr17, ptr %p, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !16

for.end18:                                        ; preds = %for.cond
  %23 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %23)
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #2 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !17
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !17, !nonnull !19, !align !20
  %vtable = load ptr, ptr %1, align 8, !tbaa !21
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !17, !nonnull !19, !align !20
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !5
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !5
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !17, !nonnull !19, !align !20
  ret ptr %5
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #3 {
entry:
  %retval = alloca i32, align 4
  %str = alloca [100 x i8], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr %str) #9
  %arraydecay = getelementptr inbounds [100 x i8], ptr %str, i64 0, i64 0
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef %arraydecay, i64 noundef 100)
  %arraydecay1 = getelementptr inbounds [100 x i8], ptr %str, i64 0, i64 0
  call void @_Z3delPc(ptr noundef %arraydecay1)
  call void @llvm.lifetime.end.p0(i64 100, ptr %str) #9
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__s, i64 noundef %__n) #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !23
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !5
  store i64 %__n, ptr %__n.addr, align 8, !tbaa !25
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !5
  %1 = load i64, ptr %__n.addr, align 8, !tbaa !25
  %vtable = load ptr, ptr %this1, align 8, !tbaa !21
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0, i64 noundef %1, i8 noundef signext %call)
  ret ptr %call2
}

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !27
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !29
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !29
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this1, i32 noundef %call2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #5 comdat align 2 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !5
  %call = call i64 @strlen(ptr noundef %0) #9
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #6 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !29
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !29
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !29
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !29
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !27
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !31
  ret i32 %0
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #7

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) #4

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !27
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !10
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !39
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !10
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #2 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !46
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !46
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #10
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !46
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #0 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !46
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !10
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !47
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !10
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !10
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !10
  %vtable = load ptr, ptr %this1, align 8, !tbaa !21
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
declare void @_ZSt16__throw_bad_castv() #8

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 omnipotent char", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !8, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !14, !15}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTSSo", !7, i64 0}
!19 = !{}
!20 = !{i64 8}
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !9, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTSSi", !7, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"long", !8, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !7, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!31 = !{!32, !30, i64 32}
!32 = !{!"_ZTSSt8ios_base", !26, i64 8, !26, i64 16, !33, i64 24, !30, i64 28, !30, i64 32, !34, i64 40, !35, i64 48, !8, i64 64, !12, i64 192, !36, i64 200, !37, i64 208}
!33 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!34 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !7, i64 0}
!35 = !{!"_ZTSNSt8ios_base6_WordsE", !7, i64 0, !26, i64 8}
!36 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !7, i64 0}
!37 = !{!"_ZTSSt6locale", !38, i64 0}
!38 = !{!"p1 _ZTSNSt6locale5_ImplE", !7, i64 0}
!39 = !{!40, !43, i64 240}
!40 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !32, i64 0, !18, i64 216, !8, i64 224, !41, i64 225, !42, i64 232, !43, i64 240, !44, i64 248, !45, i64 256}
!41 = !{!"bool", !8, i64 0}
!42 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !7, i64 0}
!43 = !{!"p1 _ZTSSt5ctypeIcE", !7, i64 0}
!44 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !7, i64 0}
!45 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !7, i64 0}
!46 = !{!43, !43, i64 0}
!47 = !{!48, !8, i64 56}
!48 = !{!"_ZTSSt5ctypeIcE", !49, i64 0, !50, i64 16, !41, i64 24, !51, i64 32, !51, i64 40, !52, i64 48, !8, i64 56, !8, i64 57, !8, i64 313, !8, i64 569}
!49 = !{!"_ZTSNSt6locale5facetE", !12, i64 8}
!50 = !{!"p1 _ZTS15__locale_struct", !7, i64 0}
!51 = !{!"p1 int", !7, i64 0}
!52 = !{!"p1 short", !7, i64 0}
