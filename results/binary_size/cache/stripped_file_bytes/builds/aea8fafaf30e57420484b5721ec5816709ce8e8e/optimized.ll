; ModuleID = '/tmp/tmphr0bq4l5.cpp'
source_filename = "/tmp/tmphr0bq4l5.cpp"
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
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %h = alloca [30 x i32], align 16
  %l = alloca [30 x i32], align 16
  %r = alloca [30 x i32], align 16
  %j = alloca i32, align 4
  %j36 = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.start.p0(i64 120, ptr %h) #6
  call void @llvm.lifetime.start.p0(i64 120, ptr %l) #6
  call void @llvm.lifetime.start.p0(i64 120, ptr %r) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %k)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [30 x i32], ptr %h, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [30 x i32], ptr %l, i64 0, i64 %idxprom2
  store i32 1, ptr %arrayidx3, align 4, !tbaa !5
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [30 x i32], ptr %r, i64 0, i64 %idxprom4
  store i32 1, ptr %arrayidx5, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc30, %for.end
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %6, %7
  br i1 %cmp7, label %for.body8, label %for.end32

for.body8:                                        ; preds = %for.cond6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc27, %for.body8
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %8, %9
  br i1 %cmp10, label %for.body11, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond9
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  br label %for.end29

for.body11:                                       ; preds = %for.cond9
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [30 x i32], ptr %h, i64 0, i64 %idxprom12
  %11 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [30 x i32], ptr %h, i64 0, i64 %idxprom14
  %13 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp16 = icmp sge i32 %11, %13
  br i1 %cmp16, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body11
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [30 x i32], ptr %l, i64 0, i64 %idxprom17
  %15 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %add = add nsw i32 %15, 1
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [30 x i32], ptr %l, i64 0, i64 %idxprom19
  %17 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %cmp21 = icmp sgt i32 %add, %17
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [30 x i32], ptr %l, i64 0, i64 %idxprom22
  %19 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %add24 = add nsw i32 %19, 1
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %20 to i64
  %arrayidx26 = getelementptr inbounds [30 x i32], ptr %l, i64 0, i64 %idxprom25
  store i32 %add24, ptr %arrayidx26, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body11
  br label %for.inc27

for.inc27:                                        ; preds = %if.end
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %inc28 = add nsw i32 %21, 1
  store i32 %inc28, ptr %j, align 4, !tbaa !5
  br label %for.cond9, !llvm.loop !12

for.end29:                                        ; preds = %for.cond.cleanup
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %inc31 = add nsw i32 %22, 1
  store i32 %inc31, ptr %i, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !13

for.end32:                                        ; preds = %for.cond6
  %23 = load i32, ptr %k, align 4, !tbaa !5
  %sub = sub nsw i32 %23, 2
  store i32 %sub, ptr %i, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc63, %for.end32
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %cmp34 = icmp sgt i32 %24, 0
  br i1 %cmp34, label %for.body35, label %for.end65

for.body35:                                       ; preds = %for.cond33
  call void @llvm.lifetime.start.p0(i64 4, ptr %j36) #6
  %25 = load i32, ptr %k, align 4, !tbaa !5
  %sub37 = sub nsw i32 %25, 1
  store i32 %sub37, ptr %j36, align 4, !tbaa !5
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc61, %for.body35
  %26 = load i32, ptr %j36, align 4, !tbaa !5
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %cmp39 = icmp sgt i32 %26, %27
  br i1 %cmp39, label %for.body41, label %for.cond.cleanup40

for.cond.cleanup40:                               ; preds = %for.cond38
  call void @llvm.lifetime.end.p0(i64 4, ptr %j36) #6
  br label %for.end62

for.body41:                                       ; preds = %for.cond38
  %28 = load i32, ptr %j36, align 4, !tbaa !5
  %idxprom42 = sext i32 %28 to i64
  %arrayidx43 = getelementptr inbounds [30 x i32], ptr %h, i64 0, i64 %idxprom42
  %29 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom44 = sext i32 %30 to i64
  %arrayidx45 = getelementptr inbounds [30 x i32], ptr %h, i64 0, i64 %idxprom44
  %31 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %cmp46 = icmp sle i32 %29, %31
  br i1 %cmp46, label %land.lhs.true47, label %if.end60

land.lhs.true47:                                  ; preds = %for.body41
  %32 = load i32, ptr %j36, align 4, !tbaa !5
  %idxprom48 = sext i32 %32 to i64
  %arrayidx49 = getelementptr inbounds [30 x i32], ptr %r, i64 0, i64 %idxprom48
  %33 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %add50 = add nsw i32 %33, 1
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom51 = sext i32 %34 to i64
  %arrayidx52 = getelementptr inbounds [30 x i32], ptr %r, i64 0, i64 %idxprom51
  %35 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %cmp53 = icmp sgt i32 %add50, %35
  br i1 %cmp53, label %if.then54, label %if.end60

if.then54:                                        ; preds = %land.lhs.true47
  %36 = load i32, ptr %j36, align 4, !tbaa !5
  %idxprom55 = sext i32 %36 to i64
  %arrayidx56 = getelementptr inbounds [30 x i32], ptr %r, i64 0, i64 %idxprom55
  %37 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %add57 = add nsw i32 %37, 1
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom58 = sext i32 %38 to i64
  %arrayidx59 = getelementptr inbounds [30 x i32], ptr %r, i64 0, i64 %idxprom58
  store i32 %add57, ptr %arrayidx59, align 4, !tbaa !5
  br label %if.end60

if.end60:                                         ; preds = %if.then54, %land.lhs.true47, %for.body41
  br label %for.inc61

for.inc61:                                        ; preds = %if.end60
  %39 = load i32, ptr %j36, align 4, !tbaa !5
  %dec = add nsw i32 %39, -1
  store i32 %dec, ptr %j36, align 4, !tbaa !5
  br label %for.cond38, !llvm.loop !14

for.end62:                                        ; preds = %for.cond.cleanup40
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %dec64 = add nsw i32 %40, -1
  store i32 %dec64, ptr %i, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !15

for.end65:                                        ; preds = %for.cond33
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #6
  store i32 0, ptr %m, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc84, %for.end65
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %42 = load i32, ptr %k, align 4, !tbaa !5
  %cmp67 = icmp slt i32 %41, %42
  br i1 %cmp67, label %for.body68, label %for.end86

for.body68:                                       ; preds = %for.cond66
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom69 = sext i32 %43 to i64
  %arrayidx70 = getelementptr inbounds [30 x i32], ptr %l, i64 0, i64 %idxprom69
  %44 = load i32, ptr %arrayidx70, align 4, !tbaa !5
  %45 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom71 = sext i32 %45 to i64
  %arrayidx72 = getelementptr inbounds [30 x i32], ptr %r, i64 0, i64 %idxprom71
  %46 = load i32, ptr %arrayidx72, align 4, !tbaa !5
  %add73 = add nsw i32 %44, %46
  %sub74 = sub nsw i32 %add73, 1
  %47 = load i32, ptr %m, align 4, !tbaa !5
  %cmp75 = icmp sgt i32 %sub74, %47
  br i1 %cmp75, label %if.then76, label %if.end83

if.then76:                                        ; preds = %for.body68
  %48 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom77 = sext i32 %48 to i64
  %arrayidx78 = getelementptr inbounds [30 x i32], ptr %l, i64 0, i64 %idxprom77
  %49 = load i32, ptr %arrayidx78, align 4, !tbaa !5
  %50 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom79 = sext i32 %50 to i64
  %arrayidx80 = getelementptr inbounds [30 x i32], ptr %r, i64 0, i64 %idxprom79
  %51 = load i32, ptr %arrayidx80, align 4, !tbaa !5
  %add81 = add nsw i32 %49, %51
  %sub82 = sub nsw i32 %add81, 1
  store i32 %sub82, ptr %m, align 4, !tbaa !5
  br label %if.end83

if.end83:                                         ; preds = %if.then76, %for.body68
  br label %for.inc84

for.inc84:                                        ; preds = %if.end83
  %52 = load i32, ptr %i, align 4, !tbaa !5
  %inc85 = add nsw i32 %52, 1
  store i32 %inc85, ptr %i, align 4, !tbaa !5
  br label %for.cond66, !llvm.loop !16

for.end86:                                        ; preds = %for.cond66
  %53 = load i32, ptr %m, align 4, !tbaa !5
  %call87 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %53)
  %call88 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call87, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #6
  call void @llvm.lifetime.end.p0(i64 120, ptr %r) #6
  call void @llvm.lifetime.end.p0(i64 120, ptr %l) #6
  call void @llvm.lifetime.end.p0(i64 120, ptr %h) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret i32 0
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
