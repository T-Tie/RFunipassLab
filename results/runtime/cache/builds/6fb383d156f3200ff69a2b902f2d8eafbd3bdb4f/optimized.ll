; ModuleID = '<stdin>'
source_filename = "/tmp/tmpcupr7ntm.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@i = dso_local local_unnamed_addr global i32 0, align 4
@j = dso_local local_unnamed_addr global i32 0, align 4
@k = dso_local local_unnamed_addr global i32 0, align 4
@l = dso_local local_unnamed_addr global i32 0, align 4
@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z4xiaoi(i32 noundef %n) local_unnamed_addr #0 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end100, %entry
  %indvars.iv12.in = phi i32 [ %indvars.iv12, %for.end100 ], [ %n, %entry ]
  %accumulator.tr = phi i32 [ %add102, %for.end100 ], [ 0, %entry ]
  %n.tr = phi i32 [ %sub67, %for.end100 ], [ %n, %entry ]
  %indvars.iv12 = add i32 %indvars.iv12.in, -1
  %smax49 = call i32 @llvm.smax.i32(i32 %indvars.iv12, i32 noundef 1)
  %smax38 = call i32 @llvm.smax.i32(i32 %n.tr, i32 noundef 0)
  %0 = zext i32 %indvars.iv12 to i64
  %wide.trip.count23 = zext nneg i32 %smax38 to i64
  %wide.trip.count = zext i32 %n.tr to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %tailrecurse
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.inc24 ], [ 0, %tailrecurse ]
  %exitcond24.not = icmp eq i64 %indvars.iv20, %wide.trip.count23
  br i1 %exitcond24.not, label %for.cond27.preheader, label %for.body

for.cond27.preheader:                             ; preds = %for.cond
  %wide.trip.count28 = zext i32 %n.tr to i64
  br label %for.cond27

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv20
  %1 = load i32, ptr %arrayidx, align 16, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 1, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ %1, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14.preheader, label %for.body4

for.cond14.preheader:                             ; preds = %for.cond2
  br label %for.cond14

for.body4:                                        ; preds = %for.cond2
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv20, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc21
  %indvars.iv15 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next16, %for.inc21 ]
  %exitcond19.not = icmp eq i64 %indvars.iv15, %wide.trip.count
  br i1 %exitcond19.not, label %for.inc24, label %for.inc21

for.inc21:                                        ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv20, i64 %indvars.iv15
  %3 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %sub = sub nsw i32 %3, %min.0
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond14, !llvm.loop !12

for.inc24:                                        ; preds = %for.cond14
  store i32 %n.tr, ptr @k, align 4, !tbaa !5
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond, !llvm.loop !13

for.cond27:                                       ; preds = %for.cond27.preheader, %for.inc62
  %indvars.iv35 = phi i64 [ 0, %for.cond27.preheader ], [ %indvars.iv.next36, %for.inc62 ]
  %exitcond40.not = icmp eq i64 %indvars.iv35, %wide.trip.count23
  br i1 %exitcond40.not, label %for.end64, label %for.body29

for.body29:                                       ; preds = %for.cond27
  %arrayidx31 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv35
  %4 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  br label %for.cond32

for.cond32:                                       ; preds = %for.body34, %for.body29
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.body34 ], [ 1, %for.body29 ]
  %min.1 = phi i32 [ %spec.select4, %for.body34 ], [ %4, %for.body29 ]
  %exitcond29.not = icmp eq i64 %indvars.iv25, %wide.trip.count28
  br i1 %exitcond29.not, label %for.cond51.preheader, label %for.body34

for.cond51.preheader:                             ; preds = %for.cond32
  br label %for.cond51

for.body34:                                       ; preds = %for.cond32
  %arrayidx38 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv25, i64 %indvars.iv35
  %5 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %spec.select4 = tail call i32 @llvm.smin.i32(i32 %5, i32 %min.1)
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond32, !llvm.loop !14

for.cond51:                                       ; preds = %for.cond51.preheader, %for.inc59
  %indvars.iv30 = phi i64 [ 0, %for.cond51.preheader ], [ %indvars.iv.next31, %for.inc59 ]
  %exitcond34.not = icmp eq i64 %indvars.iv30, %wide.trip.count28
  br i1 %exitcond34.not, label %for.inc62, label %for.inc59

for.inc59:                                        ; preds = %for.cond51
  %arrayidx57 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv30, i64 %indvars.iv35
  %6 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %sub58 = sub nsw i32 %6, %min.1
  store i32 %sub58, ptr %arrayidx57, align 4, !tbaa !5
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond51, !llvm.loop !15

for.inc62:                                        ; preds = %for.cond51
  store i32 %n.tr, ptr @k, align 4, !tbaa !5
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond27, !llvm.loop !16

for.end64:                                        ; preds = %for.cond27
  %cmp65 = icmp eq i32 %n.tr, 2
  %7 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  br i1 %cmp65, label %if.then, label %if.end

if.then:                                          ; preds = %for.end64
  store i32 %smax38, ptr @j, align 4, !tbaa !5
  %accumulator.ret.tr = add nsw i32 %7, %accumulator.tr
  ret i32 %accumulator.ret.tr

if.end:                                           ; preds = %for.end64
  %wide.trip.count50 = zext nneg i32 %smax49 to i64
  br label %for.cond66

for.cond66:                                       ; preds = %for.cond81, %if.end
  %indvars.iv46 = phi i64 [ 1, %if.end ], [ %indvars.iv.next47, %for.cond81 ]
  %exitcond51.not = icmp eq i64 %indvars.iv46, %wide.trip.count50
  br i1 %exitcond51.not, label %for.end100, label %for.body69

for.body69:                                       ; preds = %for.cond66
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %arrayidx71 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv.next47
  %8 = load i32, ptr %arrayidx71, align 4, !tbaa !5
  %arrayidx73 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv46
  store i32 %8, ptr %arrayidx73, align 4, !tbaa !5
  %arrayidx76 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv.next47
  %9 = load i32, ptr %arrayidx76, align 16, !tbaa !5
  %arrayidx79 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv46
  store i32 %9, ptr %arrayidx79, align 16, !tbaa !5
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc95, %for.body69
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.inc95 ], [ 1, %for.body69 ]
  %exitcond45.not = icmp eq i64 %indvars.iv41, %0
  br i1 %exitcond45.not, label %for.cond66, label %for.inc95, !llvm.loop !17

for.inc95:                                        ; preds = %for.cond81
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %arrayidx90 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv.next47, i64 %indvars.iv.next42
  %10 = load i32, ptr %arrayidx90, align 4, !tbaa !5
  %arrayidx94 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv46, i64 %indvars.iv41
  store i32 %10, ptr %arrayidx94, align 4, !tbaa !5
  br label %for.cond81, !llvm.loop !18

for.end100:                                       ; preds = %for.cond66
  %sub67 = add nsw i32 %n.tr, -1
  store i32 %smax49, ptr @i, align 4, !tbaa !5
  %add102 = add nsw i32 %7, %accumulator.tr
  br label %tailrecurse
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %result = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %result) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc17, %for.inc16 ]
  store i32 %storemerge, ptr @l, align 4, !tbaa !5
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %storemerge, %0
  br i1 %cmp, label %for.cond1, label %for.cond19

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %2, %for.inc10 ], [ %0, %for.cond ]
  %storemerge2 = phi i32 [ %inc11, %for.inc10 ], [ 0, %for.cond ]
  store i32 %storemerge2, ptr @j, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %storemerge2, %1
  br i1 %cmp2, label %for.cond4, label %for.inc16

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %2 = phi i32 [ %.pre4, %for.inc ], [ %1, %for.cond1 ]
  %storemerge3 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond1 ]
  store i32 %storemerge3, ptr @k, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %storemerge3, %2
  %3 = load i32, ptr @j, align 4, !tbaa !5
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %idxprom = sext i32 %3 to i64
  %idxprom7 = sext i32 %storemerge3 to i64
  %arrayidx8 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %4 = load i32, ptr @k, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  %.pre4 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !19

for.inc10:                                        ; preds = %for.cond4
  %inc11 = add nsw i32 %3, 1
  br label %for.cond1, !llvm.loop !20

for.inc16:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z4xiaoi(i32 noundef %1) #8
  %5 = load i32, ptr @l, align 4, !tbaa !5
  %idxprom14 = sext i32 %5 to i64
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %result, i64 0, i64 %idxprom14
  store i32 %call13, ptr %arrayidx15, align 4, !tbaa !5
  %inc17 = add nsw i32 %5, 1
  br label %for.cond, !llvm.loop !21

for.cond19:                                       ; preds = %for.cond, %for.inc26
  %6 = phi i32 [ %.pre, %for.inc26 ], [ %0, %for.cond ]
  %storemerge1 = phi i32 [ %inc27, %for.inc26 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr @l, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %storemerge1, %6
  br i1 %cmp20, label %for.inc26, label %for.end28

for.inc26:                                        ; preds = %for.cond19
  %idxprom22 = sext i32 %storemerge1 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %result, i64 0, i64 %idxprom22
  %7 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %7)
  %call25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call24, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %8 = load i32, ptr @l, align 4, !tbaa !5
  %inc27 = add nsw i32 %8, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !22

for.end28:                                        ; preds = %for.cond19
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %result) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
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
