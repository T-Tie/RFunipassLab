; ModuleID = '<stdin>'
source_filename = "/tmp/tmp46iqo03u.cpp"
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

$_ZStanSt12_Ios_IostateS_ = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@n = dso_local global i32 0, align 4
@a = dso_local global [101 x [101 x i32]] zeroinitializer, align 16
@sum = dso_local local_unnamed_addr global i32 0, align 4
@k = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z7zerorowi(i32 noundef %k) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc30, %for.inc29 ]
  %cmp = icmp slt i32 %i.0, %k
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end31

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 1, %for.body ], [ %inc, %for.inc ]
  %min.0 = phi i32 [ %0, %for.body ], [ %min.1, %for.inc ]
  %cmp3 = icmp slt i32 %j.0, %k
  br i1 %cmp3, label %for.body5, label %for.cond.cleanup4

for.cond.cleanup4:                                ; preds = %for.cond2
  br label %for.end

for.body5:                                        ; preds = %for.cond2
  %idxprom8 = sext i32 %j.0 to i64
  %arrayidx9 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom8
  %1 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %1, %min.0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body5
  %min.1 = phi i32 [ %1, %if.then ], [ %min.0, %for.body5 ]
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup4
  %tobool = icmp ne i32 %min.0, 0
  br i1 %tobool, label %if.then15, label %if.end28

if.then15:                                        ; preds = %for.end
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc25, %if.then15
  %j16.0 = phi i32 [ 0, %if.then15 ], [ %inc26, %for.inc25 ]
  %cmp18 = icmp slt i32 %j16.0, %k
  br i1 %cmp18, label %for.body20, label %for.cond.cleanup19

for.cond.cleanup19:                               ; preds = %for.cond17
  br label %for.end27

for.body20:                                       ; preds = %for.cond17
  %idxprom23 = sext i32 %j16.0 to i64
  %arrayidx24 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom23
  %2 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx24, align 4, !tbaa !5
  br label %for.inc25

for.inc25:                                        ; preds = %for.body20
  %inc26 = add nsw i32 %j16.0, 1
  br label %for.cond17, !llvm.loop !12

for.end27:                                        ; preds = %for.cond.cleanup19
  br label %if.end28

if.end28:                                         ; preds = %for.end27, %for.end
  br label %for.inc29

for.inc29:                                        ; preds = %if.end28
  %inc30 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end31:                                        ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z7zerocoli(i32 noundef %k) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc29, %for.inc28 ]
  %cmp = icmp slt i32 %i.0, %k
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end30

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [101 x i32], ptr @a, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 1, %for.body ], [ %inc, %for.inc ]
  %min.0 = phi i32 [ %0, %for.body ], [ %min.1, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, %k
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  br label %for.end

for.body4:                                        ; preds = %for.cond1
  %idxprom5 = sext i32 %j.0 to i64
  %arrayidx6 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom5
  %arrayidx8 = getelementptr inbounds [101 x i32], ptr %arrayidx6, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %1, %min.0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  %min.1 = phi i32 [ %1, %if.then ], [ %min.0, %for.body4 ]
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !14

for.end:                                          ; preds = %for.cond.cleanup3
  %tobool = icmp ne i32 %min.0, 0
  br i1 %tobool, label %if.then14, label %if.end27

if.then14:                                        ; preds = %for.end
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc24, %if.then14
  %j15.0 = phi i32 [ 0, %if.then14 ], [ %inc25, %for.inc24 ]
  %cmp17 = icmp slt i32 %j15.0, %k
  br i1 %cmp17, label %for.body19, label %for.cond.cleanup18

for.cond.cleanup18:                               ; preds = %for.cond16
  br label %for.end26

for.body19:                                       ; preds = %for.cond16
  %idxprom20 = sext i32 %j15.0 to i64
  %arrayidx21 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom20
  %arrayidx23 = getelementptr inbounds [101 x i32], ptr %arrayidx21, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  br label %for.inc24

for.inc24:                                        ; preds = %for.body19
  %inc25 = add nsw i32 %j15.0, 1
  br label %for.cond16, !llvm.loop !15

for.end26:                                        ; preds = %for.cond.cleanup18
  br label %if.end27

if.end27:                                         ; preds = %for.end26, %for.end
  br label %for.inc28

for.inc28:                                        ; preds = %if.end27
  %inc29 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !16

for.end30:                                        ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z4jiani(i32 noundef %k) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %i.0 = phi i32 [ 2, %entry ], [ %inc12, %for.inc11 ]
  %cmp = icmp slt i32 %i.0, %k
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end13

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, %k
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  br label %for.end

for.body4:                                        ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom
  %idxprom5 = sext i32 %j.0 to i64
  %arrayidx6 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %0 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %sub = sub nsw i32 %i.0, 1
  %idxprom7 = sext i32 %sub to i64
  %arrayidx8 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom7
  %arrayidx10 = getelementptr inbounds [101 x i32], ptr %arrayidx8, i64 0, i64 %idxprom5
  store i32 %0, ptr %arrayidx10, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !17

for.end:                                          ; preds = %for.cond.cleanup3
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %inc12 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !18

for.end13:                                        ; preds = %for.cond.cleanup
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc37, %for.end13
  %j14.0 = phi i32 [ 2, %for.end13 ], [ %inc38, %for.inc37 ]
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %j14.0, %1
  br i1 %cmp16, label %for.body18, label %for.cond.cleanup17

for.cond.cleanup17:                               ; preds = %for.cond15
  br label %for.end39

for.body18:                                       ; preds = %for.cond15
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc34, %for.body18
  %i19.0 = phi i32 [ 0, %for.body18 ], [ %inc35, %for.inc34 ]
  %sub21 = sub nsw i32 %k, 1
  %cmp22 = icmp slt i32 %i19.0, %sub21
  br i1 %cmp22, label %for.body24, label %for.cond.cleanup23

for.cond.cleanup23:                               ; preds = %for.cond20
  br label %for.end36

for.body24:                                       ; preds = %for.cond20
  %idxprom25 = sext i32 %i19.0 to i64
  %arrayidx26 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom25
  %idxprom27 = sext i32 %j14.0 to i64
  %arrayidx28 = getelementptr inbounds [101 x i32], ptr %arrayidx26, i64 0, i64 %idxprom27
  %2 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %sub31 = sub nsw i32 %j14.0, 1
  %idxprom32 = sext i32 %sub31 to i64
  %arrayidx33 = getelementptr inbounds [101 x i32], ptr %arrayidx26, i64 0, i64 %idxprom32
  store i32 %2, ptr %arrayidx33, align 4, !tbaa !5
  br label %for.inc34

for.inc34:                                        ; preds = %for.body24
  %inc35 = add nsw i32 %i19.0, 1
  br label %for.cond20, !llvm.loop !19

for.end36:                                        ; preds = %for.cond.cleanup23
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %inc38 = add nsw i32 %j14.0, 1
  br label %for.cond15, !llvm.loop !20

for.end39:                                        ; preds = %for.cond.cleanup17
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  br label %while.cond

while.cond:                                       ; preds = %for.end18, %entry
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @a)
  %vtable = load ptr, ptr %call1, align 8, !tbaa !21
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call1, i64 %vbase.offset
  %call2 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr)
  br i1 %call2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr @sum, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %while.body
  %i.0 = phi i32 [ 0, %while.body ], [ %inc11, %for.inc10 ]
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end12

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %j.0, %1
  br i1 %cmp4, label %for.body6, label %for.cond.cleanup5

for.cond.cleanup5:                                ; preds = %for.cond3
  br label %for.end

for.body6:                                        ; preds = %for.cond3
  %add = add nsw i32 %i.0, %j.0
  %tobool = icmp ne i32 %add, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom
  %idxprom7 = sext i32 %j.0 to i64
  %arrayidx8 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1
  br label %for.cond3, !llvm.loop !23

for.end:                                          ; preds = %for.cond.cleanup5
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !24

for.end12:                                        ; preds = %for.cond.cleanup
  store i32 %0, ptr @k, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc17, %for.end12
  %2 = load i32, ptr @k, align 4, !tbaa !5
  %cmp14 = icmp sgt i32 %2, 1
  br i1 %cmp14, label %for.body15, label %for.end18

for.body15:                                       ; preds = %for.cond13
  call void @_Z7zerorowi(i32 noundef %2)
  %3 = load i32, ptr @k, align 4, !tbaa !5
  call void @_Z7zerocoli(i32 noundef %3)
  %4 = load i32, ptr getelementptr inbounds ([101 x i32], ptr getelementptr inbounds ([101 x [101 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 1), align 4, !tbaa !5
  %5 = load i32, ptr @sum, align 4, !tbaa !5
  %add16 = add nsw i32 %5, %4
  store i32 %add16, ptr @sum, align 4, !tbaa !5
  %6 = load i32, ptr @k, align 4, !tbaa !5
  call void @_Z4jiani(i32 noundef %6)
  br label %for.inc17

for.inc17:                                        ; preds = %for.body15
  %7 = load i32, ptr @k, align 4, !tbaa !5
  %dec = add nsw i32 %7, -1
  store i32 %dec, ptr @k, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !25

for.end18:                                        ; preds = %for.cond13
  %8 = load i32, ptr @sum, align 4, !tbaa !5
  %call19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call19, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define available_externally noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %this) local_unnamed_addr #3 align 2 {
entry:
  %call = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(ptr noundef nonnull align 8 dereferenceable(264) %this)
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) local_unnamed_addr #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %__pf(ptr noundef nonnull align 8 dereferenceable(8) %this)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %vtable = load ptr, ptr %__os, align 8, !tbaa !21
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %__os, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %__os, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: mustprogress uwtable
define available_externally noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(ptr noundef nonnull align 8 dereferenceable(264) %this) local_unnamed_addr #3 align 2 {
entry:
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this)
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef 1, i32 noundef 4)
  %call3 = call noundef i32 @_ZStanSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %call2)
  %cmp = icmp ne i32 %call3, 0
  ret i1 %cmp
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStanSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) local_unnamed_addr #5 comdat {
entry:
  %and = and i32 %__a, %__b
  ret i32 %and
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) local_unnamed_addr #0 align 2 {
entry:
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !27
  ret i32 %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) local_unnamed_addr #5 comdat {
entry:
  %or = or i32 %__a, %__b
  ret i32 %or
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) local_unnamed_addr #4 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %__os)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) local_unnamed_addr #3 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !38
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %__c)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) local_unnamed_addr #4 comdat {
entry:
  %tobool = icmp ne ptr %__f, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #3 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !46
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !52
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !21
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8
  %call = call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!22 = !{!"vtable pointer", !8, i64 0}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = !{!28, !31, i64 32}
!28 = !{!"_ZTSSt8ios_base", !29, i64 8, !29, i64 16, !30, i64 24, !31, i64 28, !31, i64 32, !32, i64 40, !34, i64 48, !7, i64 64, !6, i64 192, !35, i64 200, !36, i64 208}
!29 = !{!"long", !7, i64 0}
!30 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!31 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!32 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !33, i64 0}
!33 = !{!"any pointer", !7, i64 0}
!34 = !{!"_ZTSNSt8ios_base6_WordsE", !33, i64 0, !29, i64 8}
!35 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !33, i64 0}
!36 = !{!"_ZTSSt6locale", !37, i64 0}
!37 = !{!"p1 _ZTSNSt6locale5_ImplE", !33, i64 0}
!38 = !{!39, !43, i64 240}
!39 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !28, i64 0, !40, i64 216, !7, i64 224, !41, i64 225, !42, i64 232, !43, i64 240, !44, i64 248, !45, i64 256}
!40 = !{!"p1 _ZTSSo", !33, i64 0}
!41 = !{!"bool", !7, i64 0}
!42 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !33, i64 0}
!43 = !{!"p1 _ZTSSt5ctypeIcE", !33, i64 0}
!44 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !33, i64 0}
!45 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !33, i64 0}
!46 = !{!47, !7, i64 56}
!47 = !{!"_ZTSSt5ctypeIcE", !48, i64 0, !49, i64 16, !41, i64 24, !50, i64 32, !50, i64 40, !51, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!48 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!49 = !{!"p1 _ZTS15__locale_struct", !33, i64 0}
!50 = !{!"p1 int", !33, i64 0}
!51 = !{!"p1 short", !33, i64 0}
!52 = !{!7, !7, i64 0}
