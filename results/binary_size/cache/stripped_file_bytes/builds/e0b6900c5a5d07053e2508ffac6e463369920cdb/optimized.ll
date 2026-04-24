; ModuleID = '/tmp/tmpnuturm82.cpp'
source_filename = "/tmp/tmpnuturm82.cpp"
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
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ans = alloca i32, align 4
  %nn = alloca i32, align 4
  %i19 = alloca i32, align 4
  %min = alloca i32, align 4
  %j27 = alloca i32, align 4
  %j44 = alloca i32, align 4
  %i59 = alloca i32, align 4
  %min64 = alloca i32, align 4
  %j68 = alloca i32, align 4
  %j87 = alloca i32, align 4
  %i105 = alloca i32, align 4
  %j110 = alloca i32, align 4
  %j130 = alloca i32, align 4
  %i135 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc159, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  br label %for.end161

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  br label %for.end14

for.body4:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %4, %5
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  br label %for.end

for.body8:                                        ; preds = %for.cond5
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom9
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup7
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc13 = add nsw i32 %9, 1
  store i32 %inc13, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end14:                                        ; preds = %for.cond.cleanup3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ans) #6
  store i32 0, ptr %ans, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nn) #6
  %10 = load i32, ptr %n, align 4, !tbaa !5
  store i32 %10, ptr %nn, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc155, %for.end14
  %11 = load i32, ptr %nn, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %11, 1
  br i1 %cmp16, label %for.body18, label %for.cond.cleanup17

for.cond.cleanup17:                               ; preds = %for.cond15
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nn) #6
  br label %for.end156

for.body18:                                       ; preds = %for.cond15
  call void @llvm.lifetime.start.p0(i64 4, ptr %i19) #6
  store i32 0, ptr %i19, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc56, %for.body18
  %12 = load i32, ptr %i19, align 4, !tbaa !5
  %13 = load i32, ptr %nn, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %12, %13
  br i1 %cmp21, label %for.body23, label %for.cond.cleanup22

for.cond.cleanup22:                               ; preds = %for.cond20
  store i32 14, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i19) #6
  br label %for.end58

for.body23:                                       ; preds = %for.cond20
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #6
  %14 = load i32, ptr %i19, align 4, !tbaa !5
  %idxprom24 = sext i32 %14 to i64
  %arrayidx25 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [100 x i32], ptr %arrayidx25, i64 0, i64 0
  %15 = load i32, ptr %arrayidx26, align 16, !tbaa !5
  store i32 %15, ptr %min, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j27) #6
  store i32 1, ptr %j27, align 4, !tbaa !5
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc41, %for.body23
  %16 = load i32, ptr %j27, align 4, !tbaa !5
  %17 = load i32, ptr %nn, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %16, %17
  br i1 %cmp29, label %for.body31, label %for.cond.cleanup30

for.cond.cleanup30:                               ; preds = %for.cond28
  store i32 17, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j27) #6
  br label %for.end43

for.body31:                                       ; preds = %for.cond28
  %18 = load i32, ptr %min, align 4, !tbaa !5
  %19 = load i32, ptr %i19, align 4, !tbaa !5
  %idxprom32 = sext i32 %19 to i64
  %arrayidx33 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom32
  %20 = load i32, ptr %j27, align 4, !tbaa !5
  %idxprom34 = sext i32 %20 to i64
  %arrayidx35 = getelementptr inbounds [100 x i32], ptr %arrayidx33, i64 0, i64 %idxprom34
  %21 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %cmp36 = icmp sgt i32 %18, %21
  br i1 %cmp36, label %if.then, label %if.end

if.then:                                          ; preds = %for.body31
  %22 = load i32, ptr %i19, align 4, !tbaa !5
  %idxprom37 = sext i32 %22 to i64
  %arrayidx38 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom37
  %23 = load i32, ptr %j27, align 4, !tbaa !5
  %idxprom39 = sext i32 %23 to i64
  %arrayidx40 = getelementptr inbounds [100 x i32], ptr %arrayidx38, i64 0, i64 %idxprom39
  %24 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  store i32 %24, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body31
  br label %for.inc41

for.inc41:                                        ; preds = %if.end
  %25 = load i32, ptr %j27, align 4, !tbaa !5
  %inc42 = add nsw i32 %25, 1
  store i32 %inc42, ptr %j27, align 4, !tbaa !5
  br label %for.cond28, !llvm.loop !13

for.end43:                                        ; preds = %for.cond.cleanup30
  call void @llvm.lifetime.start.p0(i64 4, ptr %j44) #6
  store i32 0, ptr %j44, align 4, !tbaa !5
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc53, %for.end43
  %26 = load i32, ptr %j44, align 4, !tbaa !5
  %27 = load i32, ptr %nn, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %26, %27
  br i1 %cmp46, label %for.body48, label %for.cond.cleanup47

for.cond.cleanup47:                               ; preds = %for.cond45
  store i32 20, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j44) #6
  br label %for.end55

for.body48:                                       ; preds = %for.cond45
  %28 = load i32, ptr %min, align 4, !tbaa !5
  %29 = load i32, ptr %i19, align 4, !tbaa !5
  %idxprom49 = sext i32 %29 to i64
  %arrayidx50 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom49
  %30 = load i32, ptr %j44, align 4, !tbaa !5
  %idxprom51 = sext i32 %30 to i64
  %arrayidx52 = getelementptr inbounds [100 x i32], ptr %arrayidx50, i64 0, i64 %idxprom51
  %31 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %sub = sub nsw i32 %31, %28
  store i32 %sub, ptr %arrayidx52, align 4, !tbaa !5
  br label %for.inc53

for.inc53:                                        ; preds = %for.body48
  %32 = load i32, ptr %j44, align 4, !tbaa !5
  %inc54 = add nsw i32 %32, 1
  store i32 %inc54, ptr %j44, align 4, !tbaa !5
  br label %for.cond45, !llvm.loop !14

for.end55:                                        ; preds = %for.cond.cleanup47
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #6
  br label %for.inc56

for.inc56:                                        ; preds = %for.end55
  %33 = load i32, ptr %i19, align 4, !tbaa !5
  %inc57 = add nsw i32 %33, 1
  store i32 %inc57, ptr %i19, align 4, !tbaa !5
  br label %for.cond20, !llvm.loop !15

for.end58:                                        ; preds = %for.cond.cleanup22
  call void @llvm.lifetime.start.p0(i64 4, ptr %i59) #6
  store i32 0, ptr %i59, align 4, !tbaa !5
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc100, %for.end58
  %34 = load i32, ptr %i59, align 4, !tbaa !5
  %35 = load i32, ptr %nn, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %34, %35
  br i1 %cmp61, label %for.body63, label %for.cond.cleanup62

for.cond.cleanup62:                               ; preds = %for.cond60
  store i32 23, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i59) #6
  br label %for.end102

for.body63:                                       ; preds = %for.cond60
  call void @llvm.lifetime.start.p0(i64 4, ptr %min64) #6
  %arrayidx65 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %36 = load i32, ptr %i59, align 4, !tbaa !5
  %idxprom66 = sext i32 %36 to i64
  %arrayidx67 = getelementptr inbounds [100 x i32], ptr %arrayidx65, i64 0, i64 %idxprom66
  %37 = load i32, ptr %arrayidx67, align 4, !tbaa !5
  store i32 %37, ptr %min64, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j68) #6
  store i32 1, ptr %j68, align 4, !tbaa !5
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc84, %for.body63
  %38 = load i32, ptr %j68, align 4, !tbaa !5
  %39 = load i32, ptr %nn, align 4, !tbaa !5
  %cmp70 = icmp slt i32 %38, %39
  br i1 %cmp70, label %for.body72, label %for.cond.cleanup71

for.cond.cleanup71:                               ; preds = %for.cond69
  store i32 26, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j68) #6
  br label %for.end86

for.body72:                                       ; preds = %for.cond69
  %40 = load i32, ptr %min64, align 4, !tbaa !5
  %41 = load i32, ptr %j68, align 4, !tbaa !5
  %idxprom73 = sext i32 %41 to i64
  %arrayidx74 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom73
  %42 = load i32, ptr %i59, align 4, !tbaa !5
  %idxprom75 = sext i32 %42 to i64
  %arrayidx76 = getelementptr inbounds [100 x i32], ptr %arrayidx74, i64 0, i64 %idxprom75
  %43 = load i32, ptr %arrayidx76, align 4, !tbaa !5
  %cmp77 = icmp sgt i32 %40, %43
  br i1 %cmp77, label %if.then78, label %if.end83

if.then78:                                        ; preds = %for.body72
  %44 = load i32, ptr %j68, align 4, !tbaa !5
  %idxprom79 = sext i32 %44 to i64
  %arrayidx80 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom79
  %45 = load i32, ptr %i59, align 4, !tbaa !5
  %idxprom81 = sext i32 %45 to i64
  %arrayidx82 = getelementptr inbounds [100 x i32], ptr %arrayidx80, i64 0, i64 %idxprom81
  %46 = load i32, ptr %arrayidx82, align 4, !tbaa !5
  store i32 %46, ptr %min64, align 4, !tbaa !5
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %for.body72
  br label %for.inc84

for.inc84:                                        ; preds = %if.end83
  %47 = load i32, ptr %j68, align 4, !tbaa !5
  %inc85 = add nsw i32 %47, 1
  store i32 %inc85, ptr %j68, align 4, !tbaa !5
  br label %for.cond69, !llvm.loop !16

for.end86:                                        ; preds = %for.cond.cleanup71
  call void @llvm.lifetime.start.p0(i64 4, ptr %j87) #6
  store i32 0, ptr %j87, align 4, !tbaa !5
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc97, %for.end86
  %48 = load i32, ptr %j87, align 4, !tbaa !5
  %49 = load i32, ptr %nn, align 4, !tbaa !5
  %cmp89 = icmp slt i32 %48, %49
  br i1 %cmp89, label %for.body91, label %for.cond.cleanup90

for.cond.cleanup90:                               ; preds = %for.cond88
  store i32 29, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j87) #6
  br label %for.end99

for.body91:                                       ; preds = %for.cond88
  %50 = load i32, ptr %min64, align 4, !tbaa !5
  %51 = load i32, ptr %j87, align 4, !tbaa !5
  %idxprom92 = sext i32 %51 to i64
  %arrayidx93 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom92
  %52 = load i32, ptr %i59, align 4, !tbaa !5
  %idxprom94 = sext i32 %52 to i64
  %arrayidx95 = getelementptr inbounds [100 x i32], ptr %arrayidx93, i64 0, i64 %idxprom94
  %53 = load i32, ptr %arrayidx95, align 4, !tbaa !5
  %sub96 = sub nsw i32 %53, %50
  store i32 %sub96, ptr %arrayidx95, align 4, !tbaa !5
  br label %for.inc97

for.inc97:                                        ; preds = %for.body91
  %54 = load i32, ptr %j87, align 4, !tbaa !5
  %inc98 = add nsw i32 %54, 1
  store i32 %inc98, ptr %j87, align 4, !tbaa !5
  br label %for.cond88, !llvm.loop !17

for.end99:                                        ; preds = %for.cond.cleanup90
  call void @llvm.lifetime.end.p0(i64 4, ptr %min64) #6
  br label %for.inc100

for.inc100:                                       ; preds = %for.end99
  %55 = load i32, ptr %i59, align 4, !tbaa !5
  %inc101 = add nsw i32 %55, 1
  store i32 %inc101, ptr %i59, align 4, !tbaa !5
  br label %for.cond60, !llvm.loop !18

for.end102:                                       ; preds = %for.cond.cleanup62
  %arrayidx103 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 1
  %arrayidx104 = getelementptr inbounds [100 x i32], ptr %arrayidx103, i64 0, i64 1
  %56 = load i32, ptr %arrayidx104, align 4, !tbaa !5
  %57 = load i32, ptr %ans, align 4, !tbaa !5
  %add = add nsw i32 %57, %56
  store i32 %add, ptr %ans, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i105) #6
  store i32 1, ptr %i105, align 4, !tbaa !5
  br label %for.cond106

for.cond106:                                      ; preds = %for.inc127, %for.end102
  %58 = load i32, ptr %i105, align 4, !tbaa !5
  %59 = load i32, ptr %nn, align 4, !tbaa !5
  %cmp107 = icmp slt i32 %58, %59
  br i1 %cmp107, label %for.body109, label %for.cond.cleanup108

for.cond.cleanup108:                              ; preds = %for.cond106
  store i32 32, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i105) #6
  br label %for.end129

for.body109:                                      ; preds = %for.cond106
  call void @llvm.lifetime.start.p0(i64 4, ptr %j110) #6
  store i32 0, ptr %j110, align 4, !tbaa !5
  br label %for.cond111

for.cond111:                                      ; preds = %for.inc124, %for.body109
  %60 = load i32, ptr %j110, align 4, !tbaa !5
  %61 = load i32, ptr %nn, align 4, !tbaa !5
  %cmp112 = icmp slt i32 %60, %61
  br i1 %cmp112, label %for.body114, label %for.cond.cleanup113

for.cond.cleanup113:                              ; preds = %for.cond111
  store i32 35, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j110) #6
  br label %for.end126

for.body114:                                      ; preds = %for.cond111
  %62 = load i32, ptr %i105, align 4, !tbaa !5
  %add115 = add nsw i32 %62, 1
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom116
  %63 = load i32, ptr %j110, align 4, !tbaa !5
  %idxprom118 = sext i32 %63 to i64
  %arrayidx119 = getelementptr inbounds [100 x i32], ptr %arrayidx117, i64 0, i64 %idxprom118
  %64 = load i32, ptr %arrayidx119, align 4, !tbaa !5
  %65 = load i32, ptr %i105, align 4, !tbaa !5
  %idxprom120 = sext i32 %65 to i64
  %arrayidx121 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom120
  %66 = load i32, ptr %j110, align 4, !tbaa !5
  %idxprom122 = sext i32 %66 to i64
  %arrayidx123 = getelementptr inbounds [100 x i32], ptr %arrayidx121, i64 0, i64 %idxprom122
  store i32 %64, ptr %arrayidx123, align 4, !tbaa !5
  br label %for.inc124

for.inc124:                                       ; preds = %for.body114
  %67 = load i32, ptr %j110, align 4, !tbaa !5
  %inc125 = add nsw i32 %67, 1
  store i32 %inc125, ptr %j110, align 4, !tbaa !5
  br label %for.cond111, !llvm.loop !19

for.end126:                                       ; preds = %for.cond.cleanup113
  br label %for.inc127

for.inc127:                                       ; preds = %for.end126
  %68 = load i32, ptr %i105, align 4, !tbaa !5
  %inc128 = add nsw i32 %68, 1
  store i32 %inc128, ptr %i105, align 4, !tbaa !5
  br label %for.cond106, !llvm.loop !20

for.end129:                                       ; preds = %for.cond.cleanup108
  call void @llvm.lifetime.start.p0(i64 4, ptr %j130) #6
  store i32 1, ptr %j130, align 4, !tbaa !5
  br label %for.cond131

for.cond131:                                      ; preds = %for.inc152, %for.end129
  %69 = load i32, ptr %j130, align 4, !tbaa !5
  %70 = load i32, ptr %nn, align 4, !tbaa !5
  %cmp132 = icmp slt i32 %69, %70
  br i1 %cmp132, label %for.body134, label %for.cond.cleanup133

for.cond.cleanup133:                              ; preds = %for.cond131
  store i32 38, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j130) #6
  br label %for.end154

for.body134:                                      ; preds = %for.cond131
  call void @llvm.lifetime.start.p0(i64 4, ptr %i135) #6
  store i32 0, ptr %i135, align 4, !tbaa !5
  br label %for.cond136

for.cond136:                                      ; preds = %for.inc149, %for.body134
  %71 = load i32, ptr %i135, align 4, !tbaa !5
  %72 = load i32, ptr %nn, align 4, !tbaa !5
  %cmp137 = icmp slt i32 %71, %72
  br i1 %cmp137, label %for.body139, label %for.cond.cleanup138

for.cond.cleanup138:                              ; preds = %for.cond136
  store i32 41, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i135) #6
  br label %for.end151

for.body139:                                      ; preds = %for.cond136
  %73 = load i32, ptr %i135, align 4, !tbaa !5
  %idxprom140 = sext i32 %73 to i64
  %arrayidx141 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom140
  %74 = load i32, ptr %j130, align 4, !tbaa !5
  %add142 = add nsw i32 %74, 1
  %idxprom143 = sext i32 %add142 to i64
  %arrayidx144 = getelementptr inbounds [100 x i32], ptr %arrayidx141, i64 0, i64 %idxprom143
  %75 = load i32, ptr %arrayidx144, align 4, !tbaa !5
  %76 = load i32, ptr %i135, align 4, !tbaa !5
  %idxprom145 = sext i32 %76 to i64
  %arrayidx146 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom145
  %77 = load i32, ptr %j130, align 4, !tbaa !5
  %idxprom147 = sext i32 %77 to i64
  %arrayidx148 = getelementptr inbounds [100 x i32], ptr %arrayidx146, i64 0, i64 %idxprom147
  store i32 %75, ptr %arrayidx148, align 4, !tbaa !5
  br label %for.inc149

for.inc149:                                       ; preds = %for.body139
  %78 = load i32, ptr %i135, align 4, !tbaa !5
  %inc150 = add nsw i32 %78, 1
  store i32 %inc150, ptr %i135, align 4, !tbaa !5
  br label %for.cond136, !llvm.loop !21

for.end151:                                       ; preds = %for.cond.cleanup138
  br label %for.inc152

for.inc152:                                       ; preds = %for.end151
  %79 = load i32, ptr %j130, align 4, !tbaa !5
  %inc153 = add nsw i32 %79, 1
  store i32 %inc153, ptr %j130, align 4, !tbaa !5
  br label %for.cond131, !llvm.loop !22

for.end154:                                       ; preds = %for.cond.cleanup133
  br label %for.inc155

for.inc155:                                       ; preds = %for.end154
  %80 = load i32, ptr %nn, align 4, !tbaa !5
  %dec = add nsw i32 %80, -1
  store i32 %dec, ptr %nn, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !23

for.end156:                                       ; preds = %for.cond.cleanup17
  %81 = load i32, ptr %ans, align 4, !tbaa !5
  %call157 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %81)
  %call158 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call157, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 4, ptr %ans) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #6
  br label %for.inc159

for.inc159:                                       ; preds = %for.end156
  %82 = load i32, ptr %k, align 4, !tbaa !5
  %inc160 = add nsw i32 %82, 1
  store i32 %inc160, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !24

for.end161:                                       ; preds = %for.cond.cleanup
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
  %83 = load i32, ptr %retval, align 4
  ret i32 %83
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
