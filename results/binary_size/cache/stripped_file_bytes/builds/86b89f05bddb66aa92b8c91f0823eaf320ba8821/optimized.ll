; ModuleID = '/tmp/tmpm5qpnfa7.cpp'
source_filename = "/tmp/tmpm5qpnfa7.cpp"
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

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z3runi(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %z = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %z) #9
  %0 = load i32, ptr %x.addr, align 4, !tbaa !5
  %rem = srem i32 %0, 100
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4, !tbaa !5
  %rem1 = srem i32 %1, 400
  %cmp2 = icmp eq i32 %rem1, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  store i32 29, ptr %z, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 28, ptr %z, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end10

if.else4:                                         ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4, !tbaa !5
  %rem5 = srem i32 %2, 4
  %cmp6 = icmp eq i32 %rem5, 0
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else4
  store i32 29, ptr %z, align 4, !tbaa !5
  br label %if.end9

if.else8:                                         ; preds = %if.else4
  store i32 28, ptr %z, align 4, !tbaa !5
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.then7
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end
  %3 = load i32, ptr %z, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %z) #9
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [200 x [3 x i32]], align 16
  %b = alloca [12 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %num = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %aa = alloca i32, align 4
  %bb = alloca i32, align 4
  %cc = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #9
  call void @llvm.lifetime.start.p0(i64 2400, ptr %a) #9
  call void @llvm.lifetime.start.p0(i64 48, ptr %b) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %aa) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %bb) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %cc) #9
  %arrayidx = getelementptr inbounds [12 x i32], ptr %b, i64 0, i64 0
  store i32 31, ptr %arrayidx, align 16, !tbaa !5
  %arrayidx1 = getelementptr inbounds [12 x i32], ptr %b, i64 0, i64 2
  store i32 31, ptr %arrayidx1, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds [12 x i32], ptr %b, i64 0, i64 3
  store i32 30, ptr %arrayidx2, align 4, !tbaa !5
  %arrayidx3 = getelementptr inbounds [12 x i32], ptr %b, i64 0, i64 4
  store i32 31, ptr %arrayidx3, align 16, !tbaa !5
  %arrayidx4 = getelementptr inbounds [12 x i32], ptr %b, i64 0, i64 5
  store i32 30, ptr %arrayidx4, align 4, !tbaa !5
  %arrayidx5 = getelementptr inbounds [12 x i32], ptr %b, i64 0, i64 6
  store i32 31, ptr %arrayidx5, align 8, !tbaa !5
  %arrayidx6 = getelementptr inbounds [12 x i32], ptr %b, i64 0, i64 7
  store i32 31, ptr %arrayidx6, align 4, !tbaa !5
  %arrayidx7 = getelementptr inbounds [12 x i32], ptr %b, i64 0, i64 8
  store i32 30, ptr %arrayidx7, align 16, !tbaa !5
  %arrayidx8 = getelementptr inbounds [12 x i32], ptr %b, i64 0, i64 9
  store i32 31, ptr %arrayidx8, align 4, !tbaa !5
  %arrayidx9 = getelementptr inbounds [12 x i32], ptr %b, i64 0, i64 10
  store i32 30, ptr %arrayidx9, align 8, !tbaa !5
  %arrayidx10 = getelementptr inbounds [12 x i32], ptr %b, i64 0, i64 11
  store i32 31, ptr %arrayidx10, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %aa)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %bb)
  %call13 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call12, ptr noundef nonnull align 4 dereferenceable(4) %cc)
  %2 = load i32, ptr %aa, align 4, !tbaa !5
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx14 = getelementptr inbounds [200 x [3 x i32]], ptr %a, i64 0, i64 %idxprom
  %arrayidx15 = getelementptr inbounds [3 x i32], ptr %arrayidx14, i64 0, i64 0
  store i32 %2, ptr %arrayidx15, align 4, !tbaa !5
  %4 = load i32, ptr %bb, align 4, !tbaa !5
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %5 to i64
  %arrayidx17 = getelementptr inbounds [200 x [3 x i32]], ptr %a, i64 0, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [3 x i32], ptr %arrayidx17, i64 0, i64 1
  store i32 %4, ptr %arrayidx18, align 4, !tbaa !5
  %6 = load i32, ptr %cc, align 4, !tbaa !5
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %7 to i64
  %arrayidx20 = getelementptr inbounds [200 x [3 x i32]], ptr %a, i64 0, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [3 x i32], ptr %arrayidx20, i64 0, i64 2
  store i32 %6, ptr %arrayidx21, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc65, %for.end
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %9, %10
  br i1 %cmp23, label %for.body24, label %for.end67

for.body24:                                       ; preds = %for.cond22
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom25 = sext i32 %11 to i64
  %arrayidx26 = getelementptr inbounds [200 x [3 x i32]], ptr %a, i64 0, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [3 x i32], ptr %arrayidx26, i64 0, i64 0
  %12 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %call28 = call noundef i32 @_Z3runi(i32 noundef %12)
  %arrayidx29 = getelementptr inbounds [12 x i32], ptr %b, i64 0, i64 1
  store i32 %call28, ptr %arrayidx29, align 4, !tbaa !5
  store i32 0, ptr %num, align 4, !tbaa !5
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom30 = sext i32 %13 to i64
  %arrayidx31 = getelementptr inbounds [200 x [3 x i32]], ptr %a, i64 0, i64 %idxprom30
  %arrayidx32 = getelementptr inbounds [3 x i32], ptr %arrayidx31, i64 0, i64 1
  %14 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom33 = sext i32 %15 to i64
  %arrayidx34 = getelementptr inbounds [200 x [3 x i32]], ptr %a, i64 0, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [3 x i32], ptr %arrayidx34, i64 0, i64 2
  %16 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %14, %16
  br i1 %cmp36, label %if.then, label %if.else

if.then:                                          ; preds = %for.body24
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom37 = sext i32 %17 to i64
  %arrayidx38 = getelementptr inbounds [200 x [3 x i32]], ptr %a, i64 0, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [3 x i32], ptr %arrayidx38, i64 0, i64 1
  %18 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  store i32 %18, ptr %p, align 4, !tbaa !5
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom40 = sext i32 %19 to i64
  %arrayidx41 = getelementptr inbounds [200 x [3 x i32]], ptr %a, i64 0, i64 %idxprom40
  %arrayidx42 = getelementptr inbounds [3 x i32], ptr %arrayidx41, i64 0, i64 2
  %20 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  store i32 %20, ptr %q, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %for.body24
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom43 = sext i32 %21 to i64
  %arrayidx44 = getelementptr inbounds [200 x [3 x i32]], ptr %a, i64 0, i64 %idxprom43
  %arrayidx45 = getelementptr inbounds [3 x i32], ptr %arrayidx44, i64 0, i64 2
  %22 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  store i32 %22, ptr %p, align 4, !tbaa !5
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom46 = sext i32 %23 to i64
  %arrayidx47 = getelementptr inbounds [200 x [3 x i32]], ptr %a, i64 0, i64 %idxprom46
  %arrayidx48 = getelementptr inbounds [3 x i32], ptr %arrayidx47, i64 0, i64 1
  %24 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  store i32 %24, ptr %q, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc54, %if.end
  %25 = load i32, ptr %p, align 4, !tbaa !5
  %26 = load i32, ptr %q, align 4, !tbaa !5
  %cmp50 = icmp slt i32 %25, %26
  br i1 %cmp50, label %for.body51, label %for.end56

for.body51:                                       ; preds = %for.cond49
  %27 = load i32, ptr %num, align 4, !tbaa !5
  %28 = load i32, ptr %p, align 4, !tbaa !5
  %sub = sub nsw i32 %28, 1
  %idxprom52 = sext i32 %sub to i64
  %arrayidx53 = getelementptr inbounds [12 x i32], ptr %b, i64 0, i64 %idxprom52
  %29 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %add = add nsw i32 %27, %29
  store i32 %add, ptr %num, align 4, !tbaa !5
  br label %for.inc54

for.inc54:                                        ; preds = %for.body51
  %30 = load i32, ptr %p, align 4, !tbaa !5
  %inc55 = add nsw i32 %30, 1
  store i32 %inc55, ptr %p, align 4, !tbaa !5
  br label %for.cond49, !llvm.loop !12

for.end56:                                        ; preds = %for.cond49
  %31 = load i32, ptr %num, align 4, !tbaa !5
  %rem = srem i32 %31, 7
  %cmp57 = icmp eq i32 %rem, 0
  br i1 %cmp57, label %if.then58, label %if.else61

if.then58:                                        ; preds = %for.end56
  %call59 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %call60 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call59, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end64

if.else61:                                        ; preds = %for.end56
  %call62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1)
  %call63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call62, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end64

if.end64:                                         ; preds = %if.else61, %if.then58
  br label %for.inc65

for.inc65:                                        ; preds = %if.end64
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %inc66 = add nsw i32 %32, 1
  store i32 %inc66, ptr %j, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !13

for.end67:                                        ; preds = %for.cond22
  call void @llvm.lifetime.end.p0(i64 4, ptr %cc) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %bb) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %aa) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr %b) #9
  call void @llvm.lifetime.end.p0(i64 2400, ptr %a) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #9
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #3

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #4 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !14
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !17
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !17
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !14, !nonnull !19, !align !20
  %vtable = load ptr, ptr %1, align 8, !tbaa !21
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !14, !nonnull !19, !align !20
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !17
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !17
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !14, !nonnull !19, !align !20
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !14
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !23
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !23
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !14
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !14, !nonnull !19, !align !20
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !14, !nonnull !19, !align !20
  %vtable = load ptr, ptr %1, align 8, !tbaa !21
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !24
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !26
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !26
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this1, i32 noundef %call2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #0 comdat align 2 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !17
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !17
  %call = call i64 @strlen(ptr noundef %0) #9
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #6 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !26
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !26
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !26
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !26
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !24
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !28
  ret i32 %0
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #7

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !14
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !14, !nonnull !19, !align !20
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !24
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !37
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !38
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !37
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #4 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !45
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !45
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #10
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !45
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #5 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !45
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !37
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !46
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !37
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !37
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !37
  %vtable = load ptr, ptr %this1, align 8, !tbaa !21
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

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTSSo", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 omnipotent char", !16, i64 0}
!19 = !{}
!20 = !{i64 8}
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !8, i64 0}
!23 = !{!16, !16, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !16, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!28 = !{!29, !27, i64 32}
!29 = !{!"_ZTSSt8ios_base", !30, i64 8, !30, i64 16, !31, i64 24, !27, i64 28, !27, i64 32, !32, i64 40, !33, i64 48, !7, i64 64, !6, i64 192, !34, i64 200, !35, i64 208}
!30 = !{!"long", !7, i64 0}
!31 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!32 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!33 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !30, i64 8}
!34 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!35 = !{!"_ZTSSt6locale", !36, i64 0}
!36 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!37 = !{!7, !7, i64 0}
!38 = !{!39, !42, i64 240}
!39 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !29, i64 0, !15, i64 216, !7, i64 224, !40, i64 225, !41, i64 232, !42, i64 240, !43, i64 248, !44, i64 256}
!40 = !{!"bool", !7, i64 0}
!41 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!42 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!43 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!44 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!45 = !{!42, !42, i64 0}
!46 = !{!47, !7, i64 56}
!47 = !{!"_ZTSSt5ctypeIcE", !48, i64 0, !49, i64 16, !40, i64 24, !50, i64 32, !50, i64 40, !51, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!48 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!49 = !{!"p1 _ZTS15__locale_struct", !16, i64 0}
!50 = !{!"p1 int", !16, i64 0}
!51 = !{!"p1 short", !16, i64 0}
