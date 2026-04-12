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

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z7zerorowi(i32 noundef %k) local_unnamed_addr #0 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 noundef %k, i32 noundef 0)
  %wide.trip.count24 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %k to i64
  br label %for.cond

for.cond:                                         ; preds = %if.end28, %entry
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %if.end28 ], [ 0, %entry ]
  %exitcond25.not = icmp eq i64 %indvars.iv21, %wide.trip.count24
  br i1 %exitcond25.not, label %for.end31, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv21
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond2

for.cond2:                                        ; preds = %for.body5, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 1, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body5 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup4, label %for.body5

for.cond.cleanup4:                                ; preds = %for.cond2
  %tobool.not = icmp eq i32 %min.0, 0
  br i1 %tobool.not, label %if.end28, label %for.cond17

for.body5:                                        ; preds = %for.cond2
  %arrayidx9 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv21, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx9, align 4, !tbaa !5, !invariant.load !9
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !10

for.cond17:                                       ; preds = %for.cond.cleanup4, %for.body20
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.body20 ], [ 0, %for.cond.cleanup4 ]
  %exitcond20.not = icmp eq i64 %indvars.iv16, %wide.trip.count
  br i1 %exitcond20.not, label %if.end28, label %for.body20

for.body20:                                       ; preds = %for.cond17
  %arrayidx24 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv21, i64 %indvars.iv16
  %2 = load i32, ptr %arrayidx24, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx24, align 4, !tbaa !5
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond17, !llvm.loop !13

if.end28:                                         ; preds = %for.cond17, %for.cond.cleanup4
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond, !llvm.loop !14

for.end31:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z7zerocoli(i32 noundef %k) local_unnamed_addr #0 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 noundef %k, i32 noundef 0)
  %wide.trip.count24 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %k to i64
  br label %for.cond

for.cond:                                         ; preds = %if.end27, %entry
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %if.end27 ], [ 0, %entry ]
  %exitcond25.not = icmp eq i64 %indvars.iv21, %wide.trip.count24
  br i1 %exitcond25.not, label %for.end30, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [101 x i32], ptr @a, i64 0, i64 %indvars.iv21
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond1

for.cond1:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 1, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup3, label %for.body4

for.cond.cleanup3:                                ; preds = %for.cond1
  %tobool.not = icmp eq i32 %min.0, 0
  br i1 %tobool.not, label %if.end27, label %for.cond16

for.body4:                                        ; preds = %for.cond1
  %arrayidx8 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv, i64 %indvars.iv21
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !9
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !15

for.cond16:                                       ; preds = %for.cond.cleanup3, %for.body19
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.body19 ], [ 0, %for.cond.cleanup3 ]
  %exitcond20.not = icmp eq i64 %indvars.iv16, %wide.trip.count
  br i1 %exitcond20.not, label %if.end27, label %for.body19

for.body19:                                       ; preds = %for.cond16
  %arrayidx23 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv16, i64 %indvars.iv21
  %2 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond16, !llvm.loop !16

if.end27:                                         ; preds = %for.cond16, %for.cond.cleanup3
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond, !llvm.loop !17

for.end30:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z4jiani(i32 noundef %k) local_unnamed_addr #0 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 noundef %k, i32 noundef 2)
  %wide.trip.count21 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %k to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup3, %entry
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.cond.cleanup3 ], [ 2, %entry ]
  %exitcond22.not = icmp eq i64 %indvars.iv17, %wide.trip.count21
  br i1 %exitcond22.not, label %for.cond15.preheader, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add nsw i64 %indvars.iv17, -1
  br label %for.cond1

for.cond15.preheader:                             ; preds = %for.cond
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %sub21 = add i32 %k, -1
  %smax26 = tail call i32 @llvm.smax.i32(i32 noundef %sub21, i32 noundef 0)
  %smax33 = tail call i32 @llvm.smax.i32(i32 %1, i32 noundef 2)
  %wide.trip.count34 = zext nneg i32 %smax33 to i64
  %wide.trip.count27 = zext nneg i32 %smax26 to i64
  br label %for.cond15

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body4
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body4 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup3, label %for.body4

for.cond.cleanup3:                                ; preds = %for.cond1
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond, !llvm.loop !18

for.body4:                                        ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv17, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !9
  %arrayidx10 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %0, i64 %indvars.iv
  store i32 %2, ptr %arrayidx10, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !19

for.cond15:                                       ; preds = %for.cond15.preheader, %for.cond.cleanup23
  %indvars.iv29 = phi i64 [ 2, %for.cond15.preheader ], [ %indvars.iv.next30, %for.cond.cleanup23 ]
  %exitcond35.not = icmp eq i64 %indvars.iv29, %wide.trip.count34
  br i1 %exitcond35.not, label %for.end39, label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.cond15
  %3 = add nsw i64 %indvars.iv29, -1
  br label %for.cond20

for.cond20:                                       ; preds = %for.cond20.preheader, %for.body24
  %indvars.iv23 = phi i64 [ 0, %for.cond20.preheader ], [ %indvars.iv.next24, %for.body24 ]
  %exitcond28.not = icmp eq i64 %indvars.iv23, %wide.trip.count27
  br i1 %exitcond28.not, label %for.cond.cleanup23, label %for.body24

for.cond.cleanup23:                               ; preds = %for.cond20
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond15, !llvm.loop !20

for.body24:                                       ; preds = %for.cond20
  %arrayidx28 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv23, i64 %indvars.iv29
  %4 = load i32, ptr %arrayidx28, align 4, !tbaa !5, !invariant.load !9
  %arrayidx33 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv23, i64 %3
  store i32 %4, ptr %arrayidx33, align 4, !tbaa !5
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond20, !llvm.loop !21

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
  %vtable = load ptr, ptr %call1, align 8, !tbaa !22
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !9
  %add.ptr = getelementptr inbounds i8, ptr %call1, i64 %vbase.offset
  %call2 = tail call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr)
  br i1 %call2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr @sum, align 4, !tbaa !5
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup5, %while.body
  %.pre16 = phi i32 [ %.pre1618, %for.cond.cleanup5 ], [ %.pre, %while.body ]
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.cond.cleanup5 ], [ 0, %while.body ]
  %0 = sext i32 %.pre16 to i64
  %cmp = icmp slt i64 %indvars.iv12, %0
  br i1 %cmp, label %for.cond3, label %for.cond13

for.cond3:                                        ; preds = %for.cond, %if.end
  %.pre1618 = phi i32 [ %.pre1617, %if.end ], [ %.pre16, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %for.cond ]
  %1 = sext i32 %.pre1618 to i64
  %cmp4 = icmp slt i64 %indvars.iv, %1
  br i1 %cmp4, label %for.body6, label %for.cond.cleanup5

for.cond.cleanup5:                                ; preds = %for.cond3
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond, !llvm.loop !24

for.body6:                                        ; preds = %for.cond3
  %2 = or i64 %indvars.iv, %indvars.iv12
  %3 = and i64 %2, 4294967295
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body6
  %arrayidx8 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv12, i64 %indvars.iv
  %call9 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %.pre15 = load i32, ptr @n, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body6
  %.pre1617 = phi i32 [ %.pre15, %if.then ], [ %.pre1618, %for.body6 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !25

for.cond13:                                       ; preds = %for.cond, %for.body15
  %storemerge = phi i32 [ %dec, %for.body15 ], [ %.pre16, %for.cond ]
  store i32 %storemerge, ptr @k, align 4, !tbaa !5
  %cmp14 = icmp sgt i32 %storemerge, 1
  br i1 %cmp14, label %for.body15, label %for.end18

for.body15:                                       ; preds = %for.cond13
  tail call void @_Z7zerorowi(i32 noundef %storemerge) #6
  %4 = load i32, ptr @k, align 4, !tbaa !5
  tail call void @_Z7zerocoli(i32 noundef %4) #6
  %5 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 408), align 8, !tbaa !5
  %6 = load i32, ptr @sum, align 4, !tbaa !5
  %add16 = add nsw i32 %6, %5
  store i32 %add16, ptr @sum, align 4, !tbaa !5
  %7 = load i32, ptr @k, align 4, !tbaa !5
  tail call void @_Z4jiani(i32 noundef %7) #6
  %8 = load i32, ptr @k, align 4, !tbaa !5
  %dec = add nsw i32 %8, -1
  br label %for.cond13, !llvm.loop !26

for.end18:                                        ; preds = %for.cond13
  %9 = load i32, ptr @sum, align 4, !tbaa !5
  %call19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %9)
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !8, i64 0}
!24 = distinct !{!24, !11, !12}
!25 = distinct !{!25, !11, !12}
!26 = distinct !{!26, !11, !12}
!27 = distinct !{!27, !11, !12}
