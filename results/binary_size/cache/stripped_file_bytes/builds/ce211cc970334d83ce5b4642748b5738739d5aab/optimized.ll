; ModuleID = '<stdin>'
source_filename = "/tmp/tmp75jfmpv6.cpp"
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
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %add.ptr105 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %for.end158, %entry
  %m.0 = phi i32 [ 1, %entry ], [ %inc162, %for.end158 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %m.0, %0
  br i1 %cmp.not, label %for.end163, label %for.body

for.body:                                         ; preds = %for.cond
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) %a, i8 0, i64 40000, i1 false)
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %1 = phi i32 [ %4, %for.inc12 ], [ %0, %for.body ]
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.inc12 ], [ 0, %for.body ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv65, %2
  br i1 %cmp2, label %for.cond4.preheader, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond1
  %smax110 = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %3 = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %smax124 = add nsw i32 %3, -1
  %wide.trip.count111 = zext nneg i32 %smax110 to i64
  %wide.trip.count104 = zext i32 %1 to i64
  %wide.trip.count117 = zext i32 %1 to i64
  br label %for.cond15

for.cond4.preheader:                              ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv65
  br label %for.cond4

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %4 = phi i32 [ %1, %for.cond4.preheader ], [ %.pre, %for.body6 ]
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.body6 ]
  %5 = sext i32 %4 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp5, label %for.body6, label %for.inc12

for.body6:                                        ; preds = %for.cond4
  %add.ptr10 = getelementptr inbounds nuw i32, ptr %add.ptr, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc12:                                        ; preds = %for.cond4
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  br label %for.cond1, !llvm.loop !12

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc156
  %indvars.iv72 = phi i32 [ %1, %for.cond15.preheader ], [ %indvars.iv.next73, %for.inc156 ]
  %k.0 = phi i32 [ 0, %for.cond15.preheader ], [ %inc157, %for.inc156 ]
  %sum.0 = phi i32 [ 0, %for.cond15.preheader ], [ %add, %for.inc156 ]
  %exitcond125.not = icmp eq i32 %k.0, %smax124
  br i1 %exitcond125.not, label %for.end158, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.cond15
  %smax97 = call i32 @llvm.smax.i32(i32 %indvars.iv72, i32 0)
  %wide.trip.count82 = zext nneg i32 %smax97 to i64
  %wide.trip.count = zext i32 %indvars.iv72 to i64
  br label %for.cond18

for.cond18:                                       ; preds = %for.cond18.preheader, %for.inc56
  %indvars.iv79 = phi i64 [ 0, %for.cond18.preheader ], [ %indvars.iv.next80, %for.inc56 ]
  %exitcond83.not = icmp eq i64 %indvars.iv79, %wide.trip.count82
  br i1 %exitcond83.not, label %for.cond59.preheader, label %for.cond22.preheader

for.cond59.preheader:                             ; preds = %for.cond18
  %wide.trip.count87 = zext i32 %indvars.iv72 to i64
  br label %for.cond59

for.cond22.preheader:                             ; preds = %for.cond18
  %add.ptr28 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv79
  br label %for.cond22

for.cond22:                                       ; preds = %for.cond22.preheader, %for.body25
  %indvars.iv68 = phi i64 [ 0, %for.cond22.preheader ], [ %indvars.iv.next69, %for.body25 ]
  %min.0 = phi i32 [ 100000, %for.cond22.preheader ], [ %spec.select, %for.body25 ]
  %exitcond.not = icmp eq i64 %indvars.iv68, %wide.trip.count
  br i1 %exitcond.not, label %for.cond42, label %for.body25

for.body25:                                       ; preds = %for.cond22
  %add.ptr31 = getelementptr inbounds nuw i32, ptr %add.ptr28, i64 %indvars.iv68
  %6 = load i32, ptr %add.ptr31, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %6, i32 %min.0)
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  br label %for.cond22, !llvm.loop !13

for.cond42:                                       ; preds = %for.cond22, %for.body45
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %for.body45 ], [ 0, %for.cond22 ]
  %exitcond78.not = icmp eq i64 %indvars.iv74, %wide.trip.count
  br i1 %exitcond78.not, label %for.inc56, label %for.body45

for.body45:                                       ; preds = %for.cond42
  %add.ptr51 = getelementptr inbounds nuw i32, ptr %add.ptr28, i64 %indvars.iv74
  %7 = load i32, ptr %add.ptr51, align 4, !tbaa !5
  %sub52 = sub nsw i32 %7, %min.0
  store i32 %sub52, ptr %add.ptr51, align 4, !tbaa !5
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %for.cond42, !llvm.loop !14

for.inc56:                                        ; preds = %for.cond42
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  br label %for.cond18, !llvm.loop !15

for.cond59:                                       ; preds = %for.cond59.preheader, %for.inc99
  %indvars.iv94 = phi i64 [ 0, %for.cond59.preheader ], [ %indvars.iv.next95, %for.inc99 ]
  %exitcond99.not = icmp eq i64 %indvars.iv94, %wide.trip.count82
  br i1 %exitcond99.not, label %for.end101, label %for.cond63.preheader

for.cond63.preheader:                             ; preds = %for.cond59
  %invariant.gep = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv94
  br label %for.cond63

for.cond63:                                       ; preds = %for.cond63.preheader, %for.body66
  %indvars.iv84 = phi i64 [ 0, %for.cond63.preheader ], [ %indvars.iv.next85, %for.body66 ]
  %min.2 = phi i32 [ 100000, %for.cond63.preheader ], [ %spec.select58, %for.body66 ]
  %exitcond88.not = icmp eq i64 %indvars.iv84, %wide.trip.count87
  br i1 %exitcond88.not, label %for.cond85, label %for.body66

for.body66:                                       ; preds = %for.cond63
  %gep = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %indvars.iv84
  %8 = load i32, ptr %gep, align 4, !tbaa !5
  %spec.select58 = call i32 @llvm.smin.i32(i32 %8, i32 %min.2)
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  br label %for.cond63, !llvm.loop !16

for.cond85:                                       ; preds = %for.cond63, %for.body88
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %for.body88 ], [ 0, %for.cond63 ]
  %exitcond93.not = icmp eq i64 %indvars.iv89, %wide.trip.count87
  br i1 %exitcond93.not, label %for.inc99, label %for.body88

for.body88:                                       ; preds = %for.cond85
  %gep61 = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %indvars.iv89
  %9 = load i32, ptr %gep61, align 4, !tbaa !5
  %sub95 = sub nsw i32 %9, %min.2
  store i32 %sub95, ptr %gep61, align 4, !tbaa !5
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  br label %for.cond85, !llvm.loop !17

for.inc99:                                        ; preds = %for.cond85
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %for.cond59, !llvm.loop !18

for.end101:                                       ; preds = %for.cond59
  %10 = load i32, ptr %add.ptr105, align 4, !tbaa !5
  br label %for.cond106

for.cond106:                                      ; preds = %for.inc128, %for.end101
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %for.inc128 ], [ 1, %for.end101 ]
  %exitcond112.not = icmp eq i64 %indvars.iv106, %wide.trip.count111
  br i1 %exitcond112.not, label %for.cond131, label %for.cond109.preheader

for.cond109.preheader:                            ; preds = %for.cond106
  %add.ptr114 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv106
  %add.ptr115 = getelementptr inbounds nuw i8, ptr %add.ptr114, i64 400
  br label %for.cond109

for.cond109:                                      ; preds = %for.cond109.preheader, %for.body111
  %indvars.iv100 = phi i64 [ 0, %for.cond109.preheader ], [ %indvars.iv.next101, %for.body111 ]
  %exitcond105.not = icmp eq i64 %indvars.iv100, %wide.trip.count104
  br i1 %exitcond105.not, label %for.inc128, label %for.body111

for.body111:                                      ; preds = %for.cond109
  %add.ptr118 = getelementptr inbounds nuw i32, ptr %add.ptr115, i64 %indvars.iv100
  %11 = load i32, ptr %add.ptr118, align 4, !tbaa !5
  %add.ptr124 = getelementptr inbounds nuw i32, ptr %add.ptr114, i64 %indvars.iv100
  store i32 %11, ptr %add.ptr124, align 4, !tbaa !5
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  br label %for.cond109, !llvm.loop !19

for.inc128:                                       ; preds = %for.cond109
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %for.cond106, !llvm.loop !20

for.cond131:                                      ; preds = %for.cond106, %for.inc153
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.inc153 ], [ 1, %for.cond106 ]
  %exitcond123.not = icmp eq i64 %indvars.iv119, %wide.trip.count111
  br i1 %exitcond123.not, label %for.inc156, label %for.cond134.preheader

for.cond134.preheader:                            ; preds = %for.cond131
  %invariant.gep62 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv119
  br label %for.cond134

for.cond134:                                      ; preds = %for.cond134.preheader, %for.body136
  %indvars.iv113 = phi i64 [ 0, %for.cond134.preheader ], [ %indvars.iv.next114, %for.body136 ]
  %exitcond118.not = icmp eq i64 %indvars.iv113, %wide.trip.count117
  br i1 %exitcond118.not, label %for.inc153, label %for.body136

for.body136:                                      ; preds = %for.cond134
  %gep63 = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep62, i64 %indvars.iv113
  %add.ptr143 = getelementptr inbounds nuw i8, ptr %gep63, i64 4
  %12 = load i32, ptr %add.ptr143, align 4, !tbaa !5
  store i32 %12, ptr %gep63, align 4, !tbaa !5
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  br label %for.cond134, !llvm.loop !21

for.inc153:                                       ; preds = %for.cond134
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  br label %for.cond131, !llvm.loop !22

for.inc156:                                       ; preds = %for.cond131
  %add = add nsw i32 %10, %sum.0
  %inc157 = add nuw i32 %k.0, 1
  %indvars.iv.next73 = add i32 %indvars.iv72, -1
  br label %for.cond15, !llvm.loop !23

for.end158:                                       ; preds = %for.cond15
  %call159 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %vtable.i = load ptr, ptr %call159, align 8, !tbaa !24
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call159, i64 %vbase.offset.i
  %call.i59 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call159, i8 noundef signext %call.i59)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc162 = add nuw nsw i32 %m.0, 1
  br label %for.cond, !llvm.loop !26

for.end163:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
