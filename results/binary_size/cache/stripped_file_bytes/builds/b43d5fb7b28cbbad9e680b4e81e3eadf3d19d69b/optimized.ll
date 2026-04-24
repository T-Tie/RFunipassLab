; ModuleID = '/tmp/tmp1ocsqoz9.cpp'
source_filename = "/tmp/tmp1ocsqoz9.cpp"
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

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z4zeroPA100_ii(ptr noundef %a, i32 noundef %n) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %min = alloca [100 x i32], align 16
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  %j25 = alloca i32, align 4
  %j43 = alloca i32, align 4
  %i53 = alloca i32, align 4
  %i80 = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !5
  store i32 %n, ptr %n.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 400, ptr %min) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc40, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !10
  %1 = load i32, ptr %n.addr, align 4, !tbaa !10
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  br label %for.end42

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %3 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %2, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 0
  %4 = load i32, ptr %arrayidx1, align 4, !tbaa !10
  %5 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [100 x i32], ptr %min, i64 0, i64 %idxprom2
  store i32 %4, ptr %arrayidx3, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %j, align 4, !tbaa !10
  %7 = load i32, ptr %n.addr, align 4, !tbaa !10
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6

for.cond.cleanup6:                                ; preds = %for.cond4
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  br label %for.end

for.body7:                                        ; preds = %for.cond4
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %9 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [100 x i32], ptr %8, i64 %idxprom8
  %10 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %arrayidx9, i64 0, i64 %idxprom10
  %11 = load i32, ptr %arrayidx11, align 4, !tbaa !10
  %12 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [100 x i32], ptr %min, i64 0, i64 %idxprom12
  %13 = load i32, ptr %arrayidx13, align 4, !tbaa !10
  %cmp14 = icmp slt i32 %11, %13
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %14 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %15 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [100 x i32], ptr %14, i64 %idxprom15
  %16 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [100 x i32], ptr %arrayidx16, i64 0, i64 %idxprom17
  %17 = load i32, ptr %arrayidx18, align 4, !tbaa !10
  %18 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds [100 x i32], ptr %min, i64 0, i64 %idxprom19
  store i32 %17, ptr %arrayidx20, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, ptr %j, align 4, !tbaa !10
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %j, align 4, !tbaa !10
  br label %for.cond4, !llvm.loop !12

for.end:                                          ; preds = %for.cond.cleanup6
  %20 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom21 = sext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds [100 x i32], ptr %min, i64 0, i64 %idxprom21
  %21 = load i32, ptr %arrayidx22, align 4, !tbaa !10
  %cmp23 = icmp ne i32 %21, 0
  br i1 %cmp23, label %if.then24, label %if.end39

if.then24:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %j25) #7
  store i32 0, ptr %j25, align 4, !tbaa !10
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc36, %if.then24
  %22 = load i32, ptr %j25, align 4, !tbaa !10
  %23 = load i32, ptr %n.addr, align 4, !tbaa !10
  %cmp27 = icmp slt i32 %22, %23
  br i1 %cmp27, label %for.body29, label %for.cond.cleanup28

for.cond.cleanup28:                               ; preds = %for.cond26
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j25) #7
  br label %for.end38

for.body29:                                       ; preds = %for.cond26
  %24 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom30 = sext i32 %24 to i64
  %arrayidx31 = getelementptr inbounds [100 x i32], ptr %min, i64 0, i64 %idxprom30
  %25 = load i32, ptr %arrayidx31, align 4, !tbaa !10
  %26 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %27 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom32 = sext i32 %27 to i64
  %arrayidx33 = getelementptr inbounds [100 x i32], ptr %26, i64 %idxprom32
  %28 = load i32, ptr %j25, align 4, !tbaa !10
  %idxprom34 = sext i32 %28 to i64
  %arrayidx35 = getelementptr inbounds [100 x i32], ptr %arrayidx33, i64 0, i64 %idxprom34
  %29 = load i32, ptr %arrayidx35, align 4, !tbaa !10
  %sub = sub nsw i32 %29, %25
  store i32 %sub, ptr %arrayidx35, align 4, !tbaa !10
  br label %for.inc36

for.inc36:                                        ; preds = %for.body29
  %30 = load i32, ptr %j25, align 4, !tbaa !10
  %inc37 = add nsw i32 %30, 1
  store i32 %inc37, ptr %j25, align 4, !tbaa !10
  br label %for.cond26, !llvm.loop !15

for.end38:                                        ; preds = %for.cond.cleanup28
  br label %if.end39

if.end39:                                         ; preds = %for.end38, %for.end
  br label %for.inc40

for.inc40:                                        ; preds = %if.end39
  %31 = load i32, ptr %i, align 4, !tbaa !10
  %inc41 = add nsw i32 %31, 1
  store i32 %inc41, ptr %i, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !16

for.end42:                                        ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %j43) #7
  store i32 0, ptr %j43, align 4, !tbaa !10
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc96, %for.end42
  %32 = load i32, ptr %j43, align 4, !tbaa !10
  %33 = load i32, ptr %n.addr, align 4, !tbaa !10
  %cmp45 = icmp slt i32 %32, %33
  br i1 %cmp45, label %for.body47, label %for.cond.cleanup46

for.cond.cleanup46:                               ; preds = %for.cond44
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j43) #7
  br label %for.end98

for.body47:                                       ; preds = %for.cond44
  %34 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %arrayidx48 = getelementptr inbounds [100 x i32], ptr %34, i64 0
  %35 = load i32, ptr %j43, align 4, !tbaa !10
  %idxprom49 = sext i32 %35 to i64
  %arrayidx50 = getelementptr inbounds [100 x i32], ptr %arrayidx48, i64 0, i64 %idxprom49
  %36 = load i32, ptr %arrayidx50, align 4, !tbaa !10
  %37 = load i32, ptr %j43, align 4, !tbaa !10
  %idxprom51 = sext i32 %37 to i64
  %arrayidx52 = getelementptr inbounds [100 x i32], ptr %min, i64 0, i64 %idxprom51
  store i32 %36, ptr %arrayidx52, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i53) #7
  store i32 0, ptr %i53, align 4, !tbaa !10
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc73, %for.body47
  %38 = load i32, ptr %i53, align 4, !tbaa !10
  %39 = load i32, ptr %n.addr, align 4, !tbaa !10
  %cmp55 = icmp slt i32 %38, %39
  br i1 %cmp55, label %for.body57, label %for.cond.cleanup56

for.cond.cleanup56:                               ; preds = %for.cond54
  store i32 14, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i53) #7
  br label %for.end75

for.body57:                                       ; preds = %for.cond54
  %40 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %41 = load i32, ptr %i53, align 4, !tbaa !10
  %idxprom58 = sext i32 %41 to i64
  %arrayidx59 = getelementptr inbounds [100 x i32], ptr %40, i64 %idxprom58
  %42 = load i32, ptr %j43, align 4, !tbaa !10
  %idxprom60 = sext i32 %42 to i64
  %arrayidx61 = getelementptr inbounds [100 x i32], ptr %arrayidx59, i64 0, i64 %idxprom60
  %43 = load i32, ptr %arrayidx61, align 4, !tbaa !10
  %44 = load i32, ptr %j43, align 4, !tbaa !10
  %idxprom62 = sext i32 %44 to i64
  %arrayidx63 = getelementptr inbounds [100 x i32], ptr %min, i64 0, i64 %idxprom62
  %45 = load i32, ptr %arrayidx63, align 4, !tbaa !10
  %cmp64 = icmp slt i32 %43, %45
  br i1 %cmp64, label %if.then65, label %if.end72

if.then65:                                        ; preds = %for.body57
  %46 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %47 = load i32, ptr %i53, align 4, !tbaa !10
  %idxprom66 = sext i32 %47 to i64
  %arrayidx67 = getelementptr inbounds [100 x i32], ptr %46, i64 %idxprom66
  %48 = load i32, ptr %j43, align 4, !tbaa !10
  %idxprom68 = sext i32 %48 to i64
  %arrayidx69 = getelementptr inbounds [100 x i32], ptr %arrayidx67, i64 0, i64 %idxprom68
  %49 = load i32, ptr %arrayidx69, align 4, !tbaa !10
  %50 = load i32, ptr %j43, align 4, !tbaa !10
  %idxprom70 = sext i32 %50 to i64
  %arrayidx71 = getelementptr inbounds [100 x i32], ptr %min, i64 0, i64 %idxprom70
  store i32 %49, ptr %arrayidx71, align 4, !tbaa !10
  br label %if.end72

if.end72:                                         ; preds = %if.then65, %for.body57
  br label %for.inc73

for.inc73:                                        ; preds = %if.end72
  %51 = load i32, ptr %i53, align 4, !tbaa !10
  %inc74 = add nsw i32 %51, 1
  store i32 %inc74, ptr %i53, align 4, !tbaa !10
  br label %for.cond54, !llvm.loop !17

for.end75:                                        ; preds = %for.cond.cleanup56
  %52 = load i32, ptr %j43, align 4, !tbaa !10
  %idxprom76 = sext i32 %52 to i64
  %arrayidx77 = getelementptr inbounds [100 x i32], ptr %min, i64 0, i64 %idxprom76
  %53 = load i32, ptr %arrayidx77, align 4, !tbaa !10
  %cmp78 = icmp ne i32 %53, 0
  br i1 %cmp78, label %if.then79, label %if.end95

if.then79:                                        ; preds = %for.end75
  call void @llvm.lifetime.start.p0(i64 4, ptr %i80) #7
  store i32 0, ptr %i80, align 4, !tbaa !10
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc92, %if.then79
  %54 = load i32, ptr %i80, align 4, !tbaa !10
  %55 = load i32, ptr %n.addr, align 4, !tbaa !10
  %cmp82 = icmp slt i32 %54, %55
  br i1 %cmp82, label %for.body84, label %for.cond.cleanup83

for.cond.cleanup83:                               ; preds = %for.cond81
  store i32 17, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i80) #7
  br label %for.end94

for.body84:                                       ; preds = %for.cond81
  %56 = load i32, ptr %j43, align 4, !tbaa !10
  %idxprom85 = sext i32 %56 to i64
  %arrayidx86 = getelementptr inbounds [100 x i32], ptr %min, i64 0, i64 %idxprom85
  %57 = load i32, ptr %arrayidx86, align 4, !tbaa !10
  %58 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %59 = load i32, ptr %i80, align 4, !tbaa !10
  %idxprom87 = sext i32 %59 to i64
  %arrayidx88 = getelementptr inbounds [100 x i32], ptr %58, i64 %idxprom87
  %60 = load i32, ptr %j43, align 4, !tbaa !10
  %idxprom89 = sext i32 %60 to i64
  %arrayidx90 = getelementptr inbounds [100 x i32], ptr %arrayidx88, i64 0, i64 %idxprom89
  %61 = load i32, ptr %arrayidx90, align 4, !tbaa !10
  %sub91 = sub nsw i32 %61, %57
  store i32 %sub91, ptr %arrayidx90, align 4, !tbaa !10
  br label %for.inc92

for.inc92:                                        ; preds = %for.body84
  %62 = load i32, ptr %i80, align 4, !tbaa !10
  %inc93 = add nsw i32 %62, 1
  store i32 %inc93, ptr %i80, align 4, !tbaa !10
  br label %for.cond81, !llvm.loop !18

for.end94:                                        ; preds = %for.cond.cleanup83
  br label %if.end95

if.end95:                                         ; preds = %for.end94, %for.end75
  br label %for.inc96

for.inc96:                                        ; preds = %if.end95
  %63 = load i32, ptr %j43, align 4, !tbaa !10
  %inc97 = add nsw i32 %63, 1
  store i32 %inc97, ptr %j43, align 4, !tbaa !10
  br label %for.cond44, !llvm.loop !19

for.end98:                                        ; preds = %for.cond.cleanup46
  call void @llvm.lifetime.end.p0(i64 400, ptr %min) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z10subductionPA100_ii(ptr noundef %a, i32 noundef %n) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !5
  store i32 %n, ptr %n.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  store i32 1, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !10
  %1 = load i32, ptr %n.addr, align 4, !tbaa !10
  %sub = sub nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  br label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds [100 x i32], ptr %2, i64 0
  %3 = load i32, ptr %i, align 4, !tbaa !10
  %add = add nsw i32 %3, 1
  %idxprom = sext i32 %add to i64
  %arrayidx1 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx1, align 4, !tbaa !10
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds [100 x i32], ptr %5, i64 0
  %6 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [100 x i32], ptr %arrayidx2, i64 0, i64 %idxprom3
  store i32 %4, ptr %arrayidx4, align 4, !tbaa !10
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %8 = load i32, ptr %i, align 4, !tbaa !10
  %add5 = add nsw i32 %8, 1
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], ptr %7, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx7, i64 0, i64 0
  %9 = load i32, ptr %arrayidx8, align 4, !tbaa !10
  %10 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %11 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %10, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %arrayidx10, i64 0, i64 0
  store i32 %9, ptr %arrayidx11, align 4, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !tbaa !10
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %i12) #7
  store i32 1, ptr %i12, align 4, !tbaa !10
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc36, %for.end
  %13 = load i32, ptr %i12, align 4, !tbaa !10
  %14 = load i32, ptr %n.addr, align 4, !tbaa !10
  %sub14 = sub nsw i32 %14, 1
  %cmp15 = icmp slt i32 %13, %sub14
  br i1 %cmp15, label %for.body17, label %for.cond.cleanup16

for.cond.cleanup16:                               ; preds = %for.cond13
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i12) #7
  br label %for.end38

for.body17:                                       ; preds = %for.cond13
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  store i32 1, ptr %j, align 4, !tbaa !10
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc33, %for.body17
  %15 = load i32, ptr %j, align 4, !tbaa !10
  %16 = load i32, ptr %n.addr, align 4, !tbaa !10
  %sub19 = sub nsw i32 %16, 1
  %cmp20 = icmp slt i32 %15, %sub19
  br i1 %cmp20, label %for.body22, label %for.cond.cleanup21

for.cond.cleanup21:                               ; preds = %for.cond18
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  br label %for.end35

for.body22:                                       ; preds = %for.cond18
  %17 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %18 = load i32, ptr %i12, align 4, !tbaa !10
  %add23 = add nsw i32 %18, 1
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32], ptr %17, i64 %idxprom24
  %19 = load i32, ptr %j, align 4, !tbaa !10
  %add26 = add nsw i32 %19, 1
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds [100 x i32], ptr %arrayidx25, i64 0, i64 %idxprom27
  %20 = load i32, ptr %arrayidx28, align 4, !tbaa !10
  %21 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %22 = load i32, ptr %i12, align 4, !tbaa !10
  %idxprom29 = sext i32 %22 to i64
  %arrayidx30 = getelementptr inbounds [100 x i32], ptr %21, i64 %idxprom29
  %23 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom31 = sext i32 %23 to i64
  %arrayidx32 = getelementptr inbounds [100 x i32], ptr %arrayidx30, i64 0, i64 %idxprom31
  store i32 %20, ptr %arrayidx32, align 4, !tbaa !10
  br label %for.inc33

for.inc33:                                        ; preds = %for.body22
  %24 = load i32, ptr %j, align 4, !tbaa !10
  %inc34 = add nsw i32 %24, 1
  store i32 %inc34, ptr %j, align 4, !tbaa !10
  br label %for.cond18, !llvm.loop !21

for.end35:                                        ; preds = %for.cond.cleanup21
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %25 = load i32, ptr %i12, align 4, !tbaa !10
  %inc37 = add nsw i32 %25, 1
  store i32 %inc37, ptr %i12, align 4, !tbaa !10
  br label %for.cond13, !llvm.loop !22

for.end38:                                        ; preds = %for.cond.cleanup16
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %s = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %t = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #7
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #7
  store i32 0, ptr %t, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %0 = load i32, ptr %t, align 4, !tbaa !10
  %1 = load i32, ptr %n, align 4, !tbaa !10
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #7
  br label %for.end23

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %s, align 4, !tbaa !10
  %2 = load i32, ptr %n, align 4, !tbaa !10
  store i32 %2, ptr %m, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !10
  %4 = load i32, ptr %n, align 4, !tbaa !10
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  br label %for.end14

for.body4:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %5 = load i32, ptr %j, align 4, !tbaa !10
  %6 = load i32, ptr %n, align 4, !tbaa !10
  %cmp6 = icmp slt i32 %5, %6
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  br label %for.end

for.body8:                                        ; preds = %for.cond5
  %7 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %8 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom9
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %9 = load i32, ptr %j, align 4, !tbaa !10
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %j, align 4, !tbaa !10
  br label %for.cond5, !llvm.loop !23

for.end:                                          ; preds = %for.cond.cleanup7
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %10 = load i32, ptr %i, align 4, !tbaa !10
  %inc13 = add nsw i32 %10, 1
  store i32 %inc13, ptr %i, align 4, !tbaa !10
  br label %for.cond1, !llvm.loop !24

for.end14:                                        ; preds = %for.cond.cleanup3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end14
  %11 = load i32, ptr %m, align 4, !tbaa !10
  %cmp15 = icmp ne i32 %11, 1
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %12 = load i32, ptr %m, align 4, !tbaa !10
  call void @_Z4zeroPA100_ii(ptr noundef %arraydecay, i32 noundef %12)
  %arrayidx16 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 1
  %arrayidx17 = getelementptr inbounds [100 x i32], ptr %arrayidx16, i64 0, i64 1
  %13 = load i32, ptr %arrayidx17, align 4, !tbaa !10
  %14 = load i32, ptr %s, align 4, !tbaa !10
  %add = add nsw i32 %14, %13
  store i32 %add, ptr %s, align 4, !tbaa !10
  %arraydecay18 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %15 = load i32, ptr %m, align 4, !tbaa !10
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %m, align 4, !tbaa !10
  call void @_Z10subductionPA100_ii(ptr noundef %arraydecay18, i32 noundef %15)
  br label %while.cond, !llvm.loop !25

while.end:                                        ; preds = %while.cond
  %16 = load i32, ptr %s, align 4, !tbaa !10
  %call19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %16)
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call19, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc21

for.inc21:                                        ; preds = %while.end
  %17 = load i32, ptr %t, align 4, !tbaa !10
  %inc22 = add nsw i32 %17, 1
  store i32 %inc22, ptr %t, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !26

for.end23:                                        ; preds = %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #7
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !27
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !29
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !29
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !27
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !27, !nonnull !30, !align !31
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !27, !nonnull !30, !align !31
  %vtable = load ptr, ptr %1, align 8, !tbaa !32
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
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !27
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !27, !nonnull !30, !align !31
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !34
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !36
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !37
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !36
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #5 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !53
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !53
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !53
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #4 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !53
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !36
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !54
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !36
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !36
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !36
  %vtable = load ptr, ptr %this1, align 8, !tbaa !32
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

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTSSo", !7, i64 0}
!29 = !{!7, !7, i64 0}
!30 = !{}
!31 = !{i64 8}
!32 = !{!33, !33, i64 0}
!33 = !{!"vtable pointer", !9, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !7, i64 0}
!36 = !{!8, !8, i64 0}
!37 = !{!38, !50, i64 240}
!38 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !39, i64 0, !28, i64 216, !8, i64 224, !48, i64 225, !49, i64 232, !50, i64 240, !51, i64 248, !52, i64 256}
!39 = !{!"_ZTSSt8ios_base", !40, i64 8, !40, i64 16, !41, i64 24, !42, i64 28, !42, i64 32, !43, i64 40, !44, i64 48, !8, i64 64, !11, i64 192, !45, i64 200, !46, i64 208}
!40 = !{!"long", !8, i64 0}
!41 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!42 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!43 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !7, i64 0}
!44 = !{!"_ZTSNSt8ios_base6_WordsE", !7, i64 0, !40, i64 8}
!45 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !7, i64 0}
!46 = !{!"_ZTSSt6locale", !47, i64 0}
!47 = !{!"p1 _ZTSNSt6locale5_ImplE", !7, i64 0}
!48 = !{!"bool", !8, i64 0}
!49 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !7, i64 0}
!50 = !{!"p1 _ZTSSt5ctypeIcE", !7, i64 0}
!51 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !7, i64 0}
!52 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !7, i64 0}
!53 = !{!50, !50, i64 0}
!54 = !{!55, !8, i64 56}
!55 = !{!"_ZTSSt5ctypeIcE", !56, i64 0, !57, i64 16, !48, i64 24, !6, i64 32, !6, i64 40, !58, i64 48, !8, i64 56, !8, i64 57, !8, i64 313, !8, i64 569}
!56 = !{!"_ZTSNSt6locale5facetE", !11, i64 8}
!57 = !{!"p1 _ZTS15__locale_struct", !7, i64 0}
!58 = !{!"p1 short", !7, i64 0}
