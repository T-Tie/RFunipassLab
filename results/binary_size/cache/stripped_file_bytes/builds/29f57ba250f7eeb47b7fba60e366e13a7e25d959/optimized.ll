; ModuleID = '/tmp/tmp_9s95ecz.cpp'
source_filename = "/tmp/tmp_9s95ecz.cpp"
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

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z3cmpPKvS0_(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !5
  store ptr %b, ptr %b.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %1 = load i32, ptr %0, align 4, !tbaa !9
  %2 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %3 = load i32, ptr %2, align 4, !tbaa !9
  %sub = sub nsw i32 %1, %3
  ret i32 %sub
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z5chuliPii(ptr noundef %p, i32 noundef %i) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %q = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !11
  store i32 %i, ptr %i.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #8
  store i32 0, ptr %count, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #8
  store i32 0, ptr %q, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %0 = load i32, ptr %q, align 4, !tbaa !9
  %1 = load i32, ptr %i.addr, align 4, !tbaa !9
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup27

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %p.addr, align 8, !tbaa !11
  %3 = load i32, ptr %q, align 4, !tbaa !9
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !9
  %mul = mul nsw i32 2, %4
  %5 = load ptr, ptr %p.addr, align 8, !tbaa !11
  %6 = load i32, ptr %i.addr, align 4, !tbaa !9
  %sub = sub nsw i32 %6, 1
  %idxprom1 = sext i32 %sub to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %5, i64 %idxprom1
  %7 = load i32, ptr %arrayidx2, align 4, !tbaa !9
  %cmp3 = icmp sgt i32 %mul, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, ptr %count, align 4, !tbaa !9
  store i32 %8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  %9 = load i32, ptr %q, align 4, !tbaa !9
  store i32 %9, ptr %j, align 4, !tbaa !9
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %if.end
  %10 = load i32, ptr %j, align 4, !tbaa !9
  %11 = load i32, ptr %i.addr, align 4, !tbaa !9
  %cmp5 = icmp slt i32 %10, %11
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6

for.cond.cleanup6:                                ; preds = %for.cond4
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body7:                                        ; preds = %for.cond4
  %12 = load ptr, ptr %p.addr, align 8, !tbaa !11
  %13 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %12, i64 %idxprom8
  %14 = load i32, ptr %arrayidx9, align 4, !tbaa !9
  %15 = load ptr, ptr %p.addr, align 8, !tbaa !11
  %16 = load i32, ptr %q, align 4, !tbaa !9
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %15, i64 %idxprom10
  %17 = load i32, ptr %arrayidx11, align 4, !tbaa !9
  %mul12 = mul nsw i32 2, %17
  %cmp13 = icmp eq i32 %14, %mul12
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.body7
  %18 = load i32, ptr %count, align 4, !tbaa !9
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %count, align 4, !tbaa !9
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %for.body7
  %19 = load ptr, ptr %p.addr, align 8, !tbaa !11
  %20 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %19, i64 %idxprom16
  %21 = load i32, ptr %arrayidx17, align 4, !tbaa !9
  %22 = load ptr, ptr %p.addr, align 8, !tbaa !11
  %23 = load i32, ptr %q, align 4, !tbaa !9
  %idxprom18 = sext i32 %23 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %22, i64 %idxprom18
  %24 = load i32, ptr %arrayidx19, align 4, !tbaa !9
  %mul20 = mul nsw i32 2, %24
  %cmp21 = icmp sgt i32 %21, %mul20
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end15
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %25 = load i32, ptr %j, align 4, !tbaa !9
  %inc24 = add nsw i32 %25, 1
  store i32 %inc24, ptr %j, align 4, !tbaa !9
  br label %for.cond4, !llvm.loop !13

cleanup:                                          ; preds = %if.then22, %if.then14, %for.cond.cleanup6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  br label %for.end

for.end:                                          ; preds = %cleanup
  br label %for.inc25

for.inc25:                                        ; preds = %for.end
  %26 = load i32, ptr %q, align 4, !tbaa !9
  %inc26 = add nsw i32 %26, 1
  store i32 %inc26, ptr %q, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !16

cleanup27:                                        ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup29 [
    i32 2, label %for.end28
  ]

for.end28:                                        ; preds = %cleanup27
  %27 = load i32, ptr %count, align 4, !tbaa !9
  store i32 %27, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29

cleanup29:                                        ; preds = %for.end28, %cleanup27
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #8
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [20 x i32], align 16
  %num = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr %a) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %arrayidx = getelementptr inbounds [20 x i32], ptr %a, i64 0, i64 0
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %vtable = load ptr, ptr %call, align 8, !tbaa !17
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %call1 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr)
  br i1 %call1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %arrayidx2 = getelementptr inbounds [20 x i32], ptr %a, i64 0, i64 0
  %0 = load i32, ptr %arrayidx2, align 16, !tbaa !9
  %cmp = icmp ne i32 %0, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %1 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %1, label %while.body, label %while.end20

while.body:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 1, ptr %i, align 4, !tbaa !9
  br label %while.cond3

while.cond3:                                      ; preds = %while.body15, %while.body
  %2 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = sext i32 %2 to i64
  %arrayidx4 = getelementptr inbounds [20 x i32], ptr %a, i64 0, i64 %idxprom
  %call5 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx4)
  %vtable6 = load ptr, ptr %call5, align 8, !tbaa !17
  %vbase.offset.ptr7 = getelementptr i8, ptr %vtable6, i64 -24
  %vbase.offset8 = load i64, ptr %vbase.offset.ptr7, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %call5, i64 %vbase.offset8
  %call10 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr9)
  br i1 %call10, label %land.rhs11, label %land.end14

land.rhs11:                                       ; preds = %while.cond3
  %3 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom12 = sext i32 %3 to i64
  %arrayidx13 = getelementptr inbounds [20 x i32], ptr %a, i64 0, i64 %idxprom12
  %4 = load i32, ptr %arrayidx13, align 4, !tbaa !9
  %tobool = icmp ne i32 %4, 0
  br label %land.end14

land.end14:                                       ; preds = %land.rhs11, %while.cond3
  %5 = phi i1 [ false, %while.cond3 ], [ %tobool, %land.rhs11 ]
  br i1 %5, label %while.body15, label %while.end

while.body15:                                     ; preds = %land.end14
  %6 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %while.cond3, !llvm.loop !19

while.end:                                        ; preds = %land.end14
  %arraydecay = getelementptr inbounds [20 x i32], ptr %a, i64 0, i64 0
  %7 = load i32, ptr %i, align 4, !tbaa !9
  %conv = sext i32 %7 to i64
  call void @qsort(ptr noundef %arraydecay, i64 noundef %conv, i64 noundef 4, ptr noundef @_Z3cmpPKvS0_)
  %arraydecay16 = getelementptr inbounds [20 x i32], ptr %a, i64 0, i64 0
  %8 = load i32, ptr %i, align 4, !tbaa !9
  %call17 = call noundef i32 @_Z5chuliPii(ptr noundef %arraydecay16, i32 noundef %8)
  store i32 %call17, ptr %num, align 4, !tbaa !9
  %9 = load i32, ptr %num, align 4, !tbaa !9
  %call18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %9)
  %call19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call18, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  br label %while.cond, !llvm.loop !20

while.end20:                                      ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr %a) #8
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !21
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !23
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !5
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !23
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !23, !nonnull !25, !align !26
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !23, !nonnull !25, !align !26
  %vtable = load ptr, ptr %1, align 8, !tbaa !17
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: mustprogress uwtable
define available_externally noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !21
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
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !27
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !27
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !27
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !27
  %and = and i32 %0, %1
  ret i32 %and
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !21
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !29
  ret i32 %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #6 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !27
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !27
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !27
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !27
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !23
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !23, !nonnull !25, !align !26
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !21
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !38
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !39
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !38
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #3

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
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !38
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !47
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !38
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !38
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !38
  %vtable = load ptr, ptr %this1, align 8, !tbaa !17
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

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 int", !6, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !14, !15}
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !8, i64 0}
!19 = distinct !{!19, !14, !15}
!20 = distinct !{!20, !14, !15}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !6, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTSSo", !6, i64 0}
!25 = !{}
!26 = !{i64 8}
!27 = !{!28, !28, i64 0}
!28 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!29 = !{!30, !28, i64 32}
!30 = !{!"_ZTSSt8ios_base", !31, i64 8, !31, i64 16, !32, i64 24, !28, i64 28, !28, i64 32, !33, i64 40, !34, i64 48, !7, i64 64, !10, i64 192, !35, i64 200, !36, i64 208}
!31 = !{!"long", !7, i64 0}
!32 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!33 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !6, i64 0}
!34 = !{!"_ZTSNSt8ios_base6_WordsE", !6, i64 0, !31, i64 8}
!35 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !6, i64 0}
!36 = !{!"_ZTSSt6locale", !37, i64 0}
!37 = !{!"p1 _ZTSNSt6locale5_ImplE", !6, i64 0}
!38 = !{!7, !7, i64 0}
!39 = !{!40, !43, i64 240}
!40 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !30, i64 0, !24, i64 216, !7, i64 224, !41, i64 225, !42, i64 232, !43, i64 240, !44, i64 248, !45, i64 256}
!41 = !{!"bool", !7, i64 0}
!42 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !6, i64 0}
!43 = !{!"p1 _ZTSSt5ctypeIcE", !6, i64 0}
!44 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !6, i64 0}
!45 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !6, i64 0}
!46 = !{!43, !43, i64 0}
!47 = !{!48, !7, i64 56}
!48 = !{!"_ZTSSt5ctypeIcE", !49, i64 0, !50, i64 16, !41, i64 24, !12, i64 32, !12, i64 40, !51, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!49 = !{!"_ZTSNSt6locale5facetE", !10, i64 8}
!50 = !{!"p1 _ZTS15__locale_struct", !6, i64 0}
!51 = !{!"p1 short", !6, i64 0}
