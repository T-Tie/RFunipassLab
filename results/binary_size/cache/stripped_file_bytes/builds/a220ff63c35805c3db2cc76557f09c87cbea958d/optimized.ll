; ModuleID = '/tmp/tmpw4ndku7j.cpp'
source_filename = "/tmp/tmpw4ndku7j.cpp"
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
  %a = alloca [110 x [110 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %min = alloca i32, align 4
  %sum = alloca i32, align 4
  %k = alloca i32, align 4
  %p = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.start.p0(i64 48400, ptr %a) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #6
  store i32 10000, ptr %min, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #6
  store i32 0, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6
  %arraydecay = getelementptr inbounds [110 x [110 x i32]], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %p, align 8, !tbaa !9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x)
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc153, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = load i32, ptr %x, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end155

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %sum, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc11, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %x, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end13

for.body3:                                        ; preds = %for.cond1
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %x, align 4, !tbaa !5
  %cmp5 = icmp sle i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load ptr, ptr %p, align 8, !tbaa !9
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds [110 x i32], ptr %6, i64 %idx.ext
  %arraydecay7 = getelementptr inbounds [110 x i32], ptr %add.ptr, i64 0, i64 0
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext8 = sext i32 %8 to i64
  %add.ptr9 = getelementptr inbounds i32, ptr %arraydecay7, i64 %idx.ext8
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr9)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !12

for.end:                                          ; preds = %for.cond4
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %inc12 = add nsw i32 %10, 1
  store i32 %inc12, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !15

for.end13:                                        ; preds = %for.cond1
  %11 = load i32, ptr %x, align 4, !tbaa !5
  store i32 %11, ptr %n, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc149, %for.end13
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %cmp15 = icmp sge i32 %12, 2
  br i1 %cmp15, label %for.body16, label %for.end150

for.body16:                                       ; preds = %for.cond14
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc53, %for.body16
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %14 = load i32, ptr %n, align 4, !tbaa !5
  %cmp18 = icmp sle i32 %13, %14
  br i1 %cmp18, label %for.body19, label %for.end55

for.body19:                                       ; preds = %for.cond17
  store i32 100000, ptr %min, align 4, !tbaa !5
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc34, %for.body19
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %16 = load i32, ptr %n, align 4, !tbaa !5
  %cmp21 = icmp sle i32 %15, %16
  br i1 %cmp21, label %for.body22, label %for.end36

for.body22:                                       ; preds = %for.cond20
  %17 = load ptr, ptr %p, align 8, !tbaa !9
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext23 = sext i32 %18 to i64
  %add.ptr24 = getelementptr inbounds [110 x i32], ptr %17, i64 %idx.ext23
  %arraydecay25 = getelementptr inbounds [110 x i32], ptr %add.ptr24, i64 0, i64 0
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext26 = sext i32 %19 to i64
  %add.ptr27 = getelementptr inbounds i32, ptr %arraydecay25, i64 %idx.ext26
  %20 = load i32, ptr %add.ptr27, align 4, !tbaa !5
  %21 = load i32, ptr %min, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %20, %21
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %for.body22
  %22 = load ptr, ptr %p, align 8, !tbaa !9
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext29 = sext i32 %23 to i64
  %add.ptr30 = getelementptr inbounds [110 x i32], ptr %22, i64 %idx.ext29
  %arraydecay31 = getelementptr inbounds [110 x i32], ptr %add.ptr30, i64 0, i64 0
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext32 = sext i32 %24 to i64
  %add.ptr33 = getelementptr inbounds i32, ptr %arraydecay31, i64 %idx.ext32
  %25 = load i32, ptr %add.ptr33, align 4, !tbaa !5
  store i32 %25, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body22
  br label %for.inc34

for.inc34:                                        ; preds = %if.end
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %inc35 = add nsw i32 %26, 1
  store i32 %inc35, ptr %j, align 4, !tbaa !5
  br label %for.cond20, !llvm.loop !16

for.end36:                                        ; preds = %for.cond20
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc50, %for.end36
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %28 = load i32, ptr %n, align 4, !tbaa !5
  %cmp38 = icmp sle i32 %27, %28
  br i1 %cmp38, label %for.body39, label %for.end52

for.body39:                                       ; preds = %for.cond37
  %29 = load ptr, ptr %p, align 8, !tbaa !9
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext40 = sext i32 %30 to i64
  %add.ptr41 = getelementptr inbounds [110 x i32], ptr %29, i64 %idx.ext40
  %arraydecay42 = getelementptr inbounds [110 x i32], ptr %add.ptr41, i64 0, i64 0
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext43 = sext i32 %31 to i64
  %add.ptr44 = getelementptr inbounds i32, ptr %arraydecay42, i64 %idx.ext43
  %32 = load i32, ptr %add.ptr44, align 4, !tbaa !5
  %33 = load i32, ptr %min, align 4, !tbaa !5
  %sub = sub nsw i32 %32, %33
  %34 = load ptr, ptr %p, align 8, !tbaa !9
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext45 = sext i32 %35 to i64
  %add.ptr46 = getelementptr inbounds [110 x i32], ptr %34, i64 %idx.ext45
  %arraydecay47 = getelementptr inbounds [110 x i32], ptr %add.ptr46, i64 0, i64 0
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext48 = sext i32 %36 to i64
  %add.ptr49 = getelementptr inbounds i32, ptr %arraydecay47, i64 %idx.ext48
  store i32 %sub, ptr %add.ptr49, align 4, !tbaa !5
  br label %for.inc50

for.inc50:                                        ; preds = %for.body39
  %37 = load i32, ptr %j, align 4, !tbaa !5
  %inc51 = add nsw i32 %37, 1
  store i32 %inc51, ptr %j, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !17

for.end52:                                        ; preds = %for.cond37
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %inc54 = add nsw i32 %38, 1
  store i32 %inc54, ptr %i, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !18

for.end55:                                        ; preds = %for.cond17
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc95, %for.end55
  %39 = load i32, ptr %j, align 4, !tbaa !5
  %40 = load i32, ptr %n, align 4, !tbaa !5
  %cmp57 = icmp sle i32 %39, %40
  br i1 %cmp57, label %for.body58, label %for.end97

for.body58:                                       ; preds = %for.cond56
  store i32 100000, ptr %min, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc75, %for.body58
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %42 = load i32, ptr %n, align 4, !tbaa !5
  %cmp60 = icmp sle i32 %41, %42
  br i1 %cmp60, label %for.body61, label %for.end77

for.body61:                                       ; preds = %for.cond59
  %43 = load ptr, ptr %p, align 8, !tbaa !9
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext62 = sext i32 %44 to i64
  %add.ptr63 = getelementptr inbounds [110 x i32], ptr %43, i64 %idx.ext62
  %arraydecay64 = getelementptr inbounds [110 x i32], ptr %add.ptr63, i64 0, i64 0
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext65 = sext i32 %45 to i64
  %add.ptr66 = getelementptr inbounds i32, ptr %arraydecay64, i64 %idx.ext65
  %46 = load i32, ptr %add.ptr66, align 4, !tbaa !5
  %47 = load i32, ptr %min, align 4, !tbaa !5
  %cmp67 = icmp slt i32 %46, %47
  br i1 %cmp67, label %if.then68, label %if.end74

if.then68:                                        ; preds = %for.body61
  %48 = load ptr, ptr %p, align 8, !tbaa !9
  %49 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext69 = sext i32 %49 to i64
  %add.ptr70 = getelementptr inbounds [110 x i32], ptr %48, i64 %idx.ext69
  %arraydecay71 = getelementptr inbounds [110 x i32], ptr %add.ptr70, i64 0, i64 0
  %50 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext72 = sext i32 %50 to i64
  %add.ptr73 = getelementptr inbounds i32, ptr %arraydecay71, i64 %idx.ext72
  %51 = load i32, ptr %add.ptr73, align 4, !tbaa !5
  store i32 %51, ptr %min, align 4, !tbaa !5
  br label %if.end74

if.end74:                                         ; preds = %if.then68, %for.body61
  br label %for.inc75

for.inc75:                                        ; preds = %if.end74
  %52 = load i32, ptr %i, align 4, !tbaa !5
  %inc76 = add nsw i32 %52, 1
  store i32 %inc76, ptr %i, align 4, !tbaa !5
  br label %for.cond59, !llvm.loop !19

for.end77:                                        ; preds = %for.cond59
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc92, %for.end77
  %53 = load i32, ptr %i, align 4, !tbaa !5
  %54 = load i32, ptr %n, align 4, !tbaa !5
  %cmp79 = icmp sle i32 %53, %54
  br i1 %cmp79, label %for.body80, label %for.end94

for.body80:                                       ; preds = %for.cond78
  %55 = load ptr, ptr %p, align 8, !tbaa !9
  %56 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext81 = sext i32 %56 to i64
  %add.ptr82 = getelementptr inbounds [110 x i32], ptr %55, i64 %idx.ext81
  %arraydecay83 = getelementptr inbounds [110 x i32], ptr %add.ptr82, i64 0, i64 0
  %57 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext84 = sext i32 %57 to i64
  %add.ptr85 = getelementptr inbounds i32, ptr %arraydecay83, i64 %idx.ext84
  %58 = load i32, ptr %add.ptr85, align 4, !tbaa !5
  %59 = load i32, ptr %min, align 4, !tbaa !5
  %sub86 = sub nsw i32 %58, %59
  %60 = load ptr, ptr %p, align 8, !tbaa !9
  %61 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext87 = sext i32 %61 to i64
  %add.ptr88 = getelementptr inbounds [110 x i32], ptr %60, i64 %idx.ext87
  %arraydecay89 = getelementptr inbounds [110 x i32], ptr %add.ptr88, i64 0, i64 0
  %62 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext90 = sext i32 %62 to i64
  %add.ptr91 = getelementptr inbounds i32, ptr %arraydecay89, i64 %idx.ext90
  store i32 %sub86, ptr %add.ptr91, align 4, !tbaa !5
  br label %for.inc92

for.inc92:                                        ; preds = %for.body80
  %63 = load i32, ptr %i, align 4, !tbaa !5
  %inc93 = add nsw i32 %63, 1
  store i32 %inc93, ptr %i, align 4, !tbaa !5
  br label %for.cond78, !llvm.loop !20

for.end94:                                        ; preds = %for.cond78
  br label %for.inc95

for.inc95:                                        ; preds = %for.end94
  %64 = load i32, ptr %j, align 4, !tbaa !5
  %inc96 = add nsw i32 %64, 1
  store i32 %inc96, ptr %j, align 4, !tbaa !5
  br label %for.cond56, !llvm.loop !21

for.end97:                                        ; preds = %for.cond56
  %65 = load i32, ptr %sum, align 4, !tbaa !5
  %66 = load ptr, ptr %p, align 8, !tbaa !9
  %add.ptr98 = getelementptr inbounds [110 x i32], ptr %66, i64 2
  %arraydecay99 = getelementptr inbounds [110 x i32], ptr %add.ptr98, i64 0, i64 0
  %add.ptr100 = getelementptr inbounds i32, ptr %arraydecay99, i64 2
  %67 = load i32, ptr %add.ptr100, align 4, !tbaa !5
  %add = add nsw i32 %65, %67
  store i32 %add, ptr %sum, align 4, !tbaa !5
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %for.cond101

for.cond101:                                      ; preds = %for.inc122, %for.end97
  %68 = load i32, ptr %i, align 4, !tbaa !5
  %69 = load i32, ptr %n, align 4, !tbaa !5
  %sub102 = sub nsw i32 %69, 1
  %cmp103 = icmp sle i32 %68, %sub102
  br i1 %cmp103, label %for.body104, label %for.end124

for.body104:                                      ; preds = %for.cond101
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond105

for.cond105:                                      ; preds = %for.inc119, %for.body104
  %70 = load i32, ptr %j, align 4, !tbaa !5
  %71 = load i32, ptr %n, align 4, !tbaa !5
  %cmp106 = icmp sle i32 %70, %71
  br i1 %cmp106, label %for.body107, label %for.end121

for.body107:                                      ; preds = %for.cond105
  %72 = load ptr, ptr %p, align 8, !tbaa !9
  %73 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext108 = sext i32 %73 to i64
  %add.ptr109 = getelementptr inbounds [110 x i32], ptr %72, i64 %idx.ext108
  %add.ptr110 = getelementptr inbounds [110 x i32], ptr %add.ptr109, i64 1
  %arraydecay111 = getelementptr inbounds [110 x i32], ptr %add.ptr110, i64 0, i64 0
  %74 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext112 = sext i32 %74 to i64
  %add.ptr113 = getelementptr inbounds i32, ptr %arraydecay111, i64 %idx.ext112
  %75 = load i32, ptr %add.ptr113, align 4, !tbaa !5
  %76 = load ptr, ptr %p, align 8, !tbaa !9
  %77 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext114 = sext i32 %77 to i64
  %add.ptr115 = getelementptr inbounds [110 x i32], ptr %76, i64 %idx.ext114
  %arraydecay116 = getelementptr inbounds [110 x i32], ptr %add.ptr115, i64 0, i64 0
  %78 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext117 = sext i32 %78 to i64
  %add.ptr118 = getelementptr inbounds i32, ptr %arraydecay116, i64 %idx.ext117
  store i32 %75, ptr %add.ptr118, align 4, !tbaa !5
  br label %for.inc119

for.inc119:                                       ; preds = %for.body107
  %79 = load i32, ptr %j, align 4, !tbaa !5
  %inc120 = add nsw i32 %79, 1
  store i32 %inc120, ptr %j, align 4, !tbaa !5
  br label %for.cond105, !llvm.loop !22

for.end121:                                       ; preds = %for.cond105
  br label %for.inc122

for.inc122:                                       ; preds = %for.end121
  %80 = load i32, ptr %i, align 4, !tbaa !5
  %inc123 = add nsw i32 %80, 1
  store i32 %inc123, ptr %i, align 4, !tbaa !5
  br label %for.cond101, !llvm.loop !23

for.end124:                                       ; preds = %for.cond101
  store i32 2, ptr %j, align 4, !tbaa !5
  br label %for.cond125

for.cond125:                                      ; preds = %for.inc146, %for.end124
  %81 = load i32, ptr %j, align 4, !tbaa !5
  %82 = load i32, ptr %n, align 4, !tbaa !5
  %sub126 = sub nsw i32 %82, 1
  %cmp127 = icmp sle i32 %81, %sub126
  br i1 %cmp127, label %for.body128, label %for.end148

for.body128:                                      ; preds = %for.cond125
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond129

for.cond129:                                      ; preds = %for.inc143, %for.body128
  %83 = load i32, ptr %i, align 4, !tbaa !5
  %84 = load i32, ptr %n, align 4, !tbaa !5
  %cmp130 = icmp sle i32 %83, %84
  br i1 %cmp130, label %for.body131, label %for.end145

for.body131:                                      ; preds = %for.cond129
  %85 = load ptr, ptr %p, align 8, !tbaa !9
  %86 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext132 = sext i32 %86 to i64
  %add.ptr133 = getelementptr inbounds [110 x i32], ptr %85, i64 %idx.ext132
  %arraydecay134 = getelementptr inbounds [110 x i32], ptr %add.ptr133, i64 0, i64 0
  %87 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext135 = sext i32 %87 to i64
  %add.ptr136 = getelementptr inbounds i32, ptr %arraydecay134, i64 %idx.ext135
  %add.ptr137 = getelementptr inbounds i32, ptr %add.ptr136, i64 1
  %88 = load i32, ptr %add.ptr137, align 4, !tbaa !5
  %89 = load ptr, ptr %p, align 8, !tbaa !9
  %90 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext138 = sext i32 %90 to i64
  %add.ptr139 = getelementptr inbounds [110 x i32], ptr %89, i64 %idx.ext138
  %arraydecay140 = getelementptr inbounds [110 x i32], ptr %add.ptr139, i64 0, i64 0
  %91 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext141 = sext i32 %91 to i64
  %add.ptr142 = getelementptr inbounds i32, ptr %arraydecay140, i64 %idx.ext141
  store i32 %88, ptr %add.ptr142, align 4, !tbaa !5
  br label %for.inc143

for.inc143:                                       ; preds = %for.body131
  %92 = load i32, ptr %i, align 4, !tbaa !5
  %inc144 = add nsw i32 %92, 1
  store i32 %inc144, ptr %i, align 4, !tbaa !5
  br label %for.cond129, !llvm.loop !24

for.end145:                                       ; preds = %for.cond129
  br label %for.inc146

for.inc146:                                       ; preds = %for.end145
  %93 = load i32, ptr %j, align 4, !tbaa !5
  %inc147 = add nsw i32 %93, 1
  store i32 %inc147, ptr %j, align 4, !tbaa !5
  br label %for.cond125, !llvm.loop !25

for.end148:                                       ; preds = %for.cond125
  br label %for.inc149

for.inc149:                                       ; preds = %for.end148
  %94 = load i32, ptr %n, align 4, !tbaa !5
  %dec = add nsw i32 %94, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !26

for.end150:                                       ; preds = %for.cond14
  %95 = load i32, ptr %sum, align 4, !tbaa !5
  %call151 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %95)
  %call152 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call151, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc153

for.inc153:                                       ; preds = %for.end150
  %96 = load i32, ptr %k, align 4, !tbaa !5
  %inc154 = add nsw i32 %96, 1
  store i32 %inc154, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !27

for.end155:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 48400, ptr %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
  %97 = load i32, ptr %retval, align 4
  ret i32 %97
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
  store ptr %this, ptr %this.addr, align 8, !tbaa !28
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !30
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !30
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !28
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !28, !nonnull !31, !align !32
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

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

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #4 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !54
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !54
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #7
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
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
!17 = distinct !{!17, !13, !14}
!18 = distinct !{!18, !13, !14}
!19 = distinct !{!19, !13, !14}
!20 = distinct !{!20, !13, !14}
!21 = distinct !{!21, !13, !14}
!22 = distinct !{!22, !13, !14}
!23 = distinct !{!23, !13, !14}
!24 = distinct !{!24, !13, !14}
!25 = distinct !{!25, !13, !14}
!26 = distinct !{!26, !13, !14}
!27 = distinct !{!27, !13, !14}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 _ZTSSo", !11, i64 0}
!30 = !{!11, !11, i64 0}
!31 = !{}
!32 = !{i64 8}
!33 = !{!34, !34, i64 0}
!34 = !{!"vtable pointer", !8, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !11, i64 0}
!37 = !{!7, !7, i64 0}
!38 = !{!39, !51, i64 240}
!39 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !40, i64 0, !29, i64 216, !7, i64 224, !49, i64 225, !50, i64 232, !51, i64 240, !52, i64 248, !53, i64 256}
!40 = !{!"_ZTSSt8ios_base", !41, i64 8, !41, i64 16, !42, i64 24, !43, i64 28, !43, i64 32, !44, i64 40, !45, i64 48, !7, i64 64, !6, i64 192, !46, i64 200, !47, i64 208}
!41 = !{!"long", !7, i64 0}
!42 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!43 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!44 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!45 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !41, i64 8}
!46 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!47 = !{!"_ZTSSt6locale", !48, i64 0}
!48 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!49 = !{!"bool", !7, i64 0}
!50 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!51 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!52 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!53 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!54 = !{!51, !51, i64 0}
!55 = !{!56, !7, i64 56}
!56 = !{!"_ZTSSt5ctypeIcE", !57, i64 0, !58, i64 16, !49, i64 24, !10, i64 32, !10, i64 40, !59, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!57 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!58 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!59 = !{!"p1 short", !11, i64 0}
