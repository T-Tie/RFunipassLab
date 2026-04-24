; ModuleID = '/tmp/tmpw23qdzlq.cpp'
source_filename = "/tmp/tmpw23qdzlq.cpp"
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
  %a = alloca [200 x [200 x i32]], align 16
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %q = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 160000, ptr %a) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  store i32 0, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #6
  store i32 0, ptr %q, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #6
  store i32 0, ptr %s, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  store i32 %0, ptr %k, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %for.end143, %entry
  %1 = load i32, ptr %q, align 4, !tbaa !5
  %2 = load i32, ptr %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %s, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %while.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %6 = load i32, ptr %k, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [200 x [200 x i32]], ptr %a, i64 0, i64 %idxprom
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [200 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %inc9 = add nsw i32 %10, 1
  store i32 %inc9, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %11 = load i32, ptr %k, align 4, !tbaa !5
  store i32 %11, ptr %n, align 4, !tbaa !5
  store i32 1, ptr %m, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc141, %for.end10
  %12 = load i32, ptr %m, align 4, !tbaa !5
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %sub = sub nsw i32 %13, 1
  %cmp12 = icmp sle i32 %12, %sub
  br i1 %cmp12, label %for.body13, label %for.end143

for.body13:                                       ; preds = %for.cond11
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc50, %for.body13
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %15 = load i32, ptr %n, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %14, %15
  br i1 %cmp15, label %for.body16, label %for.end52

for.body16:                                       ; preds = %for.cond14
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [200 x [200 x i32]], ptr %a, i64 0, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [200 x i32], ptr %arrayidx18, i64 0, i64 0
  %17 = load i32, ptr %arrayidx19, align 16, !tbaa !5
  store i32 %17, ptr %l, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc32, %for.body16
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %19 = load i32, ptr %n, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %18, %19
  br i1 %cmp21, label %for.body22, label %for.end34

for.body22:                                       ; preds = %for.cond20
  %20 = load i32, ptr %l, align 4, !tbaa !5
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds [200 x [200 x i32]], ptr %a, i64 0, i64 %idxprom23
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom25 = sext i32 %22 to i64
  %arrayidx26 = getelementptr inbounds [200 x i32], ptr %arrayidx24, i64 0, i64 %idxprom25
  %23 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %cmp27 = icmp sgt i32 %20, %23
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %for.body22
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %24 to i64
  %arrayidx29 = getelementptr inbounds [200 x [200 x i32]], ptr %a, i64 0, i64 %idxprom28
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom30 = sext i32 %25 to i64
  %arrayidx31 = getelementptr inbounds [200 x i32], ptr %arrayidx29, i64 0, i64 %idxprom30
  %26 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  store i32 %26, ptr %l, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body22
  br label %for.inc32

for.inc32:                                        ; preds = %if.end
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %inc33 = add nsw i32 %27, 1
  store i32 %inc33, ptr %j, align 4, !tbaa !5
  br label %for.cond20, !llvm.loop !13

for.end34:                                        ; preds = %for.cond20
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc47, %for.end34
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %29 = load i32, ptr %n, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %28, %29
  br i1 %cmp36, label %for.body37, label %for.end49

for.body37:                                       ; preds = %for.cond35
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom38 = sext i32 %30 to i64
  %arrayidx39 = getelementptr inbounds [200 x [200 x i32]], ptr %a, i64 0, i64 %idxprom38
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom40 = sext i32 %31 to i64
  %arrayidx41 = getelementptr inbounds [200 x i32], ptr %arrayidx39, i64 0, i64 %idxprom40
  %32 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %33 = load i32, ptr %l, align 4, !tbaa !5
  %sub42 = sub nsw i32 %32, %33
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %34 to i64
  %arrayidx44 = getelementptr inbounds [200 x [200 x i32]], ptr %a, i64 0, i64 %idxprom43
  %35 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom45 = sext i32 %35 to i64
  %arrayidx46 = getelementptr inbounds [200 x i32], ptr %arrayidx44, i64 0, i64 %idxprom45
  store i32 %sub42, ptr %arrayidx46, align 4, !tbaa !5
  br label %for.inc47

for.inc47:                                        ; preds = %for.body37
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %inc48 = add nsw i32 %36, 1
  store i32 %inc48, ptr %j, align 4, !tbaa !5
  br label %for.cond35, !llvm.loop !14

for.end49:                                        ; preds = %for.cond35
  br label %for.inc50

for.inc50:                                        ; preds = %for.end49
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %inc51 = add nsw i32 %37, 1
  store i32 %inc51, ptr %i, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !15

for.end52:                                        ; preds = %for.cond14
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc91, %for.end52
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %39 = load i32, ptr %n, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %38, %39
  br i1 %cmp54, label %for.body55, label %for.end93

for.body55:                                       ; preds = %for.cond53
  %arrayidx56 = getelementptr inbounds [200 x [200 x i32]], ptr %a, i64 0, i64 0
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom57 = sext i32 %40 to i64
  %arrayidx58 = getelementptr inbounds [200 x i32], ptr %arrayidx56, i64 0, i64 %idxprom57
  %41 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  store i32 %41, ptr %l, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc73, %for.body55
  %42 = load i32, ptr %j, align 4, !tbaa !5
  %43 = load i32, ptr %n, align 4, !tbaa !5
  %cmp60 = icmp slt i32 %42, %43
  br i1 %cmp60, label %for.body61, label %for.end75

for.body61:                                       ; preds = %for.cond59
  %44 = load i32, ptr %l, align 4, !tbaa !5
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom62 = sext i32 %45 to i64
  %arrayidx63 = getelementptr inbounds [200 x [200 x i32]], ptr %a, i64 0, i64 %idxprom62
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom64 = sext i32 %46 to i64
  %arrayidx65 = getelementptr inbounds [200 x i32], ptr %arrayidx63, i64 0, i64 %idxprom64
  %47 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %cmp66 = icmp sgt i32 %44, %47
  br i1 %cmp66, label %if.then67, label %if.end72

if.then67:                                        ; preds = %for.body61
  %48 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom68 = sext i32 %48 to i64
  %arrayidx69 = getelementptr inbounds [200 x [200 x i32]], ptr %a, i64 0, i64 %idxprom68
  %49 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom70 = sext i32 %49 to i64
  %arrayidx71 = getelementptr inbounds [200 x i32], ptr %arrayidx69, i64 0, i64 %idxprom70
  %50 = load i32, ptr %arrayidx71, align 4, !tbaa !5
  store i32 %50, ptr %l, align 4, !tbaa !5
  br label %if.end72

if.end72:                                         ; preds = %if.then67, %for.body61
  br label %for.inc73

for.inc73:                                        ; preds = %if.end72
  %51 = load i32, ptr %j, align 4, !tbaa !5
  %inc74 = add nsw i32 %51, 1
  store i32 %inc74, ptr %j, align 4, !tbaa !5
  br label %for.cond59, !llvm.loop !16

for.end75:                                        ; preds = %for.cond59
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc88, %for.end75
  %52 = load i32, ptr %j, align 4, !tbaa !5
  %53 = load i32, ptr %n, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %52, %53
  br i1 %cmp77, label %for.body78, label %for.end90

for.body78:                                       ; preds = %for.cond76
  %54 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom79 = sext i32 %54 to i64
  %arrayidx80 = getelementptr inbounds [200 x [200 x i32]], ptr %a, i64 0, i64 %idxprom79
  %55 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom81 = sext i32 %55 to i64
  %arrayidx82 = getelementptr inbounds [200 x i32], ptr %arrayidx80, i64 0, i64 %idxprom81
  %56 = load i32, ptr %arrayidx82, align 4, !tbaa !5
  %57 = load i32, ptr %l, align 4, !tbaa !5
  %sub83 = sub nsw i32 %56, %57
  %58 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom84 = sext i32 %58 to i64
  %arrayidx85 = getelementptr inbounds [200 x [200 x i32]], ptr %a, i64 0, i64 %idxprom84
  %59 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom86 = sext i32 %59 to i64
  %arrayidx87 = getelementptr inbounds [200 x i32], ptr %arrayidx85, i64 0, i64 %idxprom86
  store i32 %sub83, ptr %arrayidx87, align 4, !tbaa !5
  br label %for.inc88

for.inc88:                                        ; preds = %for.body78
  %60 = load i32, ptr %j, align 4, !tbaa !5
  %inc89 = add nsw i32 %60, 1
  store i32 %inc89, ptr %j, align 4, !tbaa !5
  br label %for.cond76, !llvm.loop !17

for.end90:                                        ; preds = %for.cond76
  br label %for.inc91

for.inc91:                                        ; preds = %for.end90
  %61 = load i32, ptr %i, align 4, !tbaa !5
  %inc92 = add nsw i32 %61, 1
  store i32 %inc92, ptr %i, align 4, !tbaa !5
  br label %for.cond53, !llvm.loop !18

for.end93:                                        ; preds = %for.cond53
  %arrayidx94 = getelementptr inbounds [200 x [200 x i32]], ptr %a, i64 0, i64 1
  %arrayidx95 = getelementptr inbounds [200 x i32], ptr %arrayidx94, i64 0, i64 1
  %62 = load i32, ptr %arrayidx95, align 4, !tbaa !5
  %63 = load i32, ptr %s, align 4, !tbaa !5
  %add = add nsw i32 %62, %63
  store i32 %add, ptr %s, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc115, %for.end93
  %64 = load i32, ptr %i, align 4, !tbaa !5
  %65 = load i32, ptr %n, align 4, !tbaa !5
  %cmp97 = icmp slt i32 %64, %65
  br i1 %cmp97, label %for.body98, label %for.end117

for.body98:                                       ; preds = %for.cond96
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc112, %for.body98
  %66 = load i32, ptr %j, align 4, !tbaa !5
  %67 = load i32, ptr %n, align 4, !tbaa !5
  %sub100 = sub nsw i32 %67, 1
  %cmp101 = icmp slt i32 %66, %sub100
  br i1 %cmp101, label %for.body102, label %for.end114

for.body102:                                      ; preds = %for.cond99
  %68 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom103 = sext i32 %68 to i64
  %arrayidx104 = getelementptr inbounds [200 x [200 x i32]], ptr %a, i64 0, i64 %idxprom103
  %69 = load i32, ptr %j, align 4, !tbaa !5
  %add105 = add nsw i32 %69, 1
  %idxprom106 = sext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds [200 x i32], ptr %arrayidx104, i64 0, i64 %idxprom106
  %70 = load i32, ptr %arrayidx107, align 4, !tbaa !5
  %71 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom108 = sext i32 %71 to i64
  %arrayidx109 = getelementptr inbounds [200 x [200 x i32]], ptr %a, i64 0, i64 %idxprom108
  %72 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom110 = sext i32 %72 to i64
  %arrayidx111 = getelementptr inbounds [200 x i32], ptr %arrayidx109, i64 0, i64 %idxprom110
  store i32 %70, ptr %arrayidx111, align 4, !tbaa !5
  br label %for.inc112

for.inc112:                                       ; preds = %for.body102
  %73 = load i32, ptr %j, align 4, !tbaa !5
  %inc113 = add nsw i32 %73, 1
  store i32 %inc113, ptr %j, align 4, !tbaa !5
  br label %for.cond99, !llvm.loop !19

for.end114:                                       ; preds = %for.cond99
  br label %for.inc115

for.inc115:                                       ; preds = %for.end114
  %74 = load i32, ptr %i, align 4, !tbaa !5
  %inc116 = add nsw i32 %74, 1
  store i32 %inc116, ptr %i, align 4, !tbaa !5
  br label %for.cond96, !llvm.loop !20

for.end117:                                       ; preds = %for.cond96
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond118

for.cond118:                                      ; preds = %for.inc138, %for.end117
  %75 = load i32, ptr %i, align 4, !tbaa !5
  %76 = load i32, ptr %n, align 4, !tbaa !5
  %sub119 = sub nsw i32 %76, 1
  %cmp120 = icmp slt i32 %75, %sub119
  br i1 %cmp120, label %for.body121, label %for.end140

for.body121:                                      ; preds = %for.cond118
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond122

for.cond122:                                      ; preds = %for.inc135, %for.body121
  %77 = load i32, ptr %j, align 4, !tbaa !5
  %78 = load i32, ptr %n, align 4, !tbaa !5
  %sub123 = sub nsw i32 %78, 1
  %cmp124 = icmp slt i32 %77, %sub123
  br i1 %cmp124, label %for.body125, label %for.end137

for.body125:                                      ; preds = %for.cond122
  %79 = load i32, ptr %i, align 4, !tbaa !5
  %add126 = add nsw i32 %79, 1
  %idxprom127 = sext i32 %add126 to i64
  %arrayidx128 = getelementptr inbounds [200 x [200 x i32]], ptr %a, i64 0, i64 %idxprom127
  %80 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom129 = sext i32 %80 to i64
  %arrayidx130 = getelementptr inbounds [200 x i32], ptr %arrayidx128, i64 0, i64 %idxprom129
  %81 = load i32, ptr %arrayidx130, align 4, !tbaa !5
  %82 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom131 = sext i32 %82 to i64
  %arrayidx132 = getelementptr inbounds [200 x [200 x i32]], ptr %a, i64 0, i64 %idxprom131
  %83 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom133 = sext i32 %83 to i64
  %arrayidx134 = getelementptr inbounds [200 x i32], ptr %arrayidx132, i64 0, i64 %idxprom133
  store i32 %81, ptr %arrayidx134, align 4, !tbaa !5
  br label %for.inc135

for.inc135:                                       ; preds = %for.body125
  %84 = load i32, ptr %j, align 4, !tbaa !5
  %inc136 = add nsw i32 %84, 1
  store i32 %inc136, ptr %j, align 4, !tbaa !5
  br label %for.cond122, !llvm.loop !21

for.end137:                                       ; preds = %for.cond122
  br label %for.inc138

for.inc138:                                       ; preds = %for.end137
  %85 = load i32, ptr %i, align 4, !tbaa !5
  %inc139 = add nsw i32 %85, 1
  store i32 %inc139, ptr %i, align 4, !tbaa !5
  br label %for.cond118, !llvm.loop !22

for.end140:                                       ; preds = %for.cond118
  %86 = load i32, ptr %n, align 4, !tbaa !5
  %dec = add nsw i32 %86, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  br label %for.inc141

for.inc141:                                       ; preds = %for.end140
  %87 = load i32, ptr %m, align 4, !tbaa !5
  %inc142 = add nsw i32 %87, 1
  store i32 %inc142, ptr %m, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !23

for.end143:                                       ; preds = %for.cond11
  %88 = load i32, ptr %s, align 4, !tbaa !5
  %call144 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %88)
  %call145 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call144, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %89 = load i32, ptr %q, align 4, !tbaa !5
  %inc146 = add nsw i32 %89, 1
  store i32 %inc146, ptr %q, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.end.p0(i64 160000, ptr %a) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
