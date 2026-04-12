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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end12, %entry
  %k.0 = phi i32 [ 1, %entry ], [ %inc17, %for.end12 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %k.0, %0
  br i1 %cmp.not, label %for.end18, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.end
  %1 = phi i32 [ %3, %for.end ], [ %0, %for.cond ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.end ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv8, %2
  br i1 %cmp2, label %for.cond4, label %for.end12

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %3 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv8, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond1, !llvm.loop !12

for.end12:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z3sumi(i32 noundef %1) #8
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call13)
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call14, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc17 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !13

for.end18:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
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
  %smax67 = tail call i32 @llvm.smax.i32(i32 %n.tr, i32 noundef 0)
  %wide.trip.count52 = zext nneg i32 %smax67 to i64
  %wide.trip.count = zext i32 %n.tr to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end23, %tailrecurse
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.end23 ], [ 0, %tailrecurse ]
  %exitcond53.not = icmp eq i64 %indvars.iv49, %wide.trip.count52
  br i1 %exitcond53.not, label %for.cond27, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv49
  %0 = load i32, ptr %arrayidx, align 16, !tbaa !5, !invariant.load !14
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14.preheader, label %for.body4

for.cond14.preheader:                             ; preds = %for.cond2
  br label %for.cond14

for.body4:                                        ; preds = %for.cond2
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv49, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !14
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !15

for.cond14:                                       ; preds = %for.cond14.preheader, %for.body16
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.body16 ], [ 0, %for.cond14.preheader ]
  %exitcond48.not = icmp eq i64 %indvars.iv44, %wide.trip.count
  br i1 %exitcond48.not, label %for.end23, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv49, i64 %indvars.iv44
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !14
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond14, !llvm.loop !16

for.end23:                                        ; preds = %for.cond14
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond, !llvm.loop !17

for.cond27:                                       ; preds = %for.cond, %for.end59
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %for.end59 ], [ 0, %for.cond ]
  %exitcond69.not = icmp eq i64 %indvars.iv64, %wide.trip.count52
  br i1 %exitcond69.not, label %for.end62, label %for.body29

for.body29:                                       ; preds = %for.cond27
  %arrayidx31 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv64
  %3 = load i32, ptr %arrayidx31, align 4, !tbaa !5, !invariant.load !14
  br label %for.cond32

for.cond32:                                       ; preds = %for.body34, %for.body29
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.body34 ], [ 0, %for.body29 ]
  %min.2 = phi i32 [ %spec.select42, %for.body34 ], [ %3, %for.body29 ]
  %exitcond58.not = icmp eq i64 %indvars.iv54, %wide.trip.count
  br i1 %exitcond58.not, label %for.cond49.preheader, label %for.body34

for.cond49.preheader:                             ; preds = %for.cond32
  br label %for.cond49

for.body34:                                       ; preds = %for.cond32
  %arrayidx38 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv54, i64 %indvars.iv64
  %4 = load i32, ptr %arrayidx38, align 4, !tbaa !5, !invariant.load !14
  %spec.select42 = tail call i32 @llvm.smin.i32(i32 %4, i32 %min.2)
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond32, !llvm.loop !18

for.cond49:                                       ; preds = %for.cond49.preheader, %for.body51
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %for.body51 ], [ 0, %for.cond49.preheader ]
  %exitcond63.not = icmp eq i64 %indvars.iv59, %wide.trip.count
  br i1 %exitcond63.not, label %for.end59, label %for.body51

for.body51:                                       ; preds = %for.cond49
  %arrayidx55 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv59, i64 %indvars.iv64
  %5 = load i32, ptr %arrayidx55, align 4, !tbaa !5, !invariant.load !14
  %sub56 = sub nsw i32 %5, %min.2
  store i32 %sub56, ptr %arrayidx55, align 4, !tbaa !5
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  br label %for.cond49, !llvm.loop !19

for.end59:                                        ; preds = %for.cond49
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br label %for.cond27, !llvm.loop !20

for.end62:                                        ; preds = %for.cond27
  %6 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  %cmp63 = icmp eq i32 %n.tr, 2
  br i1 %cmp63, label %cleanup, label %for.cond65.preheader

for.cond65.preheader:                             ; preds = %for.end62
  %smax91 = tail call i32 @llvm.smax.i32(i32 %n.tr, i32 noundef 2)
  %wide.trip.count80 = zext nneg i32 %smax91 to i64
  br label %for.cond65

for.cond65:                                       ; preds = %for.cond65.preheader, %for.end82
  %indvars.iv75 = phi i64 [ 2, %for.cond65.preheader ], [ %indvars.iv.next76, %for.end82 ]
  %exitcond81.not = icmp eq i64 %indvars.iv75, %wide.trip.count80
  br i1 %exitcond81.not, label %for.cond86, label %for.cond68.preheader

for.cond68.preheader:                             ; preds = %for.cond65
  %7 = add nsw i64 %indvars.iv75, -1
  br label %for.cond68

for.cond68:                                       ; preds = %for.cond68.preheader, %for.body70
  %indvars.iv70 = phi i64 [ 0, %for.cond68.preheader ], [ %indvars.iv.next71, %for.body70 ]
  %exitcond74.not = icmp eq i64 %indvars.iv70, %wide.trip.count
  br i1 %exitcond74.not, label %for.end82, label %for.body70

for.body70:                                       ; preds = %for.cond68
  %arrayidx74 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv75, i64 %indvars.iv70
  %8 = load i32, ptr %arrayidx74, align 4, !tbaa !5, !invariant.load !14
  %arrayidx79 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %7, i64 %indvars.iv70
  store i32 %8, ptr %arrayidx79, align 4, !tbaa !5
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %for.cond68, !llvm.loop !21

for.end82:                                        ; preds = %for.cond68
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  br label %for.cond65, !llvm.loop !22

for.cond86:                                       ; preds = %for.cond65, %for.end103
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %for.end103 ], [ 2, %for.cond65 ]
  %exitcond93.not = icmp eq i64 %indvars.iv87, %wide.trip.count80
  br i1 %exitcond93.not, label %for.end106, label %for.cond89.preheader

for.cond89.preheader:                             ; preds = %for.cond86
  %9 = add nsw i64 %indvars.iv87, -1
  br label %for.cond89

for.cond89:                                       ; preds = %for.cond89.preheader, %for.body91
  %indvars.iv82 = phi i64 [ 0, %for.cond89.preheader ], [ %indvars.iv.next83, %for.body91 ]
  %exitcond86.not = icmp eq i64 %indvars.iv82, %wide.trip.count
  br i1 %exitcond86.not, label %for.end103, label %for.body91

for.body91:                                       ; preds = %for.cond89
  %arrayidx95 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv82, i64 %indvars.iv87
  %10 = load i32, ptr %arrayidx95, align 4, !tbaa !5, !invariant.load !14
  %arrayidx100 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv82, i64 %9
  store i32 %10, ptr %arrayidx100, align 4, !tbaa !5
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %for.cond89, !llvm.loop !23

for.end103:                                       ; preds = %for.cond89
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  br label %for.cond86, !llvm.loop !24

for.end106:                                       ; preds = %for.cond86
  %sub107 = add nsw i32 %n.tr, -1
  %add = add nsw i32 %6, %accumulator.tr
  br label %tailrecurse

cleanup:                                          ; preds = %for.end62
  %accumulator.ret.tr = add nsw i32 %6, %accumulator.tr
  ret i32 %accumulator.ret.tr
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!14 = !{}
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
