; ModuleID = '<stdin>'
source_filename = "/tmp/tmpsisdh41s.cpp"
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
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %arrayidx103 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc158, %for.cond.cleanup ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %k.0, %0
  br i1 %cmp, label %for.cond1, label %for.end159

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv71, %2
  br i1 %cmp2, label %for.cond4, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond1
  %sub = add nsw i32 %1, -1
  %smax132 = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  br label %for.cond13

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %3 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.body6, label %for.inc10

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv71, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %for.cond1, !llvm.loop !12

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc152
  %indvars.iv115 = phi i32 [ %sub, %for.cond13.preheader ], [ %indvars.iv.next116, %for.inc152 ]
  %indvars.iv78 = phi i32 [ %1, %for.cond13.preheader ], [ %indvars.iv.next79, %for.inc152 ]
  %sum.0 = phi i32 [ 0, %for.cond13.preheader ], [ %add, %for.inc152 ]
  %q.0 = phi i32 [ 0, %for.cond13.preheader ], [ %inc153, %for.inc152 ]
  %smax129 = call i32 @llvm.smax.i32(i32 %indvars.iv115, i32 1)
  %exitcond133.not = icmp eq i32 %q.0, %smax132
  br i1 %exitcond133.not, label %for.cond.cleanup, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.cond13
  %smax123 = call i32 @llvm.smax.i32(i32 %indvars.iv78, i32 0)
  %wide.trip.count88 = zext nneg i32 %smax123 to i64
  %wide.trip.count = zext i32 %indvars.iv78 to i64
  br label %for.cond16

for.cond.cleanup:                                 ; preds = %for.cond13
  %call155 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %vtable.i = load ptr, ptr %call155, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call155, i64 %vbase.offset.i
  %call.i69 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call155, i8 noundef signext %call.i69)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc158 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !15

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc55
  %indvars.iv85 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next86, %for.inc55 ]
  %exitcond89.not = icmp eq i64 %indvars.iv85, %wide.trip.count88
  br i1 %exitcond89.not, label %for.cond58.preheader, label %for.body19

for.cond58.preheader:                             ; preds = %for.cond16
  %wide.trip.count93 = zext i32 %indvars.iv78 to i64
  br label %for.cond58

for.body19:                                       ; preds = %for.cond16
  %arrayidx21 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv85
  %5 = load i32, ptr %arrayidx21, align 16, !tbaa !5
  br label %for.cond23

for.cond23:                                       ; preds = %for.body26, %for.body19
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %for.body26 ], [ 0, %for.body19 ]
  %t.0 = phi i32 [ %spec.select, %for.body26 ], [ %5, %for.body19 ]
  %exitcond.not = icmp eq i64 %indvars.iv74, %wide.trip.count
  br i1 %exitcond.not, label %for.cond39, label %for.body26

for.body26:                                       ; preds = %for.cond23
  %arrayidx30 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv85, i64 %indvars.iv74
  %6 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %6, i32 %t.0)
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %for.cond23, !llvm.loop !16

for.cond39:                                       ; preds = %for.cond23, %for.body42
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %for.body42 ], [ 0, %for.cond23 ]
  %exitcond84.not = icmp eq i64 %indvars.iv80, %wide.trip.count
  br i1 %exitcond84.not, label %for.inc55, label %for.body42

for.body42:                                       ; preds = %for.cond39
  %arrayidx46 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv85, i64 %indvars.iv80
  %7 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %sub47 = sub nsw i32 %7, %t.0
  store i32 %sub47, ptr %arrayidx46, align 4, !tbaa !5
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br label %for.cond39, !llvm.loop !17

for.inc55:                                        ; preds = %for.cond39
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %for.cond16, !llvm.loop !18

for.cond58:                                       ; preds = %for.cond58.preheader, %for.inc99
  %indvars.iv100 = phi i64 [ 0, %for.cond58.preheader ], [ %indvars.iv.next101, %for.inc99 ]
  %exitcond105.not = icmp eq i64 %indvars.iv100, %wide.trip.count88
  br i1 %exitcond105.not, label %for.end101, label %for.body61

for.body61:                                       ; preds = %for.cond58
  %arrayidx64 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv100
  %8 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  br label %for.cond65

for.cond65:                                       ; preds = %for.body68, %for.body61
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %for.body68 ], [ 0, %for.body61 ]
  %t.2 = phi i32 [ %spec.select68, %for.body68 ], [ %8, %for.body61 ]
  %exitcond94.not = icmp eq i64 %indvars.iv90, %wide.trip.count93
  br i1 %exitcond94.not, label %for.cond83, label %for.body68

for.body68:                                       ; preds = %for.cond65
  %arrayidx72 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv90, i64 %indvars.iv100
  %9 = load i32, ptr %arrayidx72, align 4, !tbaa !5
  %spec.select68 = call i32 @llvm.smin.i32(i32 %9, i32 %t.2)
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %for.cond65, !llvm.loop !19

for.cond83:                                       ; preds = %for.cond65, %for.body86
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.body86 ], [ 0, %for.cond65 ]
  %exitcond99.not = icmp eq i64 %indvars.iv95, %wide.trip.count93
  br i1 %exitcond99.not, label %for.inc99, label %for.body86

for.body86:                                       ; preds = %for.cond83
  %arrayidx90 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv95, i64 %indvars.iv100
  %10 = load i32, ptr %arrayidx90, align 4, !tbaa !5
  %sub91 = sub nsw i32 %10, %t.2
  store i32 %sub91, ptr %arrayidx90, align 4, !tbaa !5
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  br label %for.cond83, !llvm.loop !20

for.inc99:                                        ; preds = %for.cond83
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  br label %for.cond58, !llvm.loop !21

for.end101:                                       ; preds = %for.cond58
  %11 = load i32, ptr %arrayidx103, align 4, !tbaa !5
  %wide.trip.count118 = zext nneg i32 %smax129 to i64
  br label %for.cond104

for.cond104:                                      ; preds = %for.cond109, %for.end101
  %indvars.iv112 = phi i64 [ 1, %for.end101 ], [ %indvars.iv.next113, %for.cond109 ]
  %exitcond119.not = icmp eq i64 %indvars.iv112, %wide.trip.count118
  br i1 %exitcond119.not, label %for.cond128, label %for.cond109.preheader

for.cond109.preheader:                            ; preds = %for.cond104
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  br label %for.cond109

for.cond109:                                      ; preds = %for.cond109.preheader, %for.body112
  %indvars.iv106 = phi i64 [ 0, %for.cond109.preheader ], [ %indvars.iv.next107, %for.body112 ]
  %exitcond111.not = icmp eq i64 %indvars.iv106, %wide.trip.count88
  br i1 %exitcond111.not, label %for.cond104, label %for.body112, !llvm.loop !22

for.body112:                                      ; preds = %for.cond109
  %arrayidx117 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next113, i64 %indvars.iv106
  %12 = load i32, ptr %arrayidx117, align 4, !tbaa !5
  %arrayidx121 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv112, i64 %indvars.iv106
  store i32 %12, ptr %arrayidx121, align 4, !tbaa !5
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %for.cond109, !llvm.loop !23

for.cond128:                                      ; preds = %for.cond133, %for.cond104
  %indvars.iv126 = phi i64 [ 1, %for.cond104 ], [ %indvars.iv.next127, %for.cond133 ]
  %exitcond131.not = icmp eq i64 %indvars.iv126, %wide.trip.count118
  br i1 %exitcond131.not, label %for.inc152, label %for.cond133.preheader

for.cond133.preheader:                            ; preds = %for.cond128
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  br label %for.cond133

for.cond133:                                      ; preds = %for.cond133.preheader, %for.body136
  %indvars.iv120 = phi i64 [ 0, %for.cond133.preheader ], [ %indvars.iv.next121, %for.body136 ]
  %exitcond125.not = icmp eq i64 %indvars.iv120, %wide.trip.count88
  br i1 %exitcond125.not, label %for.cond128, label %for.body136, !llvm.loop !24

for.body136:                                      ; preds = %for.cond133
  %arrayidx141 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv120, i64 %indvars.iv.next127
  %13 = load i32, ptr %arrayidx141, align 4, !tbaa !5
  %arrayidx145 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv120, i64 %indvars.iv126
  store i32 %13, ptr %arrayidx145, align 4, !tbaa !5
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  br label %for.cond133, !llvm.loop !25

for.inc152:                                       ; preds = %for.cond128
  %add = add nsw i32 %11, %sum.0
  %inc153 = add nuw i32 %q.0, 1
  %indvars.iv.next79 = add i32 %indvars.iv78, -1
  %indvars.iv.next116 = add i32 %indvars.iv115, -1
  br label %for.cond13, !llvm.loop !26

for.end159:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
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
