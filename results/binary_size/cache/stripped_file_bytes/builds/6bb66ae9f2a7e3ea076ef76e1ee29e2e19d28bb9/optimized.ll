; ModuleID = '/tmp/tmpcuueydtc.cpp'
source_filename = "/tmp/tmpcuueydtc.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

$_ZNKSt8ios_base5widthEv = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %min = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc146, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end148

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
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
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
  store i32 0, ptr %sum, align 4, !tbaa !5
  %10 = load i32, ptr %n, align 4, !tbaa !5
  store i32 %10, ptr %j, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc142, %for.end12
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %cmp14 = icmp sgt i32 %11, 1
  br i1 %cmp14, label %for.body15, label %for.end143

for.body15:                                       ; preds = %for.cond13
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc51, %for.body15
  %12 = load i32, ptr %k, align 4, !tbaa !5
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %12, %13
  br i1 %cmp17, label %for.body18, label %for.end53

for.body18:                                       ; preds = %for.cond16
  %14 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom19 = sext i32 %14 to i64
  %arrayidx20 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [100 x i32], ptr %arrayidx20, i64 0, i64 0
  %15 = load i32, ptr %arrayidx21, align 16, !tbaa !5
  store i32 %15, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %l, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc34, %for.body18
  %16 = load i32, ptr %l, align 4, !tbaa !5
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %16, %17
  br i1 %cmp23, label %for.body24, label %for.end36

for.body24:                                       ; preds = %for.cond22
  %18 = load i32, ptr %min, align 4, !tbaa !5
  %19 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom25
  %20 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom27 = sext i32 %20 to i64
  %arrayidx28 = getelementptr inbounds [100 x i32], ptr %arrayidx26, i64 0, i64 %idxprom27
  %21 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %cmp29 = icmp sgt i32 %18, %21
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %for.body24
  %22 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom30 = sext i32 %22 to i64
  %arrayidx31 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom30
  %23 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom32 = sext i32 %23 to i64
  %arrayidx33 = getelementptr inbounds [100 x i32], ptr %arrayidx31, i64 0, i64 %idxprom32
  %24 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  store i32 %24, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body24
  br label %for.inc34

for.inc34:                                        ; preds = %if.end
  %25 = load i32, ptr %l, align 4, !tbaa !5
  %inc35 = add nsw i32 %25, 1
  store i32 %inc35, ptr %l, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !13

for.end36:                                        ; preds = %for.cond22
  store i32 0, ptr %l, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc48, %for.end36
  %26 = load i32, ptr %l, align 4, !tbaa !5
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %26, %27
  br i1 %cmp38, label %for.body39, label %for.end50

for.body39:                                       ; preds = %for.cond37
  %28 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom40 = sext i32 %28 to i64
  %arrayidx41 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom40
  %29 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom42 = sext i32 %29 to i64
  %arrayidx43 = getelementptr inbounds [100 x i32], ptr %arrayidx41, i64 0, i64 %idxprom42
  %30 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %31 = load i32, ptr %min, align 4, !tbaa !5
  %sub = sub nsw i32 %30, %31
  %32 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom44 = sext i32 %32 to i64
  %arrayidx45 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom44
  %33 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom46 = sext i32 %33 to i64
  %arrayidx47 = getelementptr inbounds [100 x i32], ptr %arrayidx45, i64 0, i64 %idxprom46
  store i32 %sub, ptr %arrayidx47, align 4, !tbaa !5
  br label %for.inc48

for.inc48:                                        ; preds = %for.body39
  %34 = load i32, ptr %l, align 4, !tbaa !5
  %inc49 = add nsw i32 %34, 1
  store i32 %inc49, ptr %l, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !14

for.end50:                                        ; preds = %for.cond37
  br label %for.inc51

for.inc51:                                        ; preds = %for.end50
  %35 = load i32, ptr %k, align 4, !tbaa !5
  %inc52 = add nsw i32 %35, 1
  store i32 %inc52, ptr %k, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !15

for.end53:                                        ; preds = %for.cond16
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc92, %for.end53
  %36 = load i32, ptr %k, align 4, !tbaa !5
  %37 = load i32, ptr %j, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %36, %37
  br i1 %cmp55, label %for.body56, label %for.end94

for.body56:                                       ; preds = %for.cond54
  %arrayidx57 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %38 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom58 = sext i32 %38 to i64
  %arrayidx59 = getelementptr inbounds [100 x i32], ptr %arrayidx57, i64 0, i64 %idxprom58
  %39 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  store i32 %39, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %l, align 4, !tbaa !5
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc74, %for.body56
  %40 = load i32, ptr %l, align 4, !tbaa !5
  %41 = load i32, ptr %j, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %40, %41
  br i1 %cmp61, label %for.body62, label %for.end76

for.body62:                                       ; preds = %for.cond60
  %42 = load i32, ptr %min, align 4, !tbaa !5
  %43 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom63 = sext i32 %43 to i64
  %arrayidx64 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom63
  %44 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom65 = sext i32 %44 to i64
  %arrayidx66 = getelementptr inbounds [100 x i32], ptr %arrayidx64, i64 0, i64 %idxprom65
  %45 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  %cmp67 = icmp sgt i32 %42, %45
  br i1 %cmp67, label %if.then68, label %if.end73

if.then68:                                        ; preds = %for.body62
  %46 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom69 = sext i32 %46 to i64
  %arrayidx70 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom69
  %47 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom71 = sext i32 %47 to i64
  %arrayidx72 = getelementptr inbounds [100 x i32], ptr %arrayidx70, i64 0, i64 %idxprom71
  %48 = load i32, ptr %arrayidx72, align 4, !tbaa !5
  store i32 %48, ptr %min, align 4, !tbaa !5
  br label %if.end73

if.end73:                                         ; preds = %if.then68, %for.body62
  br label %for.inc74

for.inc74:                                        ; preds = %if.end73
  %49 = load i32, ptr %l, align 4, !tbaa !5
  %inc75 = add nsw i32 %49, 1
  store i32 %inc75, ptr %l, align 4, !tbaa !5
  br label %for.cond60, !llvm.loop !16

for.end76:                                        ; preds = %for.cond60
  store i32 0, ptr %l, align 4, !tbaa !5
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc89, %for.end76
  %50 = load i32, ptr %l, align 4, !tbaa !5
  %51 = load i32, ptr %j, align 4, !tbaa !5
  %cmp78 = icmp slt i32 %50, %51
  br i1 %cmp78, label %for.body79, label %for.end91

for.body79:                                       ; preds = %for.cond77
  %52 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom80 = sext i32 %52 to i64
  %arrayidx81 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom80
  %53 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom82 = sext i32 %53 to i64
  %arrayidx83 = getelementptr inbounds [100 x i32], ptr %arrayidx81, i64 0, i64 %idxprom82
  %54 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %55 = load i32, ptr %min, align 4, !tbaa !5
  %sub84 = sub nsw i32 %54, %55
  %56 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom85 = sext i32 %56 to i64
  %arrayidx86 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom85
  %57 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom87 = sext i32 %57 to i64
  %arrayidx88 = getelementptr inbounds [100 x i32], ptr %arrayidx86, i64 0, i64 %idxprom87
  store i32 %sub84, ptr %arrayidx88, align 4, !tbaa !5
  br label %for.inc89

for.inc89:                                        ; preds = %for.body79
  %58 = load i32, ptr %l, align 4, !tbaa !5
  %inc90 = add nsw i32 %58, 1
  store i32 %inc90, ptr %l, align 4, !tbaa !5
  br label %for.cond77, !llvm.loop !17

for.end91:                                        ; preds = %for.cond77
  br label %for.inc92

for.inc92:                                        ; preds = %for.end91
  %59 = load i32, ptr %k, align 4, !tbaa !5
  %inc93 = add nsw i32 %59, 1
  store i32 %inc93, ptr %k, align 4, !tbaa !5
  br label %for.cond54, !llvm.loop !18

for.end94:                                        ; preds = %for.cond54
  %60 = load i32, ptr %sum, align 4, !tbaa !5
  %arrayidx95 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 1
  %arrayidx96 = getelementptr inbounds [100 x i32], ptr %arrayidx95, i64 0, i64 1
  %61 = load i32, ptr %arrayidx96, align 4, !tbaa !5
  %add = add nsw i32 %60, %61
  store i32 %add, ptr %sum, align 4, !tbaa !5
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc115, %for.end94
  %62 = load i32, ptr %k, align 4, !tbaa !5
  %63 = load i32, ptr %j, align 4, !tbaa !5
  %sub98 = sub nsw i32 %63, 1
  %cmp99 = icmp slt i32 %62, %sub98
  br i1 %cmp99, label %for.body100, label %for.end117

for.body100:                                      ; preds = %for.cond97
  %64 = load i32, ptr %k, align 4, !tbaa !5
  %add101 = add nsw i32 %64, 1
  %idxprom102 = sext i32 %add101 to i64
  %arrayidx103 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom102
  %arrayidx104 = getelementptr inbounds [100 x i32], ptr %arrayidx103, i64 0, i64 0
  %65 = load i32, ptr %arrayidx104, align 16, !tbaa !5
  %66 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom105 = sext i32 %66 to i64
  %arrayidx106 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom105
  %arrayidx107 = getelementptr inbounds [100 x i32], ptr %arrayidx106, i64 0, i64 0
  store i32 %65, ptr %arrayidx107, align 16, !tbaa !5
  %arrayidx108 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %67 = load i32, ptr %k, align 4, !tbaa !5
  %add109 = add nsw i32 %67, 1
  %idxprom110 = sext i32 %add109 to i64
  %arrayidx111 = getelementptr inbounds [100 x i32], ptr %arrayidx108, i64 0, i64 %idxprom110
  %68 = load i32, ptr %arrayidx111, align 4, !tbaa !5
  %arrayidx112 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %69 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom113 = sext i32 %69 to i64
  %arrayidx114 = getelementptr inbounds [100 x i32], ptr %arrayidx112, i64 0, i64 %idxprom113
  store i32 %68, ptr %arrayidx114, align 4, !tbaa !5
  br label %for.inc115

for.inc115:                                       ; preds = %for.body100
  %70 = load i32, ptr %k, align 4, !tbaa !5
  %inc116 = add nsw i32 %70, 1
  store i32 %inc116, ptr %k, align 4, !tbaa !5
  br label %for.cond97, !llvm.loop !19

for.end117:                                       ; preds = %for.cond97
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond118

for.cond118:                                      ; preds = %for.inc139, %for.end117
  %71 = load i32, ptr %k, align 4, !tbaa !5
  %72 = load i32, ptr %j, align 4, !tbaa !5
  %sub119 = sub nsw i32 %72, 1
  %cmp120 = icmp slt i32 %71, %sub119
  br i1 %cmp120, label %for.body121, label %for.end141

for.body121:                                      ; preds = %for.cond118
  store i32 1, ptr %l, align 4, !tbaa !5
  br label %for.cond122

for.cond122:                                      ; preds = %for.inc136, %for.body121
  %73 = load i32, ptr %l, align 4, !tbaa !5
  %74 = load i32, ptr %j, align 4, !tbaa !5
  %sub123 = sub nsw i32 %74, 1
  %cmp124 = icmp slt i32 %73, %sub123
  br i1 %cmp124, label %for.body125, label %for.end138

for.body125:                                      ; preds = %for.cond122
  %75 = load i32, ptr %k, align 4, !tbaa !5
  %add126 = add nsw i32 %75, 1
  %idxprom127 = sext i32 %add126 to i64
  %arrayidx128 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom127
  %76 = load i32, ptr %l, align 4, !tbaa !5
  %add129 = add nsw i32 %76, 1
  %idxprom130 = sext i32 %add129 to i64
  %arrayidx131 = getelementptr inbounds [100 x i32], ptr %arrayidx128, i64 0, i64 %idxprom130
  %77 = load i32, ptr %arrayidx131, align 4, !tbaa !5
  %78 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom132 = sext i32 %78 to i64
  %arrayidx133 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom132
  %79 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom134 = sext i32 %79 to i64
  %arrayidx135 = getelementptr inbounds [100 x i32], ptr %arrayidx133, i64 0, i64 %idxprom134
  store i32 %77, ptr %arrayidx135, align 4, !tbaa !5
  br label %for.inc136

for.inc136:                                       ; preds = %for.body125
  %80 = load i32, ptr %l, align 4, !tbaa !5
  %inc137 = add nsw i32 %80, 1
  store i32 %inc137, ptr %l, align 4, !tbaa !5
  br label %for.cond122, !llvm.loop !20

for.end138:                                       ; preds = %for.cond122
  br label %for.inc139

for.inc139:                                       ; preds = %for.end138
  %81 = load i32, ptr %k, align 4, !tbaa !5
  %inc140 = add nsw i32 %81, 1
  store i32 %inc140, ptr %k, align 4, !tbaa !5
  br label %for.cond118, !llvm.loop !21

for.end141:                                       ; preds = %for.cond118
  br label %for.inc142

for.inc142:                                       ; preds = %for.end141
  %82 = load i32, ptr %j, align 4, !tbaa !5
  %dec = add nsw i32 %82, -1
  store i32 %dec, ptr %j, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !22

for.end143:                                       ; preds = %for.cond13
  %83 = load i32, ptr %sum, align 4, !tbaa !5
  %call144 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %83)
  %call145 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call144, i8 noundef signext 10)
  br label %for.inc146

for.inc146:                                       ; preds = %for.end143
  %84 = load i32, ptr %i, align 4, !tbaa !5
  %inc147 = add nsw i32 %84, 1
  store i32 %inc147, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !23

for.end148:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %__out, i8 noundef signext %__c) #3 {
entry:
  %retval = alloca ptr, align 8
  %__out.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !24
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !27
  %0 = load ptr, ptr %__out.addr, align 8, !tbaa !24, !nonnull !28, !align !29
  %vtable = load ptr, ptr %0, align 8, !tbaa !30
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %vbase.offset
  %call = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr)
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !24, !nonnull !28, !align !29
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %__c.addr, i64 noundef 1)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !24, !nonnull !28, !align !29
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !27
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3)
  %4 = load ptr, ptr %__out.addr, align 8, !tbaa !24, !nonnull !28, !align !29
  store ptr %4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) #4 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !32
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !34
  ret i64 %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!27 = !{!7, !7, i64 0}
!28 = !{}
!29 = !{i64 8}
!30 = !{!31, !31, i64 0}
!31 = !{!"vtable pointer", !8, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 _ZTSSt8ios_base", !26, i64 0}
!34 = !{!35, !36, i64 16}
!35 = !{!"_ZTSSt8ios_base", !36, i64 8, !36, i64 16, !37, i64 24, !38, i64 28, !38, i64 32, !39, i64 40, !40, i64 48, !7, i64 64, !6, i64 192, !41, i64 200, !42, i64 208}
!36 = !{!"long", !7, i64 0}
!37 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!38 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!39 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !26, i64 0}
!40 = !{!"_ZTSNSt8ios_base6_WordsE", !26, i64 0, !36, i64 8}
!41 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !26, i64 0}
!42 = !{!"_ZTSSt6locale", !43, i64 0}
!43 = !{!"p1 _ZTSNSt6locale5_ImplE", !26, i64 0}
