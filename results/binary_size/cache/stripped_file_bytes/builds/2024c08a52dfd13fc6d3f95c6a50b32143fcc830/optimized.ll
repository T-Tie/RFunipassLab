; ModuleID = '<stdin>'
source_filename = "/tmp/tmpiu21qn6z.cpp"
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
@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z4hangi(i32 noundef %m) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %idxprom = sext i32 %m to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %min.0 = phi i32 [ %spec.select, %for.body ], [ 10000, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond9, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond9:                                        ; preds = %for.cond, %for.body12
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.body12 ], [ 0, %for.cond ]
  %exitcond14.not = icmp eq i64 %indvars.iv10, %wide.trip.count
  br i1 %exitcond14.not, label %for.cond.cleanup11, label %for.body12

for.cond.cleanup11:                               ; preds = %for.cond9
  ret void

for.body12:                                       ; preds = %for.cond9
  %arrayidx16 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom, i64 %indvars.iv10
  %2 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx16, align 4, !tbaa !5
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond9, !llvm.loop !12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z3liei(i32 noundef %m) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %idxprom1 = sext i32 %m to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %min.0 = phi i32 [ %spec.select, %for.body ], [ 10000, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond9, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv, i64 %idxprom1
  %1 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !13

for.cond9:                                        ; preds = %for.cond, %for.body12
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.body12 ], [ 0, %for.cond ]
  %exitcond14.not = icmp eq i64 %indvars.iv10, %wide.trip.count
  br i1 %exitcond14.not, label %for.cond.cleanup11, label %for.body12

for.cond.cleanup11:                               ; preds = %for.cond9
  ret void

for.body12:                                       ; preds = %for.cond9
  %arrayidx16 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv10, i64 %idxprom1
  %2 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx16, align 4, !tbaa !5
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond9, !llvm.loop !14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_Z3delPA100_i(ptr noundef captures(none) %a) local_unnamed_addr #1 {
entry:
  %invariant.gep = getelementptr inbounds nuw i8, ptr %a, i64 400
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = phi i32 [ %2, %for.inc10 ], [ %.pre, %entry ]
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.inc10 ], [ 1, %entry ]
  %sub = add nsw i32 %0, -1
  %1 = sext i32 %sub to i64
  %cmp = icmp slt i64 %indvars.iv19, %1
  br i1 %cmp, label %for.cond1, label %for.cond13

for.cond1:                                        ; preds = %for.cond, %for.body3
  %2 = phi i32 [ %.pre29, %for.body3 ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.body3, label %for.inc10

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %indvars.iv19, i64 %indvars.iv
  %4 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %arrayidx9 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv19, i64 %indvars.iv
  store i32 %4, ptr %arrayidx9, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre29 = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !15

for.inc10:                                        ; preds = %for.cond1
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond, !llvm.loop !16

for.cond13:                                       ; preds = %for.cond17, %for.cond
  %5 = phi i32 [ %0, %for.cond ], [ %7, %for.cond17 ]
  %indvars.iv25 = phi i64 [ 1, %for.cond ], [ %indvars.iv.next26, %for.cond17 ]
  %sub14 = add nsw i32 %5, -1
  %6 = sext i32 %sub14 to i64
  %cmp15 = icmp slt i64 %indvars.iv25, %6
  br i1 %cmp15, label %for.cond17.preheader, label %for.end34

for.cond17.preheader:                             ; preds = %for.cond13
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond17

for.cond17:                                       ; preds = %for.cond17.preheader, %for.body19
  %7 = phi i32 [ %5, %for.cond17.preheader ], [ %.pre28, %for.body19 ]
  %indvars.iv22 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next23, %for.body19 ]
  %8 = sext i32 %7 to i64
  %cmp18 = icmp slt i64 %indvars.iv22, %8
  br i1 %cmp18, label %for.body19, label %for.cond13, !llvm.loop !17

for.body19:                                       ; preds = %for.cond17
  %arrayidx24 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv22, i64 %indvars.iv.next26
  %9 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %arrayidx28 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv22, i64 %indvars.iv25
  store i32 %9, ptr %arrayidx28, align 4, !tbaa !5
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %.pre28 = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !18

for.end34:                                        ; preds = %for.cond13
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  br label %for.cond

for.cond:                                         ; preds = %while.end, %entry
  %l.0 = phi i32 [ 0, %entry ], [ %inc33, %while.end ]
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %l.0, %0
  br i1 %cmp, label %for.cond2, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  ret i32 0

for.cond2:                                        ; preds = %for.cond, %for.cond.cleanup8
  %1 = phi i32 [ %3, %for.cond.cleanup8 ], [ %0, %for.cond ]
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.cond.cleanup8 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp3 = icmp slt i64 %indvars.iv15, %2
  br i1 %cmp3, label %for.cond6, label %while.cond

for.cond6:                                        ; preds = %for.cond2, %for.body9
  %3 = phi i32 [ %.pre19, %for.body9 ], [ %1, %for.cond2 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body9 ], [ 0, %for.cond2 ]
  %4 = sext i32 %3 to i64
  %cmp7 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp7, label %for.body9, label %for.cond.cleanup8

for.cond.cleanup8:                                ; preds = %for.cond6
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond2, !llvm.loop !19

for.body9:                                        ; preds = %for.cond6
  %arrayidx11 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv15, i64 %indvars.iv
  %call12 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre19 = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !20

while.cond:                                       ; preds = %for.cond2, %for.end28
  %5 = phi i32 [ %7, %for.end28 ], [ %1, %for.cond2 ]
  %k.0 = phi i32 [ %inc29, %for.end28 ], [ 0, %for.cond2 ]
  %sum.0 = phi i32 [ %add, %for.end28 ], [ 0, %for.cond2 ]
  %sub = add nsw i32 %5, -1
  %cmp16 = icmp slt i32 %k.0, %sub
  br i1 %cmp16, label %for.cond17, label %while.end

for.cond17:                                       ; preds = %while.cond, %for.body19
  %6 = phi i32 [ %.pre, %for.body19 ], [ %5, %while.cond ]
  %i.0 = phi i32 [ %inc21, %for.body19 ], [ 0, %while.cond ]
  %cmp18 = icmp slt i32 %i.0, %6
  br i1 %cmp18, label %for.body19, label %for.cond23

for.body19:                                       ; preds = %for.cond17
  tail call void @_Z4hangi(i32 noundef %i.0)
  %inc21 = add nuw nsw i32 %i.0, 1
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !21

for.cond23:                                       ; preds = %for.cond17, %for.body25
  %7 = phi i32 [ %.pre18, %for.body25 ], [ %6, %for.cond17 ]
  %i.1 = phi i32 [ %inc27, %for.body25 ], [ 0, %for.cond17 ]
  %cmp24 = icmp slt i32 %i.1, %7
  br i1 %cmp24, label %for.body25, label %for.end28

for.body25:                                       ; preds = %for.cond23
  tail call void @_Z3liei(i32 noundef %i.1)
  %inc27 = add nuw nsw i32 %i.1, 1
  %.pre18 = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond23, !llvm.loop !22

for.end28:                                        ; preds = %for.cond23
  %8 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  %add = add nsw i32 %8, %sum.0
  tail call void @_Z3delPA100_i(ptr noundef nonnull @a)
  %inc29 = add nuw nsw i32 %k.0, 1
  br label %while.cond, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  %call30 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %vtable.i = load ptr, ptr %call30, align 8, !tbaa !24
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call30, i64 %vbase.offset.i
  %call.i13 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call30, i8 noundef signext %call.i13)
  %call.i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc33 = add nuw nsw i32 %l.0, 1
  br label %for.cond, !llvm.loop !26
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !8, i64 0}
!26 = distinct !{!26, !10, !11}
