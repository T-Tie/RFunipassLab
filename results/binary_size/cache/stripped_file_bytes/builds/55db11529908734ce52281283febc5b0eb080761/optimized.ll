; ModuleID = '/tmp/tmpsisdh41s.cpp'
source_filename = "/tmp/tmpsisdh41s.cpp"
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
  %sum = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %k = alloca i32, align 4
  %t = alloca i32, align 4
  %q = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  store i32 0, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  store i32 0, ptr %j, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #6
  store i32 0, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #6
  store i32 0, ptr %t, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc157, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end159

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
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #6
  store i32 0, ptr %q, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc152, %for.end12
  %10 = load i32, ptr %q, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %11, 1
  %cmp14 = icmp slt i32 %10, %sub
  br i1 %cmp14, label %for.body15, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #6
  br label %for.end154

for.body15:                                       ; preds = %for.cond13
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc55, %for.body15
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %14 = load i32, ptr %q, align 4, !tbaa !5
  %sub17 = sub nsw i32 %13, %14
  %cmp18 = icmp slt i32 %12, %sub17
  br i1 %cmp18, label %for.body19, label %for.end57

for.body19:                                       ; preds = %for.cond16
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [100 x i32], ptr %arrayidx21, i64 0, i64 0
  %16 = load i32, ptr %arrayidx22, align 16, !tbaa !5
  store i32 %16, ptr %t, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc36, %for.body19
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %18 = load i32, ptr %n, align 4, !tbaa !5
  %19 = load i32, ptr %q, align 4, !tbaa !5
  %sub24 = sub nsw i32 %18, %19
  %cmp25 = icmp slt i32 %17, %sub24
  br i1 %cmp25, label %for.body26, label %for.end38

for.body26:                                       ; preds = %for.cond23
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %20 to i64
  %arrayidx28 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom27
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom29 = sext i32 %21 to i64
  %arrayidx30 = getelementptr inbounds [100 x i32], ptr %arrayidx28, i64 0, i64 %idxprom29
  %22 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %23 = load i32, ptr %t, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %22, %23
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %for.body26
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %24 to i64
  %arrayidx33 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom32
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom34 = sext i32 %25 to i64
  %arrayidx35 = getelementptr inbounds [100 x i32], ptr %arrayidx33, i64 0, i64 %idxprom34
  %26 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  store i32 %26, ptr %t, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body26
  br label %for.inc36

for.inc36:                                        ; preds = %if.end
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %inc37 = add nsw i32 %27, 1
  store i32 %inc37, ptr %j, align 4, !tbaa !5
  br label %for.cond23, !llvm.loop !13

for.end38:                                        ; preds = %for.cond23
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc52, %for.end38
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %29 = load i32, ptr %n, align 4, !tbaa !5
  %30 = load i32, ptr %q, align 4, !tbaa !5
  %sub40 = sub nsw i32 %29, %30
  %cmp41 = icmp slt i32 %28, %sub40
  br i1 %cmp41, label %for.body42, label %for.end54

for.body42:                                       ; preds = %for.cond39
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %31 to i64
  %arrayidx44 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom43
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom45 = sext i32 %32 to i64
  %arrayidx46 = getelementptr inbounds [100 x i32], ptr %arrayidx44, i64 0, i64 %idxprom45
  %33 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %34 = load i32, ptr %t, align 4, !tbaa !5
  %sub47 = sub nsw i32 %33, %34
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %35 to i64
  %arrayidx49 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom48
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom50 = sext i32 %36 to i64
  %arrayidx51 = getelementptr inbounds [100 x i32], ptr %arrayidx49, i64 0, i64 %idxprom50
  store i32 %sub47, ptr %arrayidx51, align 4, !tbaa !5
  br label %for.inc52

for.inc52:                                        ; preds = %for.body42
  %37 = load i32, ptr %j, align 4, !tbaa !5
  %inc53 = add nsw i32 %37, 1
  store i32 %inc53, ptr %j, align 4, !tbaa !5
  br label %for.cond39, !llvm.loop !14

for.end54:                                        ; preds = %for.cond39
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %inc56 = add nsw i32 %38, 1
  store i32 %inc56, ptr %i, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !15

for.end57:                                        ; preds = %for.cond16
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc99, %for.end57
  %39 = load i32, ptr %j, align 4, !tbaa !5
  %40 = load i32, ptr %n, align 4, !tbaa !5
  %41 = load i32, ptr %q, align 4, !tbaa !5
  %sub59 = sub nsw i32 %40, %41
  %cmp60 = icmp slt i32 %39, %sub59
  br i1 %cmp60, label %for.body61, label %for.end101

for.body61:                                       ; preds = %for.cond58
  %arrayidx62 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %42 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom63 = sext i32 %42 to i64
  %arrayidx64 = getelementptr inbounds [100 x i32], ptr %arrayidx62, i64 0, i64 %idxprom63
  %43 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  store i32 %43, ptr %t, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc80, %for.body61
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %45 = load i32, ptr %n, align 4, !tbaa !5
  %46 = load i32, ptr %q, align 4, !tbaa !5
  %sub66 = sub nsw i32 %45, %46
  %cmp67 = icmp slt i32 %44, %sub66
  br i1 %cmp67, label %for.body68, label %for.end82

for.body68:                                       ; preds = %for.cond65
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom69 = sext i32 %47 to i64
  %arrayidx70 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom69
  %48 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom71 = sext i32 %48 to i64
  %arrayidx72 = getelementptr inbounds [100 x i32], ptr %arrayidx70, i64 0, i64 %idxprom71
  %49 = load i32, ptr %arrayidx72, align 4, !tbaa !5
  %50 = load i32, ptr %t, align 4, !tbaa !5
  %cmp73 = icmp slt i32 %49, %50
  br i1 %cmp73, label %if.then74, label %if.end79

if.then74:                                        ; preds = %for.body68
  %51 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom75 = sext i32 %51 to i64
  %arrayidx76 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom75
  %52 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom77 = sext i32 %52 to i64
  %arrayidx78 = getelementptr inbounds [100 x i32], ptr %arrayidx76, i64 0, i64 %idxprom77
  %53 = load i32, ptr %arrayidx78, align 4, !tbaa !5
  store i32 %53, ptr %t, align 4, !tbaa !5
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %for.body68
  br label %for.inc80

for.inc80:                                        ; preds = %if.end79
  %54 = load i32, ptr %i, align 4, !tbaa !5
  %inc81 = add nsw i32 %54, 1
  store i32 %inc81, ptr %i, align 4, !tbaa !5
  br label %for.cond65, !llvm.loop !16

for.end82:                                        ; preds = %for.cond65
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc96, %for.end82
  %55 = load i32, ptr %i, align 4, !tbaa !5
  %56 = load i32, ptr %n, align 4, !tbaa !5
  %57 = load i32, ptr %q, align 4, !tbaa !5
  %sub84 = sub nsw i32 %56, %57
  %cmp85 = icmp slt i32 %55, %sub84
  br i1 %cmp85, label %for.body86, label %for.end98

for.body86:                                       ; preds = %for.cond83
  %58 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom87 = sext i32 %58 to i64
  %arrayidx88 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom87
  %59 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom89 = sext i32 %59 to i64
  %arrayidx90 = getelementptr inbounds [100 x i32], ptr %arrayidx88, i64 0, i64 %idxprom89
  %60 = load i32, ptr %arrayidx90, align 4, !tbaa !5
  %61 = load i32, ptr %t, align 4, !tbaa !5
  %sub91 = sub nsw i32 %60, %61
  %62 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom92 = sext i32 %62 to i64
  %arrayidx93 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom92
  %63 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom94 = sext i32 %63 to i64
  %arrayidx95 = getelementptr inbounds [100 x i32], ptr %arrayidx93, i64 0, i64 %idxprom94
  store i32 %sub91, ptr %arrayidx95, align 4, !tbaa !5
  br label %for.inc96

for.inc96:                                        ; preds = %for.body86
  %64 = load i32, ptr %i, align 4, !tbaa !5
  %inc97 = add nsw i32 %64, 1
  store i32 %inc97, ptr %i, align 4, !tbaa !5
  br label %for.cond83, !llvm.loop !17

for.end98:                                        ; preds = %for.cond83
  br label %for.inc99

for.inc99:                                        ; preds = %for.end98
  %65 = load i32, ptr %j, align 4, !tbaa !5
  %inc100 = add nsw i32 %65, 1
  store i32 %inc100, ptr %j, align 4, !tbaa !5
  br label %for.cond58, !llvm.loop !18

for.end101:                                       ; preds = %for.cond58
  %66 = load i32, ptr %sum, align 4, !tbaa !5
  %arrayidx102 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 1
  %arrayidx103 = getelementptr inbounds [100 x i32], ptr %arrayidx102, i64 0, i64 1
  %67 = load i32, ptr %arrayidx103, align 4, !tbaa !5
  %add = add nsw i32 %66, %67
  store i32 %add, ptr %sum, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc125, %for.end101
  %68 = load i32, ptr %i, align 4, !tbaa !5
  %69 = load i32, ptr %n, align 4, !tbaa !5
  %70 = load i32, ptr %q, align 4, !tbaa !5
  %sub105 = sub nsw i32 %69, %70
  %sub106 = sub nsw i32 %sub105, 1
  %cmp107 = icmp slt i32 %68, %sub106
  br i1 %cmp107, label %for.body108, label %for.end127

for.body108:                                      ; preds = %for.cond104
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc122, %for.body108
  %71 = load i32, ptr %j, align 4, !tbaa !5
  %72 = load i32, ptr %n, align 4, !tbaa !5
  %73 = load i32, ptr %q, align 4, !tbaa !5
  %sub110 = sub nsw i32 %72, %73
  %cmp111 = icmp slt i32 %71, %sub110
  br i1 %cmp111, label %for.body112, label %for.end124

for.body112:                                      ; preds = %for.cond109
  %74 = load i32, ptr %i, align 4, !tbaa !5
  %add113 = add nsw i32 %74, 1
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom114
  %75 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom116 = sext i32 %75 to i64
  %arrayidx117 = getelementptr inbounds [100 x i32], ptr %arrayidx115, i64 0, i64 %idxprom116
  %76 = load i32, ptr %arrayidx117, align 4, !tbaa !5
  %77 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom118 = sext i32 %77 to i64
  %arrayidx119 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom118
  %78 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom120 = sext i32 %78 to i64
  %arrayidx121 = getelementptr inbounds [100 x i32], ptr %arrayidx119, i64 0, i64 %idxprom120
  store i32 %76, ptr %arrayidx121, align 4, !tbaa !5
  br label %for.inc122

for.inc122:                                       ; preds = %for.body112
  %79 = load i32, ptr %j, align 4, !tbaa !5
  %inc123 = add nsw i32 %79, 1
  store i32 %inc123, ptr %j, align 4, !tbaa !5
  br label %for.cond109, !llvm.loop !19

for.end124:                                       ; preds = %for.cond109
  br label %for.inc125

for.inc125:                                       ; preds = %for.end124
  %80 = load i32, ptr %i, align 4, !tbaa !5
  %inc126 = add nsw i32 %80, 1
  store i32 %inc126, ptr %i, align 4, !tbaa !5
  br label %for.cond104, !llvm.loop !20

for.end127:                                       ; preds = %for.cond104
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond128

for.cond128:                                      ; preds = %for.inc149, %for.end127
  %81 = load i32, ptr %j, align 4, !tbaa !5
  %82 = load i32, ptr %n, align 4, !tbaa !5
  %83 = load i32, ptr %q, align 4, !tbaa !5
  %sub129 = sub nsw i32 %82, %83
  %sub130 = sub nsw i32 %sub129, 1
  %cmp131 = icmp slt i32 %81, %sub130
  br i1 %cmp131, label %for.body132, label %for.end151

for.body132:                                      ; preds = %for.cond128
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond133

for.cond133:                                      ; preds = %for.inc146, %for.body132
  %84 = load i32, ptr %i, align 4, !tbaa !5
  %85 = load i32, ptr %n, align 4, !tbaa !5
  %86 = load i32, ptr %q, align 4, !tbaa !5
  %sub134 = sub nsw i32 %85, %86
  %cmp135 = icmp slt i32 %84, %sub134
  br i1 %cmp135, label %for.body136, label %for.end148

for.body136:                                      ; preds = %for.cond133
  %87 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom137 = sext i32 %87 to i64
  %arrayidx138 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom137
  %88 = load i32, ptr %j, align 4, !tbaa !5
  %add139 = add nsw i32 %88, 1
  %idxprom140 = sext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds [100 x i32], ptr %arrayidx138, i64 0, i64 %idxprom140
  %89 = load i32, ptr %arrayidx141, align 4, !tbaa !5
  %90 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom142 = sext i32 %90 to i64
  %arrayidx143 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom142
  %91 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom144 = sext i32 %91 to i64
  %arrayidx145 = getelementptr inbounds [100 x i32], ptr %arrayidx143, i64 0, i64 %idxprom144
  store i32 %89, ptr %arrayidx145, align 4, !tbaa !5
  br label %for.inc146

for.inc146:                                       ; preds = %for.body136
  %92 = load i32, ptr %i, align 4, !tbaa !5
  %inc147 = add nsw i32 %92, 1
  store i32 %inc147, ptr %i, align 4, !tbaa !5
  br label %for.cond133, !llvm.loop !21

for.end148:                                       ; preds = %for.cond133
  br label %for.inc149

for.inc149:                                       ; preds = %for.end148
  %93 = load i32, ptr %j, align 4, !tbaa !5
  %inc150 = add nsw i32 %93, 1
  store i32 %inc150, ptr %j, align 4, !tbaa !5
  br label %for.cond128, !llvm.loop !22

for.end151:                                       ; preds = %for.cond128
  br label %for.inc152

for.inc152:                                       ; preds = %for.end151
  %94 = load i32, ptr %q, align 4, !tbaa !5
  %inc153 = add nsw i32 %94, 1
  store i32 %inc153, ptr %q, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !23

for.end154:                                       ; preds = %for.cond.cleanup
  %95 = load i32, ptr %sum, align 4, !tbaa !5
  %call155 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %95)
  %call156 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call155, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc157

for.inc157:                                       ; preds = %for.end154
  %96 = load i32, ptr %k, align 4, !tbaa !5
  %inc158 = add nsw i32 %96, 1
  store i32 %inc158, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !24

for.end159:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
