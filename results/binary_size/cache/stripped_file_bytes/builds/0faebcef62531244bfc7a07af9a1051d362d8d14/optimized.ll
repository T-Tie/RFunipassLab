; ModuleID = '/tmp/tmpjpj9nvev.cpp'
source_filename = "/tmp/tmpjpj9nvev.cpp"
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

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZNKSt8ios_base5widthEv = comdat any

@strin = dso_local global [503 x i8] zeroinitializer, align 16
@str2 = dso_local global [10 x i8] zeroinitializer, align 1
@jilu = dso_local global [500 x i32] zeroinitializer, align 16
@used = dso_local global [500 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@stdin = external global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %pd = alloca i32, align 4
  %maxtime = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %pd) #9
  store i32 0, ptr %pd, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxtime) #9
  store i32 0, ptr %maxtime, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call i32 @getchar()
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef @strin, i64 noundef 500)
  %call3 = call i64 @strlen(ptr noundef @strin) #10
  %conv = trunc i64 %call3 to i32
  store i32 %conv, ptr %len, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc48, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %len, align 4, !tbaa !5
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %1, %2
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end50

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %3, %4
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %5, %6
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [503 x i8], ptr @strin, i64 0, i64 %idxprom
  %7 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [10 x i8], ptr @str2, i64 0, i64 %idxprom7
  store i8 %7, ptr %arrayidx8, align 1, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !10

for.end:                                          ; preds = %for.cond4
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc40, %for.end
  %10 = load i32, ptr %k, align 4, !tbaa !5
  %11 = load i32, ptr %len, align 4, !tbaa !5
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %sub10 = sub nsw i32 %11, %12
  %cmp11 = icmp sle i32 %10, %sub10
  br i1 %cmp11, label %for.body12, label %for.end42

for.body12:                                       ; preds = %for.cond9
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [500 x i32], ptr @used, i64 0, i64 %idxprom13
  %14 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %14, 1
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.body12
  br label %for.inc40

if.end:                                           ; preds = %for.body12
  store i32 1, ptr %pd, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc29, %if.end
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %16 = load i32, ptr %n, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %15, %16
  br i1 %cmp17, label %for.body18, label %for.end31

for.body18:                                       ; preds = %for.cond16
  %17 = load i32, ptr %k, align 4, !tbaa !5
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %add19 = add nsw i32 %17, %18
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds [503 x i8], ptr @strin, i64 0, i64 %idxprom20
  %19 = load i8, ptr %arrayidx21, align 1, !tbaa !9
  %conv22 = sext i8 %19 to i32
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom23 = sext i32 %20 to i64
  %arrayidx24 = getelementptr inbounds [10 x i8], ptr @str2, i64 0, i64 %idxprom23
  %21 = load i8, ptr %arrayidx24, align 1, !tbaa !9
  %conv25 = sext i8 %21 to i32
  %cmp26 = icmp ne i32 %conv22, %conv25
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.body18
  store i32 0, ptr %pd, align 4, !tbaa !5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %for.body18
  br label %for.inc29

for.inc29:                                        ; preds = %if.end28
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %inc30 = add nsw i32 %22, 1
  store i32 %inc30, ptr %j, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !13

for.end31:                                        ; preds = %for.cond16
  %23 = load i32, ptr %pd, align 4, !tbaa !5
  %cmp32 = icmp eq i32 %23, 1
  br i1 %cmp32, label %if.then33, label %if.end39

if.then33:                                        ; preds = %for.end31
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %24 to i64
  %arrayidx35 = getelementptr inbounds [500 x i32], ptr @jilu, i64 0, i64 %idxprom34
  %25 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %inc36 = add nsw i32 %25, 1
  store i32 %inc36, ptr %arrayidx35, align 4, !tbaa !5
  %26 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom37 = sext i32 %26 to i64
  %arrayidx38 = getelementptr inbounds [500 x i32], ptr @used, i64 0, i64 %idxprom37
  store i32 1, ptr %arrayidx38, align 4, !tbaa !5
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %for.end31
  br label %for.inc40

for.inc40:                                        ; preds = %if.end39, %if.then
  %27 = load i32, ptr %k, align 4, !tbaa !5
  %inc41 = add nsw i32 %27, 1
  store i32 %inc41, ptr %k, align 4, !tbaa !5
  br label %for.cond9, !llvm.loop !14

for.end42:                                        ; preds = %for.cond9
  %28 = load i32, ptr %maxtime, align 4, !tbaa !5
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %29 to i64
  %arrayidx44 = getelementptr inbounds [500 x i32], ptr @jilu, i64 0, i64 %idxprom43
  %30 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %cmp45 = icmp sgt i32 %28, %30
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end42
  %31 = load i32, ptr %maxtime, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %for.end42
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom46 = sext i32 %32 to i64
  %arrayidx47 = getelementptr inbounds [500 x i32], ptr @jilu, i64 0, i64 %idxprom46
  %33 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %31, %cond.true ], [ %33, %cond.false ]
  store i32 %cond, ptr %maxtime, align 4, !tbaa !5
  br label %for.inc48

for.inc48:                                        ; preds = %cond.end
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %inc49 = add nsw i32 %34, 1
  store i32 %inc49, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !15

for.end50:                                        ; preds = %for.cond
  %35 = load i32, ptr %maxtime, align 4, !tbaa !5
  %cmp51 = icmp eq i32 %35, 1
  br i1 %cmp51, label %if.then52, label %if.else

if.then52:                                        ; preds = %for.end50
  %call53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  br label %if.end79

if.else:                                          ; preds = %for.end50
  %36 = load i32, ptr %maxtime, align 4, !tbaa !5
  %call54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %36)
  %call55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call54, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc76, %if.else
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %38 = load i32, ptr %len, align 4, !tbaa !5
  %39 = load i32, ptr %n, align 4, !tbaa !5
  %sub57 = sub nsw i32 %38, %39
  %cmp58 = icmp sle i32 %37, %sub57
  br i1 %cmp58, label %for.body59, label %for.end78

for.body59:                                       ; preds = %for.cond56
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom60 = sext i32 %40 to i64
  %arrayidx61 = getelementptr inbounds [500 x i32], ptr @jilu, i64 0, i64 %idxprom60
  %41 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %42 = load i32, ptr %maxtime, align 4, !tbaa !5
  %cmp62 = icmp eq i32 %41, %42
  br i1 %cmp62, label %if.then63, label %if.end75

if.then63:                                        ; preds = %for.body59
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc71, %if.then63
  %43 = load i32, ptr %j, align 4, !tbaa !5
  %44 = load i32, ptr %n, align 4, !tbaa !5
  %cmp65 = icmp slt i32 %43, %44
  br i1 %cmp65, label %for.body66, label %for.end73

for.body66:                                       ; preds = %for.cond64
  %45 = load i32, ptr %i, align 4, !tbaa !5
  %46 = load i32, ptr %j, align 4, !tbaa !5
  %add67 = add nsw i32 %45, %46
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds [503 x i8], ptr @strin, i64 0, i64 %idxprom68
  %47 = load i8, ptr %arrayidx69, align 1, !tbaa !9
  %call70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %47)
  br label %for.inc71

for.inc71:                                        ; preds = %for.body66
  %48 = load i32, ptr %j, align 4, !tbaa !5
  %inc72 = add nsw i32 %48, 1
  store i32 %inc72, ptr %j, align 4, !tbaa !5
  br label %for.cond64, !llvm.loop !16

for.end73:                                        ; preds = %for.cond64
  %call74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end75

if.end75:                                         ; preds = %for.end73, %for.body59
  br label %for.inc76

for.inc76:                                        ; preds = %if.end75
  %49 = load i32, ptr %i, align 4, !tbaa !5
  %inc77 = add nsw i32 %49, 1
  store i32 %inc77, ptr %i, align 4, !tbaa !5
  br label %for.cond56, !llvm.loop !17

for.end78:                                        ; preds = %for.cond56
  br label %if.end79

if.end79:                                         ; preds = %for.end78, %if.then52
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxtime) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %pd) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally i32 @getchar() #3 {
entry:
  %0 = load ptr, ptr @stdin, align 8, !tbaa !18
  %call = call i32 @getc(ptr noundef %0)
  ret i32 %call
}

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__s, i64 noundef %__n) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !21
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !23
  store i64 %__n, ptr %__n.addr, align 8, !tbaa !25
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !23
  %1 = load i64, ptr %__n.addr, align 8, !tbaa !25
  %vtable = load ptr, ptr %this1, align 8, !tbaa !27
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0, i64 noundef %1, i8 noundef signext %call)
  ret ptr %call2
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #3 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !29
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !23
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !23
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !29, !nonnull !31, !align !32
  %vtable = load ptr, ptr %1, align 8, !tbaa !27
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !29, !nonnull !31, !align !32
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !23
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !23
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !29, !nonnull !31, !align !32
  ret ptr %5
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !29
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
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !29
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !29, !nonnull !31, !align !32
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !29, !nonnull !31, !align !32
  %vtable = load ptr, ptr %1, align 8, !tbaa !27
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %__out, i8 noundef signext %__c) #3 {
entry:
  %retval = alloca ptr, align 8
  %__out.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !29
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !9
  %0 = load ptr, ptr %__out.addr, align 8, !tbaa !29, !nonnull !31, !align !32
  %vtable = load ptr, ptr %0, align 8, !tbaa !27
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %vbase.offset
  %call = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr)
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !29, !nonnull !31, !align !32
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %__c.addr, i64 noundef 1)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !29, !nonnull !31, !align !32
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !9
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3)
  %4 = load ptr, ptr %__out.addr, align 8, !tbaa !29, !nonnull !31, !align !32
  store ptr %4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @getc(ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !34
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !9
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !36
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !9
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #3 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !51
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !51
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #11
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !51
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #4 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !51
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !9
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !52
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !9
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !9
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !9
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
declare void @_ZSt16__throw_bad_castv() #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !34
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !58
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !58
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
  %call = call i64 @strlen(ptr noundef %0) #9
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #8 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !58
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !58
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !58
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !58
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #7 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !34
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !59
  ret i32 %0
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #3 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !29
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !29, !nonnull !31, !align !32
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !60
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !62
  ret i64 %0
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTS8_IO_FILE", !20, i64 0}
!20 = !{!"any pointer", !7, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTSSi", !20, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 omnipotent char", !20, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"long", !7, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"vtable pointer", !8, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 _ZTSSo", !20, i64 0}
!31 = !{}
!32 = !{i64 8}
!33 = !{!20, !20, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !20, i64 0}
!36 = !{!37, !48, i64 240}
!37 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !38, i64 0, !30, i64 216, !7, i64 224, !46, i64 225, !47, i64 232, !48, i64 240, !49, i64 248, !50, i64 256}
!38 = !{!"_ZTSSt8ios_base", !26, i64 8, !26, i64 16, !39, i64 24, !40, i64 28, !40, i64 32, !41, i64 40, !42, i64 48, !7, i64 64, !6, i64 192, !43, i64 200, !44, i64 208}
!39 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!40 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!41 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !20, i64 0}
!42 = !{!"_ZTSNSt8ios_base6_WordsE", !20, i64 0, !26, i64 8}
!43 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !20, i64 0}
!44 = !{!"_ZTSSt6locale", !45, i64 0}
!45 = !{!"p1 _ZTSNSt6locale5_ImplE", !20, i64 0}
!46 = !{!"bool", !7, i64 0}
!47 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !20, i64 0}
!48 = !{!"p1 _ZTSSt5ctypeIcE", !20, i64 0}
!49 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !20, i64 0}
!50 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !20, i64 0}
!51 = !{!48, !48, i64 0}
!52 = !{!53, !7, i64 56}
!53 = !{!"_ZTSSt5ctypeIcE", !54, i64 0, !55, i64 16, !46, i64 24, !56, i64 32, !56, i64 40, !57, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!54 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!55 = !{!"p1 _ZTS15__locale_struct", !20, i64 0}
!56 = !{!"p1 int", !20, i64 0}
!57 = !{!"p1 short", !20, i64 0}
!58 = !{!40, !40, i64 0}
!59 = !{!38, !40, i64 32}
!60 = !{!61, !61, i64 0}
!61 = !{!"p1 _ZTSSt8ios_base", !20, i64 0}
!62 = !{!38, !26, i64 16}
