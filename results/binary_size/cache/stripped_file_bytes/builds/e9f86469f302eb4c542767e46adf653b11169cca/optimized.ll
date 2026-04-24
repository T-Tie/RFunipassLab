; ModuleID = '/tmp/tmpxum3al6n.cpp'
source_filename = "/tmp/tmpxum3al6n.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@a = dso_local global [101 x [101 x i32]] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@b = dso_local global [101 x [101 x i32]] zeroinitializer, align 16
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@_ZSt3cin = external global %"class.std::basic_istream", align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_Z1fv() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %num = alloca i32, align 4
  %ans = alloca i32, align 4
  %min = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %ans) #6
  store i32 0, ptr %ans, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #6
  %0 = load i32, ptr @n, align 4, !tbaa !5
  store i32 %0, ptr %num, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %for.end135, %entry
  %1 = load i32, ptr %num, align 4, !tbaa !5
  %cmp = icmp sge i32 %1, 2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %while.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %num, align 4, !tbaa !5
  %cmp1 = icmp sle i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 1
  %5 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  store i32 %5, ptr %min, align 4, !tbaa !5
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %7 = load i32, ptr %num, align 4, !tbaa !5
  %cmp4 = icmp sle i32 %6, %7
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom6
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [101 x i32], ptr %arrayidx7, i64 0, i64 %idxprom8
  %10 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %11 = load i32, ptr %min, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %10, %11
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom11
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [101 x i32], ptr %arrayidx12, i64 0, i64 %idxprom13
  %14 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  store i32 %14, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !9

for.end:                                          ; preds = %for.cond3
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc22, %for.end
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %17 = load i32, ptr %num, align 4, !tbaa !5
  %cmp16 = icmp sle i32 %16, %17
  br i1 %cmp16, label %for.body17, label %for.end24

for.body17:                                       ; preds = %for.cond15
  %18 = load i32, ptr %min, align 4, !tbaa !5
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom18
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds [101 x i32], ptr %arrayidx19, i64 0, i64 %idxprom20
  %21 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %sub = sub nsw i32 %21, %18
  store i32 %sub, ptr %arrayidx21, align 4, !tbaa !5
  br label %for.inc22

for.inc22:                                        ; preds = %for.body17
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %inc23 = add nsw i32 %22, 1
  store i32 %inc23, ptr %j, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !12

for.end24:                                        ; preds = %for.cond15
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %inc26 = add nsw i32 %23, 1
  store i32 %inc26, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end27:                                        ; preds = %for.cond
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc61, %for.end27
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %25 = load i32, ptr %num, align 4, !tbaa !5
  %cmp29 = icmp sle i32 %24, %25
  br i1 %cmp29, label %for.body30, label %for.end63

for.body30:                                       ; preds = %for.cond28
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom31 = sext i32 %26 to i64
  %arrayidx32 = getelementptr inbounds [101 x i32], ptr getelementptr inbounds ([101 x [101 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 %idxprom31
  %27 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  store i32 %27, ptr %min, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc47, %for.body30
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %29 = load i32, ptr %num, align 4, !tbaa !5
  %cmp34 = icmp sle i32 %28, %29
  br i1 %cmp34, label %for.body35, label %for.end49

for.body35:                                       ; preds = %for.cond33
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %30 to i64
  %arrayidx37 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom36
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom38 = sext i32 %31 to i64
  %arrayidx39 = getelementptr inbounds [101 x i32], ptr %arrayidx37, i64 0, i64 %idxprom38
  %32 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %33 = load i32, ptr %min, align 4, !tbaa !5
  %cmp40 = icmp slt i32 %32, %33
  br i1 %cmp40, label %if.then41, label %if.end46

if.then41:                                        ; preds = %for.body35
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %34 to i64
  %arrayidx43 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom42
  %35 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom44 = sext i32 %35 to i64
  %arrayidx45 = getelementptr inbounds [101 x i32], ptr %arrayidx43, i64 0, i64 %idxprom44
  %36 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  store i32 %36, ptr %min, align 4, !tbaa !5
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %for.body35
  br label %for.inc47

for.inc47:                                        ; preds = %if.end46
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %inc48 = add nsw i32 %37, 1
  store i32 %inc48, ptr %i, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !14

for.end49:                                        ; preds = %for.cond33
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc58, %for.end49
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %39 = load i32, ptr %num, align 4, !tbaa !5
  %cmp51 = icmp sle i32 %38, %39
  br i1 %cmp51, label %for.body52, label %for.end60

for.body52:                                       ; preds = %for.cond50
  %40 = load i32, ptr %min, align 4, !tbaa !5
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %41 to i64
  %arrayidx54 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom53
  %42 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom55 = sext i32 %42 to i64
  %arrayidx56 = getelementptr inbounds [101 x i32], ptr %arrayidx54, i64 0, i64 %idxprom55
  %43 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %sub57 = sub nsw i32 %43, %40
  store i32 %sub57, ptr %arrayidx56, align 4, !tbaa !5
  br label %for.inc58

for.inc58:                                        ; preds = %for.body52
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %inc59 = add nsw i32 %44, 1
  store i32 %inc59, ptr %i, align 4, !tbaa !5
  br label %for.cond50, !llvm.loop !15

for.end60:                                        ; preds = %for.cond50
  br label %for.inc61

for.inc61:                                        ; preds = %for.end60
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %inc62 = add nsw i32 %45, 1
  store i32 %inc62, ptr %j, align 4, !tbaa !5
  br label %for.cond28, !llvm.loop !16

for.end63:                                        ; preds = %for.cond28
  %46 = load i32, ptr getelementptr inbounds ([101 x i32], ptr getelementptr inbounds ([101 x [101 x i32]], ptr @a, i64 0, i64 2), i64 0, i64 2), align 8, !tbaa !5
  %47 = load i32, ptr %ans, align 4, !tbaa !5
  %add = add nsw i32 %47, %46
  store i32 %add, ptr %ans, align 4, !tbaa !5
  %48 = load i32, ptr getelementptr inbounds ([101 x i32], ptr getelementptr inbounds ([101 x [101 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 1), align 4, !tbaa !5
  store i32 %48, ptr getelementptr inbounds ([101 x i32], ptr getelementptr inbounds ([101 x [101 x i32]], ptr @b, i64 0, i64 1), i64 0, i64 1), align 4, !tbaa !5
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc75, %for.end63
  %49 = load i32, ptr %i, align 4, !tbaa !5
  %50 = load i32, ptr %num, align 4, !tbaa !5
  %sub65 = sub nsw i32 %50, 1
  %cmp66 = icmp sle i32 %49, %sub65
  br i1 %cmp66, label %for.body67, label %for.end77

for.body67:                                       ; preds = %for.cond64
  %51 = load i32, ptr %i, align 4, !tbaa !5
  %add68 = add nsw i32 %51, 1
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom69
  %arrayidx71 = getelementptr inbounds [101 x i32], ptr %arrayidx70, i64 0, i64 1
  %52 = load i32, ptr %arrayidx71, align 4, !tbaa !5
  %53 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom72 = sext i32 %53 to i64
  %arrayidx73 = getelementptr inbounds [101 x [101 x i32]], ptr @b, i64 0, i64 %idxprom72
  %arrayidx74 = getelementptr inbounds [101 x i32], ptr %arrayidx73, i64 0, i64 1
  store i32 %52, ptr %arrayidx74, align 4, !tbaa !5
  br label %for.inc75

for.inc75:                                        ; preds = %for.body67
  %54 = load i32, ptr %i, align 4, !tbaa !5
  %inc76 = add nsw i32 %54, 1
  store i32 %inc76, ptr %i, align 4, !tbaa !5
  br label %for.cond64, !llvm.loop !17

for.end77:                                        ; preds = %for.cond64
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc87, %for.end77
  %55 = load i32, ptr %i, align 4, !tbaa !5
  %56 = load i32, ptr %num, align 4, !tbaa !5
  %sub79 = sub nsw i32 %56, 1
  %cmp80 = icmp sle i32 %55, %sub79
  br i1 %cmp80, label %for.body81, label %for.end89

for.body81:                                       ; preds = %for.cond78
  %57 = load i32, ptr %i, align 4, !tbaa !5
  %add82 = add nsw i32 %57, 1
  %idxprom83 = sext i32 %add82 to i64
  %arrayidx84 = getelementptr inbounds [101 x i32], ptr getelementptr inbounds ([101 x [101 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 %idxprom83
  %58 = load i32, ptr %arrayidx84, align 4, !tbaa !5
  %59 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom85 = sext i32 %59 to i64
  %arrayidx86 = getelementptr inbounds [101 x i32], ptr getelementptr inbounds ([101 x [101 x i32]], ptr @b, i64 0, i64 1), i64 0, i64 %idxprom85
  store i32 %58, ptr %arrayidx86, align 4, !tbaa !5
  br label %for.inc87

for.inc87:                                        ; preds = %for.body81
  %60 = load i32, ptr %i, align 4, !tbaa !5
  %inc88 = add nsw i32 %60, 1
  store i32 %inc88, ptr %i, align 4, !tbaa !5
  br label %for.cond78, !llvm.loop !18

for.end89:                                        ; preds = %for.cond78
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc111, %for.end89
  %61 = load i32, ptr %i, align 4, !tbaa !5
  %62 = load i32, ptr %num, align 4, !tbaa !5
  %sub91 = sub nsw i32 %62, 1
  %cmp92 = icmp sle i32 %61, %sub91
  br i1 %cmp92, label %for.body93, label %for.end113

for.body93:                                       ; preds = %for.cond90
  store i32 2, ptr %j, align 4, !tbaa !5
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc108, %for.body93
  %63 = load i32, ptr %j, align 4, !tbaa !5
  %64 = load i32, ptr %num, align 4, !tbaa !5
  %sub95 = sub nsw i32 %64, 1
  %cmp96 = icmp sle i32 %63, %sub95
  br i1 %cmp96, label %for.body97, label %for.end110

for.body97:                                       ; preds = %for.cond94
  %65 = load i32, ptr %i, align 4, !tbaa !5
  %add98 = add nsw i32 %65, 1
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom99
  %66 = load i32, ptr %j, align 4, !tbaa !5
  %add101 = add nsw i32 %66, 1
  %idxprom102 = sext i32 %add101 to i64
  %arrayidx103 = getelementptr inbounds [101 x i32], ptr %arrayidx100, i64 0, i64 %idxprom102
  %67 = load i32, ptr %arrayidx103, align 4, !tbaa !5
  %68 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom104 = sext i32 %68 to i64
  %arrayidx105 = getelementptr inbounds [101 x [101 x i32]], ptr @b, i64 0, i64 %idxprom104
  %69 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom106 = sext i32 %69 to i64
  %arrayidx107 = getelementptr inbounds [101 x i32], ptr %arrayidx105, i64 0, i64 %idxprom106
  store i32 %67, ptr %arrayidx107, align 4, !tbaa !5
  br label %for.inc108

for.inc108:                                       ; preds = %for.body97
  %70 = load i32, ptr %j, align 4, !tbaa !5
  %inc109 = add nsw i32 %70, 1
  store i32 %inc109, ptr %j, align 4, !tbaa !5
  br label %for.cond94, !llvm.loop !19

for.end110:                                       ; preds = %for.cond94
  br label %for.inc111

for.inc111:                                       ; preds = %for.end110
  %71 = load i32, ptr %i, align 4, !tbaa !5
  %inc112 = add nsw i32 %71, 1
  store i32 %inc112, ptr %i, align 4, !tbaa !5
  br label %for.cond90, !llvm.loop !20

for.end113:                                       ; preds = %for.cond90
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond114

for.cond114:                                      ; preds = %for.inc133, %for.end113
  %72 = load i32, ptr %i, align 4, !tbaa !5
  %73 = load i32, ptr %num, align 4, !tbaa !5
  %sub115 = sub nsw i32 %73, 1
  %cmp116 = icmp sle i32 %72, %sub115
  br i1 %cmp116, label %for.body117, label %for.end135

for.body117:                                      ; preds = %for.cond114
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond118

for.cond118:                                      ; preds = %for.inc130, %for.body117
  %74 = load i32, ptr %j, align 4, !tbaa !5
  %75 = load i32, ptr %num, align 4, !tbaa !5
  %sub119 = sub nsw i32 %75, 1
  %cmp120 = icmp sle i32 %74, %sub119
  br i1 %cmp120, label %for.body121, label %for.end132

for.body121:                                      ; preds = %for.cond118
  %76 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom122 = sext i32 %76 to i64
  %arrayidx123 = getelementptr inbounds [101 x [101 x i32]], ptr @b, i64 0, i64 %idxprom122
  %77 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom124 = sext i32 %77 to i64
  %arrayidx125 = getelementptr inbounds [101 x i32], ptr %arrayidx123, i64 0, i64 %idxprom124
  %78 = load i32, ptr %arrayidx125, align 4, !tbaa !5
  %79 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom126 = sext i32 %79 to i64
  %arrayidx127 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom126
  %80 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom128 = sext i32 %80 to i64
  %arrayidx129 = getelementptr inbounds [101 x i32], ptr %arrayidx127, i64 0, i64 %idxprom128
  store i32 %78, ptr %arrayidx129, align 4, !tbaa !5
  br label %for.inc130

for.inc130:                                       ; preds = %for.body121
  %81 = load i32, ptr %j, align 4, !tbaa !5
  %inc131 = add nsw i32 %81, 1
  store i32 %inc131, ptr %j, align 4, !tbaa !5
  br label %for.cond118, !llvm.loop !21

for.end132:                                       ; preds = %for.cond118
  br label %for.inc133

for.inc133:                                       ; preds = %for.end132
  %82 = load i32, ptr %i, align 4, !tbaa !5
  %inc134 = add nsw i32 %82, 1
  store i32 %inc134, ptr %i, align 4, !tbaa !5
  br label %for.cond114, !llvm.loop !22

for.end135:                                       ; preds = %for.cond114
  %83 = load i32, ptr %num, align 4, !tbaa !5
  %dec = add nsw i32 %83, -1
  store i32 %dec, ptr %num, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  %84 = load i32, ptr %ans, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %84)
  %call136 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ans) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !24
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !27
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !27
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #3 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !24
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !24, !nonnull !28, !align !29
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !24, !nonnull !28, !align !29
  %vtable = load ptr, ptr %1, align 8, !tbaa !30
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

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr @n, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr @n, align 4, !tbaa !5
  %cmp5 = icmp sle i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !32

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !33

for.end12:                                        ; preds = %for.cond1
  call void @_Z1fv()
  br label %for.inc13

for.inc13:                                        ; preds = %for.end12
  %10 = load i32, ptr %k, align 4, !tbaa !5
  %inc14 = add nsw i32 %10, 1
  store i32 %inc14, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !34

for.end15:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #3 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !24
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !24, !nonnull !28, !align !29
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !35
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !37
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !38
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !37
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #3 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !54
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !54
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !54
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #0 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !54
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !37
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !55
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
  %vtable = load ptr, ptr %this1, align 8, !tbaa !30
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

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSSo", !26, i64 0}
!26 = !{!"any pointer", !7, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{}
!29 = !{i64 8}
!30 = !{!31, !31, i64 0}
!31 = !{!"vtable pointer", !8, i64 0}
!32 = distinct !{!32, !10, !11}
!33 = distinct !{!33, !10, !11}
!34 = distinct !{!34, !10, !11}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !26, i64 0}
!37 = !{!7, !7, i64 0}
!38 = !{!39, !51, i64 240}
!39 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !40, i64 0, !25, i64 216, !7, i64 224, !49, i64 225, !50, i64 232, !51, i64 240, !52, i64 248, !53, i64 256}
!40 = !{!"_ZTSSt8ios_base", !41, i64 8, !41, i64 16, !42, i64 24, !43, i64 28, !43, i64 32, !44, i64 40, !45, i64 48, !7, i64 64, !6, i64 192, !46, i64 200, !47, i64 208}
!41 = !{!"long", !7, i64 0}
!42 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!43 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!44 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !26, i64 0}
!45 = !{!"_ZTSNSt8ios_base6_WordsE", !26, i64 0, !41, i64 8}
!46 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !26, i64 0}
!47 = !{!"_ZTSSt6locale", !48, i64 0}
!48 = !{!"p1 _ZTSNSt6locale5_ImplE", !26, i64 0}
!49 = !{!"bool", !7, i64 0}
!50 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !26, i64 0}
!51 = !{!"p1 _ZTSSt5ctypeIcE", !26, i64 0}
!52 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !26, i64 0}
!53 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !26, i64 0}
!54 = !{!51, !51, i64 0}
!55 = !{!56, !7, i64 56}
!56 = !{!"_ZTSSt5ctypeIcE", !57, i64 0, !58, i64 16, !49, i64 24, !59, i64 32, !59, i64 40, !60, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!57 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!58 = !{!"p1 _ZTS15__locale_struct", !26, i64 0}
!59 = !{!"p1 int", !26, i64 0}
!60 = !{!"p1 short", !26, i64 0}
