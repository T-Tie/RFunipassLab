; ModuleID = '<stdin>'
source_filename = "/tmp/tmpb0pnj8ab.cpp"
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

@sum = dso_local global i32 0, align 4
@a = dso_local global [101 x [101 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z7guilingi(i32 noundef %n) #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %min = alloca i32, align 4
  %min34 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %n
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %min) #8
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  store i32 %1, ptr %min, align 4, !tbaa !5
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %2, %n
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %idxprom7 = sext i32 %2 to i64
  %arrayidx8 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %3 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %4 = load i32, ptr %min, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %3, %4
  br i1 %cmp9, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body4
  store i32 %3, ptr %min, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body4, %if.then
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc25, %for.end
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %5, %n
  br i1 %cmp15, label %for.inc25, label %for.inc28

for.inc25:                                        ; preds = %for.cond14
  %idxprom19 = sext i32 %5 to i64
  %arrayidx20 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom19
  %6 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %7 = load i32, ptr %min, align 4, !tbaa !5
  %sub = sub nsw i32 %6, %7
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %inc26 = add nsw i32 %5, 1
  store i32 %inc26, ptr %j, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !12

for.inc28:                                        ; preds = %for.cond14
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %min) #8
  %inc29 = add nsw i32 %0, 1
  store i32 %inc29, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end30:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc69, %for.end30
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %8, %n
  br i1 %cmp32, label %for.body33, label %for.end71

for.body33:                                       ; preds = %for.cond31
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %min34) #8
  %idxprom35 = sext i32 %8 to i64
  %arrayidx36 = getelementptr inbounds [101 x i32], ptr @a, i64 0, i64 %idxprom35
  %9 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  store i32 %9, ptr %min34, align 4, !tbaa !5
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc51, %for.body33
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %10, %n
  br i1 %cmp38, label %for.body39, label %for.end53

for.body39:                                       ; preds = %for.cond37
  %idxprom40 = sext i32 %10 to i64
  %arrayidx41 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom40
  %arrayidx43 = getelementptr inbounds [101 x i32], ptr %arrayidx41, i64 0, i64 %idxprom35
  %11 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %12 = load i32, ptr %min34, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %11, %12
  br i1 %cmp44, label %if.then45, label %for.inc51

if.then45:                                        ; preds = %for.body39
  store i32 %11, ptr %min34, align 4, !tbaa !5
  br label %for.inc51

for.inc51:                                        ; preds = %for.body39, %if.then45
  %inc52 = add nsw i32 %10, 1
  store i32 %inc52, ptr %j, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !14

for.end53:                                        ; preds = %for.cond37
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc66, %for.end53
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %13, %n
  br i1 %cmp55, label %for.inc66, label %for.inc69

for.inc66:                                        ; preds = %for.cond54
  %idxprom57 = sext i32 %13 to i64
  %arrayidx58 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom57
  %arrayidx60 = getelementptr inbounds [101 x i32], ptr %arrayidx58, i64 0, i64 %idxprom35
  %14 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %15 = load i32, ptr %min34, align 4, !tbaa !5
  %sub61 = sub nsw i32 %14, %15
  store i32 %sub61, ptr %arrayidx60, align 4, !tbaa !5
  %inc67 = add nsw i32 %13, 1
  store i32 %inc67, ptr %j, align 4, !tbaa !5
  br label %for.cond54, !llvm.loop !15

for.inc69:                                        ; preds = %for.cond54
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %min34) #8
  %inc70 = add nsw i32 %8, 1
  store i32 %inc70, ptr %i, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !16

for.end71:                                        ; preds = %for.cond31
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z8xiaojiani(i32 noundef %n) #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #8
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %sub = sub nsw i32 %n, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %1, %n
  br i1 %cmp2, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond1
  %add = add nsw i32 %0, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %1 to i64
  %arrayidx5 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %2 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %idxprom6 = sext i32 %0 to i64
  %arrayidx7 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom6
  %arrayidx9 = getelementptr inbounds [101 x i32], ptr %arrayidx7, i64 0, i64 %idxprom4
  store i32 %2, ptr %arrayidx9, align 4, !tbaa !5
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !17

for.inc10:                                        ; preds = %for.cond1
  %inc11 = add nsw i32 %0, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !18

for.end12:                                        ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc33, %for.end12
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %3, %sub
  br i1 %cmp15, label %for.body16, label %for.end35

for.body16:                                       ; preds = %for.cond13
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc30, %for.body16
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %4, %sub
  br i1 %cmp19, label %for.inc30, label %for.inc33

for.inc30:                                        ; preds = %for.cond17
  %idxprom21 = sext i32 %4 to i64
  %arrayidx22 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom21
  %add23 = add nsw i32 %3, 1
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds [101 x i32], ptr %arrayidx22, i64 0, i64 %idxprom24
  %5 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %idxprom28 = sext i32 %3 to i64
  %arrayidx29 = getelementptr inbounds [101 x i32], ptr %arrayidx22, i64 0, i64 %idxprom28
  store i32 %5, ptr %arrayidx29, align 4, !tbaa !5
  %inc31 = add nsw i32 %4, 1
  store i32 %inc31, ptr %j, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !19

for.inc33:                                        ; preds = %for.cond17
  %inc34 = add nsw i32 %3, 1
  store i32 %inc34, ptr %i, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !20

for.end35:                                        ; preds = %for.cond13
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local void @_Z1fi(i32 noundef %n) #2 {
entry:
  %cmp = icmp eq i32 %n, 1
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  call void @_Z7guilingi(i32 noundef %n) #9
  %0 = load i32, ptr getelementptr inbounds ([101 x i32], ptr getelementptr inbounds ([101 x [101 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 1), align 8, !tbaa !5
  %1 = load i32, ptr @sum, align 4, !tbaa !5
  %add = add nsw i32 %1, %0
  store i32 %add, ptr @sum, align 4, !tbaa !5
  call void @_Z8xiaojiani(i32 noundef %n) #9
  %sub = sub nsw i32 %n, 1
  call void @_Z1fi(i32 noundef %sub) #9
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #3 {
entry:
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i) #10
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 0, ptr @sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j) #10
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body4, label %for.inc17

for.body4:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %k) #10
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %4, %5
  br i1 %cmp6, label %for.inc, label %for.inc12

for.inc:                                          ; preds = %for.cond5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom
  %idxprom9 = sext i32 %4 to i64
  %arrayidx10 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom9
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !21

for.inc12:                                        ; preds = %for.cond5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #10
  %inc13 = add nsw i32 %2, 1
  store i32 %inc13, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !22

for.inc17:                                        ; preds = %for.cond1
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #10
  call void @_Z1fi(i32 noundef %3) #10
  %6 = load i32, ptr @sum, align 4, !tbaa !5
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %6)
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call15, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc18 = add nsw i32 %0, 1
  store i32 %inc18, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !23

for.end19:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #10
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #4

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #5 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %__pf(ptr noundef nonnull align 8 dereferenceable(8) %this)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #6 {
entry:
  %vtable = load ptr, ptr %__os, align 8, !tbaa !24
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !26
  %add.ptr = getelementptr inbounds i8, ptr %__os, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %__os, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #6 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %__os)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #4

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #5 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !27
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %__c)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #6 comdat {
entry:
  %tobool = icmp ne ptr %__f, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #11
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #5 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !45
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !51
  store i8 %1, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !24
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !26
  %call = call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  store i8 %call, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i8, ptr %retval, align 1
  ret i8 %3
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #7

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nofree nosync nounwind }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

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
!25 = !{!"vtable pointer", !8, i64 0}
!26 = !{}
!27 = !{!28, !42, i64 240}
!28 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !29, i64 0, !39, i64 216, !7, i64 224, !40, i64 225, !41, i64 232, !42, i64 240, !43, i64 248, !44, i64 256}
!29 = !{!"_ZTSSt8ios_base", !30, i64 8, !30, i64 16, !31, i64 24, !32, i64 28, !32, i64 32, !33, i64 40, !35, i64 48, !7, i64 64, !6, i64 192, !36, i64 200, !37, i64 208}
!30 = !{!"long", !7, i64 0}
!31 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!32 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!33 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !34, i64 0}
!34 = !{!"any pointer", !7, i64 0}
!35 = !{!"_ZTSNSt8ios_base6_WordsE", !34, i64 0, !30, i64 8}
!36 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !34, i64 0}
!37 = !{!"_ZTSSt6locale", !38, i64 0}
!38 = !{!"p1 _ZTSNSt6locale5_ImplE", !34, i64 0}
!39 = !{!"p1 _ZTSSo", !34, i64 0}
!40 = !{!"bool", !7, i64 0}
!41 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !34, i64 0}
!42 = !{!"p1 _ZTSSt5ctypeIcE", !34, i64 0}
!43 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !34, i64 0}
!44 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !34, i64 0}
!45 = !{!46, !7, i64 56}
!46 = !{!"_ZTSSt5ctypeIcE", !47, i64 0, !48, i64 16, !40, i64 24, !49, i64 32, !49, i64 40, !50, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!47 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!48 = !{!"p1 _ZTS15__locale_struct", !34, i64 0}
!49 = !{!"p1 int", !34, i64 0}
!50 = !{!"p1 short", !34, i64 0}
!51 = !{!7, !7, i64 0}
