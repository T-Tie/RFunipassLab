; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8_tg3zyz.cpp"
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
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %k.0 = phi i32 [ 1, %entry ], [ %inc17, %for.inc16 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %k.0, %0
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %i.0 = phi i32 [ 0, %for.body ], [ %inc11, %for.inc10 ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %i.0, %1
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %j.0, %2
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %idxprom7 = sext i32 %j.0 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %j.0, 1
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %i.0, 1
  br label %for.cond1, !llvm.loop !12

for.end12:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z3sumi(i32 noundef %1)
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call13)
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call14, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc16

for.inc16:                                        ; preds = %for.end12
  %inc17 = add nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !13

for.end18:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z3sumi(i32 noundef %n) local_unnamed_addr #3 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc25, %for.inc24 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 16, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %min.0 = phi i32 [ %0, %for.body ], [ %min.1, %for.inc ]
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp3 = icmp slt i32 %j.0, %n
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %idxprom7 = sext i32 %j.0 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
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
  br label %for.cond2, !llvm.loop !14

for.end:                                          ; preds = %for.cond2
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc21, %for.end
  %j.1 = phi i32 [ 0, %for.end ], [ %inc22, %for.inc21 ]
  %cmp15 = icmp slt i32 %j.1, %n
  br i1 %cmp15, label %for.body16, label %for.end23

for.body16:                                       ; preds = %for.cond14
  %idxprom19 = sext i32 %j.1 to i64
  %arrayidx20 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom19
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  br label %for.inc21

for.inc21:                                        ; preds = %for.body16
  %inc22 = add nsw i32 %j.1, 1
  br label %for.cond14, !llvm.loop !15

for.end23:                                        ; preds = %for.cond14
  br label %for.inc24

for.inc24:                                        ; preds = %for.end23
  %inc25 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !16

for.end26:                                        ; preds = %for.cond
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc60, %for.end26
  %j.2 = phi i32 [ 0, %for.end26 ], [ %inc61, %for.inc60 ]
  %cmp28 = icmp slt i32 %j.2, %n
  br i1 %cmp28, label %for.body29, label %for.end62

for.body29:                                       ; preds = %for.cond27
  %idxprom30 = sext i32 %j.2 to i64
  %arrayidx31 = getelementptr inbounds [100 x i32], ptr @a, i64 0, i64 %idxprom30
  %3 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc46, %for.body29
  %min.2 = phi i32 [ %3, %for.body29 ], [ %min.3, %for.inc46 ]
  %i.1 = phi i32 [ 0, %for.body29 ], [ %inc47, %for.inc46 ]
  %cmp33 = icmp slt i32 %i.1, %n
  br i1 %cmp33, label %for.body34, label %for.end48

for.body34:                                       ; preds = %for.cond32
  %idxprom35 = sext i32 %i.1 to i64
  %arrayidx36 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom35
  %arrayidx38 = getelementptr inbounds [100 x i32], ptr %arrayidx36, i64 0, i64 %idxprom30
  %4 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %4, %min.2
  br i1 %cmp39, label %if.then40, label %if.end45

if.then40:                                        ; preds = %for.body34
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %for.body34
  %min.3 = phi i32 [ %4, %if.then40 ], [ %min.2, %for.body34 ]
  br label %for.inc46

for.inc46:                                        ; preds = %if.end45
  %inc47 = add nsw i32 %i.1, 1
  br label %for.cond32, !llvm.loop !17

for.end48:                                        ; preds = %for.cond32
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc57, %for.end48
  %i.2 = phi i32 [ 0, %for.end48 ], [ %inc58, %for.inc57 ]
  %cmp50 = icmp slt i32 %i.2, %n
  br i1 %cmp50, label %for.body51, label %for.end59

for.body51:                                       ; preds = %for.cond49
  %idxprom52 = sext i32 %i.2 to i64
  %arrayidx53 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom52
  %arrayidx55 = getelementptr inbounds [100 x i32], ptr %arrayidx53, i64 0, i64 %idxprom30
  %5 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  %sub56 = sub nsw i32 %5, %min.2
  store i32 %sub56, ptr %arrayidx55, align 4, !tbaa !5
  br label %for.inc57

for.inc57:                                        ; preds = %for.body51
  %inc58 = add nsw i32 %i.2, 1
  br label %for.cond49, !llvm.loop !18

for.end59:                                        ; preds = %for.cond49
  br label %for.inc60

for.inc60:                                        ; preds = %for.end59
  %inc61 = add nsw i32 %j.2, 1
  br label %for.cond27, !llvm.loop !19

for.end62:                                        ; preds = %for.cond27
  %6 = load i32, ptr getelementptr inbounds ([100 x i32], ptr getelementptr inbounds ([100 x [100 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 1), align 4, !tbaa !5
  %cmp63 = icmp eq i32 %n, 2
  br i1 %cmp63, label %if.then64, label %if.else

if.then64:                                        ; preds = %for.end62
  br label %cleanup

if.else:                                          ; preds = %for.end62
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc83, %if.else
  %i.3 = phi i32 [ 2, %if.else ], [ %inc84, %for.inc83 ]
  %cmp66 = icmp slt i32 %i.3, %n
  br i1 %cmp66, label %for.body67, label %for.end85

for.body67:                                       ; preds = %for.cond65
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc80, %for.body67
  %j.3 = phi i32 [ 0, %for.body67 ], [ %inc81, %for.inc80 ]
  %cmp69 = icmp slt i32 %j.3, %n
  br i1 %cmp69, label %for.body70, label %for.end82

for.body70:                                       ; preds = %for.cond68
  %idxprom71 = sext i32 %i.3 to i64
  %arrayidx72 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom71
  %idxprom73 = sext i32 %j.3 to i64
  %arrayidx74 = getelementptr inbounds [100 x i32], ptr %arrayidx72, i64 0, i64 %idxprom73
  %7 = load i32, ptr %arrayidx74, align 4, !tbaa !5
  %sub75 = sub nsw i32 %i.3, 1
  %idxprom76 = sext i32 %sub75 to i64
  %arrayidx77 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom76
  %arrayidx79 = getelementptr inbounds [100 x i32], ptr %arrayidx77, i64 0, i64 %idxprom73
  store i32 %7, ptr %arrayidx79, align 4, !tbaa !5
  br label %for.inc80

for.inc80:                                        ; preds = %for.body70
  %inc81 = add nsw i32 %j.3, 1
  br label %for.cond68, !llvm.loop !20

for.end82:                                        ; preds = %for.cond68
  br label %for.inc83

for.inc83:                                        ; preds = %for.end82
  %inc84 = add nsw i32 %i.3, 1
  br label %for.cond65, !llvm.loop !21

for.end85:                                        ; preds = %for.cond65
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc104, %for.end85
  %j.4 = phi i32 [ 2, %for.end85 ], [ %inc105, %for.inc104 ]
  %cmp87 = icmp slt i32 %j.4, %n
  br i1 %cmp87, label %for.body88, label %for.end106

for.body88:                                       ; preds = %for.cond86
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc101, %for.body88
  %i.4 = phi i32 [ 0, %for.body88 ], [ %inc102, %for.inc101 ]
  %cmp90 = icmp slt i32 %i.4, %n
  br i1 %cmp90, label %for.body91, label %for.end103

for.body91:                                       ; preds = %for.cond89
  %idxprom92 = sext i32 %i.4 to i64
  %arrayidx93 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom92
  %idxprom94 = sext i32 %j.4 to i64
  %arrayidx95 = getelementptr inbounds [100 x i32], ptr %arrayidx93, i64 0, i64 %idxprom94
  %8 = load i32, ptr %arrayidx95, align 4, !tbaa !5
  %sub98 = sub nsw i32 %j.4, 1
  %idxprom99 = sext i32 %sub98 to i64
  %arrayidx100 = getelementptr inbounds [100 x i32], ptr %arrayidx93, i64 0, i64 %idxprom99
  store i32 %8, ptr %arrayidx100, align 4, !tbaa !5
  br label %for.inc101

for.inc101:                                       ; preds = %for.body91
  %inc102 = add nsw i32 %i.4, 1
  br label %for.cond89, !llvm.loop !22

for.end103:                                       ; preds = %for.cond89
  br label %for.inc104

for.inc104:                                       ; preds = %for.end103
  %inc105 = add nsw i32 %j.4, 1
  br label %for.cond86, !llvm.loop !23

for.end106:                                       ; preds = %for.cond86
  %sub107 = sub nsw i32 %n, 1
  %call = call noundef i32 @_Z3sumi(i32 noundef %sub107)
  %add = add nsw i32 %6, %call
  br label %cleanup

cleanup:                                          ; preds = %for.end106, %if.then64
  %retval.0 = phi i32 [ %6, %if.then64 ], [ %add, %for.end106 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) local_unnamed_addr #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %__pf(ptr noundef nonnull align 8 dereferenceable(8) %this)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %vtable = load ptr, ptr %__os, align 8, !tbaa !24
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %__os, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %__os, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !26
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
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !44
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !50
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !24
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8
  %call = call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
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
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !8, i64 0}
!26 = !{!27, !41, i64 240}
!27 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !28, i64 0, !38, i64 216, !7, i64 224, !39, i64 225, !40, i64 232, !41, i64 240, !42, i64 248, !43, i64 256}
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
!38 = !{!"p1 _ZTSSo", !33, i64 0}
!39 = !{!"bool", !7, i64 0}
!40 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !33, i64 0}
!41 = !{!"p1 _ZTSSt5ctypeIcE", !33, i64 0}
!42 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !33, i64 0}
!43 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !33, i64 0}
!44 = !{!45, !7, i64 56}
!45 = !{!"_ZTSSt5ctypeIcE", !46, i64 0, !47, i64 16, !39, i64 24, !48, i64 32, !48, i64 40, !49, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!46 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!47 = !{!"p1 _ZTS15__locale_struct", !33, i64 0}
!48 = !{!"p1 int", !33, i64 0}
!49 = !{!"p1 short", !33, i64 0}
!50 = !{!7, !7, i64 0}
