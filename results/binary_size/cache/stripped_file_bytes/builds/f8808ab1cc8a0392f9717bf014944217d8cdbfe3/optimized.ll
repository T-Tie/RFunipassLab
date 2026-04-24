; ModuleID = '<stdin>'
source_filename = "/tmp/tmps6o55l58.cpp"
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
@g_n = dso_local global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @g_n)
  br label %for.cond

for.cond:                                         ; preds = %for.end27, %entry
  %0 = load i32, ptr @g_n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.cond1, label %for.end32

for.cond1:                                        ; preds = %for.cond4, %for.cond
  %1 = phi i32 [ %0, %for.cond ], [ %2, %for.cond4 ]
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %for.cond4, label %for.cond14

for.cond4:                                        ; preds = %for.cond1, %for.body7
  %2 = phi i32 [ %.pre9, %for.body7 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body7 ], [ 0, %for.cond1 ]
  %3 = sext i32 %2 to i64
  %cmp6.not.not = icmp slt i64 %indvars.iv, %3
  br i1 %cmp6.not.not, label %for.body7, label %for.cond1

for.body7:                                        ; preds = %for.cond4
  %arrayidx9 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv
  %call10 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre9 = load i32, ptr @g_n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.cond14:                                       ; preds = %for.cond1, %for.body20
  %4 = phi i32 [ %.pre, %for.body20 ], [ %1, %for.cond1 ]
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %for.body20 ], [ 1, %for.cond1 ]
  %sum.0 = phi i32 [ %add, %for.body20 ], [ 0, %for.cond1 ]
  %sub15 = add nsw i32 %4, -1
  %idxprom16 = sext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom16
  %5 = load i32, ptr %arrayidx17, align 16, !tbaa !5
  %cmp19 = icmp sgt i32 %5, -1
  br i1 %cmp19, label %for.body20, label %for.end27

for.body20:                                       ; preds = %for.cond14
  tail call void @_Z7guilingv() #8
  %arrayidx24 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv6, i64 %indvars.iv6
  %6 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %add = add nsw i32 %6, %sum.0
  %7 = trunc nuw nsw i64 %indvars.iv6 to i32
  tail call void @_Z8xiaojiani(i32 noundef %7) #8
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %.pre = load i32, ptr @g_n, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !12

for.end27:                                        ; preds = %for.cond14
  %call28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %call29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call28, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.cond

for.end32:                                        ; preds = %for.cond
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z7guilingv() local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr @g_n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  %1 = load i32, ptr @a, align 16
  %cmp2 = icmp sgt i32 %1, -1
  br i1 %cmp, label %for.cond.preheader, label %for.end117

for.cond.preheader:                               ; preds = %entry
  %wide.trip.count31 = zext nneg i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %if.end114
  br i1 %cmp2, label %for.cond3, label %if.end114

for.cond3:                                        ; preds = %for.cond, %if.end52
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %if.end52 ], [ 0, %for.cond ]
  %exitcond32.not = icmp eq i64 %indvars.iv28, %wide.trip.count31
  br i1 %exitcond32.not, label %for.cond56, label %for.cond7

for.cond7:                                        ; preds = %for.cond3, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond3 ]
  %min.0 = phi i32 [ %min.1, %for.inc ], [ 1000, %for.cond3 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count31
  br i1 %exitcond.not, label %for.cond36.preheader, label %for.body10

for.cond36.preheader:                             ; preds = %for.cond7
  br label %for.cond36

for.body10:                                       ; preds = %for.cond7
  %arrayidx14 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv28, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx14, align 4, !tbaa !5, !invariant.load !13
  %cmp15 = icmp slt i32 %2, 0
  br i1 %cmp15, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body10
  %cmp21 = icmp eq i32 %2, 0
  br i1 %cmp21, label %if.end52, label %if.end23

if.end23:                                         ; preds = %if.end
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %min.0)
  br label %for.inc

for.inc:                                          ; preds = %if.end23, %for.body10
  %min.1 = phi i32 [ %min.0, %for.body10 ], [ %spec.select, %if.end23 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond7, !llvm.loop !14

for.cond36:                                       ; preds = %for.cond36.preheader, %for.body39
  %indvars.iv23 = phi i64 [ 0, %for.cond36.preheader ], [ %indvars.iv.next24, %for.body39 ]
  %exitcond27.not = icmp eq i64 %indvars.iv23, %wide.trip.count31
  br i1 %exitcond27.not, label %if.end52, label %for.body39

for.body39:                                       ; preds = %for.cond36
  %arrayidx43 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv28, i64 %indvars.iv23
  %3 = load i32, ptr %arrayidx43, align 4, !tbaa !5, !invariant.load !13
  %sub44 = sub nsw i32 %3, %min.0
  store i32 %sub44, ptr %arrayidx43, align 4, !tbaa !5
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond36, !llvm.loop !15

if.end52:                                         ; preds = %if.end, %for.cond36
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond3, !llvm.loop !16

for.cond56:                                       ; preds = %for.cond3, %if.end110
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %if.end110 ], [ 0, %for.cond3 ]
  %exitcond47.not = icmp eq i64 %indvars.iv43, %wide.trip.count31
  br i1 %exitcond47.not, label %if.end114, label %for.cond60

for.cond60:                                       ; preds = %for.cond56, %for.inc89
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.inc89 ], [ 0, %for.cond56 ]
  %min.3 = phi i32 [ %min.4, %for.inc89 ], [ 1000, %for.cond56 ]
  %exitcond37.not = icmp eq i64 %indvars.iv33, %wide.trip.count31
  br i1 %exitcond37.not, label %for.cond94.preheader, label %for.body63

for.cond94.preheader:                             ; preds = %for.cond60
  br label %for.cond94

for.body63:                                       ; preds = %for.cond60
  %arrayidx67 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv33, i64 %indvars.iv43
  %4 = load i32, ptr %arrayidx67, align 4, !tbaa !5, !invariant.load !13
  %cmp68 = icmp slt i32 %4, 0
  br i1 %cmp68, label %for.inc89, label %if.end70

if.end70:                                         ; preds = %for.body63
  %cmp75 = icmp eq i32 %4, 0
  br i1 %cmp75, label %if.end110, label %if.end77

if.end77:                                         ; preds = %if.end70
  %spec.select13 = tail call i32 @llvm.smin.i32(i32 %4, i32 %min.3)
  br label %for.inc89

for.inc89:                                        ; preds = %if.end77, %for.body63
  %min.4 = phi i32 [ %min.3, %for.body63 ], [ %spec.select13, %if.end77 ]
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond60, !llvm.loop !17

for.cond94:                                       ; preds = %for.cond94.preheader, %for.body97
  %indvars.iv38 = phi i64 [ 0, %for.cond94.preheader ], [ %indvars.iv.next39, %for.body97 ]
  %exitcond42.not = icmp eq i64 %indvars.iv38, %wide.trip.count31
  br i1 %exitcond42.not, label %if.end110, label %for.body97

for.body97:                                       ; preds = %for.cond94
  %arrayidx101 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv38, i64 %indvars.iv43
  %5 = load i32, ptr %arrayidx101, align 4, !tbaa !5, !invariant.load !13
  %sub102 = sub nsw i32 %5, %min.3
  store i32 %sub102, ptr %arrayidx101, align 4, !tbaa !5
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond94, !llvm.loop !18

if.end110:                                        ; preds = %if.end70, %for.cond94
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond56, !llvm.loop !19

if.end114:                                        ; preds = %for.cond56, %for.cond
  br label %for.cond

for.end117:                                       ; preds = %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: write) uwtable
define dso_local void @_Z8xiaojiani(i32 noundef %cishu) local_unnamed_addr #3 {
entry:
  %0 = load i32, ptr @g_n, align 4, !tbaa !5
  %idxprom1 = sext i32 %cishu to i64
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0) #9
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond3.preheader, label %for.body

for.cond3.preheader:                              ; preds = %for.cond
  %cmp5 = icmp slt i32 %0, 1
  call void @llvm.assume(i1 noundef %cmp5) #10
  ret void

for.body:                                         ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv, i64 %idxprom1
  store i32 -1, ptr %arrayidx2, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !20
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { willreturn }
attributes #10 = { willreturn memory(write) }

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
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
