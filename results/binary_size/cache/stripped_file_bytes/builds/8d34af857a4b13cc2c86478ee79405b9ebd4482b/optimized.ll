; ModuleID = '/tmp/tmpowec55e5.cpp'
source_filename = "/tmp/tmpowec55e5.cpp"
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

@n = dso_local global i32 0, align 4
@a = dso_local global [201 x [201 x i32]] zeroinitializer, align 16
@i = dso_local global i32 0, align 4
@j = dso_local global i32 0, align 4
@sum = dso_local global i32 0, align 4
@min1 = dso_local global [201 x i32] zeroinitializer, align 16
@min2 = dso_local global [201 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  call void @_Z4readv()
  store i32 0, ptr @sum, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr @n, align 4, !tbaa !5
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp slt i32 %2, %sub
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr @n, align 4, !tbaa !5
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %sub4 = sub nsw i32 %4, %5
  call void @_Z3deli(i32 noundef %sub4)
  %6 = load i32, ptr @sum, align 4, !tbaa !5
  %7 = load i32, ptr getelementptr inbounds ([201 x i32], ptr getelementptr inbounds ([201 x [201 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 1), align 4, !tbaa !5
  %add = add nsw i32 %6, %7
  store i32 %add, ptr @sum, align 4, !tbaa !5
  %8 = load i32, ptr @n, align 4, !tbaa !5
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %sub5 = sub nsw i32 %8, %9
  call void @_Z4movei(i32 noundef %sub5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %11 = load i32, ptr @sum, align 4, !tbaa !5
  %call6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %11)
  %call7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call6, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %inc9 = add nsw i32 %12, 1
  store i32 %inc9, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z4readv() #3 {
entry:
  store i32 0, ptr @i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, ptr @i, align 4, !tbaa !5
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, ptr @j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr @j, align 4, !tbaa !5
  %3 = load i32, ptr @n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %idxprom
  %5 = load i32, ptr @j, align 4, !tbaa !5
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [201 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, ptr @j, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr @j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !13

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %7 = load i32, ptr @i, align 4, !tbaa !5
  %inc7 = add nsw i32 %7, 1
  store i32 %inc7, ptr @i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end8:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z3deli(i32 noundef %n) #4 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store i32 0, ptr @i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %0 = load i32, ptr @i, align 4, !tbaa !5
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [201 x i32], ptr %arrayidx, i64 0, i64 0
  %3 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %4 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [201 x i32], ptr @min1, i64 0, i64 %idxprom2
  store i32 %3, ptr %arrayidx3, align 4, !tbaa !5
  store i32 0, ptr @j, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr @j, align 4, !tbaa !5
  %6 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %5, %6
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %7 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %idxprom7
  %8 = load i32, ptr @j, align 4, !tbaa !5
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [201 x i32], ptr %arrayidx8, i64 0, i64 %idxprom9
  %9 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %10 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [201 x i32], ptr @min1, i64 0, i64 %idxprom11
  %11 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %9, %11
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  %12 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %idxprom14
  %13 = load i32, ptr @j, align 4, !tbaa !5
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [201 x i32], ptr %arrayidx15, i64 0, i64 %idxprom16
  %14 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %15 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [201 x i32], ptr @min1, i64 0, i64 %idxprom18
  store i32 %14, ptr %arrayidx19, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr @j, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr @j, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !15

for.end:                                          ; preds = %for.cond4
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %17 = load i32, ptr @i, align 4, !tbaa !5
  %inc21 = add nsw i32 %17, 1
  store i32 %inc21, ptr @i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !16

for.end22:                                        ; preds = %for.cond
  store i32 0, ptr @i, align 4, !tbaa !5
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc42, %for.end22
  %18 = load i32, ptr @i, align 4, !tbaa !5
  %19 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %18, %19
  br i1 %cmp24, label %for.body25, label %for.end44

for.body25:                                       ; preds = %for.cond23
  store i32 0, ptr @j, align 4, !tbaa !5
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc39, %for.body25
  %20 = load i32, ptr @j, align 4, !tbaa !5
  %21 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %20, %21
  br i1 %cmp27, label %for.body28, label %for.end41

for.body28:                                       ; preds = %for.cond26
  %22 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom29 = sext i32 %22 to i64
  %arrayidx30 = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %idxprom29
  %23 = load i32, ptr @j, align 4, !tbaa !5
  %idxprom31 = sext i32 %23 to i64
  %arrayidx32 = getelementptr inbounds [201 x i32], ptr %arrayidx30, i64 0, i64 %idxprom31
  %24 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %25 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom33 = sext i32 %25 to i64
  %arrayidx34 = getelementptr inbounds [201 x i32], ptr @min1, i64 0, i64 %idxprom33
  %26 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %sub = sub nsw i32 %24, %26
  %27 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom35 = sext i32 %27 to i64
  %arrayidx36 = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %idxprom35
  %28 = load i32, ptr @j, align 4, !tbaa !5
  %idxprom37 = sext i32 %28 to i64
  %arrayidx38 = getelementptr inbounds [201 x i32], ptr %arrayidx36, i64 0, i64 %idxprom37
  store i32 %sub, ptr %arrayidx38, align 4, !tbaa !5
  br label %for.inc39

for.inc39:                                        ; preds = %for.body28
  %29 = load i32, ptr @j, align 4, !tbaa !5
  %inc40 = add nsw i32 %29, 1
  store i32 %inc40, ptr @j, align 4, !tbaa !5
  br label %for.cond26, !llvm.loop !17

for.end41:                                        ; preds = %for.cond26
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %30 = load i32, ptr @i, align 4, !tbaa !5
  %inc43 = add nsw i32 %30, 1
  store i32 %inc43, ptr @i, align 4, !tbaa !5
  br label %for.cond23, !llvm.loop !18

for.end44:                                        ; preds = %for.cond23
  store i32 0, ptr @i, align 4, !tbaa !5
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc73, %for.end44
  %31 = load i32, ptr @i, align 4, !tbaa !5
  %32 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %31, %32
  br i1 %cmp46, label %for.body47, label %for.end75

for.body47:                                       ; preds = %for.cond45
  %33 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom48 = sext i32 %33 to i64
  %arrayidx49 = getelementptr inbounds [201 x i32], ptr @a, i64 0, i64 %idxprom48
  %34 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %35 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom50 = sext i32 %35 to i64
  %arrayidx51 = getelementptr inbounds [201 x i32], ptr @min2, i64 0, i64 %idxprom50
  store i32 %34, ptr %arrayidx51, align 4, !tbaa !5
  store i32 0, ptr @j, align 4, !tbaa !5
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc70, %for.body47
  %36 = load i32, ptr @j, align 4, !tbaa !5
  %37 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %36, %37
  br i1 %cmp53, label %for.body54, label %for.end72

for.body54:                                       ; preds = %for.cond52
  %38 = load i32, ptr @j, align 4, !tbaa !5
  %idxprom55 = sext i32 %38 to i64
  %arrayidx56 = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %idxprom55
  %39 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom57 = sext i32 %39 to i64
  %arrayidx58 = getelementptr inbounds [201 x i32], ptr %arrayidx56, i64 0, i64 %idxprom57
  %40 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %41 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom59 = sext i32 %41 to i64
  %arrayidx60 = getelementptr inbounds [201 x i32], ptr @min2, i64 0, i64 %idxprom59
  %42 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %40, %42
  br i1 %cmp61, label %if.then62, label %if.end69

if.then62:                                        ; preds = %for.body54
  %43 = load i32, ptr @j, align 4, !tbaa !5
  %idxprom63 = sext i32 %43 to i64
  %arrayidx64 = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %idxprom63
  %44 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom65 = sext i32 %44 to i64
  %arrayidx66 = getelementptr inbounds [201 x i32], ptr %arrayidx64, i64 0, i64 %idxprom65
  %45 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  %46 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom67 = sext i32 %46 to i64
  %arrayidx68 = getelementptr inbounds [201 x i32], ptr @min2, i64 0, i64 %idxprom67
  store i32 %45, ptr %arrayidx68, align 4, !tbaa !5
  br label %if.end69

if.end69:                                         ; preds = %if.then62, %for.body54
  br label %for.inc70

for.inc70:                                        ; preds = %if.end69
  %47 = load i32, ptr @j, align 4, !tbaa !5
  %inc71 = add nsw i32 %47, 1
  store i32 %inc71, ptr @j, align 4, !tbaa !5
  br label %for.cond52, !llvm.loop !19

for.end72:                                        ; preds = %for.cond52
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %48 = load i32, ptr @i, align 4, !tbaa !5
  %inc74 = add nsw i32 %48, 1
  store i32 %inc74, ptr @i, align 4, !tbaa !5
  br label %for.cond45, !llvm.loop !20

for.end75:                                        ; preds = %for.cond45
  store i32 0, ptr @i, align 4, !tbaa !5
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc96, %for.end75
  %49 = load i32, ptr @i, align 4, !tbaa !5
  %50 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %49, %50
  br i1 %cmp77, label %for.body78, label %for.end98

for.body78:                                       ; preds = %for.cond76
  store i32 0, ptr @j, align 4, !tbaa !5
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc93, %for.body78
  %51 = load i32, ptr @j, align 4, !tbaa !5
  %52 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp80 = icmp slt i32 %51, %52
  br i1 %cmp80, label %for.body81, label %for.end95

for.body81:                                       ; preds = %for.cond79
  %53 = load i32, ptr @j, align 4, !tbaa !5
  %idxprom82 = sext i32 %53 to i64
  %arrayidx83 = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %idxprom82
  %54 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom84 = sext i32 %54 to i64
  %arrayidx85 = getelementptr inbounds [201 x i32], ptr %arrayidx83, i64 0, i64 %idxprom84
  %55 = load i32, ptr %arrayidx85, align 4, !tbaa !5
  %56 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom86 = sext i32 %56 to i64
  %arrayidx87 = getelementptr inbounds [201 x i32], ptr @min2, i64 0, i64 %idxprom86
  %57 = load i32, ptr %arrayidx87, align 4, !tbaa !5
  %sub88 = sub nsw i32 %55, %57
  %58 = load i32, ptr @j, align 4, !tbaa !5
  %idxprom89 = sext i32 %58 to i64
  %arrayidx90 = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %idxprom89
  %59 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom91 = sext i32 %59 to i64
  %arrayidx92 = getelementptr inbounds [201 x i32], ptr %arrayidx90, i64 0, i64 %idxprom91
  store i32 %sub88, ptr %arrayidx92, align 4, !tbaa !5
  br label %for.inc93

for.inc93:                                        ; preds = %for.body81
  %60 = load i32, ptr @j, align 4, !tbaa !5
  %inc94 = add nsw i32 %60, 1
  store i32 %inc94, ptr @j, align 4, !tbaa !5
  br label %for.cond79, !llvm.loop !21

for.end95:                                        ; preds = %for.cond79
  br label %for.inc96

for.inc96:                                        ; preds = %for.end95
  %61 = load i32, ptr @i, align 4, !tbaa !5
  %inc97 = add nsw i32 %61, 1
  store i32 %inc97, ptr @i, align 4, !tbaa !5
  br label %for.cond76, !llvm.loop !22

for.end98:                                        ; preds = %for.cond76
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z4movei(i32 noundef %n) #4 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store i32 2, ptr @i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, ptr @i, align 4, !tbaa !5
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, ptr @j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr @j, align 4, !tbaa !5
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %idxprom
  %5 = load i32, ptr @j, align 4, !tbaa !5
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [201 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %6 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %7 = load i32, ptr @i, align 4, !tbaa !5
  %sub = sub nsw i32 %7, 1
  %idxprom6 = sext i32 %sub to i64
  %arrayidx7 = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %idxprom6
  %8 = load i32, ptr @j, align 4, !tbaa !5
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [201 x i32], ptr %arrayidx7, i64 0, i64 %idxprom8
  store i32 %6, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32, ptr @j, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr @j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !23

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %10 = load i32, ptr @i, align 4, !tbaa !5
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, ptr @i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !24

for.end12:                                        ; preds = %for.cond
  store i32 0, ptr @i, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc31, %for.end12
  %11 = load i32, ptr @i, align 4, !tbaa !5
  %12 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %11, %12
  br i1 %cmp14, label %for.body15, label %for.end33

for.body15:                                       ; preds = %for.cond13
  store i32 2, ptr @j, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc28, %for.body15
  %13 = load i32, ptr @j, align 4, !tbaa !5
  %14 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %13, %14
  br i1 %cmp17, label %for.body18, label %for.end30

for.body18:                                       ; preds = %for.cond16
  %15 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %idxprom19
  %16 = load i32, ptr @j, align 4, !tbaa !5
  %idxprom21 = sext i32 %16 to i64
  %arrayidx22 = getelementptr inbounds [201 x i32], ptr %arrayidx20, i64 0, i64 %idxprom21
  %17 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %18 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %idxprom23
  %19 = load i32, ptr @j, align 4, !tbaa !5
  %sub25 = sub nsw i32 %19, 1
  %idxprom26 = sext i32 %sub25 to i64
  %arrayidx27 = getelementptr inbounds [201 x i32], ptr %arrayidx24, i64 0, i64 %idxprom26
  store i32 %17, ptr %arrayidx27, align 4, !tbaa !5
  br label %for.inc28

for.inc28:                                        ; preds = %for.body18
  %20 = load i32, ptr @j, align 4, !tbaa !5
  %inc29 = add nsw i32 %20, 1
  store i32 %inc29, ptr @j, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !25

for.end30:                                        ; preds = %for.cond16
  br label %for.inc31

for.inc31:                                        ; preds = %for.end30
  %21 = load i32, ptr @i, align 4, !tbaa !5
  %inc32 = add nsw i32 %21, 1
  store i32 %inc32, ptr @i, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !26

for.end33:                                        ; preds = %for.cond13
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #3 align 2 {
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !27
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !27, !nonnull !31, !align !32
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #1

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #3 align 2 {
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

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #1

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
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #3 comdat align 2 {
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

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
