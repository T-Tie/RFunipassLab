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

$_ZNKSt5ctypeIcE5widenEc = comdat any

@i = dso_local global i32 0, align 4
@j = dso_local global i32 0, align 4
@k = dso_local global i32 0, align 4
@l = dso_local global i32 0, align 4
@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z4xiaoi(i32 noundef %n) #0 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end100, %entry
  %indvars.iv24.in = phi i32 [ %indvars.iv24, %for.end100 ], [ %n, %entry ]
  %accumulator.tr = phi i32 [ %add102, %for.end100 ], [ 0, %entry ]
  %smax50 = tail call i32 @llvm.smax.i32(i32 %indvars.iv24.in, i32 noundef 0)
  %wide.trip.count35 = zext nneg i32 %smax50 to i64
  %wide.trip.count = zext i32 %indvars.iv24.in to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %tailrecurse
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.inc24 ], [ 0, %tailrecurse ]
  %exitcond36.not = icmp eq i64 %indvars.iv32, %wide.trip.count35
  br i1 %exitcond36.not, label %for.cond27, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv32
  %0 = load i32, ptr %arrayidx, align 16, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 1, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14.preheader, label %for.body4

for.cond14.preheader:                             ; preds = %for.cond2
  br label %for.cond14

for.body4:                                        ; preds = %for.cond2
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv32, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc21
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.inc21 ], [ 0, %for.cond14.preheader ]
  %exitcond31.not = icmp eq i64 %indvars.iv27, %wide.trip.count
  br i1 %exitcond31.not, label %for.inc24, label %for.inc21

for.inc21:                                        ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv32, i64 %indvars.iv27
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond14, !llvm.loop !12

for.inc24:                                        ; preds = %for.cond14
  store i32 %indvars.iv24.in, ptr @k, align 4, !tbaa !5
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond, !llvm.loop !13

for.cond27:                                       ; preds = %for.cond, %for.inc62
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.inc62 ], [ 0, %for.cond ]
  %exitcond52.not = icmp eq i64 %indvars.iv47, %wide.trip.count35
  br i1 %exitcond52.not, label %for.end64, label %for.body29

for.body29:                                       ; preds = %for.cond27
  %arrayidx31 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv47
  %3 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  br label %for.cond32

for.cond32:                                       ; preds = %for.body34, %for.body29
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.body34 ], [ 1, %for.body29 ]
  %min.1 = phi i32 [ %spec.select16, %for.body34 ], [ %3, %for.body29 ]
  %exitcond41.not = icmp eq i64 %indvars.iv37, %wide.trip.count
  br i1 %exitcond41.not, label %for.cond51.preheader, label %for.body34

for.cond51.preheader:                             ; preds = %for.cond32
  br label %for.cond51

for.body34:                                       ; preds = %for.cond32
  %arrayidx38 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv37, i64 %indvars.iv47
  %4 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %spec.select16 = tail call i32 @llvm.smin.i32(i32 %4, i32 %min.1)
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond32, !llvm.loop !14

for.cond51:                                       ; preds = %for.cond51.preheader, %for.inc59
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.inc59 ], [ 0, %for.cond51.preheader ]
  %exitcond46.not = icmp eq i64 %indvars.iv42, %wide.trip.count
  br i1 %exitcond46.not, label %for.inc62, label %for.inc59

for.inc59:                                        ; preds = %for.cond51
  %arrayidx57 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv42, i64 %indvars.iv47
  %5 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %sub58 = sub nsw i32 %5, %min.1
  store i32 %sub58, ptr %arrayidx57, align 4, !tbaa !5
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond51, !llvm.loop !15

for.inc62:                                        ; preds = %for.cond51
  store i32 %indvars.iv24.in, ptr @k, align 4, !tbaa !5
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond27, !llvm.loop !16

for.end64:                                        ; preds = %for.cond27
  %indvars.iv24 = add i32 %indvars.iv24.in, -1
  %smax61 = tail call i32 @llvm.smax.i32(i32 %indvars.iv24, i32 noundef 1)
  %6 = zext i32 %indvars.iv24 to i64
  %cmp65 = icmp eq i32 %indvars.iv24.in, 2
  br i1 %cmp65, label %if.then, label %if.end

if.then:                                          ; preds = %for.end64
  store i32 2, ptr @j, align 4, !tbaa !5
  %7 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  %accumulator.ret.tr = add nsw i32 %7, %accumulator.tr
  ret i32 %accumulator.ret.tr

if.end:                                           ; preds = %for.end64
  %8 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  %wide.trip.count62 = zext nneg i32 %smax61 to i64
  br label %for.cond66

for.cond66:                                       ; preds = %for.cond81, %if.end
  %indvars.iv58 = phi i64 [ 1, %if.end ], [ %indvars.iv.next59, %for.cond81 ]
  %exitcond63.not = icmp eq i64 %indvars.iv58, %wide.trip.count62
  br i1 %exitcond63.not, label %for.end100, label %for.body69

for.body69:                                       ; preds = %for.cond66
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %arrayidx71 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv.next59
  %9 = load i32, ptr %arrayidx71, align 4, !tbaa !5
  %arrayidx73 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv58
  store i32 %9, ptr %arrayidx73, align 4, !tbaa !5
  %arrayidx76 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv.next59
  %10 = load i32, ptr %arrayidx76, align 16, !tbaa !5
  %arrayidx79 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv58
  store i32 %10, ptr %arrayidx79, align 16, !tbaa !5
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc95, %for.body69
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.inc95 ], [ 1, %for.body69 ]
  %exitcond57.not = icmp eq i64 %indvars.iv53, %6
  br i1 %exitcond57.not, label %for.cond66, label %for.inc95, !llvm.loop !17

for.inc95:                                        ; preds = %for.cond81
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %arrayidx90 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv.next59, i64 %indvars.iv.next54
  %11 = load i32, ptr %arrayidx90, align 4, !tbaa !5
  %arrayidx94 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv58, i64 %indvars.iv53
  store i32 %11, ptr %arrayidx94, align 4, !tbaa !5
  br label %for.cond81, !llvm.loop !18

for.end100:                                       ; preds = %for.cond66
  store i32 %smax61, ptr @i, align 4, !tbaa !5
  %add102 = add nsw i32 %8, %accumulator.tr
  br label %tailrecurse
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %n = alloca i32, align 4
  %result = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %result) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc17, %for.inc16 ]
  store i32 %storemerge, ptr @l, align 4, !tbaa !5
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %storemerge, %0
  br i1 %cmp, label %for.cond1, label %for.cond19

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %2, %for.inc10 ], [ %0, %for.cond ]
  %storemerge3 = phi i32 [ %inc11, %for.inc10 ], [ 0, %for.cond ]
  store i32 %storemerge3, ptr @j, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %storemerge3, %1
  br i1 %cmp2, label %for.cond4, label %for.inc16

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %2 = phi i32 [ %.pre5, %for.inc ], [ %1, %for.cond1 ]
  %storemerge4 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond1 ]
  store i32 %storemerge4, ptr @k, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %storemerge4, %2
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %3 = load i32, ptr @j, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %idxprom7 = sext i32 %storemerge4 to i64
  %arrayidx8 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %4 = load i32, ptr @k, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  %.pre5 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !19

for.inc10:                                        ; preds = %for.cond4
  %5 = load i32, ptr @j, align 4, !tbaa !5
  %inc11 = add nsw i32 %5, 1
  br label %for.cond1, !llvm.loop !20

for.inc16:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z4xiaoi(i32 noundef %1) #8
  %6 = load i32, ptr @l, align 4, !tbaa !5
  %idxprom14 = sext i32 %6 to i64
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %result, i64 0, i64 %idxprom14
  store i32 %call13, ptr %arrayidx15, align 4, !tbaa !5
  %inc17 = add nsw i32 %6, 1
  br label %for.cond, !llvm.loop !21

for.cond19:                                       ; preds = %for.cond, %for.inc26
  %7 = phi i32 [ %.pre, %for.inc26 ], [ %0, %for.cond ]
  %storemerge2 = phi i32 [ %inc27, %for.inc26 ], [ 0, %for.cond ]
  store i32 %storemerge2, ptr @l, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %storemerge2, %7
  br i1 %cmp20, label %for.inc26, label %for.end28

for.inc26:                                        ; preds = %for.cond19
  %idxprom22 = sext i32 %storemerge2 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %result, i64 0, i64 %idxprom22
  %8 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  %vtable.i = load ptr, ptr %call24, align 8, !tbaa !22
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !24
  %add.ptr.i = getelementptr inbounds i8, ptr %call24, i64 %vbase.offset.i
  %call.i1 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call24, i8 noundef signext %call.i1)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %9 = load i32, ptr @l, align 4, !tbaa !5
  %inc27 = add nsw i32 %9, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !25

for.end28:                                        ; preds = %for.cond19
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %result) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw i8, ptr %this, i64 240
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !26
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.then.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

if.then.i:                                        ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #9
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit:    ; preds = %entry
  %call2 = tail call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %0, i8 noundef signext %__c)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #4 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !44
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !50
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !22
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !24
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

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
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !8, i64 0}
!24 = !{}
!25 = distinct !{!25, !10, !11}
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
