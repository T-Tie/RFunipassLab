; ModuleID = '<stdin>'
source_filename = "/tmp/tmprxnguj0q.cpp"
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
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %arrayidx88 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %for.end133, %entry
  %k.0 = phi i32 [ 1, %entry ], [ %inc137, %for.end133 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %k.0, %0
  br i1 %cmp.not, label %for.end138, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv57, %2
  br i1 %cmp2, label %for.cond4, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond1
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %wide.trip.count74 = zext i32 %1 to i64
  br label %for.cond13

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %3 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.body6, label %for.inc10

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv57, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %for.cond1, !llvm.loop !12

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc131
  %sum.1 = phi i32 [ %add, %for.inc131 ], [ 0, %for.cond13.preheader ]
  %l.0 = phi i32 [ %inc132, %for.inc131 ], [ 1, %for.cond13.preheader ]
  %exitcond121.not = icmp eq i32 %l.0, %smax
  br i1 %exitcond121.not, label %for.end133, label %for.cond16

for.cond16:                                       ; preds = %for.cond13, %for.inc47
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.inc47 ], [ 0, %for.cond13 ]
  %exitcond75.not = icmp eq i64 %indvars.iv70, %wide.trip.count74
  br i1 %exitcond75.not, label %for.cond50, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv70
  %5 = load i32, ptr %arrayidx20, align 16, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.body24, %for.body18
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.body24 ], [ 1, %for.body18 ]
  %min.0 = phi i32 [ %spec.select, %for.body24 ], [ %5, %for.body18 ]
  %exitcond.not = icmp eq i64 %indvars.iv60, %wide.trip.count74
  br i1 %exitcond.not, label %for.cond37, label %for.body24

for.body24:                                       ; preds = %for.cond22
  %arrayidx28 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv70, i64 %indvars.iv60
  %6 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %6, i32 %min.0)
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond22, !llvm.loop !13

for.cond37:                                       ; preds = %for.cond22, %for.body39
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %for.body39 ], [ 0, %for.cond22 ]
  %exitcond69.not = icmp eq i64 %indvars.iv64, %wide.trip.count74
  br i1 %exitcond69.not, label %for.inc47, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx43 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv70, i64 %indvars.iv64
  %7 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %sub = sub nsw i32 %7, %min.0
  store i32 %sub, ptr %arrayidx43, align 4, !tbaa !5
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br label %for.cond37, !llvm.loop !14

for.inc47:                                        ; preds = %for.cond37
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %for.cond16, !llvm.loop !15

for.cond50:                                       ; preds = %for.cond16, %for.inc84
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.inc84 ], [ 0, %for.cond16 ]
  %exitcond93.not = icmp eq i64 %indvars.iv88, %wide.trip.count74
  br i1 %exitcond93.not, label %for.end86, label %for.body52

for.body52:                                       ; preds = %for.cond50
  %arrayidx55 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv88
  %8 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  br label %for.cond56

for.cond56:                                       ; preds = %for.body58, %for.body52
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %for.body58 ], [ 1, %for.body52 ]
  %min.2 = phi i32 [ %spec.select54, %for.body58 ], [ %8, %for.body52 ]
  %exitcond81.not = icmp eq i64 %indvars.iv76, %wide.trip.count74
  br i1 %exitcond81.not, label %for.cond73, label %for.body58

for.body58:                                       ; preds = %for.cond56
  %arrayidx62 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv76, i64 %indvars.iv88
  %9 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %spec.select54 = call i32 @llvm.smin.i32(i32 %9, i32 %min.2)
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  br label %for.cond56, !llvm.loop !16

for.cond73:                                       ; preds = %for.cond56, %for.body75
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %for.body75 ], [ 0, %for.cond56 ]
  %exitcond87.not = icmp eq i64 %indvars.iv82, %wide.trip.count74
  br i1 %exitcond87.not, label %for.inc84, label %for.body75

for.body75:                                       ; preds = %for.cond73
  %arrayidx79 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv82, i64 %indvars.iv88
  %10 = load i32, ptr %arrayidx79, align 4, !tbaa !5
  %sub80 = sub nsw i32 %10, %min.2
  store i32 %sub80, ptr %arrayidx79, align 4, !tbaa !5
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %for.cond73, !llvm.loop !17

for.inc84:                                        ; preds = %for.cond73
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %for.cond50, !llvm.loop !18

for.end86:                                        ; preds = %for.cond50
  %11 = load i32, ptr %arrayidx88, align 4, !tbaa !5
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc107, %for.end86
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %for.inc107 ], [ 2, %for.end86 ]
  %exitcond106.not = icmp eq i64 %indvars.iv100, %wide.trip.count74
  br i1 %exitcond106.not, label %for.cond110, label %for.cond92.preheader

for.cond92.preheader:                             ; preds = %for.cond89
  %12 = add nsw i64 %indvars.iv100, -1
  br label %for.cond92

for.cond92:                                       ; preds = %for.cond92.preheader, %for.body94
  %indvars.iv94 = phi i64 [ 0, %for.cond92.preheader ], [ %indvars.iv.next95, %for.body94 ]
  %exitcond99.not = icmp eq i64 %indvars.iv94, %wide.trip.count74
  br i1 %exitcond99.not, label %for.inc107, label %for.body94

for.body94:                                       ; preds = %for.cond92
  %arrayidx98 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv100, i64 %indvars.iv94
  %13 = load i32, ptr %arrayidx98, align 4, !tbaa !5
  %arrayidx103 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %12, i64 %indvars.iv94
  store i32 %13, ptr %arrayidx103, align 4, !tbaa !5
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %for.cond92, !llvm.loop !19

for.inc107:                                       ; preds = %for.cond92
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  br label %for.cond89, !llvm.loop !20

for.cond110:                                      ; preds = %for.cond89, %for.inc128
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %for.inc128 ], [ 2, %for.cond89 ]
  %exitcond119.not = icmp eq i64 %indvars.iv113, %wide.trip.count74
  br i1 %exitcond119.not, label %for.inc131, label %for.cond113.preheader

for.cond113.preheader:                            ; preds = %for.cond110
  %14 = add nsw i64 %indvars.iv113, -1
  br label %for.cond113

for.cond113:                                      ; preds = %for.cond113.preheader, %for.body115
  %indvars.iv107 = phi i64 [ 0, %for.cond113.preheader ], [ %indvars.iv.next108, %for.body115 ]
  %exitcond112.not = icmp eq i64 %indvars.iv107, %wide.trip.count74
  br i1 %exitcond112.not, label %for.inc128, label %for.body115

for.body115:                                      ; preds = %for.cond113
  %arrayidx119 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv107, i64 %indvars.iv113
  %15 = load i32, ptr %arrayidx119, align 4, !tbaa !5
  %arrayidx124 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv107, i64 %14
  store i32 %15, ptr %arrayidx124, align 4, !tbaa !5
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  br label %for.cond113, !llvm.loop !21

for.inc128:                                       ; preds = %for.cond113
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  br label %for.cond110, !llvm.loop !22

for.inc131:                                       ; preds = %for.cond110
  %add = add nsw i32 %11, %sum.1
  %inc132 = add nuw i32 %l.0, 1
  br label %for.cond13, !llvm.loop !23

for.end133:                                       ; preds = %for.cond13
  %call134 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.1)
  %vtable.i = load ptr, ptr %call134, align 8, !tbaa !24
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call134, i64 %vbase.offset.i
  %call.i55 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call134, i8 noundef signext %call.i55)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc137 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !26

for.end138:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !8, i64 0}
!26 = distinct !{!26, !10, !11}
