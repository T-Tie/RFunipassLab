; ModuleID = '/tmp/tmp9wrtt962.cpp'
source_filename = "/tmp/tmp9wrtt962.cpp"
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
  %a = alloca [100 x [100 x i32]], align 16
  %sum = alloca i32, align 4
  %min = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca i32, align 4
  %k = alloca i32, align 4
  %q = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #6
  %arraydecay = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %q, align 8, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 0, ptr %p, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc180, %entry
  %0 = load i32, ptr %p, align 4, !tbaa !10
  %1 = load i32, ptr %n, align 4, !tbaa !10
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end182

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %sum, align 4, !tbaa !10
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc11, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !10
  %3 = load i32, ptr %n, align 4, !tbaa !10
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end13

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %j, align 4, !tbaa !10
  %5 = load i32, ptr %n, align 4, !tbaa !10
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load ptr, ptr %q, align 8, !tbaa !5
  %7 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds [100 x i32], ptr %6, i64 %idx.ext
  %arraydecay7 = getelementptr inbounds [100 x i32], ptr %add.ptr, i64 0, i64 0
  %8 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext8 = sext i32 %8 to i64
  %add.ptr9 = getelementptr inbounds i32, ptr %arraydecay7, i64 %idx.ext8
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr9)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %9 = load i32, ptr %j, align 4, !tbaa !10
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %j, align 4, !tbaa !10
  br label %for.cond4, !llvm.loop !12

for.end:                                          ; preds = %for.cond4
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %10 = load i32, ptr %i, align 4, !tbaa !10
  %inc12 = add nsw i32 %10, 1
  store i32 %inc12, ptr %i, align 4, !tbaa !10
  br label %for.cond1, !llvm.loop !15

for.end13:                                        ; preds = %for.cond1
  %11 = load i32, ptr %n, align 4, !tbaa !10
  store i32 %11, ptr %k, align 4, !tbaa !10
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc176, %for.end13
  %12 = load i32, ptr %k, align 4, !tbaa !10
  %cmp15 = icmp sge i32 %12, 2
  br i1 %cmp15, label %for.body16, label %for.end177

for.body16:                                       ; preds = %for.cond14
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc61, %for.body16
  %13 = load i32, ptr %i, align 4, !tbaa !10
  %14 = load i32, ptr %k, align 4, !tbaa !10
  %cmp18 = icmp slt i32 %13, %14
  br i1 %cmp18, label %for.body19, label %for.end63

for.body19:                                       ; preds = %for.cond17
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc42, %for.body19
  %15 = load i32, ptr %j, align 4, !tbaa !10
  %16 = load i32, ptr %k, align 4, !tbaa !10
  %cmp21 = icmp slt i32 %15, %16
  br i1 %cmp21, label %for.body22, label %for.end44

for.body22:                                       ; preds = %for.cond20
  %17 = load i32, ptr %j, align 4, !tbaa !10
  %cmp23 = icmp eq i32 %17, 0
  br i1 %cmp23, label %if.then, label %if.else

if.then:                                          ; preds = %for.body22
  %18 = load ptr, ptr %q, align 8, !tbaa !5
  %19 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext24 = sext i32 %19 to i64
  %add.ptr25 = getelementptr inbounds [100 x i32], ptr %18, i64 %idx.ext24
  %arraydecay26 = getelementptr inbounds [100 x i32], ptr %add.ptr25, i64 0, i64 0
  %20 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext27 = sext i32 %20 to i64
  %add.ptr28 = getelementptr inbounds i32, ptr %arraydecay26, i64 %idx.ext27
  %21 = load i32, ptr %add.ptr28, align 4, !tbaa !10
  store i32 %21, ptr %min, align 4, !tbaa !10
  br label %if.end41

if.else:                                          ; preds = %for.body22
  %22 = load ptr, ptr %q, align 8, !tbaa !5
  %23 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext29 = sext i32 %23 to i64
  %add.ptr30 = getelementptr inbounds [100 x i32], ptr %22, i64 %idx.ext29
  %arraydecay31 = getelementptr inbounds [100 x i32], ptr %add.ptr30, i64 0, i64 0
  %24 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext32 = sext i32 %24 to i64
  %add.ptr33 = getelementptr inbounds i32, ptr %arraydecay31, i64 %idx.ext32
  %25 = load i32, ptr %add.ptr33, align 4, !tbaa !10
  %26 = load i32, ptr %min, align 4, !tbaa !10
  %cmp34 = icmp slt i32 %25, %26
  br i1 %cmp34, label %if.then35, label %if.end

if.then35:                                        ; preds = %if.else
  %27 = load ptr, ptr %q, align 8, !tbaa !5
  %28 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext36 = sext i32 %28 to i64
  %add.ptr37 = getelementptr inbounds [100 x i32], ptr %27, i64 %idx.ext36
  %arraydecay38 = getelementptr inbounds [100 x i32], ptr %add.ptr37, i64 0, i64 0
  %29 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext39 = sext i32 %29 to i64
  %add.ptr40 = getelementptr inbounds i32, ptr %arraydecay38, i64 %idx.ext39
  %30 = load i32, ptr %add.ptr40, align 4, !tbaa !10
  store i32 %30, ptr %min, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then35, %if.else
  br label %if.end41

if.end41:                                         ; preds = %if.end, %if.then
  br label %for.inc42

for.inc42:                                        ; preds = %if.end41
  %31 = load i32, ptr %j, align 4, !tbaa !10
  %inc43 = add nsw i32 %31, 1
  store i32 %inc43, ptr %j, align 4, !tbaa !10
  br label %for.cond20, !llvm.loop !16

for.end44:                                        ; preds = %for.cond20
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc58, %for.end44
  %32 = load i32, ptr %j, align 4, !tbaa !10
  %33 = load i32, ptr %k, align 4, !tbaa !10
  %cmp46 = icmp slt i32 %32, %33
  br i1 %cmp46, label %for.body47, label %for.end60

for.body47:                                       ; preds = %for.cond45
  %34 = load ptr, ptr %q, align 8, !tbaa !5
  %35 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext48 = sext i32 %35 to i64
  %add.ptr49 = getelementptr inbounds [100 x i32], ptr %34, i64 %idx.ext48
  %arraydecay50 = getelementptr inbounds [100 x i32], ptr %add.ptr49, i64 0, i64 0
  %36 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext51 = sext i32 %36 to i64
  %add.ptr52 = getelementptr inbounds i32, ptr %arraydecay50, i64 %idx.ext51
  %37 = load i32, ptr %add.ptr52, align 4, !tbaa !10
  %38 = load i32, ptr %min, align 4, !tbaa !10
  %sub = sub nsw i32 %37, %38
  %39 = load ptr, ptr %q, align 8, !tbaa !5
  %40 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext53 = sext i32 %40 to i64
  %add.ptr54 = getelementptr inbounds [100 x i32], ptr %39, i64 %idx.ext53
  %arraydecay55 = getelementptr inbounds [100 x i32], ptr %add.ptr54, i64 0, i64 0
  %41 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext56 = sext i32 %41 to i64
  %add.ptr57 = getelementptr inbounds i32, ptr %arraydecay55, i64 %idx.ext56
  store i32 %sub, ptr %add.ptr57, align 4, !tbaa !10
  br label %for.inc58

for.inc58:                                        ; preds = %for.body47
  %42 = load i32, ptr %j, align 4, !tbaa !10
  %inc59 = add nsw i32 %42, 1
  store i32 %inc59, ptr %j, align 4, !tbaa !10
  br label %for.cond45, !llvm.loop !17

for.end60:                                        ; preds = %for.cond45
  br label %for.inc61

for.inc61:                                        ; preds = %for.end60
  %43 = load i32, ptr %i, align 4, !tbaa !10
  %inc62 = add nsw i32 %43, 1
  store i32 %inc62, ptr %i, align 4, !tbaa !10
  br label %for.cond17, !llvm.loop !18

for.end63:                                        ; preds = %for.cond17
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc112, %for.end63
  %44 = load i32, ptr %i, align 4, !tbaa !10
  %45 = load i32, ptr %k, align 4, !tbaa !10
  %cmp65 = icmp slt i32 %44, %45
  br i1 %cmp65, label %for.body66, label %for.end114

for.body66:                                       ; preds = %for.cond64
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc92, %for.body66
  %46 = load i32, ptr %j, align 4, !tbaa !10
  %47 = load i32, ptr %k, align 4, !tbaa !10
  %cmp68 = icmp slt i32 %46, %47
  br i1 %cmp68, label %for.body69, label %for.end94

for.body69:                                       ; preds = %for.cond67
  %48 = load i32, ptr %j, align 4, !tbaa !10
  %cmp70 = icmp eq i32 %48, 0
  br i1 %cmp70, label %if.then71, label %if.else77

if.then71:                                        ; preds = %for.body69
  %49 = load ptr, ptr %q, align 8, !tbaa !5
  %50 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext72 = sext i32 %50 to i64
  %add.ptr73 = getelementptr inbounds [100 x i32], ptr %49, i64 %idx.ext72
  %arraydecay74 = getelementptr inbounds [100 x i32], ptr %add.ptr73, i64 0, i64 0
  %51 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext75 = sext i32 %51 to i64
  %add.ptr76 = getelementptr inbounds i32, ptr %arraydecay74, i64 %idx.ext75
  %52 = load i32, ptr %add.ptr76, align 4, !tbaa !10
  store i32 %52, ptr %min, align 4, !tbaa !10
  br label %if.end91

if.else77:                                        ; preds = %for.body69
  %53 = load ptr, ptr %q, align 8, !tbaa !5
  %54 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext78 = sext i32 %54 to i64
  %add.ptr79 = getelementptr inbounds [100 x i32], ptr %53, i64 %idx.ext78
  %arraydecay80 = getelementptr inbounds [100 x i32], ptr %add.ptr79, i64 0, i64 0
  %55 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext81 = sext i32 %55 to i64
  %add.ptr82 = getelementptr inbounds i32, ptr %arraydecay80, i64 %idx.ext81
  %56 = load i32, ptr %add.ptr82, align 4, !tbaa !10
  %57 = load i32, ptr %min, align 4, !tbaa !10
  %cmp83 = icmp slt i32 %56, %57
  br i1 %cmp83, label %if.then84, label %if.end90

if.then84:                                        ; preds = %if.else77
  %58 = load ptr, ptr %q, align 8, !tbaa !5
  %59 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext85 = sext i32 %59 to i64
  %add.ptr86 = getelementptr inbounds [100 x i32], ptr %58, i64 %idx.ext85
  %arraydecay87 = getelementptr inbounds [100 x i32], ptr %add.ptr86, i64 0, i64 0
  %60 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext88 = sext i32 %60 to i64
  %add.ptr89 = getelementptr inbounds i32, ptr %arraydecay87, i64 %idx.ext88
  %61 = load i32, ptr %add.ptr89, align 4, !tbaa !10
  store i32 %61, ptr %min, align 4, !tbaa !10
  br label %if.end90

if.end90:                                         ; preds = %if.then84, %if.else77
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then71
  br label %for.inc92

for.inc92:                                        ; preds = %if.end91
  %62 = load i32, ptr %j, align 4, !tbaa !10
  %inc93 = add nsw i32 %62, 1
  store i32 %inc93, ptr %j, align 4, !tbaa !10
  br label %for.cond67, !llvm.loop !19

for.end94:                                        ; preds = %for.cond67
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc109, %for.end94
  %63 = load i32, ptr %j, align 4, !tbaa !10
  %64 = load i32, ptr %k, align 4, !tbaa !10
  %cmp96 = icmp slt i32 %63, %64
  br i1 %cmp96, label %for.body97, label %for.end111

for.body97:                                       ; preds = %for.cond95
  %65 = load ptr, ptr %q, align 8, !tbaa !5
  %66 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext98 = sext i32 %66 to i64
  %add.ptr99 = getelementptr inbounds [100 x i32], ptr %65, i64 %idx.ext98
  %arraydecay100 = getelementptr inbounds [100 x i32], ptr %add.ptr99, i64 0, i64 0
  %67 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext101 = sext i32 %67 to i64
  %add.ptr102 = getelementptr inbounds i32, ptr %arraydecay100, i64 %idx.ext101
  %68 = load i32, ptr %add.ptr102, align 4, !tbaa !10
  %69 = load i32, ptr %min, align 4, !tbaa !10
  %sub103 = sub nsw i32 %68, %69
  %70 = load ptr, ptr %q, align 8, !tbaa !5
  %71 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext104 = sext i32 %71 to i64
  %add.ptr105 = getelementptr inbounds [100 x i32], ptr %70, i64 %idx.ext104
  %arraydecay106 = getelementptr inbounds [100 x i32], ptr %add.ptr105, i64 0, i64 0
  %72 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext107 = sext i32 %72 to i64
  %add.ptr108 = getelementptr inbounds i32, ptr %arraydecay106, i64 %idx.ext107
  store i32 %sub103, ptr %add.ptr108, align 4, !tbaa !10
  br label %for.inc109

for.inc109:                                       ; preds = %for.body97
  %73 = load i32, ptr %j, align 4, !tbaa !10
  %inc110 = add nsw i32 %73, 1
  store i32 %inc110, ptr %j, align 4, !tbaa !10
  br label %for.cond95, !llvm.loop !20

for.end111:                                       ; preds = %for.cond95
  br label %for.inc112

for.inc112:                                       ; preds = %for.end111
  %74 = load i32, ptr %i, align 4, !tbaa !10
  %inc113 = add nsw i32 %74, 1
  store i32 %inc113, ptr %i, align 4, !tbaa !10
  br label %for.cond64, !llvm.loop !21

for.end114:                                       ; preds = %for.cond64
  %75 = load ptr, ptr %q, align 8, !tbaa !5
  %add.ptr115 = getelementptr inbounds [100 x i32], ptr %75, i64 1
  %arraydecay116 = getelementptr inbounds [100 x i32], ptr %add.ptr115, i64 0, i64 0
  %add.ptr117 = getelementptr inbounds i32, ptr %arraydecay116, i64 1
  %76 = load i32, ptr %add.ptr117, align 4, !tbaa !10
  %77 = load i32, ptr %sum, align 4, !tbaa !10
  %add = add nsw i32 %77, %76
  store i32 %add, ptr %sum, align 4, !tbaa !10
  store i32 1, ptr %i, align 4, !tbaa !10
  br label %for.cond118

for.cond118:                                      ; preds = %for.inc131, %for.end114
  %78 = load i32, ptr %i, align 4, !tbaa !10
  %79 = load i32, ptr %k, align 4, !tbaa !10
  %sub119 = sub nsw i32 %79, 1
  %cmp120 = icmp slt i32 %78, %sub119
  br i1 %cmp120, label %for.body121, label %for.end133

for.body121:                                      ; preds = %for.cond118
  %80 = load ptr, ptr %q, align 8, !tbaa !5
  %add.ptr122 = getelementptr inbounds [100 x i32], ptr %80, i64 0
  %arraydecay123 = getelementptr inbounds [100 x i32], ptr %add.ptr122, i64 0, i64 0
  %81 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext124 = sext i32 %81 to i64
  %add.ptr125 = getelementptr inbounds i32, ptr %arraydecay123, i64 %idx.ext124
  %add.ptr126 = getelementptr inbounds i32, ptr %add.ptr125, i64 1
  %82 = load i32, ptr %add.ptr126, align 4, !tbaa !10
  %83 = load ptr, ptr %q, align 8, !tbaa !5
  %add.ptr127 = getelementptr inbounds [100 x i32], ptr %83, i64 0
  %arraydecay128 = getelementptr inbounds [100 x i32], ptr %add.ptr127, i64 0, i64 0
  %84 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext129 = sext i32 %84 to i64
  %add.ptr130 = getelementptr inbounds i32, ptr %arraydecay128, i64 %idx.ext129
  store i32 %82, ptr %add.ptr130, align 4, !tbaa !10
  br label %for.inc131

for.inc131:                                       ; preds = %for.body121
  %85 = load i32, ptr %i, align 4, !tbaa !10
  %inc132 = add nsw i32 %85, 1
  store i32 %inc132, ptr %i, align 4, !tbaa !10
  br label %for.cond118, !llvm.loop !22

for.end133:                                       ; preds = %for.cond118
  store i32 1, ptr %i, align 4, !tbaa !10
  br label %for.cond134

for.cond134:                                      ; preds = %for.inc147, %for.end133
  %86 = load i32, ptr %i, align 4, !tbaa !10
  %87 = load i32, ptr %k, align 4, !tbaa !10
  %sub135 = sub nsw i32 %87, 1
  %cmp136 = icmp slt i32 %86, %sub135
  br i1 %cmp136, label %for.body137, label %for.end149

for.body137:                                      ; preds = %for.cond134
  %88 = load ptr, ptr %q, align 8, !tbaa !5
  %89 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext138 = sext i32 %89 to i64
  %add.ptr139 = getelementptr inbounds [100 x i32], ptr %88, i64 %idx.ext138
  %add.ptr140 = getelementptr inbounds [100 x i32], ptr %add.ptr139, i64 1
  %arraydecay141 = getelementptr inbounds [100 x i32], ptr %add.ptr140, i64 0, i64 0
  %add.ptr142 = getelementptr inbounds i32, ptr %arraydecay141, i64 0
  %90 = load i32, ptr %add.ptr142, align 4, !tbaa !10
  %91 = load ptr, ptr %q, align 8, !tbaa !5
  %92 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext143 = sext i32 %92 to i64
  %add.ptr144 = getelementptr inbounds [100 x i32], ptr %91, i64 %idx.ext143
  %arraydecay145 = getelementptr inbounds [100 x i32], ptr %add.ptr144, i64 0, i64 0
  %add.ptr146 = getelementptr inbounds i32, ptr %arraydecay145, i64 0
  store i32 %90, ptr %add.ptr146, align 4, !tbaa !10
  br label %for.inc147

for.inc147:                                       ; preds = %for.body137
  %93 = load i32, ptr %i, align 4, !tbaa !10
  %inc148 = add nsw i32 %93, 1
  store i32 %inc148, ptr %i, align 4, !tbaa !10
  br label %for.cond134, !llvm.loop !23

for.end149:                                       ; preds = %for.cond134
  store i32 1, ptr %i, align 4, !tbaa !10
  br label %for.cond150

for.cond150:                                      ; preds = %for.inc173, %for.end149
  %94 = load i32, ptr %i, align 4, !tbaa !10
  %95 = load i32, ptr %k, align 4, !tbaa !10
  %sub151 = sub nsw i32 %95, 1
  %cmp152 = icmp slt i32 %94, %sub151
  br i1 %cmp152, label %for.body153, label %for.end175

for.body153:                                      ; preds = %for.cond150
  store i32 1, ptr %j, align 4, !tbaa !10
  br label %for.cond154

for.cond154:                                      ; preds = %for.inc170, %for.body153
  %96 = load i32, ptr %j, align 4, !tbaa !10
  %97 = load i32, ptr %k, align 4, !tbaa !10
  %sub155 = sub nsw i32 %97, 1
  %cmp156 = icmp slt i32 %96, %sub155
  br i1 %cmp156, label %for.body157, label %for.end172

for.body157:                                      ; preds = %for.cond154
  %98 = load ptr, ptr %q, align 8, !tbaa !5
  %99 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext158 = sext i32 %99 to i64
  %add.ptr159 = getelementptr inbounds [100 x i32], ptr %98, i64 %idx.ext158
  %add.ptr160 = getelementptr inbounds [100 x i32], ptr %add.ptr159, i64 1
  %arraydecay161 = getelementptr inbounds [100 x i32], ptr %add.ptr160, i64 0, i64 0
  %100 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext162 = sext i32 %100 to i64
  %add.ptr163 = getelementptr inbounds i32, ptr %arraydecay161, i64 %idx.ext162
  %add.ptr164 = getelementptr inbounds i32, ptr %add.ptr163, i64 1
  %101 = load i32, ptr %add.ptr164, align 4, !tbaa !10
  %102 = load ptr, ptr %q, align 8, !tbaa !5
  %103 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext165 = sext i32 %103 to i64
  %add.ptr166 = getelementptr inbounds [100 x i32], ptr %102, i64 %idx.ext165
  %arraydecay167 = getelementptr inbounds [100 x i32], ptr %add.ptr166, i64 0, i64 0
  %104 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext168 = sext i32 %104 to i64
  %add.ptr169 = getelementptr inbounds i32, ptr %arraydecay167, i64 %idx.ext168
  store i32 %101, ptr %add.ptr169, align 4, !tbaa !10
  br label %for.inc170

for.inc170:                                       ; preds = %for.body157
  %105 = load i32, ptr %j, align 4, !tbaa !10
  %inc171 = add nsw i32 %105, 1
  store i32 %inc171, ptr %j, align 4, !tbaa !10
  br label %for.cond154, !llvm.loop !24

for.end172:                                       ; preds = %for.cond154
  br label %for.inc173

for.inc173:                                       ; preds = %for.end172
  %106 = load i32, ptr %i, align 4, !tbaa !10
  %inc174 = add nsw i32 %106, 1
  store i32 %inc174, ptr %i, align 4, !tbaa !10
  br label %for.cond150, !llvm.loop !25

for.end175:                                       ; preds = %for.cond150
  br label %for.inc176

for.inc176:                                       ; preds = %for.end175
  %107 = load i32, ptr %k, align 4, !tbaa !10
  %dec = add nsw i32 %107, -1
  store i32 %dec, ptr %k, align 4, !tbaa !10
  br label %for.cond14, !llvm.loop !26

for.end177:                                       ; preds = %for.cond14
  %108 = load i32, ptr %sum, align 4, !tbaa !10
  %call178 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %108)
  %call179 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call178, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc180

for.inc180:                                       ; preds = %for.end177
  %109 = load i32, ptr %p, align 4, !tbaa !10
  %inc181 = add nsw i32 %109, 1
  store i32 %inc181, ptr %p, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !27

for.end182:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #6
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
!6 = !{!"p1 int", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
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
!29 = !{!"p1 _ZTSSo", !7, i64 0}
!30 = !{!7, !7, i64 0}
!31 = !{}
!32 = !{i64 8}
!33 = !{!34, !34, i64 0}
!34 = !{!"vtable pointer", !9, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !7, i64 0}
!37 = !{!8, !8, i64 0}
!38 = !{!39, !51, i64 240}
!39 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !40, i64 0, !29, i64 216, !8, i64 224, !49, i64 225, !50, i64 232, !51, i64 240, !52, i64 248, !53, i64 256}
!40 = !{!"_ZTSSt8ios_base", !41, i64 8, !41, i64 16, !42, i64 24, !43, i64 28, !43, i64 32, !44, i64 40, !45, i64 48, !8, i64 64, !11, i64 192, !46, i64 200, !47, i64 208}
!41 = !{!"long", !8, i64 0}
!42 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!43 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!44 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !7, i64 0}
!45 = !{!"_ZTSNSt8ios_base6_WordsE", !7, i64 0, !41, i64 8}
!46 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !7, i64 0}
!47 = !{!"_ZTSSt6locale", !48, i64 0}
!48 = !{!"p1 _ZTSNSt6locale5_ImplE", !7, i64 0}
!49 = !{!"bool", !8, i64 0}
!50 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !7, i64 0}
!51 = !{!"p1 _ZTSSt5ctypeIcE", !7, i64 0}
!52 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !7, i64 0}
!53 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !7, i64 0}
!54 = !{!51, !51, i64 0}
!55 = !{!56, !8, i64 56}
!56 = !{!"_ZTSSt5ctypeIcE", !57, i64 0, !58, i64 16, !49, i64 24, !6, i64 32, !6, i64 40, !59, i64 48, !8, i64 56, !8, i64 57, !8, i64 313, !8, i64 569}
!57 = !{!"_ZTSNSt6locale5facetE", !11, i64 8}
!58 = !{!"p1 _ZTS15__locale_struct", !7, i64 0}
!59 = !{!"p1 short", !7, i64 0}
