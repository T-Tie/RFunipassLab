; ModuleID = '/tmp/tmplnjml7_z.cpp'
source_filename = "/tmp/tmplnjml7_z.cpp"
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
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ch = alloca [500 x i8], align 16
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %record = alloca [250 x ptr], align 16
  %n = alloca i32, align 4
  %l = alloca i32, align 4
  %num = alloca i32, align 4
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 500, ptr %ch) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #11
  call void @llvm.lifetime.start.p0(i64 2000, ptr %record) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #11
  store i32 1, ptr %num, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #11
  store i32 0, ptr %d, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %arraydecay = getelementptr inbounds [500 x i8], ptr %ch, i64 0, i64 0
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef %arraydecay)
  %arraydecay2 = getelementptr inbounds [500 x i8], ptr %ch, i64 0, i64 0
  %call3 = call i64 @strlen(ptr noundef %arraydecay2) #12
  %conv = trunc i64 %call3 to i32
  store i32 %conv, ptr %l, align 4, !tbaa !5
  %arraydecay4 = getelementptr inbounds [500 x i8], ptr %ch, i64 0, i64 0
  store ptr %arraydecay4, ptr %p, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %0 = load ptr, ptr %p, align 8, !tbaa !9
  %arraydecay5 = getelementptr inbounds [500 x i8], ptr %ch, i64 0, i64 0
  %1 = load i32, ptr %l, align 4, !tbaa !5
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay5, i64 %idx.ext
  %add.ptr6 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  %cmp = icmp ult ptr %0, %add.ptr6
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %r, align 4, !tbaa !5
  %2 = load ptr, ptr %p, align 8, !tbaa !9
  %add.ptr7 = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %add.ptr7, ptr %q, align 8, !tbaa !9
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc29, %for.body
  %3 = load ptr, ptr %q, align 8, !tbaa !9
  %arraydecay9 = getelementptr inbounds [500 x i8], ptr %ch, i64 0, i64 0
  %4 = load i32, ptr %l, align 4, !tbaa !5
  %idx.ext10 = sext i32 %4 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %arraydecay9, i64 %idx.ext10
  %cmp12 = icmp ult ptr %3, %add.ptr11
  br i1 %cmp12, label %for.body13, label %for.end30

for.body13:                                       ; preds = %for.cond8
  store i32 0, ptr %k, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %for.body13
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %5, %6
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond14
  %7 = load ptr, ptr %q, align 8, !tbaa !9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext17 = sext i32 %8 to i64
  %add.ptr18 = getelementptr inbounds i8, ptr %7, i64 %idx.ext17
  %9 = load i8, ptr %add.ptr18, align 1, !tbaa !12
  %conv19 = sext i8 %9 to i32
  %10 = load ptr, ptr %p, align 8, !tbaa !9
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext20 = sext i32 %11 to i64
  %add.ptr21 = getelementptr inbounds i8, ptr %10, i64 %idx.ext20
  %12 = load i8, ptr %add.ptr21, align 1, !tbaa !12
  %conv22 = sext i8 %12 to i32
  %cmp23 = icmp eq i32 %conv19, %conv22
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %for.body16
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body16
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %inc24 = add nsw i32 %14, 1
  store i32 %inc24, ptr %i, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !13

for.end:                                          ; preds = %for.cond14
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %16 = load i32, ptr %n, align 4, !tbaa !5
  %cmp25 = icmp eq i32 %15, %16
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %for.end
  %17 = load i32, ptr %r, align 4, !tbaa !5
  %inc27 = add nsw i32 %17, 1
  store i32 %inc27, ptr %r, align 4, !tbaa !5
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %for.end
  br label %for.inc29

for.inc29:                                        ; preds = %if.end28
  %18 = load ptr, ptr %q, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %q, align 8, !tbaa !9
  br label %for.cond8, !llvm.loop !16

for.end30:                                        ; preds = %for.cond8
  %19 = load i32, ptr %r, align 4, !tbaa !5
  %20 = load i32, ptr %num, align 4, !tbaa !5
  %cmp31 = icmp sgt i32 %19, %20
  br i1 %cmp31, label %if.then32, label %if.else

if.then32:                                        ; preds = %for.end30
  store i32 0, ptr %d, align 4, !tbaa !5
  %21 = load i32, ptr %r, align 4, !tbaa !5
  store i32 %21, ptr %num, align 4, !tbaa !5
  %22 = load ptr, ptr %p, align 8, !tbaa !9
  %23 = load i32, ptr %d, align 4, !tbaa !5
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds [250 x ptr], ptr %record, i64 0, i64 %idxprom
  store ptr %22, ptr %arrayidx, align 8, !tbaa !9
  %24 = load i32, ptr %d, align 4, !tbaa !5
  %inc33 = add nsw i32 %24, 1
  store i32 %inc33, ptr %d, align 4, !tbaa !5
  br label %if.end41

if.else:                                          ; preds = %for.end30
  %25 = load i32, ptr %r, align 4, !tbaa !5
  %26 = load i32, ptr %num, align 4, !tbaa !5
  %cmp34 = icmp eq i32 %25, %26
  br i1 %cmp34, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %if.else
  %27 = load i32, ptr %num, align 4, !tbaa !5
  %cmp35 = icmp sgt i32 %27, 1
  br i1 %cmp35, label %if.then36, label %if.end40

if.then36:                                        ; preds = %land.lhs.true
  %28 = load ptr, ptr %p, align 8, !tbaa !9
  %29 = load i32, ptr %d, align 4, !tbaa !5
  %idxprom37 = sext i32 %29 to i64
  %arrayidx38 = getelementptr inbounds [250 x ptr], ptr %record, i64 0, i64 %idxprom37
  store ptr %28, ptr %arrayidx38, align 8, !tbaa !9
  %30 = load i32, ptr %d, align 4, !tbaa !5
  %inc39 = add nsw i32 %30, 1
  store i32 %inc39, ptr %d, align 4, !tbaa !5
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %land.lhs.true, %if.else
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then32
  br label %for.inc42

for.inc42:                                        ; preds = %if.end41
  %31 = load ptr, ptr %p, align 8, !tbaa !9
  %incdec.ptr43 = getelementptr inbounds nuw i8, ptr %31, i32 1
  store ptr %incdec.ptr43, ptr %p, align 8, !tbaa !9
  br label %for.cond, !llvm.loop !17

for.end44:                                        ; preds = %for.cond
  %32 = load i32, ptr %num, align 4, !tbaa !5
  %cmp45 = icmp eq i32 %32, 1
  br i1 %cmp45, label %if.then46, label %if.else49

if.then46:                                        ; preds = %for.end44
  %call47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %call48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call47, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end70

if.else49:                                        ; preds = %for.end44
  %33 = load i32, ptr %num, align 4, !tbaa !5
  %call50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %33)
  %call51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call50, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc67, %if.else49
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %35 = load i32, ptr %d, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %34, %35
  br i1 %cmp53, label %for.body54, label %for.end69

for.body54:                                       ; preds = %for.cond52
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc63, %for.body54
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %37 = load i32, ptr %n, align 4, !tbaa !5
  %cmp56 = icmp slt i32 %36, %37
  br i1 %cmp56, label %for.body57, label %for.end65

for.body57:                                       ; preds = %for.cond55
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom58 = sext i32 %38 to i64
  %arrayidx59 = getelementptr inbounds [250 x ptr], ptr %record, i64 0, i64 %idxprom58
  %39 = load ptr, ptr %arrayidx59, align 8, !tbaa !9
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext60 = sext i32 %40 to i64
  %add.ptr61 = getelementptr inbounds i8, ptr %39, i64 %idx.ext60
  %41 = load i8, ptr %add.ptr61, align 1, !tbaa !12
  %call62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %41)
  br label %for.inc63

for.inc63:                                        ; preds = %for.body57
  %42 = load i32, ptr %j, align 4, !tbaa !5
  %inc64 = add nsw i32 %42, 1
  store i32 %inc64, ptr %j, align 4, !tbaa !5
  br label %for.cond55, !llvm.loop !18

for.end65:                                        ; preds = %for.cond55
  %call66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc67

for.inc67:                                        ; preds = %for.end65
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %inc68 = add nsw i32 %43, 1
  store i32 %inc68, ptr %i, align 4, !tbaa !5
  br label %for.cond52, !llvm.loop !19

for.end69:                                        ; preds = %for.cond52
  br label %if.end70

if.end70:                                         ; preds = %for.end69, %if.then46
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #11
  call void @llvm.lifetime.end.p0(i64 2000, ptr %record) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11
  call void @llvm.lifetime.end.p0(i64 500, ptr %ch) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef nonnull %__s) #3 comdat {
entry:
  %__in.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  %__n = alloca i64, align 8
  %__w = alloca i64, align 8
  %__c = alloca i32, align 4
  %__eof = alloca i8, align 1
  %ref.tmp = alloca i32, align 4
  %__n35 = alloca i64, align 8
  store ptr %__in, ptr %__in.addr, align 8, !tbaa !20
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__n) #11
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !9
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false)
  store i64 %1, ptr %__n, align 8, !tbaa !22
  %2 = load i64, ptr %__n, align 8, !tbaa !22
  %cmp = icmp ult i64 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %__in.addr, align 8, !tbaa !20, !nonnull !24, !align !25
  %vtable = load ptr, ptr %3, align 8, !tbaa !26
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %vbase.offset
  %call = call noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr, i64 noundef 0)
  %4 = load ptr, ptr %__in.addr, align 8, !tbaa !20, !nonnull !24, !align !25
  %vtable1 = load ptr, ptr %4, align 8, !tbaa !26
  %vbase.offset.ptr2 = getelementptr i8, ptr %vtable1, i64 -24
  %vbase.offset3 = load i64, ptr %vbase.offset.ptr2, align 8
  %add.ptr4 = getelementptr inbounds i8, ptr %4, i64 %vbase.offset3
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr4, i32 noundef 4)
  br label %if.end38

if.else:                                          ; preds = %entry
  %5 = load i64, ptr %__n, align 8, !tbaa !22
  %cmp5 = icmp ne i64 %5, -1
  br i1 %cmp5, label %if.then6, label %if.else34

if.then6:                                         ; preds = %if.else
  %6 = load i64, ptr %__n, align 8, !tbaa !22
  %div = udiv i64 %6, 1
  store i64 %div, ptr %__n, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 8, ptr %__w) #11
  %7 = load ptr, ptr %__in.addr, align 8, !tbaa !20, !nonnull !24, !align !25
  %vtable7 = load ptr, ptr %7, align 8, !tbaa !26
  %vbase.offset.ptr8 = getelementptr i8, ptr %vtable7, i64 -24
  %vbase.offset9 = load i64, ptr %vbase.offset.ptr8, align 8
  %add.ptr10 = getelementptr inbounds i8, ptr %7, i64 %vbase.offset9
  %call11 = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr10)
  store i64 %call11, ptr %__w, align 8, !tbaa !22
  %8 = load ptr, ptr %__in.addr, align 8, !tbaa !20, !nonnull !24, !align !25
  %9 = load ptr, ptr %__s.addr, align 8, !tbaa !9
  %10 = load i64, ptr %__n, align 8, !tbaa !22
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %9, i64 noundef %10)
  %11 = load ptr, ptr %__in.addr, align 8, !tbaa !20, !nonnull !24, !align !25
  %vtable12 = load ptr, ptr %11, align 8, !tbaa !26
  %vbase.offset.ptr13 = getelementptr i8, ptr %vtable12, i64 -24
  %vbase.offset14 = load i64, ptr %vbase.offset.ptr13, align 8
  %add.ptr15 = getelementptr inbounds i8, ptr %11, i64 %vbase.offset14
  %call16 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr15)
  br i1 %call16, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.then6
  %12 = load i64, ptr %__w, align 8, !tbaa !22
  %cmp17 = icmp sle i64 %12, 0
  br i1 %cmp17, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %13 = load i64, ptr %__n, align 8, !tbaa !22
  %14 = load i64, ptr %__w, align 8, !tbaa !22
  %cmp18 = icmp ult i64 %13, %14
  br i1 %cmp18, label %if.then19, label %if.end33

if.then19:                                        ; preds = %lor.lhs.false, %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c) #11
  %15 = load ptr, ptr %__in.addr, align 8, !tbaa !20, !nonnull !24, !align !25
  %vtable20 = load ptr, ptr %15, align 8, !tbaa !26
  %vbase.offset.ptr21 = getelementptr i8, ptr %vtable20, i64 -24
  %vbase.offset22 = load i64, ptr %vbase.offset.ptr21, align 8
  %add.ptr23 = getelementptr inbounds i8, ptr %15, i64 %vbase.offset22
  %call24 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr23)
  %call25 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24)
  store i32 %call25, ptr %__c, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr %__eof) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref.tmp) #11
  %call26 = call noundef i32 @_ZNSt11char_traitsIcE3eofEv() #11
  store i32 %call26, ptr %ref.tmp, align 4, !tbaa !5
  %call27 = call noundef zeroext i1 @_ZNSt11char_traitsIcE11eq_int_typeERKiS2_(ptr noundef nonnull align 4 dereferenceable(4) %__c, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref.tmp) #11
  %storedv = zext i1 %call27 to i8
  store i8 %storedv, ptr %__eof, align 1, !tbaa !28
  %16 = load i8, ptr %__eof, align 1, !tbaa !28, !range !30, !noundef !24
  %loadedv = trunc i8 %16 to i1
  %conv = zext i1 %loadedv to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then28, label %if.end

if.then28:                                        ; preds = %if.then19
  %17 = load ptr, ptr %__in.addr, align 8, !tbaa !20, !nonnull !24, !align !25
  %vtable29 = load ptr, ptr %17, align 8, !tbaa !26
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
  store i64 9223372036854775807, ptr %__n35, align 8, !tbaa !22
  %18 = load i64, ptr %__n35, align 8, !tbaa !22
  %div36 = udiv i64 %18, 1
  store i64 %div36, ptr %__n35, align 8, !tbaa !22
  %19 = load ptr, ptr %__in.addr, align 8, !tbaa !20, !nonnull !24, !align !25
  %20 = load ptr, ptr %__s.addr, align 8, !tbaa !9
  %21 = load i64, ptr %__n35, align 8, !tbaa !22
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef %20, i64 noundef %21)
  call void @llvm.lifetime.end.p0(i64 8, ptr %__n35) #11
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.end33
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %do.end
  %22 = load ptr, ptr %__in.addr, align 8, !tbaa !20, !nonnull !24, !align !25
  call void @llvm.lifetime.end.p0(i64 8, ptr %__n) #11
  ret ptr %22
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #3 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !31
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !9
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !31, !nonnull !24, !align !25
  %vtable = load ptr, ptr %1, align 8, !tbaa !26
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !31, !nonnull !24, !align !25
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !9
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !9
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !31, !nonnull !24, !align !25
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !31
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !33
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !33
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #3 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !31
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !31, !nonnull !24, !align !25
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !31, !nonnull !24, !align !25
  %vtable = load ptr, ptr %1, align 8, !tbaa !26
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %__out, i8 noundef signext %__c) #3 {
entry:
  %retval = alloca ptr, align 8
  %__out.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !31
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !12
  %0 = load ptr, ptr %__out.addr, align 8, !tbaa !31, !nonnull !24, !align !25
  %vtable = load ptr, ptr %0, align 8, !tbaa !26
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %vbase.offset
  %call = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr)
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !31, !nonnull !24, !align !25
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %__c.addr, i64 noundef 1)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !31, !nonnull !24, !align !25
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !12
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3)
  %4 = load ptr, ptr %__out.addr, align 8, !tbaa !31, !nonnull !24, !align !25
  store ptr %4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %this, i64 noundef %__wide) #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__wide.addr = alloca i64, align 8
  %__old = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !34
  store i64 %__wide, ptr %__wide.addr, align 8, !tbaa !22
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #11
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !36
  store i64 %0, ptr %__old, align 8, !tbaa !22
  %1 = load i64, ptr %__wide.addr, align 8, !tbaa !22
  %_M_width2 = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  store i64 %1, ptr %_M_width2, align 8, !tbaa !36
  %2 = load i64, ptr %__old, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #11
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !45
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !47
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !47
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this1, i32 noundef %call2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !34
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !36
  ret i64 %0
}

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #7 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !45
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #7 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !45
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 4
  %0 = load ptr, ptr %_M_streambuf, align 8, !tbaa !48
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define available_externally noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %this) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !54
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
  store i32 %call4, ptr %__ret, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %vtable = load ptr, ptr %this1, align 8, !tbaa !26
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 9
  %0 = load ptr, ptr %vfn, align 8
  %call5 = call noundef i32 %0(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  store i32 %call5, ptr %__ret, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, ptr %__ret, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #11
  ret i32 %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt11char_traitsIcE11eq_int_typeERKiS2_(ptr noundef nonnull align 4 dereferenceable(4) %__c1, ptr noundef nonnull align 4 dereferenceable(4) %__c2) #7 comdat align 2 {
entry:
  %__c1.addr = alloca ptr, align 8
  %__c2.addr = alloca ptr, align 8
  store ptr %__c1, ptr %__c1.addr, align 8, !tbaa !55
  store ptr %__c2, ptr %__c2.addr, align 8, !tbaa !55
  %0 = load ptr, ptr %__c1.addr, align 8, !tbaa !55, !nonnull !24, !align !57
  %1 = load i32, ptr %0, align 4, !tbaa !5
  %2 = load ptr, ptr %__c2.addr, align 8, !tbaa !55, !nonnull !24, !align !57
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %cmp = icmp eq i32 %1, %3
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt11char_traitsIcE3eofEv() #7 comdat align 2 {
entry:
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #9 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !47
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !47
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !47
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !47
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #7 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !45
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !58
  ret i32 %0
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE4gptrEv(ptr noundef nonnull align 8 dereferenceable(64) %this) #7 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !54
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_in_cur = getelementptr inbounds nuw %"class.std::basic_streambuf", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %_M_in_cur, align 8, !tbaa !59
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE5egptrEv(ptr noundef nonnull align 8 dereferenceable(64) %this) #7 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !54
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_in_end = getelementptr inbounds nuw %"class.std::basic_streambuf", ptr %this1, i32 0, i32 3
  %0 = load ptr, ptr %_M_in_end, align 8, !tbaa !61
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt11char_traitsIcE11to_int_typeERKc(ptr noundef nonnull align 1 dereferenceable(1) %__c) #7 comdat align 2 {
entry:
  %__c.addr = alloca ptr, align 8
  store ptr %__c, ptr %__c.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__c.addr, align 8, !tbaa !9, !nonnull !24
  %1 = load i8, ptr %0, align 1, !tbaa !12
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #7 comdat align 2 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !9
  %call = call i64 @strlen(ptr noundef %0) #11
  ret i64 %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #3 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !31
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !31, !nonnull !24, !align !25
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !45
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !12
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !62
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !12
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #3 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !63
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !63
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #13
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !63
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #5 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !63
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !12
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !64
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !12
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !12
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !12
  %vtable = load ptr, ptr %this1, align 8, !tbaa !26
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
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !14, !15}
!17 = distinct !{!17, !14, !15}
!18 = distinct !{!18, !14, !15}
!19 = distinct !{!19, !14, !15}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTSSi", !11, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = !{}
!25 = !{i64 8}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !8, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"bool", !7, i64 0}
!30 = !{i8 0, i8 2}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 _ZTSSo", !11, i64 0}
!33 = !{!11, !11, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 _ZTSSt8ios_base", !11, i64 0}
!36 = !{!37, !23, i64 16}
!37 = !{!"_ZTSSt8ios_base", !23, i64 8, !23, i64 16, !38, i64 24, !39, i64 28, !39, i64 32, !40, i64 40, !41, i64 48, !7, i64 64, !6, i64 192, !42, i64 200, !43, i64 208}
!38 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!39 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!40 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!41 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !23, i64 8}
!42 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!43 = !{!"_ZTSSt6locale", !44, i64 0}
!44 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !11, i64 0}
!47 = !{!39, !39, i64 0}
!48 = !{!49, !50, i64 232}
!49 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !37, i64 0, !32, i64 216, !7, i64 224, !29, i64 225, !50, i64 232, !51, i64 240, !52, i64 248, !53, i64 256}
!50 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!51 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!52 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!53 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!54 = !{!50, !50, i64 0}
!55 = !{!56, !56, i64 0}
!56 = !{!"p1 int", !11, i64 0}
!57 = !{i64 4}
!58 = !{!37, !39, i64 32}
!59 = !{!60, !10, i64 16}
!60 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !43, i64 56}
!61 = !{!60, !10, i64 24}
!62 = !{!49, !51, i64 240}
!63 = !{!51, !51, i64 0}
!64 = !{!65, !7, i64 56}
!65 = !{!"_ZTSSt5ctypeIcE", !66, i64 0, !67, i64 16, !29, i64 24, !56, i64 32, !56, i64 40, !68, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!66 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!67 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!68 = !{!"p1 short", !11, i64 0}
