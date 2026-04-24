; ModuleID = '/tmp/tmprxnguj0q.cpp'
source_filename = "/tmp/tmprxnguj0q.cpp"
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
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %sum = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %min = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #6
  store i32 0, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc136, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end138

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end12:                                        ; preds = %for.cond1
  store i32 1, ptr %l, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc131, %for.end12
  %10 = load i32, ptr %l, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %10, %11
  br i1 %cmp14, label %for.body15, label %for.end133

for.body15:                                       ; preds = %for.cond13
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc47, %for.body15
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %12, %13
  br i1 %cmp17, label %for.body18, label %for.end49

for.body18:                                       ; preds = %for.cond16
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %14 to i64
  %arrayidx20 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [100 x i32], ptr %arrayidx20, i64 0, i64 0
  %15 = load i32, ptr %arrayidx21, align 16, !tbaa !5
  store i32 %15, ptr %min, align 4, !tbaa !5
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc34, %for.body18
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %17 = load i32, ptr %n, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %16, %17
  br i1 %cmp23, label %for.body24, label %for.end36

for.body24:                                       ; preds = %for.cond22
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %18 to i64
  %arrayidx26 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom25
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom27 = sext i32 %19 to i64
  %arrayidx28 = getelementptr inbounds [100 x i32], ptr %arrayidx26, i64 0, i64 %idxprom27
  %20 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %21 = load i32, ptr %min, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %20, %21
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %for.body24
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %22 to i64
  %arrayidx31 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom30
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom32 = sext i32 %23 to i64
  %arrayidx33 = getelementptr inbounds [100 x i32], ptr %arrayidx31, i64 0, i64 %idxprom32
  %24 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  store i32 %24, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body24
  br label %for.inc34

for.inc34:                                        ; preds = %if.end
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %inc35 = add nsw i32 %25, 1
  store i32 %inc35, ptr %j, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !13

for.end36:                                        ; preds = %for.cond22
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc44, %for.end36
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %27 = load i32, ptr %n, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %26, %27
  br i1 %cmp38, label %for.body39, label %for.end46

for.body39:                                       ; preds = %for.cond37
  %28 = load i32, ptr %min, align 4, !tbaa !5
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %29 to i64
  %arrayidx41 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom40
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom42 = sext i32 %30 to i64
  %arrayidx43 = getelementptr inbounds [100 x i32], ptr %arrayidx41, i64 0, i64 %idxprom42
  %31 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %sub = sub nsw i32 %31, %28
  store i32 %sub, ptr %arrayidx43, align 4, !tbaa !5
  br label %for.inc44

for.inc44:                                        ; preds = %for.body39
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %inc45 = add nsw i32 %32, 1
  store i32 %inc45, ptr %j, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !14

for.end46:                                        ; preds = %for.cond37
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %inc48 = add nsw i32 %33, 1
  store i32 %inc48, ptr %i, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !15

for.end49:                                        ; preds = %for.cond16
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc84, %for.end49
  %34 = load i32, ptr %j, align 4, !tbaa !5
  %35 = load i32, ptr %n, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %34, %35
  br i1 %cmp51, label %for.body52, label %for.end86

for.body52:                                       ; preds = %for.cond50
  %arrayidx53 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom54 = sext i32 %36 to i64
  %arrayidx55 = getelementptr inbounds [100 x i32], ptr %arrayidx53, i64 0, i64 %idxprom54
  %37 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  store i32 %37, ptr %min, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc70, %for.body52
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %39 = load i32, ptr %n, align 4, !tbaa !5
  %cmp57 = icmp slt i32 %38, %39
  br i1 %cmp57, label %for.body58, label %for.end72

for.body58:                                       ; preds = %for.cond56
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom59 = sext i32 %40 to i64
  %arrayidx60 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom59
  %41 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom61 = sext i32 %41 to i64
  %arrayidx62 = getelementptr inbounds [100 x i32], ptr %arrayidx60, i64 0, i64 %idxprom61
  %42 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %43 = load i32, ptr %min, align 4, !tbaa !5
  %cmp63 = icmp slt i32 %42, %43
  br i1 %cmp63, label %if.then64, label %if.end69

if.then64:                                        ; preds = %for.body58
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom65 = sext i32 %44 to i64
  %arrayidx66 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom65
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom67 = sext i32 %45 to i64
  %arrayidx68 = getelementptr inbounds [100 x i32], ptr %arrayidx66, i64 0, i64 %idxprom67
  %46 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  store i32 %46, ptr %min, align 4, !tbaa !5
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %for.body58
  br label %for.inc70

for.inc70:                                        ; preds = %if.end69
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %inc71 = add nsw i32 %47, 1
  store i32 %inc71, ptr %i, align 4, !tbaa !5
  br label %for.cond56, !llvm.loop !16

for.end72:                                        ; preds = %for.cond56
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc81, %for.end72
  %48 = load i32, ptr %i, align 4, !tbaa !5
  %49 = load i32, ptr %n, align 4, !tbaa !5
  %cmp74 = icmp slt i32 %48, %49
  br i1 %cmp74, label %for.body75, label %for.end83

for.body75:                                       ; preds = %for.cond73
  %50 = load i32, ptr %min, align 4, !tbaa !5
  %51 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom76 = sext i32 %51 to i64
  %arrayidx77 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom76
  %52 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom78 = sext i32 %52 to i64
  %arrayidx79 = getelementptr inbounds [100 x i32], ptr %arrayidx77, i64 0, i64 %idxprom78
  %53 = load i32, ptr %arrayidx79, align 4, !tbaa !5
  %sub80 = sub nsw i32 %53, %50
  store i32 %sub80, ptr %arrayidx79, align 4, !tbaa !5
  br label %for.inc81

for.inc81:                                        ; preds = %for.body75
  %54 = load i32, ptr %i, align 4, !tbaa !5
  %inc82 = add nsw i32 %54, 1
  store i32 %inc82, ptr %i, align 4, !tbaa !5
  br label %for.cond73, !llvm.loop !17

for.end83:                                        ; preds = %for.cond73
  br label %for.inc84

for.inc84:                                        ; preds = %for.end83
  %55 = load i32, ptr %j, align 4, !tbaa !5
  %inc85 = add nsw i32 %55, 1
  store i32 %inc85, ptr %j, align 4, !tbaa !5
  br label %for.cond50, !llvm.loop !18

for.end86:                                        ; preds = %for.cond50
  %arrayidx87 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 1
  %arrayidx88 = getelementptr inbounds [100 x i32], ptr %arrayidx87, i64 0, i64 1
  %56 = load i32, ptr %arrayidx88, align 4, !tbaa !5
  %57 = load i32, ptr %sum, align 4, !tbaa !5
  %add = add nsw i32 %57, %56
  store i32 %add, ptr %sum, align 4, !tbaa !5
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc107, %for.end86
  %58 = load i32, ptr %i, align 4, !tbaa !5
  %59 = load i32, ptr %n, align 4, !tbaa !5
  %cmp90 = icmp slt i32 %58, %59
  br i1 %cmp90, label %for.body91, label %for.end109

for.body91:                                       ; preds = %for.cond89
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc104, %for.body91
  %60 = load i32, ptr %j, align 4, !tbaa !5
  %61 = load i32, ptr %n, align 4, !tbaa !5
  %cmp93 = icmp slt i32 %60, %61
  br i1 %cmp93, label %for.body94, label %for.end106

for.body94:                                       ; preds = %for.cond92
  %62 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom95 = sext i32 %62 to i64
  %arrayidx96 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom95
  %63 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom97 = sext i32 %63 to i64
  %arrayidx98 = getelementptr inbounds [100 x i32], ptr %arrayidx96, i64 0, i64 %idxprom97
  %64 = load i32, ptr %arrayidx98, align 4, !tbaa !5
  %65 = load i32, ptr %i, align 4, !tbaa !5
  %sub99 = sub nsw i32 %65, 1
  %idxprom100 = sext i32 %sub99 to i64
  %arrayidx101 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom100
  %66 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom102 = sext i32 %66 to i64
  %arrayidx103 = getelementptr inbounds [100 x i32], ptr %arrayidx101, i64 0, i64 %idxprom102
  store i32 %64, ptr %arrayidx103, align 4, !tbaa !5
  br label %for.inc104

for.inc104:                                       ; preds = %for.body94
  %67 = load i32, ptr %j, align 4, !tbaa !5
  %inc105 = add nsw i32 %67, 1
  store i32 %inc105, ptr %j, align 4, !tbaa !5
  br label %for.cond92, !llvm.loop !19

for.end106:                                       ; preds = %for.cond92
  br label %for.inc107

for.inc107:                                       ; preds = %for.end106
  %68 = load i32, ptr %i, align 4, !tbaa !5
  %inc108 = add nsw i32 %68, 1
  store i32 %inc108, ptr %i, align 4, !tbaa !5
  br label %for.cond89, !llvm.loop !20

for.end109:                                       ; preds = %for.cond89
  store i32 2, ptr %j, align 4, !tbaa !5
  br label %for.cond110

for.cond110:                                      ; preds = %for.inc128, %for.end109
  %69 = load i32, ptr %j, align 4, !tbaa !5
  %70 = load i32, ptr %n, align 4, !tbaa !5
  %cmp111 = icmp slt i32 %69, %70
  br i1 %cmp111, label %for.body112, label %for.end130

for.body112:                                      ; preds = %for.cond110
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc125, %for.body112
  %71 = load i32, ptr %i, align 4, !tbaa !5
  %72 = load i32, ptr %n, align 4, !tbaa !5
  %cmp114 = icmp slt i32 %71, %72
  br i1 %cmp114, label %for.body115, label %for.end127

for.body115:                                      ; preds = %for.cond113
  %73 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom116 = sext i32 %73 to i64
  %arrayidx117 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom116
  %74 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom118 = sext i32 %74 to i64
  %arrayidx119 = getelementptr inbounds [100 x i32], ptr %arrayidx117, i64 0, i64 %idxprom118
  %75 = load i32, ptr %arrayidx119, align 4, !tbaa !5
  %76 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom120 = sext i32 %76 to i64
  %arrayidx121 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom120
  %77 = load i32, ptr %j, align 4, !tbaa !5
  %sub122 = sub nsw i32 %77, 1
  %idxprom123 = sext i32 %sub122 to i64
  %arrayidx124 = getelementptr inbounds [100 x i32], ptr %arrayidx121, i64 0, i64 %idxprom123
  store i32 %75, ptr %arrayidx124, align 4, !tbaa !5
  br label %for.inc125

for.inc125:                                       ; preds = %for.body115
  %78 = load i32, ptr %i, align 4, !tbaa !5
  %inc126 = add nsw i32 %78, 1
  store i32 %inc126, ptr %i, align 4, !tbaa !5
  br label %for.cond113, !llvm.loop !21

for.end127:                                       ; preds = %for.cond113
  br label %for.inc128

for.inc128:                                       ; preds = %for.end127
  %79 = load i32, ptr %j, align 4, !tbaa !5
  %inc129 = add nsw i32 %79, 1
  store i32 %inc129, ptr %j, align 4, !tbaa !5
  br label %for.cond110, !llvm.loop !22

for.end130:                                       ; preds = %for.cond110
  br label %for.inc131

for.inc131:                                       ; preds = %for.end130
  %80 = load i32, ptr %l, align 4, !tbaa !5
  %inc132 = add nsw i32 %80, 1
  store i32 %inc132, ptr %l, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !23

for.end133:                                       ; preds = %for.cond13
  %81 = load i32, ptr %sum, align 4, !tbaa !5
  %call134 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %81)
  %call135 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call134, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr %sum, align 4, !tbaa !5
  br label %for.inc136

for.inc136:                                       ; preds = %for.end133
  %82 = load i32, ptr %k, align 4, !tbaa !5
  %inc137 = add nsw i32 %82, 1
  store i32 %inc137, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !24

for.end138:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #3 align 2 {
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
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
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
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !25
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !25, !nonnull !29, !align !30
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #3 align 2 {
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
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #4 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !52
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !52
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #7
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
declare void @_ZSt16__throw_bad_castv() #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

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
