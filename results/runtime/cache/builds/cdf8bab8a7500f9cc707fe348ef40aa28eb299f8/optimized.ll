; ModuleID = '<stdin>'
source_filename = "/tmp/tmpu09qo3hl.cpp"
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
  %n = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %m = alloca i32, align 4
  %q = alloca i32, align 4
  %min = alloca i32, align 4
  %r = alloca i32, align 4
  %h = alloca i32, align 4
  %w = alloca i32, align 4
  %v = alloca i32, align 4
  %number = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #7
  store i32 0, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %s) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %t) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %q) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %min) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %r) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %h) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %w) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %v) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 1, ptr %r, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc138, %entry
  %0 = load i32, ptr %r, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end140

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %number) #8
  store i32 0, ptr %number, align 4, !tbaa !5
  %add = add nsw i32 %1, 1
  %2 = zext i32 %add to i64
  %3 = call ptr @llvm.stacksave.p0()
  %4 = mul nuw i64 %2, %2
  %vla = alloca i32, i64 %4, align 16
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc11, %for.body
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %5, %1
  br i1 %cmp3, label %for.body4, label %for.end13

for.body4:                                        ; preds = %for.cond2
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %cmp6 = icmp sle i32 %6, %1
  br i1 %cmp6, label %for.inc, label %for.inc11

for.inc:                                          ; preds = %for.cond5
  %idxprom = sext i32 %5 to i64
  %7 = mul nsw i64 %idxprom, %2
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %7
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %arrayidx, i64 %idxprom8
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx9)
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !9

for.inc11:                                        ; preds = %for.cond5
  %inc12 = add nsw i32 %5, 1
  store i32 %inc12, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.end13:                                        ; preds = %for.cond2
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc133, %for.end13
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  %cmp15 = icmp sle i32 %8, %sub
  br i1 %cmp15, label %for.body16, label %for.inc138

for.body16:                                       ; preds = %for.cond14
  store i32 %8, ptr %s, align 4, !tbaa !5
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc50, %for.body16
  %9 = load i32, ptr %s, align 4, !tbaa !5
  %cmp18 = icmp sle i32 %9, %1
  br i1 %cmp18, label %for.body19, label %for.end52

for.body19:                                       ; preds = %for.cond17
  %idxprom20 = sext i32 %9 to i64
  %10 = mul nsw i64 %idxprom20, %2
  %arrayidx21 = getelementptr inbounds i32, ptr %vla, i64 %10
  %idxprom22 = sext i32 %8 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %arrayidx21, i64 %idxprom22
  %11 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  store i32 %11, ptr %min, align 4, !tbaa !5
  store i32 %8, ptr %t, align 4, !tbaa !5
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc36, %for.body19
  %12 = load i32, ptr %t, align 4, !tbaa !5
  %cmp25 = icmp sle i32 %12, %1
  br i1 %cmp25, label %for.body26, label %for.end38

for.body26:                                       ; preds = %for.cond24
  %idxprom29 = sext i32 %12 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %arrayidx21, i64 %idxprom29
  %13 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %14 = load i32, ptr %min, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %13, %14
  br i1 %cmp31, label %if.then, label %for.inc36

if.then:                                          ; preds = %for.body26
  store i32 %13, ptr %min, align 4, !tbaa !5
  br label %for.inc36

for.inc36:                                        ; preds = %for.body26, %if.then
  %inc37 = add nsw i32 %12, 1
  store i32 %inc37, ptr %t, align 4, !tbaa !5
  br label %for.cond24, !llvm.loop !13

for.end38:                                        ; preds = %for.cond24
  store i32 %8, ptr %m, align 4, !tbaa !5
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc47, %for.end38
  %15 = load i32, ptr %m, align 4, !tbaa !5
  %cmp40 = icmp sle i32 %15, %1
  br i1 %cmp40, label %for.inc47, label %for.inc50

for.inc47:                                        ; preds = %for.cond39
  %16 = load i32, ptr %min, align 4, !tbaa !5
  %idxprom44 = sext i32 %15 to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %arrayidx21, i64 %idxprom44
  %17 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %sub46 = sub nsw i32 %17, %16
  store i32 %sub46, ptr %arrayidx45, align 4, !tbaa !5
  %inc48 = add nsw i32 %15, 1
  store i32 %inc48, ptr %m, align 4, !tbaa !5
  br label %for.cond39, !llvm.loop !14

for.inc50:                                        ; preds = %for.cond39
  %inc51 = add nsw i32 %9, 1
  store i32 %inc51, ptr %s, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !15

for.end52:                                        ; preds = %for.cond17
  store i32 %8, ptr %h, align 4, !tbaa !5
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc88, %for.end52
  %18 = load i32, ptr %h, align 4, !tbaa !5
  %cmp54 = icmp sle i32 %18, %1
  br i1 %cmp54, label %for.body55, label %for.end90

for.body55:                                       ; preds = %for.cond53
  %idxprom56 = sext i32 %8 to i64
  %19 = mul nsw i64 %idxprom56, %2
  %arrayidx57 = getelementptr inbounds i32, ptr %vla, i64 %19
  %idxprom58 = sext i32 %18 to i64
  %arrayidx59 = getelementptr inbounds i32, ptr %arrayidx57, i64 %idxprom58
  %20 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  store i32 %20, ptr %min, align 4, !tbaa !5
  store i32 %8, ptr %w, align 4, !tbaa !5
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc74, %for.body55
  %21 = load i32, ptr %w, align 4, !tbaa !5
  %cmp61 = icmp sle i32 %21, %1
  br i1 %cmp61, label %for.body62, label %for.end76

for.body62:                                       ; preds = %for.cond60
  %idxprom63 = sext i32 %21 to i64
  %22 = mul nsw i64 %idxprom63, %2
  %arrayidx64 = getelementptr inbounds i32, ptr %vla, i64 %22
  %arrayidx66 = getelementptr inbounds i32, ptr %arrayidx64, i64 %idxprom58
  %23 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  %24 = load i32, ptr %min, align 4, !tbaa !5
  %cmp67 = icmp slt i32 %23, %24
  br i1 %cmp67, label %if.then68, label %for.inc74

if.then68:                                        ; preds = %for.body62
  store i32 %23, ptr %min, align 4, !tbaa !5
  br label %for.inc74

for.inc74:                                        ; preds = %for.body62, %if.then68
  %inc75 = add nsw i32 %21, 1
  store i32 %inc75, ptr %w, align 4, !tbaa !5
  br label %for.cond60, !llvm.loop !16

for.end76:                                        ; preds = %for.cond60
  store i32 %8, ptr %q, align 4, !tbaa !5
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc85, %for.end76
  %25 = load i32, ptr %q, align 4, !tbaa !5
  %cmp78 = icmp sle i32 %25, %1
  br i1 %cmp78, label %for.inc85, label %for.inc88

for.inc85:                                        ; preds = %for.cond77
  %26 = load i32, ptr %min, align 4, !tbaa !5
  %idxprom80 = sext i32 %25 to i64
  %27 = mul nsw i64 %idxprom80, %2
  %arrayidx81 = getelementptr inbounds i32, ptr %vla, i64 %27
  %arrayidx83 = getelementptr inbounds i32, ptr %arrayidx81, i64 %idxprom58
  %28 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %sub84 = sub nsw i32 %28, %26
  store i32 %sub84, ptr %arrayidx83, align 4, !tbaa !5
  %inc86 = add nsw i32 %25, 1
  store i32 %inc86, ptr %q, align 4, !tbaa !5
  br label %for.cond77, !llvm.loop !17

for.inc88:                                        ; preds = %for.cond77
  %inc89 = add nsw i32 %18, 1
  store i32 %inc89, ptr %h, align 4, !tbaa !5
  br label %for.cond53, !llvm.loop !18

for.end90:                                        ; preds = %for.cond53
  %add91 = add nsw i32 %8, 1
  %idxprom92 = sext i32 %add91 to i64
  %29 = mul nsw i64 %idxprom92, %2
  %arrayidx93 = getelementptr inbounds i32, ptr %vla, i64 %29
  %arrayidx96 = getelementptr inbounds i32, ptr %arrayidx93, i64 %idxprom92
  %30 = load i32, ptr %arrayidx96, align 4, !tbaa !5, !invariant.load !19
  %31 = load i32, ptr %number, align 4, !tbaa !5
  %add97 = add nsw i32 %31, %30
  store i32 %add97, ptr %number, align 4, !tbaa !5
  %idxprom98 = sext i32 %8 to i64
  %32 = mul nsw i64 %idxprom98, %2
  %arrayidx99 = getelementptr inbounds i32, ptr %vla, i64 %32
  %arrayidx101 = getelementptr inbounds i32, ptr %arrayidx99, i64 %idxprom98
  %33 = load i32, ptr %arrayidx101, align 4, !tbaa !5
  store i32 %33, ptr %arrayidx96, align 4, !tbaa !5
  %add108 = add nsw i32 %8, 2
  store i32 %add108, ptr %v, align 4, !tbaa !5
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc130, %for.end90
  %34 = load i32, ptr %v, align 4, !tbaa !5
  %cmp110 = icmp sle i32 %34, %1
  br i1 %cmp110, label %for.inc130, label %for.inc133

for.inc130:                                       ; preds = %for.cond109
  %idxprom114 = sext i32 %34 to i64
  %arrayidx115 = getelementptr inbounds i32, ptr %arrayidx99, i64 %idxprom114
  %35 = load i32, ptr %arrayidx115, align 4, !tbaa !5
  %arrayidx120 = getelementptr inbounds i32, ptr %arrayidx93, i64 %idxprom114
  store i32 %35, ptr %arrayidx120, align 4, !tbaa !5
  %36 = mul nsw i64 %idxprom114, %2
  %arrayidx122 = getelementptr inbounds i32, ptr %vla, i64 %36
  %arrayidx124 = getelementptr inbounds i32, ptr %arrayidx122, i64 %idxprom98
  %37 = load i32, ptr %arrayidx124, align 4, !tbaa !5
  %arrayidx129 = getelementptr inbounds i32, ptr %arrayidx122, i64 %idxprom92
  store i32 %37, ptr %arrayidx129, align 4, !tbaa !5
  %inc131 = add nsw i32 %34, 1
  store i32 %inc131, ptr %v, align 4, !tbaa !5
  br label %for.cond109, !llvm.loop !20

for.inc133:                                       ; preds = %for.cond109
  store i32 %add91, ptr %k, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !21

for.inc138:                                       ; preds = %for.cond14
  %38 = load i32, ptr %number, align 4, !tbaa !5
  %call136 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %38)
  %call137 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call136, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.stackrestore.p0(ptr %3)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %number) #8
  %inc139 = add nsw i32 %0, 1
  store i32 %inc139, ptr %r, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !22

for.end140:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %v) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %w) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %h) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %r) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %min) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %q) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %t) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %s) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #4 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %__pf(ptr noundef nonnull align 8 dereferenceable(8) %this)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %vtable = load ptr, ptr %__os, align 8, !tbaa !23
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !19
  %add.ptr = getelementptr inbounds i8, ptr %__os, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %__os, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %__os)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !25
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %__c)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #5 comdat {
entry:
  %tobool = icmp ne ptr %__f, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #9
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #4 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !43
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !49
  store i8 %1, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !23
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !19
  %call = call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  store i8 %call, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i8, ptr %retval, align 1
  ret i8 %3
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
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
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = !{}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !8, i64 0}
!25 = !{!26, !40, i64 240}
!26 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !27, i64 0, !37, i64 216, !7, i64 224, !38, i64 225, !39, i64 232, !40, i64 240, !41, i64 248, !42, i64 256}
!27 = !{!"_ZTSSt8ios_base", !28, i64 8, !28, i64 16, !29, i64 24, !30, i64 28, !30, i64 32, !31, i64 40, !33, i64 48, !7, i64 64, !6, i64 192, !34, i64 200, !35, i64 208}
!28 = !{!"long", !7, i64 0}
!29 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!30 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!31 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !32, i64 0}
!32 = !{!"any pointer", !7, i64 0}
!33 = !{!"_ZTSNSt8ios_base6_WordsE", !32, i64 0, !28, i64 8}
!34 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !32, i64 0}
!35 = !{!"_ZTSSt6locale", !36, i64 0}
!36 = !{!"p1 _ZTSNSt6locale5_ImplE", !32, i64 0}
!37 = !{!"p1 _ZTSSo", !32, i64 0}
!38 = !{!"bool", !7, i64 0}
!39 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !32, i64 0}
!40 = !{!"p1 _ZTSSt5ctypeIcE", !32, i64 0}
!41 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !32, i64 0}
!42 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !32, i64 0}
!43 = !{!44, !7, i64 56}
!44 = !{!"_ZTSSt5ctypeIcE", !45, i64 0, !46, i64 16, !38, i64 24, !47, i64 32, !47, i64 40, !48, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!45 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!46 = !{!"p1 _ZTS15__locale_struct", !32, i64 0}
!47 = !{!"p1 int", !32, i64 0}
!48 = !{!"p1 short", !32, i64 0}
!49 = !{!7, !7, i64 0}
