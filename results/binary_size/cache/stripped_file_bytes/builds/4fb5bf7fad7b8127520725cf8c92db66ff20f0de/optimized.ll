; ModuleID = '/tmp/tmpb746k0c5.cpp'
source_filename = "/tmp/tmpb746k0c5.cpp"
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

$_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_ = comdat any

$_ZNSt8ios_base5widthEl = comdat any

$_ZNKSt8ios_base5widthEv = comdat any

$_ZNSt11char_traitsIcE11eq_int_typeERKiS2_ = comdat any

$_ZNSt11char_traitsIcE3eofEv = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZNSt11char_traitsIcE11to_int_typeERKc = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %len = alloca i32, align 4
  %len1 = alloca i32, align 4
  %flag = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %str = alloca [256 x i8], align 16
  %str1 = alloca [256 x i8], align 16
  %str2 = alloca [256 x i8], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %len1) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %flag) #10
  store i32 0, ptr %flag, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr %str) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr %str1) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr %str2) #10
  %arraydecay = getelementptr inbounds [256 x i8], ptr %str, i64 0, i64 0
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [256 x i8], ptr %str1, i64 0, i64 0
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef %arraydecay1)
  %arraydecay3 = getelementptr inbounds [256 x i8], ptr %str2, i64 0, i64 0
  %call4 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef %arraydecay3)
  %arraydecay5 = getelementptr inbounds [256 x i8], ptr %str, i64 0, i64 0
  %call6 = call i64 @strlen(ptr noundef %arraydecay5) #11
  %conv = trunc i64 %call6 to i32
  store i32 %conv, ptr %len, align 4, !tbaa !5
  %arraydecay7 = getelementptr inbounds [256 x i8], ptr %str1, i64 0, i64 0
  %call8 = call i64 @strlen(ptr noundef %arraydecay7) #11
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, ptr %len1, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %len, align 4, !tbaa !5
  %2 = load i32, ptr %len1, align 4, !tbaa !5
  %sub = sub nsw i32 %1, %2
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %4 = load i32, ptr %len1, align 4, !tbaa !5
  %sub11 = sub nsw i32 %4, 1
  %cmp12 = icmp sle i32 %3, %sub11
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond10
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %5, %6
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr %str, i64 0, i64 %idxprom
  %7 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv14 = sext i8 %7 to i32
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom15 = sext i32 %8 to i64
  %arrayidx16 = getelementptr inbounds [256 x i8], ptr %str1, i64 0, i64 %idxprom15
  %9 = load i8, ptr %arrayidx16, align 1, !tbaa !9
  %conv17 = sext i8 %9 to i32
  %cmp18 = icmp eq i32 %conv14, %conv17
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %for.body13
  br label %for.inc

if.else:                                          ; preds = %for.body13
  br label %for.end

for.inc:                                          ; preds = %if.then
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !10

for.end:                                          ; preds = %if.else, %for.cond10
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %12 = load i32, ptr %len1, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %11, %12
  br i1 %cmp19, label %if.then20, label %if.end

if.then20:                                        ; preds = %for.end
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc27, %if.then20
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %13, %14
  br i1 %cmp22, label %for.body23, label %for.end29

for.body23:                                       ; preds = %for.cond21
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds [256 x i8], ptr %str, i64 0, i64 %idxprom24
  %16 = load i8, ptr %arrayidx25, align 1, !tbaa !9
  %call26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %16)
  br label %for.inc27

for.inc27:                                        ; preds = %for.body23
  %17 = load i32, ptr %k, align 4, !tbaa !5
  %inc28 = add nsw i32 %17, 1
  store i32 %inc28, ptr %k, align 4, !tbaa !5
  br label %for.cond21, !llvm.loop !13

for.end29:                                        ; preds = %for.cond21
  %arraydecay30 = getelementptr inbounds [256 x i8], ptr %str2, i64 0, i64 0
  %call31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %arraydecay30)
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %add32 = add nsw i32 %18, %19
  store i32 %add32, ptr %k, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc39, %for.end29
  %20 = load i32, ptr %k, align 4, !tbaa !5
  %21 = load i32, ptr %len, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %20, %21
  br i1 %cmp34, label %for.body35, label %for.end41

for.body35:                                       ; preds = %for.cond33
  %22 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom36 = sext i32 %22 to i64
  %arrayidx37 = getelementptr inbounds [256 x i8], ptr %str, i64 0, i64 %idxprom36
  %23 = load i8, ptr %arrayidx37, align 1, !tbaa !9
  %call38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %23)
  br label %for.inc39

for.inc39:                                        ; preds = %for.body35
  %24 = load i32, ptr %k, align 4, !tbaa !5
  %inc40 = add nsw i32 %24, 1
  store i32 %inc40, ptr %k, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !14

for.end41:                                        ; preds = %for.cond33
  store i32 1, ptr %flag, align 4, !tbaa !5
  br label %for.end44

if.end:                                           ; preds = %for.end
  br label %for.inc42

for.inc42:                                        ; preds = %if.end
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %inc43 = add nsw i32 %25, 1
  store i32 %inc43, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !15

for.end44:                                        ; preds = %for.end41, %for.cond
  %26 = load i32, ptr %flag, align 4, !tbaa !5
  %cmp45 = icmp eq i32 %26, 0
  br i1 %cmp45, label %if.then46, label %if.end49

if.then46:                                        ; preds = %for.end44
  %arraydecay47 = getelementptr inbounds [256 x i8], ptr %str, i64 0, i64 0
  %call48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %arraydecay47)
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %for.end44
  call void @llvm.lifetime.end.p0(i64 256, ptr %str2) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr %str1) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr %str) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %flag) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %len1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #10
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
  store ptr %__in, ptr %__in.addr, align 8, !tbaa !16
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %__n) #10
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !19
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
  %3 = load ptr, ptr %__in.addr, align 8, !tbaa !16, !nonnull !23, !align !24
  %vtable = load ptr, ptr %3, align 8, !tbaa !25
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %vbase.offset
  %call = call noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr, i64 noundef 0)
  %4 = load ptr, ptr %__in.addr, align 8, !tbaa !16, !nonnull !23, !align !24
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %__w) #10
  %7 = load ptr, ptr %__in.addr, align 8, !tbaa !16, !nonnull !23, !align !24
  %vtable7 = load ptr, ptr %7, align 8, !tbaa !25
  %vbase.offset.ptr8 = getelementptr i8, ptr %vtable7, i64 -24
  %vbase.offset9 = load i64, ptr %vbase.offset.ptr8, align 8
  %add.ptr10 = getelementptr inbounds i8, ptr %7, i64 %vbase.offset9
  %call11 = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr10)
  store i64 %call11, ptr %__w, align 8, !tbaa !21
  %8 = load ptr, ptr %__in.addr, align 8, !tbaa !16, !nonnull !23, !align !24
  %9 = load ptr, ptr %__s.addr, align 8, !tbaa !19
  %10 = load i64, ptr %__n, align 8, !tbaa !21
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %9, i64 noundef %10)
  %11 = load ptr, ptr %__in.addr, align 8, !tbaa !16, !nonnull !23, !align !24
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c) #10
  %15 = load ptr, ptr %__in.addr, align 8, !tbaa !16, !nonnull !23, !align !24
  %vtable20 = load ptr, ptr %15, align 8, !tbaa !25
  %vbase.offset.ptr21 = getelementptr i8, ptr %vtable20, i64 -24
  %vbase.offset22 = load i64, ptr %vbase.offset.ptr21, align 8
  %add.ptr23 = getelementptr inbounds i8, ptr %15, i64 %vbase.offset22
  %call24 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr23)
  %call25 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24)
  store i32 %call25, ptr %__c, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr %__eof) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref.tmp) #10
  %call26 = call noundef i32 @_ZNSt11char_traitsIcE3eofEv() #10
  store i32 %call26, ptr %ref.tmp, align 4, !tbaa !5
  %call27 = call noundef zeroext i1 @_ZNSt11char_traitsIcE11eq_int_typeERKiS2_(ptr noundef nonnull align 4 dereferenceable(4) %__c, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref.tmp) #10
  %storedv = zext i1 %call27 to i8
  store i8 %storedv, ptr %__eof, align 1, !tbaa !27
  %16 = load i8, ptr %__eof, align 1, !tbaa !27, !range !29, !noundef !23
  %loadedv = trunc i8 %16 to i1
  %conv = zext i1 %loadedv to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then28, label %if.end

if.then28:                                        ; preds = %if.then19
  %17 = load ptr, ptr %__in.addr, align 8, !tbaa !16, !nonnull !23, !align !24
  %vtable29 = load ptr, ptr %17, align 8, !tbaa !25
  %vbase.offset.ptr30 = getelementptr i8, ptr %vtable29, i64 -24
  %vbase.offset31 = load i64, ptr %vbase.offset.ptr30, align 8
  %add.ptr32 = getelementptr inbounds i8, ptr %17, i64 %vbase.offset31
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.then28, %if.then19
  call void @llvm.lifetime.end.p0(i64 1, ptr %__eof) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c) #10
  br label %if.end33

if.end33:                                         ; preds = %if.end, %lor.lhs.false, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %__w) #10
  br label %if.end37

if.else34:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %__n35) #10
  store i64 9223372036854775807, ptr %__n35, align 8, !tbaa !21
  %18 = load i64, ptr %__n35, align 8, !tbaa !21
  %div36 = udiv i64 %18, 1
  store i64 %div36, ptr %__n35, align 8, !tbaa !21
  %19 = load ptr, ptr %__in.addr, align 8, !tbaa !16, !nonnull !23, !align !24
  %20 = load ptr, ptr %__s.addr, align 8, !tbaa !19
  %21 = load i64, ptr %__n35, align 8, !tbaa !21
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef %20, i64 noundef %21)
  call void @llvm.lifetime.end.p0(i64 8, ptr %__n35) #10
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.end33
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %do.end
  %22 = load ptr, ptr %__in.addr, align 8, !tbaa !16, !nonnull !23, !align !24
  call void @llvm.lifetime.end.p0(i64 8, ptr %__n) #10
  ret ptr %22
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %__out, i8 noundef signext %__c) #2 {
entry:
  %retval = alloca ptr, align 8
  %__out.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !30
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !9
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
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !9
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3)
  %4 = load ptr, ptr %__out.addr, align 8, !tbaa !30, !nonnull !23, !align !24
  store ptr %4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #2 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !30
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !19
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !19
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !30, !nonnull !23, !align !24
  %vtable = load ptr, ptr %1, align 8, !tbaa !25
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !30, !nonnull !23, !align !24
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !19
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !19
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !30, !nonnull !23, !align !24
  ret ptr %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %this, i64 noundef %__wide) #5 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__wide.addr = alloca i64, align 8
  %__old = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !32
  store i64 %__wide, ptr %__wide.addr, align 8, !tbaa !21
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #10
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !34
  store i64 %0, ptr %__old, align 8, !tbaa !21
  %1 = load i64, ptr %__wide.addr, align 8, !tbaa !21
  %_M_width2 = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  store i64 %1, ptr %_M_width2, align 8, !tbaa !34
  %2 = load i64, ptr %__old, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #10
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !43
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !45
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !45
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this1, i32 noundef %call2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) #5 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !32
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !34
  ret i64 %0
}

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) #7

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !43
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !43
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 4
  %0 = load ptr, ptr %_M_streambuf, align 8, !tbaa !46
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define available_externally noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %this) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !52
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #10
  %call = call noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE4gptrEv(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %call2 = call noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE5egptrEv(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %cmp = icmp ult ptr %call, %call2
  %conv = zext i1 %cmp to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE4gptrEv(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %call4 = call noundef i32 @_ZNSt11char_traitsIcE11to_int_typeERKc(ptr noundef nonnull align 1 dereferenceable(1) %call3) #10
  store i32 %call4, ptr %__ret, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %vtable = load ptr, ptr %this1, align 8, !tbaa !25
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 9
  %0 = load ptr, ptr %vfn, align 8
  %call5 = call noundef i32 %0(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  store i32 %call5, ptr %__ret, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, ptr %__ret, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #10
  ret i32 %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt11char_traitsIcE11eq_int_typeERKiS2_(ptr noundef nonnull align 4 dereferenceable(4) %__c1, ptr noundef nonnull align 4 dereferenceable(4) %__c2) #5 comdat align 2 {
entry:
  %__c1.addr = alloca ptr, align 8
  %__c2.addr = alloca ptr, align 8
  store ptr %__c1, ptr %__c1.addr, align 8, !tbaa !53
  store ptr %__c2, ptr %__c2.addr, align 8, !tbaa !53
  %0 = load ptr, ptr %__c1.addr, align 8, !tbaa !53, !nonnull !23, !align !55
  %1 = load i32, ptr %0, align 4, !tbaa !5
  %2 = load ptr, ptr %__c2.addr, align 8, !tbaa !53, !nonnull !23, !align !55
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %cmp = icmp eq i32 %1, %3
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt11char_traitsIcE3eofEv() #5 comdat align 2 {
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
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !45
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !45
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !45
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !45
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !43
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !56
  ret i32 %0
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE4gptrEv(ptr noundef nonnull align 8 dereferenceable(64) %this) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !52
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_in_cur = getelementptr inbounds nuw %"class.std::basic_streambuf", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %_M_in_cur, align 8, !tbaa !57
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE5egptrEv(ptr noundef nonnull align 8 dereferenceable(64) %this) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !52
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_in_end = getelementptr inbounds nuw %"class.std::basic_streambuf", ptr %this1, i32 0, i32 3
  %0 = load ptr, ptr %_M_in_end, align 8, !tbaa !59
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt11char_traitsIcE11to_int_typeERKc(ptr noundef nonnull align 1 dereferenceable(1) %__c) #5 comdat align 2 {
entry:
  %__c.addr = alloca ptr, align 8
  store ptr %__c, ptr %__c.addr, align 8, !tbaa !19
  %0 = load ptr, ptr %__c.addr, align 8, !tbaa !19, !nonnull !23
  %1 = load i8, ptr %0, align 1, !tbaa !9
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #5 comdat align 2 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !19
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !19
  %call = call i64 @strlen(ptr noundef %0) #10
  ret i64 %call
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTSSi", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 omnipotent char", !18, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"long", !7, i64 0}
!23 = !{}
!24 = !{i64 8}
!25 = !{!26, !26, i64 0}
!26 = !{!"vtable pointer", !8, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"bool", !7, i64 0}
!29 = !{i8 0, i8 2}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTSSo", !18, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 _ZTSSt8ios_base", !18, i64 0}
!34 = !{!35, !22, i64 16}
!35 = !{!"_ZTSSt8ios_base", !22, i64 8, !22, i64 16, !36, i64 24, !37, i64 28, !37, i64 32, !38, i64 40, !39, i64 48, !7, i64 64, !6, i64 192, !40, i64 200, !41, i64 208}
!36 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!37 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!38 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!39 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !22, i64 8}
!40 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!41 = !{!"_ZTSSt6locale", !42, i64 0}
!42 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !18, i64 0}
!45 = !{!37, !37, i64 0}
!46 = !{!47, !48, i64 232}
!47 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !35, i64 0, !31, i64 216, !7, i64 224, !28, i64 225, !48, i64 232, !49, i64 240, !50, i64 248, !51, i64 256}
!48 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !18, i64 0}
!49 = !{!"p1 _ZTSSt5ctypeIcE", !18, i64 0}
!50 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!51 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!52 = !{!48, !48, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"p1 int", !18, i64 0}
!55 = !{i64 4}
!56 = !{!35, !37, i64 32}
!57 = !{!58, !20, i64 16}
!58 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !41, i64 56}
!59 = !{!58, !20, i64 24}
