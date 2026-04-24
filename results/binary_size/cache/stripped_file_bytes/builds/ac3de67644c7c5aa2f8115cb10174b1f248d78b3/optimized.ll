; ModuleID = '<stdin>'
source_filename = "/tmp/tmpw6x4t8wy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@sum = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  br label %for.cond

for.cond:                                         ; preds = %for.end12, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.end12 ]
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.cond1, label %for.end17

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv8, %2
  br i1 %cmp2, label %for.cond4, label %for.end12

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %3 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.body6, label %for.inc10

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv8, i64 %indvars.iv
  %call9 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond1, !llvm.loop !12

for.end12:                                        ; preds = %for.cond1
  store i32 %1, ptr @b, align 4, !tbaa !5
  tail call void @_Z6rezerov()
  %5 = load i32, ptr @sum, align 4, !tbaa !5
  %call13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  %vtable.i = load ptr, ptr %call13, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call13, i64 %vbase.offset.i
  %call.i6 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call13, i8 noundef signext %call.i6)
  %call.i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  store i32 0, ptr @sum, align 4, !tbaa !5
  %inc16 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !15

for.end17:                                        ; preds = %for.cond
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_Z6rezerov() local_unnamed_addr #2 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.end66, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc69, %for.end66 ]
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %sub = add nsw i32 %0, -1
  %cmp = icmp slt i32 %k.0, %sub
  br i1 %cmp, label %for.cond1.preheader, label %for.end70

for.cond1.preheader:                              ; preds = %for.cond
  %1 = load i32, ptr @b, align 4, !tbaa !5
  %smax = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count40 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %1 to i64
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc28
  %indvars.iv37 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next38, %for.inc28 ]
  %exitcond41.not = icmp eq i64 %indvars.iv37, %wide.trip.count40
  br i1 %exitcond41.not, label %for.cond31.preheader, label %for.body3

for.cond31.preheader:                             ; preds = %for.cond1
  %wide.trip.count45 = zext i32 %1 to i64
  br label %for.cond31

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv37
  %2 = load i32, ptr %arrayidx, align 16, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.body7, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body7 ], [ 0, %for.body3 ]
  %min.0 = phi i32 [ %spec.select, %for.body7 ], [ %2, %for.body3 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond17, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %arrayidx11 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv37, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %3, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond5, !llvm.loop !16

for.cond17:                                       ; preds = %for.cond5, %for.body19
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.body19 ], [ 0, %for.cond5 ]
  %exitcond36.not = icmp eq i64 %indvars.iv32, %wide.trip.count
  br i1 %exitcond36.not, label %for.inc28, label %for.body19

for.body19:                                       ; preds = %for.cond17
  %arrayidx23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv37, i64 %indvars.iv32
  %4 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %sub24 = sub nsw i32 %4, %min.0
  store i32 %sub24, ptr %arrayidx23, align 4, !tbaa !5
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond17, !llvm.loop !17

for.inc28:                                        ; preds = %for.cond17
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond1, !llvm.loop !18

for.cond31:                                       ; preds = %for.cond31.preheader, %for.inc64
  %indvars.iv52 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next53, %for.inc64 ]
  %exitcond56.not = icmp eq i64 %indvars.iv52, %wide.trip.count40
  br i1 %exitcond56.not, label %for.end66, label %for.body33

for.body33:                                       ; preds = %for.cond31
  %arrayidx35 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv52
  %5 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  br label %for.cond36

for.cond36:                                       ; preds = %for.body38, %for.body33
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.body38 ], [ 0, %for.body33 ]
  %min.2 = phi i32 [ %spec.select30, %for.body38 ], [ %5, %for.body33 ]
  %exitcond46.not = icmp eq i64 %indvars.iv42, %wide.trip.count45
  br i1 %exitcond46.not, label %for.cond53, label %for.body38

for.body38:                                       ; preds = %for.cond36
  %arrayidx42 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv42, i64 %indvars.iv52
  %6 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %spec.select30 = tail call i32 @llvm.smin.i32(i32 %6, i32 %min.2)
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond36, !llvm.loop !19

for.cond53:                                       ; preds = %for.cond36, %for.body55
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.body55 ], [ 0, %for.cond36 ]
  %exitcond51.not = icmp eq i64 %indvars.iv47, %wide.trip.count45
  br i1 %exitcond51.not, label %for.inc64, label %for.body55

for.body55:                                       ; preds = %for.cond53
  %arrayidx59 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv47, i64 %indvars.iv52
  %7 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %sub60 = sub nsw i32 %7, %min.2
  store i32 %sub60, ptr %arrayidx59, align 4, !tbaa !5
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond53, !llvm.loop !20

for.inc64:                                        ; preds = %for.cond53
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  br label %for.cond31, !llvm.loop !21

for.end66:                                        ; preds = %for.cond31
  tail call void @_Z4delev()
  %8 = load i32, ptr @b, align 4, !tbaa !5
  %sub67 = add nsw i32 %8, -1
  store i32 %sub67, ptr @b, align 4, !tbaa !5
  %inc69 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !22

for.end70:                                        ; preds = %for.cond
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z4delev() local_unnamed_addr #3 {
entry:
  %0 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  %1 = load i32, ptr @sum, align 4, !tbaa !5
  %add = add nsw i32 %1, %0
  store i32 %add, ptr @sum, align 4, !tbaa !5
  %2 = load i32, ptr @b, align 4, !tbaa !5
  %sub = add i32 %2, -1
  %smax = tail call i32 @llvm.smax.i32(i32 %sub, i32 1)
  %smax19 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %wide.trip.count20 = zext nneg i32 %smax19 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.inc11 ], [ 0, %entry ]
  %exitcond21.not = icmp eq i64 %indvars.iv16, %wide.trip.count20
  br i1 %exitcond21.not, label %for.cond14.preheader, label %for.cond1

for.cond14.preheader:                             ; preds = %for.cond
  %smax30 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %wide.trip.count31 = zext nneg i32 %smax30 to i64
  %wide.trip.count25 = zext i32 %sub to i64
  br label %for.cond14

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 1, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc11, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv16, i64 %indvars.iv.next
  %3 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %arrayidx10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv16, i64 %indvars.iv
  store i32 %3, ptr %arrayidx10, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !23

for.inc11:                                        ; preds = %for.cond1
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond, !llvm.loop !24

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc34
  %indvars.iv27 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next28, %for.inc34 ]
  %exitcond32.not = icmp eq i64 %indvars.iv27, %wide.trip.count31
  br i1 %exitcond32.not, label %for.end36, label %for.cond18

for.cond18:                                       ; preds = %for.cond14, %for.body21
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.body21 ], [ 1, %for.cond14 ]
  %exitcond26.not = icmp eq i64 %indvars.iv22, %wide.trip.count25
  br i1 %exitcond26.not, label %for.inc34, label %for.body21

for.body21:                                       ; preds = %for.cond18
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %arrayidx26 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv.next23, i64 %indvars.iv27
  %4 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %arrayidx30 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv22, i64 %indvars.iv27
  store i32 %4, ptr %arrayidx30, align 4, !tbaa !5
  br label %for.cond18, !llvm.loop !25

for.inc34:                                        ; preds = %for.cond18
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond14, !llvm.loop !26

for.end36:                                        ; preds = %for.cond14
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
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
