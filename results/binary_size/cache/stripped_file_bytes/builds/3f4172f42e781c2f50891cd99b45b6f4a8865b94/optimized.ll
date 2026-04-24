; ModuleID = '/tmp/tmpqsv6yj09.cpp'
source_filename = "/tmp/tmpqsv6yj09.cpp"
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

$_ZStanSt12_Ios_IostateS_ = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZNKSt8ios_base5widthEv = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %word = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %p = alloca i32, align 4
  %k = alloca i32, align 4
  %flag = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr %word) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #9
  store i32 0, ptr %p, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #9
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %flag) #9
  store i32 0, ptr %flag, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end67, %entry
  %arraydecay = getelementptr inbounds [100 x i8], ptr %word, i64 0, i64 0
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef %arraydecay, i64 noundef 100)
  %vtable = load ptr, ptr %call, align 8, !tbaa !9
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %call1 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr)
  br i1 %call1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x i8], ptr %word, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !11
  %conv = sext i8 %2 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %3, ptr %p, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %if.else, %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc12, %for.end
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %p, align 4, !tbaa !5
  %cmp4 = icmp sle i32 %5, %6
  br i1 %cmp4, label %for.body5, label %for.end14

for.body5:                                        ; preds = %for.cond3
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [100 x i8], ptr %word, i64 0, i64 %idxprom6
  %8 = load i8, ptr %arrayidx7, align 1, !tbaa !11
  %conv8 = sext i8 %8 to i32
  %cmp9 = icmp eq i32 %conv8, 32
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.body5
  store i32 1, ptr %flag, align 4, !tbaa !5
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %for.body5
  br label %for.inc12

for.inc12:                                        ; preds = %if.end11
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc13 = add nsw i32 %9, 1
  store i32 %inc13, ptr %i, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !15

for.end14:                                        ; preds = %for.cond3
  %10 = load i32, ptr %flag, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %10, 0
  br i1 %cmp15, label %if.then16, label %if.else26

if.then16:                                        ; preds = %for.end14
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc23, %if.then16
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %12 = load i32, ptr %p, align 4, !tbaa !5
  %cmp18 = icmp sle i32 %11, %12
  br i1 %cmp18, label %for.body19, label %for.end25

for.body19:                                       ; preds = %for.cond17
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %13 to i64
  %arrayidx21 = getelementptr inbounds [100 x i8], ptr %word, i64 0, i64 %idxprom20
  %14 = load i8, ptr %arrayidx21, align 1, !tbaa !11
  %call22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %14)
  br label %for.inc23

for.inc23:                                        ; preds = %for.body19
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %inc24 = add nsw i32 %15, 1
  store i32 %inc24, ptr %i, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !16

for.end25:                                        ; preds = %for.cond17
  br label %if.end67

if.else26:                                        ; preds = %for.end14
  %16 = load i32, ptr %p, align 4, !tbaa !5
  store i32 %16, ptr %i, align 4, !tbaa !5
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc49, %if.else26
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %cmp28 = icmp sge i32 %17, 0
  br i1 %cmp28, label %for.body29, label %for.end50

for.body29:                                       ; preds = %for.cond27
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %18 to i64
  %arrayidx31 = getelementptr inbounds [100 x i8], ptr %word, i64 0, i64 %idxprom30
  %19 = load i8, ptr %arrayidx31, align 1, !tbaa !11
  %conv32 = sext i8 %19 to i32
  %cmp33 = icmp ne i32 %conv32, 32
  br i1 %cmp33, label %if.then34, label %if.else36

if.then34:                                        ; preds = %for.body29
  %20 = load i32, ptr %k, align 4, !tbaa !5
  %inc35 = add nsw i32 %20, 1
  store i32 %inc35, ptr %k, align 4, !tbaa !5
  br label %if.end48

if.else36:                                        ; preds = %for.body29
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %21, 1
  store i32 %add, ptr %j, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc44, %if.else36
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %24 = load i32, ptr %k, align 4, !tbaa !5
  %add38 = add nsw i32 %23, %24
  %cmp39 = icmp sle i32 %22, %add38
  br i1 %cmp39, label %for.body40, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond37
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9
  br label %for.end46

for.body40:                                       ; preds = %for.cond37
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom41 = sext i32 %25 to i64
  %arrayidx42 = getelementptr inbounds [100 x i8], ptr %word, i64 0, i64 %idxprom41
  %26 = load i8, ptr %arrayidx42, align 1, !tbaa !11
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %26)
  br label %for.inc44

for.inc44:                                        ; preds = %for.body40
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %inc45 = add nsw i32 %27, 1
  store i32 %inc45, ptr %j, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !17

for.end46:                                        ; preds = %for.cond.cleanup
  %call47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %if.end48

if.end48:                                         ; preds = %for.end46, %if.then34
  br label %for.inc49

for.inc49:                                        ; preds = %if.end48
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %28, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  br label %for.cond27, !llvm.loop !18

for.end50:                                        ; preds = %for.cond27
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc64, %for.end50
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %29, 100
  br i1 %cmp52, label %for.body53, label %for.end66

for.body53:                                       ; preds = %for.cond51
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom54 = sext i32 %30 to i64
  %arrayidx55 = getelementptr inbounds [100 x i8], ptr %word, i64 0, i64 %idxprom54
  %31 = load i8, ptr %arrayidx55, align 1, !tbaa !11
  %conv56 = sext i8 %31 to i32
  %cmp57 = icmp ne i32 %conv56, 32
  br i1 %cmp57, label %if.then58, label %if.else62

if.then58:                                        ; preds = %for.body53
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom59 = sext i32 %32 to i64
  %arrayidx60 = getelementptr inbounds [100 x i8], ptr %word, i64 0, i64 %idxprom59
  %33 = load i8, ptr %arrayidx60, align 1, !tbaa !11
  %call61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %33)
  br label %if.end63

if.else62:                                        ; preds = %for.body53
  br label %for.end66

if.end63:                                         ; preds = %if.then58
  br label %for.inc64

for.inc64:                                        ; preds = %if.end63
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %inc65 = add nsw i32 %34, 1
  store i32 %inc65, ptr %i, align 4, !tbaa !5
  br label %for.cond51, !llvm.loop !19

for.end66:                                        ; preds = %if.else62, %for.cond51
  br label %if.end67

if.end67:                                         ; preds = %for.end66, %for.end25
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %flag) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.end.p0(i64 100, ptr %word) #9
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
  store ptr %this, ptr %this.addr, align 8, !tbaa !21
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !24
  store i64 %__n, ptr %__n.addr, align 8, !tbaa !26
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !24
  %1 = load i64, ptr %__n.addr, align 8, !tbaa !26
  %vtable = load ptr, ptr %this1, align 8, !tbaa !9
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0, i64 noundef %1, i8 noundef signext %call)
  ret ptr %call2
}

; Function Attrs: mustprogress uwtable
define available_externally noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !28
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %__out, i8 noundef signext %__c) #3 {
entry:
  %retval = alloca ptr, align 8
  %__out.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !30
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !11
  %0 = load ptr, ptr %__out.addr, align 8, !tbaa !30, !nonnull !32, !align !33
  %vtable = load ptr, ptr %0, align 8, !tbaa !9
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %vbase.offset
  %call = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr)
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !30, !nonnull !32, !align !33
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %__c.addr, i64 noundef 1)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !30, !nonnull !32, !align !33
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !11
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3)
  %4 = load ptr, ptr %__out.addr, align 8, !tbaa !30, !nonnull !32, !align !33
  store ptr %4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #3 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !30
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !24
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !24
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !30, !nonnull !32, !align !33
  %vtable = load ptr, ptr %1, align 8, !tbaa !9
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !30, !nonnull !32, !align !33
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !24
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !24
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !30, !nonnull !32, !align !33
  ret ptr %5
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) #4

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !28
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !11
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !34
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !11
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #3 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !49
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !49
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #10
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !49
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #2 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !49
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !11
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !50
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !11
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !11
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !11
  %vtable = load ptr, ptr %this1, align 8, !tbaa !9
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
declare void @_ZSt16__throw_bad_castv() #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #4

; Function Attrs: mustprogress uwtable
define available_externally noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !28
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef 1, i32 noundef 4)
  %call3 = call noundef i32 @_ZStanSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %call2)
  %cmp = icmp ne i32 %call3, 0
  ret i1 %cmp
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStanSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #6 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !56
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !56
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !56
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !56
  %and = and i32 %0, %1
  ret i32 %and
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #7 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !28
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !57
  ret i32 %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #6 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !56
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !56
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !56
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !56
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !58
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !60
  ret i64 %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #4

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !28
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !56
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !56
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this1, i32 noundef %call2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #7 comdat align 2 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !24
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !24
  %call = call i64 @strlen(ptr noundef %0) #9
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #4

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
!17 = distinct !{!17, !13, !14}
!18 = distinct !{!18, !13, !14}
!19 = distinct !{!19, !13, !14}
!20 = distinct !{!20, !13, !14}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTSSi", !23, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 omnipotent char", !23, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"long", !7, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !23, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTSSo", !23, i64 0}
!32 = !{}
!33 = !{i64 8}
!34 = !{!35, !46, i64 240}
!35 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !36, i64 0, !31, i64 216, !7, i64 224, !44, i64 225, !45, i64 232, !46, i64 240, !47, i64 248, !48, i64 256}
!36 = !{!"_ZTSSt8ios_base", !27, i64 8, !27, i64 16, !37, i64 24, !38, i64 28, !38, i64 32, !39, i64 40, !40, i64 48, !7, i64 64, !6, i64 192, !41, i64 200, !42, i64 208}
!37 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!38 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!39 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !23, i64 0}
!40 = !{!"_ZTSNSt8ios_base6_WordsE", !23, i64 0, !27, i64 8}
!41 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !23, i64 0}
!42 = !{!"_ZTSSt6locale", !43, i64 0}
!43 = !{!"p1 _ZTSNSt6locale5_ImplE", !23, i64 0}
!44 = !{!"bool", !7, i64 0}
!45 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !23, i64 0}
!46 = !{!"p1 _ZTSSt5ctypeIcE", !23, i64 0}
!47 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !23, i64 0}
!48 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !23, i64 0}
!49 = !{!46, !46, i64 0}
!50 = !{!51, !7, i64 56}
!51 = !{!"_ZTSSt5ctypeIcE", !52, i64 0, !53, i64 16, !44, i64 24, !54, i64 32, !54, i64 40, !55, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!52 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!53 = !{!"p1 _ZTS15__locale_struct", !23, i64 0}
!54 = !{!"p1 int", !23, i64 0}
!55 = !{!"p1 short", !23, i64 0}
!56 = !{!38, !38, i64 0}
!57 = !{!36, !38, i64 32}
!58 = !{!59, !59, i64 0}
!59 = !{!"p1 _ZTSSt8ios_base", !23, i64 0}
!60 = !{!36, !27, i64 16}
