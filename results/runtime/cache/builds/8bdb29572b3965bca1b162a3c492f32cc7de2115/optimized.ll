; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmyakh1hz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [101 x [101 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %k.0 = phi i32 [ 1, %entry ], [ %inc17, %for.inc16 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %k.0, %0
  br i1 %cmp.not, label %for.end18, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc10 ], [ 1, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2.not = icmp sgt i64 %indvars.iv2, %2
  br i1 %cmp2.not, label %for.inc16, label %for.cond4

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %3 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5.not = icmp sgt i64 %indvars.iv, %4
  br i1 %cmp5.not, label %for.inc10, label %for.inc

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv2, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %for.cond1, !llvm.loop !12

for.inc16:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z6hanshui(i32 noundef %1) #8
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call13)
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call14, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc17 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !13

for.end18:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z6hanshui(i32 noundef %n) local_unnamed_addr #3 {
entry:
  %0 = add i32 %n, 1
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end100, %entry
  %indvars.iv3 = phi i32 [ %indvars.iv.next4, %for.end100 ], [ %0, %entry ]
  %accumulator.tr = phi i32 [ %add102, %for.end100 ], [ 0, %entry ]
  %n.tr = phi i32 [ %sub101, %for.end100 ], [ %n, %entry ]
  %smax50 = call i32 @llvm.smax.i32(i32 %n.tr, i32 noundef 1)
  %cmp = icmp eq i32 %n.tr, 1
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %tailrecurse
  %smax39 = call i32 @llvm.smax.i32(i32 %n.tr, i32 noundef 0)
  %1 = add nuw i32 %smax39, 1
  %wide.trip.count13 = zext i32 %1 to i64
  %wide.trip.count = zext i32 %indvars.iv3 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc23
  %indvars.iv10 = phi i64 [ 1, %for.cond.preheader ], [ %indvars.iv.next11, %for.inc23 ]
  %exitcond14 = icmp eq i64 %indvars.iv10, %wide.trip.count13
  br i1 %exitcond14, label %for.cond26.preheader, label %for.cond2

for.cond26.preheader:                             ; preds = %for.cond
  br label %for.cond26

for.cond2:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 1, %for.cond ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ 10000, %for.cond ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.cond13.preheader, label %for.body4

for.cond13.preheader:                             ; preds = %for.cond2
  br label %for.cond13

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv10, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !14

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc20
  %indvars.iv5 = phi i64 [ 1, %for.cond13.preheader ], [ %indvars.iv.next6, %for.inc20 ]
  %exitcond9 = icmp eq i64 %indvars.iv5, %wide.trip.count
  br i1 %exitcond9, label %for.inc23, label %for.inc20

for.inc20:                                        ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv10, i64 %indvars.iv5
  %3 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %sub = sub nsw i32 %3, %min.0
  store i32 %sub, ptr %arrayidx19, align 4, !tbaa !5
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  br label %for.cond13, !llvm.loop !15

for.inc23:                                        ; preds = %for.cond13
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond, !llvm.loop !16

for.cond26:                                       ; preds = %for.cond26.preheader, %for.inc57
  %indvars.iv25 = phi i64 [ 1, %for.cond26.preheader ], [ %indvars.iv.next26, %for.inc57 ]
  %exitcond30 = icmp eq i64 %indvars.iv25, %wide.trip.count13
  br i1 %exitcond30, label %for.end59, label %for.cond29

for.cond29:                                       ; preds = %for.cond26, %for.body31
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.body31 ], [ 1, %for.cond26 ]
  %min.2 = phi i32 [ %spec.select1, %for.body31 ], [ 10000, %for.cond26 ]
  %exitcond19 = icmp eq i64 %indvars.iv15, %wide.trip.count
  br i1 %exitcond19, label %for.cond46.preheader, label %for.body31

for.cond46.preheader:                             ; preds = %for.cond29
  br label %for.cond46

for.body31:                                       ; preds = %for.cond29
  %arrayidx35 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv15, i64 %indvars.iv25
  %4 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %spec.select1 = tail call i32 @llvm.smin.i32(i32 %4, i32 %min.2)
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond29, !llvm.loop !17

for.cond46:                                       ; preds = %for.cond46.preheader, %for.inc54
  %indvars.iv20 = phi i64 [ 1, %for.cond46.preheader ], [ %indvars.iv.next21, %for.inc54 ]
  %exitcond24 = icmp eq i64 %indvars.iv20, %wide.trip.count
  br i1 %exitcond24, label %for.inc57, label %for.inc54

for.inc54:                                        ; preds = %for.cond46
  %arrayidx52 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv20, i64 %indvars.iv25
  %5 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %sub53 = sub nsw i32 %5, %min.2
  store i32 %sub53, ptr %arrayidx52, align 4, !tbaa !5
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond46, !llvm.loop !18

for.inc57:                                        ; preds = %for.cond46
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond26, !llvm.loop !19

for.end59:                                        ; preds = %for.cond26
  %6 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 816), align 16, !tbaa !5
  %wide.trip.count34 = zext i32 %n.tr to i64
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc77, %for.end59
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.inc77 ], [ 1, %for.end59 ]
  %exitcond41 = icmp eq i64 %indvars.iv36, %wide.trip.count13
  br i1 %exitcond41, label %for.cond80.preheader, label %for.cond63

for.cond80.preheader:                             ; preds = %for.cond60
  %wide.trip.count51 = zext nneg i32 %smax50 to i64
  br label %for.cond80

for.cond63:                                       ; preds = %for.cond60, %for.inc74
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.inc74 ], [ 2, %for.cond60 ]
  %exitcond35.not = icmp eq i64 %indvars.iv31, %wide.trip.count34
  br i1 %exitcond35.not, label %for.inc77, label %for.inc74

for.inc74:                                        ; preds = %for.cond63
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %arrayidx69 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv36, i64 %indvars.iv.next32
  %7 = load i32, ptr %arrayidx69, align 4, !tbaa !5
  %arrayidx73 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv36, i64 %indvars.iv31
  store i32 %7, ptr %arrayidx73, align 4, !tbaa !5
  br label %for.cond63, !llvm.loop !20

for.inc77:                                        ; preds = %for.cond63
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond60, !llvm.loop !21

for.cond80:                                       ; preds = %for.cond80.preheader, %for.inc98
  %indvars.iv47 = phi i64 [ 1, %for.cond80.preheader ], [ %indvars.iv.next48, %for.inc98 ]
  %exitcond52.not = icmp eq i64 %indvars.iv47, %wide.trip.count51
  br i1 %exitcond52.not, label %for.end100, label %for.cond83

for.cond83:                                       ; preds = %for.cond80, %for.inc95
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.inc95 ], [ 2, %for.cond80 ]
  %exitcond46.not = icmp eq i64 %indvars.iv42, %wide.trip.count34
  br i1 %exitcond46.not, label %for.inc98, label %for.inc95

for.inc95:                                        ; preds = %for.cond83
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %arrayidx90 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv.next43, i64 %indvars.iv47
  %8 = load i32, ptr %arrayidx90, align 4, !tbaa !5
  %arrayidx94 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv42, i64 %indvars.iv47
  store i32 %8, ptr %arrayidx94, align 4, !tbaa !5
  br label %for.cond83, !llvm.loop !22

for.inc98:                                        ; preds = %for.cond83
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond80, !llvm.loop !23

for.end100:                                       ; preds = %for.cond80
  %sub101 = add nsw i32 %n.tr, -1
  %add102 = add nsw i32 %6, %accumulator.tr
  %indvars.iv.next4 = add i32 %indvars.iv3, -1
  br label %tailrecurse

cleanup:                                          ; preds = %tailrecurse
  ret i32 %accumulator.tr
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nounwind }

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
