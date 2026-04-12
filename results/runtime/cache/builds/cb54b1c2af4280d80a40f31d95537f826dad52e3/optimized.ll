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

@sum = dso_local local_unnamed_addr global i32 0, align 4
@a = dso_local global [101 x [101 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z7guilingi(i32 noundef %n) local_unnamed_addr #0 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count47 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end27, %entry
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.end27 ], [ 0, %entry ]
  %exitcond48.not = icmp eq i64 %indvars.iv44, %wide.trip.count47
  br i1 %exitcond48.not, label %for.cond31.preheader, label %for.body

for.cond31.preheader:                             ; preds = %for.cond
  %wide.trip.count52 = zext i32 %n to i64
  br label %for.cond31

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv44
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 1, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx8 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv44, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.cond14:                                       ; preds = %for.cond2, %for.body16
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.body16 ], [ 0, %for.cond2 ]
  %exitcond43.not = icmp eq i64 %indvars.iv39, %wide.trip.count
  br i1 %exitcond43.not, label %for.end27, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv44, i64 %indvars.iv39
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond14, !llvm.loop !12

for.end27:                                        ; preds = %for.cond14
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond, !llvm.loop !13

for.cond31:                                       ; preds = %for.cond31.preheader, %for.end68
  %indvars.iv59 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next60, %for.end68 ]
  %exitcond63.not = icmp eq i64 %indvars.iv59, %wide.trip.count47
  br i1 %exitcond63.not, label %for.end71, label %for.body33

for.body33:                                       ; preds = %for.cond31
  %arrayidx36 = getelementptr inbounds nuw [101 x i32], ptr @a, i64 0, i64 %indvars.iv59
  %3 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.body39, %for.body33
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.body39 ], [ 1, %for.body33 ]
  %min34.0 = phi i32 [ %spec.select37, %for.body39 ], [ %3, %for.body33 ]
  %exitcond53.not = icmp eq i64 %indvars.iv49, %wide.trip.count52
  br i1 %exitcond53.not, label %for.cond54, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx43 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv49, i64 %indvars.iv59
  %4 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %spec.select37 = tail call i32 @llvm.smin.i32(i32 %4, i32 %min34.0)
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond37, !llvm.loop !14

for.cond54:                                       ; preds = %for.cond37, %for.body56
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.body56 ], [ 0, %for.cond37 ]
  %exitcond58.not = icmp eq i64 %indvars.iv54, %wide.trip.count52
  br i1 %exitcond58.not, label %for.end68, label %for.body56

for.body56:                                       ; preds = %for.cond54
  %arrayidx60 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv54, i64 %indvars.iv59
  %5 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %sub61 = sub nsw i32 %5, %min34.0
  store i32 %sub61, ptr %arrayidx60, align 4, !tbaa !5
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond54, !llvm.loop !15

for.end68:                                        ; preds = %for.cond54
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  br label %for.cond31, !llvm.loop !16

for.end71:                                        ; preds = %for.cond31
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z8xiaojiani(i32 noundef %n) local_unnamed_addr #0 {
entry:
  %sub = add nsw i32 %n, -1
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %smax22 = tail call i32 @llvm.smax.i32(i32 %sub, i32 1)
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

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond, label %for.body3, !llvm.loop !17

for.body3:                                        ; preds = %for.cond1
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

for.cond17:                                       ; preds = %for.cond17.preheader, %for.body20
  %indvars.iv25 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next26, %for.body20 ]
  %exitcond29.not = icmp eq i64 %indvars.iv25, %wide.trip.count28
  br i1 %exitcond29.not, label %for.cond13, label %for.body20, !llvm.loop !19

for.body20:                                       ; preds = %for.cond17
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
define dso_local void @_Z1fi(i32 noundef %n) local_unnamed_addr #2 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.else, %entry
  %n.tr = phi i32 [ %n, %entry ], [ %sub, %if.else ]
  %cmp = icmp eq i32 %n.tr, 1
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %tailrecurse
  tail call void @_Z7guilingi(i32 noundef %n.tr)
  %0 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 408), align 8, !tbaa !5
  %1 = load i32, ptr @sum, align 4, !tbaa !5
  %add = add nsw i32 %1, %0
  store i32 %add, ptr @sum, align 4, !tbaa !5
  tail call void @_Z8xiaojiani(i32 noundef %n.tr)
  %sub = add nsw i32 %n.tr, -1
  br label %tailrecurse

if.end:                                           ; preds = %tailrecurse
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup3, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.cond.cleanup3 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0

for.body:                                         ; preds = %for.cond
  store i32 0, ptr @sum, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond.cleanup7, %for.body
  %1 = phi i32 [ %4, %for.cond.cleanup7 ], [ %0, %for.body ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.cond.cleanup7 ], [ 0, %for.body ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv8, %2
  br i1 %cmp2, label %for.cond5, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  call void @_Z1fi(i32 noundef %1)
  %3 = load i32, ptr @sum, align 4, !tbaa !5
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %3)
  %vtable.i = load ptr, ptr %call15, align 8, !tbaa !21
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call15, i64 %vbase.offset.i
  %call.i6 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call15, i8 noundef signext %call.i6)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc18 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !23

for.cond5:                                        ; preds = %for.cond1, %for.body8
  %4 = phi i32 [ %.pre, %for.body8 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.cond1 ]
  %5 = sext i32 %4 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond1, !llvm.loop !24

for.body8:                                        ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv8, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !25
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
