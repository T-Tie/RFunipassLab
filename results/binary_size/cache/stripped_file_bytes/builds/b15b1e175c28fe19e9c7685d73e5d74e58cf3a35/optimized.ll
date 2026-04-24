; ModuleID = '/tmp/tmpp92bf4r1.cpp'
source_filename = "/tmp/tmpp92bf4r1.cpp"
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

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %input = alloca [101 x i8], align 16
  %inputlen = alloca i32, align 4
  %sumblank = alloca i32, align 4
  %i = alloca i32, align 4
  %word = alloca [100 x [101 x i8]], align 16
  %i6 = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %i29 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 101, ptr %input) #9
  %arraydecay = getelementptr inbounds [101 x i8], ptr %input, i64 0, i64 0
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef %arraydecay, i64 noundef 101)
  call void @llvm.lifetime.start.p0(i64 4, ptr %inputlen) #9
  %arraydecay1 = getelementptr inbounds [101 x i8], ptr %input, i64 0, i64 0
  %call2 = call i64 @strlen(ptr noundef %arraydecay1) #10
  %conv = trunc i64 %call2 to i32
  store i32 %conv, ptr %inputlen, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %sumblank) #9
  store i32 0, ptr %sumblank, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %inputlen, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [101 x i8], ptr %input, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 32
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %sumblank, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %sumblank, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %inc5 = add nsw i32 %5, 1
  store i32 %inc5, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 10100, ptr %word) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i6) #9
  store i32 0, ptr %i6, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #9
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc26, %for.end
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %7 = load i32, ptr %inputlen, align 4, !tbaa !5
  %sub8 = sub nsw i32 %7, 1
  %cmp9 = icmp sle i32 %6, %sub8
  br i1 %cmp9, label %for.body11, label %for.cond.cleanup10

for.cond.cleanup10:                               ; preds = %for.cond7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9
  br label %for.end28

for.body11:                                       ; preds = %for.cond7
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [101 x i8], ptr %input, i64 0, i64 %idxprom12
  %9 = load i8, ptr %arrayidx13, align 1, !tbaa !9
  %conv14 = sext i8 %9 to i32
  %cmp15 = icmp eq i32 %conv14, 32
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %for.body11
  %10 = load i32, ptr %i6, align 4, !tbaa !5
  %inc17 = add nsw i32 %10, 1
  store i32 %inc17, ptr %i6, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %if.end25

if.else:                                          ; preds = %for.body11
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom18 = sext i32 %11 to i64
  %arrayidx19 = getelementptr inbounds [101 x i8], ptr %input, i64 0, i64 %idxprom18
  %12 = load i8, ptr %arrayidx19, align 1, !tbaa !9
  %13 = load i32, ptr %i6, align 4, !tbaa !5
  %idxprom20 = sext i32 %13 to i64
  %arrayidx21 = getelementptr inbounds [100 x [101 x i8]], ptr %word, i64 0, i64 %idxprom20
  %14 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom22 = sext i32 %14 to i64
  %arrayidx23 = getelementptr inbounds [101 x i8], ptr %arrayidx21, i64 0, i64 %idxprom22
  store i8 %12, ptr %arrayidx23, align 1, !tbaa !9
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %inc24 = add nsw i32 %15, 1
  store i32 %inc24, ptr %k, align 4, !tbaa !5
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then16
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %inc27 = add nsw i32 %16, 1
  store i32 %inc27, ptr %j, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !13

for.end28:                                        ; preds = %for.cond.cleanup10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i29) #9
  %17 = load i32, ptr %sumblank, align 4, !tbaa !5
  store i32 %17, ptr %i29, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc47, %for.end28
  %18 = load i32, ptr %i29, align 4, !tbaa !5
  %cmp31 = icmp sge i32 %18, 0
  br i1 %cmp31, label %for.body33, label %for.cond.cleanup32

for.cond.cleanup32:                               ; preds = %for.cond30
  call void @llvm.lifetime.end.p0(i64 4, ptr %i29) #9
  br label %for.end48

for.body33:                                       ; preds = %for.cond30
  %19 = load i32, ptr %i29, align 4, !tbaa !5
  %20 = load i32, ptr %sumblank, align 4, !tbaa !5
  %cmp34 = icmp eq i32 %19, %20
  br i1 %cmp34, label %if.then35, label %if.else40

if.then35:                                        ; preds = %for.body33
  %21 = load i32, ptr %i29, align 4, !tbaa !5
  %idxprom36 = sext i32 %21 to i64
  %arrayidx37 = getelementptr inbounds [100 x [101 x i8]], ptr %word, i64 0, i64 %idxprom36
  %arraydecay38 = getelementptr inbounds [101 x i8], ptr %arrayidx37, i64 0, i64 0
  %call39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %arraydecay38)
  br label %if.end46

if.else40:                                        ; preds = %for.body33
  %call41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %22 = load i32, ptr %i29, align 4, !tbaa !5
  %idxprom42 = sext i32 %22 to i64
  %arrayidx43 = getelementptr inbounds [100 x [101 x i8]], ptr %word, i64 0, i64 %idxprom42
  %arraydecay44 = getelementptr inbounds [101 x i8], ptr %arrayidx43, i64 0, i64 0
  %call45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call41, ptr noundef %arraydecay44)
  br label %if.end46

if.end46:                                         ; preds = %if.else40, %if.then35
  br label %for.inc47

for.inc47:                                        ; preds = %if.end46
  %23 = load i32, ptr %i29, align 4, !tbaa !5
  %dec = add nsw i32 %23, -1
  store i32 %dec, ptr %i29, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !14

for.end48:                                        ; preds = %for.cond.cleanup32
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i6) #9
  call void @llvm.lifetime.end.p0(i64 10100, ptr %word) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %sumblank) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %inputlen) #9
  call void @llvm.lifetime.end.p0(i64 101, ptr %input) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__s, i64 noundef %__n) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !15
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !18
  store i64 %__n, ptr %__n.addr, align 8, !tbaa !20
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !18
  %1 = load i64, ptr %__n.addr, align 8, !tbaa !20
  %vtable = load ptr, ptr %this1, align 8, !tbaa !22
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0, i64 noundef %1, i8 noundef signext %call)
  ret ptr %call2
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #4 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !24
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !18
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !18
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !24, !nonnull !26, !align !27
  %vtable = load ptr, ptr %1, align 8, !tbaa !22
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !24, !nonnull !26, !align !27
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !18
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !18
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !24, !nonnull !26, !align !27
  ret ptr %5
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) #5

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !28
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !9
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !30
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !9
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #4 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !45
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !45
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #11
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !45
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #2 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !45
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !9
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !46
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !9
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !9
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !9
  %vtable = load ptr, ptr %this1, align 8, !tbaa !22
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

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #5

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !28
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !52
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !52
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this1, i32 noundef %call2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #7 comdat align 2 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !18
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !18
  %call = call i64 @strlen(ptr noundef %0) #9
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #8 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !52
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !52
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !52
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !52
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #7 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !28
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !53
  ret i32 %0
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTSSi", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 omnipotent char", !17, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !7, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !8, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSSo", !17, i64 0}
!26 = !{}
!27 = !{i64 8}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !17, i64 0}
!30 = !{!31, !42, i64 240}
!31 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !32, i64 0, !25, i64 216, !7, i64 224, !40, i64 225, !41, i64 232, !42, i64 240, !43, i64 248, !44, i64 256}
!32 = !{!"_ZTSSt8ios_base", !21, i64 8, !21, i64 16, !33, i64 24, !34, i64 28, !34, i64 32, !35, i64 40, !36, i64 48, !7, i64 64, !6, i64 192, !37, i64 200, !38, i64 208}
!33 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!34 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!35 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!36 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !21, i64 8}
!37 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!38 = !{!"_ZTSSt6locale", !39, i64 0}
!39 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!40 = !{!"bool", !7, i64 0}
!41 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !17, i64 0}
!42 = !{!"p1 _ZTSSt5ctypeIcE", !17, i64 0}
!43 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!44 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!45 = !{!42, !42, i64 0}
!46 = !{!47, !7, i64 56}
!47 = !{!"_ZTSSt5ctypeIcE", !48, i64 0, !49, i64 16, !40, i64 24, !50, i64 32, !50, i64 40, !51, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!48 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!49 = !{!"p1 _ZTS15__locale_struct", !17, i64 0}
!50 = !{!"p1 int", !17, i64 0}
!51 = !{!"p1 short", !17, i64 0}
!52 = !{!34, !34, i64 0}
!53 = !{!32, !34, i64 32}
