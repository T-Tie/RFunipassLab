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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 41616, ptr nonnull %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %arrayidx99 = getelementptr inbounds nuw i8, ptr %a, i64 824
  %arrayidx111 = getelementptr inbounds nuw i8, ptr %a, i64 408
  br label %for.cond

for.cond:                                         ; preds = %for.end147, %entry
  %k.0 = phi i32 [ 1, %entry ], [ %inc151, %for.end147 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %k.0, %0
  br i1 %cmp.not, label %for.end152, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %6, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %for.inc10 ], [ 1, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2.not = icmp sgt i64 %indvars.iv67, %2
  br i1 %cmp2.not, label %for.cond13.preheader, label %for.cond4

for.cond13.preheader:                             ; preds = %for.cond1
  %3 = add i32 %1, 1
  %4 = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %5 = add nsw i32 %4, -1
  br label %for.cond13

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %6 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 1, %for.cond1 ]
  %7 = sext i32 %6 to i64
  %cmp5.not = icmp sgt i64 %indvars.iv, %7
  br i1 %cmp5.not, label %for.inc10, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv67, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  br label %for.cond1, !llvm.loop !12

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc145
  %indvars.iv85 = phi i32 [ %1, %for.cond13.preheader ], [ %indvars.iv.next86, %for.inc145 ]
  %indvars.iv74 = phi i32 [ %3, %for.cond13.preheader ], [ %indvars.iv.next75, %for.inc145 ]
  %sum.0 = phi i32 [ 0, %for.cond13.preheader ], [ %add, %for.inc145 ]
  %t.0 = phi i32 [ 0, %for.cond13.preheader ], [ %inc146, %for.inc145 ]
  %smax122 = call i32 @llvm.smax.i32(i32 %indvars.iv85, i32 2)
  %8 = add nuw i32 %smax122, 1
  %exitcond126 = icmp eq i32 %t.0, %5
  br i1 %exitcond126, label %for.end147, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.cond13
  %smax102 = call i32 @llvm.smax.i32(i32 %indvars.iv85, i32 0)
  %9 = add nuw i32 %smax102, 1
  %wide.trip.count87 = zext i32 %9 to i64
  %wide.trip.count = zext i32 %indvars.iv74 to i64
  br label %for.cond16

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc52
  %indvars.iv81 = phi i64 [ 1, %for.cond16.preheader ], [ %indvars.iv.next82, %for.inc52 ]
  %exitcond88 = icmp eq i64 %indvars.iv81, %wide.trip.count87
  br i1 %exitcond88, label %for.cond55.preheader, label %for.cond20

for.cond55.preheader:                             ; preds = %for.cond16
  %wide.trip.count92 = zext i32 %indvars.iv74 to i64
  br label %for.cond55

for.cond20:                                       ; preds = %for.cond16, %for.body23
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.body23 ], [ 1, %for.cond16 ]
  %min.0 = phi i32 [ %min.0., %for.body23 ], [ 100000, %for.cond16 ]
  %exitcond = icmp eq i64 %indvars.iv70, %wide.trip.count
  br i1 %exitcond, label %for.cond36, label %for.body23

for.body23:                                       ; preds = %for.cond20
  %arrayidx27 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv81, i64 %indvars.iv70
  %10 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %min.0. = call i32 @llvm.smin.i32(i32 %min.0, i32 %10)
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %for.cond20, !llvm.loop !13

for.cond36:                                       ; preds = %for.cond20, %for.body39
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %for.body39 ], [ 1, %for.cond20 ]
  %exitcond80 = icmp eq i64 %indvars.iv76, %wide.trip.count
  br i1 %exitcond80, label %for.inc52, label %for.body39

for.body39:                                       ; preds = %for.cond36
  %arrayidx43 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv81, i64 %indvars.iv76
  %11 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %sub44 = sub nsw i32 %11, %min.0
  store i32 %sub44, ptr %arrayidx43, align 4, !tbaa !5
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  br label %for.cond36, !llvm.loop !14

for.inc52:                                        ; preds = %for.cond36
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  br label %for.cond16, !llvm.loop !15

for.cond55:                                       ; preds = %for.cond55.preheader, %for.inc95
  %indvars.iv99 = phi i64 [ 1, %for.cond55.preheader ], [ %indvars.iv.next100, %for.inc95 ]
  %exitcond104 = icmp eq i64 %indvars.iv99, %wide.trip.count87
  br i1 %exitcond104, label %for.end97, label %for.cond59

for.cond59:                                       ; preds = %for.cond55, %for.body62
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %for.body62 ], [ 1, %for.cond55 ]
  %min.1 = phi i32 [ %min.1., %for.body62 ], [ 100000, %for.cond55 ]
  %exitcond93 = icmp eq i64 %indvars.iv89, %wide.trip.count92
  br i1 %exitcond93, label %for.cond79, label %for.body62

for.body62:                                       ; preds = %for.cond59
  %arrayidx66 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv89, i64 %indvars.iv99
  %12 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  %min.1. = call i32 @llvm.smin.i32(i32 %min.1, i32 %12)
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  br label %for.cond59, !llvm.loop !16

for.cond79:                                       ; preds = %for.cond59, %for.body82
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %for.body82 ], [ 1, %for.cond59 ]
  %exitcond98 = icmp eq i64 %indvars.iv94, %wide.trip.count92
  br i1 %exitcond98, label %for.inc95, label %for.body82

for.body82:                                       ; preds = %for.cond79
  %arrayidx86 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv94, i64 %indvars.iv99
  %13 = load i32, ptr %arrayidx86, align 4, !tbaa !5
  %sub87 = sub nsw i32 %13, %min.1
  store i32 %sub87, ptr %arrayidx86, align 4, !tbaa !5
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %for.cond79, !llvm.loop !17

for.inc95:                                        ; preds = %for.cond79
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  br label %for.cond55, !llvm.loop !18

for.end97:                                        ; preds = %for.cond55
  %14 = load i32, ptr %arrayidx99, align 8, !tbaa !5
  %wide.trip.count110 = zext i32 %8 to i64
  br label %for.cond100

for.cond100:                                      ; preds = %for.body103, %for.end97
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %for.body103 ], [ 3, %for.end97 ]
  %exitcond111 = icmp eq i64 %indvars.iv105, %wide.trip.count110
  br i1 %exitcond111, label %for.cond121.preheader, label %for.body103

for.cond121.preheader:                            ; preds = %for.cond100
  %wide.trip.count116 = zext i32 %indvars.iv74 to i64
  br label %for.cond121

for.body103:                                      ; preds = %for.cond100
  %arrayidx106 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv105, i64 1
  %15 = load i32, ptr %arrayidx106, align 4, !tbaa !5
  %16 = add nsw i64 %indvars.iv105, -1
  %arrayidx110 = getelementptr inbounds [102 x [102 x i32]], ptr %a, i64 0, i64 %16, i64 1
  store i32 %15, ptr %arrayidx110, align 4, !tbaa !5
  %arrayidx113 = getelementptr inbounds nuw [102 x i32], ptr %arrayidx111, i64 0, i64 %indvars.iv105
  %17 = load i32, ptr %arrayidx113, align 4, !tbaa !5
  %arrayidx117 = getelementptr inbounds [102 x i32], ptr %arrayidx111, i64 0, i64 %16
  store i32 %17, ptr %arrayidx117, align 4, !tbaa !5
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  br label %for.cond100, !llvm.loop !19

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc142
  %indvars.iv118 = phi i64 [ 3, %for.cond121.preheader ], [ %indvars.iv.next119, %for.inc142 ]
  %exitcond124 = icmp eq i64 %indvars.iv118, %wide.trip.count110
  br i1 %exitcond124, label %for.inc145, label %for.cond125.preheader

for.cond125.preheader:                            ; preds = %for.cond121
  %18 = add nsw i64 %indvars.iv118, -1
  br label %for.cond125

for.cond125:                                      ; preds = %for.cond125.preheader, %for.body128
  %indvars.iv112 = phi i64 [ 3, %for.cond125.preheader ], [ %indvars.iv.next113, %for.body128 ]
  %exitcond117 = icmp eq i64 %indvars.iv112, %wide.trip.count116
  br i1 %exitcond117, label %for.inc142, label %for.body128

for.body128:                                      ; preds = %for.cond125
  %arrayidx132 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv118, i64 %indvars.iv112
  %19 = load i32, ptr %arrayidx132, align 4, !tbaa !5
  %20 = add nsw i64 %indvars.iv112, -1
  %arrayidx138 = getelementptr inbounds [102 x [102 x i32]], ptr %a, i64 0, i64 %18, i64 %20
  store i32 %19, ptr %arrayidx138, align 4, !tbaa !5
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  br label %for.cond125, !llvm.loop !20

for.inc142:                                       ; preds = %for.cond125
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  br label %for.cond121, !llvm.loop !21

for.inc145:                                       ; preds = %for.cond121
  %add = add nsw i32 %14, %sum.0
  %inc146 = add nuw i32 %t.0, 1
  %indvars.iv.next75 = add i32 %indvars.iv74, -1
  %indvars.iv.next86 = add i32 %indvars.iv85, -1
  br label %for.cond13, !llvm.loop !22

for.end147:                                       ; preds = %for.cond13
  %call148 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %vtable.i = load ptr, ptr %call148, align 8, !tbaa !23
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call148, i64 %vbase.offset.i
  %call.i65 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call148, i8 noundef signext %call.i65)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc151 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !25

for.end152:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 41616, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
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
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !8, i64 0}
!25 = distinct !{!25, !10, !11}
