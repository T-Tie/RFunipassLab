; ModuleID = '/tmp/tmp1j5p72um.cpp'
source_filename = "/tmp/tmp1j5p72um.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>

$_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_ = comdat any

$_ZNSt8ios_base5widthEl = comdat any

$_ZNKSt8ios_base5widthEv = comdat any

$_ZNSt11char_traitsIcE11eq_int_typeERKiS2_ = comdat any

$_ZNSt11char_traitsIcE3eofEv = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZNSt11char_traitsIcE11to_int_typeERKc = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %m = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %c = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #12
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %m)
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 16
  store i64 %1, ptr %__vla_expr0, align 8
  %3 = load i32, ptr %m, align 4, !tbaa !5
  %4 = zext i32 %3 to i64
  %vla1 = alloca [40 x i8], i64 %4, align 16
  store i64 %4, ptr %__vla_expr1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12
  store ptr %vla1, ptr %p, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #12
  store ptr %vla, ptr %q, align 8, !tbaa !12
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %m, align 4, !tbaa !5
  %sub = sub nsw i32 %6, 1
  %cmp = icmp sle i32 %5, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %p, align 8, !tbaa !9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds [40 x i8], ptr %7, i64 %idx.ext
  %arraydecay = getelementptr inbounds [40 x i8], ptr %add.ptr, i64 0, i64 0
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef %arraydecay)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc11, %for.end
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %11 = load i32, ptr %m, align 4, !tbaa !5
  %sub4 = sub nsw i32 %11, 1
  %cmp5 = icmp sle i32 %10, %sub4
  br i1 %cmp5, label %for.body6, label %for.end13

for.body6:                                        ; preds = %for.cond3
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [40 x i8], ptr %vla1, i64 %idxprom
  %arraydecay7 = getelementptr inbounds [40 x i8], ptr %arrayidx, i64 0, i64 0
  %call8 = call i64 @strlen(ptr noundef %arraydecay7) #13
  %conv = trunc i64 %call8 to i32
  %13 = load ptr, ptr %q, align 8, !tbaa !12
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext9 = sext i32 %14 to i64
  %add.ptr10 = getelementptr inbounds i32, ptr %13, i64 %idx.ext9
  store i32 %conv, ptr %add.ptr10, align 4, !tbaa !5
  br label %for.inc11

for.inc11:                                        ; preds = %for.body6
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %inc12 = add nsw i32 %15, 1
  store i32 %inc12, ptr %i, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !17

for.end13:                                        ; preds = %for.cond3
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #12
  store i32 0, ptr %c, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  store ptr %vla1, ptr %p, align 8, !tbaa !9
  store ptr %vla, ptr %q, align 8, !tbaa !12
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc58, %for.end13
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %17 = load i32, ptr %m, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %16, %17
  br i1 %cmp15, label %for.body16, label %for.end60

for.body16:                                       ; preds = %for.cond14
  %18 = load i32, ptr %k, align 4, !tbaa !5
  %19 = load ptr, ptr %q, align 8, !tbaa !12
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %20 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %19, i64 %idxprom17
  %21 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %add = add nsw i32 %18, %21
  %add19 = add nsw i32 %add, 1
  store i32 %add19, ptr %k, align 4, !tbaa !5
  %22 = load i32, ptr %k, align 4, !tbaa !5
  %cmp20 = icmp sgt i32 %22, 81
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %for.body16
  %23 = load i32, ptr %c, align 4, !tbaa !5
  store i32 %23, ptr %j, align 4, !tbaa !5
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc30, %if.then
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %sub22 = sub nsw i32 %25, 1
  %cmp23 = icmp slt i32 %24, %sub22
  br i1 %cmp23, label %for.body24, label %for.end32

for.body24:                                       ; preds = %for.cond21
  %26 = load ptr, ptr %p, align 8, !tbaa !9
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext25 = sext i32 %27 to i64
  %add.ptr26 = getelementptr inbounds [40 x i8], ptr %26, i64 %idx.ext25
  %arraydecay27 = getelementptr inbounds [40 x i8], ptr %add.ptr26, i64 0, i64 0
  %call28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %arraydecay27)
  %call29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call28, ptr noundef @.str)
  br label %for.inc30

for.inc30:                                        ; preds = %for.body24
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %inc31 = add nsw i32 %28, 1
  store i32 %inc31, ptr %j, align 4, !tbaa !5
  br label %for.cond21, !llvm.loop !18

for.end32:                                        ; preds = %for.cond21
  %29 = load ptr, ptr %p, align 8, !tbaa !9
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext33 = sext i32 %30 to i64
  %add.ptr34 = getelementptr inbounds [40 x i8], ptr %29, i64 %idx.ext33
  %arraydecay35 = getelementptr inbounds [40 x i8], ptr %add.ptr34, i64 0, i64 0
  %call36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %arraydecay35)
  %call37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call36, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr %k, align 4, !tbaa !5
  %31 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %31, ptr %c, align 4, !tbaa !5
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %32, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  br label %if.end57

if.else:                                          ; preds = %for.body16
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %34 = load i32, ptr %m, align 4, !tbaa !5
  %sub38 = sub nsw i32 %34, 1
  %cmp39 = icmp eq i32 %33, %sub38
  br i1 %cmp39, label %if.then40, label %if.end

if.then40:                                        ; preds = %if.else
  %35 = load i32, ptr %c, align 4, !tbaa !5
  store i32 %35, ptr %j, align 4, !tbaa !5
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc49, %if.then40
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %36, %37
  br i1 %cmp42, label %for.body43, label %for.end51

for.body43:                                       ; preds = %for.cond41
  %38 = load ptr, ptr %p, align 8, !tbaa !9
  %39 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext44 = sext i32 %39 to i64
  %add.ptr45 = getelementptr inbounds [40 x i8], ptr %38, i64 %idx.ext44
  %arraydecay46 = getelementptr inbounds [40 x i8], ptr %add.ptr45, i64 0, i64 0
  %call47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %arraydecay46)
  %call48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call47, ptr noundef @.str)
  br label %for.inc49

for.inc49:                                        ; preds = %for.body43
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %inc50 = add nsw i32 %40, 1
  store i32 %inc50, ptr %j, align 4, !tbaa !5
  br label %for.cond41, !llvm.loop !19

for.end51:                                        ; preds = %for.cond41
  %41 = load ptr, ptr %p, align 8, !tbaa !9
  %42 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext52 = sext i32 %42 to i64
  %add.ptr53 = getelementptr inbounds [40 x i8], ptr %41, i64 %idx.ext52
  %arraydecay54 = getelementptr inbounds [40 x i8], ptr %add.ptr53, i64 0, i64 0
  %call55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %arraydecay54)
  %call56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call55, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end

if.end:                                           ; preds = %for.end51, %if.else
  br label %if.end57

if.end57:                                         ; preds = %if.end, %for.end32
  br label %for.inc58

for.inc58:                                        ; preds = %if.end57
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %inc59 = add nsw i32 %43, 1
  store i32 %inc59, ptr %i, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !20

for.end60:                                        ; preds = %for.cond14
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12
  %44 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %44)
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #12
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef nonnull %__s) #4 comdat {
entry:
  %__in.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  %__n = alloca i64, align 8
  %__w = alloca i64, align 8
  %__c = alloca i32, align 4
  %__eof = alloca i8, align 1
  %ref.tmp = alloca i32, align 4
  %__n35 = alloca i64, align 8
  store ptr %__in, ptr %__in.addr, align 8, !tbaa !21
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__n) #12
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !9
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false)
  store i64 %1, ptr %__n, align 8, !tbaa !23
  %2 = load i64, ptr %__n, align 8, !tbaa !23
  %cmp = icmp ult i64 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %__in.addr, align 8, !tbaa !21, !nonnull !25, !align !26
  %vtable = load ptr, ptr %3, align 8, !tbaa !27
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %vbase.offset
  %call = call noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr, i64 noundef 0)
  %4 = load ptr, ptr %__in.addr, align 8, !tbaa !21, !nonnull !25, !align !26
  %vtable1 = load ptr, ptr %4, align 8, !tbaa !27
  %vbase.offset.ptr2 = getelementptr i8, ptr %vtable1, i64 -24
  %vbase.offset3 = load i64, ptr %vbase.offset.ptr2, align 8
  %add.ptr4 = getelementptr inbounds i8, ptr %4, i64 %vbase.offset3
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr4, i32 noundef 4)
  br label %if.end38

if.else:                                          ; preds = %entry
  %5 = load i64, ptr %__n, align 8, !tbaa !23
  %cmp5 = icmp ne i64 %5, -1
  br i1 %cmp5, label %if.then6, label %if.else34

if.then6:                                         ; preds = %if.else
  %6 = load i64, ptr %__n, align 8, !tbaa !23
  %div = udiv i64 %6, 1
  store i64 %div, ptr %__n, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 8, ptr %__w) #12
  %7 = load ptr, ptr %__in.addr, align 8, !tbaa !21, !nonnull !25, !align !26
  %vtable7 = load ptr, ptr %7, align 8, !tbaa !27
  %vbase.offset.ptr8 = getelementptr i8, ptr %vtable7, i64 -24
  %vbase.offset9 = load i64, ptr %vbase.offset.ptr8, align 8
  %add.ptr10 = getelementptr inbounds i8, ptr %7, i64 %vbase.offset9
  %call11 = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr10)
  store i64 %call11, ptr %__w, align 8, !tbaa !23
  %8 = load ptr, ptr %__in.addr, align 8, !tbaa !21, !nonnull !25, !align !26
  %9 = load ptr, ptr %__s.addr, align 8, !tbaa !9
  %10 = load i64, ptr %__n, align 8, !tbaa !23
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %9, i64 noundef %10)
  %11 = load ptr, ptr %__in.addr, align 8, !tbaa !21, !nonnull !25, !align !26
  %vtable12 = load ptr, ptr %11, align 8, !tbaa !27
  %vbase.offset.ptr13 = getelementptr i8, ptr %vtable12, i64 -24
  %vbase.offset14 = load i64, ptr %vbase.offset.ptr13, align 8
  %add.ptr15 = getelementptr inbounds i8, ptr %11, i64 %vbase.offset14
  %call16 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr15)
  br i1 %call16, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.then6
  %12 = load i64, ptr %__w, align 8, !tbaa !23
  %cmp17 = icmp sle i64 %12, 0
  br i1 %cmp17, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %13 = load i64, ptr %__n, align 8, !tbaa !23
  %14 = load i64, ptr %__w, align 8, !tbaa !23
  %cmp18 = icmp ult i64 %13, %14
  br i1 %cmp18, label %if.then19, label %if.end33

if.then19:                                        ; preds = %lor.lhs.false, %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c) #12
  %15 = load ptr, ptr %__in.addr, align 8, !tbaa !21, !nonnull !25, !align !26
  %vtable20 = load ptr, ptr %15, align 8, !tbaa !27
  %vbase.offset.ptr21 = getelementptr i8, ptr %vtable20, i64 -24
  %vbase.offset22 = load i64, ptr %vbase.offset.ptr21, align 8
  %add.ptr23 = getelementptr inbounds i8, ptr %15, i64 %vbase.offset22
  %call24 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr23)
  %call25 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24)
  store i32 %call25, ptr %__c, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr %__eof) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref.tmp) #12
  %call26 = call noundef i32 @_ZNSt11char_traitsIcE3eofEv() #12
  store i32 %call26, ptr %ref.tmp, align 4, !tbaa !5
  %call27 = call noundef zeroext i1 @_ZNSt11char_traitsIcE11eq_int_typeERKiS2_(ptr noundef nonnull align 4 dereferenceable(4) %__c, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref.tmp) #12
  %storedv = zext i1 %call27 to i8
  store i8 %storedv, ptr %__eof, align 1, !tbaa !29
  %16 = load i8, ptr %__eof, align 1, !tbaa !29, !range !31, !noundef !25
  %loadedv = trunc i8 %16 to i1
  %conv = zext i1 %loadedv to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then28, label %if.end

if.then28:                                        ; preds = %if.then19
  %17 = load ptr, ptr %__in.addr, align 8, !tbaa !21, !nonnull !25, !align !26
  %vtable29 = load ptr, ptr %17, align 8, !tbaa !27
  %vbase.offset.ptr30 = getelementptr i8, ptr %vtable29, i64 -24
  %vbase.offset31 = load i64, ptr %vbase.offset.ptr30, align 8
  %add.ptr32 = getelementptr inbounds i8, ptr %17, i64 %vbase.offset31
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.then28, %if.then19
  call void @llvm.lifetime.end.p0(i64 1, ptr %__eof) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c) #12
  br label %if.end33

if.end33:                                         ; preds = %if.end, %lor.lhs.false, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %__w) #12
  br label %if.end37

if.else34:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %__n35) #12
  store i64 9223372036854775807, ptr %__n35, align 8, !tbaa !23
  %18 = load i64, ptr %__n35, align 8, !tbaa !23
  %div36 = udiv i64 %18, 1
  store i64 %div36, ptr %__n35, align 8, !tbaa !23
  %19 = load ptr, ptr %__in.addr, align 8, !tbaa !21, !nonnull !25, !align !26
  %20 = load ptr, ptr %__s.addr, align 8, !tbaa !9
  %21 = load i64, ptr %__n35, align 8, !tbaa !23
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef %20, i64 noundef %21)
  call void @llvm.lifetime.end.p0(i64 8, ptr %__n35) #12
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.end33
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %do.end
  %22 = load ptr, ptr %__in.addr, align 8, !tbaa !21, !nonnull !25, !align !26
  call void @llvm.lifetime.end.p0(i64 8, ptr %__n) #12
  ret ptr %22
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #4 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !32
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !9
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !32, !nonnull !25, !align !26
  %vtable = load ptr, ptr %1, align 8, !tbaa !27
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !32, !nonnull !25, !align !26
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !9
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !9
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !32, !nonnull !25, !align !26
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !32
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !34
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !34
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !32
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !32, !nonnull !25, !align !26
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !32, !nonnull !25, !align !26
  %vtable = load ptr, ptr %1, align 8, !tbaa !27
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %this, i64 noundef %__wide) #8 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__wide.addr = alloca i64, align 8
  %__old = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !35
  store i64 %__wide, ptr %__wide.addr, align 8, !tbaa !23
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #12
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !37
  store i64 %0, ptr %__old, align 8, !tbaa !23
  %1 = load i64, ptr %__wide.addr, align 8, !tbaa !23
  %_M_width2 = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  store i64 %1, ptr %_M_width2, align 8, !tbaa !37
  %2 = load i64, ptr %__old, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #12
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !46
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !48
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !48
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this1, i32 noundef %call2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) #8 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !35
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !37
  ret i64 %0
}

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #8 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !46
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #8 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !46
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 4
  %0 = load ptr, ptr %_M_streambuf, align 8, !tbaa !49
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define available_externally noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %this) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !55
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #12
  %call = call noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE4gptrEv(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %call2 = call noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE5egptrEv(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %cmp = icmp ult ptr %call, %call2
  %conv = zext i1 %cmp to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE4gptrEv(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %call4 = call noundef i32 @_ZNSt11char_traitsIcE11to_int_typeERKc(ptr noundef nonnull align 1 dereferenceable(1) %call3) #12
  store i32 %call4, ptr %__ret, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %vtable = load ptr, ptr %this1, align 8, !tbaa !27
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 9
  %0 = load ptr, ptr %vfn, align 8
  %call5 = call noundef i32 %0(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  store i32 %call5, ptr %__ret, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, ptr %__ret, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #12
  ret i32 %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt11char_traitsIcE11eq_int_typeERKiS2_(ptr noundef nonnull align 4 dereferenceable(4) %__c1, ptr noundef nonnull align 4 dereferenceable(4) %__c2) #8 comdat align 2 {
entry:
  %__c1.addr = alloca ptr, align 8
  %__c2.addr = alloca ptr, align 8
  store ptr %__c1, ptr %__c1.addr, align 8, !tbaa !12
  store ptr %__c2, ptr %__c2.addr, align 8, !tbaa !12
  %0 = load ptr, ptr %__c1.addr, align 8, !tbaa !12, !nonnull !25, !align !56
  %1 = load i32, ptr %0, align 4, !tbaa !5
  %2 = load ptr, ptr %__c2.addr, align 8, !tbaa !12, !nonnull !25, !align !56
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %cmp = icmp eq i32 %1, %3
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt11char_traitsIcE3eofEv() #8 comdat align 2 {
entry:
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #10 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !48
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !48
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !48
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !48
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #8 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !46
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !57
  ret i32 %0
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE4gptrEv(ptr noundef nonnull align 8 dereferenceable(64) %this) #8 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !55
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_in_cur = getelementptr inbounds nuw %"class.std::basic_streambuf", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %_M_in_cur, align 8, !tbaa !58
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE5egptrEv(ptr noundef nonnull align 8 dereferenceable(64) %this) #8 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !55
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_in_end = getelementptr inbounds nuw %"class.std::basic_streambuf", ptr %this1, i32 0, i32 3
  %0 = load ptr, ptr %_M_in_end, align 8, !tbaa !60
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt11char_traitsIcE11to_int_typeERKc(ptr noundef nonnull align 1 dereferenceable(1) %__c) #8 comdat align 2 {
entry:
  %__c.addr = alloca ptr, align 8
  store ptr %__c, ptr %__c.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__c.addr, align 8, !tbaa !9, !nonnull !25
  %1 = load i8, ptr %0, align 1, !tbaa !61
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #8 comdat align 2 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !9
  %call = call i64 @strlen(ptr noundef %0) #12
  ret i64 %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !32
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !32, !nonnull !25, !align !26
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !46
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !61
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !62
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !61
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #4 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !63
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !63
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #14
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !63
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #6 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !63
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !61
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !64
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !61
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !61
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !61
  %vtable = load ptr, ptr %this1, align 8, !tbaa !27
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
declare void @_ZSt16__throw_bad_castv() #11

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { noreturn }

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
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 int", !11, i64 0}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !15, !16}
!18 = distinct !{!18, !15, !16}
!19 = distinct !{!19, !15, !16}
!20 = distinct !{!20, !15, !16}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTSSi", !11, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"long", !7, i64 0}
!25 = !{}
!26 = !{i64 8}
!27 = !{!28, !28, i64 0}
!28 = !{!"vtable pointer", !8, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"bool", !7, i64 0}
!31 = !{i8 0, i8 2}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 _ZTSSo", !11, i64 0}
!34 = !{!11, !11, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTSSt8ios_base", !11, i64 0}
!37 = !{!38, !24, i64 16}
!38 = !{!"_ZTSSt8ios_base", !24, i64 8, !24, i64 16, !39, i64 24, !40, i64 28, !40, i64 32, !41, i64 40, !42, i64 48, !7, i64 64, !6, i64 192, !43, i64 200, !44, i64 208}
!39 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!40 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!41 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!42 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !24, i64 8}
!43 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!44 = !{!"_ZTSSt6locale", !45, i64 0}
!45 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !11, i64 0}
!48 = !{!40, !40, i64 0}
!49 = !{!50, !51, i64 232}
!50 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !38, i64 0, !33, i64 216, !7, i64 224, !30, i64 225, !51, i64 232, !52, i64 240, !53, i64 248, !54, i64 256}
!51 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!52 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!53 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!54 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!55 = !{!51, !51, i64 0}
!56 = !{i64 4}
!57 = !{!38, !40, i64 32}
!58 = !{!59, !10, i64 16}
!59 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !44, i64 56}
!60 = !{!59, !10, i64 24}
!61 = !{!7, !7, i64 0}
!62 = !{!50, !52, i64 240}
!63 = !{!52, !52, i64 0}
!64 = !{!65, !7, i64 56}
!65 = !{!"_ZTSSt5ctypeIcE", !66, i64 0, !67, i64 16, !30, i64 24, !13, i64 32, !13, i64 40, !68, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!66 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!67 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!68 = !{!"p1 short", !11, i64 0}
