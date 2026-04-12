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

$_ZNKSt5ctypeIcE5widenEc = comdat any

@arr = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  call void @_Z5solvei(i32 noundef %0)
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z5solvei(i32 noundef %n) local_unnamed_addr #3 {
entry:
  tail call void @_Z7arrayini(i32 noundef %n)
  %call = tail call noundef i32 @_Z9down_casti(i32 noundef %n) #8
  %call1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call)
  %vtable.i = load ptr, ptr %call1, align 8, !tbaa !12, !invariant.load !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !14
  %add.ptr.i = getelementptr inbounds i8, ptr %call1, i64 %vbase.offset.i
  %call.i1 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call1, i8 noundef signext %call.i1)
  %call.i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z7arrayini(i32 noundef %n) local_unnamed_addr #3 {
entry:
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count9 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %for.inc7 ], [ 0, %entry ]
  %exitcond10.not = icmp eq i64 %indvars.iv6, %wide.trip.count9
  br i1 %exitcond10.not, label %for.end9, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc7, label %for.inc

for.inc:                                          ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv6, i64 %indvars.iv
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !15

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %for.cond, !llvm.loop !16

for.end9:                                         ; preds = %for.cond
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z9down_casti(i32 noundef %n) local_unnamed_addr #4 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end119, %entry
  %accumulator.tr = phi i32 [ 0, %entry ], [ %add, %for.end119 ]
  %n.tr = phi i32 [ %n, %entry ], [ %sub120, %for.end119 ]
  %smax83 = call i32 @llvm.smax.i32(i32 %n.tr, i32 2)
  %cmp = icmp eq i32 %n.tr, 1
  br i1 %cmp, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %tailrecurse
  %smax59 = call i32 @llvm.smax.i32(i32 %n.tr, i32 0)
  %wide.trip.count44 = zext nneg i32 %smax59 to i64
  %wide.trip.count = zext i32 %n.tr to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc27
  %indvars.iv41 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next42, %for.inc27 ]
  %exitcond45.not = icmp eq i64 %indvars.iv41, %wide.trip.count44
  br i1 %exitcond45.not, label %for.cond31.preheader, label %for.cond2

for.cond31.preheader:                             ; preds = %for.cond
  br label %for.cond31

for.cond2:                                        ; preds = %for.cond, %for.body5
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 0, %for.cond ]
  %min.0 = phi i32 [ %spec.select, %for.body5 ], [ 65535, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond16.preheader, label %for.body5

for.cond16.preheader:                             ; preds = %for.cond2
  br label %for.cond16

for.body5:                                        ; preds = %for.cond2
  %arrayidx7 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv41, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx7, align 4, !tbaa !5, !invariant.load !14
  %spec.select = tail call i32 @llvm.smin.i32(i32 %0, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !17

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc24
  %indvars.iv36 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next37, %for.inc24 ]
  %exitcond40.not = icmp eq i64 %indvars.iv36, %wide.trip.count
  br i1 %exitcond40.not, label %for.inc27, label %for.inc24

for.inc24:                                        ; preds = %for.cond16
  %arrayidx23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv41, i64 %indvars.iv36
  %1 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !14
  %sub = sub nsw i32 %1, %min.0
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond16, !llvm.loop !18

for.inc27:                                        ; preds = %for.cond16
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond, !llvm.loop !19

for.cond31:                                       ; preds = %for.cond31.preheader, %for.inc67
  %indvars.iv56 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next57, %for.inc67 ]
  %exitcond61.not = icmp eq i64 %indvars.iv56, %wide.trip.count44
  br i1 %exitcond61.not, label %for.end69, label %for.cond36

for.cond36:                                       ; preds = %for.cond31, %for.body39
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.body39 ], [ 0, %for.cond31 ]
  %min.2 = phi i32 [ %spec.select34, %for.body39 ], [ 65535, %for.cond31 ]
  %exitcond50.not = icmp eq i64 %indvars.iv46, %wide.trip.count
  br i1 %exitcond50.not, label %for.cond55.preheader, label %for.body39

for.cond55.preheader:                             ; preds = %for.cond36
  br label %for.cond55

for.body39:                                       ; preds = %for.cond36
  %arrayidx43 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv46, i64 %indvars.iv56
  %2 = load i32, ptr %arrayidx43, align 4, !tbaa !5, !invariant.load !14
  %spec.select34 = tail call i32 @llvm.smin.i32(i32 %2, i32 %min.2)
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond36, !llvm.loop !20

for.cond55:                                       ; preds = %for.cond55.preheader, %for.inc64
  %indvars.iv51 = phi i64 [ 0, %for.cond55.preheader ], [ %indvars.iv.next52, %for.inc64 ]
  %exitcond55.not = icmp eq i64 %indvars.iv51, %wide.trip.count
  br i1 %exitcond55.not, label %for.inc67, label %for.inc64

for.inc64:                                        ; preds = %for.cond55
  %arrayidx62 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv51, i64 %indvars.iv56
  %3 = load i32, ptr %arrayidx62, align 4, !tbaa !5, !invariant.load !14
  %sub63 = sub nsw i32 %3, %min.2
  store i32 %sub63, ptr %arrayidx62, align 4, !tbaa !5
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  br label %for.cond55, !llvm.loop !21

for.inc67:                                        ; preds = %for.cond55
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br label %for.cond31, !llvm.loop !22

for.end69:                                        ; preds = %for.cond31
  %4 = load i32, ptr getelementptr inbounds nuw (i8, ptr @arr, i64 404), align 4, !tbaa !5
  %wide.trip.count72 = zext nneg i32 %smax83 to i64
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc92, %for.end69
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %for.inc92 ], [ 2, %for.end69 ]
  %exitcond73.not = icmp eq i64 %indvars.iv67, %wide.trip.count72
  br i1 %exitcond73.not, label %for.cond96.preheader, label %for.cond76.preheader

for.cond96.preheader:                             ; preds = %for.cond71
  br label %for.cond96

for.cond76.preheader:                             ; preds = %for.cond71
  %5 = add nsw i64 %indvars.iv67, -1
  br label %for.cond76

for.cond76:                                       ; preds = %for.cond76.preheader, %for.inc89
  %indvars.iv62 = phi i64 [ 0, %for.cond76.preheader ], [ %indvars.iv.next63, %for.inc89 ]
  %exitcond66.not = icmp eq i64 %indvars.iv62, %wide.trip.count
  br i1 %exitcond66.not, label %for.inc92, label %for.inc89

for.inc89:                                        ; preds = %for.cond76
  %arrayidx83 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv67, i64 %indvars.iv62
  %6 = load i32, ptr %arrayidx83, align 4, !tbaa !5, !invariant.load !14
  %arrayidx88 = getelementptr inbounds [100 x [100 x i32]], ptr @arr, i64 0, i64 %5, i64 %indvars.iv62
  store i32 %6, ptr %arrayidx88, align 4, !tbaa !5
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  br label %for.cond76, !llvm.loop !23

for.inc92:                                        ; preds = %for.cond76
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  br label %for.cond71, !llvm.loop !24

for.cond96:                                       ; preds = %for.cond96.preheader, %for.inc117
  %indvars.iv79 = phi i64 [ 2, %for.cond96.preheader ], [ %indvars.iv.next80, %for.inc117 ]
  %exitcond85.not = icmp eq i64 %indvars.iv79, %wide.trip.count72
  br i1 %exitcond85.not, label %for.end119, label %for.cond101.preheader

for.cond101.preheader:                            ; preds = %for.cond96
  %7 = add nsw i64 %indvars.iv79, -1
  br label %for.cond101

for.cond101:                                      ; preds = %for.cond101.preheader, %for.inc114
  %indvars.iv74 = phi i64 [ 0, %for.cond101.preheader ], [ %indvars.iv.next75, %for.inc114 ]
  %exitcond78.not = icmp eq i64 %indvars.iv74, %wide.trip.count
  br i1 %exitcond78.not, label %for.inc117, label %for.inc114

for.inc114:                                       ; preds = %for.cond101
  %arrayidx108 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv74, i64 %indvars.iv79
  %8 = load i32, ptr %arrayidx108, align 4, !tbaa !5, !invariant.load !14
  %arrayidx113 = getelementptr inbounds [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv74, i64 %7
  store i32 %8, ptr %arrayidx113, align 4, !tbaa !5
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %for.cond101, !llvm.loop !25

for.inc117:                                       ; preds = %for.cond101
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  br label %for.cond96, !llvm.loop !26

for.end119:                                       ; preds = %for.cond96
  %sub120 = add nsw i32 %n.tr, -1
  %add = add nsw i32 %4, %accumulator.tr
  br label %tailrecurse

return:                                           ; preds = %tailrecurse
  ret i32 %accumulator.tr
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10matrix_outi(i32 noundef %n) local_unnamed_addr #3 {
entry:
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count12 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %for.inc9 ], [ 0, %entry ]
  %exitcond13.not = icmp eq i64 %indvars.iv9, %wide.trip.count12
  br i1 %exitcond13.not, label %for.end11, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc9, label %for.inc

for.inc:                                          ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv9, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !14
  %call = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef %0)
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call, ptr noundef nonnull @.str, i64 noundef 1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !27

for.inc9:                                         ; preds = %for.cond1
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !14
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i1 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i1)
  %call.i.i3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i2)
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %for.cond, !llvm.loop !28

for.end11:                                        ; preds = %for.cond
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) local_unnamed_addr #3 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw i8, ptr %this, i64 240
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !29, !invariant.load !14
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.then.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

if.then.i:                                        ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #9
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit:    ; preds = %entry
  %call2 = tail call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %0, i8 noundef signext %__c)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #3 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !47, !invariant.load !14
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !53, !invariant.load !14
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !12, !invariant.load !14
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !14
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !8, i64 0}
!14 = !{}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
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
