; ModuleID = '/tmp/tmpv5ig_8an.cpp'
source_filename = "/tmp/tmpv5ig_8an.cpp"
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
  %a = alloca [102 x [102 x i32]], align 16
  %min = alloca i32, align 4
  %sum = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.start.p0(i64 41616, ptr %a) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #6
  store i32 100000, ptr %min, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #6
  store i32 0, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc150, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end152

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %sum, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp sle i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [102 x [102 x i32]], ptr %a, i64 0, i64 %idxprom
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [102 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
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
  store i32 0, ptr %t, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc145, %for.end12
  %10 = load i32, ptr %t, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %11, 2
  %cmp14 = icmp sle i32 %10, %sub
  br i1 %cmp14, label %for.body15, label %for.end147

for.body15:                                       ; preds = %for.cond13
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc52, %for.body15
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %14 = load i32, ptr %t, align 4, !tbaa !5
  %sub17 = sub nsw i32 %13, %14
  %cmp18 = icmp sle i32 %12, %sub17
  br i1 %cmp18, label %for.body19, label %for.end54

for.body19:                                       ; preds = %for.cond16
  store i32 100000, ptr %min, align 4, !tbaa !5
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc33, %for.body19
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %16 = load i32, ptr %n, align 4, !tbaa !5
  %17 = load i32, ptr %t, align 4, !tbaa !5
  %sub21 = sub nsw i32 %16, %17
  %cmp22 = icmp sle i32 %15, %sub21
  br i1 %cmp22, label %for.body23, label %for.end35

for.body23:                                       ; preds = %for.cond20
  %18 = load i32, ptr %min, align 4, !tbaa !5
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom24 = sext i32 %19 to i64
  %arrayidx25 = getelementptr inbounds [102 x [102 x i32]], ptr %a, i64 0, i64 %idxprom24
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom26 = sext i32 %20 to i64
  %arrayidx27 = getelementptr inbounds [102 x i32], ptr %arrayidx25, i64 0, i64 %idxprom26
  %21 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %18, %21
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body23
  %22 = load i32, ptr %min, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %for.body23
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %23 to i64
  %arrayidx30 = getelementptr inbounds [102 x [102 x i32]], ptr %a, i64 0, i64 %idxprom29
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom31 = sext i32 %24 to i64
  %arrayidx32 = getelementptr inbounds [102 x i32], ptr %arrayidx30, i64 0, i64 %idxprom31
  %25 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ %25, %cond.false ]
  store i32 %cond, ptr %min, align 4, !tbaa !5
  br label %for.inc33

for.inc33:                                        ; preds = %cond.end
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %inc34 = add nsw i32 %26, 1
  store i32 %inc34, ptr %j, align 4, !tbaa !5
  br label %for.cond20, !llvm.loop !13

for.end35:                                        ; preds = %for.cond20
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc49, %for.end35
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %28 = load i32, ptr %n, align 4, !tbaa !5
  %29 = load i32, ptr %t, align 4, !tbaa !5
  %sub37 = sub nsw i32 %28, %29
  %cmp38 = icmp sle i32 %27, %sub37
  br i1 %cmp38, label %for.body39, label %for.end51

for.body39:                                       ; preds = %for.cond36
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %30 to i64
  %arrayidx41 = getelementptr inbounds [102 x [102 x i32]], ptr %a, i64 0, i64 %idxprom40
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom42 = sext i32 %31 to i64
  %arrayidx43 = getelementptr inbounds [102 x i32], ptr %arrayidx41, i64 0, i64 %idxprom42
  %32 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %33 = load i32, ptr %min, align 4, !tbaa !5
  %sub44 = sub nsw i32 %32, %33
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom45 = sext i32 %34 to i64
  %arrayidx46 = getelementptr inbounds [102 x [102 x i32]], ptr %a, i64 0, i64 %idxprom45
  %35 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom47 = sext i32 %35 to i64
  %arrayidx48 = getelementptr inbounds [102 x i32], ptr %arrayidx46, i64 0, i64 %idxprom47
  store i32 %sub44, ptr %arrayidx48, align 4, !tbaa !5
  br label %for.inc49

for.inc49:                                        ; preds = %for.body39
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %inc50 = add nsw i32 %36, 1
  store i32 %inc50, ptr %j, align 4, !tbaa !5
  br label %for.cond36, !llvm.loop !14

for.end51:                                        ; preds = %for.cond36
  br label %for.inc52

for.inc52:                                        ; preds = %for.end51
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %inc53 = add nsw i32 %37, 1
  store i32 %inc53, ptr %i, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !15

for.end54:                                        ; preds = %for.cond16
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc95, %for.end54
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %39 = load i32, ptr %n, align 4, !tbaa !5
  %40 = load i32, ptr %t, align 4, !tbaa !5
  %sub56 = sub nsw i32 %39, %40
  %cmp57 = icmp sle i32 %38, %sub56
  br i1 %cmp57, label %for.body58, label %for.end97

for.body58:                                       ; preds = %for.cond55
  store i32 100000, ptr %min, align 4, !tbaa !5
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc76, %for.body58
  %41 = load i32, ptr %j, align 4, !tbaa !5
  %42 = load i32, ptr %n, align 4, !tbaa !5
  %43 = load i32, ptr %t, align 4, !tbaa !5
  %sub60 = sub nsw i32 %42, %43
  %cmp61 = icmp sle i32 %41, %sub60
  br i1 %cmp61, label %for.body62, label %for.end78

for.body62:                                       ; preds = %for.cond59
  %44 = load i32, ptr %min, align 4, !tbaa !5
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom63 = sext i32 %45 to i64
  %arrayidx64 = getelementptr inbounds [102 x [102 x i32]], ptr %a, i64 0, i64 %idxprom63
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom65 = sext i32 %46 to i64
  %arrayidx66 = getelementptr inbounds [102 x i32], ptr %arrayidx64, i64 0, i64 %idxprom65
  %47 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  %cmp67 = icmp slt i32 %44, %47
  br i1 %cmp67, label %cond.true68, label %cond.false69

cond.true68:                                      ; preds = %for.body62
  %48 = load i32, ptr %min, align 4, !tbaa !5
  br label %cond.end74

cond.false69:                                     ; preds = %for.body62
  %49 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom70 = sext i32 %49 to i64
  %arrayidx71 = getelementptr inbounds [102 x [102 x i32]], ptr %a, i64 0, i64 %idxprom70
  %50 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom72 = sext i32 %50 to i64
  %arrayidx73 = getelementptr inbounds [102 x i32], ptr %arrayidx71, i64 0, i64 %idxprom72
  %51 = load i32, ptr %arrayidx73, align 4, !tbaa !5
  br label %cond.end74

cond.end74:                                       ; preds = %cond.false69, %cond.true68
  %cond75 = phi i32 [ %48, %cond.true68 ], [ %51, %cond.false69 ]
  store i32 %cond75, ptr %min, align 4, !tbaa !5
  br label %for.inc76

for.inc76:                                        ; preds = %cond.end74
  %52 = load i32, ptr %j, align 4, !tbaa !5
  %inc77 = add nsw i32 %52, 1
  store i32 %inc77, ptr %j, align 4, !tbaa !5
  br label %for.cond59, !llvm.loop !16

for.end78:                                        ; preds = %for.cond59
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc92, %for.end78
  %53 = load i32, ptr %j, align 4, !tbaa !5
  %54 = load i32, ptr %n, align 4, !tbaa !5
  %55 = load i32, ptr %t, align 4, !tbaa !5
  %sub80 = sub nsw i32 %54, %55
  %cmp81 = icmp sle i32 %53, %sub80
  br i1 %cmp81, label %for.body82, label %for.end94

for.body82:                                       ; preds = %for.cond79
  %56 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom83 = sext i32 %56 to i64
  %arrayidx84 = getelementptr inbounds [102 x [102 x i32]], ptr %a, i64 0, i64 %idxprom83
  %57 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom85 = sext i32 %57 to i64
  %arrayidx86 = getelementptr inbounds [102 x i32], ptr %arrayidx84, i64 0, i64 %idxprom85
  %58 = load i32, ptr %arrayidx86, align 4, !tbaa !5
  %59 = load i32, ptr %min, align 4, !tbaa !5
  %sub87 = sub nsw i32 %58, %59
  %60 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom88 = sext i32 %60 to i64
  %arrayidx89 = getelementptr inbounds [102 x [102 x i32]], ptr %a, i64 0, i64 %idxprom88
  %61 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom90 = sext i32 %61 to i64
  %arrayidx91 = getelementptr inbounds [102 x i32], ptr %arrayidx89, i64 0, i64 %idxprom90
  store i32 %sub87, ptr %arrayidx91, align 4, !tbaa !5
  br label %for.inc92

for.inc92:                                        ; preds = %for.body82
  %62 = load i32, ptr %j, align 4, !tbaa !5
  %inc93 = add nsw i32 %62, 1
  store i32 %inc93, ptr %j, align 4, !tbaa !5
  br label %for.cond79, !llvm.loop !17

for.end94:                                        ; preds = %for.cond79
  br label %for.inc95

for.inc95:                                        ; preds = %for.end94
  %63 = load i32, ptr %i, align 4, !tbaa !5
  %inc96 = add nsw i32 %63, 1
  store i32 %inc96, ptr %i, align 4, !tbaa !5
  br label %for.cond55, !llvm.loop !18

for.end97:                                        ; preds = %for.cond55
  %64 = load i32, ptr %sum, align 4, !tbaa !5
  %arrayidx98 = getelementptr inbounds [102 x [102 x i32]], ptr %a, i64 0, i64 2
  %arrayidx99 = getelementptr inbounds [102 x i32], ptr %arrayidx98, i64 0, i64 2
  %65 = load i32, ptr %arrayidx99, align 8, !tbaa !5
  %add = add nsw i32 %64, %65
  store i32 %add, ptr %sum, align 4, !tbaa !5
  store i32 3, ptr %i, align 4, !tbaa !5
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc118, %for.end97
  %66 = load i32, ptr %i, align 4, !tbaa !5
  %67 = load i32, ptr %n, align 4, !tbaa !5
  %68 = load i32, ptr %t, align 4, !tbaa !5
  %sub101 = sub nsw i32 %67, %68
  %cmp102 = icmp sle i32 %66, %sub101
  br i1 %cmp102, label %for.body103, label %for.end120

for.body103:                                      ; preds = %for.cond100
  %69 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom104 = sext i32 %69 to i64
  %arrayidx105 = getelementptr inbounds [102 x [102 x i32]], ptr %a, i64 0, i64 %idxprom104
  %arrayidx106 = getelementptr inbounds [102 x i32], ptr %arrayidx105, i64 0, i64 1
  %70 = load i32, ptr %arrayidx106, align 4, !tbaa !5
  %71 = load i32, ptr %i, align 4, !tbaa !5
  %sub107 = sub nsw i32 %71, 1
  %idxprom108 = sext i32 %sub107 to i64
  %arrayidx109 = getelementptr inbounds [102 x [102 x i32]], ptr %a, i64 0, i64 %idxprom108
  %arrayidx110 = getelementptr inbounds [102 x i32], ptr %arrayidx109, i64 0, i64 1
  store i32 %70, ptr %arrayidx110, align 4, !tbaa !5
  %arrayidx111 = getelementptr inbounds [102 x [102 x i32]], ptr %a, i64 0, i64 1
  %72 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom112 = sext i32 %72 to i64
  %arrayidx113 = getelementptr inbounds [102 x i32], ptr %arrayidx111, i64 0, i64 %idxprom112
  %73 = load i32, ptr %arrayidx113, align 4, !tbaa !5
  %arrayidx114 = getelementptr inbounds [102 x [102 x i32]], ptr %a, i64 0, i64 1
  %74 = load i32, ptr %i, align 4, !tbaa !5
  %sub115 = sub nsw i32 %74, 1
  %idxprom116 = sext i32 %sub115 to i64
  %arrayidx117 = getelementptr inbounds [102 x i32], ptr %arrayidx114, i64 0, i64 %idxprom116
  store i32 %73, ptr %arrayidx117, align 4, !tbaa !5
  br label %for.inc118

for.inc118:                                       ; preds = %for.body103
  %75 = load i32, ptr %i, align 4, !tbaa !5
  %inc119 = add nsw i32 %75, 1
  store i32 %inc119, ptr %i, align 4, !tbaa !5
  br label %for.cond100, !llvm.loop !19

for.end120:                                       ; preds = %for.cond100
  store i32 3, ptr %i, align 4, !tbaa !5
  br label %for.cond121

for.cond121:                                      ; preds = %for.inc142, %for.end120
  %76 = load i32, ptr %i, align 4, !tbaa !5
  %77 = load i32, ptr %n, align 4, !tbaa !5
  %78 = load i32, ptr %t, align 4, !tbaa !5
  %sub122 = sub nsw i32 %77, %78
  %cmp123 = icmp sle i32 %76, %sub122
  br i1 %cmp123, label %for.body124, label %for.end144

for.body124:                                      ; preds = %for.cond121
  store i32 3, ptr %j, align 4, !tbaa !5
  br label %for.cond125

for.cond125:                                      ; preds = %for.inc139, %for.body124
  %79 = load i32, ptr %j, align 4, !tbaa !5
  %80 = load i32, ptr %n, align 4, !tbaa !5
  %81 = load i32, ptr %t, align 4, !tbaa !5
  %sub126 = sub nsw i32 %80, %81
  %cmp127 = icmp sle i32 %79, %sub126
  br i1 %cmp127, label %for.body128, label %for.end141

for.body128:                                      ; preds = %for.cond125
  %82 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom129 = sext i32 %82 to i64
  %arrayidx130 = getelementptr inbounds [102 x [102 x i32]], ptr %a, i64 0, i64 %idxprom129
  %83 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom131 = sext i32 %83 to i64
  %arrayidx132 = getelementptr inbounds [102 x i32], ptr %arrayidx130, i64 0, i64 %idxprom131
  %84 = load i32, ptr %arrayidx132, align 4, !tbaa !5
  %85 = load i32, ptr %i, align 4, !tbaa !5
  %sub133 = sub nsw i32 %85, 1
  %idxprom134 = sext i32 %sub133 to i64
  %arrayidx135 = getelementptr inbounds [102 x [102 x i32]], ptr %a, i64 0, i64 %idxprom134
  %86 = load i32, ptr %j, align 4, !tbaa !5
  %sub136 = sub nsw i32 %86, 1
  %idxprom137 = sext i32 %sub136 to i64
  %arrayidx138 = getelementptr inbounds [102 x i32], ptr %arrayidx135, i64 0, i64 %idxprom137
  store i32 %84, ptr %arrayidx138, align 4, !tbaa !5
  br label %for.inc139

for.inc139:                                       ; preds = %for.body128
  %87 = load i32, ptr %j, align 4, !tbaa !5
  %inc140 = add nsw i32 %87, 1
  store i32 %inc140, ptr %j, align 4, !tbaa !5
  br label %for.cond125, !llvm.loop !20

for.end141:                                       ; preds = %for.cond125
  br label %for.inc142

for.inc142:                                       ; preds = %for.end141
  %88 = load i32, ptr %i, align 4, !tbaa !5
  %inc143 = add nsw i32 %88, 1
  store i32 %inc143, ptr %i, align 4, !tbaa !5
  br label %for.cond121, !llvm.loop !21

for.end144:                                       ; preds = %for.cond121
  br label %for.inc145

for.inc145:                                       ; preds = %for.end144
  %89 = load i32, ptr %t, align 4, !tbaa !5
  %inc146 = add nsw i32 %89, 1
  store i32 %inc146, ptr %t, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !22

for.end147:                                       ; preds = %for.cond13
  %90 = load i32, ptr %sum, align 4, !tbaa !5
  %call148 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %90)
  %call149 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call148, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc150

for.inc150:                                       ; preds = %for.end147
  %91 = load i32, ptr %k, align 4, !tbaa !5
  %inc151 = add nsw i32 %91, 1
  store i32 %inc151, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !23

for.end152:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #6
  call void @llvm.lifetime.end.p0(i64 41616, ptr %a) #6
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
  store ptr %this, ptr %this.addr, align 8, !tbaa !24
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !27
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !27
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
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

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !24
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !24, !nonnull !28, !align !29
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !32
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !34
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !35
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !34
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #4 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !51
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !51
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !51
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #3 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !51
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !34
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !52
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !34
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !34
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !34
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
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSSo", !26, i64 0}
!26 = !{!"any pointer", !7, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{}
!29 = !{i64 8}
!30 = !{!31, !31, i64 0}
!31 = !{!"vtable pointer", !8, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !26, i64 0}
!34 = !{!7, !7, i64 0}
!35 = !{!36, !48, i64 240}
!36 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !37, i64 0, !25, i64 216, !7, i64 224, !46, i64 225, !47, i64 232, !48, i64 240, !49, i64 248, !50, i64 256}
!37 = !{!"_ZTSSt8ios_base", !38, i64 8, !38, i64 16, !39, i64 24, !40, i64 28, !40, i64 32, !41, i64 40, !42, i64 48, !7, i64 64, !6, i64 192, !43, i64 200, !44, i64 208}
!38 = !{!"long", !7, i64 0}
!39 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!40 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!41 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !26, i64 0}
!42 = !{!"_ZTSNSt8ios_base6_WordsE", !26, i64 0, !38, i64 8}
!43 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !26, i64 0}
!44 = !{!"_ZTSSt6locale", !45, i64 0}
!45 = !{!"p1 _ZTSNSt6locale5_ImplE", !26, i64 0}
!46 = !{!"bool", !7, i64 0}
!47 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !26, i64 0}
!48 = !{!"p1 _ZTSSt5ctypeIcE", !26, i64 0}
!49 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !26, i64 0}
!50 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !26, i64 0}
!51 = !{!48, !48, i64 0}
!52 = !{!53, !7, i64 56}
!53 = !{!"_ZTSSt5ctypeIcE", !54, i64 0, !55, i64 16, !46, i64 24, !56, i64 32, !56, i64 40, !57, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!54 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!55 = !{!"p1 _ZTS15__locale_struct", !26, i64 0}
!56 = !{!"p1 int", !26, i64 0}
!57 = !{!"p1 short", !26, i64 0}
