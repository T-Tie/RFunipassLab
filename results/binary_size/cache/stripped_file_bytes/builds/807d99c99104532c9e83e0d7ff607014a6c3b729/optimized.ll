; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnuturm82.cpp"
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
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %arrayidx104 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup17, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc160, %for.cond.cleanup17 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %k.0, %0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond.cleanup7, %for.body
  %1 = phi i32 [ %4, %for.cond.cleanup7 ], [ %0, %for.body ]
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.cond.cleanup7 ], [ 0, %for.body ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv57, %2
  br i1 %cmp2, label %for.cond5, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond1
  %3 = zext i32 %1 to i64
  br label %for.cond15

for.cond5:                                        ; preds = %for.cond1, %for.body8
  %4 = phi i32 [ %.pre, %for.body8 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.cond1 ]
  %5 = sext i32 %4 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %for.cond1, !llvm.loop !9

for.body8:                                        ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv57, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !12

for.cond15:                                       ; preds = %for.cond15.preheader, %for.cond.cleanup133
  %indvars.iv109 = phi i64 [ %3, %for.cond15.preheader ], [ %indvars.iv.next110, %for.cond.cleanup133 ]
  %ans.0 = phi i32 [ 0, %for.cond15.preheader ], [ %add, %for.cond.cleanup133 ]
  %6 = trunc nuw i64 %indvars.iv109 to i32
  %cmp16 = icmp sgt i32 %6, 1
  br i1 %cmp16, label %for.cond20, label %for.cond.cleanup17

for.cond.cleanup17:                               ; preds = %for.cond15
  %call157 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %ans.0)
  %vtable.i = load ptr, ptr %call157, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call157, i64 %vbase.offset.i
  %call.i55 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call157, i8 noundef signext %call.i55)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
  %inc160 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !15

for.cond20:                                       ; preds = %for.cond15, %for.cond.cleanup47
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.cond.cleanup47 ], [ 0, %for.cond15 ]
  %exitcond72.not = icmp eq i64 %indvars.iv68, %indvars.iv109
  br i1 %exitcond72.not, label %for.cond60, label %for.body23

for.body23:                                       ; preds = %for.cond20
  %arrayidx25 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv68
  %7 = load i32, ptr %arrayidx25, align 16, !tbaa !5
  br label %for.cond28

for.cond28:                                       ; preds = %for.body31, %for.body23
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.body31 ], [ 1, %for.body23 ]
  %min.0 = phi i32 [ %spec.select, %for.body31 ], [ %7, %for.body23 ]
  %exitcond.not = icmp eq i64 %indvars.iv60, %indvars.iv109
  br i1 %exitcond.not, label %for.cond45, label %for.body31

for.body31:                                       ; preds = %for.cond28
  %arrayidx35 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv68, i64 %indvars.iv60
  %8 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %min.0, i32 %8)
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond28, !llvm.loop !16

for.cond45:                                       ; preds = %for.cond28, %for.body48
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %for.body48 ], [ 0, %for.cond28 ]
  %exitcond67.not = icmp eq i64 %indvars.iv63, %indvars.iv109
  br i1 %exitcond67.not, label %for.cond.cleanup47, label %for.body48

for.cond.cleanup47:                               ; preds = %for.cond45
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  br label %for.cond20, !llvm.loop !17

for.body48:                                       ; preds = %for.cond45
  %arrayidx52 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv68, i64 %indvars.iv63
  %9 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %sub = sub nsw i32 %9, %min.0
  store i32 %sub, ptr %arrayidx52, align 4, !tbaa !5
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br label %for.cond45, !llvm.loop !18

for.cond60:                                       ; preds = %for.cond20, %for.cond.cleanup90
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.cond.cleanup90 ], [ 0, %for.cond20 ]
  %exitcond87.not = icmp eq i64 %indvars.iv83, %indvars.iv109
  br i1 %exitcond87.not, label %for.cond.cleanup62, label %for.body63

for.cond.cleanup62:                               ; preds = %for.cond60
  %10 = load i32, ptr %arrayidx104, align 4, !tbaa !5
  br label %for.cond106

for.body63:                                       ; preds = %for.cond60
  %arrayidx67 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv83
  %11 = load i32, ptr %arrayidx67, align 4, !tbaa !5
  br label %for.cond69

for.cond69:                                       ; preds = %for.body72, %for.body63
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %for.body72 ], [ 1, %for.body63 ]
  %min64.0 = phi i32 [ %spec.select54, %for.body72 ], [ %11, %for.body63 ]
  %exitcond77.not = icmp eq i64 %indvars.iv73, %indvars.iv109
  br i1 %exitcond77.not, label %for.cond88, label %for.body72

for.body72:                                       ; preds = %for.cond69
  %arrayidx76 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv73, i64 %indvars.iv83
  %12 = load i32, ptr %arrayidx76, align 4, !tbaa !5
  %spec.select54 = call i32 @llvm.smin.i32(i32 %min64.0, i32 %12)
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  br label %for.cond69, !llvm.loop !19

for.cond88:                                       ; preds = %for.cond69, %for.body91
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.body91 ], [ 0, %for.cond69 ]
  %exitcond82.not = icmp eq i64 %indvars.iv78, %indvars.iv109
  br i1 %exitcond82.not, label %for.cond.cleanup90, label %for.body91

for.cond.cleanup90:                               ; preds = %for.cond88
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  br label %for.cond60, !llvm.loop !20

for.body91:                                       ; preds = %for.cond88
  %arrayidx95 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv78, i64 %indvars.iv83
  %13 = load i32, ptr %arrayidx95, align 4, !tbaa !5
  %sub96 = sub nsw i32 %13, %min64.0
  store i32 %sub96, ptr %arrayidx95, align 4, !tbaa !5
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond88, !llvm.loop !21

for.cond106:                                      ; preds = %for.cond111, %for.cond.cleanup62
  %indvars.iv93 = phi i64 [ 1, %for.cond.cleanup62 ], [ %indvars.iv.next94, %for.cond111 ]
  %exitcond97.not = icmp eq i64 %indvars.iv93, %indvars.iv109
  br i1 %exitcond97.not, label %for.cond131, label %for.cond111.preheader

for.cond111.preheader:                            ; preds = %for.cond106
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  br label %for.cond111

for.cond111:                                      ; preds = %for.cond111.preheader, %for.body114
  %indvars.iv88 = phi i64 [ 0, %for.cond111.preheader ], [ %indvars.iv.next89, %for.body114 ]
  %exitcond92.not = icmp eq i64 %indvars.iv88, %indvars.iv109
  br i1 %exitcond92.not, label %for.cond106, label %for.body114, !llvm.loop !22

for.body114:                                      ; preds = %for.cond111
  %arrayidx119 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next94, i64 %indvars.iv88
  %14 = load i32, ptr %arrayidx119, align 4, !tbaa !5
  %arrayidx123 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv93, i64 %indvars.iv88
  store i32 %14, ptr %arrayidx123, align 4, !tbaa !5
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %for.cond111, !llvm.loop !23

for.cond131:                                      ; preds = %for.cond136, %for.cond106
  %indvars.iv103 = phi i64 [ 1, %for.cond106 ], [ %indvars.iv.next104, %for.cond136 ]
  %exitcond107.not = icmp eq i64 %indvars.iv103, %indvars.iv109
  br i1 %exitcond107.not, label %for.cond.cleanup133, label %for.cond136.preheader

for.cond136.preheader:                            ; preds = %for.cond131
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  br label %for.cond136

for.cond.cleanup133:                              ; preds = %for.cond131
  %add = add nsw i32 %10, %ans.0
  %indvars.iv.next110 = add nsw i64 %indvars.iv109, -1
  br label %for.cond15, !llvm.loop !24

for.cond136:                                      ; preds = %for.cond136.preheader, %for.body139
  %indvars.iv98 = phi i64 [ 0, %for.cond136.preheader ], [ %indvars.iv.next99, %for.body139 ]
  %exitcond102.not = icmp eq i64 %indvars.iv98, %indvars.iv109
  br i1 %exitcond102.not, label %for.cond131, label %for.body139, !llvm.loop !25

for.body139:                                      ; preds = %for.cond136
  %arrayidx144 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv98, i64 %indvars.iv.next104
  %15 = load i32, ptr %arrayidx144, align 4, !tbaa !5
  %arrayidx148 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv98, i64 %indvars.iv103
  store i32 %15, ptr %arrayidx148, align 4, !tbaa !5
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %for.cond136, !llvm.loop !26
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
