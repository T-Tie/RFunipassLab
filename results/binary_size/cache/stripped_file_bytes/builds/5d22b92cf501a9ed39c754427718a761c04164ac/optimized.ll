; ModuleID = '/tmp/tmp_e3aejg3.cpp'
source_filename = "/tmp/tmp_e3aejg3.cpp"
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
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %h = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %board = alloca [105 x [105 x i32]], align 16
  %min = alloca i32, align 4
  %min54 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #7
  store i32 0, ptr %sum, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #7
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc143, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end145

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 44100, ptr %board) #7
  call void @llvm.memset.p0.i64(ptr align 16 %board, i8 0, i64 44100, i1 false)
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
  %arrayidx = getelementptr inbounds [105 x [105 x i32]], ptr %board, i64 0, i64 %idxprom
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [105 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end12:                                        ; preds = %for.cond1
  store i32 0, ptr %h, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc138, %for.end12
  %10 = load i32, ptr %h, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %10, %11
  br i1 %cmp14, label %for.body15, label %for.end140

for.body15:                                       ; preds = %for.cond13
  %12 = load i32, ptr %h, align 4, !tbaa !5
  store i32 %12, ptr %i, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc48, %for.body15
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %14 = load i32, ptr %n, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %13, %14
  br i1 %cmp17, label %for.body18, label %for.end50

for.body18:                                       ; preds = %for.cond16
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #7
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [105 x [105 x i32]], ptr %board, i64 0, i64 %idxprom19
  %16 = load i32, ptr %h, align 4, !tbaa !5
  %idxprom21 = sext i32 %16 to i64
  %arrayidx22 = getelementptr inbounds [105 x i32], ptr %arrayidx20, i64 0, i64 %idxprom21
  %17 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  store i32 %17, ptr %min, align 4, !tbaa !5
  %18 = load i32, ptr %h, align 4, !tbaa !5
  store i32 %18, ptr %j, align 4, !tbaa !5
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc35, %for.body18
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %20 = load i32, ptr %n, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %19, %20
  br i1 %cmp24, label %for.body25, label %for.end37

for.body25:                                       ; preds = %for.cond23
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %21 to i64
  %arrayidx27 = getelementptr inbounds [105 x [105 x i32]], ptr %board, i64 0, i64 %idxprom26
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom28 = sext i32 %22 to i64
  %arrayidx29 = getelementptr inbounds [105 x i32], ptr %arrayidx27, i64 0, i64 %idxprom28
  %23 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %24 = load i32, ptr %min, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %23, %24
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %for.body25
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %25 to i64
  %arrayidx32 = getelementptr inbounds [105 x [105 x i32]], ptr %board, i64 0, i64 %idxprom31
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom33 = sext i32 %26 to i64
  %arrayidx34 = getelementptr inbounds [105 x i32], ptr %arrayidx32, i64 0, i64 %idxprom33
  %27 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  store i32 %27, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body25
  br label %for.inc35

for.inc35:                                        ; preds = %if.end
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %inc36 = add nsw i32 %28, 1
  store i32 %inc36, ptr %j, align 4, !tbaa !5
  br label %for.cond23, !llvm.loop !13

for.end37:                                        ; preds = %for.cond23
  %29 = load i32, ptr %h, align 4, !tbaa !5
  store i32 %29, ptr %j, align 4, !tbaa !5
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc45, %for.end37
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %31 = load i32, ptr %n, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %30, %31
  br i1 %cmp39, label %for.body40, label %for.end47

for.body40:                                       ; preds = %for.cond38
  %32 = load i32, ptr %min, align 4, !tbaa !5
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom41 = sext i32 %33 to i64
  %arrayidx42 = getelementptr inbounds [105 x [105 x i32]], ptr %board, i64 0, i64 %idxprom41
  %34 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom43 = sext i32 %34 to i64
  %arrayidx44 = getelementptr inbounds [105 x i32], ptr %arrayidx42, i64 0, i64 %idxprom43
  %35 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %sub = sub nsw i32 %35, %32
  store i32 %sub, ptr %arrayidx44, align 4, !tbaa !5
  br label %for.inc45

for.inc45:                                        ; preds = %for.body40
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %inc46 = add nsw i32 %36, 1
  store i32 %inc46, ptr %j, align 4, !tbaa !5
  br label %for.cond38, !llvm.loop !14

for.end47:                                        ; preds = %for.cond38
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #7
  br label %for.inc48

for.inc48:                                        ; preds = %for.end47
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %inc49 = add nsw i32 %37, 1
  store i32 %inc49, ptr %i, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !15

for.end50:                                        ; preds = %for.cond16
  %38 = load i32, ptr %h, align 4, !tbaa !5
  store i32 %38, ptr %j, align 4, !tbaa !5
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc87, %for.end50
  %39 = load i32, ptr %j, align 4, !tbaa !5
  %40 = load i32, ptr %n, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %39, %40
  br i1 %cmp52, label %for.body53, label %for.end89

for.body53:                                       ; preds = %for.cond51
  call void @llvm.lifetime.start.p0(i64 4, ptr %min54) #7
  %41 = load i32, ptr %h, align 4, !tbaa !5
  %idxprom55 = sext i32 %41 to i64
  %arrayidx56 = getelementptr inbounds [105 x [105 x i32]], ptr %board, i64 0, i64 %idxprom55
  %42 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom57 = sext i32 %42 to i64
  %arrayidx58 = getelementptr inbounds [105 x i32], ptr %arrayidx56, i64 0, i64 %idxprom57
  %43 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  store i32 %43, ptr %min54, align 4, !tbaa !5
  %44 = load i32, ptr %h, align 4, !tbaa !5
  store i32 %44, ptr %i, align 4, !tbaa !5
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc73, %for.body53
  %45 = load i32, ptr %i, align 4, !tbaa !5
  %46 = load i32, ptr %n, align 4, !tbaa !5
  %cmp60 = icmp slt i32 %45, %46
  br i1 %cmp60, label %for.body61, label %for.end75

for.body61:                                       ; preds = %for.cond59
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom62 = sext i32 %47 to i64
  %arrayidx63 = getelementptr inbounds [105 x [105 x i32]], ptr %board, i64 0, i64 %idxprom62
  %48 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom64 = sext i32 %48 to i64
  %arrayidx65 = getelementptr inbounds [105 x i32], ptr %arrayidx63, i64 0, i64 %idxprom64
  %49 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %50 = load i32, ptr %min54, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %49, %50
  br i1 %cmp66, label %if.then67, label %if.end72

if.then67:                                        ; preds = %for.body61
  %51 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom68 = sext i32 %51 to i64
  %arrayidx69 = getelementptr inbounds [105 x [105 x i32]], ptr %board, i64 0, i64 %idxprom68
  %52 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom70 = sext i32 %52 to i64
  %arrayidx71 = getelementptr inbounds [105 x i32], ptr %arrayidx69, i64 0, i64 %idxprom70
  %53 = load i32, ptr %arrayidx71, align 4, !tbaa !5
  store i32 %53, ptr %min54, align 4, !tbaa !5
  br label %if.end72

if.end72:                                         ; preds = %if.then67, %for.body61
  br label %for.inc73

for.inc73:                                        ; preds = %if.end72
  %54 = load i32, ptr %i, align 4, !tbaa !5
  %inc74 = add nsw i32 %54, 1
  store i32 %inc74, ptr %i, align 4, !tbaa !5
  br label %for.cond59, !llvm.loop !16

for.end75:                                        ; preds = %for.cond59
  %55 = load i32, ptr %h, align 4, !tbaa !5
  store i32 %55, ptr %i, align 4, !tbaa !5
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc84, %for.end75
  %56 = load i32, ptr %i, align 4, !tbaa !5
  %57 = load i32, ptr %n, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %56, %57
  br i1 %cmp77, label %for.body78, label %for.end86

for.body78:                                       ; preds = %for.cond76
  %58 = load i32, ptr %min54, align 4, !tbaa !5
  %59 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom79 = sext i32 %59 to i64
  %arrayidx80 = getelementptr inbounds [105 x [105 x i32]], ptr %board, i64 0, i64 %idxprom79
  %60 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom81 = sext i32 %60 to i64
  %arrayidx82 = getelementptr inbounds [105 x i32], ptr %arrayidx80, i64 0, i64 %idxprom81
  %61 = load i32, ptr %arrayidx82, align 4, !tbaa !5
  %sub83 = sub nsw i32 %61, %58
  store i32 %sub83, ptr %arrayidx82, align 4, !tbaa !5
  br label %for.inc84

for.inc84:                                        ; preds = %for.body78
  %62 = load i32, ptr %i, align 4, !tbaa !5
  %inc85 = add nsw i32 %62, 1
  store i32 %inc85, ptr %i, align 4, !tbaa !5
  br label %for.cond76, !llvm.loop !17

for.end86:                                        ; preds = %for.cond76
  call void @llvm.lifetime.end.p0(i64 4, ptr %min54) #7
  br label %for.inc87

for.inc87:                                        ; preds = %for.end86
  %63 = load i32, ptr %j, align 4, !tbaa !5
  %inc88 = add nsw i32 %63, 1
  store i32 %inc88, ptr %j, align 4, !tbaa !5
  br label %for.cond51, !llvm.loop !18

for.end89:                                        ; preds = %for.cond51
  %64 = load i32, ptr %h, align 4, !tbaa !5
  %add = add nsw i32 %64, 1
  %idxprom90 = sext i32 %add to i64
  %arrayidx91 = getelementptr inbounds [105 x [105 x i32]], ptr %board, i64 0, i64 %idxprom90
  %65 = load i32, ptr %h, align 4, !tbaa !5
  %add92 = add nsw i32 %65, 1
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds [105 x i32], ptr %arrayidx91, i64 0, i64 %idxprom93
  %66 = load i32, ptr %arrayidx94, align 4, !tbaa !5
  %67 = load i32, ptr %sum, align 4, !tbaa !5
  %add95 = add nsw i32 %67, %66
  store i32 %add95, ptr %sum, align 4, !tbaa !5
  %68 = load i32, ptr %h, align 4, !tbaa !5
  %idxprom96 = sext i32 %68 to i64
  %arrayidx97 = getelementptr inbounds [105 x [105 x i32]], ptr %board, i64 0, i64 %idxprom96
  %69 = load i32, ptr %h, align 4, !tbaa !5
  %idxprom98 = sext i32 %69 to i64
  %arrayidx99 = getelementptr inbounds [105 x i32], ptr %arrayidx97, i64 0, i64 %idxprom98
  %70 = load i32, ptr %arrayidx99, align 4, !tbaa !5
  %71 = load i32, ptr %h, align 4, !tbaa !5
  %add100 = add nsw i32 %71, 1
  %idxprom101 = sext i32 %add100 to i64
  %arrayidx102 = getelementptr inbounds [105 x [105 x i32]], ptr %board, i64 0, i64 %idxprom101
  %72 = load i32, ptr %h, align 4, !tbaa !5
  %add103 = add nsw i32 %72, 1
  %idxprom104 = sext i32 %add103 to i64
  %arrayidx105 = getelementptr inbounds [105 x i32], ptr %arrayidx102, i64 0, i64 %idxprom104
  store i32 %70, ptr %arrayidx105, align 4, !tbaa !5
  %73 = load i32, ptr %h, align 4, !tbaa !5
  %add106 = add nsw i32 %73, 2
  store i32 %add106, ptr %p, align 4, !tbaa !5
  br label %for.cond107

for.cond107:                                      ; preds = %for.inc119, %for.end89
  %74 = load i32, ptr %p, align 4, !tbaa !5
  %75 = load i32, ptr %n, align 4, !tbaa !5
  %cmp108 = icmp slt i32 %74, %75
  br i1 %cmp108, label %for.body109, label %for.end121

for.body109:                                      ; preds = %for.cond107
  %76 = load i32, ptr %h, align 4, !tbaa !5
  %idxprom110 = sext i32 %76 to i64
  %arrayidx111 = getelementptr inbounds [105 x [105 x i32]], ptr %board, i64 0, i64 %idxprom110
  %77 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom112 = sext i32 %77 to i64
  %arrayidx113 = getelementptr inbounds [105 x i32], ptr %arrayidx111, i64 0, i64 %idxprom112
  %78 = load i32, ptr %arrayidx113, align 4, !tbaa !5
  %79 = load i32, ptr %h, align 4, !tbaa !5
  %add114 = add nsw i32 %79, 1
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds [105 x [105 x i32]], ptr %board, i64 0, i64 %idxprom115
  %80 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom117 = sext i32 %80 to i64
  %arrayidx118 = getelementptr inbounds [105 x i32], ptr %arrayidx116, i64 0, i64 %idxprom117
  store i32 %78, ptr %arrayidx118, align 4, !tbaa !5
  br label %for.inc119

for.inc119:                                       ; preds = %for.body109
  %81 = load i32, ptr %p, align 4, !tbaa !5
  %inc120 = add nsw i32 %81, 1
  store i32 %inc120, ptr %p, align 4, !tbaa !5
  br label %for.cond107, !llvm.loop !19

for.end121:                                       ; preds = %for.cond107
  %82 = load i32, ptr %h, align 4, !tbaa !5
  %add122 = add nsw i32 %82, 2
  store i32 %add122, ptr %p, align 4, !tbaa !5
  br label %for.cond123

for.cond123:                                      ; preds = %for.inc135, %for.end121
  %83 = load i32, ptr %p, align 4, !tbaa !5
  %84 = load i32, ptr %n, align 4, !tbaa !5
  %cmp124 = icmp slt i32 %83, %84
  br i1 %cmp124, label %for.body125, label %for.end137

for.body125:                                      ; preds = %for.cond123
  %85 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom126 = sext i32 %85 to i64
  %arrayidx127 = getelementptr inbounds [105 x [105 x i32]], ptr %board, i64 0, i64 %idxprom126
  %86 = load i32, ptr %h, align 4, !tbaa !5
  %idxprom128 = sext i32 %86 to i64
  %arrayidx129 = getelementptr inbounds [105 x i32], ptr %arrayidx127, i64 0, i64 %idxprom128
  %87 = load i32, ptr %arrayidx129, align 4, !tbaa !5
  %88 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom130 = sext i32 %88 to i64
  %arrayidx131 = getelementptr inbounds [105 x [105 x i32]], ptr %board, i64 0, i64 %idxprom130
  %89 = load i32, ptr %h, align 4, !tbaa !5
  %add132 = add nsw i32 %89, 1
  %idxprom133 = sext i32 %add132 to i64
  %arrayidx134 = getelementptr inbounds [105 x i32], ptr %arrayidx131, i64 0, i64 %idxprom133
  store i32 %87, ptr %arrayidx134, align 4, !tbaa !5
  br label %for.inc135

for.inc135:                                       ; preds = %for.body125
  %90 = load i32, ptr %p, align 4, !tbaa !5
  %inc136 = add nsw i32 %90, 1
  store i32 %inc136, ptr %p, align 4, !tbaa !5
  br label %for.cond123, !llvm.loop !20

for.end137:                                       ; preds = %for.cond123
  br label %for.inc138

for.inc138:                                       ; preds = %for.end137
  %91 = load i32, ptr %h, align 4, !tbaa !5
  %inc139 = add nsw i32 %91, 1
  store i32 %inc139, ptr %h, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !21

for.end140:                                       ; preds = %for.cond13
  %92 = load i32, ptr %sum, align 4, !tbaa !5
  %call141 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %92)
  %call142 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call141, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 44100, ptr %board) #7
  br label %for.inc143

for.inc143:                                       ; preds = %for.end140
  %93 = load i32, ptr %k, align 4, !tbaa !5
  %inc144 = add nsw i32 %93, 1
  store i32 %inc144, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !22

for.end145:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !23
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !26
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !26
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !23
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !23, !nonnull !27, !align !28
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !23, !nonnull !27, !align !28
  %vtable = load ptr, ptr %1, align 8, !tbaa !29
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !23
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !23, !nonnull !27, !align !28
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !31
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !33
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !34
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !33
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #5 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !50
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !50
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !50
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #4 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !50
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !33
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !51
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !33
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !33
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !33
  %vtable = load ptr, ptr %this1, align 8, !tbaa !29
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

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTSSo", !25, i64 0}
!25 = !{!"any pointer", !7, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{}
!28 = !{i64 8}
!29 = !{!30, !30, i64 0}
!30 = !{!"vtable pointer", !8, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !25, i64 0}
!33 = !{!7, !7, i64 0}
!34 = !{!35, !47, i64 240}
!35 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !36, i64 0, !24, i64 216, !7, i64 224, !45, i64 225, !46, i64 232, !47, i64 240, !48, i64 248, !49, i64 256}
!36 = !{!"_ZTSSt8ios_base", !37, i64 8, !37, i64 16, !38, i64 24, !39, i64 28, !39, i64 32, !40, i64 40, !41, i64 48, !7, i64 64, !6, i64 192, !42, i64 200, !43, i64 208}
!37 = !{!"long", !7, i64 0}
!38 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!39 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!40 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !25, i64 0}
!41 = !{!"_ZTSNSt8ios_base6_WordsE", !25, i64 0, !37, i64 8}
!42 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !25, i64 0}
!43 = !{!"_ZTSSt6locale", !44, i64 0}
!44 = !{!"p1 _ZTSNSt6locale5_ImplE", !25, i64 0}
!45 = !{!"bool", !7, i64 0}
!46 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !25, i64 0}
!47 = !{!"p1 _ZTSSt5ctypeIcE", !25, i64 0}
!48 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !25, i64 0}
!49 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !25, i64 0}
!50 = !{!47, !47, i64 0}
!51 = !{!52, !7, i64 56}
!52 = !{!"_ZTSSt5ctypeIcE", !53, i64 0, !54, i64 16, !45, i64 24, !55, i64 32, !55, i64 40, !56, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!53 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!54 = !{!"p1 _ZTS15__locale_struct", !25, i64 0}
!55 = !{!"p1 int", !25, i64 0}
!56 = !{!"p1 short", !25, i64 0}
