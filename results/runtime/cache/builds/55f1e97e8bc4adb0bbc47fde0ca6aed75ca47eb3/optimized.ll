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

$_ZNKSt5ctypeIcE5widenEc = comdat any

@sum = dso_local global i32 0, align 4
@a = dso_local global [101 x [101 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z7guilingi(i32 noundef %n) #0 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 noundef %n, i32 noundef 0)
  %wide.trip.count46 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %entry
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.inc28 ], [ 0, %entry ]
  %exitcond47.not = icmp eq i64 %indvars.iv43, %wide.trip.count46
  br i1 %exitcond47.not, label %for.cond31, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv43
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 1, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14.preheader, label %for.body4

for.cond14.preheader:                             ; preds = %for.cond2
  br label %for.cond14

for.body4:                                        ; preds = %for.cond2
  %arrayidx8 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv43, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc25
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.inc25 ], [ 0, %for.cond14.preheader ]
  %exitcond42.not = icmp eq i64 %indvars.iv38, %wide.trip.count
  br i1 %exitcond42.not, label %for.inc28, label %for.inc25

for.inc25:                                        ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv43, i64 %indvars.iv38
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond14, !llvm.loop !12

for.inc28:                                        ; preds = %for.cond14
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond, !llvm.loop !13

for.cond31:                                       ; preds = %for.cond, %for.inc69
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.inc69 ], [ 0, %for.cond ]
  %exitcond62.not = icmp eq i64 %indvars.iv58, %wide.trip.count46
  br i1 %exitcond62.not, label %for.end71, label %for.body33

for.body33:                                       ; preds = %for.cond31
  %arrayidx36 = getelementptr inbounds nuw [101 x i32], ptr @a, i64 0, i64 %indvars.iv58
  %3 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.body39, %for.body33
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.body39 ], [ 1, %for.body33 ]
  %min34.0 = phi i32 [ %spec.select36, %for.body39 ], [ %3, %for.body33 ]
  %exitcond52.not = icmp eq i64 %indvars.iv48, %wide.trip.count
  br i1 %exitcond52.not, label %for.cond54.preheader, label %for.body39

for.cond54.preheader:                             ; preds = %for.cond37
  br label %for.cond54

for.body39:                                       ; preds = %for.cond37
  %arrayidx43 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv48, i64 %indvars.iv58
  %4 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %spec.select36 = tail call i32 @llvm.smin.i32(i32 %4, i32 %min34.0)
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond37, !llvm.loop !14

for.cond54:                                       ; preds = %for.cond54.preheader, %for.inc66
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.inc66 ], [ 0, %for.cond54.preheader ]
  %exitcond57.not = icmp eq i64 %indvars.iv53, %wide.trip.count
  br i1 %exitcond57.not, label %for.inc69, label %for.inc66

for.inc66:                                        ; preds = %for.cond54
  %arrayidx60 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv53, i64 %indvars.iv58
  %5 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %sub61 = sub nsw i32 %5, %min34.0
  store i32 %sub61, ptr %arrayidx60, align 4, !tbaa !5
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond54, !llvm.loop !15

for.inc69:                                        ; preds = %for.cond54
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond31, !llvm.loop !16

for.end71:                                        ; preds = %for.cond31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z8xiaojiani(i32 noundef %n) #0 {
entry:
  %sub = add nsw i32 %n, -1
  %smax = tail call i32 @llvm.smax.i32(i32 noundef %n, i32 noundef 0)
  %smax22 = tail call i32 @llvm.smax.i32(i32 %sub, i32 noundef 1)
  %wide.trip.count23 = zext nneg i32 %smax22 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond1, %entry
  %indvars.iv19 = phi i64 [ 1, %entry ], [ %indvars.iv.next20, %for.cond1 ]
  %exitcond24.not = icmp eq i64 %indvars.iv19, %wide.trip.count23
  br i1 %exitcond24.not, label %for.cond13.preheader, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond1

for.cond13.preheader:                             ; preds = %for.cond
  %wide.trip.count28 = zext i32 %sub to i64
  br label %for.cond13

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond, label %for.inc, !llvm.loop !17

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv.next20, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %arrayidx9 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv19, i64 %indvars.iv
  store i32 %0, ptr %arrayidx9, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !18

for.cond13:                                       ; preds = %for.cond17, %for.cond13.preheader
  %indvars.iv30 = phi i64 [ 1, %for.cond13.preheader ], [ %indvars.iv.next31, %for.cond17 ]
  %exitcond34.not = icmp eq i64 %indvars.iv30, %wide.trip.count23
  br i1 %exitcond34.not, label %for.end35, label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %for.cond13
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond17

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc30
  %indvars.iv25 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next26, %for.inc30 ]
  %exitcond29.not = icmp eq i64 %indvars.iv25, %wide.trip.count28
  br i1 %exitcond29.not, label %for.cond13, label %for.inc30, !llvm.loop !19

for.inc30:                                        ; preds = %for.cond17
  %arrayidx25 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv25, i64 %indvars.iv.next31
  %1 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %arrayidx29 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv25, i64 %indvars.iv30
  store i32 %1, ptr %arrayidx29, align 4, !tbaa !5
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond17, !llvm.loop !20

for.end35:                                        ; preds = %for.cond13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_Z1fi(i32 noundef %n) #2 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.else, %entry
  %n.tr = phi i32 [ %n, %entry ], [ %sub, %if.else ]
  %cmp = icmp eq i32 %n.tr, 1
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %tailrecurse
  tail call void @_Z7guilingi(i32 noundef %n.tr) #8
  %0 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 408), align 8, !tbaa !5
  %1 = load i32, ptr @sum, align 4, !tbaa !5
  %add = add nsw i32 %1, %0
  store i32 %add, ptr @sum, align 4, !tbaa !5
  tail call void @_Z8xiaojiani(i32 noundef %n.tr) #8
  %sub = add nsw i32 %n.tr, -1
  br label %tailrecurse

if.end:                                           ; preds = %tailrecurse
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #3 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 0, ptr @sum, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %1 = phi i32 [ %3, %for.inc12 ], [ %0, %for.body ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.inc12 ], [ 0, %for.body ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv8, %2
  br i1 %cmp2, label %for.cond5, label %for.inc17

for.cond5:                                        ; preds = %for.cond1, %for.inc
  %3 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp6, label %for.inc, label %for.inc12

for.inc:                                          ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv8, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !21

for.inc12:                                        ; preds = %for.cond5
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond1, !llvm.loop !22

for.inc17:                                        ; preds = %for.cond1
  call void @_Z1fi(i32 noundef %1) #8
  %5 = load i32, ptr @sum, align 4, !tbaa !5
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  %vtable.i = load ptr, ptr %call15, align 8, !tbaa !23
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !25
  %add.ptr.i = getelementptr inbounds i8, ptr %call15, i64 %vbase.offset.i
  %call.i1 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call15, i8 noundef signext %call.i1)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc18 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !26

for.end19:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #4

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #5 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw i8, ptr %this, i64 240
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !27
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.then.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

if.then.i:                                        ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #10
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit:    ; preds = %entry
  %call2 = tail call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %0, i8 noundef signext %__c)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #5 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !45
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !51
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !23
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !25
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nofree nounwind willreturn }
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
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !8, i64 0}
!25 = !{}
!26 = distinct !{!26, !10, !11}
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
