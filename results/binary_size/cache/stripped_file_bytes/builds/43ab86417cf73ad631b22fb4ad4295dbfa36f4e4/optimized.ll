; ModuleID = '/tmp/tmpxfxbbq0v.cpp'
source_filename = "/tmp/tmpxfxbbq0v.cpp"
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

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  %j11 = alloca i32, align 4
  %j42 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #10
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call1, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #10
  store i32 99, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 400, ptr %a) #10
  call void @llvm.memset.p0.i64(ptr align 16 %a, i8 0, i64 400, i1 false)
  %1 = getelementptr inbounds <{ i32, [99 x i32] }>, ptr %a, i32 0, i32 0
  store i32 2, ptr %1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %if.end
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %3, 1
  %cmp3 = icmp slt i32 %2, %sub
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %cmp4 = icmp ne i32 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %5, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %land.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  br label %for.end38

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %6, %7
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  br label %for.end

for.body8:                                        ; preds = %for.cond5
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom
  %9 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %mul = mul nsw i32 %9, 2
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom9
  store i32 %mul, ptr %arrayidx10, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j11) #10
  store i32 0, ptr %j11, align 4, !tbaa !5
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc33, %for.end
  %12 = load i32, ptr %j11, align 4, !tbaa !5
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %12, %13
  br i1 %cmp13, label %for.body15, label %for.cond.cleanup14

for.cond.cleanup14:                               ; preds = %for.cond12
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j11) #10
  br label %for.end35

for.body15:                                       ; preds = %for.cond12
  %14 = load i32, ptr %j11, align 4, !tbaa !5
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom16
  %15 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %cmp18 = icmp sge i32 %15, 10
  br i1 %cmp18, label %if.then19, label %if.end32

if.then19:                                        ; preds = %for.body15
  %16 = load i32, ptr %j11, align 4, !tbaa !5
  %add = add nsw i32 %16, 1
  %idxprom20 = sext i32 %add to i64
  %arrayidx21 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom20
  %17 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %18 = load i32, ptr %j11, align 4, !tbaa !5
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom22
  %19 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %div = sdiv i32 %19, 10
  %add24 = add nsw i32 %17, %div
  %20 = load i32, ptr %j11, align 4, !tbaa !5
  %add25 = add nsw i32 %20, 1
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom26
  store i32 %add24, ptr %arrayidx27, align 4, !tbaa !5
  %21 = load i32, ptr %j11, align 4, !tbaa !5
  %idxprom28 = sext i32 %21 to i64
  %arrayidx29 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom28
  %22 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %rem = srem i32 %22, 10
  %23 = load i32, ptr %j11, align 4, !tbaa !5
  %idxprom30 = sext i32 %23 to i64
  %arrayidx31 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom30
  store i32 %rem, ptr %arrayidx31, align 4, !tbaa !5
  br label %if.end32

if.end32:                                         ; preds = %if.then19, %for.body15
  br label %for.inc33

for.inc33:                                        ; preds = %if.end32
  %24 = load i32, ptr %j11, align 4, !tbaa !5
  %inc34 = add nsw i32 %24, 1
  store i32 %inc34, ptr %j11, align 4, !tbaa !5
  br label %for.cond12, !llvm.loop !12

for.end35:                                        ; preds = %for.cond.cleanup14
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %inc37 = add nsw i32 %25, 1
  store i32 %inc37, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end38:                                        ; preds = %for.cond.cleanup
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end38
  %26 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom39 = sext i32 %26 to i64
  %arrayidx40 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom39
  %27 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %27, 0
  br i1 %cmp41, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = load i32, ptr %k, align 4, !tbaa !5
  %dec = add nsw i32 %28, -1
  store i32 %dec, ptr %k, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %j42) #10
  %29 = load i32, ptr %k, align 4, !tbaa !5
  store i32 %29, ptr %j42, align 4, !tbaa !5
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc53, %while.end
  %30 = load i32, ptr %j42, align 4, !tbaa !5
  %cmp44 = icmp sge i32 %30, 0
  br i1 %cmp44, label %land.rhs45, label %land.end47

land.rhs45:                                       ; preds = %for.cond43
  %31 = load i32, ptr %n, align 4, !tbaa !5
  %cmp46 = icmp ne i32 %31, 0
  br label %land.end47

land.end47:                                       ; preds = %land.rhs45, %for.cond43
  %32 = phi i1 [ false, %for.cond43 ], [ %cmp46, %land.rhs45 ]
  br i1 %32, label %for.body49, label %for.cond.cleanup48

for.cond.cleanup48:                               ; preds = %land.end47
  store i32 13, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j42) #10
  br label %for.end55

for.body49:                                       ; preds = %land.end47
  %33 = load i32, ptr %j42, align 4, !tbaa !5
  %idxprom50 = sext i32 %33 to i64
  %arrayidx51 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom50
  %34 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %call52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %34)
  br label %for.inc53

for.inc53:                                        ; preds = %for.body49
  %35 = load i32, ptr %j42, align 4, !tbaa !5
  %dec54 = add nsw i32 %35, -1
  store i32 %dec54, ptr %j42, align 4, !tbaa !5
  br label %for.cond43, !llvm.loop !15

for.end55:                                        ; preds = %for.cond.cleanup48
  %call56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 400, ptr %a) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #10
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #3 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !16
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !19
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !19
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !16, !nonnull !21, !align !22
  %vtable = load ptr, ptr %1, align 8, !tbaa !23
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !16, !nonnull !21, !align !22
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !19
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !19
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !16, !nonnull !21, !align !22
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !16
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !25
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !25
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #3 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !16
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !16, !nonnull !21, !align !22
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !16, !nonnull !21, !align !22
  %vtable = load ptr, ptr %1, align 8, !tbaa !23
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !26
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !28
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !28
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this1, i32 noundef %call2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #6 comdat align 2 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !19
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !19
  %call = call i64 @strlen(ptr noundef %0) #10
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #7 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !28
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !28
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !28
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !28
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !26
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !30
  ret i32 %0
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #8

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #3 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !16
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !16, !nonnull !21, !align !22
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
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !39
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !40
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !39
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #3 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !47
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !47
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #11
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !47
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #4 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !47
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !39
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !48
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !39
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !39
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !39
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
declare void @_ZSt16__throw_bad_castv() #9

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
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
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 omnipotent char", !18, i64 0}
!21 = !{}
!22 = !{i64 8}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !8, i64 0}
!25 = !{!18, !18, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !18, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!30 = !{!31, !29, i64 32}
!31 = !{!"_ZTSSt8ios_base", !32, i64 8, !32, i64 16, !33, i64 24, !29, i64 28, !29, i64 32, !34, i64 40, !35, i64 48, !7, i64 64, !6, i64 192, !36, i64 200, !37, i64 208}
!32 = !{!"long", !7, i64 0}
!33 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!34 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!35 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !32, i64 8}
!36 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!37 = !{!"_ZTSSt6locale", !38, i64 0}
!38 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!39 = !{!7, !7, i64 0}
!40 = !{!41, !44, i64 240}
!41 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !31, i64 0, !17, i64 216, !7, i64 224, !42, i64 225, !43, i64 232, !44, i64 240, !45, i64 248, !46, i64 256}
!42 = !{!"bool", !7, i64 0}
!43 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !18, i64 0}
!44 = !{!"p1 _ZTSSt5ctypeIcE", !18, i64 0}
!45 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!46 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!47 = !{!44, !44, i64 0}
!48 = !{!49, !7, i64 56}
!49 = !{!"_ZTSSt5ctypeIcE", !50, i64 0, !51, i64 16, !42, i64 24, !52, i64 32, !52, i64 40, !53, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!50 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!51 = !{!"p1 _ZTS15__locale_struct", !18, i64 0}
!52 = !{!"p1 int", !18, i64 0}
!53 = !{!"p1 short", !18, i64 0}
