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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z7guilingi(i32 noundef %n) local_unnamed_addr #0 {
entry:
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count13 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %entry
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.inc28 ], [ 0, %entry ]
  %exitcond14.not = icmp eq i64 %indvars.iv10, %wide.trip.count13
  br i1 %exitcond14.not, label %for.cond31.preheader, label %for.body

for.cond31.preheader:                             ; preds = %for.cond
  br label %for.cond31

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv10
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 1, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14.preheader, label %for.body4

for.cond14.preheader:                             ; preds = %for.cond2
  br label %for.cond14

for.body4:                                        ; preds = %for.cond2
  %arrayidx8 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv10, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !9
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !10

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc25
  %indvars.iv5 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next6, %for.inc25 ]
  %exitcond9.not = icmp eq i64 %indvars.iv5, %wide.trip.count
  br i1 %exitcond9.not, label %for.inc28, label %for.inc25

for.inc25:                                        ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv10, i64 %indvars.iv5
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  br label %for.cond14, !llvm.loop !13

for.inc28:                                        ; preds = %for.cond14
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond, !llvm.loop !14

for.cond31:                                       ; preds = %for.cond31.preheader, %for.inc69
  %indvars.iv25 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next26, %for.inc69 ]
  %exitcond29.not = icmp eq i64 %indvars.iv25, %wide.trip.count13
  br i1 %exitcond29.not, label %for.end71, label %for.body33

for.body33:                                       ; preds = %for.cond31
  %arrayidx36 = getelementptr inbounds nuw [101 x i32], ptr @a, i64 0, i64 %indvars.iv25
  %3 = load i32, ptr %arrayidx36, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond37

for.cond37:                                       ; preds = %for.body39, %for.body33
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.body39 ], [ 1, %for.body33 ]
  %min34.0 = phi i32 [ %spec.select3, %for.body39 ], [ %3, %for.body33 ]
  %exitcond19.not = icmp eq i64 %indvars.iv15, %wide.trip.count
  br i1 %exitcond19.not, label %for.cond54.preheader, label %for.body39

for.cond54.preheader:                             ; preds = %for.cond37
  br label %for.cond54

for.body39:                                       ; preds = %for.cond37
  %arrayidx43 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv15, i64 %indvars.iv25
  %4 = load i32, ptr %arrayidx43, align 4, !tbaa !5, !invariant.load !9
  %spec.select3 = tail call i32 @llvm.smin.i32(i32 %4, i32 %min34.0)
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond37, !llvm.loop !15

for.cond54:                                       ; preds = %for.cond54.preheader, %for.inc66
  %indvars.iv20 = phi i64 [ 0, %for.cond54.preheader ], [ %indvars.iv.next21, %for.inc66 ]
  %exitcond24.not = icmp eq i64 %indvars.iv20, %wide.trip.count
  br i1 %exitcond24.not, label %for.inc69, label %for.inc66

for.inc66:                                        ; preds = %for.cond54
  %arrayidx60 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv20, i64 %indvars.iv25
  %5 = load i32, ptr %arrayidx60, align 4, !tbaa !5, !invariant.load !9
  %sub61 = sub nsw i32 %5, %min34.0
  store i32 %sub61, ptr %arrayidx60, align 4, !tbaa !5
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond54, !llvm.loop !16

for.inc69:                                        ; preds = %for.cond54
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond31, !llvm.loop !17

for.end71:                                        ; preds = %for.cond31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z8xiaojiani(i32 noundef %n) local_unnamed_addr #0 {
entry:
  %sub = add nsw i32 %n, -1
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0)
  %smax5 = call i32 @llvm.smax.i32(i32 %sub, i32 1)
  %wide.trip.count6 = zext nneg i32 %smax5 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond1, %entry
  %indvars.iv2 = phi i64 [ 1, %entry ], [ %indvars.iv.next3, %for.cond1 ]
  %exitcond7.not = icmp eq i64 %indvars.iv2, %wide.trip.count6
  br i1 %exitcond7.not, label %for.cond13.preheader, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %for.cond1

for.cond13.preheader:                             ; preds = %for.cond
  %wide.trip.count11 = zext i32 %sub to i64
  br label %for.cond13

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond, label %for.inc, !llvm.loop !18

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv.next3, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx5, align 4, !tbaa !5, !invariant.load !9
  %arrayidx9 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv2, i64 %indvars.iv
  store i32 %0, ptr %arrayidx9, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !19

for.cond13:                                       ; preds = %for.cond17, %for.cond13.preheader
  %indvars.iv13 = phi i64 [ 1, %for.cond13.preheader ], [ %indvars.iv.next14, %for.cond17 ]
  %exitcond17.not = icmp eq i64 %indvars.iv13, %wide.trip.count6
  br i1 %exitcond17.not, label %for.end35, label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %for.cond13
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond17

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc30
  %indvars.iv8 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next9, %for.inc30 ]
  %exitcond12.not = icmp eq i64 %indvars.iv8, %wide.trip.count11
  br i1 %exitcond12.not, label %for.cond13, label %for.inc30, !llvm.loop !20

for.inc30:                                        ; preds = %for.cond17
  %arrayidx25 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv8, i64 %indvars.iv.next14
  %1 = load i32, ptr %arrayidx25, align 4, !tbaa !5, !invariant.load !9
  %arrayidx29 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv8, i64 %indvars.iv13
  store i32 %1, ptr %arrayidx29, align 4, !tbaa !5
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond17, !llvm.loop !21

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
  tail call void @_Z7guilingi(i32 noundef %n.tr) #8
  %0 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 408), align 8, !tbaa !5
  %1 = load i32, ptr @sum, align 4, !tbaa !5
  %add = add nsw i32 %1, %0
  store i32 %add, ptr @sum, align 4, !tbaa !5
  tail call void @_Z8xiaojiani(i32 noundef %n.tr) #8
  %sub = add nsw i32 %n.tr, -1
  br label %tailrecurse

if.end:                                           ; preds = %tailrecurse
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 0, ptr @sum, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %1 = phi i32 [ %3, %for.inc12 ], [ %0, %for.body ]
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc12 ], [ 0, %for.body ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv2, %2
  br i1 %cmp2, label %for.cond5, label %for.inc17

for.cond5:                                        ; preds = %for.cond1, %for.inc
  %3 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp6, label %for.inc, label %for.inc12

for.inc:                                          ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv2, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !22

for.inc12:                                        ; preds = %for.cond5
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %for.cond1, !llvm.loop !23

for.inc17:                                        ; preds = %for.cond1
  call void @_Z1fi(i32 noundef %1) #9
  %5 = load i32, ptr @sum, align 4, !tbaa !5
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call15, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc18 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !24

for.end19:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind willreturn }
attributes #9 = { nounwind }

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
!22 = distinct !{!22, !11, !12}
!23 = distinct !{!23, !11, !12}
!24 = distinct !{!24, !11, !12}
