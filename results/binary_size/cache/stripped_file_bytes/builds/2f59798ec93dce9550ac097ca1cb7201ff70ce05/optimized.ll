; ModuleID = '/tmp/tmpw0aavdct.cpp'
source_filename = "/tmp/tmpw0aavdct.cpp"
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
@.str = private unnamed_addr constant [4 x i8] c"x1=\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%.5f\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c";x2=\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%.5f\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"x1=x2=\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"i;x2=\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"i\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %d = alloca double, align 8
  %e = alloca double, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #10
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %x2) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %a)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 8 dereferenceable(8) %b)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 8 dereferenceable(8) %c)
  %2 = load double, ptr %b, align 8, !tbaa !9
  %3 = load double, ptr %b, align 8, !tbaa !9
  %4 = load double, ptr %a, align 8, !tbaa !9
  %mul4 = fmul double 4.000000e+00, %4
  %5 = load double, ptr %c, align 8, !tbaa !9
  %mul5 = fmul double %mul4, %5
  %neg = fneg double %mul5
  %6 = call double @llvm.fmuladd.f64(double %2, double %3, double %neg)
  %cmp6 = fcmp ogt double %6, 0.000000e+00
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load double, ptr %b, align 8, !tbaa !9
  %fneg = fneg double %7
  %8 = load double, ptr %b, align 8, !tbaa !9
  %9 = load double, ptr %b, align 8, !tbaa !9
  %10 = load double, ptr %a, align 8, !tbaa !9
  %mul7 = fmul double 4.000000e+00, %10
  %11 = load double, ptr %c, align 8, !tbaa !9
  %mul8 = fmul double %mul7, %11
  %neg9 = fneg double %mul8
  %12 = call double @llvm.fmuladd.f64(double %8, double %9, double %neg9)
  %call10 = call double @sqrt(double noundef %12) #10, !tbaa !5
  %add = fadd double %fneg, %call10
  %13 = load double, ptr %a, align 8, !tbaa !9
  %mul = fmul double 2.000000e+00, %13
  %div = fdiv double %add, %mul
  store double %div, ptr %x1, align 8, !tbaa !9
  %14 = load double, ptr %b, align 8, !tbaa !9
  %fneg11 = fneg double %14
  %15 = load double, ptr %b, align 8, !tbaa !9
  %16 = load double, ptr %b, align 8, !tbaa !9
  %17 = load double, ptr %a, align 8, !tbaa !9
  %mul13 = fmul double 4.000000e+00, %17
  %18 = load double, ptr %c, align 8, !tbaa !9
  %mul14 = fmul double %mul13, %18
  %neg15 = fneg double %mul14
  %19 = call double @llvm.fmuladd.f64(double %15, double %16, double %neg15)
  %call16 = call double @sqrt(double noundef %19) #10, !tbaa !5
  %sub = fsub double %fneg11, %call16
  %20 = load double, ptr %a, align 8, !tbaa !9
  %mul17 = fmul double 2.000000e+00, %20
  %div18 = fdiv double %sub, %mul17
  store double %div18, ptr %x2, align 8, !tbaa !9
  %call19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %21 = load double, ptr %x1, align 8, !tbaa !9
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %21)
  %call21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2)
  %22 = load double, ptr %x2, align 8, !tbaa !9
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %23 = load double, ptr %b, align 8, !tbaa !9
  %24 = load double, ptr %b, align 8, !tbaa !9
  %25 = load double, ptr %a, align 8, !tbaa !9
  %mul24 = fmul double 4.000000e+00, %25
  %26 = load double, ptr %c, align 8, !tbaa !9
  %mul25 = fmul double %mul24, %26
  %neg26 = fneg double %mul25
  %27 = call double @llvm.fmuladd.f64(double %23, double %24, double %neg26)
  %cmp27 = fcmp oeq double %27, 0.000000e+00
  br i1 %cmp27, label %if.then28, label %if.end34

if.then28:                                        ; preds = %if.end
  %28 = load double, ptr %b, align 8, !tbaa !9
  %fneg29 = fneg double %28
  %29 = load double, ptr %a, align 8, !tbaa !9
  %mul30 = fmul double 2.000000e+00, %29
  %div31 = fdiv double %fneg29, %mul30
  store double %div31, ptr %x1, align 8, !tbaa !9
  %call32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.4)
  %30 = load double, ptr %x1, align 8, !tbaa !9
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %30)
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %if.end
  %31 = load double, ptr %b, align 8, !tbaa !9
  %32 = load double, ptr %b, align 8, !tbaa !9
  %33 = load double, ptr %a, align 8, !tbaa !9
  %mul36 = fmul double 4.000000e+00, %33
  %34 = load double, ptr %c, align 8, !tbaa !9
  %mul37 = fmul double %mul36, %34
  %neg38 = fneg double %mul37
  %35 = call double @llvm.fmuladd.f64(double %31, double %32, double %neg38)
  %cmp39 = fcmp olt double %35, 0.000000e+00
  br i1 %cmp39, label %if.then40, label %if.end68

if.then40:                                        ; preds = %if.end34
  %36 = load double, ptr %a, align 8, !tbaa !9
  %mul41 = fmul double 4.000000e+00, %36
  %37 = load double, ptr %c, align 8, !tbaa !9
  %38 = load double, ptr %b, align 8, !tbaa !9
  %39 = load double, ptr %b, align 8, !tbaa !9
  %mul43 = fmul double %38, %39
  %neg44 = fneg double %mul43
  %40 = call double @llvm.fmuladd.f64(double %mul41, double %37, double %neg44)
  %call45 = call double @sqrt(double noundef %40) #10, !tbaa !5
  %41 = load double, ptr %a, align 8, !tbaa !9
  %mul46 = fmul double 2.000000e+00, %41
  %div47 = fdiv double %call45, %mul46
  store double %div47, ptr %d, align 8, !tbaa !9
  %42 = load double, ptr %b, align 8, !tbaa !9
  %fneg48 = fneg double %42
  %43 = load double, ptr %a, align 8, !tbaa !9
  %mul49 = fmul double 2.000000e+00, %43
  %div50 = fdiv double %fneg48, %mul49
  store double %div50, ptr %e, align 8, !tbaa !9
  %44 = load double, ptr %e, align 8, !tbaa !9
  %cmp51 = fcmp oeq double %44, 0.000000e+00
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.then40
  store double 0.000000e+00, ptr %e, align 8, !tbaa !9
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.then40
  %45 = load double, ptr %e, align 8, !tbaa !9
  %46 = load double, ptr %d, align 8, !tbaa !9
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %conv = sitofp i32 %47 to double
  %48 = call double @llvm.fmuladd.f64(double %46, double %conv, double %45)
  store double %48, ptr %x1, align 8, !tbaa !9
  %49 = load double, ptr %e, align 8, !tbaa !9
  %50 = load double, ptr %d, align 8, !tbaa !9
  %51 = load i32, ptr %i, align 4, !tbaa !5
  %conv55 = sitofp i32 %51 to double
  %neg57 = fneg double %50
  %52 = call double @llvm.fmuladd.f64(double %neg57, double %conv55, double %49)
  store double %52, ptr %x2, align 8, !tbaa !9
  %call58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %53 = load double, ptr %e, align 8, !tbaa !9
  %call59 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %53)
  %call60 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.5)
  %54 = load double, ptr %d, align 8, !tbaa !9
  %call61 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %54)
  %call62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.6)
  %55 = load double, ptr %e, align 8, !tbaa !9
  %call63 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %55)
  %call64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.7)
  %56 = load double, ptr %d, align 8, !tbaa !9
  %call65 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %56)
  %call66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.8)
  %call67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call66, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end68

if.end68:                                         ; preds = %if.end53, %if.end34
  br label %for.inc

for.inc:                                          ; preds = %if.end68
  %57 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %57, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %x2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__f) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__f.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !14
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !17
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !17, !nonnull !19, !align !20
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nounwind
declare double @sqrt(double noundef) #5

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #6 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !21
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !23
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !23
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !21, !nonnull !19, !align !20
  %vtable = load ptr, ptr %1, align 8, !tbaa !25
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !21, !nonnull !19, !align !20
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !23
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !23
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !21, !nonnull !19, !align !20
  ret ptr %5
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !21
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !27
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !27
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #6 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !21
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !21, !nonnull !19, !align !20
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !21, !nonnull !19, !align !20
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

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #3 align 2 {
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
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !23
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !23
  %call = call i64 @strlen(ptr noundef %0) #10
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
declare i64 @strlen(ptr noundef) #5

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #6 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !21
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !21, !nonnull !19, !align !20
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #3 align 2 {
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
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #6 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !49
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !49
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #11
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !49
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #3 comdat align 2 {
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
declare void @_ZSt16__throw_bad_castv() #9

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTSSi", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 double", !16, i64 0}
!19 = !{}
!20 = !{i64 8}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTSSo", !16, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 omnipotent char", !16, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"vtable pointer", !8, i64 0}
!27 = !{!16, !16, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !16, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!32 = !{!33, !31, i64 32}
!33 = !{!"_ZTSSt8ios_base", !34, i64 8, !34, i64 16, !35, i64 24, !31, i64 28, !31, i64 32, !36, i64 40, !37, i64 48, !7, i64 64, !6, i64 192, !38, i64 200, !39, i64 208}
!34 = !{!"long", !7, i64 0}
!35 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!36 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!37 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !34, i64 8}
!38 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!39 = !{!"_ZTSSt6locale", !40, i64 0}
!40 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!41 = !{!7, !7, i64 0}
!42 = !{!43, !46, i64 240}
!43 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !33, i64 0, !22, i64 216, !7, i64 224, !44, i64 225, !45, i64 232, !46, i64 240, !47, i64 248, !48, i64 256}
!44 = !{!"bool", !7, i64 0}
!45 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!46 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!47 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!48 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!49 = !{!46, !46, i64 0}
!50 = !{!51, !7, i64 56}
!51 = !{!"_ZTSSt5ctypeIcE", !52, i64 0, !53, i64 16, !44, i64 24, !54, i64 32, !54, i64 40, !55, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!52 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!53 = !{!"p1 _ZTS15__locale_struct", !16, i64 0}
!54 = !{!"p1 int", !16, i64 0}
!55 = !{!"p1 short", !16, i64 0}
