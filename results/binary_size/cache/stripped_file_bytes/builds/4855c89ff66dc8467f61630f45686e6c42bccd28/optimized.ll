; ModuleID = '/tmp/tmpkxspa_zo.cpp'
source_filename = "/tmp/tmpkxspa_zo.cpp"
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
  %nn = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %sum = alloca i32, align 4
  %min = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %nn) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc154, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end156

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %sum, align 4, !tbaa !5
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
  %10 = load i32, ptr %n, align 4, !tbaa !5
  store i32 %10, ptr %nn, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %for.end146, %for.end12
  %11 = load i32, ptr %nn, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %11, 1
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc49, %while.body
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %13 = load i32, ptr %nn, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %12, %13
  br i1 %cmp15, label %for.body16, label %for.end51

for.body16:                                       ; preds = %for.cond14
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [100 x i32], ptr %arrayidx18, i64 0, i64 0
  %15 = load i32, ptr %arrayidx19, align 16, !tbaa !5
  store i32 %15, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc32, %for.body16
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %17 = load i32, ptr %nn, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %16, %17
  br i1 %cmp21, label %for.body22, label %for.end34

for.body22:                                       ; preds = %for.cond20
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom23
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [100 x i32], ptr %arrayidx24, i64 0, i64 %idxprom25
  %20 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %21 = load i32, ptr %min, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %20, %21
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %for.body22
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %22 to i64
  %arrayidx29 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom28
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom30 = sext i32 %23 to i64
  %arrayidx31 = getelementptr inbounds [100 x i32], ptr %arrayidx29, i64 0, i64 %idxprom30
  %24 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  store i32 %24, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body22
  br label %for.inc32

for.inc32:                                        ; preds = %if.end
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %inc33 = add nsw i32 %25, 1
  store i32 %inc33, ptr %j, align 4, !tbaa !5
  br label %for.cond20, !llvm.loop !13

for.end34:                                        ; preds = %for.cond20
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc46, %for.end34
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %27 = load i32, ptr %nn, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %26, %27
  br i1 %cmp36, label %for.body37, label %for.end48

for.body37:                                       ; preds = %for.cond35
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom38 = sext i32 %28 to i64
  %arrayidx39 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom38
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom40 = sext i32 %29 to i64
  %arrayidx41 = getelementptr inbounds [100 x i32], ptr %arrayidx39, i64 0, i64 %idxprom40
  %30 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %31 = load i32, ptr %min, align 4, !tbaa !5
  %sub = sub nsw i32 %30, %31
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %32 to i64
  %arrayidx43 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom42
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom44 = sext i32 %33 to i64
  %arrayidx45 = getelementptr inbounds [100 x i32], ptr %arrayidx43, i64 0, i64 %idxprom44
  store i32 %sub, ptr %arrayidx45, align 4, !tbaa !5
  br label %for.inc46

for.inc46:                                        ; preds = %for.body37
  %34 = load i32, ptr %j, align 4, !tbaa !5
  %inc47 = add nsw i32 %34, 1
  store i32 %inc47, ptr %j, align 4, !tbaa !5
  br label %for.cond35, !llvm.loop !14

for.end48:                                        ; preds = %for.cond35
  br label %for.inc49

for.inc49:                                        ; preds = %for.end48
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %inc50 = add nsw i32 %35, 1
  store i32 %inc50, ptr %i, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !15

for.end51:                                        ; preds = %for.cond14
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc90, %for.end51
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %37 = load i32, ptr %nn, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %36, %37
  br i1 %cmp53, label %for.body54, label %for.end92

for.body54:                                       ; preds = %for.cond52
  %arrayidx55 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %38 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom56 = sext i32 %38 to i64
  %arrayidx57 = getelementptr inbounds [100 x i32], ptr %arrayidx55, i64 0, i64 %idxprom56
  %39 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  store i32 %39, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc72, %for.body54
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %41 = load i32, ptr %nn, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %40, %41
  br i1 %cmp59, label %for.body60, label %for.end74

for.body60:                                       ; preds = %for.cond58
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom61 = sext i32 %42 to i64
  %arrayidx62 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom61
  %43 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom63 = sext i32 %43 to i64
  %arrayidx64 = getelementptr inbounds [100 x i32], ptr %arrayidx62, i64 0, i64 %idxprom63
  %44 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %45 = load i32, ptr %min, align 4, !tbaa !5
  %cmp65 = icmp slt i32 %44, %45
  br i1 %cmp65, label %if.then66, label %if.end71

if.then66:                                        ; preds = %for.body60
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom67 = sext i32 %46 to i64
  %arrayidx68 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom67
  %47 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom69 = sext i32 %47 to i64
  %arrayidx70 = getelementptr inbounds [100 x i32], ptr %arrayidx68, i64 0, i64 %idxprom69
  %48 = load i32, ptr %arrayidx70, align 4, !tbaa !5
  store i32 %48, ptr %min, align 4, !tbaa !5
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %for.body60
  br label %for.inc72

for.inc72:                                        ; preds = %if.end71
  %49 = load i32, ptr %i, align 4, !tbaa !5
  %inc73 = add nsw i32 %49, 1
  store i32 %inc73, ptr %i, align 4, !tbaa !5
  br label %for.cond58, !llvm.loop !16

for.end74:                                        ; preds = %for.cond58
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc87, %for.end74
  %50 = load i32, ptr %i, align 4, !tbaa !5
  %51 = load i32, ptr %nn, align 4, !tbaa !5
  %cmp76 = icmp slt i32 %50, %51
  br i1 %cmp76, label %for.body77, label %for.end89

for.body77:                                       ; preds = %for.cond75
  %52 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom78 = sext i32 %52 to i64
  %arrayidx79 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom78
  %53 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom80 = sext i32 %53 to i64
  %arrayidx81 = getelementptr inbounds [100 x i32], ptr %arrayidx79, i64 0, i64 %idxprom80
  %54 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %55 = load i32, ptr %min, align 4, !tbaa !5
  %sub82 = sub nsw i32 %54, %55
  %56 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom83 = sext i32 %56 to i64
  %arrayidx84 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom83
  %57 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom85 = sext i32 %57 to i64
  %arrayidx86 = getelementptr inbounds [100 x i32], ptr %arrayidx84, i64 0, i64 %idxprom85
  store i32 %sub82, ptr %arrayidx86, align 4, !tbaa !5
  br label %for.inc87

for.inc87:                                        ; preds = %for.body77
  %58 = load i32, ptr %i, align 4, !tbaa !5
  %inc88 = add nsw i32 %58, 1
  store i32 %inc88, ptr %i, align 4, !tbaa !5
  br label %for.cond75, !llvm.loop !17

for.end89:                                        ; preds = %for.cond75
  br label %for.inc90

for.inc90:                                        ; preds = %for.end89
  %59 = load i32, ptr %j, align 4, !tbaa !5
  %inc91 = add nsw i32 %59, 1
  store i32 %inc91, ptr %j, align 4, !tbaa !5
  br label %for.cond52, !llvm.loop !18

for.end92:                                        ; preds = %for.cond52
  %60 = load i32, ptr %sum, align 4, !tbaa !5
  %arrayidx93 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 1
  %arrayidx94 = getelementptr inbounds [100 x i32], ptr %arrayidx93, i64 0, i64 1
  %61 = load i32, ptr %arrayidx94, align 4, !tbaa !5
  %add = add nsw i32 %60, %61
  store i32 %add, ptr %sum, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc106, %for.end92
  %62 = load i32, ptr %i, align 4, !tbaa !5
  %63 = load i32, ptr %nn, align 4, !tbaa !5
  %sub96 = sub nsw i32 %63, 1
  %cmp97 = icmp slt i32 %62, %sub96
  br i1 %cmp97, label %for.body98, label %for.end108

for.body98:                                       ; preds = %for.cond95
  %64 = load i32, ptr %i, align 4, !tbaa !5
  %add99 = add nsw i32 %64, 1
  %idxprom100 = sext i32 %add99 to i64
  %arrayidx101 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom100
  %arrayidx102 = getelementptr inbounds [100 x i32], ptr %arrayidx101, i64 0, i64 0
  %65 = load i32, ptr %arrayidx102, align 16, !tbaa !5
  %66 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom103 = sext i32 %66 to i64
  %arrayidx104 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom103
  %arrayidx105 = getelementptr inbounds [100 x i32], ptr %arrayidx104, i64 0, i64 0
  store i32 %65, ptr %arrayidx105, align 16, !tbaa !5
  br label %for.inc106

for.inc106:                                       ; preds = %for.body98
  %67 = load i32, ptr %i, align 4, !tbaa !5
  %inc107 = add nsw i32 %67, 1
  store i32 %inc107, ptr %i, align 4, !tbaa !5
  br label %for.cond95, !llvm.loop !19

for.end108:                                       ; preds = %for.cond95
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc120, %for.end108
  %68 = load i32, ptr %j, align 4, !tbaa !5
  %69 = load i32, ptr %nn, align 4, !tbaa !5
  %sub110 = sub nsw i32 %69, 1
  %cmp111 = icmp slt i32 %68, %sub110
  br i1 %cmp111, label %for.body112, label %for.end122

for.body112:                                      ; preds = %for.cond109
  %arrayidx113 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %70 = load i32, ptr %j, align 4, !tbaa !5
  %add114 = add nsw i32 %70, 1
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds [100 x i32], ptr %arrayidx113, i64 0, i64 %idxprom115
  %71 = load i32, ptr %arrayidx116, align 4, !tbaa !5
  %arrayidx117 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %72 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom118 = sext i32 %72 to i64
  %arrayidx119 = getelementptr inbounds [100 x i32], ptr %arrayidx117, i64 0, i64 %idxprom118
  store i32 %71, ptr %arrayidx119, align 4, !tbaa !5
  br label %for.inc120

for.inc120:                                       ; preds = %for.body112
  %73 = load i32, ptr %j, align 4, !tbaa !5
  %inc121 = add nsw i32 %73, 1
  store i32 %inc121, ptr %j, align 4, !tbaa !5
  br label %for.cond109, !llvm.loop !20

for.end122:                                       ; preds = %for.cond109
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond123

for.cond123:                                      ; preds = %for.inc144, %for.end122
  %74 = load i32, ptr %i, align 4, !tbaa !5
  %75 = load i32, ptr %nn, align 4, !tbaa !5
  %sub124 = sub nsw i32 %75, 1
  %cmp125 = icmp slt i32 %74, %sub124
  br i1 %cmp125, label %for.body126, label %for.end146

for.body126:                                      ; preds = %for.cond123
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond127

for.cond127:                                      ; preds = %for.inc141, %for.body126
  %76 = load i32, ptr %j, align 4, !tbaa !5
  %77 = load i32, ptr %nn, align 4, !tbaa !5
  %sub128 = sub nsw i32 %77, 1
  %cmp129 = icmp slt i32 %76, %sub128
  br i1 %cmp129, label %for.body130, label %for.end143

for.body130:                                      ; preds = %for.cond127
  %78 = load i32, ptr %i, align 4, !tbaa !5
  %add131 = add nsw i32 %78, 1
  %idxprom132 = sext i32 %add131 to i64
  %arrayidx133 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom132
  %79 = load i32, ptr %j, align 4, !tbaa !5
  %add134 = add nsw i32 %79, 1
  %idxprom135 = sext i32 %add134 to i64
  %arrayidx136 = getelementptr inbounds [100 x i32], ptr %arrayidx133, i64 0, i64 %idxprom135
  %80 = load i32, ptr %arrayidx136, align 4, !tbaa !5
  %81 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom137 = sext i32 %81 to i64
  %arrayidx138 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom137
  %82 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom139 = sext i32 %82 to i64
  %arrayidx140 = getelementptr inbounds [100 x i32], ptr %arrayidx138, i64 0, i64 %idxprom139
  store i32 %80, ptr %arrayidx140, align 4, !tbaa !5
  br label %for.inc141

for.inc141:                                       ; preds = %for.body130
  %83 = load i32, ptr %j, align 4, !tbaa !5
  %inc142 = add nsw i32 %83, 1
  store i32 %inc142, ptr %j, align 4, !tbaa !5
  br label %for.cond127, !llvm.loop !21

for.end143:                                       ; preds = %for.cond127
  br label %for.inc144

for.inc144:                                       ; preds = %for.end143
  %84 = load i32, ptr %i, align 4, !tbaa !5
  %inc145 = add nsw i32 %84, 1
  store i32 %inc145, ptr %i, align 4, !tbaa !5
  br label %for.cond123, !llvm.loop !22

for.end146:                                       ; preds = %for.cond123
  %85 = load i32, ptr %nn, align 4, !tbaa !5
  %sub147 = sub nsw i32 %85, 1
  store i32 %sub147, ptr %nn, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  %86 = load i32, ptr %k, align 4, !tbaa !5
  %cmp148 = icmp eq i32 %86, 1
  br i1 %cmp148, label %if.then149, label %if.else

if.then149:                                       ; preds = %while.end
  %87 = load i32, ptr %sum, align 4, !tbaa !5
  %call150 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %87)
  br label %if.end153

if.else:                                          ; preds = %while.end
  %call151 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %88 = load i32, ptr %sum, align 4, !tbaa !5
  %call152 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call151, i32 noundef %88)
  br label %if.end153

if.end153:                                        ; preds = %if.else, %if.then149
  br label %for.inc154

for.inc154:                                       ; preds = %if.end153
  %89 = load i32, ptr %k, align 4, !tbaa !5
  %inc155 = add nsw i32 %89, 1
  store i32 %inc155, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !24

for.end156:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %nn) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
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
