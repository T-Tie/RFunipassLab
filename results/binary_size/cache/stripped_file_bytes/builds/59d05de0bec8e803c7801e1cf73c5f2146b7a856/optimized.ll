; ModuleID = '/tmp/tmphmeehz_2.cpp'
source_filename = "/tmp/tmphmeehz_2.cpp"
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

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n1 = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %sum = alloca i32, align 4
  %min = alloca i32, align 4
  %min54 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %n1) #7
  %0 = load i32, ptr %n, align 4, !tbaa !5
  store i32 %0, ptr %n1, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %for.end138, %entry
  %1 = load i32, ptr %n1, align 4, !tbaa !5
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = zext i32 %2 to i64
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %5 = zext i32 %4 to i64
  %6 = call ptr @llvm.stacksave.p0()
  store ptr %6, ptr %saved_stack, align 8
  %7 = mul nuw i64 %3, %5
  %vla = alloca i32, i64 %7, align 16
  store i64 %3, ptr %__vla_expr0, align 8
  store i64 %5, ptr %__vla_expr1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #7
  store i32 0, ptr %sum, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %while.body
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %10, %11
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %13 = mul nsw i64 %idxprom, %5
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %13
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %14 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %arrayidx, i64 %idxprom4
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc8 = add nsw i32 %16, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  %17 = load i32, ptr %n, align 4, !tbaa !5
  store i32 %17, ptr %i, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc137, %for.end9
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %cmp11 = icmp sgt i32 %18, 1
  br i1 %cmp11, label %for.body12, label %for.end138

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc48, %for.body12
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %19, %20
  br i1 %cmp14, label %for.body15, label %for.end50

for.body15:                                       ; preds = %for.cond13
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #7
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom16 = sext i32 %21 to i64
  %22 = mul nsw i64 %idxprom16, %5
  %arrayidx17 = getelementptr inbounds i32, ptr %vla, i64 %22
  %arrayidx18 = getelementptr inbounds i32, ptr %arrayidx17, i64 0
  %23 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  store i32 %23, ptr %min, align 4, !tbaa !5
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc31, %for.body15
  %24 = load i32, ptr %k, align 4, !tbaa !5
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %24, %25
  br i1 %cmp20, label %for.body21, label %for.end33

for.body21:                                       ; preds = %for.cond19
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom22 = sext i32 %26 to i64
  %27 = mul nsw i64 %idxprom22, %5
  %arrayidx23 = getelementptr inbounds i32, ptr %vla, i64 %27
  %28 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom24 = sext i32 %28 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %arrayidx23, i64 %idxprom24
  %29 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %30 = load i32, ptr %min, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %29, %30
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %for.body21
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom27 = sext i32 %31 to i64
  %32 = mul nsw i64 %idxprom27, %5
  %arrayidx28 = getelementptr inbounds i32, ptr %vla, i64 %32
  %33 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom29 = sext i32 %33 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %arrayidx28, i64 %idxprom29
  %34 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  store i32 %34, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body21
  br label %for.inc31

for.inc31:                                        ; preds = %if.end
  %35 = load i32, ptr %k, align 4, !tbaa !5
  %inc32 = add nsw i32 %35, 1
  store i32 %inc32, ptr %k, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !13

for.end33:                                        ; preds = %for.cond19
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc45, %for.end33
  %36 = load i32, ptr %k, align 4, !tbaa !5
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %36, %37
  br i1 %cmp35, label %for.body36, label %for.end47

for.body36:                                       ; preds = %for.cond34
  %38 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom37 = sext i32 %38 to i64
  %39 = mul nsw i64 %idxprom37, %5
  %arrayidx38 = getelementptr inbounds i32, ptr %vla, i64 %39
  %40 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom39 = sext i32 %40 to i64
  %arrayidx40 = getelementptr inbounds i32, ptr %arrayidx38, i64 %idxprom39
  %41 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %42 = load i32, ptr %min, align 4, !tbaa !5
  %sub = sub nsw i32 %41, %42
  %43 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom41 = sext i32 %43 to i64
  %44 = mul nsw i64 %idxprom41, %5
  %arrayidx42 = getelementptr inbounds i32, ptr %vla, i64 %44
  %45 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom43 = sext i32 %45 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %arrayidx42, i64 %idxprom43
  store i32 %sub, ptr %arrayidx44, align 4, !tbaa !5
  br label %for.inc45

for.inc45:                                        ; preds = %for.body36
  %46 = load i32, ptr %k, align 4, !tbaa !5
  %inc46 = add nsw i32 %46, 1
  store i32 %inc46, ptr %k, align 4, !tbaa !5
  br label %for.cond34, !llvm.loop !14

for.end47:                                        ; preds = %for.cond34
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #7
  br label %for.inc48

for.inc48:                                        ; preds = %for.end47
  %47 = load i32, ptr %j, align 4, !tbaa !5
  %inc49 = add nsw i32 %47, 1
  store i32 %inc49, ptr %j, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !15

for.end50:                                        ; preds = %for.cond13
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc90, %for.end50
  %48 = load i32, ptr %j, align 4, !tbaa !5
  %49 = load i32, ptr %i, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %48, %49
  br i1 %cmp52, label %for.body53, label %for.end92

for.body53:                                       ; preds = %for.cond51
  call void @llvm.lifetime.start.p0(i64 4, ptr %min54) #7
  %50 = mul nsw i64 0, %5
  %arrayidx55 = getelementptr inbounds i32, ptr %vla, i64 %50
  %51 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom56 = sext i32 %51 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %arrayidx55, i64 %idxprom56
  %52 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  store i32 %52, ptr %min54, align 4, !tbaa !5
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc72, %for.body53
  %53 = load i32, ptr %k, align 4, !tbaa !5
  %54 = load i32, ptr %i, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %53, %54
  br i1 %cmp59, label %for.body60, label %for.end74

for.body60:                                       ; preds = %for.cond58
  %55 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom61 = sext i32 %55 to i64
  %56 = mul nsw i64 %idxprom61, %5
  %arrayidx62 = getelementptr inbounds i32, ptr %vla, i64 %56
  %57 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom63 = sext i32 %57 to i64
  %arrayidx64 = getelementptr inbounds i32, ptr %arrayidx62, i64 %idxprom63
  %58 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %59 = load i32, ptr %min54, align 4, !tbaa !5
  %cmp65 = icmp slt i32 %58, %59
  br i1 %cmp65, label %if.then66, label %if.end71

if.then66:                                        ; preds = %for.body60
  %60 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom67 = sext i32 %60 to i64
  %61 = mul nsw i64 %idxprom67, %5
  %arrayidx68 = getelementptr inbounds i32, ptr %vla, i64 %61
  %62 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom69 = sext i32 %62 to i64
  %arrayidx70 = getelementptr inbounds i32, ptr %arrayidx68, i64 %idxprom69
  %63 = load i32, ptr %arrayidx70, align 4, !tbaa !5
  store i32 %63, ptr %min54, align 4, !tbaa !5
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %for.body60
  br label %for.inc72

for.inc72:                                        ; preds = %if.end71
  %64 = load i32, ptr %k, align 4, !tbaa !5
  %inc73 = add nsw i32 %64, 1
  store i32 %inc73, ptr %k, align 4, !tbaa !5
  br label %for.cond58, !llvm.loop !16

for.end74:                                        ; preds = %for.cond58
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc87, %for.end74
  %65 = load i32, ptr %k, align 4, !tbaa !5
  %66 = load i32, ptr %i, align 4, !tbaa !5
  %cmp76 = icmp slt i32 %65, %66
  br i1 %cmp76, label %for.body77, label %for.end89

for.body77:                                       ; preds = %for.cond75
  %67 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom78 = sext i32 %67 to i64
  %68 = mul nsw i64 %idxprom78, %5
  %arrayidx79 = getelementptr inbounds i32, ptr %vla, i64 %68
  %69 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom80 = sext i32 %69 to i64
  %arrayidx81 = getelementptr inbounds i32, ptr %arrayidx79, i64 %idxprom80
  %70 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %71 = load i32, ptr %min54, align 4, !tbaa !5
  %sub82 = sub nsw i32 %70, %71
  %72 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom83 = sext i32 %72 to i64
  %73 = mul nsw i64 %idxprom83, %5
  %arrayidx84 = getelementptr inbounds i32, ptr %vla, i64 %73
  %74 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom85 = sext i32 %74 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %arrayidx84, i64 %idxprom85
  store i32 %sub82, ptr %arrayidx86, align 4, !tbaa !5
  br label %for.inc87

for.inc87:                                        ; preds = %for.body77
  %75 = load i32, ptr %k, align 4, !tbaa !5
  %inc88 = add nsw i32 %75, 1
  store i32 %inc88, ptr %k, align 4, !tbaa !5
  br label %for.cond75, !llvm.loop !17

for.end89:                                        ; preds = %for.cond75
  call void @llvm.lifetime.end.p0(i64 4, ptr %min54) #7
  br label %for.inc90

for.inc90:                                        ; preds = %for.end89
  %76 = load i32, ptr %j, align 4, !tbaa !5
  %inc91 = add nsw i32 %76, 1
  store i32 %inc91, ptr %j, align 4, !tbaa !5
  br label %for.cond51, !llvm.loop !18

for.end92:                                        ; preds = %for.cond51
  %77 = load i32, ptr %sum, align 4, !tbaa !5
  %78 = mul nsw i64 1, %5
  %arrayidx93 = getelementptr inbounds i32, ptr %vla, i64 %78
  %arrayidx94 = getelementptr inbounds i32, ptr %arrayidx93, i64 1
  %79 = load i32, ptr %arrayidx94, align 4, !tbaa !5
  %add = add nsw i32 %77, %79
  store i32 %add, ptr %sum, align 4, !tbaa !5
  store i32 2, ptr %j, align 4, !tbaa !5
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc113, %for.end92
  %80 = load i32, ptr %j, align 4, !tbaa !5
  %81 = load i32, ptr %i, align 4, !tbaa !5
  %cmp96 = icmp slt i32 %80, %81
  br i1 %cmp96, label %for.body97, label %for.end115

for.body97:                                       ; preds = %for.cond95
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond98

for.cond98:                                       ; preds = %for.inc110, %for.body97
  %82 = load i32, ptr %k, align 4, !tbaa !5
  %83 = load i32, ptr %i, align 4, !tbaa !5
  %cmp99 = icmp slt i32 %82, %83
  br i1 %cmp99, label %for.body100, label %for.end112

for.body100:                                      ; preds = %for.cond98
  %84 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom101 = sext i32 %84 to i64
  %85 = mul nsw i64 %idxprom101, %5
  %arrayidx102 = getelementptr inbounds i32, ptr %vla, i64 %85
  %86 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom103 = sext i32 %86 to i64
  %arrayidx104 = getelementptr inbounds i32, ptr %arrayidx102, i64 %idxprom103
  %87 = load i32, ptr %arrayidx104, align 4, !tbaa !5
  %88 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom105 = sext i32 %88 to i64
  %89 = mul nsw i64 %idxprom105, %5
  %arrayidx106 = getelementptr inbounds i32, ptr %vla, i64 %89
  %90 = load i32, ptr %j, align 4, !tbaa !5
  %sub107 = sub nsw i32 %90, 1
  %idxprom108 = sext i32 %sub107 to i64
  %arrayidx109 = getelementptr inbounds i32, ptr %arrayidx106, i64 %idxprom108
  store i32 %87, ptr %arrayidx109, align 4, !tbaa !5
  br label %for.inc110

for.inc110:                                       ; preds = %for.body100
  %91 = load i32, ptr %k, align 4, !tbaa !5
  %inc111 = add nsw i32 %91, 1
  store i32 %inc111, ptr %k, align 4, !tbaa !5
  br label %for.cond98, !llvm.loop !19

for.end112:                                       ; preds = %for.cond98
  br label %for.inc113

for.inc113:                                       ; preds = %for.end112
  %92 = load i32, ptr %j, align 4, !tbaa !5
  %inc114 = add nsw i32 %92, 1
  store i32 %inc114, ptr %j, align 4, !tbaa !5
  br label %for.cond95, !llvm.loop !20

for.end115:                                       ; preds = %for.cond95
  store i32 2, ptr %j, align 4, !tbaa !5
  br label %for.cond116

for.cond116:                                      ; preds = %for.inc134, %for.end115
  %93 = load i32, ptr %j, align 4, !tbaa !5
  %94 = load i32, ptr %i, align 4, !tbaa !5
  %cmp117 = icmp slt i32 %93, %94
  br i1 %cmp117, label %for.body118, label %for.end136

for.body118:                                      ; preds = %for.cond116
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc131, %for.body118
  %95 = load i32, ptr %k, align 4, !tbaa !5
  %96 = load i32, ptr %i, align 4, !tbaa !5
  %cmp120 = icmp slt i32 %95, %96
  br i1 %cmp120, label %for.body121, label %for.end133

for.body121:                                      ; preds = %for.cond119
  %97 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom122 = sext i32 %97 to i64
  %98 = mul nsw i64 %idxprom122, %5
  %arrayidx123 = getelementptr inbounds i32, ptr %vla, i64 %98
  %99 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom124 = sext i32 %99 to i64
  %arrayidx125 = getelementptr inbounds i32, ptr %arrayidx123, i64 %idxprom124
  %100 = load i32, ptr %arrayidx125, align 4, !tbaa !5
  %101 = load i32, ptr %j, align 4, !tbaa !5
  %sub126 = sub nsw i32 %101, 1
  %idxprom127 = sext i32 %sub126 to i64
  %102 = mul nsw i64 %idxprom127, %5
  %arrayidx128 = getelementptr inbounds i32, ptr %vla, i64 %102
  %103 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom129 = sext i32 %103 to i64
  %arrayidx130 = getelementptr inbounds i32, ptr %arrayidx128, i64 %idxprom129
  store i32 %100, ptr %arrayidx130, align 4, !tbaa !5
  br label %for.inc131

for.inc131:                                       ; preds = %for.body121
  %104 = load i32, ptr %k, align 4, !tbaa !5
  %inc132 = add nsw i32 %104, 1
  store i32 %inc132, ptr %k, align 4, !tbaa !5
  br label %for.cond119, !llvm.loop !21

for.end133:                                       ; preds = %for.cond119
  br label %for.inc134

for.inc134:                                       ; preds = %for.end133
  %105 = load i32, ptr %j, align 4, !tbaa !5
  %inc135 = add nsw i32 %105, 1
  store i32 %inc135, ptr %j, align 4, !tbaa !5
  br label %for.cond116, !llvm.loop !22

for.end136:                                       ; preds = %for.cond116
  br label %for.inc137

for.inc137:                                       ; preds = %for.end136
  %106 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %106, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !23

for.end138:                                       ; preds = %for.cond10
  %107 = load i32, ptr %sum, align 4, !tbaa !5
  %call139 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %107)
  %call140 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call139, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %108 = load i32, ptr %n1, align 4, !tbaa !5
  %dec141 = add nsw i32 %108, -1
  store i32 %dec141, ptr %n1, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #7
  %109 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %109)
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %n1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  %110 = load i32, ptr %retval, align 4
  ret i32 %110
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !25
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !28
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !28
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !25
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !25, !nonnull !29, !align !30
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !25, !nonnull !29, !align !30
  %vtable = load ptr, ptr %1, align 8, !tbaa !31
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !25
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !25, !nonnull !29, !align !30
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !33
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
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #5 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !52
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !52
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #8
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
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !35
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !53
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
  %vtable = load ptr, ptr %this1, align 8, !tbaa !31
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTSSo", !27, i64 0}
!27 = !{!"any pointer", !7, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{}
!30 = !{i64 8}
!31 = !{!32, !32, i64 0}
!32 = !{!"vtable pointer", !8, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !27, i64 0}
!35 = !{!7, !7, i64 0}
!36 = !{!37, !49, i64 240}
!37 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !38, i64 0, !26, i64 216, !7, i64 224, !47, i64 225, !48, i64 232, !49, i64 240, !50, i64 248, !51, i64 256}
!38 = !{!"_ZTSSt8ios_base", !39, i64 8, !39, i64 16, !40, i64 24, !41, i64 28, !41, i64 32, !42, i64 40, !43, i64 48, !7, i64 64, !6, i64 192, !44, i64 200, !45, i64 208}
!39 = !{!"long", !7, i64 0}
!40 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!41 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!42 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !27, i64 0}
!43 = !{!"_ZTSNSt8ios_base6_WordsE", !27, i64 0, !39, i64 8}
!44 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !27, i64 0}
!45 = !{!"_ZTSSt6locale", !46, i64 0}
!46 = !{!"p1 _ZTSNSt6locale5_ImplE", !27, i64 0}
!47 = !{!"bool", !7, i64 0}
!48 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !27, i64 0}
!49 = !{!"p1 _ZTSSt5ctypeIcE", !27, i64 0}
!50 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !27, i64 0}
!51 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !27, i64 0}
!52 = !{!49, !49, i64 0}
!53 = !{!54, !7, i64 56}
!54 = !{!"_ZTSSt5ctypeIcE", !55, i64 0, !56, i64 16, !47, i64 24, !57, i64 32, !57, i64 40, !58, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!55 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!56 = !{!"p1 _ZTS15__locale_struct", !27, i64 0}
!57 = !{!"p1 int", !27, i64 0}
!58 = !{!"p1 short", !27, i64 0}
