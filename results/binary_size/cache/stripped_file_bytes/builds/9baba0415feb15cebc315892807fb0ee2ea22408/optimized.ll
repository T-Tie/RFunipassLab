; ModuleID = '<stdin>'
source_filename = "/tmp/tmppt7axdys.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x [100 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %arrayidx103 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %for.inc164, %entry
  %m.0 = phi i32 [ 0, %entry ], [ %inc165, %for.inc164 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %m.0, %0
  br i1 %cmp, label %for.cond1, label %for.end166

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv21, %2
  br i1 %cmp2, label %for.cond4, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond1
  %sub = add nsw i32 %1, -1
  %idxprom126 = sext i32 %sub to i64
  %smax65 = call i32 @llvm.smax.i32(i32 %1, i32 noundef 0)
  %smax78 = call i32 @llvm.smax.i32(i32 %sub, i32 noundef 0)
  %wide.trip.count66 = zext nneg i32 %smax65 to i64
  %wide.trip.count59 = zext i32 %sub to i64
  %wide.trip.count76 = zext i32 %sub to i64
  br label %for.cond13

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %3 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv21, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond1, !llvm.loop !12

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc159
  %indvars.iv28 = phi i32 [ %1, %for.cond13.preheader ], [ %indvars.iv.next29, %for.inc159 ]
  %k.0 = phi i32 [ 0, %for.cond13.preheader ], [ %inc160, %for.inc159 ]
  %sum.0 = phi i32 [ 0, %for.cond13.preheader ], [ %add, %for.inc159 ]
  %exitcond79.not = icmp eq i32 %k.0, %smax78
  br i1 %exitcond79.not, label %for.inc164, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.cond13
  %smax53 = call i32 @llvm.smax.i32(i32 %indvars.iv28, i32 noundef 0)
  %wide.trip.count38 = zext nneg i32 %smax53 to i64
  %wide.trip.count = zext i32 %indvars.iv28 to i64
  br label %for.cond16

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc55
  %indvars.iv35 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next36, %for.inc55 ]
  %exitcond39.not = icmp eq i64 %indvars.iv35, %wide.trip.count38
  br i1 %exitcond39.not, label %for.cond58.preheader, label %for.body19

for.cond58.preheader:                             ; preds = %for.cond16
  %wide.trip.count43 = zext i32 %indvars.iv28 to i64
  br label %for.cond58

for.body19:                                       ; preds = %for.cond16
  %arrayidx21 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv35
  %5 = load i32, ptr %arrayidx21, align 16, !tbaa !5, !invariant.load !13
  br label %for.cond23

for.cond23:                                       ; preds = %for.body26, %for.body19
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.body26 ], [ 0, %for.body19 ]
  %min.0 = phi i32 [ %spec.select, %for.body26 ], [ %5, %for.body19 ]
  %exitcond.not = icmp eq i64 %indvars.iv24, %wide.trip.count
  br i1 %exitcond.not, label %for.cond39.preheader, label %for.body26

for.cond39.preheader:                             ; preds = %for.cond23
  br label %for.cond39

for.body26:                                       ; preds = %for.cond23
  %arrayidx30 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv35, i64 %indvars.iv24
  %6 = load i32, ptr %arrayidx30, align 4, !tbaa !5, !invariant.load !13
  %spec.select = call i32 @llvm.smin.i32(i32 %6, i32 %min.0)
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond23, !llvm.loop !14

for.cond39:                                       ; preds = %for.cond39.preheader, %for.inc52
  %indvars.iv30 = phi i64 [ 0, %for.cond39.preheader ], [ %indvars.iv.next31, %for.inc52 ]
  %exitcond34.not = icmp eq i64 %indvars.iv30, %wide.trip.count
  br i1 %exitcond34.not, label %for.inc55, label %for.inc52

for.inc52:                                        ; preds = %for.cond39
  %arrayidx46 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv35, i64 %indvars.iv30
  %7 = load i32, ptr %arrayidx46, align 4, !tbaa !5, !invariant.load !13
  %sub47 = sub nsw i32 %7, %min.0
  store i32 %sub47, ptr %arrayidx46, align 4, !tbaa !5
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond39, !llvm.loop !15

for.inc55:                                        ; preds = %for.cond39
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond16, !llvm.loop !16

for.cond58:                                       ; preds = %for.cond58.preheader, %for.inc99
  %indvars.iv50 = phi i64 [ 0, %for.cond58.preheader ], [ %indvars.iv.next51, %for.inc99 ]
  %exitcond55.not = icmp eq i64 %indvars.iv50, %wide.trip.count38
  br i1 %exitcond55.not, label %for.end101, label %for.body61

for.body61:                                       ; preds = %for.cond58
  %arrayidx64 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv50
  %8 = load i32, ptr %arrayidx64, align 4, !tbaa !5, !invariant.load !13
  br label %for.cond65

for.cond65:                                       ; preds = %for.body68, %for.body61
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.body68 ], [ 0, %for.body61 ]
  %min.2 = phi i32 [ %spec.select19, %for.body68 ], [ %8, %for.body61 ]
  %exitcond44.not = icmp eq i64 %indvars.iv40, %wide.trip.count43
  br i1 %exitcond44.not, label %for.cond83.preheader, label %for.body68

for.cond83.preheader:                             ; preds = %for.cond65
  br label %for.cond83

for.body68:                                       ; preds = %for.cond65
  %arrayidx72 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv40, i64 %indvars.iv50
  %9 = load i32, ptr %arrayidx72, align 4, !tbaa !5, !invariant.load !13
  %spec.select19 = call i32 @llvm.smin.i32(i32 %9, i32 %min.2)
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond65, !llvm.loop !17

for.cond83:                                       ; preds = %for.cond83.preheader, %for.inc96
  %indvars.iv45 = phi i64 [ 0, %for.cond83.preheader ], [ %indvars.iv.next46, %for.inc96 ]
  %exitcond49.not = icmp eq i64 %indvars.iv45, %wide.trip.count43
  br i1 %exitcond49.not, label %for.inc99, label %for.inc96

for.inc96:                                        ; preds = %for.cond83
  %arrayidx90 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv45, i64 %indvars.iv50
  %10 = load i32, ptr %arrayidx90, align 4, !tbaa !5, !invariant.load !13
  %sub91 = sub nsw i32 %10, %min.2
  store i32 %sub91, ptr %arrayidx90, align 4, !tbaa !5
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %for.cond83, !llvm.loop !18

for.inc99:                                        ; preds = %for.cond83
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %for.cond58, !llvm.loop !19

for.end101:                                       ; preds = %for.cond58
  %11 = load i32, ptr %arrayidx103, align 4, !tbaa !5
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc128, %for.end101
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %for.inc128 ], [ 0, %for.end101 ]
  %exitcond67.not = icmp eq i64 %indvars.iv61, %wide.trip.count66
  br i1 %exitcond67.not, label %for.cond131, label %for.cond107

for.cond107:                                      ; preds = %for.cond104, %for.inc120
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.inc120 ], [ 1, %for.cond104 ]
  %exitcond60.not = icmp eq i64 %indvars.iv56, %wide.trip.count59
  br i1 %exitcond60.not, label %for.inc128, label %for.inc120

for.inc120:                                       ; preds = %for.cond107
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %arrayidx115 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv61, i64 %indvars.iv.next57
  %12 = load i32, ptr %arrayidx115, align 4, !tbaa !5, !invariant.load !13
  %arrayidx119 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv61, i64 %indvars.iv56
  store i32 %12, ptr %arrayidx119, align 4, !tbaa !5
  br label %for.cond107, !llvm.loop !20

for.inc128:                                       ; preds = %for.cond107
  %arrayidx127 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv61, i64 %idxprom126
  store i32 0, ptr %arrayidx127, align 4, !tbaa !5
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  br label %for.cond104, !llvm.loop !21

for.cond131:                                      ; preds = %for.cond104, %for.inc156
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %for.inc156 ], [ 0, %for.cond104 ]
  %exitcond77.not = icmp eq i64 %indvars.iv73, %wide.trip.count76
  br i1 %exitcond77.not, label %for.inc159, label %for.cond135

for.cond135:                                      ; preds = %for.cond131, %for.inc148
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.inc148 ], [ 1, %for.cond131 ]
  %exitcond72.not = icmp eq i64 %indvars.iv68, %wide.trip.count76
  br i1 %exitcond72.not, label %for.inc156, label %for.inc148

for.inc148:                                       ; preds = %for.cond135
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  %arrayidx143 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next69, i64 %indvars.iv73
  %13 = load i32, ptr %arrayidx143, align 4, !tbaa !5, !invariant.load !13
  %arrayidx147 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv68, i64 %indvars.iv73
  store i32 %13, ptr %arrayidx147, align 4, !tbaa !5
  br label %for.cond135, !llvm.loop !22

for.inc156:                                       ; preds = %for.cond135
  %arrayidx155 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom126, i64 %indvars.iv73
  store i32 0, ptr %arrayidx155, align 4, !tbaa !5
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  br label %for.cond131, !llvm.loop !23

for.inc159:                                       ; preds = %for.cond131
  %add = add nsw i32 %11, %sum.0
  %inc160 = add nuw i32 %k.0, 1
  %indvars.iv.next29 = add i32 %indvars.iv28, -1
  br label %for.cond13, !llvm.loop !24

for.inc164:                                       ; preds = %for.cond13
  %call162 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %call163 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call162, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc165 = add nuw nsw i32 %m.0, 1
  br label %for.cond, !llvm.loop !25

for.end166:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
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
!13 = !{}
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
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
