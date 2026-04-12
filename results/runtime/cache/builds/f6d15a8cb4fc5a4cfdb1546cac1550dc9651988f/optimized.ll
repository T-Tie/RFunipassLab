; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8_tg3zyz.cpp"
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
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %k.0 = phi i32 [ 1, %entry ], [ %inc17, %for.inc16 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %k.0, %0
  br i1 %cmp.not, label %for.end18, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv8, %2
  br i1 %cmp2, label %for.cond4, label %for.inc16

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %3 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv8, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond1, !llvm.loop !12

for.inc16:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z3sumi(i32 noundef %1)
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call13)
  %vtable.i = load ptr, ptr %call14, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call14, i64 %vbase.offset.i
  %call.i1 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call14, i8 noundef signext %call.i1)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc17 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !15

for.end18:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z3sumi(i32 noundef %n) local_unnamed_addr #3 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end106, %entry
  %accumulator.tr = phi i32 [ 0, %entry ], [ %add, %for.end106 ]
  %n.tr = phi i32 [ %n, %entry ], [ %sub107, %for.end106 ]
  %smax105 = call i32 @llvm.smax.i32(i32 %n.tr, i32 2)
  %smax81 = call i32 @llvm.smax.i32(i32 %n.tr, i32 0)
  %wide.trip.count66 = zext nneg i32 %smax81 to i64
  %wide.trip.count = zext i32 %n.tr to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %tailrecurse
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %for.inc24 ], [ 0, %tailrecurse ]
  %exitcond67.not = icmp eq i64 %indvars.iv63, %wide.trip.count66
  br i1 %exitcond67.not, label %for.cond27.preheader, label %for.body

for.cond27.preheader:                             ; preds = %for.cond
  br label %for.cond27

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv63
  %0 = load i32, ptr %arrayidx, align 16, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14.preheader, label %for.body4

for.cond14.preheader:                             ; preds = %for.cond2
  br label %for.cond14

for.body4:                                        ; preds = %for.cond2
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv63, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !16

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc21
  %indvars.iv58 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next59, %for.inc21 ]
  %exitcond62.not = icmp eq i64 %indvars.iv58, %wide.trip.count
  br i1 %exitcond62.not, label %for.inc24, label %for.inc21

for.inc21:                                        ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv63, i64 %indvars.iv58
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond14, !llvm.loop !17

for.inc24:                                        ; preds = %for.cond14
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br label %for.cond, !llvm.loop !18

for.cond27:                                       ; preds = %for.cond27.preheader, %for.inc60
  %indvars.iv78 = phi i64 [ 0, %for.cond27.preheader ], [ %indvars.iv.next79, %for.inc60 ]
  %exitcond83.not = icmp eq i64 %indvars.iv78, %wide.trip.count66
  br i1 %exitcond83.not, label %for.end62, label %for.body29

for.body29:                                       ; preds = %for.cond27
  %arrayidx31 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv78
  %3 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  br label %for.cond32

for.cond32:                                       ; preds = %for.body34, %for.body29
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.body34 ], [ 0, %for.body29 ]
  %min.2 = phi i32 [ %spec.select56, %for.body34 ], [ %3, %for.body29 ]
  %exitcond72.not = icmp eq i64 %indvars.iv68, %wide.trip.count
  br i1 %exitcond72.not, label %for.cond49.preheader, label %for.body34

for.cond49.preheader:                             ; preds = %for.cond32
  br label %for.cond49

for.body34:                                       ; preds = %for.cond32
  %arrayidx38 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv68, i64 %indvars.iv78
  %4 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %spec.select56 = tail call i32 @llvm.smin.i32(i32 %4, i32 %min.2)
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  br label %for.cond32, !llvm.loop !19

for.cond49:                                       ; preds = %for.cond49.preheader, %for.inc57
  %indvars.iv73 = phi i64 [ 0, %for.cond49.preheader ], [ %indvars.iv.next74, %for.inc57 ]
  %exitcond77.not = icmp eq i64 %indvars.iv73, %wide.trip.count
  br i1 %exitcond77.not, label %for.inc60, label %for.inc57

for.inc57:                                        ; preds = %for.cond49
  %arrayidx55 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv73, i64 %indvars.iv78
  %5 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  %sub56 = sub nsw i32 %5, %min.2
  store i32 %sub56, ptr %arrayidx55, align 4, !tbaa !5
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  br label %for.cond49, !llvm.loop !20

for.inc60:                                        ; preds = %for.cond49
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond27, !llvm.loop !21

for.end62:                                        ; preds = %for.cond27
  %6 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  %cmp63 = icmp eq i32 %n.tr, 2
  br i1 %cmp63, label %cleanup, label %for.cond65.preheader

for.cond65.preheader:                             ; preds = %for.end62
  %wide.trip.count94 = zext nneg i32 %smax105 to i64
  br label %for.cond65

for.cond65:                                       ; preds = %for.cond65.preheader, %for.inc83
  %indvars.iv89 = phi i64 [ 2, %for.cond65.preheader ], [ %indvars.iv.next90, %for.inc83 ]
  %exitcond95.not = icmp eq i64 %indvars.iv89, %wide.trip.count94
  br i1 %exitcond95.not, label %for.cond86.preheader, label %for.cond68.preheader

for.cond86.preheader:                             ; preds = %for.cond65
  br label %for.cond86

for.cond68.preheader:                             ; preds = %for.cond65
  %7 = add nsw i64 %indvars.iv89, -1
  br label %for.cond68

for.cond68:                                       ; preds = %for.cond68.preheader, %for.inc80
  %indvars.iv84 = phi i64 [ 0, %for.cond68.preheader ], [ %indvars.iv.next85, %for.inc80 ]
  %exitcond88.not = icmp eq i64 %indvars.iv84, %wide.trip.count
  br i1 %exitcond88.not, label %for.inc83, label %for.inc80

for.inc80:                                        ; preds = %for.cond68
  %arrayidx74 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv89, i64 %indvars.iv84
  %8 = load i32, ptr %arrayidx74, align 4, !tbaa !5
  %arrayidx79 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %7, i64 %indvars.iv84
  store i32 %8, ptr %arrayidx79, align 4, !tbaa !5
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  br label %for.cond68, !llvm.loop !22

for.inc83:                                        ; preds = %for.cond68
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  br label %for.cond65, !llvm.loop !23

for.cond86:                                       ; preds = %for.cond86.preheader, %for.inc104
  %indvars.iv101 = phi i64 [ 2, %for.cond86.preheader ], [ %indvars.iv.next102, %for.inc104 ]
  %exitcond107.not = icmp eq i64 %indvars.iv101, %wide.trip.count94
  br i1 %exitcond107.not, label %for.end106, label %for.cond89.preheader

for.cond89.preheader:                             ; preds = %for.cond86
  %9 = add nsw i64 %indvars.iv101, -1
  br label %for.cond89

for.cond89:                                       ; preds = %for.cond89.preheader, %for.inc101
  %indvars.iv96 = phi i64 [ 0, %for.cond89.preheader ], [ %indvars.iv.next97, %for.inc101 ]
  %exitcond100.not = icmp eq i64 %indvars.iv96, %wide.trip.count
  br i1 %exitcond100.not, label %for.inc104, label %for.inc101

for.inc101:                                       ; preds = %for.cond89
  %arrayidx95 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv96, i64 %indvars.iv101
  %10 = load i32, ptr %arrayidx95, align 4, !tbaa !5
  %arrayidx100 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv96, i64 %9
  store i32 %10, ptr %arrayidx100, align 4, !tbaa !5
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  br label %for.cond89, !llvm.loop !24

for.inc104:                                       ; preds = %for.cond89
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  br label %for.cond86, !llvm.loop !25

for.end106:                                       ; preds = %for.cond86
  %sub107 = add nsw i32 %n.tr, -1
  %add = add nsw i32 %6, %accumulator.tr
  br label %tailrecurse

cleanup:                                          ; preds = %for.end62
  %accumulator.ret.tr = add nsw i32 %6, %accumulator.tr
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
