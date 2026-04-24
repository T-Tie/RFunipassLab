; ModuleID = '/tmp/tmpiu21qn6z.cpp'
source_filename = "/tmp/tmpiu21qn6z.cpp"
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

@n = dso_local global i32 0, align 4
@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z4hangi(i32 noundef %m) #0 {
entry:
  %m.addr = alloca i32, align 4
  %min = alloca i32, align 4
  %i = alloca i32, align 4
  %i8 = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #7
  store i32 10000, ptr %min, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  br label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %m.addr, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom1
  %4 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %5 = load i32, ptr %min, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, ptr %m.addr, align 4, !tbaa !5
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom4
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], ptr %arrayidx5, i64 0, i64 %idxprom6
  %8 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  store i32 %8, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %i8) #7
  store i32 0, ptr %i8, align 4, !tbaa !5
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc17, %for.end
  %10 = load i32, ptr %i8, align 4, !tbaa !5
  %11 = load i32, ptr @n, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %10, %11
  br i1 %cmp10, label %for.body12, label %for.cond.cleanup11

for.cond.cleanup11:                               ; preds = %for.cond9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i8) #7
  br label %for.end19

for.body12:                                       ; preds = %for.cond9
  %12 = load i32, ptr %min, align 4, !tbaa !5
  %13 = load i32, ptr %m.addr, align 4, !tbaa !5
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom13
  %14 = load i32, ptr %i8, align 4, !tbaa !5
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds [100 x i32], ptr %arrayidx14, i64 0, i64 %idxprom15
  %15 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %sub = sub nsw i32 %15, %12
  store i32 %sub, ptr %arrayidx16, align 4, !tbaa !5
  br label %for.inc17

for.inc17:                                        ; preds = %for.body12
  %16 = load i32, ptr %i8, align 4, !tbaa !5
  %inc18 = add nsw i32 %16, 1
  store i32 %inc18, ptr %i8, align 4, !tbaa !5
  br label %for.cond9, !llvm.loop !12

for.end19:                                        ; preds = %for.cond.cleanup11
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z3liei(i32 noundef %m) #0 {
entry:
  %m.addr = alloca i32, align 4
  %min = alloca i32, align 4
  %i = alloca i32, align 4
  %i8 = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #7
  store i32 10000, ptr %min, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  br label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %3 = load i32, ptr %m.addr, align 4, !tbaa !5
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom1
  %4 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %5 = load i32, ptr %min, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom4
  %7 = load i32, ptr %m.addr, align 4, !tbaa !5
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], ptr %arrayidx5, i64 0, i64 %idxprom6
  %8 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  store i32 %8, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %i8) #7
  store i32 0, ptr %i8, align 4, !tbaa !5
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc17, %for.end
  %10 = load i32, ptr %i8, align 4, !tbaa !5
  %11 = load i32, ptr @n, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %10, %11
  br i1 %cmp10, label %for.body12, label %for.cond.cleanup11

for.cond.cleanup11:                               ; preds = %for.cond9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i8) #7
  br label %for.end19

for.body12:                                       ; preds = %for.cond9
  %12 = load i32, ptr %min, align 4, !tbaa !5
  %13 = load i32, ptr %i8, align 4, !tbaa !5
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom13
  %14 = load i32, ptr %m.addr, align 4, !tbaa !5
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds [100 x i32], ptr %arrayidx14, i64 0, i64 %idxprom15
  %15 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %sub = sub nsw i32 %15, %12
  store i32 %sub, ptr %arrayidx16, align 4, !tbaa !5
  br label %for.inc17

for.inc17:                                        ; preds = %for.body12
  %16 = load i32, ptr %i8, align 4, !tbaa !5
  %inc18 = add nsw i32 %16, 1
  store i32 %inc18, ptr %i8, align 4, !tbaa !5
  br label %for.cond9, !llvm.loop !14

for.end19:                                        ; preds = %for.cond.cleanup11
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z3delPA100_i(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr @n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %5, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %4, i64 %idxprom
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %7 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], ptr %8, i64 %idxprom6
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [100 x i32], ptr %arrayidx7, i64 0, i64 %idxprom8
  store i32 %7, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !18

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %inc11 = add nsw i32 %12, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !19

for.end12:                                        ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc32, %for.end12
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %14 = load i32, ptr @n, align 4, !tbaa !5
  %sub14 = sub nsw i32 %14, 1
  %cmp15 = icmp slt i32 %13, %sub14
  br i1 %cmp15, label %for.body16, label %for.end34

for.body16:                                       ; preds = %for.cond13
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc29, %for.body16
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %16 = load i32, ptr @n, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %15, %16
  br i1 %cmp18, label %for.body19, label %for.end31

for.body19:                                       ; preds = %for.cond17
  %17 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [100 x i32], ptr %17, i64 %idxprom20
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %add22 = add nsw i32 %19, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [100 x i32], ptr %arrayidx21, i64 0, i64 %idxprom23
  %20 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %21 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom25 = sext i32 %22 to i64
  %arrayidx26 = getelementptr inbounds [100 x i32], ptr %21, i64 %idxprom25
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %23 to i64
  %arrayidx28 = getelementptr inbounds [100 x i32], ptr %arrayidx26, i64 0, i64 %idxprom27
  store i32 %20, ptr %arrayidx28, align 4, !tbaa !5
  br label %for.inc29

for.inc29:                                        ; preds = %for.body19
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %inc30 = add nsw i32 %24, 1
  store i32 %inc30, ptr %j, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !20

for.end31:                                        ; preds = %for.cond17
  br label %for.inc32

for.inc32:                                        ; preds = %for.end31
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %inc33 = add nsw i32 %25, 1
  store i32 %inc33, ptr %i, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !21

for.end34:                                        ; preds = %for.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #7
  store i32 0, ptr %l, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %0 = load i32, ptr %l, align 4, !tbaa !5
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #7
  br label %for.end34

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %i1) #7
  store i32 0, ptr %i1, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc13, %for.body
  %2 = load i32, ptr %i1, align 4, !tbaa !5
  %3 = load i32, ptr @n, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body5, label %for.cond.cleanup4

for.cond.cleanup4:                                ; preds = %for.cond2
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i1) #7
  br label %for.end15

for.body5:                                        ; preds = %for.cond2
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body5
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr @n, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %4, %5
  br i1 %cmp7, label %for.body9, label %for.cond.cleanup8

for.cond.cleanup8:                                ; preds = %for.cond6
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  br label %for.end

for.body9:                                        ; preds = %for.cond6
  %6 = load i32, ptr %i1, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom10
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx11)
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !22

for.end:                                          ; preds = %for.cond.cleanup8
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %9 = load i32, ptr %i1, align 4, !tbaa !5
  %inc14 = add nsw i32 %9, 1
  store i32 %inc14, ptr %i1, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !23

for.end15:                                        ; preds = %for.cond.cleanup4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #7
  store i32 0, ptr %sum, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %for.end28, %for.end15
  %10 = load i32, ptr %k, align 4, !tbaa !5
  %11 = load i32, ptr @n, align 4, !tbaa !5
  %sub = sub nsw i32 %11, 1
  %cmp16 = icmp slt i32 %10, %sub
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc20, %while.body
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %13 = load i32, ptr @n, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %12, %13
  br i1 %cmp18, label %for.body19, label %for.end22

for.body19:                                       ; preds = %for.cond17
  %14 = load i32, ptr %i, align 4, !tbaa !5
  call void @_Z4hangi(i32 noundef %14)
  br label %for.inc20

for.inc20:                                        ; preds = %for.body19
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %inc21 = add nsw i32 %15, 1
  store i32 %inc21, ptr %i, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !24

for.end22:                                        ; preds = %for.cond17
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc26, %for.end22
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %17 = load i32, ptr @n, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %16, %17
  br i1 %cmp24, label %for.body25, label %for.end28

for.body25:                                       ; preds = %for.cond23
  %18 = load i32, ptr %i, align 4, !tbaa !5
  call void @_Z3liei(i32 noundef %18)
  br label %for.inc26

for.inc26:                                        ; preds = %for.body25
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %inc27 = add nsw i32 %19, 1
  store i32 %inc27, ptr %i, align 4, !tbaa !5
  br label %for.cond23, !llvm.loop !25

for.end28:                                        ; preds = %for.cond23
  %20 = load i32, ptr getelementptr inbounds ([100 x i32], ptr getelementptr inbounds ([100 x [100 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 1), align 4, !tbaa !5
  %21 = load i32, ptr %sum, align 4, !tbaa !5
  %add = add nsw i32 %21, %20
  store i32 %add, ptr %sum, align 4, !tbaa !5
  call void @_Z3delPA100_i(ptr noundef @a)
  %22 = load i32, ptr %k, align 4, !tbaa !5
  %inc29 = add nsw i32 %22, 1
  store i32 %inc29, ptr %k, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %while.cond
  %23 = load i32, ptr %sum, align 4, !tbaa !5
  %call30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %23)
  %call31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call30, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  br label %for.inc32

for.inc32:                                        ; preds = %while.end
  %24 = load i32, ptr %l, align 4, !tbaa !5
  %inc33 = add nsw i32 %24, 1
  store i32 %inc33, ptr %l, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !27

for.end34:                                        ; preds = %for.cond.cleanup
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #4 align 2 {
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
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
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

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !28
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !28, !nonnull !31, !align !32
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
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

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #5 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !54
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !54
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !54
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #4 comdat align 2 {
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 int", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
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
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 _ZTSSo", !17, i64 0}
!30 = !{!17, !17, i64 0}
!31 = !{}
!32 = !{i64 8}
!33 = !{!34, !34, i64 0}
!34 = !{!"vtable pointer", !8, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !17, i64 0}
!37 = !{!7, !7, i64 0}
!38 = !{!39, !51, i64 240}
!39 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !40, i64 0, !29, i64 216, !7, i64 224, !49, i64 225, !50, i64 232, !51, i64 240, !52, i64 248, !53, i64 256}
!40 = !{!"_ZTSSt8ios_base", !41, i64 8, !41, i64 16, !42, i64 24, !43, i64 28, !43, i64 32, !44, i64 40, !45, i64 48, !7, i64 64, !6, i64 192, !46, i64 200, !47, i64 208}
!41 = !{!"long", !7, i64 0}
!42 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!43 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!44 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!45 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !41, i64 8}
!46 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!47 = !{!"_ZTSSt6locale", !48, i64 0}
!48 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!49 = !{!"bool", !7, i64 0}
!50 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !17, i64 0}
!51 = !{!"p1 _ZTSSt5ctypeIcE", !17, i64 0}
!52 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!53 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!54 = !{!51, !51, i64 0}
!55 = !{!56, !7, i64 56}
!56 = !{!"_ZTSSt5ctypeIcE", !57, i64 0, !58, i64 16, !49, i64 24, !16, i64 32, !16, i64 40, !59, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!57 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!58 = !{!"p1 _ZTS15__locale_struct", !17, i64 0}
!59 = !{!"p1 short", !17, i64 0}
