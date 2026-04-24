; ModuleID = '/tmp/tmpjv428e67.cpp'
source_filename = "/tmp/tmpjv428e67.cpp"
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
  %a = alloca [100 x [100 x i32]], align 16
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %total = alloca i32, align 4
  %t = alloca i32, align 4
  %i19 = alloca i32, align 4
  %minValue = alloca i32, align 4
  %j29 = alloca i32, align 4
  %j52 = alloca i32, align 4
  %j69 = alloca i32, align 4
  %minValue79 = alloca i32, align 4
  %i83 = alloca i32, align 4
  %i107 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc136, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  br label %for.end138

for.body:                                         ; preds = %for.cond
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %total) #6
  store i32 0, ptr %total, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #6
  store i32 0, ptr %t, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc131, %for.end14
  %10 = load i32, ptr %t, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %11, 1
  %cmp16 = icmp slt i32 %10, %sub
  br i1 %cmp16, label %for.body18, label %for.cond.cleanup17

for.cond.cleanup17:                               ; preds = %for.cond15
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #6
  br label %for.end133

for.body18:                                       ; preds = %for.cond15
  call void @llvm.lifetime.start.p0(i64 4, ptr %i19) #6
  store i32 0, ptr %i19, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc66, %for.body18
  %12 = load i32, ptr %i19, align 4, !tbaa !5
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %12, %13
  br i1 %cmp21, label %for.body23, label %for.cond.cleanup22

for.cond.cleanup22:                               ; preds = %for.cond20
  store i32 14, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i19) #6
  br label %for.end68

for.body23:                                       ; preds = %for.cond20
  %14 = load i32, ptr %i19, align 4, !tbaa !5
  %cmp24 = icmp ne i32 %14, 0
  br i1 %cmp24, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body23
  %15 = load i32, ptr %i19, align 4, !tbaa !5
  %16 = load i32, ptr %t, align 4, !tbaa !5
  %cmp25 = icmp sle i32 %15, %16
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc66

if.end:                                           ; preds = %land.lhs.true, %for.body23
  call void @llvm.lifetime.start.p0(i64 4, ptr %minValue) #6
  %17 = load i32, ptr %i19, align 4, !tbaa !5
  %idxprom26 = sext i32 %17 to i64
  %arrayidx27 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [100 x i32], ptr %arrayidx27, i64 0, i64 0
  %18 = load i32, ptr %arrayidx28, align 16, !tbaa !5
  store i32 %18, ptr %minValue, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j29) #6
  %19 = load i32, ptr %t, align 4, !tbaa !5
  %add = add nsw i32 %19, 1
  store i32 %add, ptr %j29, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc45, %if.end
  %20 = load i32, ptr %j29, align 4, !tbaa !5
  %21 = load i32, ptr %n, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %20, %21
  br i1 %cmp31, label %for.body33, label %for.cond.cleanup32

for.cond.cleanup32:                               ; preds = %for.cond30
  store i32 17, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j29) #6
  br label %for.end47

for.body33:                                       ; preds = %for.cond30
  %22 = load i32, ptr %i19, align 4, !tbaa !5
  %idxprom34 = sext i32 %22 to i64
  %arrayidx35 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom34
  %23 = load i32, ptr %j29, align 4, !tbaa !5
  %idxprom36 = sext i32 %23 to i64
  %arrayidx37 = getelementptr inbounds [100 x i32], ptr %arrayidx35, i64 0, i64 %idxprom36
  %24 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %25 = load i32, ptr %minValue, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %24, %25
  br i1 %cmp38, label %if.then39, label %if.end44

if.then39:                                        ; preds = %for.body33
  %26 = load i32, ptr %i19, align 4, !tbaa !5
  %idxprom40 = sext i32 %26 to i64
  %arrayidx41 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom40
  %27 = load i32, ptr %j29, align 4, !tbaa !5
  %idxprom42 = sext i32 %27 to i64
  %arrayidx43 = getelementptr inbounds [100 x i32], ptr %arrayidx41, i64 0, i64 %idxprom42
  %28 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  store i32 %28, ptr %minValue, align 4, !tbaa !5
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %for.body33
  br label %for.inc45

for.inc45:                                        ; preds = %if.end44
  %29 = load i32, ptr %j29, align 4, !tbaa !5
  %inc46 = add nsw i32 %29, 1
  store i32 %inc46, ptr %j29, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !13

for.end47:                                        ; preds = %for.cond.cleanup32
  %30 = load i32, ptr %minValue, align 4, !tbaa !5
  %31 = load i32, ptr %i19, align 4, !tbaa !5
  %idxprom48 = sext i32 %31 to i64
  %arrayidx49 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom48
  %arrayidx50 = getelementptr inbounds [100 x i32], ptr %arrayidx49, i64 0, i64 0
  %32 = load i32, ptr %arrayidx50, align 16, !tbaa !5
  %sub51 = sub nsw i32 %32, %30
  store i32 %sub51, ptr %arrayidx50, align 16, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j52) #6
  %33 = load i32, ptr %t, align 4, !tbaa !5
  %add53 = add nsw i32 %33, 1
  store i32 %add53, ptr %j52, align 4, !tbaa !5
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc63, %for.end47
  %34 = load i32, ptr %j52, align 4, !tbaa !5
  %35 = load i32, ptr %n, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %34, %35
  br i1 %cmp55, label %for.body57, label %for.cond.cleanup56

for.cond.cleanup56:                               ; preds = %for.cond54
  store i32 20, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j52) #6
  br label %for.end65

for.body57:                                       ; preds = %for.cond54
  %36 = load i32, ptr %minValue, align 4, !tbaa !5
  %37 = load i32, ptr %i19, align 4, !tbaa !5
  %idxprom58 = sext i32 %37 to i64
  %arrayidx59 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom58
  %38 = load i32, ptr %j52, align 4, !tbaa !5
  %idxprom60 = sext i32 %38 to i64
  %arrayidx61 = getelementptr inbounds [100 x i32], ptr %arrayidx59, i64 0, i64 %idxprom60
  %39 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %sub62 = sub nsw i32 %39, %36
  store i32 %sub62, ptr %arrayidx61, align 4, !tbaa !5
  br label %for.inc63

for.inc63:                                        ; preds = %for.body57
  %40 = load i32, ptr %j52, align 4, !tbaa !5
  %inc64 = add nsw i32 %40, 1
  store i32 %inc64, ptr %j52, align 4, !tbaa !5
  br label %for.cond54, !llvm.loop !14

for.end65:                                        ; preds = %for.cond.cleanup56
  call void @llvm.lifetime.end.p0(i64 4, ptr %minValue) #6
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65, %if.then
  %41 = load i32, ptr %i19, align 4, !tbaa !5
  %inc67 = add nsw i32 %41, 1
  store i32 %inc67, ptr %i19, align 4, !tbaa !5
  br label %for.cond20, !llvm.loop !15

for.end68:                                        ; preds = %for.cond.cleanup22
  call void @llvm.lifetime.start.p0(i64 4, ptr %j69) #6
  store i32 0, ptr %j69, align 4, !tbaa !5
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc121, %for.end68
  %42 = load i32, ptr %j69, align 4, !tbaa !5
  %43 = load i32, ptr %n, align 4, !tbaa !5
  %cmp71 = icmp slt i32 %42, %43
  br i1 %cmp71, label %for.body73, label %for.cond.cleanup72

for.cond.cleanup72:                               ; preds = %for.cond70
  store i32 23, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j69) #6
  br label %for.end123

for.body73:                                       ; preds = %for.cond70
  %44 = load i32, ptr %j69, align 4, !tbaa !5
  %cmp74 = icmp ne i32 %44, 0
  br i1 %cmp74, label %land.lhs.true75, label %if.end78

land.lhs.true75:                                  ; preds = %for.body73
  %45 = load i32, ptr %j69, align 4, !tbaa !5
  %46 = load i32, ptr %t, align 4, !tbaa !5
  %cmp76 = icmp sle i32 %45, %46
  br i1 %cmp76, label %if.then77, label %if.end78

if.then77:                                        ; preds = %land.lhs.true75
  br label %for.inc121

if.end78:                                         ; preds = %land.lhs.true75, %for.body73
  call void @llvm.lifetime.start.p0(i64 4, ptr %minValue79) #6
  %arrayidx80 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %47 = load i32, ptr %j69, align 4, !tbaa !5
  %idxprom81 = sext i32 %47 to i64
  %arrayidx82 = getelementptr inbounds [100 x i32], ptr %arrayidx80, i64 0, i64 %idxprom81
  %48 = load i32, ptr %arrayidx82, align 4, !tbaa !5
  store i32 %48, ptr %minValue79, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i83) #6
  %49 = load i32, ptr %t, align 4, !tbaa !5
  %add84 = add nsw i32 %49, 1
  store i32 %add84, ptr %i83, align 4, !tbaa !5
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc100, %if.end78
  %50 = load i32, ptr %i83, align 4, !tbaa !5
  %51 = load i32, ptr %n, align 4, !tbaa !5
  %cmp86 = icmp slt i32 %50, %51
  br i1 %cmp86, label %for.body88, label %for.cond.cleanup87

for.cond.cleanup87:                               ; preds = %for.cond85
  store i32 26, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i83) #6
  br label %for.end102

for.body88:                                       ; preds = %for.cond85
  %52 = load i32, ptr %i83, align 4, !tbaa !5
  %idxprom89 = sext i32 %52 to i64
  %arrayidx90 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom89
  %53 = load i32, ptr %j69, align 4, !tbaa !5
  %idxprom91 = sext i32 %53 to i64
  %arrayidx92 = getelementptr inbounds [100 x i32], ptr %arrayidx90, i64 0, i64 %idxprom91
  %54 = load i32, ptr %arrayidx92, align 4, !tbaa !5
  %55 = load i32, ptr %minValue79, align 4, !tbaa !5
  %cmp93 = icmp slt i32 %54, %55
  br i1 %cmp93, label %if.then94, label %if.end99

if.then94:                                        ; preds = %for.body88
  %56 = load i32, ptr %i83, align 4, !tbaa !5
  %idxprom95 = sext i32 %56 to i64
  %arrayidx96 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom95
  %57 = load i32, ptr %j69, align 4, !tbaa !5
  %idxprom97 = sext i32 %57 to i64
  %arrayidx98 = getelementptr inbounds [100 x i32], ptr %arrayidx96, i64 0, i64 %idxprom97
  %58 = load i32, ptr %arrayidx98, align 4, !tbaa !5
  store i32 %58, ptr %minValue79, align 4, !tbaa !5
  br label %if.end99

if.end99:                                         ; preds = %if.then94, %for.body88
  br label %for.inc100

for.inc100:                                       ; preds = %if.end99
  %59 = load i32, ptr %i83, align 4, !tbaa !5
  %inc101 = add nsw i32 %59, 1
  store i32 %inc101, ptr %i83, align 4, !tbaa !5
  br label %for.cond85, !llvm.loop !16

for.end102:                                       ; preds = %for.cond.cleanup87
  %60 = load i32, ptr %minValue79, align 4, !tbaa !5
  %arrayidx103 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %61 = load i32, ptr %j69, align 4, !tbaa !5
  %idxprom104 = sext i32 %61 to i64
  %arrayidx105 = getelementptr inbounds [100 x i32], ptr %arrayidx103, i64 0, i64 %idxprom104
  %62 = load i32, ptr %arrayidx105, align 4, !tbaa !5
  %sub106 = sub nsw i32 %62, %60
  store i32 %sub106, ptr %arrayidx105, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i107) #6
  %63 = load i32, ptr %t, align 4, !tbaa !5
  %add108 = add nsw i32 %63, 1
  store i32 %add108, ptr %i107, align 4, !tbaa !5
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc118, %for.end102
  %64 = load i32, ptr %i107, align 4, !tbaa !5
  %65 = load i32, ptr %n, align 4, !tbaa !5
  %cmp110 = icmp slt i32 %64, %65
  br i1 %cmp110, label %for.body112, label %for.cond.cleanup111

for.cond.cleanup111:                              ; preds = %for.cond109
  store i32 29, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i107) #6
  br label %for.end120

for.body112:                                      ; preds = %for.cond109
  %66 = load i32, ptr %minValue79, align 4, !tbaa !5
  %67 = load i32, ptr %i107, align 4, !tbaa !5
  %idxprom113 = sext i32 %67 to i64
  %arrayidx114 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom113
  %68 = load i32, ptr %j69, align 4, !tbaa !5
  %idxprom115 = sext i32 %68 to i64
  %arrayidx116 = getelementptr inbounds [100 x i32], ptr %arrayidx114, i64 0, i64 %idxprom115
  %69 = load i32, ptr %arrayidx116, align 4, !tbaa !5
  %sub117 = sub nsw i32 %69, %66
  store i32 %sub117, ptr %arrayidx116, align 4, !tbaa !5
  br label %for.inc118

for.inc118:                                       ; preds = %for.body112
  %70 = load i32, ptr %i107, align 4, !tbaa !5
  %inc119 = add nsw i32 %70, 1
  store i32 %inc119, ptr %i107, align 4, !tbaa !5
  br label %for.cond109, !llvm.loop !17

for.end120:                                       ; preds = %for.cond.cleanup111
  call void @llvm.lifetime.end.p0(i64 4, ptr %minValue79) #6
  br label %for.inc121

for.inc121:                                       ; preds = %for.end120, %if.then77
  %71 = load i32, ptr %j69, align 4, !tbaa !5
  %inc122 = add nsw i32 %71, 1
  store i32 %inc122, ptr %j69, align 4, !tbaa !5
  br label %for.cond70, !llvm.loop !18

for.end123:                                       ; preds = %for.cond.cleanup72
  %72 = load i32, ptr %t, align 4, !tbaa !5
  %add124 = add nsw i32 %72, 1
  %idxprom125 = sext i32 %add124 to i64
  %arrayidx126 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom125
  %73 = load i32, ptr %t, align 4, !tbaa !5
  %add127 = add nsw i32 %73, 1
  %idxprom128 = sext i32 %add127 to i64
  %arrayidx129 = getelementptr inbounds [100 x i32], ptr %arrayidx126, i64 0, i64 %idxprom128
  %74 = load i32, ptr %arrayidx129, align 4, !tbaa !5
  %75 = load i32, ptr %total, align 4, !tbaa !5
  %add130 = add nsw i32 %75, %74
  store i32 %add130, ptr %total, align 4, !tbaa !5
  br label %for.inc131

for.inc131:                                       ; preds = %for.end123
  %76 = load i32, ptr %t, align 4, !tbaa !5
  %inc132 = add nsw i32 %76, 1
  store i32 %inc132, ptr %t, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !19

for.end133:                                       ; preds = %for.cond.cleanup17
  %77 = load i32, ptr %total, align 4, !tbaa !5
  %call134 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %77)
  %call135 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call134, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 4, ptr %total) #6
  br label %for.inc136

for.inc136:                                       ; preds = %for.end133
  %78 = load i32, ptr %k, align 4, !tbaa !5
  %inc137 = add nsw i32 %78, 1
  store i32 %inc137, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !20

for.end138:                                       ; preds = %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #6
  %79 = load i32, ptr %retval, align 4
  ret i32 %79
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
  store ptr %this, ptr %this.addr, align 8, !tbaa !21
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !24
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !24
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !21
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !21, !nonnull !25, !align !26
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !21, !nonnull !25, !align !26
  %vtable = load ptr, ptr %1, align 8, !tbaa !27
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
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !21
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !21, !nonnull !25, !align !26
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !29
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !31
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !32
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !31
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #4 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !48
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !48
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !48
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #3 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !48
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !31
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !49
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !31
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !31
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !31
  %vtable = load ptr, ptr %this1, align 8, !tbaa !27
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
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTSSo", !23, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{}
!26 = !{i64 8}
!27 = !{!28, !28, i64 0}
!28 = !{!"vtable pointer", !8, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !23, i64 0}
!31 = !{!7, !7, i64 0}
!32 = !{!33, !45, i64 240}
!33 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !34, i64 0, !22, i64 216, !7, i64 224, !43, i64 225, !44, i64 232, !45, i64 240, !46, i64 248, !47, i64 256}
!34 = !{!"_ZTSSt8ios_base", !35, i64 8, !35, i64 16, !36, i64 24, !37, i64 28, !37, i64 32, !38, i64 40, !39, i64 48, !7, i64 64, !6, i64 192, !40, i64 200, !41, i64 208}
!35 = !{!"long", !7, i64 0}
!36 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!37 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!38 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !23, i64 0}
!39 = !{!"_ZTSNSt8ios_base6_WordsE", !23, i64 0, !35, i64 8}
!40 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !23, i64 0}
!41 = !{!"_ZTSSt6locale", !42, i64 0}
!42 = !{!"p1 _ZTSNSt6locale5_ImplE", !23, i64 0}
!43 = !{!"bool", !7, i64 0}
!44 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !23, i64 0}
!45 = !{!"p1 _ZTSSt5ctypeIcE", !23, i64 0}
!46 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !23, i64 0}
!47 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !23, i64 0}
!48 = !{!45, !45, i64 0}
!49 = !{!50, !7, i64 56}
!50 = !{!"_ZTSSt5ctypeIcE", !51, i64 0, !52, i64 16, !43, i64 24, !53, i64 32, !53, i64 40, !54, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!51 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!52 = !{!"p1 _ZTS15__locale_struct", !23, i64 0}
!53 = !{!"p1 int", !23, i64 0}
!54 = !{!"p1 short", !23, i64 0}
