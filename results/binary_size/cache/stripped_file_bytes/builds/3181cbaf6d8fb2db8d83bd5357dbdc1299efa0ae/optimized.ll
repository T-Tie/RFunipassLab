; ModuleID = '/tmp/tmpfx1tmoua.cpp'
source_filename = "/tmp/tmpfx1tmoua.cpp"
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

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %d = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %__vla_expr2 = alloca i64, align 8
  %__vla_expr3 = alloca i64, align 8
  %__vla_expr4 = alloca i64, align 8
  %__vla_expr5 = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %x1) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %x2) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %y1) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %y2) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #10
  store i32 0, ptr %d, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #10
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp = icmp sle i32 1, %0
  %1 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp1 = icmp sle i32 %1, 100
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  %2 = load i32, ptr %x1, align 4, !tbaa !5
  %3 = zext i32 %2 to i64
  %4 = load i32, ptr %y1, align 4, !tbaa !5
  %5 = zext i32 %4 to i64
  %6 = call ptr @llvm.stacksave.p0()
  store ptr %6, ptr %saved_stack, align 8
  %7 = mul nuw i64 %3, %5
  %vla = alloca i32, i64 %7, align 16
  store i64 %3, ptr %__vla_expr0, align 8
  store i64 %5, ptr %__vla_expr1, align 8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %x1, align 4, !tbaa !5
  %sub = sub nsw i32 %9, 1
  %cmp3 = icmp sle i32 %8, %sub
  br i1 %cmp3, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %10 = load i32, ptr %k, align 4, !tbaa !5
  %11 = load i32, ptr %y1, align 4, !tbaa !5
  %sub5 = sub nsw i32 %11, 1
  %cmp6 = icmp sle i32 %10, %sub5
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %13 = mul nsw i64 %idxprom, %5
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %13
  %14 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %arrayidx, i64 %idxprom8
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx9)
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc12 = add nsw i32 %16, 1
  store i32 %inc12, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end13:                                        ; preds = %for.cond
  %call14 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call15 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call14, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  %17 = load i32, ptr %x2, align 4, !tbaa !5
  %18 = zext i32 %17 to i64
  %19 = load i32, ptr %y2, align 4, !tbaa !5
  %20 = zext i32 %19 to i64
  %21 = mul nuw i64 %18, %20
  %vla16 = alloca i32, i64 %21, align 16
  store i64 %18, ptr %__vla_expr2, align 8
  store i64 %20, ptr %__vla_expr3, align 8
  %22 = load i32, ptr %x1, align 4, !tbaa !5
  %23 = zext i32 %22 to i64
  %24 = load i32, ptr %y2, align 4, !tbaa !5
  %25 = zext i32 %24 to i64
  %26 = mul nuw i64 %23, %25
  %vla17 = alloca i32, i64 %26, align 16
  store i64 %23, ptr %__vla_expr4, align 8
  store i64 %25, ptr %__vla_expr5, align 8
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc34, %for.end13
  %27 = load i32, ptr %k, align 4, !tbaa !5
  %28 = load i32, ptr %x2, align 4, !tbaa !5
  %sub19 = sub nsw i32 %28, 1
  %cmp20 = icmp sle i32 %27, %sub19
  br i1 %cmp20, label %for.body21, label %for.end36

for.body21:                                       ; preds = %for.cond18
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc31, %for.body21
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %30 = load i32, ptr %y2, align 4, !tbaa !5
  %sub23 = sub nsw i32 %30, 1
  %cmp24 = icmp sle i32 %29, %sub23
  br i1 %cmp24, label %for.body25, label %for.end33

for.body25:                                       ; preds = %for.cond22
  %31 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom26 = sext i32 %31 to i64
  %32 = mul nsw i64 %idxprom26, %20
  %arrayidx27 = getelementptr inbounds i32, ptr %vla16, i64 %32
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom28 = sext i32 %33 to i64
  %arrayidx29 = getelementptr inbounds i32, ptr %arrayidx27, i64 %idxprom28
  %call30 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx29)
  br label %for.inc31

for.inc31:                                        ; preds = %for.body25
  %34 = load i32, ptr %j, align 4, !tbaa !5
  %inc32 = add nsw i32 %34, 1
  store i32 %inc32, ptr %j, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !13

for.end33:                                        ; preds = %for.cond22
  br label %for.inc34

for.inc34:                                        ; preds = %for.end33
  %35 = load i32, ptr %k, align 4, !tbaa !5
  %inc35 = add nsw i32 %35, 1
  store i32 %inc35, ptr %k, align 4, !tbaa !5
  br label %for.cond18, !llvm.loop !14

for.end36:                                        ; preds = %for.cond18
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc108, %for.end36
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %37 = load i32, ptr %x1, align 4, !tbaa !5
  %sub38 = sub nsw i32 %37, 1
  %cmp39 = icmp sle i32 %36, %sub38
  br i1 %cmp39, label %for.body40, label %for.end110

for.body40:                                       ; preds = %for.cond37
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc70, %for.body40
  %38 = load i32, ptr %j, align 4, !tbaa !5
  %39 = load i32, ptr %y2, align 4, !tbaa !5
  %sub42 = sub nsw i32 %39, 2
  %cmp43 = icmp sle i32 %38, %sub42
  br i1 %cmp43, label %for.body44, label %for.end72

for.body44:                                       ; preds = %for.cond41
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc57, %for.body44
  %40 = load i32, ptr %k, align 4, !tbaa !5
  %41 = load i32, ptr %y1, align 4, !tbaa !5
  %sub46 = sub nsw i32 %41, 1
  %cmp47 = icmp sle i32 %40, %sub46
  br i1 %cmp47, label %for.body48, label %for.end59

for.body48:                                       ; preds = %for.cond45
  %42 = load i32, ptr %d, align 4, !tbaa !5
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom49 = sext i32 %43 to i64
  %44 = mul nsw i64 %idxprom49, %5
  %arrayidx50 = getelementptr inbounds i32, ptr %vla, i64 %44
  %45 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom51 = sext i32 %45 to i64
  %arrayidx52 = getelementptr inbounds i32, ptr %arrayidx50, i64 %idxprom51
  %46 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %47 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom53 = sext i32 %47 to i64
  %48 = mul nsw i64 %idxprom53, %20
  %arrayidx54 = getelementptr inbounds i32, ptr %vla16, i64 %48
  %49 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom55 = sext i32 %49 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %arrayidx54, i64 %idxprom55
  %50 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %mul = mul nsw i32 %46, %50
  %add = add nsw i32 %42, %mul
  store i32 %add, ptr %d, align 4, !tbaa !5
  br label %for.inc57

for.inc57:                                        ; preds = %for.body48
  %51 = load i32, ptr %k, align 4, !tbaa !5
  %inc58 = add nsw i32 %51, 1
  store i32 %inc58, ptr %k, align 4, !tbaa !5
  br label %for.cond45, !llvm.loop !15

for.end59:                                        ; preds = %for.cond45
  %52 = load i32, ptr %d, align 4, !tbaa !5
  %53 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom60 = sext i32 %53 to i64
  %54 = mul nsw i64 %idxprom60, %25
  %arrayidx61 = getelementptr inbounds i32, ptr %vla17, i64 %54
  %55 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom62 = sext i32 %55 to i64
  %arrayidx63 = getelementptr inbounds i32, ptr %arrayidx61, i64 %idxprom62
  store i32 %52, ptr %arrayidx63, align 4, !tbaa !5
  store i32 0, ptr %d, align 4, !tbaa !5
  %56 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom64 = sext i32 %56 to i64
  %57 = mul nsw i64 %idxprom64, %25
  %arrayidx65 = getelementptr inbounds i32, ptr %vla17, i64 %57
  %58 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom66 = sext i32 %58 to i64
  %arrayidx67 = getelementptr inbounds i32, ptr %arrayidx65, i64 %idxprom66
  %59 = load i32, ptr %arrayidx67, align 4, !tbaa !5
  %call68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %59)
  %call69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call68, ptr noundef @.str)
  br label %for.inc70

for.inc70:                                        ; preds = %for.end59
  %60 = load i32, ptr %j, align 4, !tbaa !5
  %inc71 = add nsw i32 %60, 1
  store i32 %inc71, ptr %j, align 4, !tbaa !5
  br label %for.cond41, !llvm.loop !16

for.end72:                                        ; preds = %for.cond41
  %61 = load i32, ptr %y2, align 4, !tbaa !5
  %sub73 = sub nsw i32 %61, 1
  store i32 %sub73, ptr %j, align 4, !tbaa !5
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc105, %for.end72
  %62 = load i32, ptr %j, align 4, !tbaa !5
  %63 = load i32, ptr %y2, align 4, !tbaa !5
  %sub75 = sub nsw i32 %63, 1
  %cmp76 = icmp sle i32 %62, %sub75
  br i1 %cmp76, label %for.body77, label %for.end107

for.body77:                                       ; preds = %for.cond74
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc92, %for.body77
  %64 = load i32, ptr %k, align 4, !tbaa !5
  %65 = load i32, ptr %y1, align 4, !tbaa !5
  %sub79 = sub nsw i32 %65, 1
  %cmp80 = icmp sle i32 %64, %sub79
  br i1 %cmp80, label %for.body81, label %for.end94

for.body81:                                       ; preds = %for.cond78
  %66 = load i32, ptr %d, align 4, !tbaa !5
  %67 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom82 = sext i32 %67 to i64
  %68 = mul nsw i64 %idxprom82, %5
  %arrayidx83 = getelementptr inbounds i32, ptr %vla, i64 %68
  %69 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom84 = sext i32 %69 to i64
  %arrayidx85 = getelementptr inbounds i32, ptr %arrayidx83, i64 %idxprom84
  %70 = load i32, ptr %arrayidx85, align 4, !tbaa !5
  %71 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom86 = sext i32 %71 to i64
  %72 = mul nsw i64 %idxprom86, %20
  %arrayidx87 = getelementptr inbounds i32, ptr %vla16, i64 %72
  %73 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom88 = sext i32 %73 to i64
  %arrayidx89 = getelementptr inbounds i32, ptr %arrayidx87, i64 %idxprom88
  %74 = load i32, ptr %arrayidx89, align 4, !tbaa !5
  %mul90 = mul nsw i32 %70, %74
  %add91 = add nsw i32 %66, %mul90
  store i32 %add91, ptr %d, align 4, !tbaa !5
  br label %for.inc92

for.inc92:                                        ; preds = %for.body81
  %75 = load i32, ptr %k, align 4, !tbaa !5
  %inc93 = add nsw i32 %75, 1
  store i32 %inc93, ptr %k, align 4, !tbaa !5
  br label %for.cond78, !llvm.loop !17

for.end94:                                        ; preds = %for.cond78
  %76 = load i32, ptr %d, align 4, !tbaa !5
  %77 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom95 = sext i32 %77 to i64
  %78 = mul nsw i64 %idxprom95, %25
  %arrayidx96 = getelementptr inbounds i32, ptr %vla17, i64 %78
  %79 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom97 = sext i32 %79 to i64
  %arrayidx98 = getelementptr inbounds i32, ptr %arrayidx96, i64 %idxprom97
  store i32 %76, ptr %arrayidx98, align 4, !tbaa !5
  store i32 0, ptr %d, align 4, !tbaa !5
  %80 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom99 = sext i32 %80 to i64
  %81 = mul nsw i64 %idxprom99, %25
  %arrayidx100 = getelementptr inbounds i32, ptr %vla17, i64 %81
  %82 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom101 = sext i32 %82 to i64
  %arrayidx102 = getelementptr inbounds i32, ptr %arrayidx100, i64 %idxprom101
  %83 = load i32, ptr %arrayidx102, align 4, !tbaa !5
  %call103 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %83)
  %call104 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call103, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc105

for.inc105:                                       ; preds = %for.end94
  %84 = load i32, ptr %j, align 4, !tbaa !5
  %inc106 = add nsw i32 %84, 1
  store i32 %inc106, ptr %j, align 4, !tbaa !5
  br label %for.cond74, !llvm.loop !18

for.end107:                                       ; preds = %for.cond74
  br label %for.inc108

for.inc108:                                       ; preds = %for.end107
  %85 = load i32, ptr %i, align 4, !tbaa !5
  %inc109 = add nsw i32 %85, 1
  store i32 %inc109, ptr %i, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !19

for.end110:                                       ; preds = %for.cond37
  %86 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %86)
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %y2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %y1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %x2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %x1) #10
  %87 = load i32, ptr %retval, align 4
  ret i32 %87
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #4 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !20
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !23
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !23
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !20, !nonnull !25, !align !26
  %vtable = load ptr, ptr %1, align 8, !tbaa !27
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !20, !nonnull !25, !align !26
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !23
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !23
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !20, !nonnull !25, !align !26
  ret ptr %5
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !20
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !29
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !29
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !20
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !20, !nonnull !25, !align !26
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !20, !nonnull !25, !align !26
  %vtable = load ptr, ptr %1, align 8, !tbaa !27
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

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !30
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !32
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !32
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this1, i32 noundef %call2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #6 comdat align 2 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !23
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !23
  %call = call i64 @strlen(ptr noundef %0) #10
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #7 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !32
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !32
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !32
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !32
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !30
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !34
  ret i32 %0
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #8

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !20
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !20, !nonnull !25, !align !26
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !30
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !43
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !44
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !43
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
  call void @_ZSt16__throw_bad_castv() #11
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !51
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #5 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !51
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !43
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !52
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !43
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !43
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !43
  %vtable = load ptr, ptr %this1, align 8, !tbaa !27
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
declare void @_ZSt16__throw_bad_castv() #9

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

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
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTSSo", !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 omnipotent char", !22, i64 0}
!25 = !{}
!26 = !{i64 8}
!27 = !{!28, !28, i64 0}
!28 = !{!"vtable pointer", !8, i64 0}
!29 = !{!22, !22, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !22, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!34 = !{!35, !33, i64 32}
!35 = !{!"_ZTSSt8ios_base", !36, i64 8, !36, i64 16, !37, i64 24, !33, i64 28, !33, i64 32, !38, i64 40, !39, i64 48, !7, i64 64, !6, i64 192, !40, i64 200, !41, i64 208}
!36 = !{!"long", !7, i64 0}
!37 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!38 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !22, i64 0}
!39 = !{!"_ZTSNSt8ios_base6_WordsE", !22, i64 0, !36, i64 8}
!40 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !22, i64 0}
!41 = !{!"_ZTSSt6locale", !42, i64 0}
!42 = !{!"p1 _ZTSNSt6locale5_ImplE", !22, i64 0}
!43 = !{!7, !7, i64 0}
!44 = !{!45, !48, i64 240}
!45 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !35, i64 0, !21, i64 216, !7, i64 224, !46, i64 225, !47, i64 232, !48, i64 240, !49, i64 248, !50, i64 256}
!46 = !{!"bool", !7, i64 0}
!47 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !22, i64 0}
!48 = !{!"p1 _ZTSSt5ctypeIcE", !22, i64 0}
!49 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!50 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!51 = !{!48, !48, i64 0}
!52 = !{!53, !7, i64 56}
!53 = !{!"_ZTSSt5ctypeIcE", !54, i64 0, !55, i64 16, !46, i64 24, !56, i64 32, !56, i64 40, !57, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!54 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!55 = !{!"p1 _ZTS15__locale_struct", !22, i64 0}
!56 = !{!"p1 int", !22, i64 0}
!57 = !{!"p1 short", !22, i64 0}
