; ModuleID = '/tmp/tmp4tdplyf5.cpp'
source_filename = "/tmp/tmp4tdplyf5.cpp"
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
  %k = alloca i32, align 4
  %a = alloca [26 x i32], align 16
  %r = alloca [26 x i32], align 16
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i11 = alloca i32, align 4
  %i22 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca i32, align 4
  %i56 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.start.p0(i64 104, ptr %a) #6
  call void @llvm.lifetime.start.p0(i64 104, ptr %r) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %k)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 26
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  br label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [26 x i32], ptr %a, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %i1) #6
  store i32 0, ptr %i1, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc8, %for.end
  %3 = load i32, ptr %i1, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %3, 26
  br i1 %cmp3, label %for.body5, label %for.cond.cleanup4

for.cond.cleanup4:                                ; preds = %for.cond2
  call void @llvm.lifetime.end.p0(i64 4, ptr %i1) #6
  br label %for.end10

for.body5:                                        ; preds = %for.cond2
  %4 = load i32, ptr %i1, align 4, !tbaa !5
  %idxprom6 = sext i32 %4 to i64
  %arrayidx7 = getelementptr inbounds [26 x i32], ptr %r, i64 0, i64 %idxprom6
  store i32 1, ptr %arrayidx7, align 4, !tbaa !5
  br label %for.inc8

for.inc8:                                         ; preds = %for.body5
  %5 = load i32, ptr %i1, align 4, !tbaa !5
  %inc9 = add nsw i32 %5, 1
  store i32 %inc9, ptr %i1, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.end10:                                        ; preds = %for.cond.cleanup4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i11) #6
  store i32 0, ptr %i11, align 4, !tbaa !5
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc19, %for.end10
  %6 = load i32, ptr %i11, align 4, !tbaa !5
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %6, %7
  br i1 %cmp13, label %for.body15, label %for.cond.cleanup14

for.cond.cleanup14:                               ; preds = %for.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %i11) #6
  br label %for.end21

for.body15:                                       ; preds = %for.cond12
  %8 = load i32, ptr %i11, align 4, !tbaa !5
  %idxprom16 = sext i32 %8 to i64
  %arrayidx17 = getelementptr inbounds [26 x i32], ptr %a, i64 0, i64 %idxprom16
  %call18 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx17)
  br label %for.inc19

for.inc19:                                        ; preds = %for.body15
  %9 = load i32, ptr %i11, align 4, !tbaa !5
  %inc20 = add nsw i32 %9, 1
  store i32 %inc20, ptr %i11, align 4, !tbaa !5
  br label %for.cond12, !llvm.loop !13

for.end21:                                        ; preds = %for.cond.cleanup14
  call void @llvm.lifetime.start.p0(i64 4, ptr %i22) #6
  store i32 0, ptr %i22, align 4, !tbaa !5
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc53, %for.end21
  %10 = load i32, ptr %i22, align 4, !tbaa !5
  %11 = load i32, ptr %k, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %10, %11
  br i1 %cmp24, label %for.body26, label %for.cond.cleanup25

for.cond.cleanup25:                               ; preds = %for.cond23
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i22) #6
  br label %for.end55

for.body26:                                       ; preds = %for.cond23
  %12 = load i32, ptr %i22, align 4, !tbaa !5
  %cmp27 = icmp eq i32 %12, 0
  br i1 %cmp27, label %if.then, label %if.else

if.then:                                          ; preds = %for.body26
  %13 = load i32, ptr %i22, align 4, !tbaa !5
  %idxprom28 = sext i32 %13 to i64
  %arrayidx29 = getelementptr inbounds [26 x i32], ptr %r, i64 0, i64 %idxprom28
  store i32 1, ptr %arrayidx29, align 4, !tbaa !5
  br label %if.end52

if.else:                                          ; preds = %for.body26
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc49, %if.else
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %15 = load i32, ptr %i22, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %14, %15
  br i1 %cmp31, label %for.body33, label %for.cond.cleanup32

for.cond.cleanup32:                               ; preds = %for.cond30
  store i32 14, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  br label %for.end51

for.body33:                                       ; preds = %for.cond30
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom34 = sext i32 %16 to i64
  %arrayidx35 = getelementptr inbounds [26 x i32], ptr %a, i64 0, i64 %idxprom34
  %17 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %18 = load i32, ptr %i22, align 4, !tbaa !5
  %idxprom36 = sext i32 %18 to i64
  %arrayidx37 = getelementptr inbounds [26 x i32], ptr %a, i64 0, i64 %idxprom36
  %19 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %cmp38 = icmp sge i32 %17, %19
  br i1 %cmp38, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body33
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom39 = sext i32 %20 to i64
  %arrayidx40 = getelementptr inbounds [26 x i32], ptr %r, i64 0, i64 %idxprom39
  %21 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %22 = load i32, ptr %i22, align 4, !tbaa !5
  %idxprom41 = sext i32 %22 to i64
  %arrayidx42 = getelementptr inbounds [26 x i32], ptr %r, i64 0, i64 %idxprom41
  %23 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %cmp43 = icmp sge i32 %21, %23
  br i1 %cmp43, label %if.then44, label %if.end

if.then44:                                        ; preds = %land.lhs.true
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom45 = sext i32 %24 to i64
  %arrayidx46 = getelementptr inbounds [26 x i32], ptr %r, i64 0, i64 %idxprom45
  %25 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %add = add nsw i32 %25, 1
  %26 = load i32, ptr %i22, align 4, !tbaa !5
  %idxprom47 = sext i32 %26 to i64
  %arrayidx48 = getelementptr inbounds [26 x i32], ptr %r, i64 0, i64 %idxprom47
  store i32 %add, ptr %arrayidx48, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then44, %land.lhs.true, %for.body33
  br label %for.inc49

for.inc49:                                        ; preds = %if.end
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %inc50 = add nsw i32 %27, 1
  store i32 %inc50, ptr %j, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !14

for.end51:                                        ; preds = %for.cond.cleanup32
  br label %if.end52

if.end52:                                         ; preds = %for.end51, %if.then
  br label %for.inc53

for.inc53:                                        ; preds = %if.end52
  %28 = load i32, ptr %i22, align 4, !tbaa !5
  %inc54 = add nsw i32 %28, 1
  store i32 %inc54, ptr %i22, align 4, !tbaa !5
  br label %for.cond23, !llvm.loop !15

for.end55:                                        ; preds = %for.cond.cleanup25
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #6
  store i32 0, ptr %s, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i56) #6
  store i32 0, ptr %i56, align 4, !tbaa !5
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc68, %for.end55
  %29 = load i32, ptr %i56, align 4, !tbaa !5
  %30 = load i32, ptr %k, align 4, !tbaa !5
  %cmp58 = icmp slt i32 %29, %30
  br i1 %cmp58, label %for.body60, label %for.cond.cleanup59

for.cond.cleanup59:                               ; preds = %for.cond57
  store i32 17, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i56) #6
  br label %for.end70

for.body60:                                       ; preds = %for.cond57
  %31 = load i32, ptr %i56, align 4, !tbaa !5
  %idxprom61 = sext i32 %31 to i64
  %arrayidx62 = getelementptr inbounds [26 x i32], ptr %r, i64 0, i64 %idxprom61
  %32 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %33 = load i32, ptr %s, align 4, !tbaa !5
  %cmp63 = icmp sgt i32 %32, %33
  br i1 %cmp63, label %if.then64, label %if.end67

if.then64:                                        ; preds = %for.body60
  %34 = load i32, ptr %i56, align 4, !tbaa !5
  %idxprom65 = sext i32 %34 to i64
  %arrayidx66 = getelementptr inbounds [26 x i32], ptr %r, i64 0, i64 %idxprom65
  %35 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  store i32 %35, ptr %s, align 4, !tbaa !5
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %for.body60
  br label %for.inc68

for.inc68:                                        ; preds = %if.end67
  %36 = load i32, ptr %i56, align 4, !tbaa !5
  %inc69 = add nsw i32 %36, 1
  store i32 %inc69, ptr %i56, align 4, !tbaa !5
  br label %for.cond57, !llvm.loop !16

for.end70:                                        ; preds = %for.cond.cleanup59
  %37 = load i32, ptr %s, align 4, !tbaa !5
  %call71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %37)
  %call72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call71, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #6
  call void @llvm.lifetime.end.p0(i64 104, ptr %r) #6
  call void @llvm.lifetime.end.p0(i64 104, ptr %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !17
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !20
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !20
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !17
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !17, !nonnull !21, !align !22
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !17, !nonnull !21, !align !22
  %vtable = load ptr, ptr %1, align 8, !tbaa !23
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !17
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !17, !nonnull !21, !align !22
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !25
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !27
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !28
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !27
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
  call void @_ZSt16__throw_bad_castv() #7
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
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !27
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !45
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !27
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !27
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !27
  %vtable = load ptr, ptr %this1, align 8, !tbaa !23
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

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!16 = distinct !{!16, !10, !11}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTSSo", !19, i64 0}
!19 = !{!"any pointer", !7, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{}
!22 = !{i64 8}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !8, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !19, i64 0}
!27 = !{!7, !7, i64 0}
!28 = !{!29, !41, i64 240}
!29 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !30, i64 0, !18, i64 216, !7, i64 224, !39, i64 225, !40, i64 232, !41, i64 240, !42, i64 248, !43, i64 256}
!30 = !{!"_ZTSSt8ios_base", !31, i64 8, !31, i64 16, !32, i64 24, !33, i64 28, !33, i64 32, !34, i64 40, !35, i64 48, !7, i64 64, !6, i64 192, !36, i64 200, !37, i64 208}
!31 = !{!"long", !7, i64 0}
!32 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!33 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!34 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !19, i64 0}
!35 = !{!"_ZTSNSt8ios_base6_WordsE", !19, i64 0, !31, i64 8}
!36 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !19, i64 0}
!37 = !{!"_ZTSSt6locale", !38, i64 0}
!38 = !{!"p1 _ZTSNSt6locale5_ImplE", !19, i64 0}
!39 = !{!"bool", !7, i64 0}
!40 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !19, i64 0}
!41 = !{!"p1 _ZTSSt5ctypeIcE", !19, i64 0}
!42 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!43 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!44 = !{!41, !41, i64 0}
!45 = !{!46, !7, i64 56}
!46 = !{!"_ZTSSt5ctypeIcE", !47, i64 0, !48, i64 16, !39, i64 24, !49, i64 32, !49, i64 40, !50, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!47 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!48 = !{!"p1 _ZTS15__locale_struct", !19, i64 0}
!49 = !{!"p1 int", !19, i64 0}
!50 = !{!"p1 short", !19, i64 0}
