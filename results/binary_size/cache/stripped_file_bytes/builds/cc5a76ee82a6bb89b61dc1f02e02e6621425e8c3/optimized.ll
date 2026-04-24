; ModuleID = '/tmp/tmph87e372d.cpp'
source_filename = "/tmp/tmph87e372d.cpp"
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

@a = dso_local global [100 x [100 x [100 x i32]]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z3SumiPA100_i(i32 noundef %n, ptr noundef %t) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %t.addr = alloca ptr, align 8
  %sum = alloca i32, align 4
  %min = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tempi = alloca i32, align 4
  %tempj = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %t, ptr %t.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #7
  store i32 0, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #7
  store i32 0, ptr %min, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %tempi) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %tempj) #7
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %t.addr, align 8, !tbaa !9
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %2, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 0
  %4 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  store i32 %4, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %6 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %7 = load ptr, ptr %t.addr, align 8, !tbaa !9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %7, i64 %idxprom5
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx6, i64 0, i64 %idxprom7
  %10 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %11 = load i32, ptr %min, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %10, %11
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %12 = load ptr, ptr %t.addr, align 8, !tbaa !9
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %12, i64 %idxprom10
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [100 x i32], ptr %arrayidx11, i64 0, i64 %idxprom12
  %15 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  store i32 %15, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.end:                                          ; preds = %for.cond2
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc21, %for.end
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %18 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %17, %18
  br i1 %cmp15, label %for.body16, label %for.end23

for.body16:                                       ; preds = %for.cond14
  %19 = load i32, ptr %min, align 4, !tbaa !5
  %20 = load ptr, ptr %t.addr, align 8, !tbaa !9
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %21 to i64
  %arrayidx18 = getelementptr inbounds [100 x i32], ptr %20, i64 %idxprom17
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds [100 x i32], ptr %arrayidx18, i64 0, i64 %idxprom19
  %23 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %sub = sub nsw i32 %23, %19
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  br label %for.inc21

for.inc21:                                        ; preds = %for.body16
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %inc22 = add nsw i32 %24, 1
  store i32 %inc22, ptr %j, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !15

for.end23:                                        ; preds = %for.cond14
  br label %for.inc24

for.inc24:                                        ; preds = %for.end23
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %inc25 = add nsw i32 %25, 1
  store i32 %inc25, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !16

for.end26:                                        ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc61, %for.end26
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %27 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %26, %27
  br i1 %cmp28, label %for.body29, label %for.end63

for.body29:                                       ; preds = %for.cond27
  %28 = load ptr, ptr %t.addr, align 8, !tbaa !9
  %arrayidx30 = getelementptr inbounds [100 x i32], ptr %28, i64 0
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom31 = sext i32 %29 to i64
  %arrayidx32 = getelementptr inbounds [100 x i32], ptr %arrayidx30, i64 0, i64 %idxprom31
  %30 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  store i32 %30, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc47, %for.body29
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %32 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %31, %32
  br i1 %cmp34, label %for.body35, label %for.end49

for.body35:                                       ; preds = %for.cond33
  %33 = load ptr, ptr %t.addr, align 8, !tbaa !9
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %34 to i64
  %arrayidx37 = getelementptr inbounds [100 x i32], ptr %33, i64 %idxprom36
  %35 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom38 = sext i32 %35 to i64
  %arrayidx39 = getelementptr inbounds [100 x i32], ptr %arrayidx37, i64 0, i64 %idxprom38
  %36 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %37 = load i32, ptr %min, align 4, !tbaa !5
  %cmp40 = icmp slt i32 %36, %37
  br i1 %cmp40, label %if.then41, label %if.end46

if.then41:                                        ; preds = %for.body35
  %38 = load ptr, ptr %t.addr, align 8, !tbaa !9
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %39 to i64
  %arrayidx43 = getelementptr inbounds [100 x i32], ptr %38, i64 %idxprom42
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom44 = sext i32 %40 to i64
  %arrayidx45 = getelementptr inbounds [100 x i32], ptr %arrayidx43, i64 0, i64 %idxprom44
  %41 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  store i32 %41, ptr %min, align 4, !tbaa !5
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %for.body35
  br label %for.inc47

for.inc47:                                        ; preds = %if.end46
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %inc48 = add nsw i32 %42, 1
  store i32 %inc48, ptr %i, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !17

for.end49:                                        ; preds = %for.cond33
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc58, %for.end49
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %44 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %43, %44
  br i1 %cmp51, label %for.body52, label %for.end60

for.body52:                                       ; preds = %for.cond50
  %45 = load i32, ptr %min, align 4, !tbaa !5
  %46 = load ptr, ptr %t.addr, align 8, !tbaa !9
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %47 to i64
  %arrayidx54 = getelementptr inbounds [100 x i32], ptr %46, i64 %idxprom53
  %48 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom55 = sext i32 %48 to i64
  %arrayidx56 = getelementptr inbounds [100 x i32], ptr %arrayidx54, i64 0, i64 %idxprom55
  %49 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %sub57 = sub nsw i32 %49, %45
  store i32 %sub57, ptr %arrayidx56, align 4, !tbaa !5
  br label %for.inc58

for.inc58:                                        ; preds = %for.body52
  %50 = load i32, ptr %i, align 4, !tbaa !5
  %inc59 = add nsw i32 %50, 1
  store i32 %inc59, ptr %i, align 4, !tbaa !5
  br label %for.cond50, !llvm.loop !18

for.end60:                                        ; preds = %for.cond50
  br label %for.inc61

for.inc61:                                        ; preds = %for.end60
  %51 = load i32, ptr %j, align 4, !tbaa !5
  %inc62 = add nsw i32 %51, 1
  store i32 %inc62, ptr %j, align 4, !tbaa !5
  br label %for.cond27, !llvm.loop !19

for.end63:                                        ; preds = %for.cond27
  %52 = load ptr, ptr %t.addr, align 8, !tbaa !9
  %arrayidx64 = getelementptr inbounds [100 x i32], ptr %52, i64 1
  %arrayidx65 = getelementptr inbounds [100 x i32], ptr %arrayidx64, i64 0, i64 1
  %53 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  store i32 %53, ptr %sum, align 4, !tbaa !5
  %54 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp66 = icmp eq i32 %54, 2
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %for.end63
  %55 = load i32, ptr %sum, align 4, !tbaa !5
  store i32 %55, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end68:                                         ; preds = %for.end63
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc96, %if.end68
  %56 = load i32, ptr %i, align 4, !tbaa !5
  %57 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub70 = sub nsw i32 %57, 1
  %cmp71 = icmp slt i32 %56, %sub70
  br i1 %cmp71, label %for.body72, label %for.end98

for.body72:                                       ; preds = %for.cond69
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc93, %for.body72
  %58 = load i32, ptr %j, align 4, !tbaa !5
  %59 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub74 = sub nsw i32 %59, 1
  %cmp75 = icmp slt i32 %58, %sub74
  br i1 %cmp75, label %for.body76, label %for.end95

for.body76:                                       ; preds = %for.cond73
  %60 = load i32, ptr %j, align 4, !tbaa !5
  %cmp77 = icmp eq i32 %60, 0
  br i1 %cmp77, label %if.then78, label %if.else

if.then78:                                        ; preds = %for.body76
  %61 = load i32, ptr %j, align 4, !tbaa !5
  store i32 %61, ptr %tempj, align 4, !tbaa !5
  br label %if.end79

if.else:                                          ; preds = %for.body76
  %62 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %62, 1
  store i32 %add, ptr %tempj, align 4, !tbaa !5
  br label %if.end79

if.end79:                                         ; preds = %if.else, %if.then78
  %63 = load i32, ptr %i, align 4, !tbaa !5
  %cmp80 = icmp eq i32 %63, 0
  br i1 %cmp80, label %if.then81, label %if.else82

if.then81:                                        ; preds = %if.end79
  %64 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %64, ptr %tempi, align 4, !tbaa !5
  br label %if.end84

if.else82:                                        ; preds = %if.end79
  %65 = load i32, ptr %i, align 4, !tbaa !5
  %add83 = add nsw i32 %65, 1
  store i32 %add83, ptr %tempi, align 4, !tbaa !5
  br label %if.end84

if.end84:                                         ; preds = %if.else82, %if.then81
  %66 = load ptr, ptr %t.addr, align 8, !tbaa !9
  %67 = load i32, ptr %tempi, align 4, !tbaa !5
  %idxprom85 = sext i32 %67 to i64
  %arrayidx86 = getelementptr inbounds [100 x i32], ptr %66, i64 %idxprom85
  %68 = load i32, ptr %tempj, align 4, !tbaa !5
  %idxprom87 = sext i32 %68 to i64
  %arrayidx88 = getelementptr inbounds [100 x i32], ptr %arrayidx86, i64 0, i64 %idxprom87
  %69 = load i32, ptr %arrayidx88, align 4, !tbaa !5
  %70 = load ptr, ptr %t.addr, align 8, !tbaa !9
  %71 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom89 = sext i32 %71 to i64
  %arrayidx90 = getelementptr inbounds [100 x i32], ptr %70, i64 %idxprom89
  %72 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom91 = sext i32 %72 to i64
  %arrayidx92 = getelementptr inbounds [100 x i32], ptr %arrayidx90, i64 0, i64 %idxprom91
  store i32 %69, ptr %arrayidx92, align 4, !tbaa !5
  br label %for.inc93

for.inc93:                                        ; preds = %if.end84
  %73 = load i32, ptr %j, align 4, !tbaa !5
  %inc94 = add nsw i32 %73, 1
  store i32 %inc94, ptr %j, align 4, !tbaa !5
  br label %for.cond73, !llvm.loop !20

for.end95:                                        ; preds = %for.cond73
  br label %for.inc96

for.inc96:                                        ; preds = %for.end95
  %74 = load i32, ptr %i, align 4, !tbaa !5
  %inc97 = add nsw i32 %74, 1
  store i32 %inc97, ptr %i, align 4, !tbaa !5
  br label %for.cond69, !llvm.loop !21

for.end98:                                        ; preds = %for.cond69
  %75 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub99 = sub nsw i32 %75, 1
  %76 = load ptr, ptr %t.addr, align 8, !tbaa !9
  %call = call noundef i32 @_Z3SumiPA100_i(i32 noundef %sub99, ptr noundef %76)
  %77 = load i32, ptr %sum, align 4, !tbaa !5
  %add100 = add nsw i32 %77, %call
  store i32 %add100, ptr %sum, align 4, !tbaa !5
  store i32 %add100, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end98, %if.then67
  call void @llvm.lifetime.end.p0(i64 4, ptr %tempj) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %tempi) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #7
  %78 = load i32, ptr %retval, align 4
  ret i32 %78
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #7
  store i32 0, ptr %sum, align 4, !tbaa !5
  call void @llvm.memset.p0.i64(ptr align 16 @a, i8 0, i64 4000000, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  br label %for.end24

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  br label %for.end16

for.body4:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %4, %5
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  br label %for.end

for.body8:                                        ; preds = %for.cond5
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x [100 x i32]]], ptr @a, i64 0, i64 %idxprom
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [100 x [100 x i32]], ptr %arrayidx, i64 0, i64 %idxprom9
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [100 x i32], ptr %arrayidx10, i64 0, i64 %idxprom11
  %call13 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx12)
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %9 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !22

for.end:                                          ; preds = %for.cond.cleanup7
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %inc15 = add nsw i32 %10, 1
  store i32 %inc15, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !23

for.end16:                                        ; preds = %for.cond.cleanup3
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds [100 x [100 x [100 x i32]]], ptr @a, i64 0, i64 %idxprom17
  %arraydecay = getelementptr inbounds [100 x [100 x i32]], ptr %arrayidx18, i64 0, i64 0
  %call19 = call noundef i32 @_Z3SumiPA100_i(i32 noundef %11, ptr noundef %arraydecay)
  store i32 %call19, ptr %sum, align 4, !tbaa !5
  %13 = load i32, ptr %sum, align 4, !tbaa !5
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %13)
  %call21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call20, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc22

for.inc22:                                        ; preds = %for.end16
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %inc23 = add nsw i32 %14, 1
  store i32 %inc23, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !24

for.end24:                                        ; preds = %for.cond.cleanup
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #4

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !25
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !27
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !27
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !25
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !25, !nonnull !28, !align !29
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !25, !nonnull !28, !align !29
  %vtable = load ptr, ptr %1, align 8, !tbaa !30
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
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !25
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !25, !nonnull !28, !align !29
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #4

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #0 align 2 {
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

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #5 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !51
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !51
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !51
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #0 comdat align 2 {
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
declare void @_ZSt16__throw_bad_castv() #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTSSo", !11, i64 0}
!27 = !{!11, !11, i64 0}
!28 = !{}
!29 = !{i64 8}
!30 = !{!31, !31, i64 0}
!31 = !{!"vtable pointer", !8, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !11, i64 0}
!34 = !{!7, !7, i64 0}
!35 = !{!36, !48, i64 240}
!36 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !37, i64 0, !26, i64 216, !7, i64 224, !46, i64 225, !47, i64 232, !48, i64 240, !49, i64 248, !50, i64 256}
!37 = !{!"_ZTSSt8ios_base", !38, i64 8, !38, i64 16, !39, i64 24, !40, i64 28, !40, i64 32, !41, i64 40, !42, i64 48, !7, i64 64, !6, i64 192, !43, i64 200, !44, i64 208}
!38 = !{!"long", !7, i64 0}
!39 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!40 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!41 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!42 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !38, i64 8}
!43 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!44 = !{!"_ZTSSt6locale", !45, i64 0}
!45 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!46 = !{!"bool", !7, i64 0}
!47 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!48 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!49 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!50 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!51 = !{!48, !48, i64 0}
!52 = !{!53, !7, i64 56}
!53 = !{!"_ZTSSt5ctypeIcE", !54, i64 0, !55, i64 16, !46, i64 24, !10, i64 32, !10, i64 40, !56, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!54 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!55 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!56 = !{!"p1 short", !11, i64 0}
