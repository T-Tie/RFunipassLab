; ModuleID = '/tmp/tmpdt89ij21.cpp'
source_filename = "/tmp/tmpdt89ij21.cpp"
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

$_ZSt3minIiERKT_S2_S2_ = comdat any

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [111 x [111 x i32]], align 16
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %Min = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.start.p0(i64 49284, ptr %a) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %Min) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc184, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end186

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %sum, align 4, !tbaa !5
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp sle i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 %idxprom
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [111 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end12:                                        ; preds = %for.cond1
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc179, %for.end12
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %10, %11
  br i1 %cmp14, label %for.body15, label %for.end181

for.body15:                                       ; preds = %for.cond13
  store i32 10000, ptr %Min, align 4, !tbaa !5
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %12, 1
  store i32 %add, ptr %l, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc23, %for.body15
  %13 = load i32, ptr %l, align 4, !tbaa !5
  %14 = load i32, ptr %n, align 4, !tbaa !5
  %cmp17 = icmp sle i32 %13, %14
  br i1 %cmp17, label %for.body18, label %for.end25

for.body18:                                       ; preds = %for.cond16
  %arrayidx19 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 1
  %15 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [111 x i32], ptr %arrayidx19, i64 0, i64 %idxprom20
  %call22 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %Min, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx21)
  %16 = load i32, ptr %call22, align 4, !tbaa !5
  store i32 %16, ptr %Min, align 4, !tbaa !5
  br label %for.inc23

for.inc23:                                        ; preds = %for.body18
  %17 = load i32, ptr %l, align 4, !tbaa !5
  %inc24 = add nsw i32 %17, 1
  store i32 %inc24, ptr %l, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !13

for.end25:                                        ; preds = %for.cond16
  %arrayidx26 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 1
  %arrayidx27 = getelementptr inbounds [111 x i32], ptr %arrayidx26, i64 0, i64 1
  %call28 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %Min, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx27)
  %18 = load i32, ptr %call28, align 4, !tbaa !5
  store i32 %18, ptr %Min, align 4, !tbaa !5
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %add29 = add nsw i32 %19, 1
  store i32 %add29, ptr %l, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc39, %for.end25
  %20 = load i32, ptr %l, align 4, !tbaa !5
  %21 = load i32, ptr %n, align 4, !tbaa !5
  %cmp31 = icmp sle i32 %20, %21
  br i1 %cmp31, label %for.body32, label %for.end41

for.body32:                                       ; preds = %for.cond30
  %arrayidx33 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 1
  %22 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom34 = sext i32 %22 to i64
  %arrayidx35 = getelementptr inbounds [111 x i32], ptr %arrayidx33, i64 0, i64 %idxprom34
  %23 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %24 = load i32, ptr %Min, align 4, !tbaa !5
  %sub = sub nsw i32 %23, %24
  %arrayidx36 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 1
  %25 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom37 = sext i32 %25 to i64
  %arrayidx38 = getelementptr inbounds [111 x i32], ptr %arrayidx36, i64 0, i64 %idxprom37
  store i32 %sub, ptr %arrayidx38, align 4, !tbaa !5
  br label %for.inc39

for.inc39:                                        ; preds = %for.body32
  %26 = load i32, ptr %l, align 4, !tbaa !5
  %inc40 = add nsw i32 %26, 1
  store i32 %inc40, ptr %l, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !14

for.end41:                                        ; preds = %for.cond30
  %arrayidx42 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 1
  %arrayidx43 = getelementptr inbounds [111 x i32], ptr %arrayidx42, i64 0, i64 1
  %27 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %28 = load i32, ptr %Min, align 4, !tbaa !5
  %sub44 = sub nsw i32 %27, %28
  %arrayidx45 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 1
  %arrayidx46 = getelementptr inbounds [111 x i32], ptr %arrayidx45, i64 0, i64 1
  store i32 %sub44, ptr %arrayidx46, align 4, !tbaa !5
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %add47 = add nsw i32 %29, 1
  store i32 %add47, ptr %k, align 4, !tbaa !5
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc90, %for.end41
  %30 = load i32, ptr %k, align 4, !tbaa !5
  %31 = load i32, ptr %n, align 4, !tbaa !5
  %cmp49 = icmp sle i32 %30, %31
  br i1 %cmp49, label %for.body50, label %for.end92

for.body50:                                       ; preds = %for.cond48
  store i32 10000, ptr %Min, align 4, !tbaa !5
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %add51 = add nsw i32 %32, 1
  store i32 %add51, ptr %l, align 4, !tbaa !5
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc60, %for.body50
  %33 = load i32, ptr %l, align 4, !tbaa !5
  %34 = load i32, ptr %n, align 4, !tbaa !5
  %cmp53 = icmp sle i32 %33, %34
  br i1 %cmp53, label %for.body54, label %for.end62

for.body54:                                       ; preds = %for.cond52
  %35 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom55 = sext i32 %35 to i64
  %arrayidx56 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 %idxprom55
  %36 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom57 = sext i32 %36 to i64
  %arrayidx58 = getelementptr inbounds [111 x i32], ptr %arrayidx56, i64 0, i64 %idxprom57
  %call59 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %Min, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx58)
  %37 = load i32, ptr %call59, align 4, !tbaa !5
  store i32 %37, ptr %Min, align 4, !tbaa !5
  br label %for.inc60

for.inc60:                                        ; preds = %for.body54
  %38 = load i32, ptr %l, align 4, !tbaa !5
  %inc61 = add nsw i32 %38, 1
  store i32 %inc61, ptr %l, align 4, !tbaa !5
  br label %for.cond52, !llvm.loop !15

for.end62:                                        ; preds = %for.cond52
  %39 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom63 = sext i32 %39 to i64
  %arrayidx64 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 %idxprom63
  %arrayidx65 = getelementptr inbounds [111 x i32], ptr %arrayidx64, i64 0, i64 1
  %call66 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %Min, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx65)
  %40 = load i32, ptr %call66, align 4, !tbaa !5
  store i32 %40, ptr %Min, align 4, !tbaa !5
  %41 = load i32, ptr %j, align 4, !tbaa !5
  %add67 = add nsw i32 %41, 1
  store i32 %add67, ptr %l, align 4, !tbaa !5
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc80, %for.end62
  %42 = load i32, ptr %l, align 4, !tbaa !5
  %43 = load i32, ptr %n, align 4, !tbaa !5
  %cmp69 = icmp sle i32 %42, %43
  br i1 %cmp69, label %for.body70, label %for.end82

for.body70:                                       ; preds = %for.cond68
  %44 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom71 = sext i32 %44 to i64
  %arrayidx72 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 %idxprom71
  %45 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom73 = sext i32 %45 to i64
  %arrayidx74 = getelementptr inbounds [111 x i32], ptr %arrayidx72, i64 0, i64 %idxprom73
  %46 = load i32, ptr %arrayidx74, align 4, !tbaa !5
  %47 = load i32, ptr %Min, align 4, !tbaa !5
  %sub75 = sub nsw i32 %46, %47
  %48 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom76 = sext i32 %48 to i64
  %arrayidx77 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 %idxprom76
  %49 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom78 = sext i32 %49 to i64
  %arrayidx79 = getelementptr inbounds [111 x i32], ptr %arrayidx77, i64 0, i64 %idxprom78
  store i32 %sub75, ptr %arrayidx79, align 4, !tbaa !5
  br label %for.inc80

for.inc80:                                        ; preds = %for.body70
  %50 = load i32, ptr %l, align 4, !tbaa !5
  %inc81 = add nsw i32 %50, 1
  store i32 %inc81, ptr %l, align 4, !tbaa !5
  br label %for.cond68, !llvm.loop !16

for.end82:                                        ; preds = %for.cond68
  %51 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom83 = sext i32 %51 to i64
  %arrayidx84 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 %idxprom83
  %arrayidx85 = getelementptr inbounds [111 x i32], ptr %arrayidx84, i64 0, i64 1
  %52 = load i32, ptr %arrayidx85, align 4, !tbaa !5
  %53 = load i32, ptr %Min, align 4, !tbaa !5
  %sub86 = sub nsw i32 %52, %53
  %54 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom87 = sext i32 %54 to i64
  %arrayidx88 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 %idxprom87
  %arrayidx89 = getelementptr inbounds [111 x i32], ptr %arrayidx88, i64 0, i64 1
  store i32 %sub86, ptr %arrayidx89, align 4, !tbaa !5
  br label %for.inc90

for.inc90:                                        ; preds = %for.end82
  %55 = load i32, ptr %k, align 4, !tbaa !5
  %inc91 = add nsw i32 %55, 1
  store i32 %inc91, ptr %k, align 4, !tbaa !5
  br label %for.cond48, !llvm.loop !17

for.end92:                                        ; preds = %for.cond48
  store i32 10000, ptr %Min, align 4, !tbaa !5
  %56 = load i32, ptr %j, align 4, !tbaa !5
  %add93 = add nsw i32 %56, 1
  store i32 %add93, ptr %l, align 4, !tbaa !5
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc101, %for.end92
  %57 = load i32, ptr %l, align 4, !tbaa !5
  %58 = load i32, ptr %n, align 4, !tbaa !5
  %cmp95 = icmp sle i32 %57, %58
  br i1 %cmp95, label %for.body96, label %for.end103

for.body96:                                       ; preds = %for.cond94
  %59 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom97 = sext i32 %59 to i64
  %arrayidx98 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 %idxprom97
  %arrayidx99 = getelementptr inbounds [111 x i32], ptr %arrayidx98, i64 0, i64 1
  %call100 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %Min, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx99)
  %60 = load i32, ptr %call100, align 4, !tbaa !5
  store i32 %60, ptr %Min, align 4, !tbaa !5
  br label %for.inc101

for.inc101:                                       ; preds = %for.body96
  %61 = load i32, ptr %l, align 4, !tbaa !5
  %inc102 = add nsw i32 %61, 1
  store i32 %inc102, ptr %l, align 4, !tbaa !5
  br label %for.cond94, !llvm.loop !18

for.end103:                                       ; preds = %for.cond94
  %arrayidx104 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 1
  %arrayidx105 = getelementptr inbounds [111 x i32], ptr %arrayidx104, i64 0, i64 1
  %call106 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %Min, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx105)
  %62 = load i32, ptr %call106, align 4, !tbaa !5
  store i32 %62, ptr %Min, align 4, !tbaa !5
  %63 = load i32, ptr %j, align 4, !tbaa !5
  %add107 = add nsw i32 %63, 1
  store i32 %add107, ptr %l, align 4, !tbaa !5
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc118, %for.end103
  %64 = load i32, ptr %l, align 4, !tbaa !5
  %65 = load i32, ptr %n, align 4, !tbaa !5
  %cmp109 = icmp sle i32 %64, %65
  br i1 %cmp109, label %for.body110, label %for.end120

for.body110:                                      ; preds = %for.cond108
  %66 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom111 = sext i32 %66 to i64
  %arrayidx112 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 %idxprom111
  %arrayidx113 = getelementptr inbounds [111 x i32], ptr %arrayidx112, i64 0, i64 1
  %67 = load i32, ptr %arrayidx113, align 4, !tbaa !5
  %68 = load i32, ptr %Min, align 4, !tbaa !5
  %sub114 = sub nsw i32 %67, %68
  %69 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom115 = sext i32 %69 to i64
  %arrayidx116 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 %idxprom115
  %arrayidx117 = getelementptr inbounds [111 x i32], ptr %arrayidx116, i64 0, i64 1
  store i32 %sub114, ptr %arrayidx117, align 4, !tbaa !5
  br label %for.inc118

for.inc118:                                       ; preds = %for.body110
  %70 = load i32, ptr %l, align 4, !tbaa !5
  %inc119 = add nsw i32 %70, 1
  store i32 %inc119, ptr %l, align 4, !tbaa !5
  br label %for.cond108, !llvm.loop !19

for.end120:                                       ; preds = %for.cond108
  %arrayidx121 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 1
  %arrayidx122 = getelementptr inbounds [111 x i32], ptr %arrayidx121, i64 0, i64 1
  %71 = load i32, ptr %arrayidx122, align 4, !tbaa !5
  %72 = load i32, ptr %Min, align 4, !tbaa !5
  %sub123 = sub nsw i32 %71, %72
  %arrayidx124 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 1
  %arrayidx125 = getelementptr inbounds [111 x i32], ptr %arrayidx124, i64 0, i64 1
  store i32 %sub123, ptr %arrayidx125, align 4, !tbaa !5
  %73 = load i32, ptr %j, align 4, !tbaa !5
  %add126 = add nsw i32 %73, 1
  store i32 %add126, ptr %k, align 4, !tbaa !5
  br label %for.cond127

for.cond127:                                      ; preds = %for.inc169, %for.end120
  %74 = load i32, ptr %k, align 4, !tbaa !5
  %75 = load i32, ptr %n, align 4, !tbaa !5
  %cmp128 = icmp sle i32 %74, %75
  br i1 %cmp128, label %for.body129, label %for.end171

for.body129:                                      ; preds = %for.cond127
  store i32 10000, ptr %Min, align 4, !tbaa !5
  %76 = load i32, ptr %j, align 4, !tbaa !5
  %add130 = add nsw i32 %76, 1
  store i32 %add130, ptr %l, align 4, !tbaa !5
  br label %for.cond131

for.cond131:                                      ; preds = %for.inc139, %for.body129
  %77 = load i32, ptr %l, align 4, !tbaa !5
  %78 = load i32, ptr %n, align 4, !tbaa !5
  %cmp132 = icmp sle i32 %77, %78
  br i1 %cmp132, label %for.body133, label %for.end141

for.body133:                                      ; preds = %for.cond131
  %79 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom134 = sext i32 %79 to i64
  %arrayidx135 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 %idxprom134
  %80 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom136 = sext i32 %80 to i64
  %arrayidx137 = getelementptr inbounds [111 x i32], ptr %arrayidx135, i64 0, i64 %idxprom136
  %call138 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %Min, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx137)
  %81 = load i32, ptr %call138, align 4, !tbaa !5
  store i32 %81, ptr %Min, align 4, !tbaa !5
  br label %for.inc139

for.inc139:                                       ; preds = %for.body133
  %82 = load i32, ptr %l, align 4, !tbaa !5
  %inc140 = add nsw i32 %82, 1
  store i32 %inc140, ptr %l, align 4, !tbaa !5
  br label %for.cond131, !llvm.loop !20

for.end141:                                       ; preds = %for.cond131
  %arrayidx142 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 1
  %83 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom143 = sext i32 %83 to i64
  %arrayidx144 = getelementptr inbounds [111 x i32], ptr %arrayidx142, i64 0, i64 %idxprom143
  %call145 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %Min, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx144)
  %84 = load i32, ptr %call145, align 4, !tbaa !5
  store i32 %84, ptr %Min, align 4, !tbaa !5
  %85 = load i32, ptr %j, align 4, !tbaa !5
  %add146 = add nsw i32 %85, 1
  store i32 %add146, ptr %l, align 4, !tbaa !5
  br label %for.cond147

for.cond147:                                      ; preds = %for.inc159, %for.end141
  %86 = load i32, ptr %l, align 4, !tbaa !5
  %87 = load i32, ptr %n, align 4, !tbaa !5
  %cmp148 = icmp sle i32 %86, %87
  br i1 %cmp148, label %for.body149, label %for.end161

for.body149:                                      ; preds = %for.cond147
  %88 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom150 = sext i32 %88 to i64
  %arrayidx151 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 %idxprom150
  %89 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom152 = sext i32 %89 to i64
  %arrayidx153 = getelementptr inbounds [111 x i32], ptr %arrayidx151, i64 0, i64 %idxprom152
  %90 = load i32, ptr %arrayidx153, align 4, !tbaa !5
  %91 = load i32, ptr %Min, align 4, !tbaa !5
  %sub154 = sub nsw i32 %90, %91
  %92 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom155 = sext i32 %92 to i64
  %arrayidx156 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 %idxprom155
  %93 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom157 = sext i32 %93 to i64
  %arrayidx158 = getelementptr inbounds [111 x i32], ptr %arrayidx156, i64 0, i64 %idxprom157
  store i32 %sub154, ptr %arrayidx158, align 4, !tbaa !5
  br label %for.inc159

for.inc159:                                       ; preds = %for.body149
  %94 = load i32, ptr %l, align 4, !tbaa !5
  %inc160 = add nsw i32 %94, 1
  store i32 %inc160, ptr %l, align 4, !tbaa !5
  br label %for.cond147, !llvm.loop !21

for.end161:                                       ; preds = %for.cond147
  %arrayidx162 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 1
  %95 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom163 = sext i32 %95 to i64
  %arrayidx164 = getelementptr inbounds [111 x i32], ptr %arrayidx162, i64 0, i64 %idxprom163
  %96 = load i32, ptr %arrayidx164, align 4, !tbaa !5
  %97 = load i32, ptr %Min, align 4, !tbaa !5
  %sub165 = sub nsw i32 %96, %97
  %arrayidx166 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 1
  %98 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom167 = sext i32 %98 to i64
  %arrayidx168 = getelementptr inbounds [111 x i32], ptr %arrayidx166, i64 0, i64 %idxprom167
  store i32 %sub165, ptr %arrayidx168, align 4, !tbaa !5
  br label %for.inc169

for.inc169:                                       ; preds = %for.end161
  %99 = load i32, ptr %k, align 4, !tbaa !5
  %inc170 = add nsw i32 %99, 1
  store i32 %inc170, ptr %k, align 4, !tbaa !5
  br label %for.cond127, !llvm.loop !22

for.end171:                                       ; preds = %for.cond127
  %100 = load i32, ptr %sum, align 4, !tbaa !5
  %101 = load i32, ptr %j, align 4, !tbaa !5
  %add172 = add nsw i32 %101, 1
  %idxprom173 = sext i32 %add172 to i64
  %arrayidx174 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 %idxprom173
  %102 = load i32, ptr %j, align 4, !tbaa !5
  %add175 = add nsw i32 %102, 1
  %idxprom176 = sext i32 %add175 to i64
  %arrayidx177 = getelementptr inbounds [111 x i32], ptr %arrayidx174, i64 0, i64 %idxprom176
  %103 = load i32, ptr %arrayidx177, align 4, !tbaa !5
  %add178 = add nsw i32 %100, %103
  store i32 %add178, ptr %sum, align 4, !tbaa !5
  br label %for.inc179

for.inc179:                                       ; preds = %for.end171
  %104 = load i32, ptr %j, align 4, !tbaa !5
  %inc180 = add nsw i32 %104, 1
  store i32 %inc180, ptr %j, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !23

for.end181:                                       ; preds = %for.cond13
  %105 = load i32, ptr %sum, align 4, !tbaa !5
  %call182 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %105)
  %call183 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call182, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc184

for.inc184:                                       ; preds = %for.end181
  %106 = load i32, ptr %i, align 4, !tbaa !5
  %inc185 = add nsw i32 %106, 1
  store i32 %inc185, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !24

for.end186:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %Min) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #7
  call void @llvm.lifetime.end.p0(i64 49284, ptr %a) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  %107 = load i32, ptr %retval, align 4
  ret i32 %107
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %__a, ptr noundef nonnull align 4 dereferenceable(4) %__b) #3 comdat {
entry:
  %retval = alloca ptr, align 8
  %__a.addr = alloca ptr, align 8
  %__b.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8, !tbaa !25
  store ptr %__b, ptr %__b.addr, align 8, !tbaa !25
  %0 = load ptr, ptr %__b.addr, align 8, !tbaa !25, !nonnull !28, !align !29
  %1 = load i32, ptr %0, align 4, !tbaa !5
  %2 = load ptr, ptr %__a.addr, align 8, !tbaa !25, !nonnull !28, !align !29
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %__b.addr, align 8, !tbaa !25, !nonnull !28, !align !29
  store ptr %4, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %__a.addr, align 8, !tbaa !25, !nonnull !28, !align !29
  store ptr %5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #4 align 2 {
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
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !30
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !30, !nonnull !28, !align !33
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !30, !nonnull !28, !align !33
  %vtable = load ptr, ptr %1, align 8, !tbaa !34
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
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !30
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !30, !nonnull !28, !align !33
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !36
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !38
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !39
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !38
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #5 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !55
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !55
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !55
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #4 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !55
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !38
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !56
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !38
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !38
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !38
  %vtable = load ptr, ptr %this1, align 8, !tbaa !34
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
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!26 = !{!"p1 int", !27, i64 0}
!27 = !{!"any pointer", !7, i64 0}
!28 = !{}
!29 = !{i64 4}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTSSo", !27, i64 0}
!32 = !{!27, !27, i64 0}
!33 = !{i64 8}
!34 = !{!35, !35, i64 0}
!35 = !{!"vtable pointer", !8, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !27, i64 0}
!38 = !{!7, !7, i64 0}
!39 = !{!40, !52, i64 240}
!40 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !41, i64 0, !31, i64 216, !7, i64 224, !50, i64 225, !51, i64 232, !52, i64 240, !53, i64 248, !54, i64 256}
!41 = !{!"_ZTSSt8ios_base", !42, i64 8, !42, i64 16, !43, i64 24, !44, i64 28, !44, i64 32, !45, i64 40, !46, i64 48, !7, i64 64, !6, i64 192, !47, i64 200, !48, i64 208}
!42 = !{!"long", !7, i64 0}
!43 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!44 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!45 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !27, i64 0}
!46 = !{!"_ZTSNSt8ios_base6_WordsE", !27, i64 0, !42, i64 8}
!47 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !27, i64 0}
!48 = !{!"_ZTSSt6locale", !49, i64 0}
!49 = !{!"p1 _ZTSNSt6locale5_ImplE", !27, i64 0}
!50 = !{!"bool", !7, i64 0}
!51 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !27, i64 0}
!52 = !{!"p1 _ZTSSt5ctypeIcE", !27, i64 0}
!53 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !27, i64 0}
!54 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !27, i64 0}
!55 = !{!52, !52, i64 0}
!56 = !{!57, !7, i64 56}
!57 = !{!"_ZTSSt5ctypeIcE", !58, i64 0, !59, i64 16, !50, i64 24, !26, i64 32, !26, i64 40, !60, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!58 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!59 = !{!"p1 _ZTS15__locale_struct", !27, i64 0}
!60 = !{!"p1 short", !27, i64 0}
