; ModuleID = '/tmp/tmpgqmbzjsw.cpp'
source_filename = "/tmp/tmpgqmbzjsw.cpp"
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

@matrix = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z6changeii(i32 noundef %k, i32 noundef %n) #0 {
entry:
  %k.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %k, ptr %k.addr, align 4, !tbaa !5
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  %0 = load i32, ptr %k.addr, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom
  %1 = load i32, ptr %k.addr, align 4, !tbaa !5
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom1
  %2 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %3 = load i32, ptr %k.addr, align 4, !tbaa !5
  %add = add nsw i32 %3, 1
  %idxprom3 = sext i32 %add to i64
  %arrayidx4 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom3
  %4 = load i32, ptr %k.addr, align 4, !tbaa !5
  %add5 = add nsw i32 %4, 1
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], ptr %arrayidx4, i64 0, i64 %idxprom6
  store i32 %2, ptr %arrayidx7, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %5, 1
  %6 = load i32, ptr %k.addr, align 4, !tbaa !5
  %add8 = add nsw i32 %6, 2
  %cmp = icmp sge i32 %sub, %add8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %k.addr, align 4, !tbaa !5
  %add9 = add nsw i32 %7, 2
  store i32 %add9, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub10 = sub nsw i32 %9, 1
  %cmp11 = icmp sle i32 %8, %sub10
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, ptr %k.addr, align 4, !tbaa !5
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom12
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %arrayidx13, i64 0, i64 %idxprom14
  %12 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %13 = load i32, ptr %k.addr, align 4, !tbaa !5
  %add16 = add nsw i32 %13, 1
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom17
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %14 to i64
  %arrayidx20 = getelementptr inbounds [100 x i32], ptr %arrayidx18, i64 0, i64 %idxprom19
  store i32 %12, ptr %arrayidx20, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %16 = load i32, ptr %k.addr, align 4, !tbaa !5
  %add21 = add nsw i32 %16, 2
  store i32 %add21, ptr %i, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc35, %for.end
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %18 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub23 = sub nsw i32 %18, 1
  %cmp24 = icmp sle i32 %17, %sub23
  br i1 %cmp24, label %for.body25, label %for.end37

for.body25:                                       ; preds = %for.cond22
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom26
  %20 = load i32, ptr %k.addr, align 4, !tbaa !5
  %idxprom28 = sext i32 %20 to i64
  %arrayidx29 = getelementptr inbounds [100 x i32], ptr %arrayidx27, i64 0, i64 %idxprom28
  %21 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %22 to i64
  %arrayidx31 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom30
  %23 = load i32, ptr %k.addr, align 4, !tbaa !5
  %add32 = add nsw i32 %23, 1
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [100 x i32], ptr %arrayidx31, i64 0, i64 %idxprom33
  store i32 %21, ptr %arrayidx34, align 4, !tbaa !5
  br label %for.inc35

for.inc35:                                        ; preds = %for.body25
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %inc36 = add nsw i32 %24, 1
  store i32 %inc36, ptr %i, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !12

for.end37:                                        ; preds = %for.cond22
  br label %if.end

if.end:                                           ; preds = %for.end37, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %sum = alloca [100 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %min = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8
  store i32 0, ptr %n, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #8
  store i32 0, ptr %m, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 400, ptr %sum) #8
  call void @llvm.memset.p0.i64(ptr align 16 %sum, i8 0, i64 400, i1 false)
  store i32 0, ptr %m, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc112, %entry
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end114

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  store i32 0, ptr %j, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %sub2 = sub nsw i32 %3, 1
  %cmp3 = icmp sle i32 %2, %sub2
  br i1 %cmp3, label %for.body4, label %for.end14

for.body4:                                        ; preds = %for.cond1
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %sub6 = sub nsw i32 %5, 1
  %cmp7 = icmp sle i32 %4, %sub6
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond5
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom9
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !13

for.end:                                          ; preds = %for.cond5
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc13 = add nsw i32 %9, 1
  store i32 %inc13, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !14

for.end14:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8
  store i32 0, ptr %k, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc109, %for.end14
  %10 = load i32, ptr %k, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %sub16 = sub nsw i32 %11, 2
  %cmp17 = icmp sle i32 %10, %sub16
  br i1 %cmp17, label %for.body18, label %for.end111

for.body18:                                       ; preds = %for.cond15
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #8
  store i32 10000, ptr %min, align 4, !tbaa !5
  %12 = load i32, ptr %k, align 4, !tbaa !5
  store i32 %12, ptr %i, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc55, %for.body18
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %14 = load i32, ptr %n, align 4, !tbaa !5
  %sub20 = sub nsw i32 %14, 1
  %cmp21 = icmp sle i32 %13, %sub20
  br i1 %cmp21, label %for.body22, label %for.end57

for.body22:                                       ; preds = %for.cond19
  store i32 10000, ptr %min, align 4, !tbaa !5
  %15 = load i32, ptr %k, align 4, !tbaa !5
  store i32 %15, ptr %j, align 4, !tbaa !5
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc36, %for.body22
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %17 = load i32, ptr %n, align 4, !tbaa !5
  %sub24 = sub nsw i32 %17, 1
  %cmp25 = icmp sle i32 %16, %sub24
  br i1 %cmp25, label %for.body26, label %for.end38

for.body26:                                       ; preds = %for.cond23
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom27
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom29 = sext i32 %19 to i64
  %arrayidx30 = getelementptr inbounds [100 x i32], ptr %arrayidx28, i64 0, i64 %idxprom29
  %20 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %21 = load i32, ptr %min, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %20, %21
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %for.body26
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %22 to i64
  %arrayidx33 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom32
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom34 = sext i32 %23 to i64
  %arrayidx35 = getelementptr inbounds [100 x i32], ptr %arrayidx33, i64 0, i64 %idxprom34
  %24 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  store i32 %24, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body26
  br label %for.inc36

for.inc36:                                        ; preds = %if.end
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %inc37 = add nsw i32 %25, 1
  store i32 %inc37, ptr %j, align 4, !tbaa !5
  br label %for.cond23, !llvm.loop !15

for.end38:                                        ; preds = %for.cond23
  %26 = load i32, ptr %k, align 4, !tbaa !5
  store i32 %26, ptr %j, align 4, !tbaa !5
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc52, %for.end38
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %28 = load i32, ptr %n, align 4, !tbaa !5
  %sub40 = sub nsw i32 %28, 1
  %cmp41 = icmp sle i32 %27, %sub40
  br i1 %cmp41, label %for.body42, label %for.end54

for.body42:                                       ; preds = %for.cond39
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %29 to i64
  %arrayidx44 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom43
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom45 = sext i32 %30 to i64
  %arrayidx46 = getelementptr inbounds [100 x i32], ptr %arrayidx44, i64 0, i64 %idxprom45
  %31 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %32 = load i32, ptr %min, align 4, !tbaa !5
  %sub47 = sub nsw i32 %31, %32
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %33 to i64
  %arrayidx49 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom48
  %34 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom50 = sext i32 %34 to i64
  %arrayidx51 = getelementptr inbounds [100 x i32], ptr %arrayidx49, i64 0, i64 %idxprom50
  store i32 %sub47, ptr %arrayidx51, align 4, !tbaa !5
  br label %for.inc52

for.inc52:                                        ; preds = %for.body42
  %35 = load i32, ptr %j, align 4, !tbaa !5
  %inc53 = add nsw i32 %35, 1
  store i32 %inc53, ptr %j, align 4, !tbaa !5
  br label %for.cond39, !llvm.loop !16

for.end54:                                        ; preds = %for.cond39
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %inc56 = add nsw i32 %36, 1
  store i32 %inc56, ptr %i, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !17

for.end57:                                        ; preds = %for.cond19
  %37 = load i32, ptr %k, align 4, !tbaa !5
  store i32 %37, ptr %j, align 4, !tbaa !5
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc96, %for.end57
  %38 = load i32, ptr %j, align 4, !tbaa !5
  %39 = load i32, ptr %n, align 4, !tbaa !5
  %sub59 = sub nsw i32 %39, 1
  %cmp60 = icmp sle i32 %38, %sub59
  br i1 %cmp60, label %for.body61, label %for.end98

for.body61:                                       ; preds = %for.cond58
  store i32 10000, ptr %min, align 4, !tbaa !5
  %40 = load i32, ptr %k, align 4, !tbaa !5
  store i32 %40, ptr %i, align 4, !tbaa !5
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc77, %for.body61
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %42 = load i32, ptr %n, align 4, !tbaa !5
  %sub63 = sub nsw i32 %42, 1
  %cmp64 = icmp sle i32 %41, %sub63
  br i1 %cmp64, label %for.body65, label %for.end79

for.body65:                                       ; preds = %for.cond62
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom66 = sext i32 %43 to i64
  %arrayidx67 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom66
  %44 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom68 = sext i32 %44 to i64
  %arrayidx69 = getelementptr inbounds [100 x i32], ptr %arrayidx67, i64 0, i64 %idxprom68
  %45 = load i32, ptr %arrayidx69, align 4, !tbaa !5
  %46 = load i32, ptr %min, align 4, !tbaa !5
  %cmp70 = icmp slt i32 %45, %46
  br i1 %cmp70, label %if.then71, label %if.end76

if.then71:                                        ; preds = %for.body65
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom72 = sext i32 %47 to i64
  %arrayidx73 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom72
  %48 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom74 = sext i32 %48 to i64
  %arrayidx75 = getelementptr inbounds [100 x i32], ptr %arrayidx73, i64 0, i64 %idxprom74
  %49 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  store i32 %49, ptr %min, align 4, !tbaa !5
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %for.body65
  br label %for.inc77

for.inc77:                                        ; preds = %if.end76
  %50 = load i32, ptr %i, align 4, !tbaa !5
  %inc78 = add nsw i32 %50, 1
  store i32 %inc78, ptr %i, align 4, !tbaa !5
  br label %for.cond62, !llvm.loop !18

for.end79:                                        ; preds = %for.cond62
  %51 = load i32, ptr %k, align 4, !tbaa !5
  store i32 %51, ptr %i, align 4, !tbaa !5
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc93, %for.end79
  %52 = load i32, ptr %i, align 4, !tbaa !5
  %53 = load i32, ptr %n, align 4, !tbaa !5
  %sub81 = sub nsw i32 %53, 1
  %cmp82 = icmp sle i32 %52, %sub81
  br i1 %cmp82, label %for.body83, label %for.end95

for.body83:                                       ; preds = %for.cond80
  %54 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom84 = sext i32 %54 to i64
  %arrayidx85 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom84
  %55 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom86 = sext i32 %55 to i64
  %arrayidx87 = getelementptr inbounds [100 x i32], ptr %arrayidx85, i64 0, i64 %idxprom86
  %56 = load i32, ptr %arrayidx87, align 4, !tbaa !5
  %57 = load i32, ptr %min, align 4, !tbaa !5
  %sub88 = sub nsw i32 %56, %57
  %58 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom89 = sext i32 %58 to i64
  %arrayidx90 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom89
  %59 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom91 = sext i32 %59 to i64
  %arrayidx92 = getelementptr inbounds [100 x i32], ptr %arrayidx90, i64 0, i64 %idxprom91
  store i32 %sub88, ptr %arrayidx92, align 4, !tbaa !5
  br label %for.inc93

for.inc93:                                        ; preds = %for.body83
  %60 = load i32, ptr %i, align 4, !tbaa !5
  %inc94 = add nsw i32 %60, 1
  store i32 %inc94, ptr %i, align 4, !tbaa !5
  br label %for.cond80, !llvm.loop !19

for.end95:                                        ; preds = %for.cond80
  br label %for.inc96

for.inc96:                                        ; preds = %for.end95
  %61 = load i32, ptr %j, align 4, !tbaa !5
  %inc97 = add nsw i32 %61, 1
  store i32 %inc97, ptr %j, align 4, !tbaa !5
  br label %for.cond58, !llvm.loop !20

for.end98:                                        ; preds = %for.cond58
  %62 = load i32, ptr %m, align 4, !tbaa !5
  %idxprom99 = sext i32 %62 to i64
  %arrayidx100 = getelementptr inbounds [100 x i32], ptr %sum, i64 0, i64 %idxprom99
  %63 = load i32, ptr %arrayidx100, align 4, !tbaa !5
  %64 = load i32, ptr %k, align 4, !tbaa !5
  %add = add nsw i32 %64, 1
  %idxprom101 = sext i32 %add to i64
  %arrayidx102 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom101
  %65 = load i32, ptr %k, align 4, !tbaa !5
  %add103 = add nsw i32 %65, 1
  %idxprom104 = sext i32 %add103 to i64
  %arrayidx105 = getelementptr inbounds [100 x i32], ptr %arrayidx102, i64 0, i64 %idxprom104
  %66 = load i32, ptr %arrayidx105, align 4, !tbaa !5
  %add106 = add nsw i32 %63, %66
  %67 = load i32, ptr %m, align 4, !tbaa !5
  %idxprom107 = sext i32 %67 to i64
  %arrayidx108 = getelementptr inbounds [100 x i32], ptr %sum, i64 0, i64 %idxprom107
  store i32 %add106, ptr %arrayidx108, align 4, !tbaa !5
  %68 = load i32, ptr %k, align 4, !tbaa !5
  %69 = load i32, ptr %n, align 4, !tbaa !5
  call void @_Z6changeii(i32 noundef %68, i32 noundef %69)
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #8
  br label %for.inc109

for.inc109:                                       ; preds = %for.end98
  %70 = load i32, ptr %k, align 4, !tbaa !5
  %inc110 = add nsw i32 %70, 1
  store i32 %inc110, ptr %k, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !21

for.end111:                                       ; preds = %for.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  br label %for.inc112

for.inc112:                                       ; preds = %for.end111
  %71 = load i32, ptr %m, align 4, !tbaa !5
  %inc113 = add nsw i32 %71, 1
  store i32 %inc113, ptr %m, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !22

for.end114:                                       ; preds = %for.cond
  store i32 0, ptr %m, align 4, !tbaa !5
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc123, %for.end114
  %72 = load i32, ptr %m, align 4, !tbaa !5
  %73 = load i32, ptr %n, align 4, !tbaa !5
  %sub116 = sub nsw i32 %73, 1
  %cmp117 = icmp sle i32 %72, %sub116
  br i1 %cmp117, label %for.body118, label %for.end125

for.body118:                                      ; preds = %for.cond115
  %74 = load i32, ptr %m, align 4, !tbaa !5
  %idxprom119 = sext i32 %74 to i64
  %arrayidx120 = getelementptr inbounds [100 x i32], ptr %sum, i64 0, i64 %idxprom119
  %75 = load i32, ptr %arrayidx120, align 4, !tbaa !5
  %call121 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %75)
  %call122 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call121, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc123

for.inc123:                                       ; preds = %for.body118
  %76 = load i32, ptr %m, align 4, !tbaa !5
  %inc124 = add nsw i32 %76, 1
  store i32 %inc124, ptr %m, align 4, !tbaa !5
  br label %for.cond115, !llvm.loop !23

for.end125:                                       ; preds = %for.cond115
  call void @llvm.lifetime.end.p0(i64 400, ptr %sum) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #5 align 2 {
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
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #6 {
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

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #6 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !24
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !24, !nonnull !28, !align !29
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #5 align 2 {
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

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #6 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !51
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !51
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #9
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
declare void @_ZSt16__throw_bad_castv() #7

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

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
