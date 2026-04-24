; ModuleID = '/tmp/tmp2p90rhzx.cpp'
source_filename = "/tmp/tmp2p90rhzx.cpp"
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

@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z7findminiii(i32 noundef %c, i32 noundef %low, i32 noundef %n) #0 {
entry:
  %c.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %min = alloca i32, align 4
  %i = alloca i32, align 4
  %i16 = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4, !tbaa !5
  store i32 %low, ptr %low.addr, align 4, !tbaa !5
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #7
  %0 = load i32, ptr %c.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  %1 = load i32, ptr %low.addr, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 0
  %2 = load i32, ptr %arrayidx1, align 16, !tbaa !5
  store i32 %2, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %4 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %low.addr, align 4, !tbaa !5
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom3
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %arrayidx4, i64 0, i64 %idxprom5
  %7 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %8 = load i32, ptr %min, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %7, %8
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %for.body
  %9 = load i32, ptr %low.addr, align 4, !tbaa !5
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom9
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [100 x i32], ptr %arrayidx10, i64 0, i64 %idxprom11
  %11 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  store i32 %11, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then8, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  br label %if.end13

if.end13:                                         ; preds = %for.end, %entry
  %13 = load i32, ptr %c.addr, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %13, 0
  br i1 %cmp14, label %if.then15, label %if.end36

if.then15:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 4, ptr %i16) #7
  %14 = load i32, ptr %low.addr, align 4, !tbaa !5
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [100 x i32], ptr @a, i64 0, i64 %idxprom17
  %15 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  store i32 %15, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %i16, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc33, %if.then15
  %16 = load i32, ptr %i16, align 4, !tbaa !5
  %17 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %16, %17
  br i1 %cmp20, label %for.body21, label %for.end35

for.body21:                                       ; preds = %for.cond19
  %18 = load i32, ptr %i16, align 4, !tbaa !5
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom22
  %19 = load i32, ptr %low.addr, align 4, !tbaa !5
  %idxprom24 = sext i32 %19 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32], ptr %arrayidx23, i64 0, i64 %idxprom24
  %20 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %21 = load i32, ptr %min, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %20, %21
  br i1 %cmp26, label %if.then27, label %if.end32

if.then27:                                        ; preds = %for.body21
  %22 = load i32, ptr %i16, align 4, !tbaa !5
  %idxprom28 = sext i32 %22 to i64
  %arrayidx29 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom28
  %23 = load i32, ptr %low.addr, align 4, !tbaa !5
  %idxprom30 = sext i32 %23 to i64
  %arrayidx31 = getelementptr inbounds [100 x i32], ptr %arrayidx29, i64 0, i64 %idxprom30
  %24 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  store i32 %24, ptr %min, align 4, !tbaa !5
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %for.body21
  br label %for.inc33

for.inc33:                                        ; preds = %if.end32
  %25 = load i32, ptr %i16, align 4, !tbaa !5
  %inc34 = add nsw i32 %25, 1
  store i32 %inc34, ptr %i16, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !12

for.end35:                                        ; preds = %for.cond19
  call void @llvm.lifetime.end.p0(i64 4, ptr %i16) #7
  br label %if.end36

if.end36:                                         ; preds = %for.end35, %if.end13
  %26 = load i32, ptr %min, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #7
  ret i32 %26
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z3decii(i32 noundef %n, i32 noundef %sum) #2 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %sum.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %min = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store i32 %sum, ptr %sum.addr, align 4, !tbaa !5
  %0 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %sum.addr, align 4, !tbaa !5
  store i32 %1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #7
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %if.end
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %n.addr, align 4, !tbaa !5
  %call = call noundef i32 @_Z7findminiii(i32 noundef 1, i32 noundef %4, i32 noundef %5)
  store i32 %call, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %7 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %10 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %11 = load i32, ptr %min, align 4, !tbaa !5
  %sub = sub nsw i32 %10, %11
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom7
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %arrayidx8, i64 0, i64 %idxprom9
  store i32 %sub, ptr %arrayidx10, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !13

for.end:                                          ; preds = %for.cond2
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %inc12 = add nsw i32 %15, 1
  store i32 %inc12, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end13:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc33, %for.end13
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %17 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %16, %17
  br i1 %cmp15, label %for.body16, label %for.end35

for.body16:                                       ; preds = %for.cond14
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %19 = load i32, ptr %n.addr, align 4, !tbaa !5
  %call17 = call noundef i32 @_Z7findminiii(i32 noundef 0, i32 noundef %18, i32 noundef %19)
  store i32 %call17, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc30, %for.body16
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %21 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %20, %21
  br i1 %cmp19, label %for.body20, label %for.end32

for.body20:                                       ; preds = %for.cond18
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom21 = sext i32 %22 to i64
  %arrayidx22 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom21
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %23 to i64
  %arrayidx24 = getelementptr inbounds [100 x i32], ptr %arrayidx22, i64 0, i64 %idxprom23
  %24 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %25 = load i32, ptr %min, align 4, !tbaa !5
  %sub25 = sub nsw i32 %24, %25
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom26 = sext i32 %26 to i64
  %arrayidx27 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom26
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %27 to i64
  %arrayidx29 = getelementptr inbounds [100 x i32], ptr %arrayidx27, i64 0, i64 %idxprom28
  store i32 %sub25, ptr %arrayidx29, align 4, !tbaa !5
  br label %for.inc30

for.inc30:                                        ; preds = %for.body20
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %inc31 = add nsw i32 %28, 1
  store i32 %inc31, ptr %j, align 4, !tbaa !5
  br label %for.cond18, !llvm.loop !15

for.end32:                                        ; preds = %for.cond18
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %inc34 = add nsw i32 %29, 1
  store i32 %inc34, ptr %i, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !16

for.end35:                                        ; preds = %for.cond14
  %30 = load i32, ptr %sum.addr, align 4, !tbaa !5
  %31 = load i32, ptr getelementptr inbounds ([100 x i32], ptr getelementptr inbounds ([100 x [100 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 1), align 4, !tbaa !5
  %add = add nsw i32 %30, %31
  store i32 %add, ptr %sum.addr, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc55, %for.end35
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %33 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %32, %33
  br i1 %cmp37, label %for.body38, label %for.end57

for.body38:                                       ; preds = %for.cond36
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc52, %for.body38
  %34 = load i32, ptr %j, align 4, !tbaa !5
  %35 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub40 = sub nsw i32 %35, 1
  %cmp41 = icmp slt i32 %34, %sub40
  br i1 %cmp41, label %for.body42, label %for.end54

for.body42:                                       ; preds = %for.cond39
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %add43 = add nsw i32 %36, 1
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom44
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom46 = sext i32 %37 to i64
  %arrayidx47 = getelementptr inbounds [100 x i32], ptr %arrayidx45, i64 0, i64 %idxprom46
  %38 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %39 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom48 = sext i32 %39 to i64
  %arrayidx49 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom48
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom50 = sext i32 %40 to i64
  %arrayidx51 = getelementptr inbounds [100 x i32], ptr %arrayidx49, i64 0, i64 %idxprom50
  store i32 %38, ptr %arrayidx51, align 4, !tbaa !5
  br label %for.inc52

for.inc52:                                        ; preds = %for.body42
  %41 = load i32, ptr %j, align 4, !tbaa !5
  %inc53 = add nsw i32 %41, 1
  store i32 %inc53, ptr %j, align 4, !tbaa !5
  br label %for.cond39, !llvm.loop !17

for.end54:                                        ; preds = %for.cond39
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %inc56 = add nsw i32 %42, 1
  store i32 %inc56, ptr %i, align 4, !tbaa !5
  br label %for.cond36, !llvm.loop !18

for.end57:                                        ; preds = %for.cond36
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc77, %for.end57
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %44 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %43, %44
  br i1 %cmp59, label %for.body60, label %for.end79

for.body60:                                       ; preds = %for.cond58
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc74, %for.body60
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %46 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub62 = sub nsw i32 %46, 1
  %cmp63 = icmp slt i32 %45, %sub62
  br i1 %cmp63, label %for.body64, label %for.end76

for.body64:                                       ; preds = %for.cond61
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom65 = sext i32 %47 to i64
  %arrayidx66 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom65
  %48 = load i32, ptr %j, align 4, !tbaa !5
  %add67 = add nsw i32 %48, 1
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds [100 x i32], ptr %arrayidx66, i64 0, i64 %idxprom68
  %49 = load i32, ptr %arrayidx69, align 4, !tbaa !5
  %50 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom70 = sext i32 %50 to i64
  %arrayidx71 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom70
  %51 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom72 = sext i32 %51 to i64
  %arrayidx73 = getelementptr inbounds [100 x i32], ptr %arrayidx71, i64 0, i64 %idxprom72
  store i32 %49, ptr %arrayidx73, align 4, !tbaa !5
  br label %for.inc74

for.inc74:                                        ; preds = %for.body64
  %52 = load i32, ptr %j, align 4, !tbaa !5
  %inc75 = add nsw i32 %52, 1
  store i32 %inc75, ptr %j, align 4, !tbaa !5
  br label %for.cond61, !llvm.loop !19

for.end76:                                        ; preds = %for.cond61
  br label %for.inc77

for.inc77:                                        ; preds = %for.end76
  %53 = load i32, ptr %i, align 4, !tbaa !5
  %inc78 = add nsw i32 %53, 1
  store i32 %inc78, ptr %i, align 4, !tbaa !5
  br label %for.cond58, !llvm.loop !20

for.end79:                                        ; preds = %for.cond58
  %54 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub80 = sub nsw i32 %54, 1
  %55 = load i32, ptr %sum.addr, align 4, !tbaa !5
  %call81 = call noundef i32 @_Z3decii(i32 noundef %sub80, i32 noundef %55)
  store i32 %call81, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  br label %return

return:                                           ; preds = %for.end79, %if.then
  %56 = load i32, ptr %retval, align 4
  ret i32 %56
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef %argv) #3 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  br label %for.end18

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
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !25

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !26

for.end12:                                        ; preds = %for.cond1
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %call13 = call noundef i32 @_Z3decii(i32 noundef %10, i32 noundef 0)
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call13)
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call14, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc16

for.inc16:                                        ; preds = %for.end12
  %11 = load i32, ptr %k, align 4, !tbaa !5
  %inc17 = add nsw i32 %11, 1
  store i32 %inc17, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !27

for.end18:                                        ; preds = %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #4

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !28
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
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !28
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !28, !nonnull !31, !align !32
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !28, !nonnull !31, !align !32
  %vtable = load ptr, ptr %1, align 8, !tbaa !33
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !28
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !28, !nonnull !31, !align !32
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #4

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #2 align 2 {
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

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #4

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
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #2 comdat align 2 {
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

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #4

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!21 = !{!22, !22, i64 0}
!22 = !{!"p2 omnipotent char", !23, i64 0}
!23 = !{!"any p2 pointer", !24, i64 0}
!24 = !{!"any pointer", !7, i64 0}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 _ZTSSo", !24, i64 0}
!30 = !{!24, !24, i64 0}
!31 = !{}
!32 = !{i64 8}
!33 = !{!34, !34, i64 0}
!34 = !{!"vtable pointer", !8, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !24, i64 0}
!37 = !{!7, !7, i64 0}
!38 = !{!39, !51, i64 240}
!39 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !40, i64 0, !29, i64 216, !7, i64 224, !49, i64 225, !50, i64 232, !51, i64 240, !52, i64 248, !53, i64 256}
!40 = !{!"_ZTSSt8ios_base", !41, i64 8, !41, i64 16, !42, i64 24, !43, i64 28, !43, i64 32, !44, i64 40, !45, i64 48, !7, i64 64, !6, i64 192, !46, i64 200, !47, i64 208}
!41 = !{!"long", !7, i64 0}
!42 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!43 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!44 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !24, i64 0}
!45 = !{!"_ZTSNSt8ios_base6_WordsE", !24, i64 0, !41, i64 8}
!46 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !24, i64 0}
!47 = !{!"_ZTSSt6locale", !48, i64 0}
!48 = !{!"p1 _ZTSNSt6locale5_ImplE", !24, i64 0}
!49 = !{!"bool", !7, i64 0}
!50 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !24, i64 0}
!51 = !{!"p1 _ZTSSt5ctypeIcE", !24, i64 0}
!52 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !24, i64 0}
!53 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !24, i64 0}
!54 = !{!51, !51, i64 0}
!55 = !{!56, !7, i64 56}
!56 = !{!"_ZTSSt5ctypeIcE", !57, i64 0, !58, i64 16, !49, i64 24, !59, i64 32, !59, i64 40, !60, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!57 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!58 = !{!"p1 _ZTS15__locale_struct", !24, i64 0}
!59 = !{!"p1 int", !24, i64 0}
!60 = !{!"p1 short", !24, i64 0}
