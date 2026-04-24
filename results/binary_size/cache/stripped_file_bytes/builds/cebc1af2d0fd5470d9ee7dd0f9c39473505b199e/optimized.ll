; ModuleID = '<stdin>'
source_filename = "/tmp/tmpv5ig_8an.cpp"
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
  %n = alloca i32, align 4
  %a = alloca [102 x [102 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 41616, ptr noundef nonnull %a) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %arrayidx99 = getelementptr inbounds nuw i8, ptr %a, i64 824
  %arrayidx111 = getelementptr inbounds nuw i8, ptr %a, i64 408
  br label %for.cond

for.cond:                                         ; preds = %for.inc150, %entry
  %k.0 = phi i32 [ 1, %entry ], [ %inc151, %for.inc150 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %k.0, %0
  br i1 %cmp.not, label %for.end152, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %6, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.inc10 ], [ 1, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2.not = icmp sgt i64 %indvars.iv19, %2
  br i1 %cmp2.not, label %for.cond13.preheader, label %for.cond4

for.cond13.preheader:                             ; preds = %for.cond1
  %3 = add i32 %1, 1
  %4 = call i32 @llvm.smax.i32(i32 %1, i32 noundef 1)
  %5 = add nsw i32 %4, -1
  br label %for.cond13

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %6 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.cond1 ]
  %7 = sext i32 %6 to i64
  %cmp5.not = icmp sgt i64 %indvars.iv, %7
  br i1 %cmp5.not, label %for.inc10, label %for.inc

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv19, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond1, !llvm.loop !12

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc145
  %indvars.iv37 = phi i32 [ %1, %for.cond13.preheader ], [ %indvars.iv.next38, %for.inc145 ]
  %indvars.iv26 = phi i32 [ %3, %for.cond13.preheader ], [ %indvars.iv.next27, %for.inc145 ]
  %sum.0 = phi i32 [ 0, %for.cond13.preheader ], [ %add, %for.inc145 ]
  %t.0 = phi i32 [ 0, %for.cond13.preheader ], [ %inc146, %for.inc145 ]
  %smax74 = call i32 @llvm.smax.i32(i32 %indvars.iv37, i32 noundef 2)
  %8 = add nuw i32 %smax74, 1
  %exitcond78 = icmp eq i32 %t.0, %5
  br i1 %exitcond78, label %for.inc150, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.cond13
  %smax54 = call i32 @llvm.smax.i32(i32 %indvars.iv37, i32 noundef 0)
  %9 = add nuw i32 %smax54, 1
  %wide.trip.count39 = zext i32 %9 to i64
  %wide.trip.count = zext i32 %indvars.iv26 to i64
  br label %for.cond16

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc52
  %indvars.iv33 = phi i64 [ 1, %for.cond16.preheader ], [ %indvars.iv.next34, %for.inc52 ]
  %exitcond40 = icmp eq i64 %indvars.iv33, %wide.trip.count39
  br i1 %exitcond40, label %for.cond55.preheader, label %for.cond20

for.cond55.preheader:                             ; preds = %for.cond16
  %wide.trip.count44 = zext i32 %indvars.iv26 to i64
  br label %for.cond55

for.cond20:                                       ; preds = %for.cond16, %for.body23
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.body23 ], [ 1, %for.cond16 ]
  %min.0 = phi i32 [ %spec.select, %for.body23 ], [ 100000, %for.cond16 ]
  %exitcond = icmp eq i64 %indvars.iv22, %wide.trip.count
  br i1 %exitcond, label %for.cond36.preheader, label %for.body23

for.cond36.preheader:                             ; preds = %for.cond20
  br label %for.cond36

for.body23:                                       ; preds = %for.cond20
  %arrayidx27 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv33, i64 %indvars.iv22
  %10 = load i32, ptr %arrayidx27, align 4, !tbaa !5, !invariant.load !13
  %spec.select = call i32 @llvm.smin.i32(i32 %min.0, i32 %10)
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond20, !llvm.loop !14

for.cond36:                                       ; preds = %for.cond36.preheader, %for.inc49
  %indvars.iv28 = phi i64 [ 1, %for.cond36.preheader ], [ %indvars.iv.next29, %for.inc49 ]
  %exitcond32 = icmp eq i64 %indvars.iv28, %wide.trip.count
  br i1 %exitcond32, label %for.inc52, label %for.inc49

for.inc49:                                        ; preds = %for.cond36
  %arrayidx43 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv33, i64 %indvars.iv28
  %11 = load i32, ptr %arrayidx43, align 4, !tbaa !5, !invariant.load !13
  %sub44 = sub nsw i32 %11, %min.0
  store i32 %sub44, ptr %arrayidx43, align 4, !tbaa !5
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond36, !llvm.loop !15

for.inc52:                                        ; preds = %for.cond36
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond16, !llvm.loop !16

for.cond55:                                       ; preds = %for.cond55.preheader, %for.inc95
  %indvars.iv51 = phi i64 [ 1, %for.cond55.preheader ], [ %indvars.iv.next52, %for.inc95 ]
  %exitcond56 = icmp eq i64 %indvars.iv51, %wide.trip.count39
  br i1 %exitcond56, label %for.end97, label %for.cond59

for.cond59:                                       ; preds = %for.cond55, %for.body62
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.body62 ], [ 1, %for.cond55 ]
  %min.1 = phi i32 [ %spec.select17, %for.body62 ], [ 100000, %for.cond55 ]
  %exitcond45 = icmp eq i64 %indvars.iv41, %wide.trip.count44
  br i1 %exitcond45, label %for.cond79.preheader, label %for.body62

for.cond79.preheader:                             ; preds = %for.cond59
  br label %for.cond79

for.body62:                                       ; preds = %for.cond59
  %arrayidx66 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv41, i64 %indvars.iv51
  %12 = load i32, ptr %arrayidx66, align 4, !tbaa !5, !invariant.load !13
  %spec.select17 = call i32 @llvm.smin.i32(i32 %min.1, i32 %12)
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond59, !llvm.loop !17

for.cond79:                                       ; preds = %for.cond79.preheader, %for.inc92
  %indvars.iv46 = phi i64 [ 1, %for.cond79.preheader ], [ %indvars.iv.next47, %for.inc92 ]
  %exitcond50 = icmp eq i64 %indvars.iv46, %wide.trip.count44
  br i1 %exitcond50, label %for.inc95, label %for.inc92

for.inc92:                                        ; preds = %for.cond79
  %arrayidx86 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv46, i64 %indvars.iv51
  %13 = load i32, ptr %arrayidx86, align 4, !tbaa !5, !invariant.load !13
  %sub87 = sub nsw i32 %13, %min.1
  store i32 %sub87, ptr %arrayidx86, align 4, !tbaa !5
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond79, !llvm.loop !18

for.inc95:                                        ; preds = %for.cond79
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  br label %for.cond55, !llvm.loop !19

for.end97:                                        ; preds = %for.cond55
  %14 = load i32, ptr %arrayidx99, align 8, !tbaa !5
  %wide.trip.count62 = zext i32 %8 to i64
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc118, %for.end97
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.inc118 ], [ 3, %for.end97 ]
  %exitcond63 = icmp eq i64 %indvars.iv57, %wide.trip.count62
  br i1 %exitcond63, label %for.cond121.preheader, label %for.inc118

for.cond121.preheader:                            ; preds = %for.cond100
  %wide.trip.count68 = zext i32 %indvars.iv26 to i64
  br label %for.cond121

for.inc118:                                       ; preds = %for.cond100
  %arrayidx106 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv57, i64 1
  %15 = load i32, ptr %arrayidx106, align 4, !tbaa !5, !invariant.load !13
  %16 = add nsw i64 %indvars.iv57, -1
  %arrayidx110 = getelementptr inbounds [102 x [102 x i32]], ptr %a, i64 0, i64 %16, i64 1
  store i32 %15, ptr %arrayidx110, align 4, !tbaa !5
  %arrayidx113 = getelementptr inbounds nuw [102 x i32], ptr %arrayidx111, i64 0, i64 %indvars.iv57
  %17 = load i32, ptr %arrayidx113, align 4, !tbaa !5, !invariant.load !13
  %arrayidx117 = getelementptr inbounds [102 x i32], ptr %arrayidx111, i64 0, i64 %16
  store i32 %17, ptr %arrayidx117, align 4, !tbaa !5
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %for.cond100, !llvm.loop !20

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc142
  %indvars.iv70 = phi i64 [ 3, %for.cond121.preheader ], [ %indvars.iv.next71, %for.inc142 ]
  %exitcond76 = icmp eq i64 %indvars.iv70, %wide.trip.count62
  br i1 %exitcond76, label %for.inc145, label %for.cond125.preheader

for.cond125.preheader:                            ; preds = %for.cond121
  %18 = add nsw i64 %indvars.iv70, -1
  br label %for.cond125

for.cond125:                                      ; preds = %for.cond125.preheader, %for.inc139
  %indvars.iv64 = phi i64 [ 3, %for.cond125.preheader ], [ %indvars.iv.next65, %for.inc139 ]
  %exitcond69 = icmp eq i64 %indvars.iv64, %wide.trip.count68
  br i1 %exitcond69, label %for.inc142, label %for.inc139

for.inc139:                                       ; preds = %for.cond125
  %arrayidx132 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv70, i64 %indvars.iv64
  %19 = load i32, ptr %arrayidx132, align 4, !tbaa !5, !invariant.load !13
  %20 = add nsw i64 %indvars.iv64, -1
  %arrayidx138 = getelementptr inbounds [102 x [102 x i32]], ptr %a, i64 0, i64 %18, i64 %20
  store i32 %19, ptr %arrayidx138, align 4, !tbaa !5
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br label %for.cond125, !llvm.loop !21

for.inc142:                                       ; preds = %for.cond125
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %for.cond121, !llvm.loop !22

for.inc145:                                       ; preds = %for.cond121
  %add = add nsw i32 %14, %sum.0
  %inc146 = add nuw i32 %t.0, 1
  %indvars.iv.next27 = add i32 %indvars.iv26, -1
  %indvars.iv.next38 = add i32 %indvars.iv37, -1
  br label %for.cond13, !llvm.loop !23

for.inc150:                                       ; preds = %for.cond13
  %call148 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %call149 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call148, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc151 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !24

for.end152:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 41616, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
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
