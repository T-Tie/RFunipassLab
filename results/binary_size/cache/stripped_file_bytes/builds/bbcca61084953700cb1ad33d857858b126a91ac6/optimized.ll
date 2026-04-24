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
  %i.0 = phi i32 [ 1, %entry ], [ %inc31, %for.end27 ]
  %0 = load i32, ptr @g_n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end32, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc11
  %1 = phi i32 [ %3, %for.inc11 ], [ %0, %for.cond ]
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.inc11 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2.not.not = icmp slt i64 %indvars.iv12, %2
  br i1 %cmp2.not.not, label %for.cond4, label %for.cond14

for.cond4:                                        ; preds = %for.cond1, %for.body7
  %3 = phi i32 [ %.pre18, %for.body7 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body7 ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp6.not.not = icmp slt i64 %indvars.iv, %4
  br i1 %cmp6.not.not, label %for.body7, label %for.inc11

for.body7:                                        ; preds = %for.cond4
  %arrayidx9 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv12, i64 %indvars.iv
  %call10 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre18 = load i32, ptr @g_n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc11:                                        ; preds = %for.cond4
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond1, !llvm.loop !12

for.cond14:                                       ; preds = %for.cond1, %for.body20
  %5 = phi i32 [ %.pre, %for.body20 ], [ %1, %for.cond1 ]
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.body20 ], [ 1, %for.cond1 ]
  %sum.0 = phi i32 [ %add, %for.body20 ], [ 0, %for.cond1 ]
  %sub15 = add nsw i32 %5, -1
  %idxprom16 = sext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom16
  %6 = load i32, ptr %arrayidx17, align 16, !tbaa !5
  %cmp19 = icmp sgt i32 %6, -1
  br i1 %cmp19, label %for.body20, label %for.end27

for.body20:                                       ; preds = %for.cond14
  tail call void @_Z7guilingv()
  %arrayidx24 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv15, i64 %indvars.iv15
  %7 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %add = add nsw i32 %7, %sum.0
  %8 = trunc nuw nsw i64 %indvars.iv15 to i32
  tail call void @_Z8xiaojiani(i32 noundef %8)
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %.pre = load i32, ptr @g_n, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !13

for.end27:                                        ; preds = %for.cond14
  %call28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %vtable.i = load ptr, ptr %call28, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call28, i64 %vbase.offset.i
  %call.i10 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call28, i8 noundef signext %call.i10)
  %call.i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc31 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !16

for.end32:                                        ; preds = %for.cond
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z7guilingv() local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr @g_n, align 4, !tbaa !5
  %smax = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count79 = zext nneg i32 %smax to i64
  %wide.trip.count59 = zext i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc115, %entry
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %for.inc115 ], [ 0, %entry ]
  %exitcond80.not = icmp eq i64 %indvars.iv76, %wide.trip.count79
  br i1 %exitcond80.not, label %for.end117, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv76
  %1 = load i32, ptr %arrayidx, align 16, !tbaa !5
  %cmp2 = icmp sgt i32 %1, -1
  br i1 %cmp2, label %for.cond3, label %for.inc115

for.cond3:                                        ; preds = %for.body, %for.inc53
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.inc53 ], [ 0, %for.body ]
  %exitcond60.not = icmp eq i64 %indvars.iv56, %wide.trip.count59
  br i1 %exitcond60.not, label %for.cond56, label %for.cond7

for.cond7:                                        ; preds = %for.cond3, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond3 ]
  %min.0 = phi i32 [ %min.1, %for.inc ], [ 1000, %for.cond3 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count59
  br i1 %exitcond.not, label %for.cond36, label %for.body10

for.body10:                                       ; preds = %for.cond7
  %arrayidx14 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv56, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %2, 0
  br i1 %cmp15, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body10
  %cmp21 = icmp eq i32 %2, 0
  br i1 %cmp21, label %for.inc53, label %if.end23

if.end23:                                         ; preds = %if.end
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %min.0)
  br label %for.inc

for.inc:                                          ; preds = %if.end23, %for.body10
  %min.1 = phi i32 [ %min.0, %for.body10 ], [ %spec.select, %if.end23 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond7, !llvm.loop !17

for.cond36:                                       ; preds = %for.cond7, %for.body39
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.body39 ], [ 0, %for.cond7 ]
  %exitcond55.not = icmp eq i64 %indvars.iv51, %wide.trip.count59
  br i1 %exitcond55.not, label %for.inc53, label %for.body39

for.body39:                                       ; preds = %for.cond36
  %arrayidx43 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv56, i64 %indvars.iv51
  %3 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %sub44 = sub nsw i32 %3, %min.0
  store i32 %sub44, ptr %arrayidx43, align 4, !tbaa !5
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  br label %for.cond36, !llvm.loop !18

for.inc53:                                        ; preds = %if.end, %for.cond36
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br label %for.cond3, !llvm.loop !19

for.cond56:                                       ; preds = %for.cond3, %for.inc111
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.inc111 ], [ 0, %for.cond3 ]
  %exitcond75.not = icmp eq i64 %indvars.iv71, %wide.trip.count59
  br i1 %exitcond75.not, label %for.inc115, label %for.cond60

for.cond60:                                       ; preds = %for.cond56, %for.inc89
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %for.inc89 ], [ 0, %for.cond56 ]
  %min.2 = phi i32 [ %min.3, %for.inc89 ], [ 1000, %for.cond56 ]
  %exitcond65.not = icmp eq i64 %indvars.iv61, %wide.trip.count59
  br i1 %exitcond65.not, label %for.cond94, label %for.body63

for.body63:                                       ; preds = %for.cond60
  %arrayidx67 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv61, i64 %indvars.iv71
  %4 = load i32, ptr %arrayidx67, align 4, !tbaa !5
  %cmp68 = icmp slt i32 %4, 0
  br i1 %cmp68, label %for.inc89, label %if.end70

if.end70:                                         ; preds = %for.body63
  %cmp75 = icmp eq i32 %4, 0
  br i1 %cmp75, label %for.inc111, label %if.end77

if.end77:                                         ; preds = %if.end70
  %spec.select41 = tail call i32 @llvm.smin.i32(i32 %4, i32 %min.2)
  br label %for.inc89

for.inc89:                                        ; preds = %if.end77, %for.body63
  %min.3 = phi i32 [ %min.2, %for.body63 ], [ %spec.select41, %if.end77 ]
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  br label %for.cond60, !llvm.loop !20

for.cond94:                                       ; preds = %for.cond60, %for.body97
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.body97 ], [ 0, %for.cond60 ]
  %exitcond70.not = icmp eq i64 %indvars.iv66, %wide.trip.count59
  br i1 %exitcond70.not, label %for.inc111, label %for.body97

for.body97:                                       ; preds = %for.cond94
  %arrayidx101 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv66, i64 %indvars.iv71
  %5 = load i32, ptr %arrayidx101, align 4, !tbaa !5
  %sub102 = sub nsw i32 %5, %min.2
  store i32 %sub102, ptr %arrayidx101, align 4, !tbaa !5
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %for.cond94, !llvm.loop !21

for.inc111:                                       ; preds = %if.end70, %for.cond94
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %for.cond56, !llvm.loop !22

for.inc115:                                       ; preds = %for.cond56, %for.body
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  br label %for.cond, !llvm.loop !23

for.end117:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z8xiaojiani(i32 noundef %cishu) local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr @g_n, align 4, !tbaa !5
  %idxprom1 = sext i32 %cishu to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond3, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv, i64 %idxprom1
  store i32 -1, ptr %arrayidx2, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !24

for.cond3:                                        ; preds = %for.cond, %for.body6
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.body6 ], [ 0, %for.cond ]
  %exitcond11.not = icmp eq i64 %indvars.iv7, %wide.trip.count
  br i1 %exitcond11.not, label %for.end13, label %for.body6

for.body6:                                        ; preds = %for.cond3
  %arrayidx10 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom1, i64 %indvars.iv7
  store i32 -1, ptr %arrayidx10, align 4, !tbaa !5
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond3, !llvm.loop !25

for.end13:                                        ; preds = %for.cond3
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
