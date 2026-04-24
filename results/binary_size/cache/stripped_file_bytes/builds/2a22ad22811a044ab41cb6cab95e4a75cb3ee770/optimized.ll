; ModuleID = '/tmp/tmps6o55l58.cpp'
source_filename = "/tmp/tmps6o55l58.cpp"
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
@g_n = dso_local global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %cishu = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @g_n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr @g_n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc11, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr @g_n, align 4, !tbaa !5
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp sle i32 %2, %sub
  br i1 %cmp2, label %for.body3, label %for.end13

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %5 = load i32, ptr @g_n, align 4, !tbaa !5
  %sub5 = sub nsw i32 %5, 1
  %cmp6 = icmp sle i32 %4, %sub5
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom8
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx9)
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %inc12 = add nsw i32 %9, 1
  store i32 %inc12, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end13:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 4, ptr %cishu) #7
  store i32 1, ptr %cishu, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #7
  store i32 0, ptr %sum, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc25, %for.end13
  %10 = load i32, ptr @g_n, align 4, !tbaa !5
  %sub15 = sub nsw i32 %10, 1
  %idxprom16 = sext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [100 x i32], ptr %arrayidx17, i64 0, i64 0
  %11 = load i32, ptr %arrayidx18, align 16, !tbaa !5
  %cmp19 = icmp sge i32 %11, 0
  br i1 %cmp19, label %for.body20, label %for.end27

for.body20:                                       ; preds = %for.cond14
  call void @_Z7guilingv()
  %12 = load i32, ptr %sum, align 4, !tbaa !5
  %13 = load i32, ptr %cishu, align 4, !tbaa !5
  %idxprom21 = sext i32 %13 to i64
  %arrayidx22 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom21
  %14 = load i32, ptr %cishu, align 4, !tbaa !5
  %idxprom23 = sext i32 %14 to i64
  %arrayidx24 = getelementptr inbounds [100 x i32], ptr %arrayidx22, i64 0, i64 %idxprom23
  %15 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %add = add nsw i32 %12, %15
  store i32 %add, ptr %sum, align 4, !tbaa !5
  %16 = load i32, ptr %cishu, align 4, !tbaa !5
  call void @_Z8xiaojiani(i32 noundef %16)
  br label %for.inc25

for.inc25:                                        ; preds = %for.body20
  %17 = load i32, ptr %cishu, align 4, !tbaa !5
  %inc26 = add nsw i32 %17, 1
  store i32 %inc26, ptr %cishu, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !13

for.end27:                                        ; preds = %for.cond14
  %18 = load i32, ptr %sum, align 4, !tbaa !5
  %call28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %18)
  %call29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call28, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %cishu) #7
  br label %for.inc30

for.inc30:                                        ; preds = %for.end27
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %inc31 = add nsw i32 %19, 1
  store i32 %inc31, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end32:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z7guilingv() #3 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %flag = alloca i32, align 4
  %min = alloca i32, align 4
  %p = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  store i32 0, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  store i32 0, ptr %j, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %flag) #7
  store i32 0, ptr %flag, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #7
  store i32 1000, ptr %min, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #7
  store i32 0, ptr %p, align 4, !tbaa !5
  store i32 0, ptr %p, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc115, %entry
  %0 = load i32, ptr %p, align 4, !tbaa !5
  %1 = load i32, ptr @g_n, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end117

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %flag, align 4, !tbaa !5
  store i32 1000, ptr %min, align 4, !tbaa !5
  %2 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 0
  %3 = load i32, ptr %arrayidx1, align 16, !tbaa !5
  %cmp2 = icmp sge i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.end114

if.then:                                          ; preds = %for.body
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc53, %if.then
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr @g_n, align 4, !tbaa !5
  %sub4 = sub nsw i32 %5, 1
  %cmp5 = icmp sle i32 %4, %sub4
  br i1 %cmp5, label %for.body6, label %for.end55

for.body6:                                        ; preds = %for.cond3
  store i32 0, ptr %flag, align 4, !tbaa !5
  store i32 1000, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %7 = load i32, ptr @g_n, align 4, !tbaa !5
  %sub8 = sub nsw i32 %7, 1
  %cmp9 = icmp sle i32 %6, %sub8
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond7
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom11
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom13 = sext i32 %9 to i64
  %arrayidx14 = getelementptr inbounds [100 x i32], ptr %arrayidx12, i64 0, i64 %idxprom13
  %10 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %10, 0
  br i1 %cmp15, label %if.then16, label %if.end

if.then16:                                        ; preds = %for.body10
  br label %for.inc

if.end:                                           ; preds = %for.body10
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %11 to i64
  %arrayidx18 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom17
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom19 = sext i32 %12 to i64
  %arrayidx20 = getelementptr inbounds [100 x i32], ptr %arrayidx18, i64 0, i64 %idxprom19
  %13 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %cmp21 = icmp eq i32 %13, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end
  store i32 1, ptr %flag, align 4, !tbaa !5
  br label %for.end

if.end23:                                         ; preds = %if.end
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom24 = sext i32 %14 to i64
  %arrayidx25 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom24
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom26 = sext i32 %15 to i64
  %arrayidx27 = getelementptr inbounds [100 x i32], ptr %arrayidx25, i64 0, i64 %idxprom26
  %16 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %17 = load i32, ptr %min, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %16, %17
  br i1 %cmp28, label %if.then29, label %if.end34

if.then29:                                        ; preds = %if.end23
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %18 to i64
  %arrayidx31 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom30
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom32 = sext i32 %19 to i64
  %arrayidx33 = getelementptr inbounds [100 x i32], ptr %arrayidx31, i64 0, i64 %idxprom32
  %20 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  store i32 %20, ptr %min, align 4, !tbaa !5
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end23
  br label %for.inc

for.inc:                                          ; preds = %if.end34, %if.then16
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !15

for.end:                                          ; preds = %if.then22, %for.cond7
  %22 = load i32, ptr %flag, align 4, !tbaa !5
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.end52, label %if.then35

if.then35:                                        ; preds = %for.end
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc49, %if.then35
  %23 = load i32, ptr %k, align 4, !tbaa !5
  %24 = load i32, ptr @g_n, align 4, !tbaa !5
  %sub37 = sub nsw i32 %24, 1
  %cmp38 = icmp sle i32 %23, %sub37
  br i1 %cmp38, label %for.body39, label %for.end51

for.body39:                                       ; preds = %for.cond36
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %25 to i64
  %arrayidx41 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom40
  %26 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom42 = sext i32 %26 to i64
  %arrayidx43 = getelementptr inbounds [100 x i32], ptr %arrayidx41, i64 0, i64 %idxprom42
  %27 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %28 = load i32, ptr %min, align 4, !tbaa !5
  %sub44 = sub nsw i32 %27, %28
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom45 = sext i32 %29 to i64
  %arrayidx46 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom45
  %30 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom47 = sext i32 %30 to i64
  %arrayidx48 = getelementptr inbounds [100 x i32], ptr %arrayidx46, i64 0, i64 %idxprom47
  store i32 %sub44, ptr %arrayidx48, align 4, !tbaa !5
  br label %for.inc49

for.inc49:                                        ; preds = %for.body39
  %31 = load i32, ptr %k, align 4, !tbaa !5
  %inc50 = add nsw i32 %31, 1
  store i32 %inc50, ptr %k, align 4, !tbaa !5
  br label %for.cond36, !llvm.loop !16

for.end51:                                        ; preds = %for.cond36
  br label %if.end52

if.end52:                                         ; preds = %for.end51, %for.end
  br label %for.inc53

for.inc53:                                        ; preds = %if.end52
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %inc54 = add nsw i32 %32, 1
  store i32 %inc54, ptr %i, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !17

for.end55:                                        ; preds = %for.cond3
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc111, %for.end55
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %34 = load i32, ptr @g_n, align 4, !tbaa !5
  %sub57 = sub nsw i32 %34, 1
  %cmp58 = icmp sle i32 %33, %sub57
  br i1 %cmp58, label %for.body59, label %for.end113

for.body59:                                       ; preds = %for.cond56
  store i32 0, ptr %flag, align 4, !tbaa !5
  store i32 1000, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc89, %for.body59
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %36 = load i32, ptr @g_n, align 4, !tbaa !5
  %sub61 = sub nsw i32 %36, 1
  %cmp62 = icmp sle i32 %35, %sub61
  br i1 %cmp62, label %for.body63, label %for.end91

for.body63:                                       ; preds = %for.cond60
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom64 = sext i32 %37 to i64
  %arrayidx65 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom64
  %38 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom66 = sext i32 %38 to i64
  %arrayidx67 = getelementptr inbounds [100 x i32], ptr %arrayidx65, i64 0, i64 %idxprom66
  %39 = load i32, ptr %arrayidx67, align 4, !tbaa !5
  %cmp68 = icmp slt i32 %39, 0
  br i1 %cmp68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %for.body63
  br label %for.inc89

if.end70:                                         ; preds = %for.body63
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom71 = sext i32 %40 to i64
  %arrayidx72 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom71
  %41 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom73 = sext i32 %41 to i64
  %arrayidx74 = getelementptr inbounds [100 x i32], ptr %arrayidx72, i64 0, i64 %idxprom73
  %42 = load i32, ptr %arrayidx74, align 4, !tbaa !5
  %cmp75 = icmp eq i32 %42, 0
  br i1 %cmp75, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end70
  store i32 1, ptr %flag, align 4, !tbaa !5
  br label %for.end91

if.end77:                                         ; preds = %if.end70
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom78 = sext i32 %43 to i64
  %arrayidx79 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom78
  %44 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom80 = sext i32 %44 to i64
  %arrayidx81 = getelementptr inbounds [100 x i32], ptr %arrayidx79, i64 0, i64 %idxprom80
  %45 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %46 = load i32, ptr %min, align 4, !tbaa !5
  %cmp82 = icmp slt i32 %45, %46
  br i1 %cmp82, label %if.then83, label %if.end88

if.then83:                                        ; preds = %if.end77
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom84 = sext i32 %47 to i64
  %arrayidx85 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom84
  %48 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom86 = sext i32 %48 to i64
  %arrayidx87 = getelementptr inbounds [100 x i32], ptr %arrayidx85, i64 0, i64 %idxprom86
  %49 = load i32, ptr %arrayidx87, align 4, !tbaa !5
  store i32 %49, ptr %min, align 4, !tbaa !5
  br label %if.end88

if.end88:                                         ; preds = %if.then83, %if.end77
  br label %for.inc89

for.inc89:                                        ; preds = %if.end88, %if.then69
  %50 = load i32, ptr %i, align 4, !tbaa !5
  %inc90 = add nsw i32 %50, 1
  store i32 %inc90, ptr %i, align 4, !tbaa !5
  br label %for.cond60, !llvm.loop !18

for.end91:                                        ; preds = %if.then76, %for.cond60
  %51 = load i32, ptr %flag, align 4, !tbaa !5
  %tobool92 = icmp ne i32 %51, 0
  br i1 %tobool92, label %if.end110, label %if.then93

if.then93:                                        ; preds = %for.end91
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc107, %if.then93
  %52 = load i32, ptr %k, align 4, !tbaa !5
  %53 = load i32, ptr @g_n, align 4, !tbaa !5
  %sub95 = sub nsw i32 %53, 1
  %cmp96 = icmp sle i32 %52, %sub95
  br i1 %cmp96, label %for.body97, label %for.end109

for.body97:                                       ; preds = %for.cond94
  %54 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom98 = sext i32 %54 to i64
  %arrayidx99 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom98
  %55 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom100 = sext i32 %55 to i64
  %arrayidx101 = getelementptr inbounds [100 x i32], ptr %arrayidx99, i64 0, i64 %idxprom100
  %56 = load i32, ptr %arrayidx101, align 4, !tbaa !5
  %57 = load i32, ptr %min, align 4, !tbaa !5
  %sub102 = sub nsw i32 %56, %57
  %58 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom103 = sext i32 %58 to i64
  %arrayidx104 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom103
  %59 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom105 = sext i32 %59 to i64
  %arrayidx106 = getelementptr inbounds [100 x i32], ptr %arrayidx104, i64 0, i64 %idxprom105
  store i32 %sub102, ptr %arrayidx106, align 4, !tbaa !5
  br label %for.inc107

for.inc107:                                       ; preds = %for.body97
  %60 = load i32, ptr %k, align 4, !tbaa !5
  %inc108 = add nsw i32 %60, 1
  store i32 %inc108, ptr %k, align 4, !tbaa !5
  br label %for.cond94, !llvm.loop !19

for.end109:                                       ; preds = %for.cond94
  br label %if.end110

if.end110:                                        ; preds = %for.end109, %for.end91
  br label %for.inc111

for.inc111:                                       ; preds = %if.end110
  %61 = load i32, ptr %j, align 4, !tbaa !5
  %inc112 = add nsw i32 %61, 1
  store i32 %inc112, ptr %j, align 4, !tbaa !5
  br label %for.cond56, !llvm.loop !20

for.end113:                                       ; preds = %for.cond56
  br label %if.end114

if.end114:                                        ; preds = %for.end113, %for.body
  br label %for.inc115

for.inc115:                                       ; preds = %if.end114
  %62 = load i32, ptr %p, align 4, !tbaa !5
  %inc116 = add nsw i32 %62, 1
  store i32 %inc116, ptr %p, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !21

for.end117:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %flag) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z8xiaojiani(i32 noundef %cishu) #3 {
entry:
  %cishu.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %cishu, ptr %cishu.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr @g_n, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %3 = load i32, ptr %cishu.addr, align 4, !tbaa !5
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom1
  store i32 -1, ptr %arrayidx2, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc11, %for.end
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %6 = load i32, ptr @g_n, align 4, !tbaa !5
  %sub4 = sub nsw i32 %6, 1
  %cmp5 = icmp sle i32 %5, %sub4
  br i1 %cmp5, label %for.body6, label %for.end13

for.body6:                                        ; preds = %for.cond3
  %7 = load i32, ptr %cishu.addr, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom7
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %arrayidx8, i64 0, i64 %idxprom9
  store i32 -1, ptr %arrayidx10, align 4, !tbaa !5
  br label %for.inc11

for.inc11:                                        ; preds = %for.body6
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %inc12 = add nsw i32 %9, 1
  store i32 %inc12, ptr %j, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !23

for.end13:                                        ; preds = %for.cond3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #4 align 2 {
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
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
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
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !24
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !24, !nonnull !28, !align !29
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #1

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
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

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #5 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !51
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !51
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !51
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #4 comdat align 2 {
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
declare void @_ZSt16__throw_bad_castv() #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
