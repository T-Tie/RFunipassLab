; ModuleID = '/tmp/tmputab8_y_.cpp'
source_filename = "/tmp/tmputab8_y_.cpp"
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

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %word = alloca [600 x i8], align 16
  %gram = alloca [600 x [10 x i8]], align 16
  %temp = alloca [600 x [10 x i8]], align 16
  %cnt = alloca [600 x i32], align 16
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %len = alloca i32, align 4
  %max = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 600, ptr %word) #10
  call void @llvm.lifetime.start.p0(i64 6000, ptr %gram) #10
  call void @llvm.lifetime.start.p0(i64 6000, ptr %temp) #10
  call void @llvm.lifetime.start.p0(i64 2400, ptr %cnt) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #10
  store i32 0, ptr %count, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #10
  store i32 1, ptr %max, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %arraydecay = getelementptr inbounds [600 x i8], ptr %word, i64 0, i64 0
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef %arraydecay, i64 noundef 600)
  %arraydecay3 = getelementptr inbounds [600 x i8], ptr %word, i64 0, i64 0
  %call4 = call i64 @strlen(ptr noundef %arraydecay3) #11
  %conv = trunc i64 %call4 to i32
  store i32 %conv, ptr %len, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 600
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [600 x i32], ptr %cnt, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc27, %for.end
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %4 = load i32, ptr %len, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %4, %5
  %add = add nsw i32 %sub, 1
  %cmp6 = icmp slt i32 %3, %add
  br i1 %cmp6, label %for.body7, label %for.end29

for.body7:                                        ; preds = %for.cond5
  %6 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %6, ptr %j, align 4, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc20, %for.body7
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %add9 = add nsw i32 %8, %9
  %sub10 = sub nsw i32 %add9, 1
  %cmp11 = icmp sle i32 %7, %sub10
  br i1 %cmp11, label %for.body12, label %for.end22

for.body12:                                       ; preds = %for.cond8
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [600 x i8], ptr %word, i64 0, i64 %idxprom13
  %11 = load i8, ptr %arrayidx14, align 1, !tbaa !12
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [600 x [10 x i8]], ptr %gram, i64 0, i64 %idxprom15
  %13 = load i32, ptr %count, align 4, !tbaa !5
  %idxprom17 = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [10 x i8], ptr %arrayidx16, i64 0, i64 %idxprom17
  store i8 %11, ptr %arrayidx18, align 1, !tbaa !12
  %14 = load i32, ptr %count, align 4, !tbaa !5
  %inc19 = add nsw i32 %14, 1
  store i32 %inc19, ptr %count, align 4, !tbaa !5
  br label %for.inc20

for.inc20:                                        ; preds = %for.body12
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %inc21 = add nsw i32 %15, 1
  store i32 %inc21, ptr %j, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !13

for.end22:                                        ; preds = %for.cond8
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %16 to i64
  %arrayidx24 = getelementptr inbounds [600 x [10 x i8]], ptr %gram, i64 0, i64 %idxprom23
  %17 = load i32, ptr %count, align 4, !tbaa !5
  %idxprom25 = sext i32 %17 to i64
  %arrayidx26 = getelementptr inbounds [10 x i8], ptr %arrayidx24, i64 0, i64 %idxprom25
  store i8 0, ptr %arrayidx26, align 1, !tbaa !12
  store i32 0, ptr %count, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.end22
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %inc28 = add nsw i32 %18, 1
  store i32 %inc28, ptr %i, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !14

for.end29:                                        ; preds = %for.cond5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc42, %for.end29
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %20 = load i32, ptr %len, align 4, !tbaa !5
  %21 = load i32, ptr %n, align 4, !tbaa !5
  %sub31 = sub nsw i32 %20, %21
  %add32 = add nsw i32 %sub31, 1
  %cmp33 = icmp slt i32 %19, %add32
  br i1 %cmp33, label %for.body34, label %for.end44

for.body34:                                       ; preds = %for.cond30
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %22 to i64
  %arrayidx36 = getelementptr inbounds [600 x [10 x i8]], ptr %temp, i64 0, i64 %idxprom35
  %arraydecay37 = getelementptr inbounds [10 x i8], ptr %arrayidx36, i64 0, i64 0
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom38 = sext i32 %23 to i64
  %arrayidx39 = getelementptr inbounds [600 x [10 x i8]], ptr %gram, i64 0, i64 %idxprom38
  %arraydecay40 = getelementptr inbounds [10 x i8], ptr %arrayidx39, i64 0, i64 0
  %call41 = call ptr @strcpy(ptr noundef %arraydecay37, ptr noundef %arraydecay40) #10
  br label %for.inc42

for.inc42:                                        ; preds = %for.body34
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %inc43 = add nsw i32 %24, 1
  store i32 %inc43, ptr %i, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !15

for.end44:                                        ; preds = %for.cond30
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc69, %for.end44
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %26 = load i32, ptr %len, align 4, !tbaa !5
  %27 = load i32, ptr %n, align 4, !tbaa !5
  %sub46 = sub nsw i32 %26, %27
  %add47 = add nsw i32 %sub46, 1
  %cmp48 = icmp slt i32 %25, %add47
  br i1 %cmp48, label %for.body49, label %for.end71

for.body49:                                       ; preds = %for.cond45
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc66, %for.body49
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %29 = load i32, ptr %len, align 4, !tbaa !5
  %30 = load i32, ptr %n, align 4, !tbaa !5
  %sub51 = sub nsw i32 %29, %30
  %add52 = add nsw i32 %sub51, 1
  %cmp53 = icmp slt i32 %28, %add52
  br i1 %cmp53, label %for.body54, label %for.end68

for.body54:                                       ; preds = %for.cond50
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom55 = sext i32 %31 to i64
  %arrayidx56 = getelementptr inbounds [600 x [10 x i8]], ptr %gram, i64 0, i64 %idxprom55
  %arraydecay57 = getelementptr inbounds [10 x i8], ptr %arrayidx56, i64 0, i64 0
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom58 = sext i32 %32 to i64
  %arrayidx59 = getelementptr inbounds [600 x [10 x i8]], ptr %temp, i64 0, i64 %idxprom58
  %arraydecay60 = getelementptr inbounds [10 x i8], ptr %arrayidx59, i64 0, i64 0
  %call61 = call i32 @strcmp(ptr noundef %arraydecay57, ptr noundef %arraydecay60) #11
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then, label %if.end

if.then:                                          ; preds = %for.body54
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom63 = sext i32 %33 to i64
  %arrayidx64 = getelementptr inbounds [600 x i32], ptr %cnt, i64 0, i64 %idxprom63
  %34 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %inc65 = add nsw i32 %34, 1
  store i32 %inc65, ptr %arrayidx64, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body54
  br label %for.inc66

for.inc66:                                        ; preds = %if.end
  %35 = load i32, ptr %j, align 4, !tbaa !5
  %inc67 = add nsw i32 %35, 1
  store i32 %inc67, ptr %j, align 4, !tbaa !5
  br label %for.cond50, !llvm.loop !16

for.end68:                                        ; preds = %for.cond50
  br label %for.inc69

for.inc69:                                        ; preds = %for.end68
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %inc70 = add nsw i32 %36, 1
  store i32 %inc70, ptr %i, align 4, !tbaa !5
  br label %for.cond45, !llvm.loop !17

for.end71:                                        ; preds = %for.cond45
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc84, %for.end71
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %38 = load i32, ptr %len, align 4, !tbaa !5
  %39 = load i32, ptr %n, align 4, !tbaa !5
  %sub73 = sub nsw i32 %38, %39
  %add74 = add nsw i32 %sub73, 1
  %cmp75 = icmp slt i32 %37, %add74
  br i1 %cmp75, label %for.body76, label %for.end86

for.body76:                                       ; preds = %for.cond72
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom77 = sext i32 %40 to i64
  %arrayidx78 = getelementptr inbounds [600 x i32], ptr %cnt, i64 0, i64 %idxprom77
  %41 = load i32, ptr %arrayidx78, align 4, !tbaa !5
  %42 = load i32, ptr %max, align 4, !tbaa !5
  %cmp79 = icmp sgt i32 %41, %42
  br i1 %cmp79, label %if.then80, label %if.end83

if.then80:                                        ; preds = %for.body76
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom81 = sext i32 %43 to i64
  %arrayidx82 = getelementptr inbounds [600 x i32], ptr %cnt, i64 0, i64 %idxprom81
  %44 = load i32, ptr %arrayidx82, align 4, !tbaa !5
  store i32 %44, ptr %max, align 4, !tbaa !5
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %for.body76
  br label %for.inc84

for.inc84:                                        ; preds = %if.end83
  %45 = load i32, ptr %i, align 4, !tbaa !5
  %inc85 = add nsw i32 %45, 1
  store i32 %inc85, ptr %i, align 4, !tbaa !5
  br label %for.cond72, !llvm.loop !18

for.end86:                                        ; preds = %for.cond72
  %46 = load i32, ptr %max, align 4, !tbaa !5
  %cmp87 = icmp sgt i32 %46, 1
  br i1 %cmp87, label %if.then88, label %if.else

if.then88:                                        ; preds = %for.end86
  %47 = load i32, ptr %max, align 4, !tbaa !5
  %call89 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %47)
  %call90 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call89, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc139, %if.then88
  %48 = load i32, ptr %i, align 4, !tbaa !5
  %49 = load i32, ptr %len, align 4, !tbaa !5
  %50 = load i32, ptr %n, align 4, !tbaa !5
  %sub92 = sub nsw i32 %49, %50
  %add93 = add nsw i32 %sub92, 1
  %cmp94 = icmp slt i32 %48, %add93
  br i1 %cmp94, label %for.body95, label %for.end141

for.body95:                                       ; preds = %for.cond91
  %51 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom96 = sext i32 %51 to i64
  %arrayidx97 = getelementptr inbounds [600 x i32], ptr %cnt, i64 0, i64 %idxprom96
  %52 = load i32, ptr %arrayidx97, align 4, !tbaa !5
  %53 = load i32, ptr %max, align 4, !tbaa !5
  %cmp98 = icmp eq i32 %52, %53
  br i1 %cmp98, label %land.lhs.true, label %if.end106

land.lhs.true:                                    ; preds = %for.body95
  %54 = load i32, ptr %i, align 4, !tbaa !5
  %cmp99 = icmp eq i32 %54, 0
  br i1 %cmp99, label %if.then100, label %if.end106

if.then100:                                       ; preds = %land.lhs.true
  %55 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom101 = sext i32 %55 to i64
  %arrayidx102 = getelementptr inbounds [600 x [10 x i8]], ptr %gram, i64 0, i64 %idxprom101
  %arraydecay103 = getelementptr inbounds [10 x i8], ptr %arrayidx102, i64 0, i64 0
  %call104 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %arraydecay103)
  %call105 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call104, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end106

if.end106:                                        ; preds = %if.then100, %land.lhs.true, %for.body95
  %56 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom107 = sext i32 %56 to i64
  %arrayidx108 = getelementptr inbounds [600 x i32], ptr %cnt, i64 0, i64 %idxprom107
  %57 = load i32, ptr %arrayidx108, align 4, !tbaa !5
  %58 = load i32, ptr %max, align 4, !tbaa !5
  %cmp109 = icmp eq i32 %57, %58
  br i1 %cmp109, label %land.lhs.true110, label %if.end138

land.lhs.true110:                                 ; preds = %if.end106
  %59 = load i32, ptr %i, align 4, !tbaa !5
  %cmp111 = icmp sgt i32 %59, 0
  br i1 %cmp111, label %if.then112, label %if.end138

if.then112:                                       ; preds = %land.lhs.true110
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc135, %if.then112
  %60 = load i32, ptr %j, align 4, !tbaa !5
  %61 = load i32, ptr %i, align 4, !tbaa !5
  %cmp114 = icmp slt i32 %60, %61
  br i1 %cmp114, label %for.body115, label %for.end137

for.body115:                                      ; preds = %for.cond113
  %62 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom116 = sext i32 %62 to i64
  %arrayidx117 = getelementptr inbounds [600 x [10 x i8]], ptr %gram, i64 0, i64 %idxprom116
  %arraydecay118 = getelementptr inbounds [10 x i8], ptr %arrayidx117, i64 0, i64 0
  %63 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom119 = sext i32 %63 to i64
  %arrayidx120 = getelementptr inbounds [600 x [10 x i8]], ptr %gram, i64 0, i64 %idxprom119
  %arraydecay121 = getelementptr inbounds [10 x i8], ptr %arrayidx120, i64 0, i64 0
  %call122 = call i32 @strcmp(ptr noundef %arraydecay118, ptr noundef %arraydecay121) #11
  %cmp123 = icmp eq i32 %call122, 0
  br i1 %cmp123, label %if.then124, label %if.end125

if.then124:                                       ; preds = %for.body115
  br label %for.end137

if.end125:                                        ; preds = %for.body115
  %64 = load i32, ptr %j, align 4, !tbaa !5
  %65 = load i32, ptr %i, align 4, !tbaa !5
  %sub126 = sub nsw i32 %65, 1
  %cmp127 = icmp eq i32 %64, %sub126
  br i1 %cmp127, label %if.then128, label %if.end134

if.then128:                                       ; preds = %if.end125
  %66 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom129 = sext i32 %66 to i64
  %arrayidx130 = getelementptr inbounds [600 x [10 x i8]], ptr %gram, i64 0, i64 %idxprom129
  %arraydecay131 = getelementptr inbounds [10 x i8], ptr %arrayidx130, i64 0, i64 0
  %call132 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %arraydecay131)
  %call133 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call132, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end134

if.end134:                                        ; preds = %if.then128, %if.end125
  br label %for.inc135

for.inc135:                                       ; preds = %if.end134
  %67 = load i32, ptr %j, align 4, !tbaa !5
  %inc136 = add nsw i32 %67, 1
  store i32 %inc136, ptr %j, align 4, !tbaa !5
  br label %for.cond113, !llvm.loop !19

for.end137:                                       ; preds = %if.then124, %for.cond113
  br label %if.end138

if.end138:                                        ; preds = %for.end137, %land.lhs.true110, %if.end106
  br label %for.inc139

for.inc139:                                       ; preds = %if.end138
  %68 = load i32, ptr %i, align 4, !tbaa !5
  %inc140 = add nsw i32 %68, 1
  store i32 %inc140, ptr %i, align 4, !tbaa !5
  br label %for.cond91, !llvm.loop !20

for.end141:                                       ; preds = %for.cond91
  br label %if.end144

if.else:                                          ; preds = %for.end86
  %call142 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %call143 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call142, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end144

if.end144:                                        ; preds = %if.else, %for.end141
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #10
  call void @llvm.lifetime.end.p0(i64 2400, ptr %cnt) #10
  call void @llvm.lifetime.end.p0(i64 6000, ptr %temp) #10
  call void @llvm.lifetime.end.p0(i64 6000, ptr %gram) #10
  call void @llvm.lifetime.end.p0(i64 600, ptr %word) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__s, i64 noundef %__n) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !21
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !24
  store i64 %__n, ptr %__n.addr, align 8, !tbaa !26
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !24
  %1 = load i64, ptr %__n.addr, align 8, !tbaa !26
  %vtable = load ptr, ptr %this1, align 8, !tbaa !28
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0, i64 noundef %1, i8 noundef signext %call)
  ret ptr %call2
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #3 align 2 {
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
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #6 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !30
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !30, !nonnull !33, !align !34
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !30, !nonnull !33, !align !34
  %vtable = load ptr, ptr %1, align 8, !tbaa !28
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #6 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !30
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !24
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !24
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !30, !nonnull !33, !align !34
  %vtable = load ptr, ptr %1, align 8, !tbaa !28
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !30, !nonnull !33, !align !34
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !24
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !24
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !30, !nonnull !33, !align !34
  ret ptr %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !35
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !12
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !37
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !12
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #6 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !52
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !52
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #12
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !52
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #3 comdat align 2 {
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
  %vtable = load ptr, ptr %this1, align 8, !tbaa !28
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

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #6 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !30
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !30, !nonnull !33, !align !34
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !35
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !59
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !59
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this1, i32 noundef %call2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #8 comdat align 2 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !24
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !24
  %call = call i64 @strlen(ptr noundef %0) #10
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #9 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !59
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !59
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !59
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !59
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #8 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !35
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !60
  ret i32 %0
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
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
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTSSi", !23, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 omnipotent char", !23, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"long", !7, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"vtable pointer", !8, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTSSo", !23, i64 0}
!32 = !{!23, !23, i64 0}
!33 = !{}
!34 = !{i64 8}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !23, i64 0}
!37 = !{!38, !49, i64 240}
!38 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !39, i64 0, !31, i64 216, !7, i64 224, !47, i64 225, !48, i64 232, !49, i64 240, !50, i64 248, !51, i64 256}
!39 = !{!"_ZTSSt8ios_base", !27, i64 8, !27, i64 16, !40, i64 24, !41, i64 28, !41, i64 32, !42, i64 40, !43, i64 48, !7, i64 64, !6, i64 192, !44, i64 200, !45, i64 208}
!40 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!41 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!42 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !23, i64 0}
!43 = !{!"_ZTSNSt8ios_base6_WordsE", !23, i64 0, !27, i64 8}
!44 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !23, i64 0}
!45 = !{!"_ZTSSt6locale", !46, i64 0}
!46 = !{!"p1 _ZTSNSt6locale5_ImplE", !23, i64 0}
!47 = !{!"bool", !7, i64 0}
!48 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !23, i64 0}
!49 = !{!"p1 _ZTSSt5ctypeIcE", !23, i64 0}
!50 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !23, i64 0}
!51 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !23, i64 0}
!52 = !{!49, !49, i64 0}
!53 = !{!54, !7, i64 56}
!54 = !{!"_ZTSSt5ctypeIcE", !55, i64 0, !56, i64 16, !47, i64 24, !57, i64 32, !57, i64 40, !58, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!55 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!56 = !{!"p1 _ZTS15__locale_struct", !23, i64 0}
!57 = !{!"p1 int", !23, i64 0}
!58 = !{!"p1 short", !23, i64 0}
!59 = !{!41, !41, i64 0}
!60 = !{!39, !41, i64 32}
