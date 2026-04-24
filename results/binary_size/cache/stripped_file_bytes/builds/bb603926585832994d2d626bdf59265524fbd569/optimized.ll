; ModuleID = '<stdin>'
source_filename = "/tmp/tmpb382xlmd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [200 x [200 x i32]] zeroinitializer, align 16
@sum = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z2xji(i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %n, 1
  br i1 %cmp, label %for.cond.preheader, label %if.end

for.cond.preheader:                               ; preds = %entry
  %wide.trip.count23 = zext nneg i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond2, %for.cond.preheader
  %indvars.iv20 = phi i64 [ 1, %for.cond.preheader ], [ %indvars.iv.next21, %for.cond2 ]
  %exitcond24.not = icmp eq i64 %indvars.iv20, %wide.trip.count23
  br i1 %exitcond24.not, label %for.cond14, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.body4 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count23
  br i1 %exitcond.not, label %for.cond, label %for.body4, !llvm.loop !5

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv.next21, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx6, align 4, !tbaa !8
  %arrayidx10 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv20, i64 %indvars.iv
  store i32 %0, ptr %arrayidx10, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !12

for.cond14:                                       ; preds = %for.cond17, %for.cond
  %indvars.iv30 = phi i64 [ 1, %for.cond ], [ %indvars.iv.next31, %for.cond17 ]
  %exitcond34.not = icmp eq i64 %indvars.iv30, %wide.trip.count23
  br i1 %exitcond34.not, label %if.end, label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %for.cond14
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond17

for.cond17:                                       ; preds = %for.cond17.preheader, %for.body19
  %indvars.iv25 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next26, %for.body19 ]
  %exitcond29.not = icmp eq i64 %indvars.iv25, %wide.trip.count23
  br i1 %exitcond29.not, label %for.cond14, label %for.body19, !llvm.loop !13

for.body19:                                       ; preds = %for.cond17
  %arrayidx24 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv25, i64 %indvars.iv.next31
  %1 = load i32, ptr %arrayidx24, align 4, !tbaa !8
  %arrayidx28 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv25, i64 %indvars.iv30
  store i32 %1, ptr %arrayidx28, align 4, !tbaa !8
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond17, !llvm.loop !14

if.end:                                           ; preds = %for.cond14, %entry
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_Z2gli(i32 noundef %n) local_unnamed_addr #2 {
entry:
  %0 = zext i32 %n to i64
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end65, %entry
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %for.end65 ], [ %0, %entry ]
  %1 = trunc nuw i64 %indvars.iv63 to i32
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %for.cond, label %cleanup

for.cond:                                         ; preds = %tailrecurse, %for.end25
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.end25 ], [ 0, %tailrecurse ]
  %exitcond47.not = icmp eq i64 %indvars.iv43, %indvars.iv63
  br i1 %exitcond47.not, label %for.cond29, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv43
  %2 = load i32, ptr %arrayidx, align 16, !tbaa !8
  br label %for.cond3

for.cond3:                                        ; preds = %for.body5, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 1, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body5 ], [ %2, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %indvars.iv63
  br i1 %exitcond.not, label %for.cond16, label %for.body5

for.body5:                                        ; preds = %for.cond3
  %arrayidx9 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv43, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx9, align 4, !tbaa !8
  %spec.select = tail call i32 @llvm.smin.i32(i32 %3, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !15

for.cond16:                                       ; preds = %for.cond3, %for.body18
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.body18 ], [ 0, %for.cond3 ]
  %exitcond42.not = icmp eq i64 %indvars.iv38, %indvars.iv63
  br i1 %exitcond42.not, label %for.end25, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv43, i64 %indvars.iv38
  %4 = load i32, ptr %arrayidx22, align 4, !tbaa !8
  %sub = sub nsw i32 %4, %min.0
  store i32 %sub, ptr %arrayidx22, align 4, !tbaa !8
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond16, !llvm.loop !16

for.end25:                                        ; preds = %for.cond16
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond, !llvm.loop !17

for.cond29:                                       ; preds = %for.cond, %for.end62
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.end62 ], [ 0, %for.cond ]
  %exitcond62.not = icmp eq i64 %indvars.iv58, %indvars.iv63
  br i1 %exitcond62.not, label %for.end65, label %for.body31

for.body31:                                       ; preds = %for.cond29
  %arrayidx34 = getelementptr inbounds nuw [200 x i32], ptr @a, i64 0, i64 %indvars.iv58
  %5 = load i32, ptr %arrayidx34, align 4, !tbaa !8
  br label %for.cond35

for.cond35:                                       ; preds = %for.body37, %for.body31
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.body37 ], [ 1, %for.body31 ]
  %min32.0 = phi i32 [ %spec.select36, %for.body37 ], [ %5, %for.body31 ]
  %exitcond52.not = icmp eq i64 %indvars.iv48, %indvars.iv63
  br i1 %exitcond52.not, label %for.cond52, label %for.body37

for.body37:                                       ; preds = %for.cond35
  %arrayidx41 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv48, i64 %indvars.iv58
  %6 = load i32, ptr %arrayidx41, align 4, !tbaa !8
  %spec.select36 = tail call i32 @llvm.smin.i32(i32 %6, i32 %min32.0)
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond35, !llvm.loop !18

for.cond52:                                       ; preds = %for.cond35, %for.body54
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.body54 ], [ 0, %for.cond35 ]
  %exitcond57.not = icmp eq i64 %indvars.iv53, %indvars.iv63
  br i1 %exitcond57.not, label %for.end62, label %for.body54

for.body54:                                       ; preds = %for.cond52
  %arrayidx58 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv53, i64 %indvars.iv58
  %7 = load i32, ptr %arrayidx58, align 4, !tbaa !8
  %sub59 = sub nsw i32 %7, %min32.0
  store i32 %sub59, ptr %arrayidx58, align 4, !tbaa !8
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond52, !llvm.loop !19

for.end62:                                        ; preds = %for.cond52
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond29, !llvm.loop !20

for.end65:                                        ; preds = %for.cond29
  %8 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 804), align 4, !tbaa !8
  %9 = load i32, ptr @sum, align 4, !tbaa !8
  %add = add nsw i32 %9, %8
  store i32 %add, ptr @sum, align 4, !tbaa !8
  tail call void @_Z2xji(i32 noundef %1)
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, -1
  br label %tailrecurse

cleanup:                                          ; preds = %tailrecurse
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc17, %for.cond.cleanup ]
  %0 = load i32, ptr %n, align 4, !tbaa !8
  %cmp = icmp slt i32 %k.0, %0
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  store i32 0, ptr @sum, align 4, !tbaa !8
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond.cleanup6, %for.body
  %1 = phi i32 [ %4, %for.cond.cleanup6 ], [ %0, %for.body ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.cond.cleanup6 ], [ 0, %for.body ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv8, %2
  br i1 %cmp2, label %for.cond4, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond1
  call void @_Z2gli(i32 noundef %1)
  %3 = load i32, ptr @sum, align 4, !tbaa !8
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %3)
  %vtable.i = load ptr, ptr %call14, align 8, !tbaa !21
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call14, i64 %vbase.offset.i
  %call.i6 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call14, i8 noundef signext %call.i6)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc17 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !23

for.cond4:                                        ; preds = %for.cond1, %for.body7
  %4 = phi i32 [ %.pre, %for.body7 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body7 ], [ 0, %for.cond1 ]
  %5 = sext i32 %4 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6

for.cond.cleanup6:                                ; preds = %for.cond4
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond1, !llvm.loop !24

for.body7:                                        ; preds = %for.cond4
  %arrayidx9 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv8, i64 %indvars.iv
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !8
  br label %for.cond4, !llvm.loop !25

for.end18:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = distinct !{!12, !6, !7}
!13 = distinct !{!13, !6, !7}
!14 = distinct !{!14, !6, !7}
!15 = distinct !{!15, !6, !7}
!16 = distinct !{!16, !6, !7}
!17 = distinct !{!17, !6, !7}
!18 = distinct !{!18, !6, !7}
!19 = distinct !{!19, !6, !7}
!20 = distinct !{!20, !6, !7}
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !11, i64 0}
!23 = distinct !{!23, !6, !7}
!24 = distinct !{!24, !6, !7}
!25 = distinct !{!25, !6, !7}
