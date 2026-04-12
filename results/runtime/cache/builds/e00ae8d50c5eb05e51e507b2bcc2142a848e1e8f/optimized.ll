; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0k563jtq.cpp"
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

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

@arr = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #10
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i) #11
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  call void @_Z5solvei(i32 noundef %1)
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #11
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z5solvei(i32 noundef %n) local_unnamed_addr #3 {
entry:
  call void @_Z7arrayini(i32 noundef %n)
  %call = call noundef i32 @_Z9down_casti(i32 noundef %n) #11
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call1, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z7arrayini(i32 noundef %n) local_unnamed_addr #3 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #10
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %n
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #10
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %1, %n
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @arr, i64 0, i64 %idxprom
  %idxprom5 = sext i32 %1 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.inc7:                                         ; preds = %for.cond1
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %j) #10
  %inc8 = add nsw i32 %0, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end9:                                         ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %i) #10
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z9down_casti(i32 noundef %n) local_unnamed_addr #4 {
entry:
  %retval = alloca i32, align 4
  %min = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %j15 = alloca i32, align 4
  %i30 = alloca i32, align 4
  %j35 = alloca i32, align 4
  %j54 = alloca i32, align 4
  %i70 = alloca i32, align 4
  %j75 = alloca i32, align 4
  %i95 = alloca i32, align 4
  %j100 = alloca i32, align 4
  %cmp = icmp eq i32 %n, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %min) #10
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #10
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %if.end
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %0, %n
  br i1 %cmp1, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  store i32 65535, ptr %min, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j) #10
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %1, %n
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @arr, i64 0, i64 %idxprom
  %idxprom6 = sext i32 %1 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom6
  %2 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %3 = load i32, ptr %min, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %2, %3
  br i1 %cmp8, label %if.then9, label %for.inc

if.then9:                                         ; preds = %for.body5
  store i32 %2, ptr %min, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body5, %if.then9
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !14

for.end:                                          ; preds = %for.cond2
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #10
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j15) #10
  store i32 0, ptr %j15, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc24, %for.end
  %4 = load i32, ptr %j15, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %4, %n
  br i1 %cmp17, label %for.inc24, label %for.inc27

for.inc24:                                        ; preds = %for.cond16
  %5 = load i32, ptr %min, align 4, !tbaa !5
  %idxprom20 = sext i32 %0 to i64
  %arrayidx21 = getelementptr inbounds [100 x [100 x i32]], ptr @arr, i64 0, i64 %idxprom20
  %idxprom22 = sext i32 %4 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %arrayidx21, i64 0, i64 %idxprom22
  %6 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %sub = sub nsw i32 %6, %5
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  %inc25 = add nsw i32 %4, 1
  store i32 %inc25, ptr %j15, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !15

for.inc27:                                        ; preds = %for.cond16
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j15) #10
  %inc28 = add nsw i32 %0, 1
  store i32 %inc28, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !16

for.end29:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %i) #10
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i30) #10
  store i32 0, ptr %i30, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc67, %for.end29
  %7 = load i32, ptr %i30, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %7, %n
  br i1 %cmp32, label %for.body34, label %for.end69

for.body34:                                       ; preds = %for.cond31
  store i32 65535, ptr %min, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j35) #10
  store i32 0, ptr %j35, align 4, !tbaa !5
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc51, %for.body34
  %8 = load i32, ptr %j35, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %8, %n
  br i1 %cmp37, label %for.body39, label %for.end53

for.body39:                                       ; preds = %for.cond36
  %idxprom40 = sext i32 %8 to i64
  %arrayidx41 = getelementptr inbounds [100 x [100 x i32]], ptr @arr, i64 0, i64 %idxprom40
  %idxprom42 = sext i32 %7 to i64
  %arrayidx43 = getelementptr inbounds [100 x i32], ptr %arrayidx41, i64 0, i64 %idxprom42
  %9 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %10 = load i32, ptr %min, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %9, %10
  br i1 %cmp44, label %if.then45, label %for.inc51

if.then45:                                        ; preds = %for.body39
  store i32 %9, ptr %min, align 4, !tbaa !5
  br label %for.inc51

for.inc51:                                        ; preds = %for.body39, %if.then45
  %inc52 = add nsw i32 %8, 1
  store i32 %inc52, ptr %j35, align 4, !tbaa !5
  br label %for.cond36, !llvm.loop !17

for.end53:                                        ; preds = %for.cond36
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j35) #10
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j54) #10
  store i32 0, ptr %j54, align 4, !tbaa !5
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc64, %for.end53
  %11 = load i32, ptr %j54, align 4, !tbaa !5
  %cmp56 = icmp slt i32 %11, %n
  br i1 %cmp56, label %for.inc64, label %for.inc67

for.inc64:                                        ; preds = %for.cond55
  %12 = load i32, ptr %min, align 4, !tbaa !5
  %idxprom59 = sext i32 %11 to i64
  %arrayidx60 = getelementptr inbounds [100 x [100 x i32]], ptr @arr, i64 0, i64 %idxprom59
  %idxprom61 = sext i32 %7 to i64
  %arrayidx62 = getelementptr inbounds [100 x i32], ptr %arrayidx60, i64 0, i64 %idxprom61
  %13 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %sub63 = sub nsw i32 %13, %12
  store i32 %sub63, ptr %arrayidx62, align 4, !tbaa !5
  %inc65 = add nsw i32 %11, 1
  store i32 %inc65, ptr %j54, align 4, !tbaa !5
  br label %for.cond55, !llvm.loop !18

for.inc67:                                        ; preds = %for.cond55
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j54) #10
  %inc68 = add nsw i32 %7, 1
  store i32 %inc68, ptr %i30, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !19

for.end69:                                        ; preds = %for.cond31
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i30) #10
  %14 = load i32, ptr getelementptr inbounds ([100 x i32], ptr getelementptr inbounds ([100 x [100 x i32]], ptr @arr, i64 0, i64 1), i64 0, i64 1), align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i70) #10
  store i32 2, ptr %i70, align 4, !tbaa !5
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc92, %for.end69
  %15 = load i32, ptr %i70, align 4, !tbaa !5
  %cmp72 = icmp slt i32 %15, %n
  br i1 %cmp72, label %for.body74, label %for.end94

for.body74:                                       ; preds = %for.cond71
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j75) #10
  store i32 0, ptr %j75, align 4, !tbaa !5
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc89, %for.body74
  %16 = load i32, ptr %j75, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %16, %n
  br i1 %cmp77, label %for.inc89, label %for.inc92

for.inc89:                                        ; preds = %for.cond76
  %idxprom80 = sext i32 %15 to i64
  %arrayidx81 = getelementptr inbounds [100 x [100 x i32]], ptr @arr, i64 0, i64 %idxprom80
  %idxprom82 = sext i32 %16 to i64
  %arrayidx83 = getelementptr inbounds [100 x i32], ptr %arrayidx81, i64 0, i64 %idxprom82
  %17 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %sub84 = sub nsw i32 %15, 1
  %idxprom85 = sext i32 %sub84 to i64
  %arrayidx86 = getelementptr inbounds [100 x [100 x i32]], ptr @arr, i64 0, i64 %idxprom85
  %arrayidx88 = getelementptr inbounds [100 x i32], ptr %arrayidx86, i64 0, i64 %idxprom82
  store i32 %17, ptr %arrayidx88, align 4, !tbaa !5
  %inc90 = add nsw i32 %16, 1
  store i32 %inc90, ptr %j75, align 4, !tbaa !5
  br label %for.cond76, !llvm.loop !20

for.inc92:                                        ; preds = %for.cond76
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j75) #10
  %inc93 = add nsw i32 %15, 1
  store i32 %inc93, ptr %i70, align 4, !tbaa !5
  br label %for.cond71, !llvm.loop !21

for.end94:                                        ; preds = %for.cond71
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i70) #10
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i95) #10
  store i32 2, ptr %i95, align 4, !tbaa !5
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc117, %for.end94
  %18 = load i32, ptr %i95, align 4, !tbaa !5
  %cmp97 = icmp slt i32 %18, %n
  br i1 %cmp97, label %for.body99, label %for.end119

for.body99:                                       ; preds = %for.cond96
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j100) #10
  store i32 0, ptr %j100, align 4, !tbaa !5
  br label %for.cond101

for.cond101:                                      ; preds = %for.inc114, %for.body99
  %19 = load i32, ptr %j100, align 4, !tbaa !5
  %cmp102 = icmp slt i32 %19, %n
  br i1 %cmp102, label %for.inc114, label %for.inc117

for.inc114:                                       ; preds = %for.cond101
  %idxprom105 = sext i32 %19 to i64
  %arrayidx106 = getelementptr inbounds [100 x [100 x i32]], ptr @arr, i64 0, i64 %idxprom105
  %idxprom107 = sext i32 %18 to i64
  %arrayidx108 = getelementptr inbounds [100 x i32], ptr %arrayidx106, i64 0, i64 %idxprom107
  %20 = load i32, ptr %arrayidx108, align 4, !tbaa !5
  %sub111 = sub nsw i32 %18, 1
  %idxprom112 = sext i32 %sub111 to i64
  %arrayidx113 = getelementptr inbounds [100 x i32], ptr %arrayidx106, i64 0, i64 %idxprom112
  store i32 %20, ptr %arrayidx113, align 4, !tbaa !5
  %inc115 = add nsw i32 %19, 1
  store i32 %inc115, ptr %j100, align 4, !tbaa !5
  br label %for.cond101, !llvm.loop !22

for.inc117:                                       ; preds = %for.cond101
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j100) #10
  %inc118 = add nsw i32 %18, 1
  store i32 %inc118, ptr %i95, align 4, !tbaa !5
  br label %for.cond96, !llvm.loop !23

for.end119:                                       ; preds = %for.cond96
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i95) #10
  %sub120 = sub nsw i32 %n, 1
  %call = call noundef i32 @_Z9down_casti(i32 noundef %sub120) #12
  %add = add nsw i32 %14, %call
  store i32 %add, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %min) #10
  br label %return

return:                                           ; preds = %for.end119, %if.then
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) local_unnamed_addr #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %__pf(ptr noundef nonnull align 8 dereferenceable(8) %this)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
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

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10matrix_outi(i32 noundef %n) local_unnamed_addr #3 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #10
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %n
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #10
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %1, %n
  br i1 %cmp2, label %for.inc, label %for.inc9

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @arr, i64 0, i64 %idxprom
  %idxprom5 = sext i32 %1 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef %2)
  %call7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call, ptr noundef nonnull dereferenceable(2) @.str)
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !27

for.inc9:                                         ; preds = %for.cond1
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %j) #10
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc10 = add nsw i32 %0, 1
  store i32 %inc10, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !28

for.end11:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %i) #10
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) local_unnamed_addr #5 {
entry:
  %tobool = icmp ne ptr %__s, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %vtable = load ptr, ptr %__out, align 8, !tbaa !24
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !26
  %add.ptr = getelementptr inbounds i8, ptr %__out, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %__s) #11
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret ptr %__out
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) local_unnamed_addr #5 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %__os)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) local_unnamed_addr #3 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !29
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
  call void @_ZSt16__throw_bad_castv() #13
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #3 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !47
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !53
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
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) local_unnamed_addr #3 align 2 {
entry:
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #11
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %__state) #11
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %call2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) local_unnamed_addr #7 comdat align 2 {
entry:
  %call = call i64 @strlen(ptr noundef %__s) #11
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) local_unnamed_addr #8 comdat {
entry:
  %or = or i32 %__a, %__b
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) local_unnamed_addr #7 align 2 {
entry:
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !54
  ret i32 %0
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) local_unnamed_addr #9

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { nofree nosync nounwind }
attributes #13 = { noreturn }

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
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11}
!29 = !{!30, !44, i64 240}
!30 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !31, i64 0, !41, i64 216, !7, i64 224, !42, i64 225, !43, i64 232, !44, i64 240, !45, i64 248, !46, i64 256}
!31 = !{!"_ZTSSt8ios_base", !32, i64 8, !32, i64 16, !33, i64 24, !34, i64 28, !34, i64 32, !35, i64 40, !37, i64 48, !7, i64 64, !6, i64 192, !38, i64 200, !39, i64 208}
!32 = !{!"long", !7, i64 0}
!33 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!34 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!35 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !36, i64 0}
!36 = !{!"any pointer", !7, i64 0}
!37 = !{!"_ZTSNSt8ios_base6_WordsE", !36, i64 0, !32, i64 8}
!38 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !36, i64 0}
!39 = !{!"_ZTSSt6locale", !40, i64 0}
!40 = !{!"p1 _ZTSNSt6locale5_ImplE", !36, i64 0}
!41 = !{!"p1 _ZTSSo", !36, i64 0}
!42 = !{!"bool", !7, i64 0}
!43 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !36, i64 0}
!44 = !{!"p1 _ZTSSt5ctypeIcE", !36, i64 0}
!45 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !36, i64 0}
!46 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !36, i64 0}
!47 = !{!48, !7, i64 56}
!48 = !{!"_ZTSSt5ctypeIcE", !49, i64 0, !50, i64 16, !42, i64 24, !51, i64 32, !51, i64 40, !52, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!49 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!50 = !{!"p1 _ZTS15__locale_struct", !36, i64 0}
!51 = !{!"p1 int", !36, i64 0}
!52 = !{!"p1 short", !36, i64 0}
!53 = !{!7, !7, i64 0}
!54 = !{!31, !34, i64 32}
