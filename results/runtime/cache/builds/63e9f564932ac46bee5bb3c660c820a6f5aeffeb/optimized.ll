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

@n = dso_local global i32 0, align 4
@a = dso_local global [101 x [101 x i32]] zeroinitializer, align 16
@sum = dso_local local_unnamed_addr global i32 0, align 4
@k = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z7zerorowi(i32 noundef %k) local_unnamed_addr #0 {
entry:
  %smax = call i32 @llvm.smax.i32(i32 %k, i32 0)
  %wide.trip.count10 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %k to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.inc29 ], [ 0, %entry ]
  %exitcond11.not = icmp eq i64 %indvars.iv7, %wide.trip.count10
  br i1 %exitcond11.not, label %for.end31, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv7
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.body5, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 1, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body5 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body5

for.body5:                                        ; preds = %for.cond2
  %arrayidx9 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv7, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  %tobool.not = icmp eq i32 %min.0, 0
  br i1 %tobool.not, label %for.inc29, label %for.cond17

for.cond17:                                       ; preds = %for.end, %for.inc25
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc25 ], [ 0, %for.end ]
  %exitcond6.not = icmp eq i64 %indvars.iv2, %wide.trip.count
  br i1 %exitcond6.not, label %for.inc29, label %for.inc25

for.inc25:                                        ; preds = %for.cond17
  %arrayidx24 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv7, i64 %indvars.iv2
  %2 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx24, align 4, !tbaa !5
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %for.cond17, !llvm.loop !12

for.inc29:                                        ; preds = %for.cond17, %for.end
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond, !llvm.loop !13

for.end31:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z7zerocoli(i32 noundef %k) local_unnamed_addr #0 {
entry:
  %smax = call i32 @llvm.smax.i32(i32 %k, i32 0)
  %wide.trip.count10 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %k to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %entry
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.inc28 ], [ 0, %entry ]
  %exitcond11.not = icmp eq i64 %indvars.iv7, %wide.trip.count10
  br i1 %exitcond11.not, label %for.end30, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [101 x i32], ptr @a, i64 0, i64 %indvars.iv7
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 1, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body4

for.body4:                                        ; preds = %for.cond1
  %arrayidx8 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv, i64 %indvars.iv7
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !14

for.end:                                          ; preds = %for.cond1
  %tobool.not = icmp eq i32 %min.0, 0
  br i1 %tobool.not, label %for.inc28, label %for.cond16

for.cond16:                                       ; preds = %for.end, %for.inc24
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc24 ], [ 0, %for.end ]
  %exitcond6.not = icmp eq i64 %indvars.iv2, %wide.trip.count
  br i1 %exitcond6.not, label %for.inc28, label %for.inc24

for.inc24:                                        ; preds = %for.cond16
  %arrayidx23 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv2, i64 %indvars.iv7
  %2 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %for.cond16, !llvm.loop !15

for.inc28:                                        ; preds = %for.cond16, %for.end
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond, !llvm.loop !16

for.end30:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z4jiani(i32 noundef %k) local_unnamed_addr #0 {
entry:
  %smax = call i32 @llvm.smax.i32(i32 %k, i32 2)
  %wide.trip.count6 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %k to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc11 ], [ 2, %entry ]
  %exitcond7.not = icmp eq i64 %indvars.iv2, %wide.trip.count6
  br i1 %exitcond7.not, label %for.cond15.preheader, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add nsw i64 %indvars.iv2, -1
  br label %for.cond1

for.cond15.preheader:                             ; preds = %for.cond
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %sub21 = add i32 %k, -1
  %smax11 = call i32 @llvm.smax.i32(i32 %sub21, i32 0)
  %smax18 = call i32 @llvm.smax.i32(i32 %1, i32 2)
  %wide.trip.count19 = zext nneg i32 %smax18 to i64
  %wide.trip.count12 = zext nneg i32 %smax11 to i64
  br label %for.cond15

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc11, label %for.inc

for.inc:                                          ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv2, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %arrayidx10 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %0, i64 %indvars.iv
  store i32 %2, ptr %arrayidx10, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !17

for.inc11:                                        ; preds = %for.cond1
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %for.cond, !llvm.loop !18

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc37
  %indvars.iv14 = phi i64 [ 2, %for.cond15.preheader ], [ %indvars.iv.next15, %for.inc37 ]
  %exitcond20.not = icmp eq i64 %indvars.iv14, %wide.trip.count19
  br i1 %exitcond20.not, label %for.end39, label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.cond15
  %3 = add nsw i64 %indvars.iv14, -1
  br label %for.cond20

for.cond20:                                       ; preds = %for.cond20.preheader, %for.inc34
  %indvars.iv8 = phi i64 [ 0, %for.cond20.preheader ], [ %indvars.iv.next9, %for.inc34 ]
  %exitcond13.not = icmp eq i64 %indvars.iv8, %wide.trip.count12
  br i1 %exitcond13.not, label %for.inc37, label %for.inc34

for.inc34:                                        ; preds = %for.cond20
  %arrayidx28 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv8, i64 %indvars.iv14
  %4 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %arrayidx33 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv8, i64 %3
  store i32 %4, ptr %arrayidx33, align 4, !tbaa !5
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond20, !llvm.loop !19

for.inc37:                                        ; preds = %for.cond20
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond15, !llvm.loop !20

for.end39:                                        ; preds = %for.cond15
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  br label %while.cond

while.cond:                                       ; preds = %for.end18, %entry
  %call1 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @a)
  %vtable = load ptr, ptr %call1, align 8, !tbaa !21
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !23
  %add.ptr = getelementptr inbounds i8, ptr %call1, i64 %vbase.offset
  %call2 = tail call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr)
  br i1 %call2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr @sum, align 4, !tbaa !5
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %while.body
  %.pre6 = phi i32 [ %.pre68, %for.inc10 ], [ %.pre, %while.body ]
  %0 = phi i32 [ %2, %for.inc10 ], [ %.pre, %while.body ]
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc10 ], [ 0, %while.body ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv2, %1
  br i1 %cmp, label %for.cond3, label %for.cond13

for.cond3:                                        ; preds = %for.cond, %for.inc
  %.pre68 = phi i32 [ %.pre67, %for.inc ], [ %.pre6, %for.cond ]
  %2 = phi i32 [ %6, %for.inc ], [ %.pre6, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp4 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp4, label %for.body6, label %for.inc10

for.body6:                                        ; preds = %for.cond3
  %4 = or i64 %indvars.iv, %indvars.iv2
  %5 = and i64 %4, 4294967295
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body6
  %arrayidx8 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv2, i64 %indvars.iv
  %call9 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %.pre5 = load i32, ptr @n, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body6, %if.then
  %.pre67 = phi i32 [ %.pre68, %for.body6 ], [ %.pre5, %if.then ]
  %6 = phi i32 [ %2, %for.body6 ], [ %.pre5, %if.then ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !24

for.inc10:                                        ; preds = %for.cond3
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %for.cond, !llvm.loop !25

for.cond13:                                       ; preds = %for.cond, %for.inc17
  %7 = phi i32 [ %dec, %for.inc17 ], [ %0, %for.cond ]
  store i32 %7, ptr @k, align 4, !tbaa !5
  %cmp14 = icmp sgt i32 %7, 1
  br i1 %cmp14, label %for.inc17, label %for.end18

for.inc17:                                        ; preds = %for.cond13
  tail call void @_Z7zerorowi(i32 noundef %7) #6
  %8 = load i32, ptr @k, align 4, !tbaa !5
  tail call void @_Z7zerocoli(i32 noundef %8) #6
  %9 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 408), align 8, !tbaa !5
  %10 = load i32, ptr @sum, align 4, !tbaa !5
  %add16 = add nsw i32 %10, %9
  store i32 %add16, ptr @sum, align 4, !tbaa !5
  %11 = load i32, ptr @k, align 4, !tbaa !5
  tail call void @_Z4jiani(i32 noundef %11) #6
  %12 = load i32, ptr @k, align 4, !tbaa !5
  %dec = add nsw i32 %12, -1
  br label %for.cond13, !llvm.loop !26

for.end18:                                        ; preds = %for.cond13
  %13 = load i32, ptr @sum, align 4, !tbaa !5
  %call19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %13)
  %call20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call19, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %while.cond, !llvm.loop !27

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
