; ModuleID = '/tmp/tmp94w20kgz.cpp'
source_filename = "/tmp/tmp94w20kgz.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %__vla_expr2 = alloca i64, align 8
  %__vla_expr3 = alloca i64, align 8
  %c = alloca [100 x [100 x i32]], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %x1) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %y1) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %x2) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %y2) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #11
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = zext i32 %2 to i64
  %4 = call ptr @llvm.stacksave.p0()
  store ptr %4, ptr %saved_stack, align 8
  %5 = mul nuw i64 %1, %3
  %vla = alloca i32, i64 %5, align 16
  store i64 %1, ptr %__vla_expr0, align 8
  store i64 %3, ptr %__vla_expr1, align 8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %9 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %8, %9
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %11 = mul nsw i64 %idxprom, %3
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %11
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %arrayidx, i64 %idxprom5
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %inc9 = add nsw i32 %14, 1
  store i32 %inc9, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  %15 = load i32, ptr %x2, align 4, !tbaa !5
  %16 = zext i32 %15 to i64
  %17 = load i32, ptr %y2, align 4, !tbaa !5
  %18 = zext i32 %17 to i64
  %19 = mul nuw i64 %16, %18
  %vla13 = alloca i32, i64 %19, align 16
  store i64 %16, ptr %__vla_expr2, align 8
  store i64 %18, ptr %__vla_expr3, align 8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc28, %for.end10
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %21 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %20, %21
  br i1 %cmp15, label %for.body16, label %for.end30

for.body16:                                       ; preds = %for.cond14
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc25, %for.body16
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %23 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %22, %23
  br i1 %cmp18, label %for.body19, label %for.end27

for.body19:                                       ; preds = %for.cond17
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %24 to i64
  %25 = mul nsw i64 %idxprom20, %18
  %arrayidx21 = getelementptr inbounds i32, ptr %vla13, i64 %25
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom22 = sext i32 %26 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %arrayidx21, i64 %idxprom22
  %call24 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx23)
  br label %for.inc25

for.inc25:                                        ; preds = %for.body19
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %inc26 = add nsw i32 %27, 1
  store i32 %inc26, ptr %j, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !13

for.end27:                                        ; preds = %for.cond17
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %inc29 = add nsw i32 %28, 1
  store i32 %inc29, ptr %i, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !14

for.end30:                                        ; preds = %for.cond14
  call void @llvm.lifetime.start.p0(i64 40000, ptr %c) #11
  call void @llvm.memset.p0.i64(ptr align 16 %c, i8 0, i64 40000, i1 false)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc72, %for.end30
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %30 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %29, %30
  br i1 %cmp32, label %for.body33, label %for.end74

for.body33:                                       ; preds = %for.cond31
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc69, %for.body33
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %32 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %31, %32
  br i1 %cmp35, label %for.body36, label %for.end71

for.body36:                                       ; preds = %for.cond34
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc52, %for.body36
  %33 = load i32, ptr %k, align 4, !tbaa !5
  %34 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %33, %34
  br i1 %cmp38, label %for.body39, label %for.end54

for.body39:                                       ; preds = %for.cond37
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %35 to i64
  %36 = mul nsw i64 %idxprom40, %3
  %arrayidx41 = getelementptr inbounds i32, ptr %vla, i64 %36
  %37 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom42 = sext i32 %37 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %arrayidx41, i64 %idxprom42
  %38 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %39 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom44 = sext i32 %39 to i64
  %40 = mul nsw i64 %idxprom44, %18
  %arrayidx45 = getelementptr inbounds i32, ptr %vla13, i64 %40
  %41 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom46 = sext i32 %41 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %arrayidx45, i64 %idxprom46
  %42 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %mul = mul nsw i32 %38, %42
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %43 to i64
  %arrayidx49 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %idxprom48
  %44 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom50 = sext i32 %44 to i64
  %arrayidx51 = getelementptr inbounds [100 x i32], ptr %arrayidx49, i64 0, i64 %idxprom50
  %45 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %add = add nsw i32 %45, %mul
  store i32 %add, ptr %arrayidx51, align 4, !tbaa !5
  br label %for.inc52

for.inc52:                                        ; preds = %for.body39
  %46 = load i32, ptr %k, align 4, !tbaa !5
  %inc53 = add nsw i32 %46, 1
  store i32 %inc53, ptr %k, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !15

for.end54:                                        ; preds = %for.cond37
  %47 = load i32, ptr %j, align 4, !tbaa !5
  %48 = load i32, ptr %y2, align 4, !tbaa !5
  %sub = sub nsw i32 %48, 1
  %cmp55 = icmp slt i32 %47, %sub
  br i1 %cmp55, label %if.then, label %if.else

if.then:                                          ; preds = %for.end54
  %49 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom56 = sext i32 %49 to i64
  %arrayidx57 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %idxprom56
  %50 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom58 = sext i32 %50 to i64
  %arrayidx59 = getelementptr inbounds [100 x i32], ptr %arrayidx57, i64 0, i64 %idxprom58
  %51 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %call60 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %51)
  %call61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call60, ptr noundef @.str)
  br label %if.end

if.else:                                          ; preds = %for.end54
  %52 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom62 = sext i32 %52 to i64
  %arrayidx63 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %idxprom62
  %53 = load i32, ptr %y2, align 4, !tbaa !5
  %sub64 = sub nsw i32 %53, 1
  %idxprom65 = sext i32 %sub64 to i64
  %arrayidx66 = getelementptr inbounds [100 x i32], ptr %arrayidx63, i64 0, i64 %idxprom65
  %54 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  %call67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %54)
  %call68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call67, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc69

for.inc69:                                        ; preds = %if.end
  %55 = load i32, ptr %j, align 4, !tbaa !5
  %inc70 = add nsw i32 %55, 1
  store i32 %inc70, ptr %j, align 4, !tbaa !5
  br label %for.cond34, !llvm.loop !16

for.end71:                                        ; preds = %for.cond34
  br label %for.inc72

for.inc72:                                        ; preds = %for.end71
  %56 = load i32, ptr %i, align 4, !tbaa !5
  %inc73 = add nsw i32 %56, 1
  store i32 %inc73, ptr %i, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !17

for.end74:                                        ; preds = %for.cond31
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 40000, ptr %c) #11
  %57 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %57)
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %y2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %x2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %y1) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %x1) #11
  %58 = load i32, ptr %retval, align 4
  ret i32 %58
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #5 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !18
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !21
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !21
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !18, !nonnull !23, !align !24
  %vtable = load ptr, ptr %1, align 8, !tbaa !25
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !18, !nonnull !23, !align !24
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !21
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !21
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !18, !nonnull !23, !align !24
  ret ptr %5
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !18
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !27
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !27
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !18
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !18, !nonnull !23, !align !24
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !18, !nonnull !23, !align !24
  %vtable = load ptr, ptr %1, align 8, !tbaa !25
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

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !28
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !30
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !30
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this1, i32 noundef %call2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #7 comdat align 2 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !21
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !21
  %call = call i64 @strlen(ptr noundef %0) #11
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #8 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !30
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !30
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !30
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !30
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
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !32
  ret i32 %0
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #9

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !18
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !18, !nonnull !23, !align !24
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !28
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !41
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !42
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !41
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #5 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !49
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !49
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #12
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !49
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #6 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !49
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !41
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !50
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !41
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !41
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !41
  %vtable = load ptr, ptr %this1, align 8, !tbaa !25
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
declare void @_ZSt16__throw_bad_castv() #10

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noreturn }

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
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTSSo", !20, i64 0}
!20 = !{!"any pointer", !7, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 omnipotent char", !20, i64 0}
!23 = !{}
!24 = !{i64 8}
!25 = !{!26, !26, i64 0}
!26 = !{!"vtable pointer", !8, i64 0}
!27 = !{!20, !20, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !20, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!32 = !{!33, !31, i64 32}
!33 = !{!"_ZTSSt8ios_base", !34, i64 8, !34, i64 16, !35, i64 24, !31, i64 28, !31, i64 32, !36, i64 40, !37, i64 48, !7, i64 64, !6, i64 192, !38, i64 200, !39, i64 208}
!34 = !{!"long", !7, i64 0}
!35 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!36 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !20, i64 0}
!37 = !{!"_ZTSNSt8ios_base6_WordsE", !20, i64 0, !34, i64 8}
!38 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !20, i64 0}
!39 = !{!"_ZTSSt6locale", !40, i64 0}
!40 = !{!"p1 _ZTSNSt6locale5_ImplE", !20, i64 0}
!41 = !{!7, !7, i64 0}
!42 = !{!43, !46, i64 240}
!43 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !33, i64 0, !19, i64 216, !7, i64 224, !44, i64 225, !45, i64 232, !46, i64 240, !47, i64 248, !48, i64 256}
!44 = !{!"bool", !7, i64 0}
!45 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !20, i64 0}
!46 = !{!"p1 _ZTSSt5ctypeIcE", !20, i64 0}
!47 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !20, i64 0}
!48 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !20, i64 0}
!49 = !{!46, !46, i64 0}
!50 = !{!51, !7, i64 56}
!51 = !{!"_ZTSSt5ctypeIcE", !52, i64 0, !53, i64 16, !44, i64 24, !54, i64 32, !54, i64 40, !55, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!52 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!53 = !{!"p1 _ZTS15__locale_struct", !20, i64 0}
!54 = !{!"p1 int", !20, i64 0}
!55 = !{!"p1 short", !20, i64 0}
