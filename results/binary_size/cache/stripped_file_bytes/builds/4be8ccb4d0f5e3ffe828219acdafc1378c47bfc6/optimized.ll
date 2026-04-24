; ModuleID = '<stdin>'
source_filename = "/tmp/tmpngm99t_q.cpp"
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
  %num = alloca [200 x [200 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.start.p0(i64 160000, ptr nonnull %num) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160000) %num, i8 0, i64 160000, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end14, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc19, %for.end14 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %i.0, %0
  br i1 %cmp.not.not, label %for.cond1, label %for.end20

for.cond1:                                        ; preds = %for.cond, %for.inc12
  %1 = phi i32 [ %3, %for.inc12 ], [ %0, %for.cond ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.inc12 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp3.not.not = icmp slt i64 %indvars.iv8, %2
  br i1 %cmp3.not.not, label %for.cond5, label %for.end14

for.cond5:                                        ; preds = %for.cond1, %for.body8
  %3 = phi i32 [ %.pre, %for.body8 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp7.not.not = icmp slt i64 %indvars.iv, %4
  br i1 %cmp7.not.not, label %for.body8, label %for.inc12

for.body8:                                        ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %num, i64 0, i64 %indvars.iv8, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !9

for.inc12:                                        ; preds = %for.cond5
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond1, !llvm.loop !12

for.end14:                                        ; preds = %for.cond1
  %call15 = call noundef i32 @_Z3delPA200_ii(ptr noundef nonnull %num, i32 noundef %1)
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call15)
  %vtable.i = load ptr, ptr %call16, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call16, i64 %vbase.offset.i
  %call.i6 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call16, i8 noundef signext %call.i6)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc19 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !15

for.end20:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 160000, ptr nonnull %num) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z3delPA200_ii(ptr noundef captures(none) %num, i32 noundef %n) local_unnamed_addr #4 {
entry:
  %arrayidx82 = getelementptr inbounds nuw i8, ptr %num, i64 804
  %invariant.gep = getelementptr i8, ptr %num, i64 -800
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end128, %entry
  %accumulator.tr = phi i32 [ 0, %entry ], [ %add130, %for.end128 ]
  %n.tr = phi i32 [ %n, %entry ], [ %sub.le, %for.end128 ]
  %smax125 = tail call i32 @llvm.smax.i32(i32 %n.tr, i32 2)
  %smax113 = tail call i32 @llvm.smax.i32(i32 %n.tr, i32 1)
  %0 = add nuw i32 %smax113, 1
  %smax106 = tail call i32 @llvm.smax.i32(i32 %n.tr, i32 0)
  %wide.trip.count91 = zext nneg i32 %smax106 to i64
  %wide.trip.count = zext i32 %n.tr to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %tailrecurse
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.inc31 ], [ 0, %tailrecurse ]
  %exitcond92.not = icmp eq i64 %indvars.iv88, %wide.trip.count91
  br i1 %exitcond92.not, label %for.cond34.preheader, label %for.cond1

for.cond34.preheader:                             ; preds = %for.cond
  %wide.trip.count96 = zext i32 %n.tr to i64
  br label %for.cond34

for.cond1:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ 1000, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body4

for.body4:                                        ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [200 x i32], ptr %num, i64 %indvars.iv88, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !16

for.end:                                          ; preds = %for.cond1
  %cmp12.not = icmp eq i32 %min.0, 0
  br i1 %cmp12.not, label %for.inc31, label %for.cond14

for.cond14:                                       ; preds = %for.end, %for.body17
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.body17 ], [ 0, %for.end ]
  %exitcond87.not = icmp eq i64 %indvars.iv83, %wide.trip.count
  br i1 %exitcond87.not, label %for.inc31, label %for.body17

for.body17:                                       ; preds = %for.cond14
  %arrayidx21 = getelementptr inbounds nuw [200 x i32], ptr %num, i64 %indvars.iv88, i64 %indvars.iv83
  %2 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %sub22 = sub nsw i32 %2, %min.0
  store i32 %sub22, ptr %arrayidx21, align 4, !tbaa !5
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  br label %for.cond14, !llvm.loop !17

for.inc31:                                        ; preds = %for.cond14, %for.end
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %for.cond, !llvm.loop !18

for.cond34:                                       ; preds = %for.cond34.preheader, %for.inc78
  %indvars.iv103 = phi i64 [ 0, %for.cond34.preheader ], [ %indvars.iv.next104, %for.inc78 ]
  %exitcond108.not = icmp eq i64 %indvars.iv103, %wide.trip.count91
  br i1 %exitcond108.not, label %for.end80, label %for.cond38

for.cond38:                                       ; preds = %for.cond34, %for.inc56
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %for.inc56 ], [ 0, %for.cond34 ]
  %min.2 = phi i32 [ %min.4, %for.inc56 ], [ 1000, %for.cond34 ]
  %exitcond97.not = icmp eq i64 %indvars.iv93, %wide.trip.count96
  br i1 %exitcond97.not, label %for.end58, label %for.body41

for.body41:                                       ; preds = %for.cond38
  %arrayidx45 = getelementptr inbounds nuw [200 x i32], ptr %num, i64 %indvars.iv93, i64 %indvars.iv103
  %3 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %3, %min.2
  br i1 %cmp46, label %if.then47, label %for.inc56

if.then47:                                        ; preds = %for.body41
  %cmp52 = icmp eq i32 %3, 0
  br i1 %cmp52, label %for.inc78, label %for.inc56

for.inc56:                                        ; preds = %for.body41, %if.then47
  %min.4 = phi i32 [ %3, %if.then47 ], [ %min.2, %for.body41 ]
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  br label %for.cond38, !llvm.loop !19

for.end58:                                        ; preds = %for.cond38
  %cmp59.not = icmp eq i32 %min.2, 0
  br i1 %cmp59.not, label %for.inc78, label %for.cond61

for.cond61:                                       ; preds = %for.end58, %for.body64
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %for.body64 ], [ 0, %for.end58 ]
  %exitcond102.not = icmp eq i64 %indvars.iv98, %wide.trip.count96
  br i1 %exitcond102.not, label %for.inc78, label %for.body64

for.body64:                                       ; preds = %for.cond61
  %arrayidx68 = getelementptr inbounds nuw [200 x i32], ptr %num, i64 %indvars.iv98, i64 %indvars.iv103
  %4 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %sub69 = sub nsw i32 %4, %min.2
  store i32 %sub69, ptr %arrayidx68, align 4, !tbaa !5
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %for.cond61, !llvm.loop !20

for.inc78:                                        ; preds = %if.then47, %for.cond61, %for.end58
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  br label %for.cond34, !llvm.loop !21

for.end80:                                        ; preds = %for.cond34
  %sub.le = add nsw i32 %n.tr, -1
  %5 = load i32, ptr %arrayidx82, align 4, !tbaa !5
  %cmp83 = icmp eq i32 %n.tr, 2
  br i1 %cmp83, label %cleanup, label %for.cond85.preheader

for.cond85.preheader:                             ; preds = %for.end80
  %wide.trip.count114 = zext i32 %0 to i64
  br label %for.cond85

for.cond85:                                       ; preds = %for.cond85.preheader, %for.body87
  %indvars.iv109 = phi i64 [ 2, %for.cond85.preheader ], [ %indvars.iv.next110, %for.body87 ]
  %exitcond115 = icmp eq i64 %indvars.iv109, %wide.trip.count114
  br i1 %exitcond115, label %for.cond105.preheader, label %for.body87

for.cond105.preheader:                            ; preds = %for.cond85
  %wide.trip.count126 = zext nneg i32 %smax125 to i64
  %wide.trip.count120 = zext i32 %n.tr to i64
  br label %for.cond105

for.body87:                                       ; preds = %for.cond85
  %arrayidx90 = getelementptr inbounds nuw [200 x i32], ptr %num, i64 0, i64 %indvars.iv109
  %6 = load i32, ptr %arrayidx90, align 4, !tbaa !5
  %7 = add nsw i64 %indvars.iv109, -1
  %arrayidx94 = getelementptr inbounds [200 x i32], ptr %num, i64 0, i64 %7
  store i32 %6, ptr %arrayidx94, align 4, !tbaa !5
  %arrayidx96 = getelementptr inbounds nuw [200 x i32], ptr %num, i64 %indvars.iv109
  %8 = load i32, ptr %arrayidx96, align 4, !tbaa !5
  %arrayidx100 = getelementptr inbounds [200 x i32], ptr %num, i64 %7
  store i32 %8, ptr %arrayidx100, align 4, !tbaa !5
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  br label %for.cond85, !llvm.loop !22

for.cond105:                                      ; preds = %for.cond105.preheader, %for.inc126
  %indvars.iv122 = phi i64 [ 2, %for.cond105.preheader ], [ %indvars.iv.next123, %for.inc126 ]
  %exitcond127.not = icmp eq i64 %indvars.iv122, %wide.trip.count126
  br i1 %exitcond127.not, label %for.end128, label %for.cond109

for.cond109:                                      ; preds = %for.cond105, %for.body112
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %for.body112 ], [ 2, %for.cond105 ]
  %exitcond121.not = icmp eq i64 %indvars.iv116, %wide.trip.count120
  br i1 %exitcond121.not, label %for.inc126, label %for.body112

for.body112:                                      ; preds = %for.cond109
  %arrayidx116 = getelementptr inbounds nuw [200 x i32], ptr %num, i64 %indvars.iv122, i64 %indvars.iv116
  %9 = load i32, ptr %arrayidx116, align 4, !tbaa !5
  %10 = add nsw i64 %indvars.iv116, -1
  %arrayidx122 = getelementptr [200 x i32], ptr %invariant.gep, i64 %indvars.iv122, i64 %10
  store i32 %9, ptr %arrayidx122, align 4, !tbaa !5
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1
  br label %for.cond109, !llvm.loop !23

for.inc126:                                       ; preds = %for.cond109
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1
  br label %for.cond105, !llvm.loop !24

for.end128:                                       ; preds = %for.cond105
  %add130 = add nsw i32 %5, %accumulator.tr
  br label %tailrecurse

cleanup:                                          ; preds = %for.end80
  %accumulator.ret.tr = add nsw i32 %5, %accumulator.tr
  ret i32 %accumulator.ret.tr
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
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
