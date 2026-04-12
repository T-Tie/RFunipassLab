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

@arr = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0

for.body:                                         ; preds = %for.cond
  call void @_Z5solvei(i32 noundef %0)
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z5solvei(i32 noundef %n) local_unnamed_addr #3 {
entry:
  tail call void @_Z7arrayini(i32 noundef %n)
  %call = tail call noundef i32 @_Z9down_casti(i32 noundef %n)
  %call1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call)
  %vtable.i = load ptr, ptr %call1, align 8, !tbaa !12
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call1, i64 %vbase.offset.i
  %call.i2 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call1, i8 noundef signext %call.i2)
  %call.i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z7arrayini(i32 noundef %n) local_unnamed_addr #3 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count10 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup3, %entry
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.cond.cleanup3 ], [ 0, %entry ]
  %exitcond11.not = icmp eq i64 %indvars.iv7, %wide.trip.count10
  br i1 %exitcond11.not, label %for.cond.cleanup, label %for.cond1

for.cond.cleanup:                                 ; preds = %for.cond
  ret void

for.cond1:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup3, label %for.body4

for.cond.cleanup3:                                ; preds = %for.cond1
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond, !llvm.loop !14

for.body4:                                        ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv7, i64 %indvars.iv
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !15
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z9down_casti(i32 noundef %n) local_unnamed_addr #4 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.cond.cleanup98, %entry
  %accumulator.tr = phi i32 [ 0, %entry ], [ %add, %for.cond.cleanup98 ]
  %n.tr = phi i32 [ %n, %entry ], [ %sub120, %for.cond.cleanup98 ]
  %smax95 = tail call i32 @llvm.smax.i32(i32 %n.tr, i32 2)
  %cmp = icmp eq i32 %n.tr, 1
  br i1 %cmp, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %tailrecurse
  %smax71 = tail call i32 @llvm.smax.i32(i32 %n.tr, i32 0)
  %wide.trip.count56 = zext nneg i32 %smax71 to i64
  %wide.trip.count = zext i32 %n.tr to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.cond.cleanup18
  %indvars.iv53 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next54, %for.cond.cleanup18 ]
  %exitcond57.not = icmp eq i64 %indvars.iv53, %wide.trip.count56
  br i1 %exitcond57.not, label %for.cond31.preheader, label %for.cond2

for.cond31.preheader:                             ; preds = %for.cond
  %wide.trip.count61 = zext i32 %n.tr to i64
  br label %for.cond31

for.cond2:                                        ; preds = %for.cond, %for.body5
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 0, %for.cond ]
  %min.0 = phi i32 [ %spec.select, %for.body5 ], [ 65535, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond16, label %for.body5

for.body5:                                        ; preds = %for.cond2
  %arrayidx7 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv53, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %0, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !16

for.cond16:                                       ; preds = %for.cond2, %for.body19
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.body19 ], [ 0, %for.cond2 ]
  %exitcond52.not = icmp eq i64 %indvars.iv48, %wide.trip.count
  br i1 %exitcond52.not, label %for.cond.cleanup18, label %for.body19

for.cond.cleanup18:                               ; preds = %for.cond16
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond, !llvm.loop !17

for.body19:                                       ; preds = %for.cond16
  %arrayidx23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv53, i64 %indvars.iv48
  %1 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %sub = sub nsw i32 %1, %min.0
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond16, !llvm.loop !18

for.cond31:                                       ; preds = %for.cond31.preheader, %for.cond.cleanup57
  %indvars.iv68 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next69, %for.cond.cleanup57 ]
  %exitcond73.not = icmp eq i64 %indvars.iv68, %wide.trip.count56
  br i1 %exitcond73.not, label %for.cond.cleanup33, label %for.cond36

for.cond.cleanup33:                               ; preds = %for.cond31
  %2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @arr, i64 404), align 4, !tbaa !5
  %wide.trip.count84 = zext nneg i32 %smax95 to i64
  %wide.trip.count77 = zext i32 %n.tr to i64
  br label %for.cond71

for.cond36:                                       ; preds = %for.cond31, %for.body39
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.body39 ], [ 0, %for.cond31 ]
  %min.2 = phi i32 [ %spec.select46, %for.body39 ], [ 65535, %for.cond31 ]
  %exitcond62.not = icmp eq i64 %indvars.iv58, %wide.trip.count61
  br i1 %exitcond62.not, label %for.cond55, label %for.body39

for.body39:                                       ; preds = %for.cond36
  %arrayidx43 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv58, i64 %indvars.iv68
  %3 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %spec.select46 = tail call i32 @llvm.smin.i32(i32 %3, i32 %min.2)
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond36, !llvm.loop !19

for.cond55:                                       ; preds = %for.cond36, %for.body58
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %for.body58 ], [ 0, %for.cond36 ]
  %exitcond67.not = icmp eq i64 %indvars.iv63, %wide.trip.count61
  br i1 %exitcond67.not, label %for.cond.cleanup57, label %for.body58

for.cond.cleanup57:                               ; preds = %for.cond55
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  br label %for.cond31, !llvm.loop !20

for.body58:                                       ; preds = %for.cond55
  %arrayidx62 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv63, i64 %indvars.iv68
  %4 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %sub63 = sub nsw i32 %4, %min.2
  store i32 %sub63, ptr %arrayidx62, align 4, !tbaa !5
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br label %for.cond55, !llvm.loop !21

for.cond71:                                       ; preds = %for.cond.cleanup78, %for.cond.cleanup33
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %for.cond.cleanup78 ], [ 2, %for.cond.cleanup33 ]
  %exitcond85.not = icmp eq i64 %indvars.iv79, %wide.trip.count84
  br i1 %exitcond85.not, label %for.cond96.preheader, label %for.cond76.preheader

for.cond96.preheader:                             ; preds = %for.cond71
  %wide.trip.count89 = zext i32 %n.tr to i64
  br label %for.cond96

for.cond76.preheader:                             ; preds = %for.cond71
  %5 = add nsw i64 %indvars.iv79, -1
  br label %for.cond76

for.cond76:                                       ; preds = %for.cond76.preheader, %for.body79
  %indvars.iv74 = phi i64 [ 0, %for.cond76.preheader ], [ %indvars.iv.next75, %for.body79 ]
  %exitcond78.not = icmp eq i64 %indvars.iv74, %wide.trip.count77
  br i1 %exitcond78.not, label %for.cond.cleanup78, label %for.body79

for.cond.cleanup78:                               ; preds = %for.cond76
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  br label %for.cond71, !llvm.loop !22

for.body79:                                       ; preds = %for.cond76
  %arrayidx83 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv79, i64 %indvars.iv74
  %6 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %arrayidx88 = getelementptr inbounds [100 x [100 x i32]], ptr @arr, i64 0, i64 %5, i64 %indvars.iv74
  store i32 %6, ptr %arrayidx88, align 4, !tbaa !5
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %for.cond76, !llvm.loop !23

for.cond96:                                       ; preds = %for.cond96.preheader, %for.cond.cleanup103
  %indvars.iv91 = phi i64 [ 2, %for.cond96.preheader ], [ %indvars.iv.next92, %for.cond.cleanup103 ]
  %exitcond97.not = icmp eq i64 %indvars.iv91, %wide.trip.count84
  br i1 %exitcond97.not, label %for.cond.cleanup98, label %for.cond101.preheader

for.cond101.preheader:                            ; preds = %for.cond96
  %7 = add nsw i64 %indvars.iv91, -1
  br label %for.cond101

for.cond.cleanup98:                               ; preds = %for.cond96
  %sub120 = add nsw i32 %n.tr, -1
  %add = add nsw i32 %2, %accumulator.tr
  br label %tailrecurse

for.cond101:                                      ; preds = %for.cond101.preheader, %for.body104
  %indvars.iv86 = phi i64 [ 0, %for.cond101.preheader ], [ %indvars.iv.next87, %for.body104 ]
  %exitcond90.not = icmp eq i64 %indvars.iv86, %wide.trip.count89
  br i1 %exitcond90.not, label %for.cond.cleanup103, label %for.body104

for.cond.cleanup103:                              ; preds = %for.cond101
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  br label %for.cond96, !llvm.loop !24

for.body104:                                      ; preds = %for.cond101
  %arrayidx108 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv86, i64 %indvars.iv91
  %8 = load i32, ptr %arrayidx108, align 4, !tbaa !5
  %arrayidx113 = getelementptr inbounds [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv86, i64 %7
  store i32 %8, ptr %arrayidx113, align 4, !tbaa !5
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %for.cond101, !llvm.loop !25

return:                                           ; preds = %tailrecurse
  ret i32 %accumulator.tr
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10matrix_outi(i32 noundef %n) local_unnamed_addr #3 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count13 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup3, %entry
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.cond.cleanup3 ], [ 0, %entry ]
  %exitcond14.not = icmp eq i64 %indvars.iv10, %wide.trip.count13
  br i1 %exitcond14.not, label %for.cond.cleanup, label %for.cond1

for.cond.cleanup:                                 ; preds = %for.cond
  ret void

for.cond1:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup3, label %for.body4

for.cond.cleanup3:                                ; preds = %for.cond1
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i6 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i6)
  %call.i.i8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i7)
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond, !llvm.loop !26

for.body4:                                        ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv10, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %call = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %0)
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call, ptr noundef nonnull @.str, i64 noundef 1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !27
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
