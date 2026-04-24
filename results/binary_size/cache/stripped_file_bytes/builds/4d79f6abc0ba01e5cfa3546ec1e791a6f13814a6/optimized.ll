; ModuleID = '/tmp/tmpj4kq90l1.cpp'
source_filename = "/tmp/tmpj4kq90l1.cpp"
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
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %sum = alloca i32, align 4
  %min = alloca i32, align 4
  %z = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %z) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc148, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end150

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %sum, align 4, !tbaa !5
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
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %8, 1
  store i32 %add, ptr %j, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %add11 = add nsw i32 %9, 1
  store i32 %add11, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end12:                                        ; preds = %for.cond1
  %10 = load i32, ptr %n, align 4, !tbaa !5
  store i32 %10, ptr %l, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc143, %for.end12
  %11 = load i32, ptr %l, align 4, !tbaa !5
  %cmp14 = icmp sgt i32 %11, 1
  br i1 %cmp14, label %for.body15, label %for.end145

for.body15:                                       ; preds = %for.cond13
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc51, %for.body15
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %13 = load i32, ptr %l, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %12, %13
  br i1 %cmp17, label %for.body18, label %for.end53

for.body18:                                       ; preds = %for.cond16
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %14 to i64
  %arrayidx20 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [100 x i32], ptr %arrayidx20, i64 0, i64 0
  %15 = load i32, ptr %arrayidx21, align 16, !tbaa !5
  store i32 %15, ptr %min, align 4, !tbaa !5
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc34, %for.body18
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %17 = load i32, ptr %l, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %16, %17
  br i1 %cmp23, label %for.body24, label %for.end36

for.body24:                                       ; preds = %for.cond22
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %18 to i64
  %arrayidx26 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom25
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom27 = sext i32 %19 to i64
  %arrayidx28 = getelementptr inbounds [100 x i32], ptr %arrayidx26, i64 0, i64 %idxprom27
  %20 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %21 = load i32, ptr %min, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %20, %21
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %for.body24
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %22 to i64
  %arrayidx31 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom30
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom32 = sext i32 %23 to i64
  %arrayidx33 = getelementptr inbounds [100 x i32], ptr %arrayidx31, i64 0, i64 %idxprom32
  %24 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  store i32 %24, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body24
  br label %for.inc34

for.inc34:                                        ; preds = %if.end
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %add35 = add nsw i32 %25, 1
  store i32 %add35, ptr %j, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !13

for.end36:                                        ; preds = %for.cond22
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc48, %for.end36
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %27 = load i32, ptr %l, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %26, %27
  br i1 %cmp38, label %for.body39, label %for.end50

for.body39:                                       ; preds = %for.cond37
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %28 to i64
  %arrayidx41 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom40
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom42 = sext i32 %29 to i64
  %arrayidx43 = getelementptr inbounds [100 x i32], ptr %arrayidx41, i64 0, i64 %idxprom42
  %30 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %31 = load i32, ptr %min, align 4, !tbaa !5
  %sub = sub nsw i32 %30, %31
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom44 = sext i32 %32 to i64
  %arrayidx45 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom44
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom46 = sext i32 %33 to i64
  %arrayidx47 = getelementptr inbounds [100 x i32], ptr %arrayidx45, i64 0, i64 %idxprom46
  store i32 %sub, ptr %arrayidx47, align 4, !tbaa !5
  br label %for.inc48

for.inc48:                                        ; preds = %for.body39
  %34 = load i32, ptr %j, align 4, !tbaa !5
  %add49 = add nsw i32 %34, 1
  store i32 %add49, ptr %j, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !14

for.end50:                                        ; preds = %for.cond37
  br label %for.inc51

for.inc51:                                        ; preds = %for.end50
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %add52 = add nsw i32 %35, 1
  store i32 %add52, ptr %i, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !15

for.end53:                                        ; preds = %for.cond16
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc92, %for.end53
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %37 = load i32, ptr %l, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %36, %37
  br i1 %cmp55, label %for.body56, label %for.end94

for.body56:                                       ; preds = %for.cond54
  %arrayidx57 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom58 = sext i32 %38 to i64
  %arrayidx59 = getelementptr inbounds [100 x i32], ptr %arrayidx57, i64 0, i64 %idxprom58
  %39 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  store i32 %39, ptr %min, align 4, !tbaa !5
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc74, %for.body56
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %41 = load i32, ptr %l, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %40, %41
  br i1 %cmp61, label %for.body62, label %for.end76

for.body62:                                       ; preds = %for.cond60
  %42 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom63 = sext i32 %42 to i64
  %arrayidx64 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom63
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom65 = sext i32 %43 to i64
  %arrayidx66 = getelementptr inbounds [100 x i32], ptr %arrayidx64, i64 0, i64 %idxprom65
  %44 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  %45 = load i32, ptr %min, align 4, !tbaa !5
  %cmp67 = icmp slt i32 %44, %45
  br i1 %cmp67, label %if.then68, label %if.end73

if.then68:                                        ; preds = %for.body62
  %46 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom69 = sext i32 %46 to i64
  %arrayidx70 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom69
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom71 = sext i32 %47 to i64
  %arrayidx72 = getelementptr inbounds [100 x i32], ptr %arrayidx70, i64 0, i64 %idxprom71
  %48 = load i32, ptr %arrayidx72, align 4, !tbaa !5
  store i32 %48, ptr %min, align 4, !tbaa !5
  br label %if.end73

if.end73:                                         ; preds = %if.then68, %for.body62
  br label %for.inc74

for.inc74:                                        ; preds = %if.end73
  %49 = load i32, ptr %j, align 4, !tbaa !5
  %add75 = add nsw i32 %49, 1
  store i32 %add75, ptr %j, align 4, !tbaa !5
  br label %for.cond60, !llvm.loop !16

for.end76:                                        ; preds = %for.cond60
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc89, %for.end76
  %50 = load i32, ptr %j, align 4, !tbaa !5
  %51 = load i32, ptr %l, align 4, !tbaa !5
  %cmp78 = icmp slt i32 %50, %51
  br i1 %cmp78, label %for.body79, label %for.end91

for.body79:                                       ; preds = %for.cond77
  %52 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom80 = sext i32 %52 to i64
  %arrayidx81 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom80
  %53 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom82 = sext i32 %53 to i64
  %arrayidx83 = getelementptr inbounds [100 x i32], ptr %arrayidx81, i64 0, i64 %idxprom82
  %54 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %55 = load i32, ptr %min, align 4, !tbaa !5
  %sub84 = sub nsw i32 %54, %55
  %56 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom85 = sext i32 %56 to i64
  %arrayidx86 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom85
  %57 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom87 = sext i32 %57 to i64
  %arrayidx88 = getelementptr inbounds [100 x i32], ptr %arrayidx86, i64 0, i64 %idxprom87
  store i32 %sub84, ptr %arrayidx88, align 4, !tbaa !5
  br label %for.inc89

for.inc89:                                        ; preds = %for.body79
  %58 = load i32, ptr %j, align 4, !tbaa !5
  %add90 = add nsw i32 %58, 1
  store i32 %add90, ptr %j, align 4, !tbaa !5
  br label %for.cond77, !llvm.loop !17

for.end91:                                        ; preds = %for.cond77
  br label %for.inc92

for.inc92:                                        ; preds = %for.end91
  %59 = load i32, ptr %i, align 4, !tbaa !5
  %add93 = add nsw i32 %59, 1
  store i32 %add93, ptr %i, align 4, !tbaa !5
  br label %for.cond54, !llvm.loop !18

for.end94:                                        ; preds = %for.cond54
  %60 = load i32, ptr %sum, align 4, !tbaa !5
  %arrayidx95 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 1
  %arrayidx96 = getelementptr inbounds [100 x i32], ptr %arrayidx95, i64 0, i64 1
  %61 = load i32, ptr %arrayidx96, align 4, !tbaa !5
  %add97 = add nsw i32 %60, %61
  store i32 %add97, ptr %sum, align 4, !tbaa !5
  %62 = load i32, ptr %l, align 4, !tbaa !5
  %cmp98 = icmp ne i32 %62, 2
  br i1 %cmp98, label %if.then99, label %if.end142

if.then99:                                        ; preds = %for.end94
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc117, %if.then99
  %63 = load i32, ptr %i, align 4, !tbaa !5
  %64 = load i32, ptr %l, align 4, !tbaa !5
  %cmp101 = icmp slt i32 %63, %64
  br i1 %cmp101, label %for.body102, label %for.end119

for.body102:                                      ; preds = %for.cond100
  %arrayidx103 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %65 = load i32, ptr %i, align 4, !tbaa !5
  %add104 = add nsw i32 %65, 1
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds [100 x i32], ptr %arrayidx103, i64 0, i64 %idxprom105
  %66 = load i32, ptr %arrayidx106, align 4, !tbaa !5
  %arrayidx107 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %67 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom108 = sext i32 %67 to i64
  %arrayidx109 = getelementptr inbounds [100 x i32], ptr %arrayidx107, i64 0, i64 %idxprom108
  store i32 %66, ptr %arrayidx109, align 4, !tbaa !5
  %68 = load i32, ptr %i, align 4, !tbaa !5
  %add110 = add nsw i32 %68, 1
  %idxprom111 = sext i32 %add110 to i64
  %arrayidx112 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom111
  %arrayidx113 = getelementptr inbounds [100 x i32], ptr %arrayidx112, i64 0, i64 0
  %69 = load i32, ptr %arrayidx113, align 16, !tbaa !5
  %70 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom114 = sext i32 %70 to i64
  %arrayidx115 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom114
  %arrayidx116 = getelementptr inbounds [100 x i32], ptr %arrayidx115, i64 0, i64 0
  store i32 %69, ptr %arrayidx116, align 16, !tbaa !5
  br label %for.inc117

for.inc117:                                       ; preds = %for.body102
  %71 = load i32, ptr %i, align 4, !tbaa !5
  %add118 = add nsw i32 %71, 1
  store i32 %add118, ptr %i, align 4, !tbaa !5
  br label %for.cond100, !llvm.loop !19

for.end119:                                       ; preds = %for.cond100
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond120

for.cond120:                                      ; preds = %for.inc139, %for.end119
  %72 = load i32, ptr %i, align 4, !tbaa !5
  %73 = load i32, ptr %l, align 4, !tbaa !5
  %cmp121 = icmp slt i32 %72, %73
  br i1 %cmp121, label %for.body122, label %for.end141

for.body122:                                      ; preds = %for.cond120
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond123

for.cond123:                                      ; preds = %for.inc136, %for.body122
  %74 = load i32, ptr %j, align 4, !tbaa !5
  %75 = load i32, ptr %l, align 4, !tbaa !5
  %cmp124 = icmp slt i32 %74, %75
  br i1 %cmp124, label %for.body125, label %for.end138

for.body125:                                      ; preds = %for.cond123
  %76 = load i32, ptr %i, align 4, !tbaa !5
  %add126 = add nsw i32 %76, 1
  %idxprom127 = sext i32 %add126 to i64
  %arrayidx128 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom127
  %77 = load i32, ptr %j, align 4, !tbaa !5
  %add129 = add nsw i32 %77, 1
  %idxprom130 = sext i32 %add129 to i64
  %arrayidx131 = getelementptr inbounds [100 x i32], ptr %arrayidx128, i64 0, i64 %idxprom130
  %78 = load i32, ptr %arrayidx131, align 4, !tbaa !5
  %79 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom132 = sext i32 %79 to i64
  %arrayidx133 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom132
  %80 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom134 = sext i32 %80 to i64
  %arrayidx135 = getelementptr inbounds [100 x i32], ptr %arrayidx133, i64 0, i64 %idxprom134
  store i32 %78, ptr %arrayidx135, align 4, !tbaa !5
  br label %for.inc136

for.inc136:                                       ; preds = %for.body125
  %81 = load i32, ptr %j, align 4, !tbaa !5
  %add137 = add nsw i32 %81, 1
  store i32 %add137, ptr %j, align 4, !tbaa !5
  br label %for.cond123, !llvm.loop !20

for.end138:                                       ; preds = %for.cond123
  br label %for.inc139

for.inc139:                                       ; preds = %for.end138
  %82 = load i32, ptr %i, align 4, !tbaa !5
  %add140 = add nsw i32 %82, 1
  store i32 %add140, ptr %i, align 4, !tbaa !5
  br label %for.cond120, !llvm.loop !21

for.end141:                                       ; preds = %for.cond120
  br label %if.end142

if.end142:                                        ; preds = %for.end141, %for.end94
  br label %for.inc143

for.inc143:                                       ; preds = %if.end142
  %83 = load i32, ptr %l, align 4, !tbaa !5
  %sub144 = sub nsw i32 %83, 1
  store i32 %sub144, ptr %l, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !22

for.end145:                                       ; preds = %for.cond13
  %84 = load i32, ptr %sum, align 4, !tbaa !5
  %call146 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %84)
  %call147 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call146, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc148

for.inc148:                                       ; preds = %for.end145
  %85 = load i32, ptr %k, align 4, !tbaa !5
  %add149 = add nsw i32 %85, 1
  store i32 %add149, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !23

for.end150:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %z) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
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
  store ptr %this, ptr %this.addr, align 8, !tbaa !24
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !27
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !27
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
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
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !24
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !24, !nonnull !28, !align !29
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #3 align 2 {
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
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !51
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #3 comdat align 2 {
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
