; ModuleID = '<stdin>'
source_filename = "/tmp/tmpo5jsx3ul.cpp"
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

@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z3cuti(i32 noundef %t) local_unnamed_addr #0 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end127, %entry
  %accumulator.tr = phi i32 [ 0, %entry ], [ %add128, %for.end127 ]
  %t.tr = phi i32 [ %t, %entry ], [ %dec, %for.end127 ]
  %smax105 = tail call i32 @llvm.smax.i32(i32 %t.tr, i32 noundef 0)
  %wide.trip.count75 = zext nneg i32 %smax105 to i64
  %wide.trip.count = zext i32 %t.tr to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %tailrecurse
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.inc25 ], [ 0, %tailrecurse ]
  %exitcond76.not = icmp eq i64 %indvars.iv72, %wide.trip.count75
  br i1 %exitcond76.not, label %for.cond28, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %s.0 = phi i32 [ %spec.select, %for.body3 ], [ 9999, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond11.preheader, label %for.body3

for.cond11.preheader:                             ; preds = %for.cond1
  br label %for.cond11

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv72, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx5, align 4, !tbaa !5, !invariant.load !9
  %spec.select = tail call i32 @llvm.smin.i32(i32 %0, i32 %s.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !10

for.cond11:                                       ; preds = %for.cond11.preheader, %for.inc22
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %for.inc22 ], [ 0, %for.cond11.preheader ]
  %exitcond71.not = icmp eq i64 %indvars.iv67, %wide.trip.count
  br i1 %exitcond71.not, label %for.inc25, label %for.inc22

for.inc22:                                        ; preds = %for.cond11
  %arrayidx17 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv72, i64 %indvars.iv67
  %1 = load i32, ptr %arrayidx17, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %1, %s.0
  store i32 %sub, ptr %arrayidx17, align 4, !tbaa !5
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  br label %for.cond11, !llvm.loop !13

for.inc25:                                        ; preds = %for.cond11
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond, !llvm.loop !14

for.cond28:                                       ; preds = %for.cond, %for.inc63
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %for.inc63 ], [ 0, %for.cond ]
  %exitcond92.not = icmp eq i64 %indvars.iv87, %wide.trip.count75
  br i1 %exitcond92.not, label %for.end65, label %for.cond31

for.cond31:                                       ; preds = %for.cond28, %for.body33
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.body33 ], [ 0, %for.cond28 ]
  %s.2 = phi i32 [ %spec.select65, %for.body33 ], [ 9999, %for.cond28 ]
  %exitcond81.not = icmp eq i64 %indvars.iv77, %wide.trip.count
  br i1 %exitcond81.not, label %for.cond48.preheader, label %for.body33

for.cond48.preheader:                             ; preds = %for.cond31
  br label %for.cond48

for.body33:                                       ; preds = %for.cond31
  %arrayidx37 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv77, i64 %indvars.iv87
  %2 = load i32, ptr %arrayidx37, align 4, !tbaa !5, !invariant.load !9
  %spec.select65 = tail call i32 @llvm.smin.i32(i32 %2, i32 %s.2)
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  br label %for.cond31, !llvm.loop !15

for.cond48:                                       ; preds = %for.cond48.preheader, %for.inc60
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %for.inc60 ], [ 0, %for.cond48.preheader ]
  %exitcond86.not = icmp eq i64 %indvars.iv82, %wide.trip.count
  br i1 %exitcond86.not, label %for.inc63, label %for.inc60

for.inc60:                                        ; preds = %for.cond48
  %arrayidx54 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv82, i64 %indvars.iv87
  %3 = load i32, ptr %arrayidx54, align 4, !tbaa !5, !invariant.load !9
  %sub55 = sub nsw i32 %3, %s.2
  store i32 %sub55, ptr %arrayidx54, align 4, !tbaa !5
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %for.cond48, !llvm.loop !16

for.inc63:                                        ; preds = %for.cond48
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  br label %for.cond28, !llvm.loop !17

for.end65:                                        ; preds = %for.cond28
  %dec = add nsw i32 %t.tr, -1
  %cmp66 = icmp eq i32 %dec, 1
  %4 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  br i1 %cmp66, label %if.then67, label %for.cond69

if.then67:                                        ; preds = %for.end65
  %accumulator.ret.tr = add nsw i32 %4, %accumulator.tr
  ret i32 %accumulator.ret.tr

for.cond69:                                       ; preds = %for.end65, %for.inc125
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %for.inc125 ], [ 0, %for.end65 ]
  %exitcond107.not = icmp eq i64 %indvars.iv100, %wide.trip.count75
  br i1 %exitcond107.not, label %for.end127, label %for.cond72.preheader

for.cond72.preheader:                             ; preds = %for.cond69
  %5 = add nsw i64 %indvars.iv100, -1
  %6 = trunc nuw nsw i64 %indvars.iv100 to i32
  br label %for.cond72

for.cond72:                                       ; preds = %for.cond72.preheader, %for.inc122
  %indvars.iv93 = phi i64 [ 0, %for.cond72.preheader ], [ %indvars.iv.next94, %for.inc122 ]
  %exitcond99.not = icmp eq i64 %indvars.iv93, %wide.trip.count
  br i1 %exitcond99.not, label %for.inc125, label %for.body75

for.body75:                                       ; preds = %for.cond72
  switch i32 %6, label %lor.lhs.false.thread [
    i32 0, label %land.lhs.true
    i32 1, label %for.inc122
  ]

land.lhs.true:                                    ; preds = %for.body75
  %switch = icmp samesign ult i64 %indvars.iv93, 2
  br i1 %switch, label %for.inc122, label %for.inc122.gvnsink.split

lor.lhs.false.thread:                             ; preds = %for.body75
  %7 = trunc nuw nsw i64 %indvars.iv93 to i32
  switch i32 %7, label %for.inc122.gvnsink.split [
    i32 1, label %for.inc122
    i32 0, label %if.then97
  ]

if.then97:                                        ; preds = %lor.lhs.false.thread
  %arrayidx101 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv100, i64 %indvars.iv93
  %8 = load i32, ptr %arrayidx101, align 4, !tbaa !5, !invariant.load !9
  %arrayidx106 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %5, i64 %indvars.iv93
  store i32 %8, ptr %arrayidx106, align 4, !tbaa !5
  br label %for.inc122

for.inc122.gvnsink.split:                         ; preds = %lor.lhs.false.thread, %land.lhs.true
  %indvars.iv100.sink = phi i64 [ %indvars.iv100, %land.lhs.true ], [ %5, %lor.lhs.false.thread ]
  %arrayidx89 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv100, i64 %indvars.iv93
  %9 = load i32, ptr %arrayidx89, align 4, !tbaa !5, !invariant.load !9
  %10 = add nsw i64 %indvars.iv93, -1
  %arrayidx94 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv100.sink, i64 %10
  store i32 %9, ptr %arrayidx94, align 4, !tbaa !5
  br label %for.inc122

for.inc122:                                       ; preds = %for.inc122.gvnsink.split, %land.lhs.true, %lor.lhs.false.thread, %for.body75, %if.then97
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  br label %for.cond72, !llvm.loop !18

for.inc125:                                       ; preds = %for.cond72
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  br label %for.cond69, !llvm.loop !19

for.end127:                                       ; preds = %for.cond69
  %add128 = add nsw i32 %4, %accumulator.tr
  br label %tailrecurse
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc33, %for.inc32 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.cond1.preheader, label %for.end34

for.cond1.preheader:                              ; preds = %for.cond
  %wide.trip.count17 = zext i32 %0 to i64
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc9
  %indvars.iv14 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next15, %for.inc9 ]
  %exitcond18.not = icmp eq i64 %indvars.iv14, %wide.trip.count17
  br i1 %exitcond18.not, label %for.cond12, label %for.cond4

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count17
  br i1 %exitcond.not, label %for.inc9, label %for.inc

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv14, i64 %indvars.iv
  store i32 0, ptr %arrayidx8, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !20

for.inc9:                                         ; preds = %for.cond4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond1, !llvm.loop !21

for.cond12:                                       ; preds = %for.cond1, %for.inc26
  %1 = phi i32 [ %3, %for.inc26 ], [ %0, %for.cond1 ]
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.inc26 ], [ 0, %for.cond1 ]
  %2 = sext i32 %1 to i64
  %cmp13 = icmp slt i64 %indvars.iv22, %2
  br i1 %cmp13, label %for.cond15, label %for.inc32

for.cond15:                                       ; preds = %for.cond12, %for.inc23
  %3 = phi i32 [ %.pre, %for.inc23 ], [ %1, %for.cond12 ]
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.inc23 ], [ 0, %for.cond12 ]
  %4 = sext i32 %3 to i64
  %cmp16 = icmp slt i64 %indvars.iv19, %4
  br i1 %cmp16, label %for.inc23, label %for.inc26

for.inc23:                                        ; preds = %for.cond15
  %arrayidx21 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv22, i64 %indvars.iv19
  %call22 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx21)
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !22

for.inc26:                                        ; preds = %for.cond15
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond12, !llvm.loop !23

for.inc32:                                        ; preds = %for.cond12
  %call29 = call noundef i32 @_Z3cuti(i32 noundef %1) #8
  %call30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call29)
  %vtable.i = load ptr, ptr %call30, align 8, !tbaa !24, !invariant.load !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !9
  %add.ptr.i = getelementptr inbounds i8, ptr %call30, i64 %vbase.offset.i
  %call.i1 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call30, i8 noundef signext %call.i1)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc33 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !26

for.end34:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) local_unnamed_addr #4 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw i8, ptr %this, i64 240
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !27, !invariant.load !9
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.then.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

if.then.i:                                        ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #9
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit:    ; preds = %entry
  %call2 = tail call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %0, i8 noundef signext %__c)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #4 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !45, !invariant.load !9
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !51, !invariant.load !9
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !24, !invariant.load !9
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !9
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
!21 = distinct !{!21, !11, !12}
!22 = distinct !{!22, !11, !12}
!23 = distinct !{!23, !11, !12}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !8, i64 0}
!26 = distinct !{!26, !11, !12}
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
