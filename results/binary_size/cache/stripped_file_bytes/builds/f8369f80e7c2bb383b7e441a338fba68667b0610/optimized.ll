; ModuleID = '/tmp/tmpkodtl3k_.cpp'
source_filename = "/tmp/tmpkodtl3k_.cpp"
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
  %q = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %min1 = alloca [100 x i32], align 16
  %min2 = alloca [100 x i32], align 16
  %a = alloca [100 x [100 x i32]], align 16
  %d = alloca i32, align 4
  %w = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 400, ptr %min1) #6
  call void @llvm.lifetime.start.p0(i64 400, ptr %min2) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  store i32 %0, ptr %w, align 4, !tbaa !5
  store i32 0, ptr %q, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc165, %entry
  %1 = load i32, ptr %q, align 4, !tbaa !5
  %2 = load i32, ptr %w, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end167

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %d, align 4, !tbaa !5
  %3 = load i32, ptr %w, align 4, !tbaa !5
  store i32 %3, ptr %n, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %w, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %7 = load i32, ptr %w, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %inc11 = add nsw i32 %11, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end12:                                        ; preds = %for.cond1
  br label %while.cond

while.cond:                                       ; preds = %for.end162, %for.end12
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %cmp13 = icmp sge i32 %12, 2
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc19, %while.body
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %14 = load i32, ptr %n, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %13, %14
  br i1 %cmp15, label %for.body16, label %for.end21

for.body16:                                       ; preds = %for.cond14
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [100 x i32], ptr %min1, i64 0, i64 %idxprom17
  store i32 1000, ptr %arrayidx18, align 4, !tbaa !5
  br label %for.inc19

for.inc19:                                        ; preds = %for.body16
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc20 = add nsw i32 %16, 1
  store i32 %inc20, ptr %i, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !13

for.end21:                                        ; preds = %for.cond14
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc27, %for.end21
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %18 = load i32, ptr %n, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %17, %18
  br i1 %cmp23, label %for.body24, label %for.end29

for.body24:                                       ; preds = %for.cond22
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [100 x i32], ptr %min2, i64 0, i64 %idxprom25
  store i32 1000, ptr %arrayidx26, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.body24
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %inc28 = add nsw i32 %20, 1
  store i32 %inc28, ptr %i, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !14

for.end29:                                        ; preds = %for.cond22
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc52, %for.end29
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %22 = load i32, ptr %n, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %21, %22
  br i1 %cmp31, label %for.body32, label %for.end54

for.body32:                                       ; preds = %for.cond30
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc49, %for.body32
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %24 = load i32, ptr %n, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %23, %24
  br i1 %cmp34, label %for.body35, label %for.end51

for.body35:                                       ; preds = %for.cond33
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %25 to i64
  %arrayidx37 = getelementptr inbounds [100 x i32], ptr %min1, i64 0, i64 %idxprom36
  %26 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom38 = sext i32 %27 to i64
  %arrayidx39 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom38
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom40 = sext i32 %28 to i64
  %arrayidx41 = getelementptr inbounds [100 x i32], ptr %arrayidx39, i64 0, i64 %idxprom40
  %29 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %cmp42 = icmp sgt i32 %26, %29
  br i1 %cmp42, label %if.then, label %if.end

if.then:                                          ; preds = %for.body35
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %30 to i64
  %arrayidx44 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom43
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom45 = sext i32 %31 to i64
  %arrayidx46 = getelementptr inbounds [100 x i32], ptr %arrayidx44, i64 0, i64 %idxprom45
  %32 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom47 = sext i32 %33 to i64
  %arrayidx48 = getelementptr inbounds [100 x i32], ptr %min1, i64 0, i64 %idxprom47
  store i32 %32, ptr %arrayidx48, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body35
  br label %for.inc49

for.inc49:                                        ; preds = %if.end
  %34 = load i32, ptr %j, align 4, !tbaa !5
  %inc50 = add nsw i32 %34, 1
  store i32 %inc50, ptr %j, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !15

for.end51:                                        ; preds = %for.cond33
  br label %for.inc52

for.inc52:                                        ; preds = %for.end51
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %inc53 = add nsw i32 %35, 1
  store i32 %inc53, ptr %i, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !16

for.end54:                                        ; preds = %for.cond30
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc70, %for.end54
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %37 = load i32, ptr %n, align 4, !tbaa !5
  %cmp56 = icmp slt i32 %36, %37
  br i1 %cmp56, label %for.body57, label %for.end72

for.body57:                                       ; preds = %for.cond55
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc67, %for.body57
  %38 = load i32, ptr %j, align 4, !tbaa !5
  %39 = load i32, ptr %n, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %38, %39
  br i1 %cmp59, label %for.body60, label %for.end69

for.body60:                                       ; preds = %for.cond58
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom61 = sext i32 %40 to i64
  %arrayidx62 = getelementptr inbounds [100 x i32], ptr %min1, i64 0, i64 %idxprom61
  %41 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom63 = sext i32 %42 to i64
  %arrayidx64 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom63
  %43 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom65 = sext i32 %43 to i64
  %arrayidx66 = getelementptr inbounds [100 x i32], ptr %arrayidx64, i64 0, i64 %idxprom65
  %44 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  %sub = sub nsw i32 %44, %41
  store i32 %sub, ptr %arrayidx66, align 4, !tbaa !5
  br label %for.inc67

for.inc67:                                        ; preds = %for.body60
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %inc68 = add nsw i32 %45, 1
  store i32 %inc68, ptr %j, align 4, !tbaa !5
  br label %for.cond58, !llvm.loop !17

for.end69:                                        ; preds = %for.cond58
  br label %for.inc70

for.inc70:                                        ; preds = %for.end69
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %inc71 = add nsw i32 %46, 1
  store i32 %inc71, ptr %i, align 4, !tbaa !5
  br label %for.cond55, !llvm.loop !18

for.end72:                                        ; preds = %for.cond55
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc97, %for.end72
  %47 = load i32, ptr %j, align 4, !tbaa !5
  %48 = load i32, ptr %n, align 4, !tbaa !5
  %cmp74 = icmp slt i32 %47, %48
  br i1 %cmp74, label %for.body75, label %for.end99

for.body75:                                       ; preds = %for.cond73
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc94, %for.body75
  %49 = load i32, ptr %i, align 4, !tbaa !5
  %50 = load i32, ptr %n, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %49, %50
  br i1 %cmp77, label %for.body78, label %for.end96

for.body78:                                       ; preds = %for.cond76
  %51 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom79 = sext i32 %51 to i64
  %arrayidx80 = getelementptr inbounds [100 x i32], ptr %min2, i64 0, i64 %idxprom79
  %52 = load i32, ptr %arrayidx80, align 4, !tbaa !5
  %53 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom81 = sext i32 %53 to i64
  %arrayidx82 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom81
  %54 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom83 = sext i32 %54 to i64
  %arrayidx84 = getelementptr inbounds [100 x i32], ptr %arrayidx82, i64 0, i64 %idxprom83
  %55 = load i32, ptr %arrayidx84, align 4, !tbaa !5
  %cmp85 = icmp sgt i32 %52, %55
  br i1 %cmp85, label %if.then86, label %if.end93

if.then86:                                        ; preds = %for.body78
  %56 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom87 = sext i32 %56 to i64
  %arrayidx88 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom87
  %57 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom89 = sext i32 %57 to i64
  %arrayidx90 = getelementptr inbounds [100 x i32], ptr %arrayidx88, i64 0, i64 %idxprom89
  %58 = load i32, ptr %arrayidx90, align 4, !tbaa !5
  %59 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom91 = sext i32 %59 to i64
  %arrayidx92 = getelementptr inbounds [100 x i32], ptr %min2, i64 0, i64 %idxprom91
  store i32 %58, ptr %arrayidx92, align 4, !tbaa !5
  br label %if.end93

if.end93:                                         ; preds = %if.then86, %for.body78
  br label %for.inc94

for.inc94:                                        ; preds = %if.end93
  %60 = load i32, ptr %i, align 4, !tbaa !5
  %inc95 = add nsw i32 %60, 1
  store i32 %inc95, ptr %i, align 4, !tbaa !5
  br label %for.cond76, !llvm.loop !19

for.end96:                                        ; preds = %for.cond76
  br label %for.inc97

for.inc97:                                        ; preds = %for.end96
  %61 = load i32, ptr %j, align 4, !tbaa !5
  %inc98 = add nsw i32 %61, 1
  store i32 %inc98, ptr %j, align 4, !tbaa !5
  br label %for.cond73, !llvm.loop !20

for.end99:                                        ; preds = %for.cond73
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc116, %for.end99
  %62 = load i32, ptr %j, align 4, !tbaa !5
  %63 = load i32, ptr %n, align 4, !tbaa !5
  %cmp101 = icmp slt i32 %62, %63
  br i1 %cmp101, label %for.body102, label %for.end118

for.body102:                                      ; preds = %for.cond100
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc113, %for.body102
  %64 = load i32, ptr %i, align 4, !tbaa !5
  %65 = load i32, ptr %n, align 4, !tbaa !5
  %cmp104 = icmp slt i32 %64, %65
  br i1 %cmp104, label %for.body105, label %for.end115

for.body105:                                      ; preds = %for.cond103
  %66 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom106 = sext i32 %66 to i64
  %arrayidx107 = getelementptr inbounds [100 x i32], ptr %min2, i64 0, i64 %idxprom106
  %67 = load i32, ptr %arrayidx107, align 4, !tbaa !5
  %68 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom108 = sext i32 %68 to i64
  %arrayidx109 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom108
  %69 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom110 = sext i32 %69 to i64
  %arrayidx111 = getelementptr inbounds [100 x i32], ptr %arrayidx109, i64 0, i64 %idxprom110
  %70 = load i32, ptr %arrayidx111, align 4, !tbaa !5
  %sub112 = sub nsw i32 %70, %67
  store i32 %sub112, ptr %arrayidx111, align 4, !tbaa !5
  br label %for.inc113

for.inc113:                                       ; preds = %for.body105
  %71 = load i32, ptr %i, align 4, !tbaa !5
  %inc114 = add nsw i32 %71, 1
  store i32 %inc114, ptr %i, align 4, !tbaa !5
  br label %for.cond103, !llvm.loop !21

for.end115:                                       ; preds = %for.cond103
  br label %for.inc116

for.inc116:                                       ; preds = %for.end115
  %72 = load i32, ptr %j, align 4, !tbaa !5
  %inc117 = add nsw i32 %72, 1
  store i32 %inc117, ptr %j, align 4, !tbaa !5
  br label %for.cond100, !llvm.loop !22

for.end118:                                       ; preds = %for.cond100
  %arrayidx119 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 1
  %arrayidx120 = getelementptr inbounds [100 x i32], ptr %arrayidx119, i64 0, i64 1
  %73 = load i32, ptr %arrayidx120, align 4, !tbaa !5
  %74 = load i32, ptr %d, align 4, !tbaa !5
  %add = add nsw i32 %74, %73
  store i32 %add, ptr %d, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond121

for.cond121:                                      ; preds = %for.inc139, %for.end118
  %75 = load i32, ptr %j, align 4, !tbaa !5
  %76 = load i32, ptr %n, align 4, !tbaa !5
  %cmp122 = icmp slt i32 %75, %76
  br i1 %cmp122, label %for.body123, label %for.end141

for.body123:                                      ; preds = %for.cond121
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %for.cond124

for.cond124:                                      ; preds = %for.inc136, %for.body123
  %77 = load i32, ptr %i, align 4, !tbaa !5
  %78 = load i32, ptr %n, align 4, !tbaa !5
  %cmp125 = icmp slt i32 %77, %78
  br i1 %cmp125, label %for.body126, label %for.end138

for.body126:                                      ; preds = %for.cond124
  %79 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom127 = sext i32 %79 to i64
  %arrayidx128 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom127
  %80 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom129 = sext i32 %80 to i64
  %arrayidx130 = getelementptr inbounds [100 x i32], ptr %arrayidx128, i64 0, i64 %idxprom129
  %81 = load i32, ptr %arrayidx130, align 4, !tbaa !5
  %82 = load i32, ptr %i, align 4, !tbaa !5
  %sub131 = sub nsw i32 %82, 1
  %idxprom132 = sext i32 %sub131 to i64
  %arrayidx133 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom132
  %83 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom134 = sext i32 %83 to i64
  %arrayidx135 = getelementptr inbounds [100 x i32], ptr %arrayidx133, i64 0, i64 %idxprom134
  store i32 %81, ptr %arrayidx135, align 4, !tbaa !5
  br label %for.inc136

for.inc136:                                       ; preds = %for.body126
  %84 = load i32, ptr %i, align 4, !tbaa !5
  %inc137 = add nsw i32 %84, 1
  store i32 %inc137, ptr %i, align 4, !tbaa !5
  br label %for.cond124, !llvm.loop !23

for.end138:                                       ; preds = %for.cond124
  br label %for.inc139

for.inc139:                                       ; preds = %for.end138
  %85 = load i32, ptr %j, align 4, !tbaa !5
  %inc140 = add nsw i32 %85, 1
  store i32 %inc140, ptr %j, align 4, !tbaa !5
  br label %for.cond121, !llvm.loop !24

for.end141:                                       ; preds = %for.cond121
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond142

for.cond142:                                      ; preds = %for.inc160, %for.end141
  %86 = load i32, ptr %i, align 4, !tbaa !5
  %87 = load i32, ptr %n, align 4, !tbaa !5
  %cmp143 = icmp slt i32 %86, %87
  br i1 %cmp143, label %for.body144, label %for.end162

for.body144:                                      ; preds = %for.cond142
  store i32 2, ptr %j, align 4, !tbaa !5
  br label %for.cond145

for.cond145:                                      ; preds = %for.inc157, %for.body144
  %88 = load i32, ptr %j, align 4, !tbaa !5
  %89 = load i32, ptr %n, align 4, !tbaa !5
  %cmp146 = icmp slt i32 %88, %89
  br i1 %cmp146, label %for.body147, label %for.end159

for.body147:                                      ; preds = %for.cond145
  %90 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom148 = sext i32 %90 to i64
  %arrayidx149 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom148
  %91 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom150 = sext i32 %91 to i64
  %arrayidx151 = getelementptr inbounds [100 x i32], ptr %arrayidx149, i64 0, i64 %idxprom150
  %92 = load i32, ptr %arrayidx151, align 4, !tbaa !5
  %93 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom152 = sext i32 %93 to i64
  %arrayidx153 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom152
  %94 = load i32, ptr %j, align 4, !tbaa !5
  %sub154 = sub nsw i32 %94, 1
  %idxprom155 = sext i32 %sub154 to i64
  %arrayidx156 = getelementptr inbounds [100 x i32], ptr %arrayidx153, i64 0, i64 %idxprom155
  store i32 %92, ptr %arrayidx156, align 4, !tbaa !5
  br label %for.inc157

for.inc157:                                       ; preds = %for.body147
  %95 = load i32, ptr %j, align 4, !tbaa !5
  %inc158 = add nsw i32 %95, 1
  store i32 %inc158, ptr %j, align 4, !tbaa !5
  br label %for.cond145, !llvm.loop !25

for.end159:                                       ; preds = %for.cond145
  br label %for.inc160

for.inc160:                                       ; preds = %for.end159
  %96 = load i32, ptr %i, align 4, !tbaa !5
  %inc161 = add nsw i32 %96, 1
  store i32 %inc161, ptr %i, align 4, !tbaa !5
  br label %for.cond142, !llvm.loop !26

for.end162:                                       ; preds = %for.cond142
  %97 = load i32, ptr %n, align 4, !tbaa !5
  %dec = add nsw i32 %97, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !27

while.end:                                        ; preds = %while.cond
  %98 = load i32, ptr %d, align 4, !tbaa !5
  %call163 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %98)
  %call164 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call163, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc165

for.inc165:                                       ; preds = %while.end
  %99 = load i32, ptr %q, align 4, !tbaa !5
  %inc166 = add nsw i32 %99, 1
  store i32 %inc166, ptr %q, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !28

for.end167:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #6
  call void @llvm.lifetime.end.p0(i64 400, ptr %min2) #6
  call void @llvm.lifetime.end.p0(i64 400, ptr %min1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #6
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
  store ptr %this, ptr %this.addr, align 8, !tbaa !29
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !32
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !32
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !29
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !29, !nonnull !33, !align !34
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !29, !nonnull !33, !align !34
  %vtable = load ptr, ptr %1, align 8, !tbaa !35
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
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !29
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !29, !nonnull !33, !align !34
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !37
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !39
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !40
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !39
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #4 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !56
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !56
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !56
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #3 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !56
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !39
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !57
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !39
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !39
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !39
  %vtable = load ptr, ptr %this1, align 8, !tbaa !35
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
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 _ZTSSo", !31, i64 0}
!31 = !{!"any pointer", !7, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{}
!34 = !{i64 8}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !8, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !31, i64 0}
!39 = !{!7, !7, i64 0}
!40 = !{!41, !53, i64 240}
!41 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !42, i64 0, !30, i64 216, !7, i64 224, !51, i64 225, !52, i64 232, !53, i64 240, !54, i64 248, !55, i64 256}
!42 = !{!"_ZTSSt8ios_base", !43, i64 8, !43, i64 16, !44, i64 24, !45, i64 28, !45, i64 32, !46, i64 40, !47, i64 48, !7, i64 64, !6, i64 192, !48, i64 200, !49, i64 208}
!43 = !{!"long", !7, i64 0}
!44 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!45 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!46 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !31, i64 0}
!47 = !{!"_ZTSNSt8ios_base6_WordsE", !31, i64 0, !43, i64 8}
!48 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !31, i64 0}
!49 = !{!"_ZTSSt6locale", !50, i64 0}
!50 = !{!"p1 _ZTSNSt6locale5_ImplE", !31, i64 0}
!51 = !{!"bool", !7, i64 0}
!52 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !31, i64 0}
!53 = !{!"p1 _ZTSSt5ctypeIcE", !31, i64 0}
!54 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !31, i64 0}
!55 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !31, i64 0}
!56 = !{!53, !53, i64 0}
!57 = !{!58, !7, i64 56}
!58 = !{!"_ZTSSt5ctypeIcE", !59, i64 0, !60, i64 16, !51, i64 24, !61, i64 32, !61, i64 40, !62, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!59 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!60 = !{!"p1 _ZTS15__locale_struct", !31, i64 0}
!61 = !{!"p1 int", !31, i64 0}
!62 = !{!"p1 short", !31, i64 0}
