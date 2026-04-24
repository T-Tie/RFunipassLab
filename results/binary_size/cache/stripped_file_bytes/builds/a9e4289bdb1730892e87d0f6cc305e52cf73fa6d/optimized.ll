; ModuleID = '/tmp/tmphp33jyau.cpp'
source_filename = "/tmp/tmphp33jyau.cpp"
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
  %N = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %N) #8
  call void @llvm.lifetime.start.p0(i64 400, ptr %a) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  %arraydecay = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 400, i1 false)
  %arrayidx = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 0
  store i32 2, ptr %arrayidx, align 16, !tbaa !5
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call1, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end71

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %N, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %1, 1
  br i1 %cmp3, label %if.then4, label %if.else7

if.then4:                                         ; preds = %if.else
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 2)
  %call6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call5, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end70

if.else7:                                         ; preds = %if.else
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %if.else7
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %N, align 4, !tbaa !5
  %sub = sub nsw i32 %3, 1
  %cmp8 = icmp sle i32 %2, %sub
  br i1 %cmp8, label %for.body, label %for.end38

for.body:                                         ; preds = %for.cond
  %arraydecay9 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 0
  %call10 = call noundef i32 @_Z5shumuPi(ptr noundef %arraydecay9)
  %add = add nsw i32 %call10, 1
  store i32 %add, ptr %m, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %m, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %4, %5
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx14 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom
  %7 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %mul = mul nsw i32 %7, 2
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom15 = sext i32 %8 to i64
  %arrayidx16 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom15
  store i32 %mul, ptr %arrayidx16, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !9

for.end:                                          ; preds = %for.cond11
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc33, %for.end
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %m, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %10, %11
  br i1 %cmp18, label %for.body19, label %for.end35

for.body19:                                       ; preds = %for.cond17
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom20 = sext i32 %12 to i64
  %arrayidx21 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom20
  %13 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %cmp22 = icmp sge i32 %13, 10
  br i1 %cmp22, label %if.then23, label %if.end

if.then23:                                        ; preds = %for.body19
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %add24 = add nsw i32 %14, 1
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom25
  %15 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %inc27 = add nsw i32 %15, 1
  store i32 %inc27, ptr %arrayidx26, align 4, !tbaa !5
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom28 = sext i32 %16 to i64
  %arrayidx29 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom28
  %17 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %sub30 = sub nsw i32 %17, 10
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom31 = sext i32 %18 to i64
  %arrayidx32 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom31
  store i32 %sub30, ptr %arrayidx32, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then23, %for.body19
  br label %for.inc33

for.inc33:                                        ; preds = %if.end
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %inc34 = add nsw i32 %19, 1
  store i32 %inc34, ptr %j, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !12

for.end35:                                        ; preds = %for.cond17
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %inc37 = add nsw i32 %20, 1
  store i32 %inc37, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end38:                                        ; preds = %for.cond
  %21 = load i32, ptr %m, align 4, !tbaa !5
  %idxprom39 = sext i32 %21 to i64
  %arrayidx40 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom39
  %22 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %22, 0
  br i1 %cmp41, label %if.then42, label %if.else53

if.then42:                                        ; preds = %for.end38
  %23 = load i32, ptr %m, align 4, !tbaa !5
  %sub43 = sub nsw i32 %23, 1
  store i32 %sub43, ptr %i, align 4, !tbaa !5
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc50, %if.then42
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %cmp45 = icmp sge i32 %24, 0
  br i1 %cmp45, label %for.body46, label %for.end51

for.body46:                                       ; preds = %for.cond44
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom47 = sext i32 %25 to i64
  %arrayidx48 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom47
  %26 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %call49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %26)
  br label %for.inc50

for.inc50:                                        ; preds = %for.body46
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %27, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  br label %for.cond44, !llvm.loop !14

for.end51:                                        ; preds = %for.cond44
  %call52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end69

if.else53:                                        ; preds = %for.end38
  %28 = load i32, ptr %m, align 4, !tbaa !5
  %idxprom54 = sext i32 %28 to i64
  %arrayidx55 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom54
  %29 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  %cmp56 = icmp ne i32 %29, 0
  br i1 %cmp56, label %if.then57, label %if.end68

if.then57:                                        ; preds = %if.else53
  %30 = load i32, ptr %m, align 4, !tbaa !5
  store i32 %30, ptr %i, align 4, !tbaa !5
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc64, %if.then57
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %cmp59 = icmp sge i32 %31, 0
  br i1 %cmp59, label %for.body60, label %for.end66

for.body60:                                       ; preds = %for.cond58
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom61 = sext i32 %32 to i64
  %arrayidx62 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom61
  %33 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %call63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %33)
  br label %for.inc64

for.inc64:                                        ; preds = %for.body60
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %dec65 = add nsw i32 %34, -1
  store i32 %dec65, ptr %i, align 4, !tbaa !5
  br label %for.cond58, !llvm.loop !15

for.end66:                                        ; preds = %for.cond58
  %call67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end68

if.end68:                                         ; preds = %for.end66, %if.else53
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %for.end51
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then4
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 400, ptr %a) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %N) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !16
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !19
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !19
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !16
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !16, !nonnull !20, !align !21
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !16, !nonnull !20, !align !21
  %vtable = load ptr, ptr %1, align 8, !tbaa !22
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z5shumuPi(ptr noundef %a) #6 {
entry:
  %a.addr = alloca ptr, align 8
  %k = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8
  store i32 99, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !24
  %1 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %k, align 4, !tbaa !5
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8
  ret i32 %4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !16
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !16, !nonnull !20, !align !21
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !27
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !29
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !30
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !29
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #5 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !46
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !46
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #9
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !46
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #4 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !46
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !29
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !47
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !29
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !29
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !29
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
declare void @_ZSt16__throw_bad_castv() #7

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!17 = !{!"p1 _ZTSSo", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{}
!21 = !{i64 8}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !8, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 int", !18, i64 0}
!26 = distinct !{!26, !10, !11}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !18, i64 0}
!29 = !{!7, !7, i64 0}
!30 = !{!31, !43, i64 240}
!31 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !32, i64 0, !17, i64 216, !7, i64 224, !41, i64 225, !42, i64 232, !43, i64 240, !44, i64 248, !45, i64 256}
!32 = !{!"_ZTSSt8ios_base", !33, i64 8, !33, i64 16, !34, i64 24, !35, i64 28, !35, i64 32, !36, i64 40, !37, i64 48, !7, i64 64, !6, i64 192, !38, i64 200, !39, i64 208}
!33 = !{!"long", !7, i64 0}
!34 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!35 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!36 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!37 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !33, i64 8}
!38 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!39 = !{!"_ZTSSt6locale", !40, i64 0}
!40 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!41 = !{!"bool", !7, i64 0}
!42 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !18, i64 0}
!43 = !{!"p1 _ZTSSt5ctypeIcE", !18, i64 0}
!44 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!45 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!46 = !{!43, !43, i64 0}
!47 = !{!48, !7, i64 56}
!48 = !{!"_ZTSSt5ctypeIcE", !49, i64 0, !50, i64 16, !41, i64 24, !25, i64 32, !25, i64 40, !51, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!49 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!50 = !{!"p1 _ZTS15__locale_struct", !18, i64 0}
!51 = !{!"p1 short", !18, i64 0}
