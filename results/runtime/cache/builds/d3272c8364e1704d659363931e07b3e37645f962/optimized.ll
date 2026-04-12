; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmyakh1hz.cpp"
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

@a = dso_local global [101 x [101 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.inc16

for.body3:                                        ; preds = %for.cond1
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp sle i32 %4, %5
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %inc11 = add nsw i32 %2, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.inc16:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z6hanshui(i32 noundef %3) #8
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call13)
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call14, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc17 = add nsw i32 %0, 1
  store i32 %inc17, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end18:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z6hanshui(i32 noundef %n) local_unnamed_addr #3 {
entry:
  %retval = alloca i32, align 4
  %min = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %min) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #7
  %cmp = icmp eq i32 %n, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %if.else
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp1 = icmp sle i32 %0, %n
  br i1 %cmp1, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 10000, ptr %min, align 4, !tbaa !5
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %1, %n
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom
  %idxprom5 = sext i32 %1 to i64
  %arrayidx6 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %3 = load i32, ptr %min, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %2, %3
  br i1 %cmp7, label %if.then8, label %for.inc

if.then8:                                         ; preds = %for.body4
  store i32 %2, ptr %min, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body4, %if.then8
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !14

for.end:                                          ; preds = %for.cond2
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc20, %for.end
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %cmp14 = icmp sle i32 %4, %n
  br i1 %cmp14, label %for.inc20, label %for.inc23

for.inc20:                                        ; preds = %for.cond13
  %5 = load i32, ptr %min, align 4, !tbaa !5
  %idxprom16 = sext i32 %0 to i64
  %arrayidx17 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom16
  %idxprom18 = sext i32 %4 to i64
  %arrayidx19 = getelementptr inbounds [101 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %6 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %sub = sub nsw i32 %6, %5
  store i32 %sub, ptr %arrayidx19, align 4, !tbaa !5
  %inc21 = add nsw i32 %4, 1
  store i32 %inc21, ptr %j, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !15

for.inc23:                                        ; preds = %for.cond13
  %inc24 = add nsw i32 %0, 1
  store i32 %inc24, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !16

for.end25:                                        ; preds = %for.cond
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc57, %for.end25
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %cmp27 = icmp sle i32 %7, %n
  br i1 %cmp27, label %for.body28, label %for.end59

for.body28:                                       ; preds = %for.cond26
  store i32 10000, ptr %min, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc43, %for.body28
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %cmp30 = icmp sle i32 %8, %n
  br i1 %cmp30, label %for.body31, label %for.end45

for.body31:                                       ; preds = %for.cond29
  %idxprom32 = sext i32 %8 to i64
  %arrayidx33 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom32
  %idxprom34 = sext i32 %7 to i64
  %arrayidx35 = getelementptr inbounds [101 x i32], ptr %arrayidx33, i64 0, i64 %idxprom34
  %9 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %10 = load i32, ptr %min, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %9, %10
  br i1 %cmp36, label %if.then37, label %for.inc43

if.then37:                                        ; preds = %for.body31
  store i32 %9, ptr %min, align 4, !tbaa !5
  br label %for.inc43

for.inc43:                                        ; preds = %for.body31, %if.then37
  %inc44 = add nsw i32 %8, 1
  store i32 %inc44, ptr %i, align 4, !tbaa !5
  br label %for.cond29, !llvm.loop !17

for.end45:                                        ; preds = %for.cond29
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc54, %for.end45
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %cmp47 = icmp sle i32 %11, %n
  br i1 %cmp47, label %for.inc54, label %for.inc57

for.inc54:                                        ; preds = %for.cond46
  %12 = load i32, ptr %min, align 4, !tbaa !5
  %idxprom49 = sext i32 %11 to i64
  %arrayidx50 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom49
  %idxprom51 = sext i32 %7 to i64
  %arrayidx52 = getelementptr inbounds [101 x i32], ptr %arrayidx50, i64 0, i64 %idxprom51
  %13 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %sub53 = sub nsw i32 %13, %12
  store i32 %sub53, ptr %arrayidx52, align 4, !tbaa !5
  %inc55 = add nsw i32 %11, 1
  store i32 %inc55, ptr %i, align 4, !tbaa !5
  br label %for.cond46, !llvm.loop !18

for.inc57:                                        ; preds = %for.cond46
  %inc58 = add nsw i32 %7, 1
  store i32 %inc58, ptr %j, align 4, !tbaa !5
  br label %for.cond26, !llvm.loop !19

for.end59:                                        ; preds = %for.cond26
  %14 = load i32, ptr getelementptr inbounds ([101 x i32], ptr getelementptr inbounds ([101 x [101 x i32]], ptr @a, i64 0, i64 2), i64 0, i64 2), align 16, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc77, %for.end59
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %cmp61 = icmp sle i32 %15, %n
  br i1 %cmp61, label %for.body62, label %for.end79

for.body62:                                       ; preds = %for.cond60
  store i32 2, ptr %j, align 4, !tbaa !5
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc74, %for.body62
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %cmp64 = icmp slt i32 %16, %n
  br i1 %cmp64, label %for.inc74, label %for.inc77

for.inc74:                                        ; preds = %for.cond63
  %idxprom66 = sext i32 %15 to i64
  %arrayidx67 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom66
  %add = add nsw i32 %16, 1
  %idxprom68 = sext i32 %add to i64
  %arrayidx69 = getelementptr inbounds [101 x i32], ptr %arrayidx67, i64 0, i64 %idxprom68
  %17 = load i32, ptr %arrayidx69, align 4, !tbaa !5, !invariant.load !20
  %idxprom72 = sext i32 %16 to i64
  %arrayidx73 = getelementptr inbounds [101 x i32], ptr %arrayidx67, i64 0, i64 %idxprom72
  store i32 %17, ptr %arrayidx73, align 4, !tbaa !5
  store i32 %add, ptr %j, align 4, !tbaa !5
  br label %for.cond63, !llvm.loop !21

for.inc77:                                        ; preds = %for.cond63
  %inc78 = add nsw i32 %15, 1
  store i32 %inc78, ptr %i, align 4, !tbaa !5
  br label %for.cond60, !llvm.loop !22

for.end79:                                        ; preds = %for.cond60
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc98, %for.end79
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %cmp81 = icmp slt i32 %18, %n
  br i1 %cmp81, label %for.body82, label %for.end100

for.body82:                                       ; preds = %for.cond80
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc95, %for.body82
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %cmp84 = icmp slt i32 %19, %n
  br i1 %cmp84, label %for.inc95, label %for.inc98

for.inc95:                                        ; preds = %for.cond83
  %add86 = add nsw i32 %19, 1
  %idxprom87 = sext i32 %add86 to i64
  %arrayidx88 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom87
  %idxprom89 = sext i32 %18 to i64
  %arrayidx90 = getelementptr inbounds [101 x i32], ptr %arrayidx88, i64 0, i64 %idxprom89
  %20 = load i32, ptr %arrayidx90, align 4, !tbaa !5, !invariant.load !20
  %idxprom91 = sext i32 %19 to i64
  %arrayidx92 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom91
  %arrayidx94 = getelementptr inbounds [101 x i32], ptr %arrayidx92, i64 0, i64 %idxprom89
  store i32 %20, ptr %arrayidx94, align 4, !tbaa !5
  store i32 %add86, ptr %i, align 4, !tbaa !5
  br label %for.cond83, !llvm.loop !23

for.inc98:                                        ; preds = %for.cond83
  %inc99 = add nsw i32 %18, 1
  store i32 %inc99, ptr %j, align 4, !tbaa !5
  br label %for.cond80, !llvm.loop !24

for.end100:                                       ; preds = %for.cond80
  %sub101 = sub nsw i32 %n, 1
  %call = call noundef i32 @_Z6hanshui(i32 noundef %sub101) #9
  %add102 = add nsw i32 %14, %call
  store i32 %add102, ptr %retval, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end100, %if.then
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %j) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %i) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %min) #7
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) local_unnamed_addr #4 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %__pf(ptr noundef nonnull align 8 dereferenceable(8) %this)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %vtable = load ptr, ptr %__os, align 8, !tbaa !25
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !20
  %add.ptr = getelementptr inbounds i8, ptr %__os, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %__os, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) local_unnamed_addr #5 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %__os)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) local_unnamed_addr #4 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !27
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %__c)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) local_unnamed_addr #5 comdat {
entry:
  %tobool = icmp ne ptr %__f, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #10
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #4 comdat align 2 {
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
  %vtable = load ptr, ptr %this, align 8, !tbaa !25
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !20
  %call = call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  store i8 %call, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i8, ptr %retval, align 1
  ret i8 %3
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { nofree nosync nounwind }
attributes #10 = { noreturn }

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
!20 = !{}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = !{!26, !26, i64 0}
!26 = !{!"vtable pointer", !8, i64 0}
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
