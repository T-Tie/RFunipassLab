; ModuleID = '/tmp/tmpqxzw73_b.cpp'
source_filename = "/tmp/tmpqxzw73_b.cpp"
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

$_ZSt3maxIiERKT_S2_S2_ = comdat any

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

$_ZNKSt8ios_base5widthEv = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [501 x i8], align 16
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %sum = alloca i32, align 4
  %s = alloca [501 x i32], align 16
  %f = alloca [501 x [5 x i8]], align 16
  %q = alloca ptr, align 8
  %g = alloca [501 x i32], align 16
  %flag = alloca [501 x i32], align 16
  %t = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 501, ptr %a) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10
  %arraydecay = getelementptr inbounds [501 x i8], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  store i32 0, ptr %i, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #10
  store i32 0, ptr %sum, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 2004, ptr %s) #10
  call void @llvm.memset.p0.i64(ptr align 16 %s, i8 0, i64 2004, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  br label %while.body

while.body:                                       ; preds = %while.cond
  %call2 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %conv = trunc i32 %call2 to i8
  %0 = load ptr, ptr %p, align 8, !tbaa !5
  %1 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.ext
  store i8 %conv, ptr %add.ptr, align 1, !tbaa !12
  %2 = load ptr, ptr %p, align 8, !tbaa !5
  %3 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext3 = sext i32 %3 to i64
  %add.ptr4 = getelementptr inbounds i8, ptr %2, i64 %idx.ext3
  %4 = load i8, ptr %add.ptr4, align 1, !tbaa !12
  %conv5 = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv5, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %5 = load i32, ptr %i, align 4, !tbaa !10
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4, !tbaa !10
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %if.then
  %call6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %6 = load i32, ptr %i, align 4, !tbaa !10
  store i32 %6, ptr %sum, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 2505, ptr %f) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #10
  %arraydecay7 = getelementptr inbounds [501 x [5 x i8]], ptr %f, i64 0, i64 0
  store ptr %arraydecay7, ptr %q, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 2004, ptr %g) #10
  call void @llvm.memset.p0.i64(ptr align 16 %g, i8 0, i64 2004, i1 false)
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %while.end
  %7 = load i32, ptr %i, align 4, !tbaa !10
  %8 = load i32, ptr %sum, align 4, !tbaa !10
  %9 = load i32, ptr %n, align 4, !tbaa !10
  %sub = sub nsw i32 %8, %9
  %cmp8 = icmp sle i32 %7, %sub
  br i1 %cmp8, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  %10 = load i32, ptr %i, align 4, !tbaa !10
  store i32 %10, ptr %j, align 4, !tbaa !10
  store i32 0, ptr %k, align 4, !tbaa !10
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %11 = load i32, ptr %j, align 4, !tbaa !10
  %12 = load i32, ptr %n, align 4, !tbaa !10
  %sub10 = sub nsw i32 %12, 1
  %13 = load i32, ptr %i, align 4, !tbaa !10
  %add = add nsw i32 %sub10, %13
  %cmp11 = icmp sle i32 %11, %add
  %14 = load i32, ptr %k, align 4, !tbaa !10
  %15 = load i32, ptr %n, align 4, !tbaa !10
  %sub12 = sub nsw i32 %15, 1
  %cmp13 = icmp sle i32 %14, %sub12
  br i1 %cmp13, label %for.body14, label %for.end

for.body14:                                       ; preds = %for.cond9
  %16 = load ptr, ptr %p, align 8, !tbaa !5
  %17 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext15 = sext i32 %17 to i64
  %add.ptr16 = getelementptr inbounds i8, ptr %16, i64 %idx.ext15
  %18 = load i8, ptr %add.ptr16, align 1, !tbaa !12
  %19 = load ptr, ptr %q, align 8, !tbaa !5
  %20 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext17 = sext i32 %20 to i64
  %add.ptr18 = getelementptr inbounds [5 x i8], ptr %19, i64 %idx.ext17
  %arraydecay19 = getelementptr inbounds [5 x i8], ptr %add.ptr18, i64 0, i64 0
  %21 = load i32, ptr %k, align 4, !tbaa !10
  %idx.ext20 = sext i32 %21 to i64
  %add.ptr21 = getelementptr inbounds i8, ptr %arraydecay19, i64 %idx.ext20
  store i8 %18, ptr %add.ptr21, align 1, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body14
  %22 = load i32, ptr %j, align 4, !tbaa !10
  %inc22 = add nsw i32 %22, 1
  store i32 %inc22, ptr %j, align 4, !tbaa !10
  %23 = load i32, ptr %k, align 4, !tbaa !10
  %inc23 = add nsw i32 %23, 1
  store i32 %inc23, ptr %k, align 4, !tbaa !10
  br label %for.cond9, !llvm.loop !16

for.end:                                          ; preds = %for.cond9
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %24 = load i32, ptr %i, align 4, !tbaa !10
  %inc25 = add nsw i32 %24, 1
  store i32 %inc25, ptr %i, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !17

for.end26:                                        ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 2004, ptr %flag) #10
  call void @llvm.memset.p0.i64(ptr align 16 %flag, i8 0, i64 2004, i1 false)
  store i32 0, ptr %k, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #10
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc72, %for.end26
  %25 = load i32, ptr %i, align 4, !tbaa !10
  %26 = load i32, ptr %sum, align 4, !tbaa !10
  %27 = load i32, ptr %n, align 4, !tbaa !10
  %sub28 = sub nsw i32 %26, %27
  %cmp29 = icmp sle i32 %25, %sub28
  br i1 %cmp29, label %for.body30, label %for.end74

for.body30:                                       ; preds = %for.cond27
  %28 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom = sext i32 %28 to i64
  %arrayidx = getelementptr inbounds [501 x i32], ptr %flag, i64 0, i64 %idxprom
  %29 = load i32, ptr %arrayidx, align 4, !tbaa !10
  %cmp31 = icmp eq i32 %29, 1
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %for.body30
  %30 = load i32, ptr %k, align 4, !tbaa !10
  %dec = add nsw i32 %30, -1
  store i32 %dec, ptr %k, align 4, !tbaa !10
  br label %for.inc72

if.end33:                                         ; preds = %for.body30
  %31 = load i32, ptr %i, align 4, !tbaa !10
  store i32 %31, ptr %j, align 4, !tbaa !10
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc68, %if.end33
  %32 = load i32, ptr %j, align 4, !tbaa !10
  %33 = load i32, ptr %sum, align 4, !tbaa !10
  %34 = load i32, ptr %n, align 4, !tbaa !10
  %sub35 = sub nsw i32 %33, %34
  %cmp36 = icmp sle i32 %32, %sub35
  br i1 %cmp36, label %for.body37, label %for.end70

for.body37:                                       ; preds = %for.cond34
  store i32 0, ptr %t, align 4, !tbaa !10
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc57, %for.body37
  %35 = load i32, ptr %t, align 4, !tbaa !10
  %36 = load i32, ptr %n, align 4, !tbaa !10
  %sub39 = sub nsw i32 %36, 1
  %cmp40 = icmp sle i32 %35, %sub39
  br i1 %cmp40, label %for.body41, label %for.end59

for.body41:                                       ; preds = %for.cond38
  %37 = load ptr, ptr %q, align 8, !tbaa !5
  %38 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext42 = sext i32 %38 to i64
  %add.ptr43 = getelementptr inbounds [5 x i8], ptr %37, i64 %idx.ext42
  %arraydecay44 = getelementptr inbounds [5 x i8], ptr %add.ptr43, i64 0, i64 0
  %39 = load i32, ptr %t, align 4, !tbaa !10
  %idx.ext45 = sext i32 %39 to i64
  %add.ptr46 = getelementptr inbounds i8, ptr %arraydecay44, i64 %idx.ext45
  %40 = load i8, ptr %add.ptr46, align 1, !tbaa !12
  %conv47 = sext i8 %40 to i32
  %41 = load ptr, ptr %q, align 8, !tbaa !5
  %42 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext48 = sext i32 %42 to i64
  %add.ptr49 = getelementptr inbounds [5 x i8], ptr %41, i64 %idx.ext48
  %arraydecay50 = getelementptr inbounds [5 x i8], ptr %add.ptr49, i64 0, i64 0
  %43 = load i32, ptr %t, align 4, !tbaa !10
  %idx.ext51 = sext i32 %43 to i64
  %add.ptr52 = getelementptr inbounds i8, ptr %arraydecay50, i64 %idx.ext51
  %44 = load i8, ptr %add.ptr52, align 1, !tbaa !12
  %conv53 = sext i8 %44 to i32
  %cmp54 = icmp ne i32 %conv47, %conv53
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %for.body41
  br label %for.end59

if.end56:                                         ; preds = %for.body41
  br label %for.inc57

for.inc57:                                        ; preds = %if.end56
  %45 = load i32, ptr %t, align 4, !tbaa !10
  %inc58 = add nsw i32 %45, 1
  store i32 %inc58, ptr %t, align 4, !tbaa !10
  br label %for.cond38, !llvm.loop !18

for.end59:                                        ; preds = %if.then55, %for.cond38
  %46 = load i32, ptr %t, align 4, !tbaa !10
  %47 = load i32, ptr %n, align 4, !tbaa !10
  %cmp60 = icmp eq i32 %46, %47
  br i1 %cmp60, label %if.then61, label %if.end67

if.then61:                                        ; preds = %for.end59
  %48 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom62 = sext i32 %48 to i64
  %arrayidx63 = getelementptr inbounds [501 x i32], ptr %g, i64 0, i64 %idxprom62
  %49 = load i32, ptr %arrayidx63, align 4, !tbaa !10
  %inc64 = add nsw i32 %49, 1
  store i32 %inc64, ptr %arrayidx63, align 4, !tbaa !10
  %50 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom65 = sext i32 %50 to i64
  %arrayidx66 = getelementptr inbounds [501 x i32], ptr %flag, i64 0, i64 %idxprom65
  store i32 1, ptr %arrayidx66, align 4, !tbaa !10
  br label %if.end67

if.end67:                                         ; preds = %if.then61, %for.end59
  br label %for.inc68

for.inc68:                                        ; preds = %if.end67
  %51 = load i32, ptr %j, align 4, !tbaa !10
  %inc69 = add nsw i32 %51, 1
  store i32 %inc69, ptr %j, align 4, !tbaa !10
  br label %for.cond34, !llvm.loop !19

for.end70:                                        ; preds = %for.cond34
  %52 = load i32, ptr %k, align 4, !tbaa !10
  %inc71 = add nsw i32 %52, 1
  store i32 %inc71, ptr %k, align 4, !tbaa !10
  br label %for.inc72

for.inc72:                                        ; preds = %for.end70, %if.then32
  %53 = load i32, ptr %i, align 4, !tbaa !10
  %inc73 = add nsw i32 %53, 1
  store i32 %inc73, ptr %i, align 4, !tbaa !10
  br label %for.cond27, !llvm.loop !20

for.end74:                                        ; preds = %for.cond27
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #10
  store i32 0, ptr %l, align 4, !tbaa !10
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc82, %for.end74
  %54 = load i32, ptr %i, align 4, !tbaa !10
  %55 = load i32, ptr %sum, align 4, !tbaa !10
  %56 = load i32, ptr %n, align 4, !tbaa !10
  %sub76 = sub nsw i32 %55, %56
  %cmp77 = icmp sle i32 %54, %sub76
  br i1 %cmp77, label %for.body78, label %for.end84

for.body78:                                       ; preds = %for.cond75
  %57 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom79 = sext i32 %57 to i64
  %arrayidx80 = getelementptr inbounds [501 x i32], ptr %g, i64 0, i64 %idxprom79
  %call81 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %arrayidx80, ptr noundef nonnull align 4 dereferenceable(4) %l)
  %58 = load i32, ptr %call81, align 4, !tbaa !10
  store i32 %58, ptr %l, align 4, !tbaa !10
  br label %for.inc82

for.inc82:                                        ; preds = %for.body78
  %59 = load i32, ptr %i, align 4, !tbaa !10
  %inc83 = add nsw i32 %59, 1
  store i32 %inc83, ptr %i, align 4, !tbaa !10
  br label %for.cond75, !llvm.loop !21

for.end84:                                        ; preds = %for.cond75
  %60 = load i32, ptr %l, align 4, !tbaa !10
  %cmp85 = icmp sge i32 %60, 2
  br i1 %cmp85, label %if.then86, label %if.else

if.then86:                                        ; preds = %for.end84
  %61 = load i32, ptr %l, align 4, !tbaa !10
  %call87 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %61)
  %call88 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call87, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc112, %if.then86
  %62 = load i32, ptr %i, align 4, !tbaa !10
  %63 = load i32, ptr %sum, align 4, !tbaa !10
  %64 = load i32, ptr %n, align 4, !tbaa !10
  %sub90 = sub nsw i32 %63, %64
  %cmp91 = icmp sle i32 %62, %sub90
  br i1 %cmp91, label %for.body92, label %for.end114

for.body92:                                       ; preds = %for.cond89
  %65 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom93 = sext i32 %65 to i64
  %arrayidx94 = getelementptr inbounds [501 x i32], ptr %g, i64 0, i64 %idxprom93
  %66 = load i32, ptr %arrayidx94, align 4, !tbaa !10
  %67 = load i32, ptr %l, align 4, !tbaa !10
  %cmp95 = icmp eq i32 %66, %67
  br i1 %cmp95, label %if.then96, label %if.end111

if.then96:                                        ; preds = %for.body92
  store i32 0, ptr %t, align 4, !tbaa !10
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc107, %if.then96
  %68 = load i32, ptr %t, align 4, !tbaa !10
  %69 = load i32, ptr %n, align 4, !tbaa !10
  %sub98 = sub nsw i32 %69, 1
  %cmp99 = icmp sle i32 %68, %sub98
  br i1 %cmp99, label %for.body100, label %for.end109

for.body100:                                      ; preds = %for.cond97
  %70 = load ptr, ptr %q, align 8, !tbaa !5
  %71 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext101 = sext i32 %71 to i64
  %add.ptr102 = getelementptr inbounds [5 x i8], ptr %70, i64 %idx.ext101
  %arraydecay103 = getelementptr inbounds [5 x i8], ptr %add.ptr102, i64 0, i64 0
  %72 = load i32, ptr %t, align 4, !tbaa !10
  %idx.ext104 = sext i32 %72 to i64
  %add.ptr105 = getelementptr inbounds i8, ptr %arraydecay103, i64 %idx.ext104
  %73 = load i8, ptr %add.ptr105, align 1, !tbaa !12
  %call106 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %73)
  br label %for.inc107

for.inc107:                                       ; preds = %for.body100
  %74 = load i32, ptr %t, align 4, !tbaa !10
  %inc108 = add nsw i32 %74, 1
  store i32 %inc108, ptr %t, align 4, !tbaa !10
  br label %for.cond97, !llvm.loop !22

for.end109:                                       ; preds = %for.cond97
  %call110 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end111

if.end111:                                        ; preds = %for.end109, %for.body92
  br label %for.inc112

for.inc112:                                       ; preds = %if.end111
  %75 = load i32, ptr %i, align 4, !tbaa !10
  %inc113 = add nsw i32 %75, 1
  store i32 %inc113, ptr %i, align 4, !tbaa !10
  br label %for.cond89, !llvm.loop !23

for.end114:                                       ; preds = %for.cond89
  br label %if.end117

if.else:                                          ; preds = %for.end84
  %call115 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %call116 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call115, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end117

if.end117:                                        ; preds = %if.else, %for.end114
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #10
  call void @llvm.lifetime.end.p0(i64 2004, ptr %flag) #10
  call void @llvm.lifetime.end.p0(i64 2004, ptr %g) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #10
  call void @llvm.lifetime.end.p0(i64 2505, ptr %f) #10
  call void @llvm.lifetime.end.p0(i64 2004, ptr %s) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.end.p0(i64 501, ptr %a) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #3

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !24
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !26
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !26
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !24
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !24, !nonnull !27, !align !28
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !24, !nonnull !27, !align !28
  %vtable = load ptr, ptr %1, align 8, !tbaa !29
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %__a, ptr noundef nonnull align 4 dereferenceable(4) %__b) #6 comdat {
entry:
  %retval = alloca ptr, align 8
  %__a.addr = alloca ptr, align 8
  %__b.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8, !tbaa !31
  store ptr %__b, ptr %__b.addr, align 8, !tbaa !31
  %0 = load ptr, ptr %__a.addr, align 8, !tbaa !31, !nonnull !27, !align !33
  %1 = load i32, ptr %0, align 4, !tbaa !10
  %2 = load ptr, ptr %__b.addr, align 8, !tbaa !31, !nonnull !27, !align !33
  %3 = load i32, ptr %2, align 4, !tbaa !10
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %__b.addr, align 8, !tbaa !31, !nonnull !27, !align !33
  store ptr %4, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %__a.addr, align 8, !tbaa !31, !nonnull !27, !align !33
  store ptr %5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #3

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %__out, i8 noundef signext %__c) #5 {
entry:
  %retval = alloca ptr, align 8
  %__out.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !24
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !12
  %0 = load ptr, ptr %__out.addr, align 8, !tbaa !24, !nonnull !27, !align !28
  %vtable = load ptr, ptr %0, align 8, !tbaa !29
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %vbase.offset
  %call = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr)
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !24, !nonnull !27, !align !28
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %__c.addr, i64 noundef 1)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !24, !nonnull !27, !align !28
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !12
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3)
  %4 = load ptr, ptr %__out.addr, align 8, !tbaa !24, !nonnull !27, !align !28
  store ptr %4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #5 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !24
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !24, !nonnull !27, !align !28
  %vtable = load ptr, ptr %1, align 8, !tbaa !29
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !24, !nonnull !27, !align !28
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !5
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !5
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !24, !nonnull !27, !align !28
  ret ptr %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !24
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !24, !nonnull !27, !align !28
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !34
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !12
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !36
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !12
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #5 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !52
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !52
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #11
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !52
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #4 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !52
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !12
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !53
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
  %vtable = load ptr, ptr %this1, align 8, !tbaa !29
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
declare void @_ZSt16__throw_bad_castv() #7

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) #8 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !58
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !60
  ret i64 %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #3

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !34
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !61
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !61
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this1, i32 noundef %call2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #8 comdat align 2 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !5
  %call = call i64 @strlen(ptr noundef %0) #10
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #6 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !61
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !61
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !61
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !61
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #8 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !34
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !62
  ret i32 %0
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #9

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"p1 omnipotent char", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!8, !8, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !14, !15}
!17 = distinct !{!17, !14, !15}
!18 = distinct !{!18, !14, !15}
!19 = distinct !{!19, !14, !15}
!20 = distinct !{!20, !14, !15}
!21 = distinct !{!21, !14, !15}
!22 = distinct !{!22, !14, !15}
!23 = distinct !{!23, !14, !15}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSSo", !7, i64 0}
!26 = !{!7, !7, i64 0}
!27 = !{}
!28 = !{i64 8}
!29 = !{!30, !30, i64 0}
!30 = !{!"vtable pointer", !9, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 int", !7, i64 0}
!33 = !{i64 4}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !7, i64 0}
!36 = !{!37, !49, i64 240}
!37 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !38, i64 0, !25, i64 216, !8, i64 224, !47, i64 225, !48, i64 232, !49, i64 240, !50, i64 248, !51, i64 256}
!38 = !{!"_ZTSSt8ios_base", !39, i64 8, !39, i64 16, !40, i64 24, !41, i64 28, !41, i64 32, !42, i64 40, !43, i64 48, !8, i64 64, !11, i64 192, !44, i64 200, !45, i64 208}
!39 = !{!"long", !8, i64 0}
!40 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!41 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!42 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !7, i64 0}
!43 = !{!"_ZTSNSt8ios_base6_WordsE", !7, i64 0, !39, i64 8}
!44 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !7, i64 0}
!45 = !{!"_ZTSSt6locale", !46, i64 0}
!46 = !{!"p1 _ZTSNSt6locale5_ImplE", !7, i64 0}
!47 = !{!"bool", !8, i64 0}
!48 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !7, i64 0}
!49 = !{!"p1 _ZTSSt5ctypeIcE", !7, i64 0}
!50 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !7, i64 0}
!51 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !7, i64 0}
!52 = !{!49, !49, i64 0}
!53 = !{!54, !8, i64 56}
!54 = !{!"_ZTSSt5ctypeIcE", !55, i64 0, !56, i64 16, !47, i64 24, !32, i64 32, !32, i64 40, !57, i64 48, !8, i64 56, !8, i64 57, !8, i64 313, !8, i64 569}
!55 = !{!"_ZTSNSt6locale5facetE", !11, i64 8}
!56 = !{!"p1 _ZTS15__locale_struct", !7, i64 0}
!57 = !{!"p1 short", !7, i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"p1 _ZTSSt8ios_base", !7, i64 0}
!60 = !{!38, !39, i64 16}
!61 = !{!41, !41, i64 0}
!62 = !{!38, !41, i64 32}
