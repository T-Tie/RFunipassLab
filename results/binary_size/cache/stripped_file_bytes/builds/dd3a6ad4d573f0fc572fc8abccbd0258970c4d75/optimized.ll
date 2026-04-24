; ModuleID = '/tmp/tmp75jfmpv6.cpp'
source_filename = "/tmp/tmp75jfmpv6.cpp"
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
  %a = alloca [100 x [100 x i32]], align 16
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %m = alloca i32, align 4
  %k = alloca i32, align 4
  %sum = alloca i32, align 4
  %min = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 1, ptr %m, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc161, %entry
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end163

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 40000, i1 false)
  store i32 0, ptr %sum, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end14

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arraydecay7 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds [100 x i32], ptr %arraydecay7, i64 %idx.ext
  %arraydecay8 = getelementptr inbounds [100 x i32], ptr %add.ptr, i64 0, i64 0
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext9 = sext i32 %7 to i64
  %add.ptr10 = getelementptr inbounds i32, ptr %arraydecay8, i64 %idx.ext9
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr10)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc13 = add nsw i32 %9, 1
  store i32 %inc13, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end14:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc156, %for.end14
  %10 = load i32, ptr %k, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %11, 1
  %cmp16 = icmp slt i32 %10, %sub
  br i1 %cmp16, label %for.body17, label %for.end158

for.body17:                                       ; preds = %for.cond15
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc56, %for.body17
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %14 = load i32, ptr %k, align 4, !tbaa !5
  %sub19 = sub nsw i32 %13, %14
  %cmp20 = icmp slt i32 %12, %sub19
  br i1 %cmp20, label %for.body21, label %for.end58

for.body21:                                       ; preds = %for.cond18
  store i32 100000, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc39, %for.body21
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %16 = load i32, ptr %n, align 4, !tbaa !5
  %17 = load i32, ptr %k, align 4, !tbaa !5
  %sub23 = sub nsw i32 %16, %17
  %cmp24 = icmp slt i32 %15, %sub23
  br i1 %cmp24, label %for.body25, label %for.end41

for.body25:                                       ; preds = %for.cond22
  %arraydecay26 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext27 = sext i32 %18 to i64
  %add.ptr28 = getelementptr inbounds [100 x i32], ptr %arraydecay26, i64 %idx.ext27
  %arraydecay29 = getelementptr inbounds [100 x i32], ptr %add.ptr28, i64 0, i64 0
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext30 = sext i32 %19 to i64
  %add.ptr31 = getelementptr inbounds i32, ptr %arraydecay29, i64 %idx.ext30
  %20 = load i32, ptr %add.ptr31, align 4, !tbaa !5
  %21 = load i32, ptr %min, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %20, %21
  br i1 %cmp32, label %if.then, label %if.end

if.then:                                          ; preds = %for.body25
  %arraydecay33 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext34 = sext i32 %22 to i64
  %add.ptr35 = getelementptr inbounds [100 x i32], ptr %arraydecay33, i64 %idx.ext34
  %arraydecay36 = getelementptr inbounds [100 x i32], ptr %add.ptr35, i64 0, i64 0
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext37 = sext i32 %23 to i64
  %add.ptr38 = getelementptr inbounds i32, ptr %arraydecay36, i64 %idx.ext37
  %24 = load i32, ptr %add.ptr38, align 4, !tbaa !5
  store i32 %24, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body25
  br label %for.inc39

for.inc39:                                        ; preds = %if.end
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %inc40 = add nsw i32 %25, 1
  store i32 %inc40, ptr %j, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !13

for.end41:                                        ; preds = %for.cond22
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc53, %for.end41
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %27 = load i32, ptr %n, align 4, !tbaa !5
  %28 = load i32, ptr %k, align 4, !tbaa !5
  %sub43 = sub nsw i32 %27, %28
  %cmp44 = icmp slt i32 %26, %sub43
  br i1 %cmp44, label %for.body45, label %for.end55

for.body45:                                       ; preds = %for.cond42
  %29 = load i32, ptr %min, align 4, !tbaa !5
  %arraydecay46 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext47 = sext i32 %30 to i64
  %add.ptr48 = getelementptr inbounds [100 x i32], ptr %arraydecay46, i64 %idx.ext47
  %arraydecay49 = getelementptr inbounds [100 x i32], ptr %add.ptr48, i64 0, i64 0
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext50 = sext i32 %31 to i64
  %add.ptr51 = getelementptr inbounds i32, ptr %arraydecay49, i64 %idx.ext50
  %32 = load i32, ptr %add.ptr51, align 4, !tbaa !5
  %sub52 = sub nsw i32 %32, %29
  store i32 %sub52, ptr %add.ptr51, align 4, !tbaa !5
  br label %for.inc53

for.inc53:                                        ; preds = %for.body45
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %inc54 = add nsw i32 %33, 1
  store i32 %inc54, ptr %j, align 4, !tbaa !5
  br label %for.cond42, !llvm.loop !14

for.end55:                                        ; preds = %for.cond42
  br label %for.inc56

for.inc56:                                        ; preds = %for.end55
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %inc57 = add nsw i32 %34, 1
  store i32 %inc57, ptr %i, align 4, !tbaa !5
  br label %for.cond18, !llvm.loop !15

for.end58:                                        ; preds = %for.cond18
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc99, %for.end58
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %36 = load i32, ptr %n, align 4, !tbaa !5
  %37 = load i32, ptr %k, align 4, !tbaa !5
  %sub60 = sub nsw i32 %36, %37
  %cmp61 = icmp slt i32 %35, %sub60
  br i1 %cmp61, label %for.body62, label %for.end101

for.body62:                                       ; preds = %for.cond59
  store i32 100000, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc82, %for.body62
  %38 = load i32, ptr %j, align 4, !tbaa !5
  %39 = load i32, ptr %n, align 4, !tbaa !5
  %40 = load i32, ptr %k, align 4, !tbaa !5
  %sub64 = sub nsw i32 %39, %40
  %cmp65 = icmp slt i32 %38, %sub64
  br i1 %cmp65, label %for.body66, label %for.end84

for.body66:                                       ; preds = %for.cond63
  %arraydecay67 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %41 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext68 = sext i32 %41 to i64
  %add.ptr69 = getelementptr inbounds [100 x i32], ptr %arraydecay67, i64 %idx.ext68
  %arraydecay70 = getelementptr inbounds [100 x i32], ptr %add.ptr69, i64 0, i64 0
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext71 = sext i32 %42 to i64
  %add.ptr72 = getelementptr inbounds i32, ptr %arraydecay70, i64 %idx.ext71
  %43 = load i32, ptr %add.ptr72, align 4, !tbaa !5
  %44 = load i32, ptr %min, align 4, !tbaa !5
  %cmp73 = icmp slt i32 %43, %44
  br i1 %cmp73, label %if.then74, label %if.end81

if.then74:                                        ; preds = %for.body66
  %arraydecay75 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext76 = sext i32 %45 to i64
  %add.ptr77 = getelementptr inbounds [100 x i32], ptr %arraydecay75, i64 %idx.ext76
  %arraydecay78 = getelementptr inbounds [100 x i32], ptr %add.ptr77, i64 0, i64 0
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext79 = sext i32 %46 to i64
  %add.ptr80 = getelementptr inbounds i32, ptr %arraydecay78, i64 %idx.ext79
  %47 = load i32, ptr %add.ptr80, align 4, !tbaa !5
  store i32 %47, ptr %min, align 4, !tbaa !5
  br label %if.end81

if.end81:                                         ; preds = %if.then74, %for.body66
  br label %for.inc82

for.inc82:                                        ; preds = %if.end81
  %48 = load i32, ptr %j, align 4, !tbaa !5
  %inc83 = add nsw i32 %48, 1
  store i32 %inc83, ptr %j, align 4, !tbaa !5
  br label %for.cond63, !llvm.loop !16

for.end84:                                        ; preds = %for.cond63
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc96, %for.end84
  %49 = load i32, ptr %j, align 4, !tbaa !5
  %50 = load i32, ptr %n, align 4, !tbaa !5
  %51 = load i32, ptr %k, align 4, !tbaa !5
  %sub86 = sub nsw i32 %50, %51
  %cmp87 = icmp slt i32 %49, %sub86
  br i1 %cmp87, label %for.body88, label %for.end98

for.body88:                                       ; preds = %for.cond85
  %52 = load i32, ptr %min, align 4, !tbaa !5
  %arraydecay89 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %53 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext90 = sext i32 %53 to i64
  %add.ptr91 = getelementptr inbounds [100 x i32], ptr %arraydecay89, i64 %idx.ext90
  %arraydecay92 = getelementptr inbounds [100 x i32], ptr %add.ptr91, i64 0, i64 0
  %54 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext93 = sext i32 %54 to i64
  %add.ptr94 = getelementptr inbounds i32, ptr %arraydecay92, i64 %idx.ext93
  %55 = load i32, ptr %add.ptr94, align 4, !tbaa !5
  %sub95 = sub nsw i32 %55, %52
  store i32 %sub95, ptr %add.ptr94, align 4, !tbaa !5
  br label %for.inc96

for.inc96:                                        ; preds = %for.body88
  %56 = load i32, ptr %j, align 4, !tbaa !5
  %inc97 = add nsw i32 %56, 1
  store i32 %inc97, ptr %j, align 4, !tbaa !5
  br label %for.cond85, !llvm.loop !17

for.end98:                                        ; preds = %for.cond85
  br label %for.inc99

for.inc99:                                        ; preds = %for.end98
  %57 = load i32, ptr %i, align 4, !tbaa !5
  %inc100 = add nsw i32 %57, 1
  store i32 %inc100, ptr %i, align 4, !tbaa !5
  br label %for.cond59, !llvm.loop !18

for.end101:                                       ; preds = %for.cond59
  %arraydecay102 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %add.ptr103 = getelementptr inbounds [100 x i32], ptr %arraydecay102, i64 1
  %arraydecay104 = getelementptr inbounds [100 x i32], ptr %add.ptr103, i64 0, i64 0
  %add.ptr105 = getelementptr inbounds i32, ptr %arraydecay104, i64 1
  %58 = load i32, ptr %add.ptr105, align 4, !tbaa !5
  %59 = load i32, ptr %sum, align 4, !tbaa !5
  %add = add nsw i32 %59, %58
  store i32 %add, ptr %sum, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond106

for.cond106:                                      ; preds = %for.inc128, %for.end101
  %60 = load i32, ptr %i, align 4, !tbaa !5
  %61 = load i32, ptr %n, align 4, !tbaa !5
  %cmp107 = icmp slt i32 %60, %61
  br i1 %cmp107, label %for.body108, label %for.end130

for.body108:                                      ; preds = %for.cond106
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc125, %for.body108
  %62 = load i32, ptr %j, align 4, !tbaa !5
  %63 = load i32, ptr %n, align 4, !tbaa !5
  %cmp110 = icmp slt i32 %62, %63
  br i1 %cmp110, label %for.body111, label %for.end127

for.body111:                                      ; preds = %for.cond109
  %arraydecay112 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %64 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext113 = sext i32 %64 to i64
  %add.ptr114 = getelementptr inbounds [100 x i32], ptr %arraydecay112, i64 %idx.ext113
  %add.ptr115 = getelementptr inbounds [100 x i32], ptr %add.ptr114, i64 1
  %arraydecay116 = getelementptr inbounds [100 x i32], ptr %add.ptr115, i64 0, i64 0
  %65 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext117 = sext i32 %65 to i64
  %add.ptr118 = getelementptr inbounds i32, ptr %arraydecay116, i64 %idx.ext117
  %66 = load i32, ptr %add.ptr118, align 4, !tbaa !5
  %arraydecay119 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %67 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext120 = sext i32 %67 to i64
  %add.ptr121 = getelementptr inbounds [100 x i32], ptr %arraydecay119, i64 %idx.ext120
  %arraydecay122 = getelementptr inbounds [100 x i32], ptr %add.ptr121, i64 0, i64 0
  %68 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext123 = sext i32 %68 to i64
  %add.ptr124 = getelementptr inbounds i32, ptr %arraydecay122, i64 %idx.ext123
  store i32 %66, ptr %add.ptr124, align 4, !tbaa !5
  br label %for.inc125

for.inc125:                                       ; preds = %for.body111
  %69 = load i32, ptr %j, align 4, !tbaa !5
  %inc126 = add nsw i32 %69, 1
  store i32 %inc126, ptr %j, align 4, !tbaa !5
  br label %for.cond109, !llvm.loop !19

for.end127:                                       ; preds = %for.cond109
  br label %for.inc128

for.inc128:                                       ; preds = %for.end127
  %70 = load i32, ptr %i, align 4, !tbaa !5
  %inc129 = add nsw i32 %70, 1
  store i32 %inc129, ptr %i, align 4, !tbaa !5
  br label %for.cond106, !llvm.loop !20

for.end130:                                       ; preds = %for.cond106
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond131

for.cond131:                                      ; preds = %for.inc153, %for.end130
  %71 = load i32, ptr %i, align 4, !tbaa !5
  %72 = load i32, ptr %n, align 4, !tbaa !5
  %cmp132 = icmp slt i32 %71, %72
  br i1 %cmp132, label %for.body133, label %for.end155

for.body133:                                      ; preds = %for.cond131
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond134

for.cond134:                                      ; preds = %for.inc150, %for.body133
  %73 = load i32, ptr %j, align 4, !tbaa !5
  %74 = load i32, ptr %n, align 4, !tbaa !5
  %cmp135 = icmp slt i32 %73, %74
  br i1 %cmp135, label %for.body136, label %for.end152

for.body136:                                      ; preds = %for.cond134
  %arraydecay137 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %75 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext138 = sext i32 %75 to i64
  %add.ptr139 = getelementptr inbounds [100 x i32], ptr %arraydecay137, i64 %idx.ext138
  %arraydecay140 = getelementptr inbounds [100 x i32], ptr %add.ptr139, i64 0, i64 0
  %76 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext141 = sext i32 %76 to i64
  %add.ptr142 = getelementptr inbounds i32, ptr %arraydecay140, i64 %idx.ext141
  %add.ptr143 = getelementptr inbounds i32, ptr %add.ptr142, i64 1
  %77 = load i32, ptr %add.ptr143, align 4, !tbaa !5
  %arraydecay144 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %78 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext145 = sext i32 %78 to i64
  %add.ptr146 = getelementptr inbounds [100 x i32], ptr %arraydecay144, i64 %idx.ext145
  %arraydecay147 = getelementptr inbounds [100 x i32], ptr %add.ptr146, i64 0, i64 0
  %79 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext148 = sext i32 %79 to i64
  %add.ptr149 = getelementptr inbounds i32, ptr %arraydecay147, i64 %idx.ext148
  store i32 %77, ptr %add.ptr149, align 4, !tbaa !5
  br label %for.inc150

for.inc150:                                       ; preds = %for.body136
  %80 = load i32, ptr %j, align 4, !tbaa !5
  %inc151 = add nsw i32 %80, 1
  store i32 %inc151, ptr %j, align 4, !tbaa !5
  br label %for.cond134, !llvm.loop !21

for.end152:                                       ; preds = %for.cond134
  br label %for.inc153

for.inc153:                                       ; preds = %for.end152
  %81 = load i32, ptr %i, align 4, !tbaa !5
  %inc154 = add nsw i32 %81, 1
  store i32 %inc154, ptr %i, align 4, !tbaa !5
  br label %for.cond131, !llvm.loop !22

for.end155:                                       ; preds = %for.cond131
  br label %for.inc156

for.inc156:                                       ; preds = %for.end155
  %82 = load i32, ptr %k, align 4, !tbaa !5
  %inc157 = add nsw i32 %82, 1
  store i32 %inc157, ptr %k, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !23

for.end158:                                       ; preds = %for.cond15
  %83 = load i32, ptr %sum, align 4, !tbaa !5
  %call159 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %83)
  %call160 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call159, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc161

for.inc161:                                       ; preds = %for.end158
  %84 = load i32, ptr %m, align 4, !tbaa !5
  %inc162 = add nsw i32 %84, 1
  store i32 %inc162, ptr %m, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !24

for.end163:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
