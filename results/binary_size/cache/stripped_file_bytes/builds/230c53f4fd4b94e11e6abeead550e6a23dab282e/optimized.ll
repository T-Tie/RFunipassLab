; ModuleID = '/tmp/tmpb382xlmd.cpp'
source_filename = "/tmp/tmpb382xlmd.cpp"
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

@a = dso_local global [200 x [200 x i32]] zeroinitializer, align 16
@sum = dso_local global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z2xji(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  %0 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %if.then
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %4 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %3, %4
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %5, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [200 x [200 x i32]], ptr @a, i64 0, i64 %idxprom
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [200 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %7 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [200 x [200 x i32]], ptr @a, i64 0, i64 %idxprom7
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [200 x i32], ptr %arrayidx8, i64 0, i64 %idxprom9
  store i32 %7, ptr %arrayidx10, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %inc12 = add nsw i32 %11, 1
  store i32 %inc12, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end13:                                        ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc32, %for.end13
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %13 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %12, %13
  br i1 %cmp15, label %for.body16, label %for.end34

for.body16:                                       ; preds = %for.cond14
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc29, %for.body16
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %15 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %14, %15
  br i1 %cmp18, label %for.body19, label %for.end31

for.body19:                                       ; preds = %for.cond17
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [200 x [200 x i32]], ptr @a, i64 0, i64 %idxprom20
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %add22 = add nsw i32 %17, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [200 x i32], ptr %arrayidx21, i64 0, i64 %idxprom23
  %18 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [200 x [200 x i32]], ptr @a, i64 0, i64 %idxprom25
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %20 to i64
  %arrayidx28 = getelementptr inbounds [200 x i32], ptr %arrayidx26, i64 0, i64 %idxprom27
  store i32 %18, ptr %arrayidx28, align 4, !tbaa !5
  br label %for.inc29

for.inc29:                                        ; preds = %for.body19
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %inc30 = add nsw i32 %21, 1
  store i32 %inc30, ptr %j, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !13

for.end31:                                        ; preds = %for.cond17
  br label %for.inc32

for.inc32:                                        ; preds = %for.end31
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %inc33 = add nsw i32 %22, 1
  store i32 %inc33, ptr %i, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !14

for.end34:                                        ; preds = %for.cond14
  br label %if.end

if.end:                                           ; preds = %for.end34, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z2gli(i32 noundef %n) #2 {
entry:
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %min = alloca i32, align 4
  %min32 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  %0 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %if.then
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end28

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #7
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [200 x [200 x i32]], ptr @a, i64 0, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [200 x i32], ptr %arrayidx, i64 0, i64 0
  %4 = load i32, ptr %arrayidx2, align 16, !tbaa !5
  store i32 %4, ptr %min, align 4, !tbaa !5
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %6 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [200 x [200 x i32]], ptr @a, i64 0, i64 %idxprom6
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [200 x i32], ptr %arrayidx7, i64 0, i64 %idxprom8
  %9 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %10 = load i32, ptr %min, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %9, %10
  br i1 %cmp10, label %if.then11, label %if.end

if.then11:                                        ; preds = %for.body5
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [200 x [200 x i32]], ptr @a, i64 0, i64 %idxprom12
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [200 x i32], ptr %arrayidx13, i64 0, i64 %idxprom14
  %13 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  store i32 %13, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then11, %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !15

for.end:                                          ; preds = %for.cond3
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc23, %for.end
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %16 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %15, %16
  br i1 %cmp17, label %for.body18, label %for.end25

for.body18:                                       ; preds = %for.cond16
  %17 = load i32, ptr %min, align 4, !tbaa !5
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds [200 x [200 x i32]], ptr @a, i64 0, i64 %idxprom19
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom21 = sext i32 %19 to i64
  %arrayidx22 = getelementptr inbounds [200 x i32], ptr %arrayidx20, i64 0, i64 %idxprom21
  %20 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %sub = sub nsw i32 %20, %17
  store i32 %sub, ptr %arrayidx22, align 4, !tbaa !5
  br label %for.inc23

for.inc23:                                        ; preds = %for.body18
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %inc24 = add nsw i32 %21, 1
  store i32 %inc24, ptr %j, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !16

for.end25:                                        ; preds = %for.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #7
  br label %for.inc26

for.inc26:                                        ; preds = %for.end25
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %inc27 = add nsw i32 %22, 1
  store i32 %inc27, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !17

for.end28:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc63, %for.end28
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %24 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %23, %24
  br i1 %cmp30, label %for.body31, label %for.end65

for.body31:                                       ; preds = %for.cond29
  call void @llvm.lifetime.start.p0(i64 4, ptr %min32) #7
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %25 to i64
  %arrayidx34 = getelementptr inbounds [200 x i32], ptr @a, i64 0, i64 %idxprom33
  %26 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  store i32 %26, ptr %min32, align 4, !tbaa !5
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc49, %for.body31
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %28 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %27, %28
  br i1 %cmp36, label %for.body37, label %for.end51

for.body37:                                       ; preds = %for.cond35
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom38 = sext i32 %29 to i64
  %arrayidx39 = getelementptr inbounds [200 x [200 x i32]], ptr @a, i64 0, i64 %idxprom38
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %30 to i64
  %arrayidx41 = getelementptr inbounds [200 x i32], ptr %arrayidx39, i64 0, i64 %idxprom40
  %31 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %32 = load i32, ptr %min32, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %31, %32
  br i1 %cmp42, label %if.then43, label %if.end48

if.then43:                                        ; preds = %for.body37
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom44 = sext i32 %33 to i64
  %arrayidx45 = getelementptr inbounds [200 x [200 x i32]], ptr @a, i64 0, i64 %idxprom44
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom46 = sext i32 %34 to i64
  %arrayidx47 = getelementptr inbounds [200 x i32], ptr %arrayidx45, i64 0, i64 %idxprom46
  %35 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  store i32 %35, ptr %min32, align 4, !tbaa !5
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %for.body37
  br label %for.inc49

for.inc49:                                        ; preds = %if.end48
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %inc50 = add nsw i32 %36, 1
  store i32 %inc50, ptr %j, align 4, !tbaa !5
  br label %for.cond35, !llvm.loop !18

for.end51:                                        ; preds = %for.cond35
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc60, %for.end51
  %37 = load i32, ptr %j, align 4, !tbaa !5
  %38 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %37, %38
  br i1 %cmp53, label %for.body54, label %for.end62

for.body54:                                       ; preds = %for.cond52
  %39 = load i32, ptr %min32, align 4, !tbaa !5
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom55 = sext i32 %40 to i64
  %arrayidx56 = getelementptr inbounds [200 x [200 x i32]], ptr @a, i64 0, i64 %idxprom55
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom57 = sext i32 %41 to i64
  %arrayidx58 = getelementptr inbounds [200 x i32], ptr %arrayidx56, i64 0, i64 %idxprom57
  %42 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %sub59 = sub nsw i32 %42, %39
  store i32 %sub59, ptr %arrayidx58, align 4, !tbaa !5
  br label %for.inc60

for.inc60:                                        ; preds = %for.body54
  %43 = load i32, ptr %j, align 4, !tbaa !5
  %inc61 = add nsw i32 %43, 1
  store i32 %inc61, ptr %j, align 4, !tbaa !5
  br label %for.cond52, !llvm.loop !19

for.end62:                                        ; preds = %for.cond52
  call void @llvm.lifetime.end.p0(i64 4, ptr %min32) #7
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %inc64 = add nsw i32 %44, 1
  store i32 %inc64, ptr %i, align 4, !tbaa !5
  br label %for.cond29, !llvm.loop !20

for.end65:                                        ; preds = %for.cond29
  %45 = load i32, ptr getelementptr inbounds ([200 x i32], ptr getelementptr inbounds ([200 x [200 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 1), align 4, !tbaa !5
  %46 = load i32, ptr @sum, align 4, !tbaa !5
  %add = add nsw i32 %46, %45
  store i32 %add, ptr @sum, align 4, !tbaa !5
  %47 = load i32, ptr %n.addr, align 4, !tbaa !5
  call void @_Z2xji(i32 noundef %47)
  %48 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub66 = sub nsw i32 %48, 1
  call void @_Z2gli(i32 noundef %sub66)
  br label %if.end67

if.else:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end67:                                         ; preds = %for.end65
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.else
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #3 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  store i32 0, ptr @sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc11, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond1
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  br label %for.end13

for.body3:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6

for.cond.cleanup6:                                ; preds = %for.cond4
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  br label %for.end

for.body7:                                        ; preds = %for.cond4
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [200 x [200 x i32]], ptr @a, i64 0, i64 %idxprom
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [200 x i32], ptr %arrayidx, i64 0, i64 %idxprom8
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx9)
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !21

for.end:                                          ; preds = %for.cond.cleanup6
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc12 = add nsw i32 %9, 1
  store i32 %inc12, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !22

for.end13:                                        ; preds = %for.cond.cleanup
  %10 = load i32, ptr %n, align 4, !tbaa !5
  call void @_Z2gli(i32 noundef %10)
  %11 = load i32, ptr @sum, align 4, !tbaa !5
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %11)
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call14, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc16

for.inc16:                                        ; preds = %for.end13
  %12 = load i32, ptr %k, align 4, !tbaa !5
  %inc17 = add nsw i32 %12, 1
  store i32 %inc17, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !23

for.end18:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #4

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !24
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
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !24
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !24, !nonnull !28, !align !29
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !24, !nonnull !28, !align !29
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
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !24
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !24, !nonnull !28, !align !29
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #4

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #2 align 2 {
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
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #2 comdat align 2 {
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

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSSo", !26, i64 0}
!26 = !{!"any pointer", !7, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{}
!29 = !{i64 8}
!30 = !{!31, !31, i64 0}
!31 = !{!"vtable pointer", !8, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !26, i64 0}
!34 = !{!7, !7, i64 0}
!35 = !{!36, !48, i64 240}
!36 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !37, i64 0, !25, i64 216, !7, i64 224, !46, i64 225, !47, i64 232, !48, i64 240, !49, i64 248, !50, i64 256}
!37 = !{!"_ZTSSt8ios_base", !38, i64 8, !38, i64 16, !39, i64 24, !40, i64 28, !40, i64 32, !41, i64 40, !42, i64 48, !7, i64 64, !6, i64 192, !43, i64 200, !44, i64 208}
!38 = !{!"long", !7, i64 0}
!39 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!40 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!41 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !26, i64 0}
!42 = !{!"_ZTSNSt8ios_base6_WordsE", !26, i64 0, !38, i64 8}
!43 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !26, i64 0}
!44 = !{!"_ZTSSt6locale", !45, i64 0}
!45 = !{!"p1 _ZTSNSt6locale5_ImplE", !26, i64 0}
!46 = !{!"bool", !7, i64 0}
!47 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !26, i64 0}
!48 = !{!"p1 _ZTSSt5ctypeIcE", !26, i64 0}
!49 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !26, i64 0}
!50 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !26, i64 0}
!51 = !{!48, !48, i64 0}
!52 = !{!53, !7, i64 56}
!53 = !{!"_ZTSSt5ctypeIcE", !54, i64 0, !55, i64 16, !46, i64 24, !56, i64 32, !56, i64 40, !57, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!54 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!55 = !{!"p1 _ZTS15__locale_struct", !26, i64 0}
!56 = !{!"p1 int", !26, i64 0}
!57 = !{!"p1 short", !26, i64 0}
