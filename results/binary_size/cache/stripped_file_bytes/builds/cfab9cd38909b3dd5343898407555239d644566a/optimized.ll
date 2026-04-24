; ModuleID = '/tmp/tmp31o7t6tr.cpp'
source_filename = "/tmp/tmp31o7t6tr.cpp"
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
  %a = alloca [110 x [110 x i32]], align 16
  %b = alloca [110 x i32], align 16
  %ju = alloca ptr, align 8
  %num1 = alloca i32, align 4
  %num = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %m = alloca i32, align 4
  %sum = alloca i32, align 4
  %min = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 48400, ptr %a) #6
  call void @llvm.lifetime.start.p0(i64 440, ptr %b) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ju) #6
  %arraydecay = getelementptr inbounds [110 x [110 x i32]], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %ju, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %num1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #6
  store i32 0, ptr %sum, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %min) #6
  %arraydecay1 = getelementptr inbounds [110 x i32], ptr %b, i64 0, i64 0
  store ptr %arraydecay1, ptr %min, align 8, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %num1)
  store i32 0, ptr %m, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc185, %entry
  %0 = load i32, ptr %m, align 4, !tbaa !10
  %1 = load i32, ptr %num1, align 4, !tbaa !10
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end187

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %num1, align 4, !tbaa !10
  store i32 %2, ptr %num, align 4, !tbaa !10
  store i32 0, ptr %sum, align 4, !tbaa !10
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc12, %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !10
  %4 = load i32, ptr %num, align 4, !tbaa !10
  %cmp3 = icmp slt i32 %3, %4
  br i1 %cmp3, label %for.body4, label %for.end14

for.body4:                                        ; preds = %for.cond2
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %5 = load i32, ptr %j, align 4, !tbaa !10
  %6 = load i32, ptr %num, align 4, !tbaa !10
  %cmp6 = icmp slt i32 %5, %6
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %7 = load ptr, ptr %ju, align 8, !tbaa !5
  %8 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds [110 x i32], ptr %7, i64 %idx.ext
  %arraydecay8 = getelementptr inbounds [110 x i32], ptr %add.ptr, i64 0, i64 0
  %9 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext9 = sext i32 %9 to i64
  %add.ptr10 = getelementptr inbounds i32, ptr %arraydecay8, i64 %idx.ext9
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr10)
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %10 = load i32, ptr %j, align 4, !tbaa !10
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %j, align 4, !tbaa !10
  br label %for.cond5, !llvm.loop !12

for.end:                                          ; preds = %for.cond5
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %11 = load i32, ptr %i, align 4, !tbaa !10
  %inc13 = add nsw i32 %11, 1
  store i32 %inc13, ptr %i, align 4, !tbaa !10
  br label %for.cond2, !llvm.loop !15

for.end14:                                        ; preds = %for.cond2
  br label %while.cond

while.cond:                                       ; preds = %for.end182, %for.end14
  %12 = load i32, ptr %num, align 4, !tbaa !10
  %cmp15 = icmp sgt i32 %12, 1
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc42, %while.body
  %13 = load i32, ptr %i, align 4, !tbaa !10
  %14 = load i32, ptr %num, align 4, !tbaa !10
  %cmp17 = icmp slt i32 %13, %14
  br i1 %cmp17, label %for.body18, label %for.end44

for.body18:                                       ; preds = %for.cond16
  %15 = load ptr, ptr %min, align 8, !tbaa !5
  %16 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext19 = sext i32 %16 to i64
  %add.ptr20 = getelementptr inbounds i32, ptr %15, i64 %idx.ext19
  store i32 10000, ptr %add.ptr20, align 4, !tbaa !10
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc39, %for.body18
  %17 = load i32, ptr %j, align 4, !tbaa !10
  %18 = load i32, ptr %num, align 4, !tbaa !10
  %cmp22 = icmp slt i32 %17, %18
  br i1 %cmp22, label %for.body23, label %for.end41

for.body23:                                       ; preds = %for.cond21
  %19 = load ptr, ptr %ju, align 8, !tbaa !5
  %20 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext24 = sext i32 %20 to i64
  %add.ptr25 = getelementptr inbounds [110 x i32], ptr %19, i64 %idx.ext24
  %arraydecay26 = getelementptr inbounds [110 x i32], ptr %add.ptr25, i64 0, i64 0
  %21 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext27 = sext i32 %21 to i64
  %add.ptr28 = getelementptr inbounds i32, ptr %arraydecay26, i64 %idx.ext27
  %22 = load i32, ptr %add.ptr28, align 4, !tbaa !10
  %23 = load ptr, ptr %min, align 8, !tbaa !5
  %24 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext29 = sext i32 %24 to i64
  %add.ptr30 = getelementptr inbounds i32, ptr %23, i64 %idx.ext29
  %25 = load i32, ptr %add.ptr30, align 4, !tbaa !10
  %cmp31 = icmp slt i32 %22, %25
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %for.body23
  %26 = load ptr, ptr %ju, align 8, !tbaa !5
  %27 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext32 = sext i32 %27 to i64
  %add.ptr33 = getelementptr inbounds [110 x i32], ptr %26, i64 %idx.ext32
  %arraydecay34 = getelementptr inbounds [110 x i32], ptr %add.ptr33, i64 0, i64 0
  %28 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext35 = sext i32 %28 to i64
  %add.ptr36 = getelementptr inbounds i32, ptr %arraydecay34, i64 %idx.ext35
  %29 = load i32, ptr %add.ptr36, align 4, !tbaa !10
  %30 = load ptr, ptr %min, align 8, !tbaa !5
  %31 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext37 = sext i32 %31 to i64
  %add.ptr38 = getelementptr inbounds i32, ptr %30, i64 %idx.ext37
  store i32 %29, ptr %add.ptr38, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body23
  br label %for.inc39

for.inc39:                                        ; preds = %if.end
  %32 = load i32, ptr %j, align 4, !tbaa !10
  %inc40 = add nsw i32 %32, 1
  store i32 %inc40, ptr %j, align 4, !tbaa !10
  br label %for.cond21, !llvm.loop !16

for.end41:                                        ; preds = %for.cond21
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %33 = load i32, ptr %i, align 4, !tbaa !10
  %inc43 = add nsw i32 %33, 1
  store i32 %inc43, ptr %i, align 4, !tbaa !10
  br label %for.cond16, !llvm.loop !17

for.end44:                                        ; preds = %for.cond16
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc66, %for.end44
  %34 = load i32, ptr %i, align 4, !tbaa !10
  %35 = load i32, ptr %num, align 4, !tbaa !10
  %cmp46 = icmp slt i32 %34, %35
  br i1 %cmp46, label %for.body47, label %for.end68

for.body47:                                       ; preds = %for.cond45
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc63, %for.body47
  %36 = load i32, ptr %j, align 4, !tbaa !10
  %37 = load i32, ptr %num, align 4, !tbaa !10
  %cmp49 = icmp slt i32 %36, %37
  br i1 %cmp49, label %for.body50, label %for.end65

for.body50:                                       ; preds = %for.cond48
  %38 = load ptr, ptr %ju, align 8, !tbaa !5
  %39 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext51 = sext i32 %39 to i64
  %add.ptr52 = getelementptr inbounds [110 x i32], ptr %38, i64 %idx.ext51
  %arraydecay53 = getelementptr inbounds [110 x i32], ptr %add.ptr52, i64 0, i64 0
  %40 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext54 = sext i32 %40 to i64
  %add.ptr55 = getelementptr inbounds i32, ptr %arraydecay53, i64 %idx.ext54
  %41 = load i32, ptr %add.ptr55, align 4, !tbaa !10
  %42 = load ptr, ptr %min, align 8, !tbaa !5
  %43 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext56 = sext i32 %43 to i64
  %add.ptr57 = getelementptr inbounds i32, ptr %42, i64 %idx.ext56
  %44 = load i32, ptr %add.ptr57, align 4, !tbaa !10
  %sub = sub nsw i32 %41, %44
  %45 = load ptr, ptr %ju, align 8, !tbaa !5
  %46 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext58 = sext i32 %46 to i64
  %add.ptr59 = getelementptr inbounds [110 x i32], ptr %45, i64 %idx.ext58
  %arraydecay60 = getelementptr inbounds [110 x i32], ptr %add.ptr59, i64 0, i64 0
  %47 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext61 = sext i32 %47 to i64
  %add.ptr62 = getelementptr inbounds i32, ptr %arraydecay60, i64 %idx.ext61
  store i32 %sub, ptr %add.ptr62, align 4, !tbaa !10
  br label %for.inc63

for.inc63:                                        ; preds = %for.body50
  %48 = load i32, ptr %j, align 4, !tbaa !10
  %inc64 = add nsw i32 %48, 1
  store i32 %inc64, ptr %j, align 4, !tbaa !10
  br label %for.cond48, !llvm.loop !18

for.end65:                                        ; preds = %for.cond48
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65
  %49 = load i32, ptr %i, align 4, !tbaa !10
  %inc67 = add nsw i32 %49, 1
  store i32 %inc67, ptr %i, align 4, !tbaa !10
  br label %for.cond45, !llvm.loop !19

for.end68:                                        ; preds = %for.cond45
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc97, %for.end68
  %50 = load i32, ptr %j, align 4, !tbaa !10
  %51 = load i32, ptr %num, align 4, !tbaa !10
  %cmp70 = icmp slt i32 %50, %51
  br i1 %cmp70, label %for.body71, label %for.end99

for.body71:                                       ; preds = %for.cond69
  %52 = load ptr, ptr %min, align 8, !tbaa !5
  %53 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext72 = sext i32 %53 to i64
  %add.ptr73 = getelementptr inbounds i32, ptr %52, i64 %idx.ext72
  store i32 10000, ptr %add.ptr73, align 4, !tbaa !10
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc94, %for.body71
  %54 = load i32, ptr %i, align 4, !tbaa !10
  %55 = load i32, ptr %num, align 4, !tbaa !10
  %cmp75 = icmp slt i32 %54, %55
  br i1 %cmp75, label %for.body76, label %for.end96

for.body76:                                       ; preds = %for.cond74
  %56 = load ptr, ptr %ju, align 8, !tbaa !5
  %57 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext77 = sext i32 %57 to i64
  %add.ptr78 = getelementptr inbounds [110 x i32], ptr %56, i64 %idx.ext77
  %arraydecay79 = getelementptr inbounds [110 x i32], ptr %add.ptr78, i64 0, i64 0
  %58 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext80 = sext i32 %58 to i64
  %add.ptr81 = getelementptr inbounds i32, ptr %arraydecay79, i64 %idx.ext80
  %59 = load i32, ptr %add.ptr81, align 4, !tbaa !10
  %60 = load ptr, ptr %min, align 8, !tbaa !5
  %61 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext82 = sext i32 %61 to i64
  %add.ptr83 = getelementptr inbounds i32, ptr %60, i64 %idx.ext82
  %62 = load i32, ptr %add.ptr83, align 4, !tbaa !10
  %cmp84 = icmp slt i32 %59, %62
  br i1 %cmp84, label %if.then85, label %if.end93

if.then85:                                        ; preds = %for.body76
  %63 = load ptr, ptr %ju, align 8, !tbaa !5
  %64 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext86 = sext i32 %64 to i64
  %add.ptr87 = getelementptr inbounds [110 x i32], ptr %63, i64 %idx.ext86
  %arraydecay88 = getelementptr inbounds [110 x i32], ptr %add.ptr87, i64 0, i64 0
  %65 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext89 = sext i32 %65 to i64
  %add.ptr90 = getelementptr inbounds i32, ptr %arraydecay88, i64 %idx.ext89
  %66 = load i32, ptr %add.ptr90, align 4, !tbaa !10
  %67 = load ptr, ptr %min, align 8, !tbaa !5
  %68 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext91 = sext i32 %68 to i64
  %add.ptr92 = getelementptr inbounds i32, ptr %67, i64 %idx.ext91
  store i32 %66, ptr %add.ptr92, align 4, !tbaa !10
  br label %if.end93

if.end93:                                         ; preds = %if.then85, %for.body76
  br label %for.inc94

for.inc94:                                        ; preds = %if.end93
  %69 = load i32, ptr %i, align 4, !tbaa !10
  %inc95 = add nsw i32 %69, 1
  store i32 %inc95, ptr %i, align 4, !tbaa !10
  br label %for.cond74, !llvm.loop !20

for.end96:                                        ; preds = %for.cond74
  br label %for.inc97

for.inc97:                                        ; preds = %for.end96
  %70 = load i32, ptr %j, align 4, !tbaa !10
  %inc98 = add nsw i32 %70, 1
  store i32 %inc98, ptr %j, align 4, !tbaa !10
  br label %for.cond69, !llvm.loop !21

for.end99:                                        ; preds = %for.cond69
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc122, %for.end99
  %71 = load i32, ptr %i, align 4, !tbaa !10
  %72 = load i32, ptr %num, align 4, !tbaa !10
  %cmp101 = icmp slt i32 %71, %72
  br i1 %cmp101, label %for.body102, label %for.end124

for.body102:                                      ; preds = %for.cond100
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc119, %for.body102
  %73 = load i32, ptr %j, align 4, !tbaa !10
  %74 = load i32, ptr %num, align 4, !tbaa !10
  %cmp104 = icmp slt i32 %73, %74
  br i1 %cmp104, label %for.body105, label %for.end121

for.body105:                                      ; preds = %for.cond103
  %75 = load ptr, ptr %ju, align 8, !tbaa !5
  %76 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext106 = sext i32 %76 to i64
  %add.ptr107 = getelementptr inbounds [110 x i32], ptr %75, i64 %idx.ext106
  %arraydecay108 = getelementptr inbounds [110 x i32], ptr %add.ptr107, i64 0, i64 0
  %77 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext109 = sext i32 %77 to i64
  %add.ptr110 = getelementptr inbounds i32, ptr %arraydecay108, i64 %idx.ext109
  %78 = load i32, ptr %add.ptr110, align 4, !tbaa !10
  %79 = load ptr, ptr %min, align 8, !tbaa !5
  %80 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext111 = sext i32 %80 to i64
  %add.ptr112 = getelementptr inbounds i32, ptr %79, i64 %idx.ext111
  %81 = load i32, ptr %add.ptr112, align 4, !tbaa !10
  %sub113 = sub nsw i32 %78, %81
  %82 = load ptr, ptr %ju, align 8, !tbaa !5
  %83 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext114 = sext i32 %83 to i64
  %add.ptr115 = getelementptr inbounds [110 x i32], ptr %82, i64 %idx.ext114
  %arraydecay116 = getelementptr inbounds [110 x i32], ptr %add.ptr115, i64 0, i64 0
  %84 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext117 = sext i32 %84 to i64
  %add.ptr118 = getelementptr inbounds i32, ptr %arraydecay116, i64 %idx.ext117
  store i32 %sub113, ptr %add.ptr118, align 4, !tbaa !10
  br label %for.inc119

for.inc119:                                       ; preds = %for.body105
  %85 = load i32, ptr %j, align 4, !tbaa !10
  %inc120 = add nsw i32 %85, 1
  store i32 %inc120, ptr %j, align 4, !tbaa !10
  br label %for.cond103, !llvm.loop !22

for.end121:                                       ; preds = %for.cond103
  br label %for.inc122

for.inc122:                                       ; preds = %for.end121
  %86 = load i32, ptr %i, align 4, !tbaa !10
  %inc123 = add nsw i32 %86, 1
  store i32 %inc123, ptr %i, align 4, !tbaa !10
  br label %for.cond100, !llvm.loop !23

for.end124:                                       ; preds = %for.cond100
  %87 = load i32, ptr %sum, align 4, !tbaa !10
  %88 = load ptr, ptr %ju, align 8, !tbaa !5
  %add.ptr125 = getelementptr inbounds [110 x i32], ptr %88, i64 1
  %arraydecay126 = getelementptr inbounds [110 x i32], ptr %add.ptr125, i64 0, i64 0
  %add.ptr127 = getelementptr inbounds i32, ptr %arraydecay126, i64 1
  %89 = load i32, ptr %add.ptr127, align 4, !tbaa !10
  %add = add nsw i32 %87, %89
  store i32 %add, ptr %sum, align 4, !tbaa !10
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond128

for.cond128:                                      ; preds = %for.inc152, %for.end124
  %90 = load i32, ptr %i, align 4, !tbaa !10
  %91 = load i32, ptr %num, align 4, !tbaa !10
  %cmp129 = icmp slt i32 %90, %91
  br i1 %cmp129, label %for.body130, label %for.end154

for.body130:                                      ; preds = %for.cond128
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond131

for.cond131:                                      ; preds = %for.inc149, %for.body130
  %92 = load i32, ptr %j, align 4, !tbaa !10
  %93 = load i32, ptr %num, align 4, !tbaa !10
  %sub132 = sub nsw i32 %93, 1
  %cmp133 = icmp slt i32 %92, %sub132
  br i1 %cmp133, label %for.body134, label %for.end151

for.body134:                                      ; preds = %for.cond131
  %94 = load i32, ptr %j, align 4, !tbaa !10
  %cmp135 = icmp sge i32 %94, 1
  br i1 %cmp135, label %if.then136, label %if.end148

if.then136:                                       ; preds = %for.body134
  %95 = load ptr, ptr %ju, align 8, !tbaa !5
  %96 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext137 = sext i32 %96 to i64
  %add.ptr138 = getelementptr inbounds [110 x i32], ptr %95, i64 %idx.ext137
  %arraydecay139 = getelementptr inbounds [110 x i32], ptr %add.ptr138, i64 0, i64 0
  %97 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext140 = sext i32 %97 to i64
  %add.ptr141 = getelementptr inbounds i32, ptr %arraydecay139, i64 %idx.ext140
  %add.ptr142 = getelementptr inbounds i32, ptr %add.ptr141, i64 1
  %98 = load i32, ptr %add.ptr142, align 4, !tbaa !10
  %99 = load ptr, ptr %ju, align 8, !tbaa !5
  %100 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext143 = sext i32 %100 to i64
  %add.ptr144 = getelementptr inbounds [110 x i32], ptr %99, i64 %idx.ext143
  %arraydecay145 = getelementptr inbounds [110 x i32], ptr %add.ptr144, i64 0, i64 0
  %101 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext146 = sext i32 %101 to i64
  %add.ptr147 = getelementptr inbounds i32, ptr %arraydecay145, i64 %idx.ext146
  store i32 %98, ptr %add.ptr147, align 4, !tbaa !10
  br label %if.end148

if.end148:                                        ; preds = %if.then136, %for.body134
  br label %for.inc149

for.inc149:                                       ; preds = %if.end148
  %102 = load i32, ptr %j, align 4, !tbaa !10
  %inc150 = add nsw i32 %102, 1
  store i32 %inc150, ptr %j, align 4, !tbaa !10
  br label %for.cond131, !llvm.loop !24

for.end151:                                       ; preds = %for.cond131
  br label %for.inc152

for.inc152:                                       ; preds = %for.end151
  %103 = load i32, ptr %i, align 4, !tbaa !10
  %inc153 = add nsw i32 %103, 1
  store i32 %inc153, ptr %i, align 4, !tbaa !10
  br label %for.cond128, !llvm.loop !25

for.end154:                                       ; preds = %for.cond128
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond155

for.cond155:                                      ; preds = %for.inc180, %for.end154
  %104 = load i32, ptr %j, align 4, !tbaa !10
  %105 = load i32, ptr %num, align 4, !tbaa !10
  %sub156 = sub nsw i32 %105, 1
  %cmp157 = icmp slt i32 %104, %sub156
  br i1 %cmp157, label %for.body158, label %for.end182

for.body158:                                      ; preds = %for.cond155
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond159

for.cond159:                                      ; preds = %for.inc177, %for.body158
  %106 = load i32, ptr %i, align 4, !tbaa !10
  %107 = load i32, ptr %num, align 4, !tbaa !10
  %sub160 = sub nsw i32 %107, 1
  %cmp161 = icmp slt i32 %106, %sub160
  br i1 %cmp161, label %for.body162, label %for.end179

for.body162:                                      ; preds = %for.cond159
  %108 = load i32, ptr %i, align 4, !tbaa !10
  %cmp163 = icmp sge i32 %108, 1
  br i1 %cmp163, label %if.then164, label %if.end176

if.then164:                                       ; preds = %for.body162
  %109 = load ptr, ptr %ju, align 8, !tbaa !5
  %110 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext165 = sext i32 %110 to i64
  %add.ptr166 = getelementptr inbounds [110 x i32], ptr %109, i64 %idx.ext165
  %add.ptr167 = getelementptr inbounds [110 x i32], ptr %add.ptr166, i64 1
  %arraydecay168 = getelementptr inbounds [110 x i32], ptr %add.ptr167, i64 0, i64 0
  %111 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext169 = sext i32 %111 to i64
  %add.ptr170 = getelementptr inbounds i32, ptr %arraydecay168, i64 %idx.ext169
  %112 = load i32, ptr %add.ptr170, align 4, !tbaa !10
  %113 = load ptr, ptr %ju, align 8, !tbaa !5
  %114 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext171 = sext i32 %114 to i64
  %add.ptr172 = getelementptr inbounds [110 x i32], ptr %113, i64 %idx.ext171
  %arraydecay173 = getelementptr inbounds [110 x i32], ptr %add.ptr172, i64 0, i64 0
  %115 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext174 = sext i32 %115 to i64
  %add.ptr175 = getelementptr inbounds i32, ptr %arraydecay173, i64 %idx.ext174
  store i32 %112, ptr %add.ptr175, align 4, !tbaa !10
  br label %if.end176

if.end176:                                        ; preds = %if.then164, %for.body162
  br label %for.inc177

for.inc177:                                       ; preds = %if.end176
  %116 = load i32, ptr %i, align 4, !tbaa !10
  %inc178 = add nsw i32 %116, 1
  store i32 %inc178, ptr %i, align 4, !tbaa !10
  br label %for.cond159, !llvm.loop !26

for.end179:                                       ; preds = %for.cond159
  br label %for.inc180

for.inc180:                                       ; preds = %for.end179
  %117 = load i32, ptr %j, align 4, !tbaa !10
  %inc181 = add nsw i32 %117, 1
  store i32 %inc181, ptr %j, align 4, !tbaa !10
  br label %for.cond155, !llvm.loop !27

for.end182:                                       ; preds = %for.cond155
  %118 = load i32, ptr %num, align 4, !tbaa !10
  %dec = add nsw i32 %118, -1
  store i32 %dec, ptr %num, align 4, !tbaa !10
  br label %while.cond, !llvm.loop !28

while.end:                                        ; preds = %while.cond
  %119 = load i32, ptr %sum, align 4, !tbaa !10
  %call183 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %119)
  %call184 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call183, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc185

for.inc185:                                       ; preds = %while.end
  %120 = load i32, ptr %m, align 4, !tbaa !10
  %inc186 = add nsw i32 %120, 1
  store i32 %inc186, ptr %m, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !29

for.end187:                                       ; preds = %for.cond
  %call188 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call189 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call190 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call191 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  call void @llvm.lifetime.end.p0(i64 8, ptr %min) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %num1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ju) #6
  call void @llvm.lifetime.end.p0(i64 440, ptr %b) #6
  call void @llvm.lifetime.end.p0(i64 48400, ptr %a) #6
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
  store ptr %this, ptr %this.addr, align 8, !tbaa !30
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
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !30
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !30, !nonnull !33, !align !34
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !30, !nonnull !33, !align !34
  %vtable = load ptr, ptr %1, align 8, !tbaa !35
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !30
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !30, !nonnull !33, !align !34
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
!28 = distinct !{!28, !13, !14}
!29 = distinct !{!29, !13, !14}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTSSo", !7, i64 0}
!32 = !{!7, !7, i64 0}
!33 = !{}
!34 = !{i64 8}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !9, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !7, i64 0}
!39 = !{!8, !8, i64 0}
!40 = !{!41, !53, i64 240}
!41 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !42, i64 0, !31, i64 216, !8, i64 224, !51, i64 225, !52, i64 232, !53, i64 240, !54, i64 248, !55, i64 256}
!42 = !{!"_ZTSSt8ios_base", !43, i64 8, !43, i64 16, !44, i64 24, !45, i64 28, !45, i64 32, !46, i64 40, !47, i64 48, !8, i64 64, !11, i64 192, !48, i64 200, !49, i64 208}
!43 = !{!"long", !8, i64 0}
!44 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!45 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!46 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !7, i64 0}
!47 = !{!"_ZTSNSt8ios_base6_WordsE", !7, i64 0, !43, i64 8}
!48 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !7, i64 0}
!49 = !{!"_ZTSSt6locale", !50, i64 0}
!50 = !{!"p1 _ZTSNSt6locale5_ImplE", !7, i64 0}
!51 = !{!"bool", !8, i64 0}
!52 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !7, i64 0}
!53 = !{!"p1 _ZTSSt5ctypeIcE", !7, i64 0}
!54 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !7, i64 0}
!55 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !7, i64 0}
!56 = !{!53, !53, i64 0}
!57 = !{!58, !8, i64 56}
!58 = !{!"_ZTSSt5ctypeIcE", !59, i64 0, !60, i64 16, !51, i64 24, !6, i64 32, !6, i64 40, !61, i64 48, !8, i64 56, !8, i64 57, !8, i64 313, !8, i64 569}
!59 = !{!"_ZTSNSt6locale5facetE", !11, i64 8}
!60 = !{!"p1 _ZTS15__locale_struct", !7, i64 0}
!61 = !{!"p1 short", !7, i64 0}
