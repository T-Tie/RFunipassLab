; ModuleID = '/tmp/tmpkzlcz578.cpp'
source_filename = "/tmp/tmpkzlcz578.cpp"
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
  %nq = alloca i32, align 4
  %times = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %min = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %__vla_expr2 = alloca i64, align 8
  %__vla_expr3 = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nq) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %times) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %nq)
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  %0 = load i32, ptr %nq, align 4, !tbaa !5
  store i32 %0, ptr %n, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = zext i32 %1 to i64
  %3 = call ptr @llvm.stacksave.p0()
  store ptr %3, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %2, align 16
  store i64 %2, ptr %__vla_expr0, align 8
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %5 = zext i32 %4 to i64
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %7 = zext i32 %6 to i64
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %9 = zext i32 %8 to i64
  %10 = mul nuw i64 %5, %7
  %11 = mul nuw i64 %10, %9
  %vla1 = alloca i32, i64 %11, align 16
  store i64 %5, ptr %__vla_expr1, align 8
  store i64 %7, ptr %__vla_expr2, align 8
  store i64 %9, ptr %__vla_expr3, align 8
  store i32 0, ptr %times, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %12 = load i32, ptr %times, align 4, !tbaa !5
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc13, %for.body
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %15 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %14, %15
  br i1 %cmp3, label %for.body4, label %for.end15

for.body4:                                        ; preds = %for.cond2
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %17 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %16, %17
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %18 = load i32, ptr %times, align 4, !tbaa !5
  %idxprom = sext i32 %18 to i64
  %19 = mul nuw i64 %7, %9
  %20 = mul nsw i64 %idxprom, %19
  %arrayidx = getelementptr inbounds i32, ptr %vla1, i64 %20
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %21 to i64
  %22 = mul nsw i64 %idxprom8, %9
  %arrayidx9 = getelementptr inbounds i32, ptr %arrayidx, i64 %22
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom10 = sext i32 %23 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %arrayidx9, i64 %idxprom10
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx11)
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !9

for.end:                                          ; preds = %for.cond5
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %inc14 = add nsw i32 %25, 1
  store i32 %inc14, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.end15:                                        ; preds = %for.cond2
  br label %for.inc16

for.inc16:                                        ; preds = %for.end15
  %26 = load i32, ptr %times, align 4, !tbaa !5
  %inc17 = add nsw i32 %26, 1
  store i32 %inc17, ptr %times, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end18:                                        ; preds = %for.cond
  store i32 0, ptr %times, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc173, %for.end18
  %27 = load i32, ptr %times, align 4, !tbaa !5
  %28 = load i32, ptr %n, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %27, %28
  br i1 %cmp20, label %for.body21, label %for.end175

for.body21:                                       ; preds = %for.cond19
  %29 = load i32, ptr %times, align 4, !tbaa !5
  %idxprom22 = sext i32 %29 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %vla, i64 %idxprom22
  store i32 0, ptr %arrayidx23, align 4, !tbaa !5
  %30 = load i32, ptr %n, align 4, !tbaa !5
  store i32 %30, ptr %m, align 4, !tbaa !5
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc171, %for.body21
  %31 = load i32, ptr %m, align 4, !tbaa !5
  %cmp25 = icmp sgt i32 %31, 1
  br i1 %cmp25, label %for.body26, label %for.end172

for.body26:                                       ; preds = %for.cond24
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc66, %for.body26
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %33 = load i32, ptr %m, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %32, %33
  br i1 %cmp28, label %for.body29, label %for.end68

for.body29:                                       ; preds = %for.cond27
  %34 = load i32, ptr %times, align 4, !tbaa !5
  %idxprom30 = sext i32 %34 to i64
  %35 = mul nuw i64 %7, %9
  %36 = mul nsw i64 %idxprom30, %35
  %arrayidx31 = getelementptr inbounds i32, ptr %vla1, i64 %36
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %37 to i64
  %38 = mul nsw i64 %idxprom32, %9
  %arrayidx33 = getelementptr inbounds i32, ptr %arrayidx31, i64 %38
  %arrayidx34 = getelementptr inbounds i32, ptr %arrayidx33, i64 0
  %39 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  store i32 %39, ptr %min, align 4, !tbaa !5
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc51, %for.body29
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %41 = load i32, ptr %m, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %40, %41
  br i1 %cmp36, label %for.body37, label %for.end53

for.body37:                                       ; preds = %for.cond35
  %42 = load i32, ptr %times, align 4, !tbaa !5
  %idxprom38 = sext i32 %42 to i64
  %43 = mul nuw i64 %7, %9
  %44 = mul nsw i64 %idxprom38, %43
  %arrayidx39 = getelementptr inbounds i32, ptr %vla1, i64 %44
  %45 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %45 to i64
  %46 = mul nsw i64 %idxprom40, %9
  %arrayidx41 = getelementptr inbounds i32, ptr %arrayidx39, i64 %46
  %47 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom42 = sext i32 %47 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %arrayidx41, i64 %idxprom42
  %48 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %49 = load i32, ptr %min, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %48, %49
  br i1 %cmp44, label %if.then, label %if.end

if.then:                                          ; preds = %for.body37
  %50 = load i32, ptr %times, align 4, !tbaa !5
  %idxprom45 = sext i32 %50 to i64
  %51 = mul nuw i64 %7, %9
  %52 = mul nsw i64 %idxprom45, %51
  %arrayidx46 = getelementptr inbounds i32, ptr %vla1, i64 %52
  %53 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom47 = sext i32 %53 to i64
  %54 = mul nsw i64 %idxprom47, %9
  %arrayidx48 = getelementptr inbounds i32, ptr %arrayidx46, i64 %54
  %55 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom49 = sext i32 %55 to i64
  %arrayidx50 = getelementptr inbounds i32, ptr %arrayidx48, i64 %idxprom49
  %56 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  store i32 %56, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body37
  br label %for.inc51

for.inc51:                                        ; preds = %if.end
  %57 = load i32, ptr %j, align 4, !tbaa !5
  %inc52 = add nsw i32 %57, 1
  store i32 %inc52, ptr %j, align 4, !tbaa !5
  br label %for.cond35, !llvm.loop !14

for.end53:                                        ; preds = %for.cond35
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc63, %for.end53
  %58 = load i32, ptr %j, align 4, !tbaa !5
  %59 = load i32, ptr %m, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %58, %59
  br i1 %cmp55, label %for.body56, label %for.end65

for.body56:                                       ; preds = %for.cond54
  %60 = load i32, ptr %min, align 4, !tbaa !5
  %61 = load i32, ptr %times, align 4, !tbaa !5
  %idxprom57 = sext i32 %61 to i64
  %62 = mul nuw i64 %7, %9
  %63 = mul nsw i64 %idxprom57, %62
  %arrayidx58 = getelementptr inbounds i32, ptr %vla1, i64 %63
  %64 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom59 = sext i32 %64 to i64
  %65 = mul nsw i64 %idxprom59, %9
  %arrayidx60 = getelementptr inbounds i32, ptr %arrayidx58, i64 %65
  %66 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom61 = sext i32 %66 to i64
  %arrayidx62 = getelementptr inbounds i32, ptr %arrayidx60, i64 %idxprom61
  %67 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %sub = sub nsw i32 %67, %60
  store i32 %sub, ptr %arrayidx62, align 4, !tbaa !5
  br label %for.inc63

for.inc63:                                        ; preds = %for.body56
  %68 = load i32, ptr %j, align 4, !tbaa !5
  %inc64 = add nsw i32 %68, 1
  store i32 %inc64, ptr %j, align 4, !tbaa !5
  br label %for.cond54, !llvm.loop !15

for.end65:                                        ; preds = %for.cond54
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65
  %69 = load i32, ptr %i, align 4, !tbaa !5
  %inc67 = add nsw i32 %69, 1
  store i32 %inc67, ptr %i, align 4, !tbaa !5
  br label %for.cond27, !llvm.loop !16

for.end68:                                        ; preds = %for.cond27
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc111, %for.end68
  %70 = load i32, ptr %j, align 4, !tbaa !5
  %71 = load i32, ptr %m, align 4, !tbaa !5
  %cmp70 = icmp slt i32 %70, %71
  br i1 %cmp70, label %for.body71, label %for.end113

for.body71:                                       ; preds = %for.cond69
  %72 = load i32, ptr %times, align 4, !tbaa !5
  %idxprom72 = sext i32 %72 to i64
  %73 = mul nuw i64 %7, %9
  %74 = mul nsw i64 %idxprom72, %73
  %arrayidx73 = getelementptr inbounds i32, ptr %vla1, i64 %74
  %75 = mul nsw i64 0, %9
  %arrayidx74 = getelementptr inbounds i32, ptr %arrayidx73, i64 %75
  %76 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom75 = sext i32 %76 to i64
  %arrayidx76 = getelementptr inbounds i32, ptr %arrayidx74, i64 %idxprom75
  %77 = load i32, ptr %arrayidx76, align 4, !tbaa !5
  store i32 %77, ptr %min, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc95, %for.body71
  %78 = load i32, ptr %i, align 4, !tbaa !5
  %79 = load i32, ptr %m, align 4, !tbaa !5
  %cmp78 = icmp slt i32 %78, %79
  br i1 %cmp78, label %for.body79, label %for.end97

for.body79:                                       ; preds = %for.cond77
  %80 = load i32, ptr %times, align 4, !tbaa !5
  %idxprom80 = sext i32 %80 to i64
  %81 = mul nuw i64 %7, %9
  %82 = mul nsw i64 %idxprom80, %81
  %arrayidx81 = getelementptr inbounds i32, ptr %vla1, i64 %82
  %83 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom82 = sext i32 %83 to i64
  %84 = mul nsw i64 %idxprom82, %9
  %arrayidx83 = getelementptr inbounds i32, ptr %arrayidx81, i64 %84
  %85 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom84 = sext i32 %85 to i64
  %arrayidx85 = getelementptr inbounds i32, ptr %arrayidx83, i64 %idxprom84
  %86 = load i32, ptr %arrayidx85, align 4, !tbaa !5
  %87 = load i32, ptr %min, align 4, !tbaa !5
  %cmp86 = icmp slt i32 %86, %87
  br i1 %cmp86, label %if.then87, label %if.end94

if.then87:                                        ; preds = %for.body79
  %88 = load i32, ptr %times, align 4, !tbaa !5
  %idxprom88 = sext i32 %88 to i64
  %89 = mul nuw i64 %7, %9
  %90 = mul nsw i64 %idxprom88, %89
  %arrayidx89 = getelementptr inbounds i32, ptr %vla1, i64 %90
  %91 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom90 = sext i32 %91 to i64
  %92 = mul nsw i64 %idxprom90, %9
  %arrayidx91 = getelementptr inbounds i32, ptr %arrayidx89, i64 %92
  %93 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom92 = sext i32 %93 to i64
  %arrayidx93 = getelementptr inbounds i32, ptr %arrayidx91, i64 %idxprom92
  %94 = load i32, ptr %arrayidx93, align 4, !tbaa !5
  store i32 %94, ptr %min, align 4, !tbaa !5
  br label %if.end94

if.end94:                                         ; preds = %if.then87, %for.body79
  br label %for.inc95

for.inc95:                                        ; preds = %if.end94
  %95 = load i32, ptr %i, align 4, !tbaa !5
  %inc96 = add nsw i32 %95, 1
  store i32 %inc96, ptr %i, align 4, !tbaa !5
  br label %for.cond77, !llvm.loop !17

for.end97:                                        ; preds = %for.cond77
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond98

for.cond98:                                       ; preds = %for.inc108, %for.end97
  %96 = load i32, ptr %i, align 4, !tbaa !5
  %97 = load i32, ptr %m, align 4, !tbaa !5
  %cmp99 = icmp slt i32 %96, %97
  br i1 %cmp99, label %for.body100, label %for.end110

for.body100:                                      ; preds = %for.cond98
  %98 = load i32, ptr %min, align 4, !tbaa !5
  %99 = load i32, ptr %times, align 4, !tbaa !5
  %idxprom101 = sext i32 %99 to i64
  %100 = mul nuw i64 %7, %9
  %101 = mul nsw i64 %idxprom101, %100
  %arrayidx102 = getelementptr inbounds i32, ptr %vla1, i64 %101
  %102 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom103 = sext i32 %102 to i64
  %103 = mul nsw i64 %idxprom103, %9
  %arrayidx104 = getelementptr inbounds i32, ptr %arrayidx102, i64 %103
  %104 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom105 = sext i32 %104 to i64
  %arrayidx106 = getelementptr inbounds i32, ptr %arrayidx104, i64 %idxprom105
  %105 = load i32, ptr %arrayidx106, align 4, !tbaa !5
  %sub107 = sub nsw i32 %105, %98
  store i32 %sub107, ptr %arrayidx106, align 4, !tbaa !5
  br label %for.inc108

for.inc108:                                       ; preds = %for.body100
  %106 = load i32, ptr %i, align 4, !tbaa !5
  %inc109 = add nsw i32 %106, 1
  store i32 %inc109, ptr %i, align 4, !tbaa !5
  br label %for.cond98, !llvm.loop !18

for.end110:                                       ; preds = %for.cond98
  br label %for.inc111

for.inc111:                                       ; preds = %for.end110
  %107 = load i32, ptr %j, align 4, !tbaa !5
  %inc112 = add nsw i32 %107, 1
  store i32 %inc112, ptr %j, align 4, !tbaa !5
  br label %for.cond69, !llvm.loop !19

for.end113:                                       ; preds = %for.cond69
  %108 = load i32, ptr %times, align 4, !tbaa !5
  %idxprom114 = sext i32 %108 to i64
  %109 = mul nuw i64 %7, %9
  %110 = mul nsw i64 %idxprom114, %109
  %arrayidx115 = getelementptr inbounds i32, ptr %vla1, i64 %110
  %111 = mul nsw i64 1, %9
  %arrayidx116 = getelementptr inbounds i32, ptr %arrayidx115, i64 %111
  %arrayidx117 = getelementptr inbounds i32, ptr %arrayidx116, i64 1
  %112 = load i32, ptr %arrayidx117, align 4, !tbaa !5
  %113 = load i32, ptr %times, align 4, !tbaa !5
  %idxprom118 = sext i32 %113 to i64
  %arrayidx119 = getelementptr inbounds i32, ptr %vla, i64 %idxprom118
  %114 = load i32, ptr %arrayidx119, align 4, !tbaa !5
  %add = add nsw i32 %114, %112
  store i32 %add, ptr %arrayidx119, align 4, !tbaa !5
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %for.cond120

for.cond120:                                      ; preds = %for.inc142, %for.end113
  %115 = load i32, ptr %i, align 4, !tbaa !5
  %116 = load i32, ptr %m, align 4, !tbaa !5
  %cmp121 = icmp slt i32 %115, %116
  br i1 %cmp121, label %for.body122, label %for.end144

for.body122:                                      ; preds = %for.cond120
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond123

for.cond123:                                      ; preds = %for.inc139, %for.body122
  %117 = load i32, ptr %j, align 4, !tbaa !5
  %118 = load i32, ptr %n, align 4, !tbaa !5
  %cmp124 = icmp slt i32 %117, %118
  br i1 %cmp124, label %for.body125, label %for.end141

for.body125:                                      ; preds = %for.cond123
  %119 = load i32, ptr %times, align 4, !tbaa !5
  %idxprom126 = sext i32 %119 to i64
  %120 = mul nuw i64 %7, %9
  %121 = mul nsw i64 %idxprom126, %120
  %arrayidx127 = getelementptr inbounds i32, ptr %vla1, i64 %121
  %122 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom128 = sext i32 %122 to i64
  %123 = mul nsw i64 %idxprom128, %9
  %arrayidx129 = getelementptr inbounds i32, ptr %arrayidx127, i64 %123
  %124 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom130 = sext i32 %124 to i64
  %arrayidx131 = getelementptr inbounds i32, ptr %arrayidx129, i64 %idxprom130
  %125 = load i32, ptr %arrayidx131, align 4, !tbaa !5
  %126 = load i32, ptr %times, align 4, !tbaa !5
  %idxprom132 = sext i32 %126 to i64
  %127 = mul nuw i64 %7, %9
  %128 = mul nsw i64 %idxprom132, %127
  %arrayidx133 = getelementptr inbounds i32, ptr %vla1, i64 %128
  %129 = load i32, ptr %i, align 4, !tbaa !5
  %sub134 = sub nsw i32 %129, 1
  %idxprom135 = sext i32 %sub134 to i64
  %130 = mul nsw i64 %idxprom135, %9
  %arrayidx136 = getelementptr inbounds i32, ptr %arrayidx133, i64 %130
  %131 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom137 = sext i32 %131 to i64
  %arrayidx138 = getelementptr inbounds i32, ptr %arrayidx136, i64 %idxprom137
  store i32 %125, ptr %arrayidx138, align 4, !tbaa !5
  br label %for.inc139

for.inc139:                                       ; preds = %for.body125
  %132 = load i32, ptr %j, align 4, !tbaa !5
  %inc140 = add nsw i32 %132, 1
  store i32 %inc140, ptr %j, align 4, !tbaa !5
  br label %for.cond123, !llvm.loop !20

for.end141:                                       ; preds = %for.cond123
  br label %for.inc142

for.inc142:                                       ; preds = %for.end141
  %133 = load i32, ptr %i, align 4, !tbaa !5
  %inc143 = add nsw i32 %133, 1
  store i32 %inc143, ptr %i, align 4, !tbaa !5
  br label %for.cond120, !llvm.loop !21

for.end144:                                       ; preds = %for.cond120
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %for.cond145

for.cond145:                                      ; preds = %for.inc168, %for.end144
  %134 = load i32, ptr %i, align 4, !tbaa !5
  %135 = load i32, ptr %m, align 4, !tbaa !5
  %cmp146 = icmp slt i32 %134, %135
  br i1 %cmp146, label %for.body147, label %for.end170

for.body147:                                      ; preds = %for.cond145
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond148

for.cond148:                                      ; preds = %for.inc165, %for.body147
  %136 = load i32, ptr %j, align 4, !tbaa !5
  %137 = load i32, ptr %n, align 4, !tbaa !5
  %sub149 = sub nsw i32 %137, 1
  %cmp150 = icmp slt i32 %136, %sub149
  br i1 %cmp150, label %for.body151, label %for.end167

for.body151:                                      ; preds = %for.cond148
  %138 = load i32, ptr %times, align 4, !tbaa !5
  %idxprom152 = sext i32 %138 to i64
  %139 = mul nuw i64 %7, %9
  %140 = mul nsw i64 %idxprom152, %139
  %arrayidx153 = getelementptr inbounds i32, ptr %vla1, i64 %140
  %141 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom154 = sext i32 %141 to i64
  %142 = mul nsw i64 %idxprom154, %9
  %arrayidx155 = getelementptr inbounds i32, ptr %arrayidx153, i64 %142
  %143 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom156 = sext i32 %143 to i64
  %arrayidx157 = getelementptr inbounds i32, ptr %arrayidx155, i64 %idxprom156
  %144 = load i32, ptr %arrayidx157, align 4, !tbaa !5
  %145 = load i32, ptr %times, align 4, !tbaa !5
  %idxprom158 = sext i32 %145 to i64
  %146 = mul nuw i64 %7, %9
  %147 = mul nsw i64 %idxprom158, %146
  %arrayidx159 = getelementptr inbounds i32, ptr %vla1, i64 %147
  %148 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom160 = sext i32 %148 to i64
  %149 = mul nsw i64 %idxprom160, %9
  %arrayidx161 = getelementptr inbounds i32, ptr %arrayidx159, i64 %149
  %150 = load i32, ptr %i, align 4, !tbaa !5
  %sub162 = sub nsw i32 %150, 1
  %idxprom163 = sext i32 %sub162 to i64
  %arrayidx164 = getelementptr inbounds i32, ptr %arrayidx161, i64 %idxprom163
  store i32 %144, ptr %arrayidx164, align 4, !tbaa !5
  br label %for.inc165

for.inc165:                                       ; preds = %for.body151
  %151 = load i32, ptr %j, align 4, !tbaa !5
  %inc166 = add nsw i32 %151, 1
  store i32 %inc166, ptr %j, align 4, !tbaa !5
  br label %for.cond148, !llvm.loop !22

for.end167:                                       ; preds = %for.cond148
  br label %for.inc168

for.inc168:                                       ; preds = %for.end167
  %152 = load i32, ptr %i, align 4, !tbaa !5
  %inc169 = add nsw i32 %152, 1
  store i32 %inc169, ptr %i, align 4, !tbaa !5
  br label %for.cond145, !llvm.loop !23

for.end170:                                       ; preds = %for.cond145
  br label %for.inc171

for.inc171:                                       ; preds = %for.end170
  %153 = load i32, ptr %m, align 4, !tbaa !5
  %dec = add nsw i32 %153, -1
  store i32 %dec, ptr %m, align 4, !tbaa !5
  br label %for.cond24, !llvm.loop !24

for.end172:                                       ; preds = %for.cond24
  br label %for.inc173

for.inc173:                                       ; preds = %for.end172
  %154 = load i32, ptr %times, align 4, !tbaa !5
  %inc174 = add nsw i32 %154, 1
  store i32 %inc174, ptr %times, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !25

for.end175:                                       ; preds = %for.cond19
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond176

for.cond176:                                      ; preds = %for.inc183, %for.end175
  %155 = load i32, ptr %i, align 4, !tbaa !5
  %156 = load i32, ptr %n, align 4, !tbaa !5
  %cmp177 = icmp slt i32 %155, %156
  br i1 %cmp177, label %for.body178, label %for.end185

for.body178:                                      ; preds = %for.cond176
  %157 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom179 = sext i32 %157 to i64
  %arrayidx180 = getelementptr inbounds i32, ptr %vla, i64 %idxprom179
  %158 = load i32, ptr %arrayidx180, align 4, !tbaa !5
  %call181 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %158)
  %call182 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call181, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc183

for.inc183:                                       ; preds = %for.body178
  %159 = load i32, ptr %i, align 4, !tbaa !5
  %inc184 = add nsw i32 %159, 1
  store i32 %inc184, ptr %i, align 4, !tbaa !5
  br label %for.cond176, !llvm.loop !26

for.end185:                                       ; preds = %for.cond176
  store i32 0, ptr %retval, align 4
  %160 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %160)
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %times) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nq) #7
  %161 = load i32, ptr %retval, align 4
  ret i32 %161
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !27
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !30
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !30
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !27
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !27, !nonnull !31, !align !32
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !27, !nonnull !31, !align !32
  %vtable = load ptr, ptr %1, align 8, !tbaa !33
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !27
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !27, !nonnull !31, !align !32
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
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
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #5 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !54
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !54
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !54
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #4 comdat align 2 {
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
  %vtable = load ptr, ptr %this1, align 8, !tbaa !33
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
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTSSo", !29, i64 0}
!29 = !{!"any pointer", !7, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{}
!32 = !{i64 8}
!33 = !{!34, !34, i64 0}
!34 = !{!"vtable pointer", !8, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !29, i64 0}
!37 = !{!7, !7, i64 0}
!38 = !{!39, !51, i64 240}
!39 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !40, i64 0, !28, i64 216, !7, i64 224, !49, i64 225, !50, i64 232, !51, i64 240, !52, i64 248, !53, i64 256}
!40 = !{!"_ZTSSt8ios_base", !41, i64 8, !41, i64 16, !42, i64 24, !43, i64 28, !43, i64 32, !44, i64 40, !45, i64 48, !7, i64 64, !6, i64 192, !46, i64 200, !47, i64 208}
!41 = !{!"long", !7, i64 0}
!42 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!43 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!44 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !29, i64 0}
!45 = !{!"_ZTSNSt8ios_base6_WordsE", !29, i64 0, !41, i64 8}
!46 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !29, i64 0}
!47 = !{!"_ZTSSt6locale", !48, i64 0}
!48 = !{!"p1 _ZTSNSt6locale5_ImplE", !29, i64 0}
!49 = !{!"bool", !7, i64 0}
!50 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !29, i64 0}
!51 = !{!"p1 _ZTSSt5ctypeIcE", !29, i64 0}
!52 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !29, i64 0}
!53 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !29, i64 0}
!54 = !{!51, !51, i64 0}
!55 = !{!56, !7, i64 56}
!56 = !{!"_ZTSSt5ctypeIcE", !57, i64 0, !58, i64 16, !49, i64 24, !59, i64 32, !59, i64 40, !60, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!57 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!58 = !{!"p1 _ZTS15__locale_struct", !29, i64 0}
!59 = !{!"p1 int", !29, i64 0}
!60 = !{!"p1 short", !29, i64 0}
