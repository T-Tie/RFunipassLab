; ModuleID = '/tmp/tmpngm99t_q.cpp'
source_filename = "/tmp/tmpngm99t_q.cpp"
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
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %num = alloca [200 x [200 x i32]], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.start.p0(i64 160000, ptr %num) #7
  call void @llvm.memset.p0.i64(ptr align 16 %num, i8 0, i64 160000, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %sub2 = sub nsw i32 %3, 1
  %cmp3 = icmp sle i32 %2, %sub2
  br i1 %cmp3, label %for.body4, label %for.end14

for.body4:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %sub6 = sub nsw i32 %5, 1
  %cmp7 = icmp sle i32 %4, %sub6
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond5
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [200 x [200 x i32]], ptr %num, i64 0, i64 %idxprom
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [200 x i32], ptr %arrayidx, i64 0, i64 %idxprom9
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !9

for.end:                                          ; preds = %for.cond5
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %inc13 = add nsw i32 %9, 1
  store i32 %inc13, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end14:                                        ; preds = %for.cond1
  %arraydecay = getelementptr inbounds [200 x [200 x i32]], ptr %num, i64 0, i64 0
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %call15 = call noundef i32 @_Z3delPA200_ii(ptr noundef %arraydecay, i32 noundef %10)
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call15)
  %call17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call16, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc18

for.inc18:                                        ; preds = %for.end14
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %inc19 = add nsw i32 %11, 1
  store i32 %inc19, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end20:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 160000, ptr %num) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #3

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z3delPA200_ii(ptr noundef %num, i32 noundef %n) #4 {
entry:
  %retval = alloca i32, align 4
  %num.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %min = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %num, ptr %num.addr, align 8, !tbaa !14
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #7
  store i32 0, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #7
  store i32 1000, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %0 = load i32, ptr %j, align 4, !tbaa !5
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end33

for.body:                                         ; preds = %for.cond
  store i32 1000, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub2 = sub nsw i32 %3, 1
  %cmp3 = icmp sle i32 %2, %sub2
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %num.addr, align 8, !tbaa !14
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [200 x i32], ptr %4, i64 %idxprom
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [200 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %7 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %8 = load i32, ptr %min, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %7, %8
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %9 = load ptr, ptr %num.addr, align 8, !tbaa !14
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [200 x i32], ptr %9, i64 %idxprom8
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [200 x i32], ptr %arrayidx9, i64 0, i64 %idxprom10
  %12 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  store i32 %12, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !17

for.end:                                          ; preds = %for.cond1
  %14 = load i32, ptr %min, align 4, !tbaa !5
  %cmp12 = icmp ne i32 %14, 0
  br i1 %cmp12, label %if.then13, label %if.end30

if.then13:                                        ; preds = %for.end
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc27, %if.then13
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %16 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %16, 1
  %cmp16 = icmp sle i32 %15, %sub15
  br i1 %cmp16, label %for.body17, label %for.end29

for.body17:                                       ; preds = %for.cond14
  %17 = load ptr, ptr %num.addr, align 8, !tbaa !14
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom18 = sext i32 %18 to i64
  %arrayidx19 = getelementptr inbounds [200 x i32], ptr %17, i64 %idxprom18
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [200 x i32], ptr %arrayidx19, i64 0, i64 %idxprom20
  %20 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %21 = load i32, ptr %min, align 4, !tbaa !5
  %sub22 = sub nsw i32 %20, %21
  %22 = load ptr, ptr %num.addr, align 8, !tbaa !14
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom23 = sext i32 %23 to i64
  %arrayidx24 = getelementptr inbounds [200 x i32], ptr %22, i64 %idxprom23
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %24 to i64
  %arrayidx26 = getelementptr inbounds [200 x i32], ptr %arrayidx24, i64 0, i64 %idxprom25
  store i32 %sub22, ptr %arrayidx26, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.body17
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %inc28 = add nsw i32 %25, 1
  store i32 %inc28, ptr %i, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !18

for.end29:                                        ; preds = %for.cond14
  br label %if.end30

if.end30:                                         ; preds = %for.end29, %for.end
  br label %for.inc31

for.inc31:                                        ; preds = %if.end30
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %inc32 = add nsw i32 %26, 1
  store i32 %inc32, ptr %j, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !19

for.end33:                                        ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc78, %for.end33
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %28 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub35 = sub nsw i32 %28, 1
  %cmp36 = icmp sle i32 %27, %sub35
  br i1 %cmp36, label %for.body37, label %for.end80

for.body37:                                       ; preds = %for.cond34
  store i32 1000, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc56, %for.body37
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %30 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub39 = sub nsw i32 %30, 1
  %cmp40 = icmp sle i32 %29, %sub39
  br i1 %cmp40, label %for.body41, label %for.end58

for.body41:                                       ; preds = %for.cond38
  %31 = load ptr, ptr %num.addr, align 8, !tbaa !14
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %32 to i64
  %arrayidx43 = getelementptr inbounds [200 x i32], ptr %31, i64 %idxprom42
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom44 = sext i32 %33 to i64
  %arrayidx45 = getelementptr inbounds [200 x i32], ptr %arrayidx43, i64 0, i64 %idxprom44
  %34 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %35 = load i32, ptr %min, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %34, %35
  br i1 %cmp46, label %if.then47, label %if.end55

if.then47:                                        ; preds = %for.body41
  %36 = load ptr, ptr %num.addr, align 8, !tbaa !14
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %37 to i64
  %arrayidx49 = getelementptr inbounds [200 x i32], ptr %36, i64 %idxprom48
  %38 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom50 = sext i32 %38 to i64
  %arrayidx51 = getelementptr inbounds [200 x i32], ptr %arrayidx49, i64 0, i64 %idxprom50
  %39 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  store i32 %39, ptr %min, align 4, !tbaa !5
  %40 = load i32, ptr %min, align 4, !tbaa !5
  %cmp52 = icmp eq i32 %40, 0
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.then47
  br label %for.end58

if.end54:                                         ; preds = %if.then47
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %for.body41
  br label %for.inc56

for.inc56:                                        ; preds = %if.end55
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %inc57 = add nsw i32 %41, 1
  store i32 %inc57, ptr %i, align 4, !tbaa !5
  br label %for.cond38, !llvm.loop !20

for.end58:                                        ; preds = %if.then53, %for.cond38
  %42 = load i32, ptr %min, align 4, !tbaa !5
  %cmp59 = icmp ne i32 %42, 0
  br i1 %cmp59, label %if.then60, label %if.end77

if.then60:                                        ; preds = %for.end58
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc74, %if.then60
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %44 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub62 = sub nsw i32 %44, 1
  %cmp63 = icmp sle i32 %43, %sub62
  br i1 %cmp63, label %for.body64, label %for.end76

for.body64:                                       ; preds = %for.cond61
  %45 = load ptr, ptr %num.addr, align 8, !tbaa !14
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom65 = sext i32 %46 to i64
  %arrayidx66 = getelementptr inbounds [200 x i32], ptr %45, i64 %idxprom65
  %47 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom67 = sext i32 %47 to i64
  %arrayidx68 = getelementptr inbounds [200 x i32], ptr %arrayidx66, i64 0, i64 %idxprom67
  %48 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %49 = load i32, ptr %min, align 4, !tbaa !5
  %sub69 = sub nsw i32 %48, %49
  %50 = load ptr, ptr %num.addr, align 8, !tbaa !14
  %51 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom70 = sext i32 %51 to i64
  %arrayidx71 = getelementptr inbounds [200 x i32], ptr %50, i64 %idxprom70
  %52 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom72 = sext i32 %52 to i64
  %arrayidx73 = getelementptr inbounds [200 x i32], ptr %arrayidx71, i64 0, i64 %idxprom72
  store i32 %sub69, ptr %arrayidx73, align 4, !tbaa !5
  br label %for.inc74

for.inc74:                                        ; preds = %for.body64
  %53 = load i32, ptr %i, align 4, !tbaa !5
  %inc75 = add nsw i32 %53, 1
  store i32 %inc75, ptr %i, align 4, !tbaa !5
  br label %for.cond61, !llvm.loop !21

for.end76:                                        ; preds = %for.cond61
  br label %if.end77

if.end77:                                         ; preds = %for.end76, %for.end58
  br label %for.inc78

for.inc78:                                        ; preds = %if.end77
  %54 = load i32, ptr %j, align 4, !tbaa !5
  %inc79 = add nsw i32 %54, 1
  store i32 %inc79, ptr %j, align 4, !tbaa !5
  br label %for.cond34, !llvm.loop !22

for.end80:                                        ; preds = %for.cond34
  %55 = load i32, ptr %sum, align 4, !tbaa !5
  %56 = load ptr, ptr %num.addr, align 8, !tbaa !14
  %arrayidx81 = getelementptr inbounds [200 x i32], ptr %56, i64 1
  %arrayidx82 = getelementptr inbounds [200 x i32], ptr %arrayidx81, i64 0, i64 1
  %57 = load i32, ptr %arrayidx82, align 4, !tbaa !5
  %add = add nsw i32 %55, %57
  store i32 %add, ptr %sum, align 4, !tbaa !5
  %58 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp83 = icmp eq i32 %58, 2
  br i1 %cmp83, label %if.then84, label %if.else

if.then84:                                        ; preds = %for.end80
  %59 = load i32, ptr %sum, align 4, !tbaa !5
  store i32 %59, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %for.end80
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc102, %if.else
  %60 = load i32, ptr %i, align 4, !tbaa !5
  %61 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp86 = icmp sle i32 %60, %61
  br i1 %cmp86, label %for.body87, label %for.end104

for.body87:                                       ; preds = %for.cond85
  %62 = load ptr, ptr %num.addr, align 8, !tbaa !14
  %arrayidx88 = getelementptr inbounds [200 x i32], ptr %62, i64 0
  %63 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom89 = sext i32 %63 to i64
  %arrayidx90 = getelementptr inbounds [200 x i32], ptr %arrayidx88, i64 0, i64 %idxprom89
  %64 = load i32, ptr %arrayidx90, align 4, !tbaa !5
  %65 = load ptr, ptr %num.addr, align 8, !tbaa !14
  %arrayidx91 = getelementptr inbounds [200 x i32], ptr %65, i64 0
  %66 = load i32, ptr %i, align 4, !tbaa !5
  %sub92 = sub nsw i32 %66, 1
  %idxprom93 = sext i32 %sub92 to i64
  %arrayidx94 = getelementptr inbounds [200 x i32], ptr %arrayidx91, i64 0, i64 %idxprom93
  store i32 %64, ptr %arrayidx94, align 4, !tbaa !5
  %67 = load ptr, ptr %num.addr, align 8, !tbaa !14
  %68 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom95 = sext i32 %68 to i64
  %arrayidx96 = getelementptr inbounds [200 x i32], ptr %67, i64 %idxprom95
  %arrayidx97 = getelementptr inbounds [200 x i32], ptr %arrayidx96, i64 0, i64 0
  %69 = load i32, ptr %arrayidx97, align 4, !tbaa !5
  %70 = load ptr, ptr %num.addr, align 8, !tbaa !14
  %71 = load i32, ptr %i, align 4, !tbaa !5
  %sub98 = sub nsw i32 %71, 1
  %idxprom99 = sext i32 %sub98 to i64
  %arrayidx100 = getelementptr inbounds [200 x i32], ptr %70, i64 %idxprom99
  %arrayidx101 = getelementptr inbounds [200 x i32], ptr %arrayidx100, i64 0, i64 0
  store i32 %69, ptr %arrayidx101, align 4, !tbaa !5
  br label %for.inc102

for.inc102:                                       ; preds = %for.body87
  %72 = load i32, ptr %i, align 4, !tbaa !5
  %inc103 = add nsw i32 %72, 1
  store i32 %inc103, ptr %i, align 4, !tbaa !5
  br label %for.cond85, !llvm.loop !23

for.end104:                                       ; preds = %for.cond85
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %for.cond105

for.cond105:                                      ; preds = %for.inc126, %for.end104
  %73 = load i32, ptr %i, align 4, !tbaa !5
  %74 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub106 = sub nsw i32 %74, 1
  %cmp107 = icmp sle i32 %73, %sub106
  br i1 %cmp107, label %for.body108, label %for.end128

for.body108:                                      ; preds = %for.cond105
  store i32 2, ptr %j, align 4, !tbaa !5
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc123, %for.body108
  %75 = load i32, ptr %j, align 4, !tbaa !5
  %76 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub110 = sub nsw i32 %76, 1
  %cmp111 = icmp sle i32 %75, %sub110
  br i1 %cmp111, label %for.body112, label %for.end125

for.body112:                                      ; preds = %for.cond109
  %77 = load ptr, ptr %num.addr, align 8, !tbaa !14
  %78 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom113 = sext i32 %78 to i64
  %arrayidx114 = getelementptr inbounds [200 x i32], ptr %77, i64 %idxprom113
  %79 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom115 = sext i32 %79 to i64
  %arrayidx116 = getelementptr inbounds [200 x i32], ptr %arrayidx114, i64 0, i64 %idxprom115
  %80 = load i32, ptr %arrayidx116, align 4, !tbaa !5
  %81 = load ptr, ptr %num.addr, align 8, !tbaa !14
  %82 = load i32, ptr %i, align 4, !tbaa !5
  %sub117 = sub nsw i32 %82, 1
  %idxprom118 = sext i32 %sub117 to i64
  %arrayidx119 = getelementptr inbounds [200 x i32], ptr %81, i64 %idxprom118
  %83 = load i32, ptr %j, align 4, !tbaa !5
  %sub120 = sub nsw i32 %83, 1
  %idxprom121 = sext i32 %sub120 to i64
  %arrayidx122 = getelementptr inbounds [200 x i32], ptr %arrayidx119, i64 0, i64 %idxprom121
  store i32 %80, ptr %arrayidx122, align 4, !tbaa !5
  br label %for.inc123

for.inc123:                                       ; preds = %for.body112
  %84 = load i32, ptr %j, align 4, !tbaa !5
  %inc124 = add nsw i32 %84, 1
  store i32 %inc124, ptr %j, align 4, !tbaa !5
  br label %for.cond109, !llvm.loop !24

for.end125:                                       ; preds = %for.cond109
  br label %for.inc126

for.inc126:                                       ; preds = %for.end125
  %85 = load i32, ptr %i, align 4, !tbaa !5
  %inc127 = add nsw i32 %85, 1
  store i32 %inc127, ptr %i, align 4, !tbaa !5
  br label %for.cond105, !llvm.loop !25

for.end128:                                       ; preds = %for.cond105
  %86 = load i32, ptr %sum, align 4, !tbaa !5
  %87 = load ptr, ptr %num.addr, align 8, !tbaa !14
  %88 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub129 = sub nsw i32 %88, 1
  %call = call noundef i32 @_Z3delPA200_ii(ptr noundef %87, i32 noundef %sub129)
  %add130 = add nsw i32 %86, %call
  store i32 %add130, ptr %sum, align 4, !tbaa !5
  %89 = load i32, ptr %sum, align 4, !tbaa !5
  store i32 %89, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end128, %if.then84
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #7
  %90 = load i32, ptr %retval, align 4
  ret i32 %90
}

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !26
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !28
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !28
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !26
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !26, !nonnull !29, !align !30
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !26, !nonnull !29, !align !30
  %vtable = load ptr, ptr %1, align 8, !tbaa !31
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
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !26
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !26, !nonnull !29, !align !30
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !33
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !35
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !36
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !35
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #5 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !52
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !52
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !52
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #4 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !52
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !35
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !53
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !35
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !35
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !35
  %vtable = load ptr, ptr %this1, align 8, !tbaa !31
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 int", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 _ZTSSo", !16, i64 0}
!28 = !{!16, !16, i64 0}
!29 = !{}
!30 = !{i64 8}
!31 = !{!32, !32, i64 0}
!32 = !{!"vtable pointer", !8, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !16, i64 0}
!35 = !{!7, !7, i64 0}
!36 = !{!37, !49, i64 240}
!37 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !38, i64 0, !27, i64 216, !7, i64 224, !47, i64 225, !48, i64 232, !49, i64 240, !50, i64 248, !51, i64 256}
!38 = !{!"_ZTSSt8ios_base", !39, i64 8, !39, i64 16, !40, i64 24, !41, i64 28, !41, i64 32, !42, i64 40, !43, i64 48, !7, i64 64, !6, i64 192, !44, i64 200, !45, i64 208}
!39 = !{!"long", !7, i64 0}
!40 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!41 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!42 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!43 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !39, i64 8}
!44 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!45 = !{!"_ZTSSt6locale", !46, i64 0}
!46 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!47 = !{!"bool", !7, i64 0}
!48 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!49 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!50 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!51 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!52 = !{!49, !49, i64 0}
!53 = !{!54, !7, i64 56}
!54 = !{!"_ZTSSt5ctypeIcE", !55, i64 0, !56, i64 16, !47, i64 24, !15, i64 32, !15, i64 40, !57, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!55 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!56 = !{!"p1 _ZTS15__locale_struct", !16, i64 0}
!57 = !{!"p1 short", !16, i64 0}
