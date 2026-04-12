; ModuleID = '<stdin>'
source_filename = "/tmp/tmpn8_jo24o.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@sum = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z1SPA100_ii(ptr noundef captures(none) %M, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %n, 1
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %smax.i = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @sum, align 4, !tbaa !5
  ret i32 %0

for.cond:                                         ; preds = %for.cond.preheader, %for.cond.cleanup4
  %indvars.iv63 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next64, %for.cond.cleanup4 ]
  %exitcond67.not = icmp eq i64 %indvars.iv63, %wide.trip.count.i
  br i1 %exitcond67.not, label %for.cond16.preheader, label %for.body

for.cond16.preheader:                             ; preds = %for.cond
  %wide.trip.count71 = zext i32 %n to i64
  br label %for.cond16

for.body:                                         ; preds = %for.cond
  %arrayidx.i = getelementptr inbounds nuw [100 x i32], ptr %M, i64 %indvars.iv63
  %1 = load i32, ptr %arrayidx.i, align 4, !tbaa !5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.body
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %for.body ]
  %Min.0.i = phi i32 [ %spec.select.i, %for.body.i ], [ %1, %for.body ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.cond2, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx5.i = getelementptr inbounds nuw [100 x i32], ptr %M, i64 %indvars.iv63, i64 %indvars.iv.i
  %2 = load i32, ptr %arrayidx5.i, align 4, !tbaa !5
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %Min.0.i, i32 %2)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond.i, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond.i, %for.body5
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 0, %for.cond.i ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup4, label %for.body5

for.cond.cleanup4:                                ; preds = %for.cond2
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br label %for.cond, !llvm.loop !12

for.body5:                                        ; preds = %for.cond2
  %arrayidx7 = getelementptr inbounds nuw [100 x i32], ptr %M, i64 %indvars.iv63, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %sub = sub nsw i32 %3, %Min.0.i
  store i32 %sub, ptr %arrayidx7, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !13

for.cond16:                                       ; preds = %for.cond16.preheader, %for.cond.cleanup24
  %indvars.iv73 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next74, %for.cond.cleanup24 ]
  %exitcond77.not = icmp eq i64 %indvars.iv73, %wide.trip.count.i
  br i1 %exitcond77.not, label %for.cond.cleanup18, label %for.body19

for.cond.cleanup18:                               ; preds = %for.cond16
  %4 = load i32, ptr @sum, align 4, !tbaa !5
  %arrayidx42 = getelementptr inbounds nuw i8, ptr %M, i64 404
  %5 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %add = add nsw i32 %5, %4
  store i32 %add, ptr @sum, align 4, !tbaa !5
  %sub45 = add nsw i32 %n, -1
  %smax = tail call i32 @llvm.smax.i32(i32 %sub45, i32 1)
  %wide.trip.count81 = zext nneg i32 %smax to i64
  br label %for.cond44

for.body19:                                       ; preds = %for.cond16
  %arrayidx1.i = getelementptr inbounds nuw [100 x i32], ptr %M, i64 0, i64 %indvars.iv73
  %6 = load i32, ptr %arrayidx1.i, align 4, !tbaa !5
  br label %for.cond.i54

for.cond.i54:                                     ; preds = %for.body.i58, %for.body19
  %indvars.iv.i55 = phi i64 [ %indvars.iv.next.i61, %for.body.i58 ], [ 0, %for.body19 ]
  %Min.0.i56 = phi i32 [ %spec.select.i60, %for.body.i58 ], [ %6, %for.body19 ]
  %exitcond.not.i57 = icmp eq i64 %indvars.iv.i55, %wide.trip.count.i
  br i1 %exitcond.not.i57, label %for.cond22, label %for.body.i58

for.body.i58:                                     ; preds = %for.cond.i54
  %arrayidx5.i59 = getelementptr inbounds nuw [100 x i32], ptr %M, i64 %indvars.iv.i55, i64 %indvars.iv73
  %7 = load i32, ptr %arrayidx5.i59, align 4, !tbaa !5
  %spec.select.i60 = tail call i32 @llvm.smin.i32(i32 %Min.0.i56, i32 %7)
  %indvars.iv.next.i61 = add nuw nsw i64 %indvars.iv.i55, 1
  br label %for.cond.i54, !llvm.loop !14

for.cond22:                                       ; preds = %for.cond.i54, %for.body25
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.body25 ], [ 0, %for.cond.i54 ]
  %exitcond72.not = icmp eq i64 %indvars.iv68, %wide.trip.count71
  br i1 %exitcond72.not, label %for.cond.cleanup24, label %for.body25

for.cond.cleanup24:                               ; preds = %for.cond22
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  br label %for.cond16, !llvm.loop !15

for.body25:                                       ; preds = %for.cond22
  %arrayidx29 = getelementptr inbounds nuw [100 x i32], ptr %M, i64 %indvars.iv68, i64 %indvars.iv73
  %8 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %sub30 = sub nsw i32 %8, %Min.0.i56
  store i32 %sub30, ptr %arrayidx29, align 4, !tbaa !5
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  br label %for.cond22, !llvm.loop !16

for.cond44:                                       ; preds = %for.body48, %for.cond.cleanup18
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.body48 ], [ 1, %for.cond.cleanup18 ]
  %exitcond82.not = icmp eq i64 %indvars.iv78, %wide.trip.count81
  br i1 %exitcond82.not, label %for.cond60, label %for.body48

for.body48:                                       ; preds = %for.cond44
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  %arrayidx51 = getelementptr inbounds nuw [100 x i32], ptr %M, i64 %indvars.iv.next79
  %9 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %arrayidx54 = getelementptr inbounds nuw [100 x i32], ptr %M, i64 %indvars.iv78
  store i32 %9, ptr %arrayidx54, align 4, !tbaa !5
  br label %for.cond44, !llvm.loop !17

for.cond60:                                       ; preds = %for.cond44, %for.body64
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.body64 ], [ 1, %for.cond44 ]
  %exitcond87.not = icmp eq i64 %indvars.iv83, %wide.trip.count81
  br i1 %exitcond87.not, label %for.cond76.preheader, label %for.body64

for.cond76.preheader:                             ; preds = %for.cond60
  %invariant.gep = getelementptr inbounds nuw i8, ptr %M, i64 400
  %wide.trip.count91 = zext i32 %sub45 to i64
  br label %for.cond76

for.body64:                                       ; preds = %for.cond60
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  %arrayidx68 = getelementptr inbounds nuw [100 x i32], ptr %M, i64 0, i64 %indvars.iv.next84
  %10 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %arrayidx71 = getelementptr inbounds nuw [100 x i32], ptr %M, i64 0, i64 %indvars.iv83
  store i32 %10, ptr %arrayidx71, align 4, !tbaa !5
  br label %for.cond60, !llvm.loop !18

for.cond76:                                       ; preds = %for.cond76.preheader, %for.cond.cleanup85
  %indvars.iv93 = phi i64 [ 1, %for.cond76.preheader ], [ %indvars.iv.next94, %for.cond.cleanup85 ]
  %exitcond97.not = icmp eq i64 %indvars.iv93, %wide.trip.count81
  br i1 %exitcond97.not, label %for.cond.cleanup79, label %for.cond82

for.cond.cleanup79:                               ; preds = %for.cond76
  %call104 = tail call noundef i32 @_Z1SPA100_ii(ptr noundef %M, i32 noundef %sub45)
  unreachable

for.cond82:                                       ; preds = %for.cond76, %for.body86
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.body86 ], [ 1, %for.cond76 ]
  %exitcond92.not = icmp eq i64 %indvars.iv88, %wide.trip.count91
  br i1 %exitcond92.not, label %for.cond.cleanup85, label %for.body86

for.cond.cleanup85:                               ; preds = %for.cond82
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  br label %for.cond76, !llvm.loop !19

for.body86:                                       ; preds = %for.cond82
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  %arrayidx92 = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %indvars.iv93, i64 %indvars.iv.next89
  %11 = load i32, ptr %arrayidx92, align 4, !tbaa !5
  %arrayidx96 = getelementptr inbounds nuw [100 x i32], ptr %M, i64 %indvars.iv93, i64 %indvars.iv88
  store i32 %11, ptr %arrayidx96, align 4, !tbaa !5
  br label %for.cond82, !llvm.loop !20
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %M = alloca [100 x [100 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %M) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) %M, i8 0, i64 40000, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup3, %entry
  %num.0 = phi i32 [ 0, %entry ], [ %inc19, %for.cond.cleanup3 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %num.0, %0
  br i1 %cmp, label %for.cond1, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %M) #7
  ret i32 0

for.cond1:                                        ; preds = %for.cond, %for.cond.cleanup7
  %1 = phi i32 [ %3, %for.cond.cleanup7 ], [ %0, %for.cond ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.cond.cleanup7 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv8, %2
  br i1 %cmp2, label %for.cond5, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  store i32 0, ptr @sum, align 4, !tbaa !5
  %call15 = call noundef i32 @_Z1SPA100_ii(ptr noundef nonnull %M, i32 noundef %1)
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call15)
  %vtable.i = load ptr, ptr %call16, align 8, !tbaa !21
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call16, i64 %vbase.offset.i
  %call.i6 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call16, i8 noundef signext %call.i6)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc19 = add nuw nsw i32 %num.0, 1
  br label %for.cond, !llvm.loop !23

for.cond5:                                        ; preds = %for.cond1, %for.body8
  %3 = phi i32 [ %.pre, %for.body8 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond1, !llvm.loop !24

for.body8:                                        ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %M, i64 0, i64 %indvars.iv8, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !25
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !8, i64 0}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
