; ModuleID = '/tmp/tmpueub5kws.cpp'
source_filename = "/tmp/tmpueub5kws.cpp"
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

@a = dso_local global [1000 x [1000 x i32]] zeroinitializer, align 16
@sum = dso_local global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z3cuti(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %min = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #7
  store i32 10000, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %min, align 4, !tbaa !5
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [1000 x [1000 x i32]], ptr @a, i64 0, i64 %idxprom
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [1000 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %7 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %cmp6 = icmp sgt i32 %4, %7
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [1000 x [1000 x i32]], ptr @a, i64 0, i64 %idxprom7
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [1000 x i32], ptr %arrayidx8, i64 0, i64 %idxprom9
  %10 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  store i32 %10, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc22, %for.end
  %12 = load i32, ptr %k, align 4, !tbaa !5
  %13 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %12, %13
  br i1 %cmp12, label %for.body13, label %for.end24

for.body13:                                       ; preds = %for.cond11
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [1000 x [1000 x i32]], ptr @a, i64 0, i64 %idxprom14
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [1000 x i32], ptr %arrayidx15, i64 0, i64 %idxprom16
  %16 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %17 = load i32, ptr %min, align 4, !tbaa !5
  %sub = sub nsw i32 %16, %17
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %18 to i64
  %arrayidx19 = getelementptr inbounds [1000 x [1000 x i32]], ptr @a, i64 0, i64 %idxprom18
  %19 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [1000 x i32], ptr %arrayidx19, i64 0, i64 %idxprom20
  store i32 %sub, ptr %arrayidx21, align 4, !tbaa !5
  br label %for.inc22

for.inc22:                                        ; preds = %for.body13
  %20 = load i32, ptr %k, align 4, !tbaa !5
  %inc23 = add nsw i32 %20, 1
  store i32 %inc23, ptr %k, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !12

for.end24:                                        ; preds = %for.cond11
  store i32 10000, ptr %min, align 4, !tbaa !5
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %inc26 = add nsw i32 %21, 1
  store i32 %inc26, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end27:                                        ; preds = %for.cond
  store i32 10000, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc63, %for.end27
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %23 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %22, %23
  br i1 %cmp29, label %for.body30, label %for.end65

for.body30:                                       ; preds = %for.cond28
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc45, %for.body30
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %25 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %24, %25
  br i1 %cmp32, label %for.body33, label %for.end47

for.body33:                                       ; preds = %for.cond31
  %26 = load i32, ptr %min, align 4, !tbaa !5
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom34 = sext i32 %27 to i64
  %arrayidx35 = getelementptr inbounds [1000 x [1000 x i32]], ptr @a, i64 0, i64 %idxprom34
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %28 to i64
  %arrayidx37 = getelementptr inbounds [1000 x i32], ptr %arrayidx35, i64 0, i64 %idxprom36
  %29 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %cmp38 = icmp sgt i32 %26, %29
  br i1 %cmp38, label %if.then39, label %if.end44

if.then39:                                        ; preds = %for.body33
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom40 = sext i32 %30 to i64
  %arrayidx41 = getelementptr inbounds [1000 x [1000 x i32]], ptr @a, i64 0, i64 %idxprom40
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %31 to i64
  %arrayidx43 = getelementptr inbounds [1000 x i32], ptr %arrayidx41, i64 0, i64 %idxprom42
  %32 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  store i32 %32, ptr %min, align 4, !tbaa !5
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %for.body33
  br label %for.inc45

for.inc45:                                        ; preds = %if.end44
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %inc46 = add nsw i32 %33, 1
  store i32 %inc46, ptr %j, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !14

for.end47:                                        ; preds = %for.cond31
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc60, %for.end47
  %34 = load i32, ptr %k, align 4, !tbaa !5
  %35 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %34, %35
  br i1 %cmp49, label %for.body50, label %for.end62

for.body50:                                       ; preds = %for.cond48
  %36 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom51 = sext i32 %36 to i64
  %arrayidx52 = getelementptr inbounds [1000 x [1000 x i32]], ptr @a, i64 0, i64 %idxprom51
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %37 to i64
  %arrayidx54 = getelementptr inbounds [1000 x i32], ptr %arrayidx52, i64 0, i64 %idxprom53
  %38 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %39 = load i32, ptr %min, align 4, !tbaa !5
  %sub55 = sub nsw i32 %38, %39
  %40 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom56 = sext i32 %40 to i64
  %arrayidx57 = getelementptr inbounds [1000 x [1000 x i32]], ptr @a, i64 0, i64 %idxprom56
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom58 = sext i32 %41 to i64
  %arrayidx59 = getelementptr inbounds [1000 x i32], ptr %arrayidx57, i64 0, i64 %idxprom58
  store i32 %sub55, ptr %arrayidx59, align 4, !tbaa !5
  br label %for.inc60

for.inc60:                                        ; preds = %for.body50
  %42 = load i32, ptr %k, align 4, !tbaa !5
  %inc61 = add nsw i32 %42, 1
  store i32 %inc61, ptr %k, align 4, !tbaa !5
  br label %for.cond48, !llvm.loop !15

for.end62:                                        ; preds = %for.cond48
  store i32 10000, ptr %min, align 4, !tbaa !5
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %inc64 = add nsw i32 %43, 1
  store i32 %inc64, ptr %i, align 4, !tbaa !5
  br label %for.cond28, !llvm.loop !16

for.end65:                                        ; preds = %for.cond28
  %44 = load i32, ptr @sum, align 4, !tbaa !5
  %45 = load i32, ptr getelementptr inbounds ([1000 x i32], ptr getelementptr inbounds ([1000 x [1000 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 1), align 4, !tbaa !5
  %add = add nsw i32 %44, %45
  store i32 %add, ptr @sum, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
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
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %p = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc71, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end73

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [1000 x [1000 x i32]], ptr @a, i64 0, i64 %idxprom
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [1000 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !17

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !18

for.end12:                                        ; preds = %for.cond1
  store i32 1, ptr %p, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc66, %for.end12
  %10 = load i32, ptr %p, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %10, %11
  br i1 %cmp14, label %for.body15, label %for.end68

for.body15:                                       ; preds = %for.cond13
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %13 = load i32, ptr %p, align 4, !tbaa !5
  %sub = sub nsw i32 %12, %13
  %add = add nsw i32 %sub, 1
  call void @_Z3cuti(i32 noundef %add)
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc37, %for.body15
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %15 = load i32, ptr %n, align 4, !tbaa !5
  %16 = load i32, ptr %p, align 4, !tbaa !5
  %sub17 = sub nsw i32 %15, %16
  %cmp18 = icmp slt i32 %14, %sub17
  br i1 %cmp18, label %for.body19, label %for.end39

for.body19:                                       ; preds = %for.cond16
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc34, %for.body19
  %17 = load i32, ptr %k, align 4, !tbaa !5
  %18 = load i32, ptr %n, align 4, !tbaa !5
  %19 = load i32, ptr %p, align 4, !tbaa !5
  %sub21 = sub nsw i32 %18, %19
  %cmp22 = icmp slt i32 %17, %sub21
  br i1 %cmp22, label %for.body23, label %for.end36

for.body23:                                       ; preds = %for.cond20
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %add24 = add nsw i32 %20, 1
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds [1000 x [1000 x i32]], ptr @a, i64 0, i64 %idxprom25
  %21 = load i32, ptr %k, align 4, !tbaa !5
  %add27 = add nsw i32 %21, 1
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds [1000 x i32], ptr %arrayidx26, i64 0, i64 %idxprom28
  %22 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom30 = sext i32 %23 to i64
  %arrayidx31 = getelementptr inbounds [1000 x [1000 x i32]], ptr @a, i64 0, i64 %idxprom30
  %24 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom32 = sext i32 %24 to i64
  %arrayidx33 = getelementptr inbounds [1000 x i32], ptr %arrayidx31, i64 0, i64 %idxprom32
  store i32 %22, ptr %arrayidx33, align 4, !tbaa !5
  br label %for.inc34

for.inc34:                                        ; preds = %for.body23
  %25 = load i32, ptr %k, align 4, !tbaa !5
  %inc35 = add nsw i32 %25, 1
  store i32 %inc35, ptr %k, align 4, !tbaa !5
  br label %for.cond20, !llvm.loop !19

for.end36:                                        ; preds = %for.cond20
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %inc38 = add nsw i32 %26, 1
  store i32 %inc38, ptr %j, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !20

for.end39:                                        ; preds = %for.cond16
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc49, %for.end39
  %27 = load i32, ptr %k, align 4, !tbaa !5
  %28 = load i32, ptr %n, align 4, !tbaa !5
  %29 = load i32, ptr %p, align 4, !tbaa !5
  %sub41 = sub nsw i32 %28, %29
  %cmp42 = icmp slt i32 %27, %sub41
  br i1 %cmp42, label %for.body43, label %for.end51

for.body43:                                       ; preds = %for.cond40
  %30 = load i32, ptr %k, align 4, !tbaa !5
  %add44 = add nsw i32 %30, 1
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds [1000 x i32], ptr @a, i64 0, i64 %idxprom45
  %31 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %32 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom47 = sext i32 %32 to i64
  %arrayidx48 = getelementptr inbounds [1000 x i32], ptr @a, i64 0, i64 %idxprom47
  store i32 %31, ptr %arrayidx48, align 4, !tbaa !5
  br label %for.inc49

for.inc49:                                        ; preds = %for.body43
  %33 = load i32, ptr %k, align 4, !tbaa !5
  %inc50 = add nsw i32 %33, 1
  store i32 %inc50, ptr %k, align 4, !tbaa !5
  br label %for.cond40, !llvm.loop !21

for.end51:                                        ; preds = %for.cond40
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc63, %for.end51
  %34 = load i32, ptr %k, align 4, !tbaa !5
  %35 = load i32, ptr %n, align 4, !tbaa !5
  %36 = load i32, ptr %p, align 4, !tbaa !5
  %sub53 = sub nsw i32 %35, %36
  %cmp54 = icmp slt i32 %34, %sub53
  br i1 %cmp54, label %for.body55, label %for.end65

for.body55:                                       ; preds = %for.cond52
  %37 = load i32, ptr %k, align 4, !tbaa !5
  %add56 = add nsw i32 %37, 1
  %idxprom57 = sext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds [1000 x [1000 x i32]], ptr @a, i64 0, i64 %idxprom57
  %arrayidx59 = getelementptr inbounds [1000 x i32], ptr %arrayidx58, i64 0, i64 0
  %38 = load i32, ptr %arrayidx59, align 16, !tbaa !5
  %39 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom60 = sext i32 %39 to i64
  %arrayidx61 = getelementptr inbounds [1000 x [1000 x i32]], ptr @a, i64 0, i64 %idxprom60
  %arrayidx62 = getelementptr inbounds [1000 x i32], ptr %arrayidx61, i64 0, i64 0
  store i32 %38, ptr %arrayidx62, align 16, !tbaa !5
  br label %for.inc63

for.inc63:                                        ; preds = %for.body55
  %40 = load i32, ptr %k, align 4, !tbaa !5
  %inc64 = add nsw i32 %40, 1
  store i32 %inc64, ptr %k, align 4, !tbaa !5
  br label %for.cond52, !llvm.loop !22

for.end65:                                        ; preds = %for.cond52
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65
  %41 = load i32, ptr %p, align 4, !tbaa !5
  %inc67 = add nsw i32 %41, 1
  store i32 %inc67, ptr %p, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !23

for.end68:                                        ; preds = %for.cond13
  %42 = load i32, ptr @sum, align 4, !tbaa !5
  %call69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %42)
  %call70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call69, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr @sum, align 4, !tbaa !5
  br label %for.inc71

for.inc71:                                        ; preds = %for.end68
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %inc72 = add nsw i32 %43, 1
  store i32 %inc72, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !24

for.end73:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #4 align 2 {
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
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
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
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !25
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !25, !nonnull !29, !align !30
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
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

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #5 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !52
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !52
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !52
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #4 comdat align 2 {
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
declare void @_ZSt16__throw_bad_castv() #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
