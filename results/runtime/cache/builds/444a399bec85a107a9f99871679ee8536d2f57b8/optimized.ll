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

$_ZNKSt5ctypeIcE5widenEc = comdat any

@n = dso_local global i32 0, align 4
@a = dso_local global [101 x [101 x i32]] zeroinitializer, align 16
@sum = dso_local global i32 0, align 4
@k = dso_local global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z7zerorowi(i32 noundef %k) #0 {
entry:
  %smax = call i32 @llvm.smax.i32(i32 %k, i32 0)
  %wide.trip.count19 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %k to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.inc29 ], [ 0, %entry ]
  %exitcond20.not = icmp eq i64 %indvars.iv16, %wide.trip.count19
  br i1 %exitcond20.not, label %for.end31, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv16
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.body5, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 1, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body5 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body5

for.body5:                                        ; preds = %for.cond2
  %arrayidx9 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv16, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  %tobool.not = icmp eq i32 %min.0, 0
  br i1 %tobool.not, label %for.inc29, label %for.cond17

for.cond17:                                       ; preds = %for.end, %for.inc25
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.inc25 ], [ 0, %for.end ]
  %exitcond15.not = icmp eq i64 %indvars.iv11, %wide.trip.count
  br i1 %exitcond15.not, label %for.inc29, label %for.inc25

for.inc25:                                        ; preds = %for.cond17
  %arrayidx24 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv16, i64 %indvars.iv11
  %2 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx24, align 4, !tbaa !5
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond17, !llvm.loop !12

for.inc29:                                        ; preds = %for.cond17, %for.end
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond, !llvm.loop !13

for.end31:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z7zerocoli(i32 noundef %k) #0 {
entry:
  %smax = call i32 @llvm.smax.i32(i32 %k, i32 0)
  %wide.trip.count19 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %k to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %entry
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.inc28 ], [ 0, %entry ]
  %exitcond20.not = icmp eq i64 %indvars.iv16, %wide.trip.count19
  br i1 %exitcond20.not, label %for.end30, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [101 x i32], ptr @a, i64 0, i64 %indvars.iv16
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 1, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body4

for.body4:                                        ; preds = %for.cond1
  %arrayidx8 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv, i64 %indvars.iv16
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !14

for.end:                                          ; preds = %for.cond1
  %tobool.not = icmp eq i32 %min.0, 0
  br i1 %tobool.not, label %for.inc28, label %for.cond16

for.cond16:                                       ; preds = %for.end, %for.inc24
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.inc24 ], [ 0, %for.end ]
  %exitcond15.not = icmp eq i64 %indvars.iv11, %wide.trip.count
  br i1 %exitcond15.not, label %for.inc28, label %for.inc24

for.inc24:                                        ; preds = %for.cond16
  %arrayidx23 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv11, i64 %indvars.iv16
  %2 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond16, !llvm.loop !15

for.inc28:                                        ; preds = %for.cond16, %for.end
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond, !llvm.loop !16

for.end30:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z4jiani(i32 noundef %k) #0 {
entry:
  %smax = call i32 @llvm.smax.i32(i32 %k, i32 2)
  %wide.trip.count12 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %k to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.inc11 ], [ 2, %entry ]
  %exitcond13.not = icmp eq i64 %indvars.iv8, %wide.trip.count12
  br i1 %exitcond13.not, label %for.cond15.preheader, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add nsw i64 %indvars.iv8, -1
  br label %for.cond1

for.cond15.preheader:                             ; preds = %for.cond
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %sub21 = add i32 %k, -1
  %smax17 = call i32 @llvm.smax.i32(i32 %sub21, i32 0)
  %smax24 = call i32 @llvm.smax.i32(i32 %1, i32 2)
  %wide.trip.count25 = zext nneg i32 %smax24 to i64
  %wide.trip.count18 = zext nneg i32 %smax17 to i64
  br label %for.cond15

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc11, label %for.inc

for.inc:                                          ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv8, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %arrayidx10 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %0, i64 %indvars.iv
  store i32 %2, ptr %arrayidx10, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !17

for.inc11:                                        ; preds = %for.cond1
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond, !llvm.loop !18

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc37
  %indvars.iv20 = phi i64 [ 2, %for.cond15.preheader ], [ %indvars.iv.next21, %for.inc37 ]
  %exitcond26.not = icmp eq i64 %indvars.iv20, %wide.trip.count25
  br i1 %exitcond26.not, label %for.end39, label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.cond15
  %3 = add nsw i64 %indvars.iv20, -1
  br label %for.cond20

for.cond20:                                       ; preds = %for.cond20.preheader, %for.inc34
  %indvars.iv14 = phi i64 [ 0, %for.cond20.preheader ], [ %indvars.iv.next15, %for.inc34 ]
  %exitcond19.not = icmp eq i64 %indvars.iv14, %wide.trip.count18
  br i1 %exitcond19.not, label %for.inc37, label %for.inc34

for.inc34:                                        ; preds = %for.cond20
  %arrayidx28 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv14, i64 %indvars.iv20
  %4 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %arrayidx33 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv14, i64 %3
  store i32 %4, ptr %arrayidx33, align 4, !tbaa !5
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond20, !llvm.loop !19

for.inc37:                                        ; preds = %for.cond20
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond15, !llvm.loop !20

for.end39:                                        ; preds = %for.cond15
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  br label %while.cond

while.cond:                                       ; preds = %for.end18, %entry
  %call1 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @a)
  %vtable = load ptr, ptr %call1, align 8, !tbaa !21
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !23
  %add.ptr = getelementptr inbounds i8, ptr %call1, i64 %vbase.offset
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 32
  %0 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !24
  %and.i.i.i = and i32 %0, 5
  %cmp.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.not.i, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr @sum, align 4, !tbaa !5
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %while.body
  %.pre13 = phi i32 [ %.pre1315, %for.inc10 ], [ %.pre, %while.body ]
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %for.inc10 ], [ 0, %while.body ]
  %1 = sext i32 %.pre13 to i64
  %cmp = icmp slt i64 %indvars.iv9, %1
  br i1 %cmp, label %for.cond3, label %for.cond13

for.cond3:                                        ; preds = %for.cond, %for.inc
  %.pre1315 = phi i32 [ %.pre1314, %for.inc ], [ %.pre13, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %2 = sext i32 %.pre1315 to i64
  %cmp4 = icmp slt i64 %indvars.iv, %2
  br i1 %cmp4, label %for.body6, label %for.inc10

for.body6:                                        ; preds = %for.cond3
  %3 = or i64 %indvars.iv, %indvars.iv9
  %4 = and i64 %3, 4294967295
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body6
  %arrayidx8 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv9, i64 %indvars.iv
  %call9 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %.pre12 = load i32, ptr @n, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body6, %if.then
  %.pre1314 = phi i32 [ %.pre1315, %for.body6 ], [ %.pre12, %if.then ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !35

for.inc10:                                        ; preds = %for.cond3
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %for.cond, !llvm.loop !36

for.cond13:                                       ; preds = %for.cond, %for.inc17
  %storemerge = phi i32 [ %dec, %for.inc17 ], [ %.pre13, %for.cond ]
  store i32 %storemerge, ptr @k, align 4, !tbaa !5
  %cmp14 = icmp sgt i32 %storemerge, 1
  br i1 %cmp14, label %for.inc17, label %for.end18

for.inc17:                                        ; preds = %for.cond13
  tail call void @_Z7zerorowi(i32 noundef %storemerge) #7
  %5 = load i32, ptr @k, align 4, !tbaa !5
  tail call void @_Z7zerocoli(i32 noundef %5) #7
  %6 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 408), align 8, !tbaa !5
  %7 = load i32, ptr @sum, align 4, !tbaa !5
  %add16 = add nsw i32 %7, %6
  store i32 %add16, ptr @sum, align 4, !tbaa !5
  %8 = load i32, ptr @k, align 4, !tbaa !5
  tail call void @_Z4jiani(i32 noundef %8) #7
  %9 = load i32, ptr @k, align 4, !tbaa !5
  %dec = add nsw i32 %9, -1
  br label %for.cond13, !llvm.loop !37

for.end18:                                        ; preds = %for.cond13
  %10 = load i32, ptr @sum, align 4, !tbaa !5
  %call19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %10)
  %vtable.i = load ptr, ptr %call19, align 8, !tbaa !21
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !23
  %add.ptr.i = getelementptr inbounds i8, ptr %call19, i64 %vbase.offset.i
  %call.i7 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call19, i8 noundef signext %call.i7)
  %call.i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %while.cond, !llvm.loop !38

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw i8, ptr %this, i64 240
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !39
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.then.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

if.then.i:                                        ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #8
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
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !47
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !53
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !21
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !23
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
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !8, i64 0}
!23 = !{}
!24 = !{!25, !28, i64 32}
!25 = !{!"_ZTSSt8ios_base", !26, i64 8, !26, i64 16, !27, i64 24, !28, i64 28, !28, i64 32, !29, i64 40, !31, i64 48, !7, i64 64, !6, i64 192, !32, i64 200, !33, i64 208}
!26 = !{!"long", !7, i64 0}
!27 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!28 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!29 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !30, i64 0}
!30 = !{!"any pointer", !7, i64 0}
!31 = !{!"_ZTSNSt8ios_base6_WordsE", !30, i64 0, !26, i64 8}
!32 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !30, i64 0}
!33 = !{!"_ZTSSt6locale", !34, i64 0}
!34 = !{!"p1 _ZTSNSt6locale5_ImplE", !30, i64 0}
!35 = distinct !{!35, !10, !11}
!36 = distinct !{!36, !10, !11}
!37 = distinct !{!37, !10, !11}
!38 = distinct !{!38, !10, !11}
!39 = !{!40, !44, i64 240}
!40 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !25, i64 0, !41, i64 216, !7, i64 224, !42, i64 225, !43, i64 232, !44, i64 240, !45, i64 248, !46, i64 256}
!41 = !{!"p1 _ZTSSo", !30, i64 0}
!42 = !{!"bool", !7, i64 0}
!43 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !30, i64 0}
!44 = !{!"p1 _ZTSSt5ctypeIcE", !30, i64 0}
!45 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !30, i64 0}
!46 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !30, i64 0}
!47 = !{!48, !7, i64 56}
!48 = !{!"_ZTSSt5ctypeIcE", !49, i64 0, !50, i64 16, !42, i64 24, !51, i64 32, !51, i64 40, !52, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!49 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!50 = !{!"p1 _ZTS15__locale_struct", !30, i64 0}
!51 = !{!"p1 int", !30, i64 0}
!52 = !{!"p1 short", !30, i64 0}
!53 = !{!7, !7, i64 0}
