; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwlwcxmz4.cpp"
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
  %a = alloca [101 x [101 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull align 16 %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %arrayidx90 = getelementptr inbounds nuw i8, ptr %a, i64 408
  br label %for.cond

for.cond:                                         ; preds = %for.inc139, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc140, %for.inc139 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %k.0, %0
  br i1 %cmp, label %for.cond1, label %for.end141

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %6, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv22, %2
  br i1 %cmp2, label %for.cond4, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond1
  %3 = add i32 %1, -1
  %4 = zext i32 %3 to i64
  %5 = zext i32 %1 to i64
  br label %for.cond13

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %6 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %7 = sext i32 %6 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %7
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv22, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond1, !llvm.loop !12

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc135
  %indvars.iv79 = phi i64 [ %5, %for.cond13.preheader ], [ %indvars.iv.next80, %for.inc135 ]
  %indvars.iv76 = phi i64 [ %4, %for.cond13.preheader ], [ %indvars.iv.next77, %for.inc135 ]
  %sum.0 = phi i32 [ 0, %for.cond13.preheader ], [ %add, %for.inc135 ]
  %8 = trunc nuw i64 %indvars.iv79 to i32
  %cmp14 = icmp sgt i32 %8, 1
  br i1 %cmp14, label %for.cond16, label %for.inc139

for.cond16:                                       ; preds = %for.cond13, %for.inc48
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.inc48 ], [ 0, %for.cond13 ]
  %exitcond37.not = icmp eq i64 %indvars.iv33, %indvars.iv79
  br i1 %exitcond37.not, label %for.cond51, label %for.cond19

for.cond19:                                       ; preds = %for.cond16, %for.body21
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.body21 ], [ 0, %for.cond16 ]
  %min.0 = phi i32 [ %spec.select, %for.body21 ], [ 100000, %for.cond16 ]
  %exitcond.not = icmp eq i64 %indvars.iv25, %indvars.iv79
  br i1 %exitcond.not, label %for.cond34.preheader, label %for.body21

for.cond34.preheader:                             ; preds = %for.cond19
  br label %for.cond34

for.body21:                                       ; preds = %for.cond19
  %arrayidx25 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv33, i64 %indvars.iv25
  %9 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %9, i32 %min.0)
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond19, !llvm.loop !13

for.cond34:                                       ; preds = %for.cond34.preheader, %for.inc45
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.inc45 ], [ 0, %for.cond34.preheader ]
  %exitcond32.not = icmp eq i64 %indvars.iv28, %indvars.iv79
  br i1 %exitcond32.not, label %for.inc48, label %for.inc45

for.inc45:                                        ; preds = %for.cond34
  %arrayidx40 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv33, i64 %indvars.iv28
  %10 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %sub = sub nsw i32 %10, %min.0
  store i32 %sub, ptr %arrayidx40, align 4, !tbaa !5
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond34, !llvm.loop !14

for.inc48:                                        ; preds = %for.cond34
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond16, !llvm.loop !15

for.cond51:                                       ; preds = %for.cond16, %for.inc86
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.inc86 ], [ 0, %for.cond16 ]
  %exitcond52.not = icmp eq i64 %indvars.iv48, %indvars.iv79
  br i1 %exitcond52.not, label %for.end88, label %for.cond54

for.cond54:                                       ; preds = %for.cond51, %for.body56
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.body56 ], [ 0, %for.cond51 ]
  %min.2 = phi i32 [ %spec.select20, %for.body56 ], [ 100000, %for.cond51 ]
  %exitcond42.not = icmp eq i64 %indvars.iv38, %indvars.iv79
  br i1 %exitcond42.not, label %for.cond71.preheader, label %for.body56

for.cond71.preheader:                             ; preds = %for.cond54
  br label %for.cond71

for.body56:                                       ; preds = %for.cond54
  %arrayidx60 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv38, i64 %indvars.iv48
  %11 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %spec.select20 = call i32 @llvm.smin.i32(i32 %11, i32 %min.2)
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond54, !llvm.loop !16

for.cond71:                                       ; preds = %for.cond71.preheader, %for.inc83
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.inc83 ], [ 0, %for.cond71.preheader ]
  %exitcond47.not = icmp eq i64 %indvars.iv43, %indvars.iv79
  br i1 %exitcond47.not, label %for.inc86, label %for.inc83

for.inc83:                                        ; preds = %for.cond71
  %arrayidx77 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv43, i64 %indvars.iv48
  %12 = load i32, ptr %arrayidx77, align 4, !tbaa !5
  %sub78 = sub nsw i32 %12, %min.2
  store i32 %sub78, ptr %arrayidx77, align 4, !tbaa !5
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond71, !llvm.loop !17

for.inc86:                                        ; preds = %for.cond71
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond51, !llvm.loop !18

for.end88:                                        ; preds = %for.cond51
  %13 = load i32, ptr %arrayidx90, align 8, !tbaa !5
  br label %for.cond91

for.cond91:                                       ; preds = %for.cond95, %for.end88
  %indvars.iv58 = phi i64 [ 1, %for.end88 ], [ %indvars.iv.next59, %for.cond95 ]
  %exitcond65.not = icmp eq i64 %indvars.iv58, %indvars.iv76
  br i1 %exitcond65.not, label %for.cond113, label %for.cond95.preheader

for.cond95.preheader:                             ; preds = %for.cond91
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond95

for.cond95:                                       ; preds = %for.cond95.preheader, %for.inc107
  %indvars.iv53 = phi i64 [ 0, %for.cond95.preheader ], [ %indvars.iv.next54, %for.inc107 ]
  %exitcond57.not = icmp eq i64 %indvars.iv53, %indvars.iv79
  br i1 %exitcond57.not, label %for.cond91, label %for.inc107, !llvm.loop !19

for.inc107:                                       ; preds = %for.cond95
  %arrayidx102 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv.next59, i64 %indvars.iv53
  %14 = load i32, ptr %arrayidx102, align 4, !tbaa !5
  %arrayidx106 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv58, i64 %indvars.iv53
  store i32 %14, ptr %arrayidx106, align 4, !tbaa !5
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond95, !llvm.loop !20

for.cond113:                                      ; preds = %for.cond116, %for.cond91
  %indvars.iv71 = phi i64 [ 1, %for.cond91 ], [ %indvars.iv.next72, %for.cond116 ]
  %exitcond75.not = icmp eq i64 %indvars.iv71, %indvars.iv79
  br i1 %exitcond75.not, label %for.inc135, label %for.cond116.preheader

for.cond116.preheader:                            ; preds = %for.cond113
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %for.cond116

for.cond116:                                      ; preds = %for.cond116.preheader, %for.inc129
  %indvars.iv66 = phi i64 [ 0, %for.cond116.preheader ], [ %indvars.iv.next67, %for.inc129 ]
  %exitcond70.not = icmp eq i64 %indvars.iv66, %indvars.iv76
  br i1 %exitcond70.not, label %for.cond113, label %for.inc129, !llvm.loop !21

for.inc129:                                       ; preds = %for.cond116
  %arrayidx124 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv66, i64 %indvars.iv.next72
  %15 = load i32, ptr %arrayidx124, align 4, !tbaa !5
  %arrayidx128 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv66, i64 %indvars.iv71
  store i32 %15, ptr %arrayidx128, align 4, !tbaa !5
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %for.cond116, !llvm.loop !22

for.inc135:                                       ; preds = %for.cond113
  %add = add nsw i32 %13, %sum.0
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, -1
  %indvars.iv.next77 = add nsw i64 %indvars.iv76, -1
  br label %for.cond13, !llvm.loop !23

for.inc139:                                       ; preds = %for.cond13
  %call137 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %call138 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call137, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc140 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !24

for.end141:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %a) #7
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind willreturn }
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
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
