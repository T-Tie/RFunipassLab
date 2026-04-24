; ModuleID = '/tmp/tmpnf8my731.cpp'
source_filename = "/tmp/tmpnf8my731.cpp"
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
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  %sum = alloca i32, align 4
  %len = alloca i32, align 4
  %sum1 = alloca i32, align 4
  %before = alloca [500 x [40 x i8]], align 16
  %c = alloca i8, align 1
  %p = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #9
  store i32 0, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum1) #9
  call void @llvm.lifetime.start.p0(i64 20000, ptr %before) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [500 x [40 x i8]], ptr %before, i64 0, i64 0
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds [40 x i8], ptr %arraydecay, i64 %idx.ext
  %arraydecay1 = getelementptr inbounds [40 x i8], ptr %add.ptr, i64 0, i64 0
  store ptr %arraydecay1, ptr %p, align 8, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %if.then, %for.body
  br label %while.body

while.body:                                       ; preds = %while.cond
  %call2 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %conv = trunc i32 %call2 to i8
  store i8 %conv, ptr %c, align 1, !tbaa !12
  %3 = load i8, ptr %c, align 1, !tbaa !12
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 32
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load i8, ptr %c, align 1, !tbaa !12
  %conv5 = sext i8 %4 to i32
  %cmp6 = icmp eq i32 %conv5, 10
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.cond, !llvm.loop !13

if.else:                                          ; preds = %lor.lhs.false
  br label %while.end

while.end:                                        ; preds = %if.else
  %5 = load i8, ptr %c, align 1, !tbaa !12
  %6 = load ptr, ptr %p, align 8, !tbaa !9
  store i8 %5, ptr %6, align 1, !tbaa !12
  br label %while.cond7

while.cond7:                                      ; preds = %if.end, %while.end
  br label %while.body8

while.body8:                                      ; preds = %while.cond7
  %call9 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %conv10 = trunc i32 %call9 to i8
  store i8 %conv10, ptr %c, align 1, !tbaa !12
  %7 = load i8, ptr %c, align 1, !tbaa !12
  %conv11 = sext i8 %7 to i32
  %cmp12 = icmp eq i32 %conv11, 32
  br i1 %cmp12, label %if.then16, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %while.body8
  %8 = load i8, ptr %c, align 1, !tbaa !12
  %conv14 = sext i8 %8 to i32
  %cmp15 = icmp eq i32 %conv14, 10
  br i1 %cmp15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %lor.lhs.false13, %while.body8
  br label %while.end18

if.else17:                                        ; preds = %lor.lhs.false13
  %9 = load i8, ptr %c, align 1, !tbaa !12
  %10 = load ptr, ptr %p, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %10, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !9
  store i8 %9, ptr %incdec.ptr, align 1, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else17
  br label %while.cond7, !llvm.loop !16

while.end18:                                      ; preds = %if.then16
  %11 = load ptr, ptr %p, align 8, !tbaa !9
  %incdec.ptr19 = getelementptr inbounds nuw i8, ptr %11, i32 1
  store ptr %incdec.ptr19, ptr %p, align 8, !tbaa !9
  store i8 0, ptr %incdec.ptr19, align 1, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %while.end18
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc60, %for.end
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %14 = load i32, ptr %n, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %13, %14
  br i1 %cmp21, label %for.body22, label %for.end62

for.body22:                                       ; preds = %for.cond20
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [500 x [40 x i8]], ptr %before, i64 0, i64 %idxprom
  %arraydecay23 = getelementptr inbounds [40 x i8], ptr %arrayidx, i64 0, i64 0
  %call24 = call i64 @strlen(ptr noundef %arraydecay23) #10
  %conv25 = trunc i64 %call24 to i32
  store i32 %conv25, ptr %len, align 4, !tbaa !5
  %16 = load i32, ptr %sum, align 4, !tbaa !5
  %17 = load i32, ptr %len, align 4, !tbaa !5
  %add = add nsw i32 %16, %17
  store i32 %add, ptr %sum, align 4, !tbaa !5
  %18 = load i32, ptr %sum, align 4, !tbaa !5
  %add26 = add nsw i32 %18, 1
  %conv27 = sext i32 %add26 to i64
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %add28 = add nsw i32 %19, 1
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds [500 x [40 x i8]], ptr %before, i64 0, i64 %idxprom29
  %arraydecay31 = getelementptr inbounds [40 x i8], ptr %arrayidx30, i64 0, i64 0
  %call32 = call i64 @strlen(ptr noundef %arraydecay31) #10
  %add33 = add i64 %conv27, %call32
  %conv34 = trunc i64 %add33 to i32
  store i32 %conv34, ptr %sum1, align 4, !tbaa !5
  %20 = load i32, ptr %sum, align 4, !tbaa !5
  %cmp35 = icmp sgt i32 %20, 80
  br i1 %cmp35, label %if.then36, label %if.end47

if.then36:                                        ; preds = %for.body22
  %21 = load i32, ptr %len, align 4, !tbaa !5
  store i32 %21, ptr %sum, align 4, !tbaa !5
  %22 = load i32, ptr %sum, align 4, !tbaa !5
  %add37 = add nsw i32 %22, 1
  %conv38 = sext i32 %add37 to i64
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %add39 = add nsw i32 %23, 1
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds [500 x [40 x i8]], ptr %before, i64 0, i64 %idxprom40
  %arraydecay42 = getelementptr inbounds [40 x i8], ptr %arrayidx41, i64 0, i64 0
  %call43 = call i64 @strlen(ptr noundef %arraydecay42) #10
  %add44 = add i64 %conv38, %call43
  %conv45 = trunc i64 %add44 to i32
  store i32 %conv45, ptr %sum1, align 4, !tbaa !5
  %call46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end47

if.end47:                                         ; preds = %if.then36, %for.body22
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %24 to i64
  %arrayidx49 = getelementptr inbounds [500 x [40 x i8]], ptr %before, i64 0, i64 %idxprom48
  %arraydecay50 = getelementptr inbounds [40 x i8], ptr %arrayidx49, i64 0, i64 0
  %call51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %arraydecay50)
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %26 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %26, 1
  %cmp52 = icmp slt i32 %25, %sub
  br i1 %cmp52, label %land.lhs.true, label %if.else57

land.lhs.true:                                    ; preds = %if.end47
  %27 = load i32, ptr %sum1, align 4, !tbaa !5
  %cmp53 = icmp sle i32 %27, 80
  br i1 %cmp53, label %if.then54, label %if.else57

if.then54:                                        ; preds = %land.lhs.true
  %call55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %28 = load i32, ptr %sum, align 4, !tbaa !5
  %inc56 = add nsw i32 %28, 1
  store i32 %inc56, ptr %sum, align 4, !tbaa !5
  br label %if.end59

if.else57:                                        ; preds = %land.lhs.true, %if.end47
  %29 = load i32, ptr %sum, align 4, !tbaa !5
  %inc58 = add nsw i32 %29, 1
  store i32 %inc58, ptr %sum, align 4, !tbaa !5
  br label %if.end59

if.end59:                                         ; preds = %if.else57, %if.then54
  br label %for.inc60

for.inc60:                                        ; preds = %if.end59
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %inc61 = add nsw i32 %30, 1
  store i32 %inc61, ptr %i, align 4, !tbaa !5
  br label %for.cond20, !llvm.loop !18

for.end62:                                        ; preds = %for.cond20
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #9
  call void @llvm.lifetime.end.p0(i64 20000, ptr %before) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !19
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !21
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !21
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !19
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !19, !nonnull !22, !align !23
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !19, !nonnull !22, !align !23
  %vtable = load ptr, ptr %1, align 8, !tbaa !24
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #5 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !19
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !9
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !19, !nonnull !22, !align !23
  %vtable = load ptr, ptr %1, align 8, !tbaa !24
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !19, !nonnull !22, !align !23
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !9
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !9
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !19, !nonnull !22, !align !23
  ret ptr %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !19
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !19, !nonnull !22, !align !23
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !26
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !12
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !28
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !12
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #5 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !44
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !44
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #11
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !44
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #4 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !44
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !12
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !45
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !12
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !12
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !12
  %vtable = load ptr, ptr %this1, align 8, !tbaa !24
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

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !26
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !51
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !51
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this1, i32 noundef %call2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #7 comdat align 2 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !9
  %call = call i64 @strlen(ptr noundef %0) #9
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #8 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !51
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !51
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !51
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !51
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #7 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !26
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !52
  ret i32 %0
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !14, !15}
!17 = distinct !{!17, !14, !15}
!18 = distinct !{!18, !14, !15}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTSSo", !11, i64 0}
!21 = !{!11, !11, i64 0}
!22 = !{}
!23 = !{i64 8}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !8, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !11, i64 0}
!28 = !{!29, !41, i64 240}
!29 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !30, i64 0, !20, i64 216, !7, i64 224, !39, i64 225, !40, i64 232, !41, i64 240, !42, i64 248, !43, i64 256}
!30 = !{!"_ZTSSt8ios_base", !31, i64 8, !31, i64 16, !32, i64 24, !33, i64 28, !33, i64 32, !34, i64 40, !35, i64 48, !7, i64 64, !6, i64 192, !36, i64 200, !37, i64 208}
!31 = !{!"long", !7, i64 0}
!32 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!33 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!34 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!35 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !31, i64 8}
!36 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!37 = !{!"_ZTSSt6locale", !38, i64 0}
!38 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!39 = !{!"bool", !7, i64 0}
!40 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!41 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!42 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!43 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!44 = !{!41, !41, i64 0}
!45 = !{!46, !7, i64 56}
!46 = !{!"_ZTSSt5ctypeIcE", !47, i64 0, !48, i64 16, !39, i64 24, !49, i64 32, !49, i64 40, !50, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!47 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!48 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!49 = !{!"p1 int", !11, i64 0}
!50 = !{!"p1 short", !11, i64 0}
!51 = !{!33, !33, i64 0}
!52 = !{!30, !33, i64 32}
