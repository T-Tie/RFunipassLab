; ModuleID = '/tmp/tmp5zpjmr38.cpp'
source_filename = "/tmp/tmp5zpjmr38.cpp"
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

@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@s = dso_local global [100 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %sum, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr @n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %5 = load i32, ptr @n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end12:                                        ; preds = %for.cond1
  call void @_Z3Tryi(i32 noundef 0)
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc18, %for.end12
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr @n, align 4, !tbaa !5
  %sub = sub nsw i32 %11, 1
  %cmp14 = icmp slt i32 %10, %sub
  br i1 %cmp14, label %for.body15, label %for.end20

for.body15:                                       ; preds = %for.cond13
  %12 = load i32, ptr %sum, align 4, !tbaa !5
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [100 x i32], ptr @s, i64 0, i64 %idxprom16
  %14 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %add = add nsw i32 %12, %14
  store i32 %add, ptr %sum, align 4, !tbaa !5
  br label %for.inc18

for.inc18:                                        ; preds = %for.body15
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %inc19 = add nsw i32 %15, 1
  store i32 %inc19, ptr %j, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !13

for.end20:                                        ; preds = %for.cond13
  %16 = load i32, ptr %sum, align 4, !tbaa !5
  %call21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %16)
  %call22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call21, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc23

for.inc23:                                        ; preds = %for.end20
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc24 = add nsw i32 %17, 1
  store i32 %inc24, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end25:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z3Tryi(i32 noundef %i) #3 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4, !tbaa !5
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %1 = load i32, ptr %i.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %0, %1
  call void @_Z1ri(i32 noundef %sub)
  %2 = load i32, ptr @n, align 4, !tbaa !5
  %3 = load i32, ptr %i.addr, align 4, !tbaa !5
  %sub1 = sub nsw i32 %2, %3
  call void @_Z1li(i32 noundef %sub1)
  %4 = load i32, ptr getelementptr inbounds ([100 x i32], ptr getelementptr inbounds ([100 x [100 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 1), align 4, !tbaa !5
  %5 = load i32, ptr %i.addr, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr @s, i64 0, i64 %idxprom
  store i32 %4, ptr %arrayidx, align 4, !tbaa !5
  %6 = load i32, ptr @n, align 4, !tbaa !5
  %7 = load i32, ptr %i.addr, align 4, !tbaa !5
  %sub2 = sub nsw i32 %6, %7
  call void @_Z3funi(i32 noundef %sub2)
  %8 = load i32, ptr %i.addr, align 4, !tbaa !5
  %9 = load i32, ptr @n, align 4, !tbaa !5
  %sub3 = sub nsw i32 %9, 1
  %cmp = icmp slt i32 %8, %sub3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, ptr %i.addr, align 4, !tbaa !5
  %add = add nsw i32 %10, 1
  call void @_Z3Tryi(i32 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !15
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !18
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !18
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !15
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !15, !nonnull !19, !align !20
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !15, !nonnull !19, !align !20
  %vtable = load ptr, ptr %1, align 8, !tbaa !21
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

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z1ri(i32 noundef %m) #5 {
entry:
  %m.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %min = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #7
  store i32 0, ptr %x, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %entry
  %0 = load i32, ptr %x, align 4, !tbaa !5
  %1 = load i32, ptr %m.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 0
  %3 = load i32, ptr %arrayidx1, align 16, !tbaa !5
  store i32 %3, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %y, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %y, align 4, !tbaa !5
  %5 = load i32, ptr %m.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom5
  %7 = load i32, ptr %y, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx6, i64 0, i64 %idxprom7
  %8 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %9 = load i32, ptr %min, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %8, %9
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %10 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom10
  %11 = load i32, ptr %y, align 4, !tbaa !5
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [100 x i32], ptr %arrayidx11, i64 0, i64 %idxprom12
  %12 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  store i32 %12, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %y, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %y, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !23

for.end:                                          ; preds = %for.cond2
  store i32 0, ptr %y, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc25, %for.end
  %14 = load i32, ptr %y, align 4, !tbaa !5
  %15 = load i32, ptr %m.addr, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %14, %15
  br i1 %cmp15, label %for.body16, label %for.end27

for.body16:                                       ; preds = %for.cond14
  %16 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom17
  %17 = load i32, ptr %y, align 4, !tbaa !5
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds [100 x i32], ptr %arrayidx18, i64 0, i64 %idxprom19
  %18 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %19 = load i32, ptr %min, align 4, !tbaa !5
  %sub = sub nsw i32 %18, %19
  %20 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom21 = sext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom21
  %21 = load i32, ptr %y, align 4, !tbaa !5
  %idxprom23 = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds [100 x i32], ptr %arrayidx22, i64 0, i64 %idxprom23
  store i32 %sub, ptr %arrayidx24, align 4, !tbaa !5
  br label %for.inc25

for.inc25:                                        ; preds = %for.body16
  %22 = load i32, ptr %y, align 4, !tbaa !5
  %inc26 = add nsw i32 %22, 1
  store i32 %inc26, ptr %y, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !24

for.end27:                                        ; preds = %for.cond14
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %23 = load i32, ptr %x, align 4, !tbaa !5
  %inc29 = add nsw i32 %23, 1
  store i32 %inc29, ptr %x, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !25

for.end30:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z1li(i32 noundef %m) #5 {
entry:
  %m.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %min = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #7
  store i32 0, ptr %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %0 = load i32, ptr %y, align 4, !tbaa !5
  %1 = load i32, ptr %m.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %y, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr @a, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !5
  store i32 %3, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %x, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %x, align 4, !tbaa !5
  %5 = load i32, ptr %m.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom4
  %7 = load i32, ptr %y, align 4, !tbaa !5
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], ptr %arrayidx5, i64 0, i64 %idxprom6
  %8 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %9 = load i32, ptr %min, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %10 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom9
  %11 = load i32, ptr %y, align 4, !tbaa !5
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [100 x i32], ptr %arrayidx10, i64 0, i64 %idxprom11
  %12 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  store i32 %12, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %x, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %x, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !26

for.end:                                          ; preds = %for.cond1
  store i32 0, ptr %x, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc24, %for.end
  %14 = load i32, ptr %x, align 4, !tbaa !5
  %15 = load i32, ptr %m.addr, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %14, %15
  br i1 %cmp14, label %for.body15, label %for.end26

for.body15:                                       ; preds = %for.cond13
  %16 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom16 = sext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom16
  %17 = load i32, ptr %y, align 4, !tbaa !5
  %idxprom18 = sext i32 %17 to i64
  %arrayidx19 = getelementptr inbounds [100 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %18 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %19 = load i32, ptr %min, align 4, !tbaa !5
  %sub = sub nsw i32 %18, %19
  %20 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom20
  %21 = load i32, ptr %y, align 4, !tbaa !5
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %arrayidx21, i64 0, i64 %idxprom22
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  br label %for.inc24

for.inc24:                                        ; preds = %for.body15
  %22 = load i32, ptr %x, align 4, !tbaa !5
  %inc25 = add nsw i32 %22, 1
  store i32 %inc25, ptr %x, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !27

for.end26:                                        ; preds = %for.cond13
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %23 = load i32, ptr %y, align 4, !tbaa !5
  %inc28 = add nsw i32 %23, 1
  store i32 %inc28, ptr %y, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !28

for.end29:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z3funi(i32 noundef %m) #5 {
entry:
  %m.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %m.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 2, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %m.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %6 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom6
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %sub = sub nsw i32 %8, 1
  %idxprom8 = sext i32 %sub to i64
  %arrayidx9 = getelementptr inbounds [100 x i32], ptr %arrayidx7, i64 0, i64 %idxprom8
  store i32 %6, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !29

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !30

for.end12:                                        ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc32, %for.end12
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %12 = load i32, ptr %m.addr, align 4, !tbaa !5
  %sub14 = sub nsw i32 %12, 1
  %cmp15 = icmp slt i32 %11, %sub14
  br i1 %cmp15, label %for.body16, label %for.end34

for.body16:                                       ; preds = %for.cond13
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc29, %for.body16
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %14 = load i32, ptr %m.addr, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %13, %14
  br i1 %cmp18, label %for.body19, label %for.end31

for.body19:                                       ; preds = %for.cond17
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom20
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom22 = sext i32 %16 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %arrayidx21, i64 0, i64 %idxprom22
  %17 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %sub24 = sub nsw i32 %18, 1
  %idxprom25 = sext i32 %sub24 to i64
  %arrayidx26 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom25
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom27 = sext i32 %19 to i64
  %arrayidx28 = getelementptr inbounds [100 x i32], ptr %arrayidx26, i64 0, i64 %idxprom27
  store i32 %17, ptr %arrayidx28, align 4, !tbaa !5
  br label %for.inc29

for.inc29:                                        ; preds = %for.body19
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %inc30 = add nsw i32 %20, 1
  store i32 %inc30, ptr %i, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !31

for.end31:                                        ; preds = %for.cond17
  br label %for.inc32

for.inc32:                                        ; preds = %for.end31
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %inc33 = add nsw i32 %21, 1
  store i32 %inc33, ptr %j, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !32

for.end34:                                        ; preds = %for.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !15
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !15, !nonnull !19, !align !20
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #3 align 2 {
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

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #4 comdat {
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
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #3 comdat align 2 {
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
  %vtable = load ptr, ptr %this1, align 8, !tbaa !21
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
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!16 = !{!"p1 _ZTSSo", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{}
!20 = !{i64 8}
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !8, i64 0}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10, !11}
!30 = distinct !{!30, !10, !11}
!31 = distinct !{!31, !10, !11}
!32 = distinct !{!32, !10, !11}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !17, i64 0}
!35 = !{!7, !7, i64 0}
!36 = !{!37, !49, i64 240}
!37 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !38, i64 0, !16, i64 216, !7, i64 224, !47, i64 225, !48, i64 232, !49, i64 240, !50, i64 248, !51, i64 256}
!38 = !{!"_ZTSSt8ios_base", !39, i64 8, !39, i64 16, !40, i64 24, !41, i64 28, !41, i64 32, !42, i64 40, !43, i64 48, !7, i64 64, !6, i64 192, !44, i64 200, !45, i64 208}
!39 = !{!"long", !7, i64 0}
!40 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!41 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!42 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!43 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !39, i64 8}
!44 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!45 = !{!"_ZTSSt6locale", !46, i64 0}
!46 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!47 = !{!"bool", !7, i64 0}
!48 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !17, i64 0}
!49 = !{!"p1 _ZTSSt5ctypeIcE", !17, i64 0}
!50 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!51 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!52 = !{!49, !49, i64 0}
!53 = !{!54, !7, i64 56}
!54 = !{!"_ZTSSt5ctypeIcE", !55, i64 0, !56, i64 16, !47, i64 24, !57, i64 32, !57, i64 40, !58, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!55 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!56 = !{!"p1 _ZTS15__locale_struct", !17, i64 0}
!57 = !{!"p1 int", !17, i64 0}
!58 = !{!"p1 short", !17, i64 0}
