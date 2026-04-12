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

for.cond:                                         ; preds = %for.end136, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc140, %for.end136 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %k.0, %0
  br i1 %cmp, label %for.cond1, label %for.end141

for.cond1:                                        ; preds = %for.cond, %for.end
  %1 = phi i32 [ %6, %for.end ], [ %0, %for.cond ]
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %for.end ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv62, %2
  br i1 %cmp2, label %for.cond4, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond1
  %3 = add i32 %1, -1
  %4 = zext i32 %3 to i64
  %5 = zext i32 %1 to i64
  br label %for.cond13

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %6 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %7 = sext i32 %6 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %7
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv62, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  br label %for.cond1, !llvm.loop !12

for.cond13:                                       ; preds = %for.cond13.preheader, %for.end134
  %indvars.iv119 = phi i64 [ %5, %for.cond13.preheader ], [ %indvars.iv.next120, %for.end134 ]
  %indvars.iv116 = phi i64 [ %4, %for.cond13.preheader ], [ %indvars.iv.next117, %for.end134 ]
  %sum.0 = phi i32 [ 0, %for.cond13.preheader ], [ %add, %for.end134 ]
  %8 = trunc nuw i64 %indvars.iv119 to i32
  %cmp14 = icmp sgt i32 %8, 1
  br i1 %cmp14, label %for.cond16, label %for.end136

for.cond16:                                       ; preds = %for.cond13, %for.end47
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %for.end47 ], [ 0, %for.cond13 ]
  %exitcond77.not = icmp eq i64 %indvars.iv73, %indvars.iv119
  br i1 %exitcond77.not, label %for.cond51, label %for.cond19

for.cond19:                                       ; preds = %for.cond16, %for.body21
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.body21 ], [ 0, %for.cond16 ]
  %min.0 = phi i32 [ %spec.select, %for.body21 ], [ 100000, %for.cond16 ]
  %exitcond.not = icmp eq i64 %indvars.iv65, %indvars.iv119
  br i1 %exitcond.not, label %for.cond34.preheader, label %for.body21

for.cond34.preheader:                             ; preds = %for.cond19
  br label %for.cond34

for.body21:                                       ; preds = %for.cond19
  %arrayidx25 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv73, i64 %indvars.iv65
  %9 = load i32, ptr %arrayidx25, align 4, !tbaa !5, !invariant.load !13
  %spec.select = call i32 @llvm.smin.i32(i32 %9, i32 %min.0)
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  br label %for.cond19, !llvm.loop !14

for.cond34:                                       ; preds = %for.cond34.preheader, %for.body36
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.body36 ], [ 0, %for.cond34.preheader ]
  %exitcond72.not = icmp eq i64 %indvars.iv68, %indvars.iv119
  br i1 %exitcond72.not, label %for.end47, label %for.body36

for.body36:                                       ; preds = %for.cond34
  %arrayidx40 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv73, i64 %indvars.iv68
  %10 = load i32, ptr %arrayidx40, align 4, !tbaa !5, !invariant.load !13
  %sub = sub nsw i32 %10, %min.0
  store i32 %sub, ptr %arrayidx40, align 4, !tbaa !5
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  br label %for.cond34, !llvm.loop !15

for.end47:                                        ; preds = %for.cond34
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  br label %for.cond16, !llvm.loop !16

for.cond51:                                       ; preds = %for.cond16, %for.end85
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.end85 ], [ 0, %for.cond16 ]
  %exitcond92.not = icmp eq i64 %indvars.iv88, %indvars.iv119
  br i1 %exitcond92.not, label %for.end88, label %for.cond54

for.cond54:                                       ; preds = %for.cond51, %for.body56
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.body56 ], [ 0, %for.cond51 ]
  %min.2 = phi i32 [ %spec.select60, %for.body56 ], [ 100000, %for.cond51 ]
  %exitcond82.not = icmp eq i64 %indvars.iv78, %indvars.iv119
  br i1 %exitcond82.not, label %for.cond71.preheader, label %for.body56

for.cond71.preheader:                             ; preds = %for.cond54
  br label %for.cond71

for.body56:                                       ; preds = %for.cond54
  %arrayidx60 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv78, i64 %indvars.iv88
  %11 = load i32, ptr %arrayidx60, align 4, !tbaa !5, !invariant.load !13
  %spec.select60 = call i32 @llvm.smin.i32(i32 %11, i32 %min.2)
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond54, !llvm.loop !17

for.cond71:                                       ; preds = %for.cond71.preheader, %for.body73
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.body73 ], [ 0, %for.cond71.preheader ]
  %exitcond87.not = icmp eq i64 %indvars.iv83, %indvars.iv119
  br i1 %exitcond87.not, label %for.end85, label %for.body73

for.body73:                                       ; preds = %for.cond71
  %arrayidx77 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv83, i64 %indvars.iv88
  %12 = load i32, ptr %arrayidx77, align 4, !tbaa !5, !invariant.load !13
  %sub78 = sub nsw i32 %12, %min.2
  store i32 %sub78, ptr %arrayidx77, align 4, !tbaa !5
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  br label %for.cond71, !llvm.loop !18

for.end85:                                        ; preds = %for.cond71
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %for.cond51, !llvm.loop !19

for.end88:                                        ; preds = %for.cond51
  %13 = load i32, ptr %arrayidx90, align 8, !tbaa !5
  br label %for.cond91

for.cond91:                                       ; preds = %for.cond95, %for.end88
  %indvars.iv98 = phi i64 [ 1, %for.end88 ], [ %indvars.iv.next99, %for.cond95 ]
  %exitcond105.not = icmp eq i64 %indvars.iv98, %indvars.iv116
  br i1 %exitcond105.not, label %for.cond113, label %for.cond95.preheader

for.cond95.preheader:                             ; preds = %for.cond91
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %for.cond95

for.cond95:                                       ; preds = %for.cond95.preheader, %for.body97
  %indvars.iv93 = phi i64 [ 0, %for.cond95.preheader ], [ %indvars.iv.next94, %for.body97 ]
  %exitcond97.not = icmp eq i64 %indvars.iv93, %indvars.iv119
  br i1 %exitcond97.not, label %for.cond91, label %for.body97, !llvm.loop !20

for.body97:                                       ; preds = %for.cond95
  %arrayidx102 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv.next99, i64 %indvars.iv93
  %14 = load i32, ptr %arrayidx102, align 4, !tbaa !5, !invariant.load !13
  %arrayidx106 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv98, i64 %indvars.iv93
  store i32 %14, ptr %arrayidx106, align 4, !tbaa !5
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  br label %for.cond95, !llvm.loop !21

for.cond113:                                      ; preds = %for.cond116, %for.cond91
  %indvars.iv111 = phi i64 [ 1, %for.cond91 ], [ %indvars.iv.next112, %for.cond116 ]
  %exitcond115.not = icmp eq i64 %indvars.iv111, %indvars.iv119
  br i1 %exitcond115.not, label %for.end134, label %for.cond116.preheader

for.cond116.preheader:                            ; preds = %for.cond113
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  br label %for.cond116

for.cond116:                                      ; preds = %for.cond116.preheader, %for.body119
  %indvars.iv106 = phi i64 [ 0, %for.cond116.preheader ], [ %indvars.iv.next107, %for.body119 ]
  %exitcond110.not = icmp eq i64 %indvars.iv106, %indvars.iv116
  br i1 %exitcond110.not, label %for.cond113, label %for.body119, !llvm.loop !22

for.body119:                                      ; preds = %for.cond116
  %arrayidx124 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv106, i64 %indvars.iv.next112
  %15 = load i32, ptr %arrayidx124, align 4, !tbaa !5, !invariant.load !13
  %arrayidx128 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv106, i64 %indvars.iv111
  store i32 %15, ptr %arrayidx128, align 4, !tbaa !5
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %for.cond116, !llvm.loop !23

for.end134:                                       ; preds = %for.cond113
  %add = add nsw i32 %13, %sum.0
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, -1
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, -1
  br label %for.cond13, !llvm.loop !24

for.end136:                                       ; preds = %for.cond13
  %call137 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %call138 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call137, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc140 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !25

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
