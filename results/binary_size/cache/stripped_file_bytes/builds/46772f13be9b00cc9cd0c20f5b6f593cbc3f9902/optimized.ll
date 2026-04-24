; ModuleID = '<stdin>'
source_filename = "/tmp/tmp5zpjmr38.cpp"
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
@s = dso_local local_unnamed_addr global [100 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  br label %for.cond

for.cond:                                         ; preds = %for.end20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.end20 ]
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.cond1, label %for.end25

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv12, %2
  br i1 %cmp2, label %for.cond4, label %for.end12

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %3 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.body6, label %for.inc10

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv12, i64 %indvars.iv
  %call9 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond1, !llvm.loop !12

for.end12:                                        ; preds = %for.cond1
  tail call void @_Z3Tryi(i32 noundef 0)
  %5 = load i32, ptr @n, align 4, !tbaa !5
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %smax = add nsw i32 %6, -1
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond13

for.cond13:                                       ; preds = %for.body15, %for.end12
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.body15 ], [ 0, %for.end12 ]
  %sum.0 = phi i32 [ %add, %for.body15 ], [ 0, %for.end12 ]
  %exitcond.not = icmp eq i64 %indvars.iv15, %wide.trip.count
  br i1 %exitcond.not, label %for.end20, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx17 = getelementptr inbounds nuw [100 x i32], ptr @s, i64 0, i64 %indvars.iv15
  %7 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %add = add nsw i32 %7, %sum.0
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond13, !llvm.loop !13

for.end20:                                        ; preds = %for.cond13
  %call21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %vtable.i = load ptr, ptr %call21, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call21, i64 %vbase.offset.i
  %call.i10 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call21, i8 noundef signext %call.i10)
  %call.i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc24 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !16

for.end25:                                        ; preds = %for.cond
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_Z3Tryi(i32 noundef %i) local_unnamed_addr #2 {
entry:
  %0 = sext i32 %i to i64
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %entry
  %1 = phi i32 [ %6, %tailrecurse ], [ %.pre, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %tailrecurse ], [ %0, %entry ]
  %2 = trunc nsw i64 %indvars.iv to i32
  %sub = sub nsw i32 %1, %2
  tail call void @_Z1ri(i32 noundef %sub)
  %3 = load i32, ptr @n, align 4, !tbaa !5
  %sub1 = sub nsw i32 %3, %2
  tail call void @_Z1li(i32 noundef %sub1)
  %4 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  %arrayidx = getelementptr inbounds [100 x i32], ptr @s, i64 0, i64 %indvars.iv
  store i32 %4, ptr %arrayidx, align 4, !tbaa !5
  %5 = load i32, ptr @n, align 4, !tbaa !5
  %sub2 = sub nsw i32 %5, %2
  tail call void @_Z3funi(i32 noundef %sub2)
  %6 = load i32, ptr @n, align 4, !tbaa !5
  %sub3 = add nsw i32 %6, -1
  %7 = sext i32 %sub3 to i64
  %cmp = icmp slt i64 %indvars.iv, %7
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %cmp, label %tailrecurse, label %if.end

if.end:                                           ; preds = %tailrecurse
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z1ri(i32 noundef %m) local_unnamed_addr #3 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 %m, i32 0)
  %wide.trip.count26 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %m to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %entry
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc28 ], [ 0, %entry ]
  %exitcond27.not = icmp eq i64 %indvars.iv23, %wide.trip.count26
  br i1 %exitcond27.not, label %for.end30, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv23
  %0 = load i32, ptr %arrayidx, align 16, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv23, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !17

for.cond14:                                       ; preds = %for.cond2, %for.body16
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.body16 ], [ 0, %for.cond2 ]
  %exitcond22.not = icmp eq i64 %indvars.iv18, %wide.trip.count
  br i1 %exitcond22.not, label %for.inc28, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv23, i64 %indvars.iv18
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond14, !llvm.loop !18

for.inc28:                                        ; preds = %for.cond14
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond, !llvm.loop !19

for.end30:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z1li(i32 noundef %m) local_unnamed_addr #3 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 %m, i32 0)
  %wide.trip.count26 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %m to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc27 ], [ 0, %entry ]
  %exitcond27.not = icmp eq i64 %indvars.iv23, %wide.trip.count26
  br i1 %exitcond27.not, label %for.end29, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv23
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.body3, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body3 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond13, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx7 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv, i64 %indvars.iv23
  %1 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !20

for.cond13:                                       ; preds = %for.cond1, %for.body15
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.body15 ], [ 0, %for.cond1 ]
  %exitcond22.not = icmp eq i64 %indvars.iv18, %wide.trip.count
  br i1 %exitcond22.not, label %for.inc27, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv18, i64 %indvars.iv23
  %2 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx19, align 4, !tbaa !5
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond13, !llvm.loop !21

for.inc27:                                        ; preds = %for.cond13
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond, !llvm.loop !22

for.end29:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z3funi(i32 noundef %m) local_unnamed_addr #3 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 %m, i32 2)
  %smax23 = tail call i32 @llvm.smax.i32(i32 %m, i32 0)
  %wide.trip.count24 = zext nneg i32 %smax23 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.inc10 ], [ 0, %entry ]
  %exitcond25.not = icmp eq i64 %indvars.iv20, %wide.trip.count24
  br i1 %exitcond25.not, label %for.cond13.preheader, label %for.cond1

for.cond13.preheader:                             ; preds = %for.cond
  %0 = tail call i32 @llvm.smax.i32(i32 %m, i32 1)
  %smax35 = add nsw i32 %0, -1
  %wide.trip.count36 = zext nneg i32 %smax35 to i64
  %wide.trip.count30 = zext nneg i32 %smax to i64
  br label %for.cond13

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 2, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc10, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv20, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %2 = add nsw i64 %indvars.iv, -1
  %arrayidx9 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv20, i64 %2
  store i32 %1, ptr %arrayidx9, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !23

for.inc10:                                        ; preds = %for.cond1
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond, !llvm.loop !24

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc32
  %indvars.iv32 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next33, %for.inc32 ]
  %exitcond37.not = icmp eq i64 %indvars.iv32, %wide.trip.count36
  br i1 %exitcond37.not, label %for.end34, label %for.cond17

for.cond17:                                       ; preds = %for.cond13, %for.body19
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.body19 ], [ 2, %for.cond13 ]
  %exitcond31.not = icmp eq i64 %indvars.iv26, %wide.trip.count30
  br i1 %exitcond31.not, label %for.inc32, label %for.body19

for.body19:                                       ; preds = %for.cond17
  %arrayidx23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv26, i64 %indvars.iv32
  %3 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %4 = add nsw i64 %indvars.iv26, -1
  %arrayidx28 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %4, i64 %indvars.iv32
  store i32 %3, ptr %arrayidx28, align 4, !tbaa !5
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond17, !llvm.loop !25

for.inc32:                                        ; preds = %for.cond17
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond13, !llvm.loop !26

for.end34:                                        ; preds = %for.cond13
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

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
!13 = distinct !{!13, !10, !11}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !8, i64 0}
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
