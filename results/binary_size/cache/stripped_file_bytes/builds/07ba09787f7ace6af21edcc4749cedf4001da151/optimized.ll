; ModuleID = '/tmp/tmpv504dky4.cpp'
source_filename = "/tmp/tmpv504dky4.cpp"
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
@.str = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %B = alloca i32, align 4
  %C = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %B) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %C) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %a)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 4 dereferenceable(4) %b)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 4 dereferenceable(4) %c)
  %2 = load i32, ptr %a, align 4, !tbaa !5
  %rem = srem i32 %2, 400
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %3 = load i32, ptr %a, align 4, !tbaa !5
  %rem5 = srem i32 %3, 4
  %cmp6 = icmp eq i32 %rem5, 0
  br i1 %cmp6, label %land.lhs.true, label %if.else42

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load i32, ptr %a, align 4, !tbaa !5
  %rem7 = srem i32 %4, 100
  %cmp8 = icmp ne i32 %rem7, 0
  br i1 %cmp8, label %if.then, label %if.else42

if.then:                                          ; preds = %land.lhs.true, %for.body
  %5 = load i32, ptr %b, align 4, !tbaa !5
  %6 = load i32, ptr %c, align 4, !tbaa !5
  %cmp9 = icmp sgt i32 %5, %6
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then
  %7 = load i32, ptr %c, align 4, !tbaa !5
  store i32 %7, ptr %d, align 4, !tbaa !5
  %8 = load i32, ptr %b, align 4, !tbaa !5
  store i32 %8, ptr %c, align 4, !tbaa !5
  %9 = load i32, ptr %d, align 4, !tbaa !5
  store i32 %9, ptr %b, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then
  %10 = load i32, ptr %b, align 4, !tbaa !5
  switch i32 %10, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
    i32 3, label %sw.bb12
    i32 4, label %sw.bb13
    i32 5, label %sw.bb14
    i32 6, label %sw.bb15
    i32 7, label %sw.bb16
    i32 8, label %sw.bb17
    i32 9, label %sw.bb18
    i32 10, label %sw.bb19
    i32 11, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.end
  store i32 0, ptr %B, align 4, !tbaa !5
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  store i32 31, ptr %B, align 4, !tbaa !5
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  store i32 60, ptr %B, align 4, !tbaa !5
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  store i32 91, ptr %B, align 4, !tbaa !5
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  store i32 121, ptr %B, align 4, !tbaa !5
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  store i32 152, ptr %B, align 4, !tbaa !5
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  store i32 182, ptr %B, align 4, !tbaa !5
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  store i32 213, ptr %B, align 4, !tbaa !5
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  store i32 244, ptr %B, align 4, !tbaa !5
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  store i32 274, ptr %B, align 4, !tbaa !5
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end
  store i32 305, ptr %B, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 335, ptr %B, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb
  %11 = load i32, ptr %c, align 4, !tbaa !5
  switch i32 %11, label %sw.default32 [
    i32 1, label %sw.bb21
    i32 2, label %sw.bb22
    i32 3, label %sw.bb23
    i32 4, label %sw.bb24
    i32 5, label %sw.bb25
    i32 6, label %sw.bb26
    i32 7, label %sw.bb27
    i32 8, label %sw.bb28
    i32 9, label %sw.bb29
    i32 10, label %sw.bb30
    i32 11, label %sw.bb31
  ]

sw.bb21:                                          ; preds = %sw.epilog
  store i32 0, ptr %C, align 4, !tbaa !5
  br label %sw.epilog33

sw.bb22:                                          ; preds = %sw.epilog
  store i32 31, ptr %C, align 4, !tbaa !5
  br label %sw.epilog33

sw.bb23:                                          ; preds = %sw.epilog
  store i32 60, ptr %C, align 4, !tbaa !5
  br label %sw.epilog33

sw.bb24:                                          ; preds = %sw.epilog
  store i32 91, ptr %C, align 4, !tbaa !5
  br label %sw.epilog33

sw.bb25:                                          ; preds = %sw.epilog
  store i32 121, ptr %C, align 4, !tbaa !5
  br label %sw.epilog33

sw.bb26:                                          ; preds = %sw.epilog
  store i32 152, ptr %C, align 4, !tbaa !5
  br label %sw.epilog33

sw.bb27:                                          ; preds = %sw.epilog
  store i32 182, ptr %C, align 4, !tbaa !5
  br label %sw.epilog33

sw.bb28:                                          ; preds = %sw.epilog
  store i32 213, ptr %C, align 4, !tbaa !5
  br label %sw.epilog33

sw.bb29:                                          ; preds = %sw.epilog
  store i32 244, ptr %C, align 4, !tbaa !5
  br label %sw.epilog33

sw.bb30:                                          ; preds = %sw.epilog
  store i32 274, ptr %C, align 4, !tbaa !5
  br label %sw.epilog33

sw.bb31:                                          ; preds = %sw.epilog
  store i32 305, ptr %C, align 4, !tbaa !5
  br label %sw.epilog33

sw.default32:                                     ; preds = %sw.epilog
  store i32 335, ptr %C, align 4, !tbaa !5
  br label %sw.epilog33

sw.epilog33:                                      ; preds = %sw.default32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21
  %12 = load i32, ptr %C, align 4, !tbaa !5
  %13 = load i32, ptr %B, align 4, !tbaa !5
  %sub = sub nsw i32 %12, %13
  %rem34 = srem i32 %sub, 7
  %cmp35 = icmp eq i32 %rem34, 0
  br i1 %cmp35, label %if.then36, label %if.else

if.then36:                                        ; preds = %sw.epilog33
  %call37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %call38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call37, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end41

if.else:                                          ; preds = %sw.epilog33
  %call39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1)
  %call40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call39, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then36
  br label %if.end82

if.else42:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %14 = load i32, ptr %b, align 4, !tbaa !5
  %15 = load i32, ptr %c, align 4, !tbaa !5
  %cmp43 = icmp sgt i32 %14, %15
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.else42
  %16 = load i32, ptr %c, align 4, !tbaa !5
  store i32 %16, ptr %d, align 4, !tbaa !5
  %17 = load i32, ptr %b, align 4, !tbaa !5
  store i32 %17, ptr %c, align 4, !tbaa !5
  %18 = load i32, ptr %d, align 4, !tbaa !5
  store i32 %18, ptr %b, align 4, !tbaa !5
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.else42
  %19 = load i32, ptr %b, align 4, !tbaa !5
  switch i32 %19, label %sw.default57 [
    i32 1, label %sw.bb46
    i32 2, label %sw.bb47
    i32 3, label %sw.bb48
    i32 4, label %sw.bb49
    i32 5, label %sw.bb50
    i32 6, label %sw.bb51
    i32 7, label %sw.bb52
    i32 8, label %sw.bb53
    i32 9, label %sw.bb54
    i32 10, label %sw.bb55
    i32 11, label %sw.bb56
  ]

sw.bb46:                                          ; preds = %if.end45
  store i32 0, ptr %B, align 4, !tbaa !5
  br label %sw.epilog58

sw.bb47:                                          ; preds = %if.end45
  store i32 31, ptr %B, align 4, !tbaa !5
  br label %sw.epilog58

sw.bb48:                                          ; preds = %if.end45
  store i32 59, ptr %B, align 4, !tbaa !5
  br label %sw.epilog58

sw.bb49:                                          ; preds = %if.end45
  store i32 90, ptr %B, align 4, !tbaa !5
  br label %sw.epilog58

sw.bb50:                                          ; preds = %if.end45
  store i32 120, ptr %B, align 4, !tbaa !5
  br label %sw.epilog58

sw.bb51:                                          ; preds = %if.end45
  store i32 151, ptr %B, align 4, !tbaa !5
  br label %sw.epilog58

sw.bb52:                                          ; preds = %if.end45
  store i32 181, ptr %B, align 4, !tbaa !5
  br label %sw.epilog58

sw.bb53:                                          ; preds = %if.end45
  store i32 212, ptr %B, align 4, !tbaa !5
  br label %sw.epilog58

sw.bb54:                                          ; preds = %if.end45
  store i32 243, ptr %B, align 4, !tbaa !5
  br label %sw.epilog58

sw.bb55:                                          ; preds = %if.end45
  store i32 273, ptr %B, align 4, !tbaa !5
  br label %sw.epilog58

sw.bb56:                                          ; preds = %if.end45
  store i32 304, ptr %B, align 4, !tbaa !5
  br label %sw.epilog58

sw.default57:                                     ; preds = %if.end45
  store i32 334, ptr %B, align 4, !tbaa !5
  br label %sw.epilog58

sw.epilog58:                                      ; preds = %sw.default57, %sw.bb56, %sw.bb55, %sw.bb54, %sw.bb53, %sw.bb52, %sw.bb51, %sw.bb50, %sw.bb49, %sw.bb48, %sw.bb47, %sw.bb46
  %20 = load i32, ptr %c, align 4, !tbaa !5
  switch i32 %20, label %sw.default70 [
    i32 1, label %sw.bb59
    i32 2, label %sw.bb60
    i32 3, label %sw.bb61
    i32 4, label %sw.bb62
    i32 5, label %sw.bb63
    i32 6, label %sw.bb64
    i32 7, label %sw.bb65
    i32 8, label %sw.bb66
    i32 9, label %sw.bb67
    i32 10, label %sw.bb68
    i32 11, label %sw.bb69
  ]

sw.bb59:                                          ; preds = %sw.epilog58
  store i32 0, ptr %C, align 4, !tbaa !5
  br label %sw.epilog71

sw.bb60:                                          ; preds = %sw.epilog58
  store i32 31, ptr %C, align 4, !tbaa !5
  br label %sw.epilog71

sw.bb61:                                          ; preds = %sw.epilog58
  store i32 59, ptr %C, align 4, !tbaa !5
  br label %sw.epilog71

sw.bb62:                                          ; preds = %sw.epilog58
  store i32 90, ptr %C, align 4, !tbaa !5
  br label %sw.epilog71

sw.bb63:                                          ; preds = %sw.epilog58
  store i32 120, ptr %C, align 4, !tbaa !5
  br label %sw.epilog71

sw.bb64:                                          ; preds = %sw.epilog58
  store i32 151, ptr %C, align 4, !tbaa !5
  br label %sw.epilog71

sw.bb65:                                          ; preds = %sw.epilog58
  store i32 181, ptr %C, align 4, !tbaa !5
  br label %sw.epilog71

sw.bb66:                                          ; preds = %sw.epilog58
  store i32 212, ptr %C, align 4, !tbaa !5
  br label %sw.epilog71

sw.bb67:                                          ; preds = %sw.epilog58
  store i32 243, ptr %C, align 4, !tbaa !5
  br label %sw.epilog71

sw.bb68:                                          ; preds = %sw.epilog58
  store i32 273, ptr %C, align 4, !tbaa !5
  br label %sw.epilog71

sw.bb69:                                          ; preds = %sw.epilog58
  store i32 304, ptr %C, align 4, !tbaa !5
  br label %sw.epilog71

sw.default70:                                     ; preds = %sw.epilog58
  store i32 334, ptr %C, align 4, !tbaa !5
  br label %sw.epilog71

sw.epilog71:                                      ; preds = %sw.default70, %sw.bb69, %sw.bb68, %sw.bb67, %sw.bb66, %sw.bb65, %sw.bb64, %sw.bb63, %sw.bb62, %sw.bb61, %sw.bb60, %sw.bb59
  %21 = load i32, ptr %C, align 4, !tbaa !5
  %22 = load i32, ptr %B, align 4, !tbaa !5
  %sub72 = sub nsw i32 %21, %22
  %rem73 = srem i32 %sub72, 7
  %cmp74 = icmp eq i32 %rem73, 0
  br i1 %cmp74, label %if.then75, label %if.else78

if.then75:                                        ; preds = %sw.epilog71
  %call76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %call77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call76, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end81

if.else78:                                        ; preds = %sw.epilog71
  %call79 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1)
  %call80 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call79, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end81

if.end81:                                         ; preds = %if.else78, %if.then75
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.end41
  br label %for.inc

for.inc:                                          ; preds = %if.end82
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %C) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %B) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #3 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !12
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !15
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !15
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !12, !nonnull !17, !align !18
  %vtable = load ptr, ptr %1, align 8, !tbaa !19
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !12, !nonnull !17, !align !18
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !15
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !15
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !12, !nonnull !17, !align !18
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !12
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !21
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !21
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #3 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !12
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !12, !nonnull !17, !align !18
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !12, !nonnull !17, !align !18
  %vtable = load ptr, ptr %1, align 8, !tbaa !19
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

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !22
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !24
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !24
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this1, i32 noundef %call2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #5 comdat align 2 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !15
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !15
  %call = call i64 @strlen(ptr noundef %0) #9
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #6 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !24
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !24
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !24
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !24
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !22
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !26
  ret i32 %0
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #7

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #3 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !12
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !12, !nonnull !17, !align !18
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !22
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !35
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !36
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !35
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #3 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !43
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !43
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #10
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !43
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #4 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !43
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !35
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !44
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !35
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !35
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !35
  %vtable = load ptr, ptr %this1, align 8, !tbaa !19
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
declare void @_ZSt16__throw_bad_castv() #8

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTSSo", !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 omnipotent char", !14, i64 0}
!17 = !{}
!18 = !{i64 8}
!19 = !{!20, !20, i64 0}
!20 = !{!"vtable pointer", !8, i64 0}
!21 = !{!14, !14, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !14, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!26 = !{!27, !25, i64 32}
!27 = !{!"_ZTSSt8ios_base", !28, i64 8, !28, i64 16, !29, i64 24, !25, i64 28, !25, i64 32, !30, i64 40, !31, i64 48, !7, i64 64, !6, i64 192, !32, i64 200, !33, i64 208}
!28 = !{!"long", !7, i64 0}
!29 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!30 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !14, i64 0}
!31 = !{!"_ZTSNSt8ios_base6_WordsE", !14, i64 0, !28, i64 8}
!32 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !14, i64 0}
!33 = !{!"_ZTSSt6locale", !34, i64 0}
!34 = !{!"p1 _ZTSNSt6locale5_ImplE", !14, i64 0}
!35 = !{!7, !7, i64 0}
!36 = !{!37, !40, i64 240}
!37 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !27, i64 0, !13, i64 216, !7, i64 224, !38, i64 225, !39, i64 232, !40, i64 240, !41, i64 248, !42, i64 256}
!38 = !{!"bool", !7, i64 0}
!39 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !14, i64 0}
!40 = !{!"p1 _ZTSSt5ctypeIcE", !14, i64 0}
!41 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !14, i64 0}
!42 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !14, i64 0}
!43 = !{!40, !40, i64 0}
!44 = !{!45, !7, i64 56}
!45 = !{!"_ZTSSt5ctypeIcE", !46, i64 0, !47, i64 16, !38, i64 24, !48, i64 32, !48, i64 40, !49, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!46 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!47 = !{!"p1 _ZTS15__locale_struct", !14, i64 0}
!48 = !{!"p1 int", !14, i64 0}
!49 = !{!"p1 short", !14, i64 0}
