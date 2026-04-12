; ModuleID = '<stdin>'
source_filename = "/tmp/tmpcupr7ntm.cpp"
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

@i = dso_local local_unnamed_addr global i32 0, align 4
@j = dso_local local_unnamed_addr global i32 0, align 4
@k = dso_local local_unnamed_addr global i32 0, align 4
@l = dso_local local_unnamed_addr global i32 0, align 4
@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z4xiaoi(i32 noundef %n) local_unnamed_addr #0 {
entry:
  store i32 0, ptr @j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %0 = load i32, ptr @j, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %n
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 16, !tbaa !5
  store i32 1, ptr @k, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %min.0 = phi i32 [ %1, %for.body ], [ %cond, %for.inc ]
  %2 = load i32, ptr @k, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %2, %n
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %idxprom7 = sext i32 %2 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %3 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %3, %min.0
  br i1 %cmp9, label %for.inc, label %cond.false

cond.false:                                       ; preds = %for.body4
  br label %for.inc

for.inc:                                          ; preds = %for.body4, %cond.false
  %cond = phi i32 [ %min.0, %cond.false ], [ %3, %for.body4 ]
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @k, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  store i32 0, ptr @k, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc21, %for.end
  %4 = load i32, ptr @k, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %4, %n
  br i1 %cmp15, label %for.inc21, label %for.inc24

for.inc21:                                        ; preds = %for.cond14
  %idxprom19 = sext i32 %4 to i64
  %arrayidx20 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom19
  %5 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %sub = sub nsw i32 %5, %min.0
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %inc22 = add nsw i32 %4, 1
  store i32 %inc22, ptr @k, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !12

for.inc24:                                        ; preds = %for.cond14
  %inc25 = add nsw i32 %0, 1
  store i32 %inc25, ptr @j, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end26:                                        ; preds = %for.cond
  store i32 0, ptr @j, align 4, !tbaa !5
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc62, %for.end26
  %6 = load i32, ptr @j, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %6, %n
  br i1 %cmp28, label %for.body29, label %for.end64

for.body29:                                       ; preds = %for.cond27
  %idxprom30 = sext i32 %6 to i64
  %arrayidx31 = getelementptr inbounds [100 x i32], ptr @a, i64 0, i64 %idxprom30
  %7 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  store i32 1, ptr @k, align 4, !tbaa !5
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc48, %for.body29
  %min.1 = phi i32 [ %7, %for.body29 ], [ %cond47, %for.inc48 ]
  %8 = load i32, ptr @k, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %8, %n
  br i1 %cmp33, label %for.body34, label %for.end50

for.body34:                                       ; preds = %for.cond32
  %idxprom35 = sext i32 %8 to i64
  %arrayidx36 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom35
  %arrayidx38 = getelementptr inbounds [100 x i32], ptr %arrayidx36, i64 0, i64 %idxprom30
  %9 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %9, %min.1
  br i1 %cmp39, label %for.inc48, label %cond.false45

cond.false45:                                     ; preds = %for.body34
  br label %for.inc48

for.inc48:                                        ; preds = %for.body34, %cond.false45
  %cond47 = phi i32 [ %min.1, %cond.false45 ], [ %9, %for.body34 ]
  %inc49 = add nsw i32 %8, 1
  store i32 %inc49, ptr @k, align 4, !tbaa !5
  br label %for.cond32, !llvm.loop !14

for.end50:                                        ; preds = %for.cond32
  store i32 0, ptr @k, align 4, !tbaa !5
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc59, %for.end50
  %10 = load i32, ptr @k, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %10, %n
  br i1 %cmp52, label %for.inc59, label %for.inc62

for.inc59:                                        ; preds = %for.cond51
  %idxprom54 = sext i32 %10 to i64
  %arrayidx55 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom54
  %arrayidx57 = getelementptr inbounds [100 x i32], ptr %arrayidx55, i64 0, i64 %idxprom30
  %11 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %sub58 = sub nsw i32 %11, %min.1
  store i32 %sub58, ptr %arrayidx57, align 4, !tbaa !5
  %inc60 = add nsw i32 %10, 1
  store i32 %inc60, ptr @k, align 4, !tbaa !5
  br label %for.cond51, !llvm.loop !15

for.inc62:                                        ; preds = %for.cond51
  %inc63 = add nsw i32 %6, 1
  store i32 %inc63, ptr @j, align 4, !tbaa !5
  br label %for.cond27, !llvm.loop !16

for.end64:                                        ; preds = %for.cond27
  %cmp65 = icmp eq i32 %n, 2
  br i1 %cmp65, label %if.then, label %if.end

if.then:                                          ; preds = %for.end64
  %12 = load i32, ptr getelementptr inbounds ([100 x i32], ptr getelementptr inbounds ([100 x [100 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 1), align 4, !tbaa !5
  br label %cleanup

if.end:                                           ; preds = %for.end64
  %13 = load i32, ptr getelementptr inbounds ([100 x i32], ptr getelementptr inbounds ([100 x [100 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 1), align 4, !tbaa !5
  store i32 1, ptr @i, align 4, !tbaa !5
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc98, %if.end
  %14 = load i32, ptr @i, align 4, !tbaa !5
  %sub67 = sub nsw i32 %n, 1
  %cmp68 = icmp slt i32 %14, %sub67
  br i1 %cmp68, label %for.body69, label %for.end100

for.body69:                                       ; preds = %for.cond66
  %add = add nsw i32 %14, 1
  %idxprom70 = sext i32 %add to i64
  %arrayidx71 = getelementptr inbounds [100 x i32], ptr @a, i64 0, i64 %idxprom70
  %15 = load i32, ptr %arrayidx71, align 4, !tbaa !5
  %idxprom72 = sext i32 %14 to i64
  %arrayidx73 = getelementptr inbounds [100 x i32], ptr @a, i64 0, i64 %idxprom72
  store i32 %15, ptr %arrayidx73, align 4, !tbaa !5
  %arrayidx76 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom70
  %16 = load i32, ptr %arrayidx76, align 16, !tbaa !5
  %arrayidx79 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom72
  store i32 %16, ptr %arrayidx79, align 16, !tbaa !5
  store i32 1, ptr @j, align 4, !tbaa !5
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc95, %for.body69
  %17 = load i32, ptr @j, align 4, !tbaa !5
  %cmp83 = icmp slt i32 %17, %sub67
  br i1 %cmp83, label %for.inc95, label %for.inc98

for.inc95:                                        ; preds = %for.cond81
  %add88 = add nsw i32 %17, 1
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds [100 x i32], ptr %arrayidx76, i64 0, i64 %idxprom89
  %18 = load i32, ptr %arrayidx90, align 4, !tbaa !5
  %idxprom93 = sext i32 %17 to i64
  %arrayidx94 = getelementptr inbounds [100 x i32], ptr %arrayidx79, i64 0, i64 %idxprom93
  store i32 %18, ptr %arrayidx94, align 4, !tbaa !5
  store i32 %add88, ptr @j, align 4, !tbaa !5
  br label %for.cond81, !llvm.loop !17

for.inc98:                                        ; preds = %for.cond81
  store i32 %add, ptr @i, align 4, !tbaa !5
  br label %for.cond66, !llvm.loop !18

for.end100:                                       ; preds = %for.cond66
  %call = call noundef i32 @_Z4xiaoi(i32 noundef %sub67) #7
  %add102 = add nsw i32 %13, %call
  br label %cleanup

cleanup:                                          ; preds = %for.end100, %if.then
  %retval.0 = phi i32 [ %12, %if.then ], [ %add102, %for.end100 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %result = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #8
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef %result) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 0, ptr @l, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %0 = load i32, ptr @l, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  store i32 0, ptr @j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %2 = load i32, ptr @j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.inc16

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr @k, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr @k, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %6 = load i32, ptr @j, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %7 = load i32, ptr @k, align 4, !tbaa !5
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr @k, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !19

for.inc10:                                        ; preds = %for.cond4
  %8 = load i32, ptr @j, align 4, !tbaa !5
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, ptr @j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !20

for.inc16:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z4xiaoi(i32 noundef %3) #9
  %9 = load i32, ptr @l, align 4, !tbaa !5
  %idxprom14 = sext i32 %9 to i64
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %result, i64 0, i64 %idxprom14
  store i32 %call13, ptr %arrayidx15, align 4, !tbaa !5
  %inc17 = add nsw i32 %9, 1
  store i32 %inc17, ptr @l, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !21

for.end18:                                        ; preds = %for.cond
  store i32 0, ptr @l, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc26, %for.end18
  %10 = load i32, ptr @l, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %10, %11
  br i1 %cmp20, label %for.inc26, label %for.end28

for.inc26:                                        ; preds = %for.cond19
  %idxprom22 = sext i32 %10 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %result, i64 0, i64 %idxprom22
  %12 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %12)
  %call25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call24, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %13 = load i32, ptr @l, align 4, !tbaa !5
  %inc27 = add nsw i32 %13, 1
  store i32 %inc27, ptr @l, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !22

for.end28:                                        ; preds = %for.cond19
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef %result) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #9
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

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
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !23
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !31
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !32
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !34
  %call = call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

attributes #0 = { mustprogress nofree nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
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
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = !{!24, !7, i64 56}
!24 = !{!"_ZTSSt5ctypeIcE", !25, i64 0, !26, i64 16, !28, i64 24, !29, i64 32, !29, i64 40, !30, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!25 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!26 = !{!"p1 _ZTS15__locale_struct", !27, i64 0}
!27 = !{!"any pointer", !7, i64 0}
!28 = !{!"bool", !7, i64 0}
!29 = !{!"p1 int", !27, i64 0}
!30 = !{!"p1 short", !27, i64 0}
!31 = !{!7, !7, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"vtable pointer", !8, i64 0}
!34 = !{}
