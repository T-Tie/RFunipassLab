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
  %indvars.iv26.in = phi i32 [ %indvars.iv26, %for.end100 ], [ %n, %entry ]
  %accumulator.tr = phi i32 [ %add102, %for.end100 ], [ 0, %entry ]
  %smax52 = tail call i32 @llvm.smax.i32(i32 %indvars.iv26.in, i32 noundef 0)
  %wide.trip.count37 = zext nneg i32 %smax52 to i64
  %wide.trip.count = zext i32 %indvars.iv26.in to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end23, %tailrecurse
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %for.end23 ], [ 0, %tailrecurse ]
  %exitcond38.not = icmp eq i64 %indvars.iv34, %wide.trip.count37
  br i1 %exitcond38.not, label %for.cond27, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv34
  %0 = load i32, ptr %arrayidx, align 16, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 1, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14.preheader, label %for.body4

for.cond14.preheader:                             ; preds = %for.cond2
  br label %for.cond14

for.body4:                                        ; preds = %for.cond2
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv34, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !9
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !10

for.cond14:                                       ; preds = %for.cond14.preheader, %for.body16
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.body16 ], [ 0, %for.cond14.preheader ]
  %exitcond33.not = icmp eq i64 %indvars.iv29, %wide.trip.count
  br i1 %exitcond33.not, label %for.end23, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv34, i64 %indvars.iv29
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond14, !llvm.loop !13

for.end23:                                        ; preds = %for.cond14
  store i32 %indvars.iv26.in, ptr @k, align 4, !tbaa !5
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond, !llvm.loop !14

for.cond27:                                       ; preds = %for.cond, %for.end61
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.end61 ], [ 0, %for.cond ]
  %exitcond54.not = icmp eq i64 %indvars.iv49, %wide.trip.count37
  br i1 %exitcond54.not, label %for.end64, label %for.body29

for.body29:                                       ; preds = %for.cond27
  %arrayidx31 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv49
  %3 = load i32, ptr %arrayidx31, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond32

for.cond32:                                       ; preds = %for.body34, %for.body29
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.body34 ], [ 1, %for.body29 ]
  %min.1 = phi i32 [ %spec.select18, %for.body34 ], [ %3, %for.body29 ]
  %exitcond43.not = icmp eq i64 %indvars.iv39, %wide.trip.count
  br i1 %exitcond43.not, label %for.cond51.preheader, label %for.body34

for.cond51.preheader:                             ; preds = %for.cond32
  br label %for.cond51

for.body34:                                       ; preds = %for.cond32
  %arrayidx38 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv39, i64 %indvars.iv49
  %4 = load i32, ptr %arrayidx38, align 4, !tbaa !5, !invariant.load !9
  %spec.select18 = tail call i32 @llvm.smin.i32(i32 %4, i32 %min.1)
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond32, !llvm.loop !15

for.cond51:                                       ; preds = %for.cond51.preheader, %for.body53
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.body53 ], [ 0, %for.cond51.preheader ]
  %exitcond48.not = icmp eq i64 %indvars.iv44, %wide.trip.count
  br i1 %exitcond48.not, label %for.end61, label %for.body53

for.body53:                                       ; preds = %for.cond51
  %arrayidx57 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv44, i64 %indvars.iv49
  %5 = load i32, ptr %arrayidx57, align 4, !tbaa !5, !invariant.load !9
  %sub58 = sub nsw i32 %5, %min.1
  store i32 %sub58, ptr %arrayidx57, align 4, !tbaa !5
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond51, !llvm.loop !16

for.end61:                                        ; preds = %for.cond51
  store i32 %indvars.iv26.in, ptr @k, align 4, !tbaa !5
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond27, !llvm.loop !17

for.end64:                                        ; preds = %for.cond27
  %indvars.iv26 = add i32 %indvars.iv26.in, -1
  %smax63 = tail call i32 @llvm.smax.i32(i32 %indvars.iv26, i32 noundef 1)
  %6 = zext i32 %indvars.iv26 to i64
  %cmp65 = icmp eq i32 %indvars.iv26.in, 2
  %7 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  br i1 %cmp65, label %cleanup, label %for.cond66.preheader

for.cond66.preheader:                             ; preds = %for.end64
  %wide.trip.count64 = zext nneg i32 %smax63 to i64
  br label %for.cond66

for.cond66:                                       ; preds = %for.cond81, %for.cond66.preheader
  %indvars.iv60 = phi i64 [ 1, %for.cond66.preheader ], [ %indvars.iv.next61, %for.cond81 ]
  %exitcond65.not = icmp eq i64 %indvars.iv60, %wide.trip.count64
  br i1 %exitcond65.not, label %for.end100, label %for.body69

for.body69:                                       ; preds = %for.cond66
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %arrayidx71 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv.next61
  %8 = load i32, ptr %arrayidx71, align 4, !tbaa !5, !invariant.load !9
  %arrayidx73 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv60
  store i32 %8, ptr %arrayidx73, align 4, !tbaa !5
  %arrayidx76 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv.next61
  %9 = load i32, ptr %arrayidx76, align 16, !tbaa !5, !invariant.load !9
  %arrayidx79 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv60
  store i32 %9, ptr %arrayidx79, align 16, !tbaa !5
  br label %for.cond81

for.cond81:                                       ; preds = %for.body84, %for.body69
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.body84 ], [ 1, %for.body69 ]
  %exitcond59.not = icmp eq i64 %indvars.iv55, %6
  br i1 %exitcond59.not, label %for.cond66, label %for.body84, !llvm.loop !18

for.body84:                                       ; preds = %for.cond81
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %arrayidx90 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv.next61, i64 %indvars.iv.next56
  %10 = load i32, ptr %arrayidx90, align 4, !tbaa !5, !invariant.load !9
  %arrayidx94 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv60, i64 %indvars.iv55
  store i32 %10, ptr %arrayidx94, align 4, !tbaa !5
  br label %for.cond81, !llvm.loop !19

for.end100:                                       ; preds = %for.cond66
  store i32 %smax63, ptr @i, align 4, !tbaa !5
  %add102 = add nsw i32 %7, %accumulator.tr
  br label %tailrecurse

cleanup:                                          ; preds = %for.end64
  store i32 2, ptr @j, align 4, !tbaa !5
  %accumulator.ret.tr = add nsw i32 %7, %accumulator.tr
  ret i32 %accumulator.ret.tr
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
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

for.cond:                                         ; preds = %for.end12, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc17, %for.end12 ]
  store i32 %storemerge, ptr @l, align 4, !tbaa !5
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %storemerge, %0
  br i1 %cmp, label %for.cond1, label %for.cond19

for.cond1:                                        ; preds = %for.cond, %for.end
  %1 = phi i32 [ %3, %for.end ], [ %0, %for.cond ]
  %storemerge4 = phi i32 [ %inc11, %for.end ], [ 0, %for.cond ]
  store i32 %storemerge4, ptr @j, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %storemerge4, %1
  br i1 %cmp2, label %for.cond4, label %for.end12

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %2 = phi i32 [ %.pre9, %for.body6 ], [ %storemerge4, %for.cond1 ]
  %3 = phi i32 [ %.pre8, %for.body6 ], [ %1, %for.cond1 ]
  %storemerge5 = phi i32 [ %inc, %for.body6 ], [ 0, %for.cond1 ]
  store i32 %storemerge5, ptr @k, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %storemerge5, %3
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %idxprom = sext i32 %2 to i64
  %idxprom7 = sext i32 %storemerge5 to i64
  %arrayidx8 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %4 = load i32, ptr @k, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  %.pre8 = load i32, ptr %n, align 4, !tbaa !5
  %.pre9 = load i32, ptr @j, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !20

for.end:                                          ; preds = %for.cond4
  %inc11 = add nsw i32 %2, 1
  br label %for.cond1, !llvm.loop !21

for.end12:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z4xiaoi(i32 noundef %1) #8
  %5 = load i32, ptr @l, align 4, !tbaa !5
  %idxprom14 = sext i32 %5 to i64
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %result, i64 0, i64 %idxprom14
  store i32 %call13, ptr %arrayidx15, align 4, !tbaa !5
  %inc17 = add nsw i32 %5, 1
  br label %for.cond, !llvm.loop !22

for.cond19:                                       ; preds = %for.cond, %for.body21
  %6 = phi i32 [ %.pre, %for.body21 ], [ %0, %for.cond ]
  %storemerge3 = phi i32 [ %inc27, %for.body21 ], [ 0, %for.cond ]
  store i32 %storemerge3, ptr @l, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %storemerge3, %6
  br i1 %cmp20, label %for.body21, label %for.end28

for.body21:                                       ; preds = %for.cond19
  %idxprom22 = sext i32 %storemerge3 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %result, i64 0, i64 %idxprom22
  %7 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %7)
  %call25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call24, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %8 = load i32, ptr @l, align 4, !tbaa !5
  %inc27 = add nsw i32 %8, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !23

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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
