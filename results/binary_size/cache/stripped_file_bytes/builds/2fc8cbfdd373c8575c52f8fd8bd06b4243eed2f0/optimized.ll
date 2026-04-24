; ModuleID = '/tmp/tmp75c5u4q0.cpp'
source_filename = "/tmp/tmp75c5u4q0.cpp"
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

$_ZStanSt12_Ios_IostateS_ = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca [16 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #8
  br label %while.cond

while.cond:                                       ; preds = %for.end36, %entry
  %arrayidx = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 0
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %vtable = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %call1 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr)
  br i1 %call1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %arrayidx2 = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 0
  %0 = load i32, ptr %arrayidx2, align 16, !tbaa !8
  %cmp = icmp ne i32 %0, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %1 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %1, label %while.body, label %while.end39

while.body:                                       ; preds = %land.end
  store i32 1, ptr %k, align 4, !tbaa !8
  store i32 0, ptr %n, align 4, !tbaa !8
  br label %while.cond3

while.cond3:                                      ; preds = %while.body16, %while.body
  %2 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom = sext i32 %2 to i64
  %arrayidx4 = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 %idxprom
  %call5 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx4)
  %vtable6 = load ptr, ptr %call5, align 8, !tbaa !5
  %vbase.offset.ptr7 = getelementptr i8, ptr %vtable6, i64 -24
  %vbase.offset8 = load i64, ptr %vbase.offset.ptr7, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %call5, i64 %vbase.offset8
  %call10 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr9)
  br i1 %call10, label %land.rhs11, label %land.end15

land.rhs11:                                       ; preds = %while.cond3
  %3 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom12 = sext i32 %3 to i64
  %arrayidx13 = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 %idxprom12
  %4 = load i32, ptr %arrayidx13, align 4, !tbaa !8
  %cmp14 = icmp ne i32 %4, 0
  br label %land.end15

land.end15:                                       ; preds = %land.rhs11, %while.cond3
  %5 = phi i1 [ false, %while.cond3 ], [ %cmp14, %land.rhs11 ]
  br i1 %5, label %while.body16, label %while.end

while.body16:                                     ; preds = %land.end15
  %6 = load i32, ptr %k, align 4, !tbaa !8
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %k, align 4, !tbaa !8
  br label %while.cond3, !llvm.loop !11

while.end:                                        ; preds = %land.end15
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %while.end
  %7 = load i32, ptr %i, align 4, !tbaa !8
  %8 = load i32, ptr %k, align 4, !tbaa !8
  %sub = sub nsw i32 %8, 1
  %cmp17 = icmp slt i32 %7, %sub
  br i1 %cmp17, label %for.body, label %for.end36

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %i, align 4, !tbaa !8
  %add = add nsw i32 %9, 1
  store i32 %add, ptr %j, align 4, !tbaa !8
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc, %for.body
  %10 = load i32, ptr %j, align 4, !tbaa !8
  %11 = load i32, ptr %k, align 4, !tbaa !8
  %cmp19 = icmp slt i32 %10, %11
  br i1 %cmp19, label %for.body20, label %for.end

for.body20:                                       ; preds = %for.cond18
  %12 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom21 = sext i32 %12 to i64
  %arrayidx22 = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 %idxprom21
  %13 = load i32, ptr %arrayidx22, align 4, !tbaa !8
  %14 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom23 = sext i32 %14 to i64
  %arrayidx24 = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 %idxprom23
  %15 = load i32, ptr %arrayidx24, align 4, !tbaa !8
  %mul = mul nsw i32 %15, 2
  %cmp25 = icmp eq i32 %13, %mul
  br i1 %cmp25, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body20
  %16 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom26 = sext i32 %16 to i64
  %arrayidx27 = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 %idxprom26
  %17 = load i32, ptr %arrayidx27, align 4, !tbaa !8
  %18 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom28 = sext i32 %18 to i64
  %arrayidx29 = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 %idxprom28
  %19 = load i32, ptr %arrayidx29, align 4, !tbaa !8
  %mul30 = mul nsw i32 %19, 2
  %cmp31 = icmp eq i32 %17, %mul30
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body20
  %20 = load i32, ptr %n, align 4, !tbaa !8
  %inc32 = add nsw i32 %20, 1
  store i32 %inc32, ptr %n, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, ptr %j, align 4, !tbaa !8
  %inc33 = add nsw i32 %21, 1
  store i32 %inc33, ptr %j, align 4, !tbaa !8
  br label %for.cond18, !llvm.loop !14

for.end:                                          ; preds = %for.cond18
  br label %for.inc34

for.inc34:                                        ; preds = %for.end
  %22 = load i32, ptr %i, align 4, !tbaa !8
  %inc35 = add nsw i32 %22, 1
  store i32 %inc35, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !15

for.end36:                                        ; preds = %for.cond
  %23 = load i32, ptr %n, align 4, !tbaa !8
  %call37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %23)
  %call38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call37, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %while.cond, !llvm.loop !16

while.end39:                                      ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !17
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !20
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !22
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !22
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !20
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !20, !nonnull !23, !align !24
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !20, !nonnull !23, !align !24
  %vtable = load ptr, ptr %1, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define available_externally noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !17
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef 1, i32 noundef 4)
  %call3 = call noundef i32 @_ZStanSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %call2)
  %cmp = icmp ne i32 %call3, 0
  ret i1 %cmp
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStanSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #5 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !25
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !25
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !25
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !25
  %and = and i32 %0, %1
  ret i32 %and
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !17
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !27
  ret i32 %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #5 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !25
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !25
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !25
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !25
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !20
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !20, !nonnull !23, !align !24
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !17
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !36
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !37
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !36
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #4 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !44
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !44
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #9
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !44
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #3 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !44
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !36
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !45
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !36
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !36
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !36
  %vtable = load ptr, ptr %this1, align 8, !tbaa !5
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
declare void @_ZSt16__throw_bad_castv() #7

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !19, i64 0}
!19 = !{!"any pointer", !10, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTSSo", !19, i64 0}
!22 = !{!19, !19, i64 0}
!23 = !{}
!24 = !{i64 8}
!25 = !{!26, !26, i64 0}
!26 = !{!"_ZTSSt12_Ios_Iostate", !10, i64 0}
!27 = !{!28, !26, i64 32}
!28 = !{!"_ZTSSt8ios_base", !29, i64 8, !29, i64 16, !30, i64 24, !26, i64 28, !26, i64 32, !31, i64 40, !32, i64 48, !10, i64 64, !9, i64 192, !33, i64 200, !34, i64 208}
!29 = !{!"long", !10, i64 0}
!30 = !{!"_ZTSSt13_Ios_Fmtflags", !10, i64 0}
!31 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !19, i64 0}
!32 = !{!"_ZTSNSt8ios_base6_WordsE", !19, i64 0, !29, i64 8}
!33 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !19, i64 0}
!34 = !{!"_ZTSSt6locale", !35, i64 0}
!35 = !{!"p1 _ZTSNSt6locale5_ImplE", !19, i64 0}
!36 = !{!10, !10, i64 0}
!37 = !{!38, !41, i64 240}
!38 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !28, i64 0, !21, i64 216, !10, i64 224, !39, i64 225, !40, i64 232, !41, i64 240, !42, i64 248, !43, i64 256}
!39 = !{!"bool", !10, i64 0}
!40 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !19, i64 0}
!41 = !{!"p1 _ZTSSt5ctypeIcE", !19, i64 0}
!42 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!43 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!44 = !{!41, !41, i64 0}
!45 = !{!46, !10, i64 56}
!46 = !{!"_ZTSSt5ctypeIcE", !47, i64 0, !48, i64 16, !39, i64 24, !49, i64 32, !49, i64 40, !50, i64 48, !10, i64 56, !10, i64 57, !10, i64 313, !10, i64 569}
!47 = !{!"_ZTSNSt6locale5facetE", !9, i64 8}
!48 = !{!"p1 _ZTS15__locale_struct", !19, i64 0}
!49 = !{!"p1 int", !19, i64 0}
!50 = !{!"p1 short", !19, i64 0}
