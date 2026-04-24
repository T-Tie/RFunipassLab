; ModuleID = '/tmp/tmp7qo9lvwl.cpp'
source_filename = "/tmp/tmp7qo9lvwl.cpp"
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

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %str = alloca [260 x i8], align 16
  %subStr = alloca [260 x i8], align 16
  %replace = alloca [260 x i8], align 16
  %start = alloca ptr, align 8
  %node = alloca ptr, align 8
  %rep = alloca ptr, align 8
  %len = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 260, ptr %str) #11
  call void @llvm.lifetime.start.p0(i64 260, ptr %subStr) #11
  call void @llvm.lifetime.start.p0(i64 260, ptr %replace) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #11
  %arraydecay = getelementptr inbounds [260 x i8], ptr %str, i64 0, i64 0
  store ptr %arraydecay, ptr %start, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #11
  store ptr null, ptr %node, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %rep) #11
  %arraydecay1 = getelementptr inbounds [260 x i8], ptr %replace, i64 0, i64 0
  store ptr %arraydecay1, ptr %rep, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #11
  %arraydecay2 = getelementptr inbounds [260 x i8], ptr %str, i64 0, i64 0
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef %arraydecay2)
  %arraydecay3 = getelementptr inbounds [260 x i8], ptr %subStr, i64 0, i64 0
  %call4 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef %arraydecay3)
  %arraydecay5 = getelementptr inbounds [260 x i8], ptr %replace, i64 0, i64 0
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(16) %call4, ptr noundef %arraydecay5)
  %arraydecay7 = getelementptr inbounds [260 x i8], ptr %str, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [260 x i8], ptr %subStr, i64 0, i64 0
  %call9 = call noundef ptr @strstr(ptr noundef %arraydecay7, ptr noundef %arraydecay8) #12
  store ptr %call9, ptr %node, align 8, !tbaa !5
  %0 = load ptr, ptr %node, align 8, !tbaa !5
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load ptr, ptr %start, align 8, !tbaa !5
  %2 = load i8, ptr %1, align 1, !tbaa !10
  %conv = sext i8 %2 to i32
  %cmp10 = icmp ne i32 %conv, 0
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %start, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %start, align 8, !tbaa !5
  %4 = load i8, ptr %3, align 1, !tbaa !10
  %call11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %4)
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %arraydecay12 = getelementptr inbounds [260 x i8], ptr %subStr, i64 0, i64 0
  %call13 = call i64 @strlen(ptr noundef %arraydecay12) #12
  %conv14 = trunc i64 %call13 to i32
  store i32 %conv14, ptr %len, align 4, !tbaa !14
  br label %while.cond15

while.cond15:                                     ; preds = %while.body17, %if.else
  %5 = load ptr, ptr %start, align 8, !tbaa !5
  %6 = load ptr, ptr %node, align 8, !tbaa !5
  %cmp16 = icmp ne ptr %5, %6
  br i1 %cmp16, label %while.body17, label %while.end20

while.body17:                                     ; preds = %while.cond15
  %7 = load ptr, ptr %start, align 8, !tbaa !5
  %incdec.ptr18 = getelementptr inbounds nuw i8, ptr %7, i32 1
  store ptr %incdec.ptr18, ptr %start, align 8, !tbaa !5
  %8 = load i8, ptr %7, align 1, !tbaa !10
  %call19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %8)
  br label %while.cond15, !llvm.loop !16

while.end20:                                      ; preds = %while.cond15
  br label %while.cond21

while.cond21:                                     ; preds = %while.body24, %while.end20
  %9 = load ptr, ptr %rep, align 8, !tbaa !5
  %10 = load i8, ptr %9, align 1, !tbaa !10
  %conv22 = sext i8 %10 to i32
  %cmp23 = icmp ne i32 %conv22, 0
  br i1 %cmp23, label %while.body24, label %while.end27

while.body24:                                     ; preds = %while.cond21
  %11 = load ptr, ptr %rep, align 8, !tbaa !5
  %incdec.ptr25 = getelementptr inbounds nuw i8, ptr %11, i32 1
  store ptr %incdec.ptr25, ptr %rep, align 8, !tbaa !5
  %12 = load i8, ptr %11, align 1, !tbaa !10
  %call26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %12)
  br label %while.cond21, !llvm.loop !17

while.end27:                                      ; preds = %while.cond21
  %13 = load i32, ptr %len, align 4, !tbaa !14
  %14 = load ptr, ptr %node, align 8, !tbaa !5
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %idx.ext
  store ptr %add.ptr, ptr %node, align 8, !tbaa !5
  br label %while.cond28

while.cond28:                                     ; preds = %while.body31, %while.end27
  %15 = load ptr, ptr %node, align 8, !tbaa !5
  %16 = load i8, ptr %15, align 1, !tbaa !10
  %conv29 = sext i8 %16 to i32
  %cmp30 = icmp ne i32 %conv29, 0
  br i1 %cmp30, label %while.body31, label %while.end34

while.body31:                                     ; preds = %while.cond28
  %17 = load ptr, ptr %node, align 8, !tbaa !5
  %incdec.ptr32 = getelementptr inbounds nuw i8, ptr %17, i32 1
  store ptr %incdec.ptr32, ptr %node, align 8, !tbaa !5
  %18 = load i8, ptr %17, align 1, !tbaa !10
  %call33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %18)
  br label %while.cond28, !llvm.loop !18

while.end34:                                      ; preds = %while.cond28
  br label %if.end

if.end:                                           ; preds = %while.end34, %while.end
  %call35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store ptr null, ptr %start, align 8, !tbaa !5
  store ptr null, ptr %node, align 8, !tbaa !5
  store ptr null, ptr %rep, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %rep) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #11
  call void @llvm.lifetime.end.p0(i64 260, ptr %replace) #11
  call void @llvm.lifetime.end.p0(i64 260, ptr %subStr) #11
  call void @llvm.lifetime.end.p0(i64 260, ptr %str) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef nonnull %__s) #2 comdat {
entry:
  %__in.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  %__n = alloca i64, align 8
  %__w = alloca i64, align 8
  %__c = alloca i32, align 4
  %__eof = alloca i8, align 1
  %ref.tmp = alloca i32, align 4
  %__n35 = alloca i64, align 8
  store ptr %__in, ptr %__in.addr, align 8, !tbaa !19
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__n) #11
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !5
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false)
  store i64 %1, ptr %__n, align 8, !tbaa !21
  %2 = load i64, ptr %__n, align 8, !tbaa !21
  %cmp = icmp ult i64 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %__in.addr, align 8, !tbaa !19, !nonnull !23, !align !24
  %vtable = load ptr, ptr %3, align 8, !tbaa !25
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %vbase.offset
  %call = call noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr, i64 noundef 0)
  %4 = load ptr, ptr %__in.addr, align 8, !tbaa !19, !nonnull !23, !align !24
  %vtable1 = load ptr, ptr %4, align 8, !tbaa !25
  %vbase.offset.ptr2 = getelementptr i8, ptr %vtable1, i64 -24
  %vbase.offset3 = load i64, ptr %vbase.offset.ptr2, align 8
  %add.ptr4 = getelementptr inbounds i8, ptr %4, i64 %vbase.offset3
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr4, i32 noundef 4)
  br label %if.end38

if.else:                                          ; preds = %entry
  %5 = load i64, ptr %__n, align 8, !tbaa !21
  %cmp5 = icmp ne i64 %5, -1
  br i1 %cmp5, label %if.then6, label %if.else34

if.then6:                                         ; preds = %if.else
  %6 = load i64, ptr %__n, align 8, !tbaa !21
  %div = udiv i64 %6, 1
  store i64 %div, ptr %__n, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %__w) #11
  %7 = load ptr, ptr %__in.addr, align 8, !tbaa !19, !nonnull !23, !align !24
  %vtable7 = load ptr, ptr %7, align 8, !tbaa !25
  %vbase.offset.ptr8 = getelementptr i8, ptr %vtable7, i64 -24
  %vbase.offset9 = load i64, ptr %vbase.offset.ptr8, align 8
  %add.ptr10 = getelementptr inbounds i8, ptr %7, i64 %vbase.offset9
  %call11 = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr10)
  store i64 %call11, ptr %__w, align 8, !tbaa !21
  %8 = load ptr, ptr %__in.addr, align 8, !tbaa !19, !nonnull !23, !align !24
  %9 = load ptr, ptr %__s.addr, align 8, !tbaa !5
  %10 = load i64, ptr %__n, align 8, !tbaa !21
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %9, i64 noundef %10)
  %11 = load ptr, ptr %__in.addr, align 8, !tbaa !19, !nonnull !23, !align !24
  %vtable12 = load ptr, ptr %11, align 8, !tbaa !25
  %vbase.offset.ptr13 = getelementptr i8, ptr %vtable12, i64 -24
  %vbase.offset14 = load i64, ptr %vbase.offset.ptr13, align 8
  %add.ptr15 = getelementptr inbounds i8, ptr %11, i64 %vbase.offset14
  %call16 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr15)
  br i1 %call16, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.then6
  %12 = load i64, ptr %__w, align 8, !tbaa !21
  %cmp17 = icmp sle i64 %12, 0
  br i1 %cmp17, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %13 = load i64, ptr %__n, align 8, !tbaa !21
  %14 = load i64, ptr %__w, align 8, !tbaa !21
  %cmp18 = icmp ult i64 %13, %14
  br i1 %cmp18, label %if.then19, label %if.end33

if.then19:                                        ; preds = %lor.lhs.false, %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c) #11
  %15 = load ptr, ptr %__in.addr, align 8, !tbaa !19, !nonnull !23, !align !24
  %vtable20 = load ptr, ptr %15, align 8, !tbaa !25
  %vbase.offset.ptr21 = getelementptr i8, ptr %vtable20, i64 -24
  %vbase.offset22 = load i64, ptr %vbase.offset.ptr21, align 8
  %add.ptr23 = getelementptr inbounds i8, ptr %15, i64 %vbase.offset22
  %call24 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr23)
  %call25 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24)
  store i32 %call25, ptr %__c, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 1, ptr %__eof) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref.tmp) #11
  %call26 = call noundef i32 @_ZNSt11char_traitsIcE3eofEv() #11
  store i32 %call26, ptr %ref.tmp, align 4, !tbaa !14
  %call27 = call noundef zeroext i1 @_ZNSt11char_traitsIcE11eq_int_typeERKiS2_(ptr noundef nonnull align 4 dereferenceable(4) %__c, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref.tmp) #11
  %storedv = zext i1 %call27 to i8
  store i8 %storedv, ptr %__eof, align 1, !tbaa !27
  %16 = load i8, ptr %__eof, align 1, !tbaa !27, !range !29, !noundef !23
  %loadedv = trunc i8 %16 to i1
  %conv = zext i1 %loadedv to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then28, label %if.end

if.then28:                                        ; preds = %if.then19
  %17 = load ptr, ptr %__in.addr, align 8, !tbaa !19, !nonnull !23, !align !24
  %vtable29 = load ptr, ptr %17, align 8, !tbaa !25
  %vbase.offset.ptr30 = getelementptr i8, ptr %vtable29, i64 -24
  %vbase.offset31 = load i64, ptr %vbase.offset.ptr30, align 8
  %add.ptr32 = getelementptr inbounds i8, ptr %17, i64 %vbase.offset31
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.then28, %if.then19
  call void @llvm.lifetime.end.p0(i64 1, ptr %__eof) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c) #11
  br label %if.end33

if.end33:                                         ; preds = %if.end, %lor.lhs.false, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %__w) #11
  br label %if.end37

if.else34:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %__n35) #11
  store i64 9223372036854775807, ptr %__n35, align 8, !tbaa !21
  %18 = load i64, ptr %__n35, align 8, !tbaa !21
  %div36 = udiv i64 %18, 1
  store i64 %div36, ptr %__n35, align 8, !tbaa !21
  %19 = load ptr, ptr %__in.addr, align 8, !tbaa !19, !nonnull !23, !align !24
  %20 = load ptr, ptr %__s.addr, align 8, !tbaa !5
  %21 = load i64, ptr %__n35, align 8, !tbaa !21
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef %20, i64 noundef %21)
  call void @llvm.lifetime.end.p0(i64 8, ptr %__n35) #11
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.end33
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %do.end
  %22 = load ptr, ptr %__in.addr, align 8, !tbaa !19, !nonnull !23, !align !24
  call void @llvm.lifetime.end.p0(i64 8, ptr %__n) #11
  ret ptr %22
}

; Function Attrs: nounwind willreturn memory(read)
declare noundef ptr @strstr(ptr noundef, ptr noundef) #3

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %__out, i8 noundef signext %__c) #2 {
entry:
  %retval = alloca ptr, align 8
  %__out.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !30
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !10
  %0 = load ptr, ptr %__out.addr, align 8, !tbaa !30, !nonnull !23, !align !24
  %vtable = load ptr, ptr %0, align 8, !tbaa !25
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %vbase.offset
  %call = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr)
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !30, !nonnull !23, !align !24
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %__c.addr, i64 noundef 1)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !30, !nonnull !23, !align !24
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !10
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3)
  %4 = load ptr, ptr %__out.addr, align 8, !tbaa !30, !nonnull !23, !align !24
  store ptr %4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !30
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !32
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !32
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #2 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !30
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !30, !nonnull !23, !align !24
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !30, !nonnull !23, !align !24
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %this, i64 noundef %__wide) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__wide.addr = alloca i64, align 8
  %__old = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !33
  store i64 %__wide, ptr %__wide.addr, align 8, !tbaa !21
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #11
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !35
  store i64 %0, ptr %__old, align 8, !tbaa !21
  %1 = load i64, ptr %__wide.addr, align 8, !tbaa !21
  %_M_width2 = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  store i64 %1, ptr %_M_width2, align 8, !tbaa !35
  %2 = load i64, ptr %__old, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #11
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !44
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !46
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !46
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this1, i32 noundef %call2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !33
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !35
  ret i64 %0
}

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) #7

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !44
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !44
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 4
  %0 = load ptr, ptr %_M_streambuf, align 8, !tbaa !47
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define available_externally noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !53
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #11
  %call = call noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE4gptrEv(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %call2 = call noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE5egptrEv(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %cmp = icmp ult ptr %call, %call2
  %conv = zext i1 %cmp to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE4gptrEv(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %call4 = call noundef i32 @_ZNSt11char_traitsIcE11to_int_typeERKc(ptr noundef nonnull align 1 dereferenceable(1) %call3) #11
  store i32 %call4, ptr %__ret, align 4, !tbaa !14
  br label %if.end

if.else:                                          ; preds = %entry
  %vtable = load ptr, ptr %this1, align 8, !tbaa !25
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 9
  %0 = load ptr, ptr %vfn, align 8
  %call5 = call noundef i32 %0(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  store i32 %call5, ptr %__ret, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, ptr %__ret, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #11
  ret i32 %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt11char_traitsIcE11eq_int_typeERKiS2_(ptr noundef nonnull align 4 dereferenceable(4) %__c1, ptr noundef nonnull align 4 dereferenceable(4) %__c2) #6 comdat align 2 {
entry:
  %__c1.addr = alloca ptr, align 8
  %__c2.addr = alloca ptr, align 8
  store ptr %__c1, ptr %__c1.addr, align 8, !tbaa !54
  store ptr %__c2, ptr %__c2.addr, align 8, !tbaa !54
  %0 = load ptr, ptr %__c1.addr, align 8, !tbaa !54, !nonnull !23, !align !56
  %1 = load i32, ptr %0, align 4, !tbaa !14
  %2 = load ptr, ptr %__c2.addr, align 8, !tbaa !54, !nonnull !23, !align !56
  %3 = load i32, ptr %2, align 4, !tbaa !14
  %cmp = icmp eq i32 %1, %3
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt11char_traitsIcE3eofEv() #6 comdat align 2 {
entry:
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #9 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !46
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !46
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !46
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !46
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !44
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !57
  ret i32 %0
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE4gptrEv(ptr noundef nonnull align 8 dereferenceable(64) %this) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !53
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_in_cur = getelementptr inbounds nuw %"class.std::basic_streambuf", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %_M_in_cur, align 8, !tbaa !58
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE5egptrEv(ptr noundef nonnull align 8 dereferenceable(64) %this) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !53
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_in_end = getelementptr inbounds nuw %"class.std::basic_streambuf", ptr %this1, i32 0, i32 3
  %0 = load ptr, ptr %_M_in_end, align 8, !tbaa !60
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt11char_traitsIcE11to_int_typeERKc(ptr noundef nonnull align 1 dereferenceable(1) %__c) #6 comdat align 2 {
entry:
  %__c.addr = alloca ptr, align 8
  store ptr %__c, ptr %__c.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %__c.addr, align 8, !tbaa !5, !nonnull !23
  %1 = load i8, ptr %0, align 1, !tbaa !10
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #7

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #2 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !30
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !30, !nonnull !23, !align !24
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !44
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !10
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !61
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !10
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #2 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !62
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !62
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #13
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !62
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #4 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !62
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !10
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !63
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !10
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !10
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !10
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

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 omnipotent char", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !8, i64 0}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
!18 = distinct !{!18, !12, !13}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTSSi", !7, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"long", !8, i64 0}
!23 = !{}
!24 = !{i64 8}
!25 = !{!26, !26, i64 0}
!26 = !{!"vtable pointer", !9, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"bool", !8, i64 0}
!29 = !{i8 0, i8 2}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTSSo", !7, i64 0}
!32 = !{!7, !7, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 _ZTSSt8ios_base", !7, i64 0}
!35 = !{!36, !22, i64 16}
!36 = !{!"_ZTSSt8ios_base", !22, i64 8, !22, i64 16, !37, i64 24, !38, i64 28, !38, i64 32, !39, i64 40, !40, i64 48, !8, i64 64, !15, i64 192, !41, i64 200, !42, i64 208}
!37 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!38 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!39 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !7, i64 0}
!40 = !{!"_ZTSNSt8ios_base6_WordsE", !7, i64 0, !22, i64 8}
!41 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !7, i64 0}
!42 = !{!"_ZTSSt6locale", !43, i64 0}
!43 = !{!"p1 _ZTSNSt6locale5_ImplE", !7, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !7, i64 0}
!46 = !{!38, !38, i64 0}
!47 = !{!48, !49, i64 232}
!48 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !36, i64 0, !31, i64 216, !8, i64 224, !28, i64 225, !49, i64 232, !50, i64 240, !51, i64 248, !52, i64 256}
!49 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !7, i64 0}
!50 = !{!"p1 _ZTSSt5ctypeIcE", !7, i64 0}
!51 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !7, i64 0}
!52 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !7, i64 0}
!53 = !{!49, !49, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"p1 int", !7, i64 0}
!56 = !{i64 4}
!57 = !{!36, !38, i64 32}
!58 = !{!59, !6, i64 16}
!59 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !42, i64 56}
!60 = !{!59, !6, i64 24}
!61 = !{!48, !50, i64 240}
!62 = !{!50, !50, i64 0}
!63 = !{!64, !8, i64 56}
!64 = !{!"_ZTSSt5ctypeIcE", !65, i64 0, !66, i64 16, !28, i64 24, !55, i64 32, !55, i64 40, !67, i64 48, !8, i64 56, !8, i64 57, !8, i64 313, !8, i64 569}
!65 = !{!"_ZTSNSt6locale5facetE", !15, i64 8}
!66 = !{!"p1 _ZTS15__locale_struct", !7, i64 0}
!67 = !{!"p1 short", !7, i64 0}
