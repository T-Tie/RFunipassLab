; ModuleID = '<stdin>'
source_filename = "/tmp/tmpk65g_2te.cpp"
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
  %a = alloca [200 x [200 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 160000, ptr nonnull %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = add i32 %0, -1
  %add.ptr123 = getelementptr inbounds nuw i8, ptr %a, i64 804
  %smax134 = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %smax136 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count76 = zext i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup18, %entry
  %q.0 = phi i32 [ 0, %entry ], [ %inc187, %for.cond.cleanup18 ]
  %exitcond137.not = icmp eq i32 %q.0, %smax136
  br i1 %exitcond137.not, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 160000, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0

for.body:                                         ; preds = %for.cond
  store i32 %0, ptr %n, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond.cleanup7, %for.body
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %for.cond.cleanup7 ], [ 0, %for.body ]
  %exitcond77.not = icmp eq i64 %indvars.iv73, %wide.trip.count76
  br i1 %exitcond77.not, label %for.cond16.preheader, label %for.cond5.preheader

for.cond16.preheader:                             ; preds = %for.cond1
  %n.promoted = load i32, ptr %n, align 4
  %1 = sext i32 %n.promoted to i64
  br label %for.cond16

for.cond5.preheader:                              ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw [200 x i32], ptr %a, i64 %indvars.iv73
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body8
  %indvars.iv = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next, %for.body8 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count76
  br i1 %exitcond.not, label %for.cond.cleanup7, label %for.body8

for.cond.cleanup7:                                ; preds = %for.cond5
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  br label %for.cond1, !llvm.loop !9

for.body8:                                        ; preds = %for.cond5
  %add.ptr11 = getelementptr inbounds nuw i32, ptr %add.ptr, i64 %indvars.iv
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond5, !llvm.loop !12

for.cond16:                                       ; preds = %for.cond16.preheader, %for.cond.cleanup156
  %indvars.iv131 = phi i64 [ %1, %for.cond16.preheader ], [ %indvars.iv.next132, %for.cond.cleanup156 ]
  %indvars.iv121.in = phi i32 [ %n.promoted, %for.cond16.preheader ], [ %indvars.iv121, %for.cond.cleanup156 ]
  %s.0 = phi i32 [ 0, %for.cond16.preheader ], [ %add, %for.cond.cleanup156 ]
  %w.0 = phi i32 [ 0, %for.cond16.preheader ], [ %inc182, %for.cond.cleanup156 ]
  %indvars.iv121 = add i32 %indvars.iv121.in, -1
  %smax128 = call i32 @llvm.smax.i32(i32 %indvars.iv121, i32 0)
  %exitcond135.not = icmp eq i32 %w.0, %smax134
  br i1 %exitcond135.not, label %for.cond.cleanup18, label %for.cond21.preheader

for.cond21.preheader:                             ; preds = %for.cond16
  %2 = trunc nsw i64 %indvars.iv131 to i32
  %smax115 = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %wide.trip.count91 = zext nneg i32 %smax115 to i64
  %wide.trip.count81 = and i64 %indvars.iv131, 4294967295
  br label %for.cond21

for.cond.cleanup18:                               ; preds = %for.cond16
  %call184 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %s.0)
  %vtable.i = load ptr, ptr %call184, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call184, i64 %vbase.offset.i
  %call.i68 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call184, i8 noundef signext %call.i68)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc187 = add nuw i32 %q.0, 1
  br label %for.cond, !llvm.loop !15

for.cond21:                                       ; preds = %for.cond21.preheader, %for.cond.cleanup50
  %indvars.iv88 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next89, %for.cond.cleanup50 ]
  %exitcond92.not = icmp eq i64 %indvars.iv88, %wide.trip.count91
  br i1 %exitcond92.not, label %for.cond70.preheader, label %for.body24

for.cond70.preheader:                             ; preds = %for.cond21
  %wide.trip.count96 = and i64 %indvars.iv131, 4294967295
  br label %for.cond70

for.body24:                                       ; preds = %for.cond21
  %add.ptr26 = getelementptr inbounds nuw [200 x i32], ptr %a, i64 %indvars.iv88
  %3 = load i32, ptr %add.ptr26, align 16, !tbaa !5
  br label %for.cond29

for.cond29:                                       ; preds = %for.body32, %for.body24
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.body32 ], [ 0, %for.body24 ]
  %l.0 = phi i32 [ %spec.select, %for.body32 ], [ %3, %for.body24 ]
  %exitcond82.not = icmp eq i64 %indvars.iv78, %wide.trip.count81
  br i1 %exitcond82.not, label %for.cond48, label %for.body32

for.body32:                                       ; preds = %for.cond29
  %add.ptr37 = getelementptr inbounds nuw i32, ptr %add.ptr26, i64 %indvars.iv78
  %4 = load i32, ptr %add.ptr37, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %l.0, i32 %4)
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond29, !llvm.loop !16

for.cond48:                                       ; preds = %for.cond29, %for.body51
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.body51 ], [ 0, %for.cond29 ]
  %exitcond87.not = icmp eq i64 %indvars.iv83, %wide.trip.count81
  br i1 %exitcond87.not, label %for.cond.cleanup50, label %for.body51

for.cond.cleanup50:                               ; preds = %for.cond48
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %for.cond21, !llvm.loop !17

for.body51:                                       ; preds = %for.cond48
  %add.ptr56 = getelementptr inbounds nuw i32, ptr %add.ptr26, i64 %indvars.iv83
  %5 = load i32, ptr %add.ptr56, align 4, !tbaa !5
  %sub57 = sub nsw i32 %5, %l.0
  store i32 %sub57, ptr %add.ptr56, align 4, !tbaa !5
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  br label %for.cond48, !llvm.loop !18

for.cond70:                                       ; preds = %for.cond70.preheader, %for.cond.cleanup102
  %indvars.iv103 = phi i64 [ 0, %for.cond70.preheader ], [ %indvars.iv.next104, %for.cond.cleanup102 ]
  %exitcond108.not = icmp eq i64 %indvars.iv103, %wide.trip.count91
  br i1 %exitcond108.not, label %for.cond.cleanup72, label %for.body73

for.cond.cleanup72:                               ; preds = %for.cond70
  %6 = load i32, ptr %add.ptr123, align 4, !tbaa !5
  %indvars.iv.next132 = add nsw i64 %indvars.iv131, -1
  br label %for.cond125

for.body73:                                       ; preds = %for.cond70
  %add.ptr77 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv103
  %7 = load i32, ptr %add.ptr77, align 4, !tbaa !5
  br label %for.cond79

for.cond79:                                       ; preds = %for.body82, %for.body73
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %for.body82 ], [ 0, %for.body73 ]
  %l74.0 = phi i32 [ %spec.select67, %for.body82 ], [ %7, %for.body73 ]
  %exitcond97.not = icmp eq i64 %indvars.iv93, %wide.trip.count96
  br i1 %exitcond97.not, label %for.cond100, label %for.body82

for.body82:                                       ; preds = %for.cond79
  %gep = getelementptr inbounds nuw [200 x i32], ptr %add.ptr77, i64 %indvars.iv93
  %8 = load i32, ptr %gep, align 4, !tbaa !5
  %spec.select67 = call i32 @llvm.smin.i32(i32 %l74.0, i32 %8)
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  br label %for.cond79, !llvm.loop !19

for.cond100:                                      ; preds = %for.cond79, %for.body103
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %for.body103 ], [ 0, %for.cond79 ]
  %exitcond102.not = icmp eq i64 %indvars.iv98, %wide.trip.count96
  br i1 %exitcond102.not, label %for.cond.cleanup102, label %for.body103

for.cond.cleanup102:                              ; preds = %for.cond100
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  br label %for.cond70, !llvm.loop !20

for.body103:                                      ; preds = %for.cond100
  %gep70 = getelementptr inbounds nuw [200 x i32], ptr %add.ptr77, i64 %indvars.iv98
  %9 = load i32, ptr %gep70, align 4, !tbaa !5
  %sub109 = sub nsw i32 %9, %l74.0
  store i32 %sub109, ptr %gep70, align 4, !tbaa !5
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %for.cond100, !llvm.loop !21

for.cond125:                                      ; preds = %for.cond.cleanup133, %for.cond.cleanup72
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %for.cond.cleanup133 ], [ 0, %for.cond.cleanup72 ]
  %exitcond117.not = icmp eq i64 %indvars.iv112, %wide.trip.count91
  br i1 %exitcond117.not, label %for.cond153.preheader, label %for.cond130.preheader

for.cond153.preheader:                            ; preds = %for.cond125
  %wide.trip.count129 = zext nneg i32 %smax128 to i64
  %wide.trip.count123 = zext i32 %indvars.iv121 to i64
  br label %for.cond153

for.cond130.preheader:                            ; preds = %for.cond125
  %add.ptr136 = getelementptr inbounds nuw [200 x i32], ptr %a, i64 %indvars.iv112
  br label %for.cond130

for.cond130:                                      ; preds = %for.cond130.preheader, %for.body134
  %indvars.iv109 = phi i64 [ 1, %for.cond130.preheader ], [ %indvars.iv.next110, %for.body134 ]
  %cmp132 = icmp slt i64 %indvars.iv109, %indvars.iv.next132
  br i1 %cmp132, label %for.body134, label %for.cond.cleanup133

for.cond.cleanup133:                              ; preds = %for.cond130
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  br label %for.cond125, !llvm.loop !22

for.body134:                                      ; preds = %for.cond130
  %add.ptr139 = getelementptr inbounds nuw i32, ptr %add.ptr136, i64 %indvars.iv109
  %add.ptr140 = getelementptr inbounds nuw i8, ptr %add.ptr139, i64 4
  %10 = load i32, ptr %add.ptr140, align 4, !tbaa !5
  store i32 %10, ptr %add.ptr139, align 4, !tbaa !5
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  br label %for.cond130, !llvm.loop !23

for.cond153:                                      ; preds = %for.cond153.preheader, %for.cond.cleanup162
  %indvars.iv125 = phi i64 [ 0, %for.cond153.preheader ], [ %indvars.iv.next126, %for.cond.cleanup162 ]
  %exitcond130.not = icmp eq i64 %indvars.iv125, %wide.trip.count129
  br i1 %exitcond130.not, label %for.cond.cleanup156, label %for.cond159

for.cond.cleanup156:                              ; preds = %for.cond153
  %add = add nsw i32 %6, %s.0
  %11 = trunc nsw i64 %indvars.iv.next132 to i32
  store i32 %11, ptr %n, align 4, !tbaa !5
  %inc182 = add nuw i32 %w.0, 1
  br label %for.cond16, !llvm.loop !24

for.cond159:                                      ; preds = %for.cond153, %for.body163
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %for.body163 ], [ 1, %for.cond153 ]
  %exitcond124.not = icmp eq i64 %indvars.iv118, %wide.trip.count123
  br i1 %exitcond124.not, label %for.cond.cleanup162, label %for.body163

for.cond.cleanup162:                              ; preds = %for.cond159
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1
  br label %for.cond153, !llvm.loop !25

for.body163:                                      ; preds = %for.cond159
  %add.ptr165 = getelementptr inbounds nuw [200 x i32], ptr %a, i64 %indvars.iv118
  %add.ptr166 = getelementptr inbounds nuw i8, ptr %add.ptr165, i64 800
  %add.ptr169 = getelementptr inbounds nuw i32, ptr %add.ptr166, i64 %indvars.iv125
  %12 = load i32, ptr %add.ptr169, align 4, !tbaa !5
  %add.ptr174 = getelementptr inbounds nuw i32, ptr %add.ptr165, i64 %indvars.iv125
  store i32 %12, ptr %add.ptr174, align 4, !tbaa !5
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  br label %for.cond159, !llvm.loop !26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

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
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
