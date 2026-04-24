; ModuleID = '<stdin>'
source_filename = "/tmp/tmprwosuzdr.cpp"
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
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %arrayidx109 = getelementptr inbounds nuw i8, ptr %a, i64 404
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  br label %for.cond

for.cond:                                         ; preds = %while.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc166, %while.end ]
  %exitcond114.not = icmp eq i32 %i.0, %smax
  br i1 %exitcond114.not, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0

for.body:                                         ; preds = %for.cond
  store i32 %0, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond.cleanup7, %for.body
  %1 = phi i32 [ %6, %for.cond.cleanup7 ], [ %0, %for.body ]
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.cond.cleanup7 ], [ 0, %for.body ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv52, %2
  br i1 %cmp2, label %for.cond5, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.cond1
  %3 = add i32 %1, -1
  %4 = zext i32 %3 to i64
  %5 = zext i32 %1 to i64
  br label %while.cond

for.cond5:                                        ; preds = %for.cond1, %for.body8
  %6 = phi i32 [ %.pre, %for.body8 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.cond1 ]
  %7 = sext i32 %6 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %7
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  br label %for.cond1, !llvm.loop !9

for.body8:                                        ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv52, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !12

while.cond:                                       ; preds = %while.cond.preheader, %for.cond.cleanup139
  %indvars.iv109 = phi i64 [ %5, %while.cond.preheader ], [ %indvars.iv.next110, %for.cond.cleanup139 ]
  %indvars.iv106 = phi i64 [ %4, %while.cond.preheader ], [ %indvars.iv.next107, %for.cond.cleanup139 ]
  %sum.0 = phi i32 [ 0, %while.cond.preheader ], [ %add, %for.cond.cleanup139 ]
  %8 = trunc nuw i64 %indvars.iv109 to i32
  %cmp15 = icmp sgt i32 %8, 1
  br i1 %cmp15, label %for.cond17, label %while.end

for.cond17:                                       ; preds = %while.cond, %for.cond.cleanup44
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %for.cond.cleanup44 ], [ 0, %while.cond ]
  %exitcond67.not = icmp eq i64 %indvars.iv63, %indvars.iv109
  br i1 %exitcond67.not, label %for.cond61, label %for.body20

for.body20:                                       ; preds = %for.cond17
  %arrayidx22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv63
  %9 = load i32, ptr %arrayidx22, align 16, !tbaa !5
  br label %for.cond25

for.cond25:                                       ; preds = %for.body28, %for.body20
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.body28 ], [ 0, %for.body20 ]
  %min.0 = phi i32 [ %spec.select, %for.body28 ], [ %9, %for.body20 ]
  %exitcond.not = icmp eq i64 %indvars.iv55, %indvars.iv109
  br i1 %exitcond.not, label %for.cond42, label %for.body28

for.body28:                                       ; preds = %for.cond25
  %arrayidx32 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv63, i64 %indvars.iv55
  %10 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %10, i32 %min.0)
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  br label %for.cond25, !llvm.loop !13

for.cond42:                                       ; preds = %for.cond25, %for.body45
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.body45 ], [ 0, %for.cond25 ]
  %exitcond62.not = icmp eq i64 %indvars.iv58, %indvars.iv109
  br i1 %exitcond62.not, label %for.cond.cleanup44, label %for.body45

for.cond.cleanup44:                               ; preds = %for.cond42
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br label %for.cond17, !llvm.loop !14

for.body45:                                       ; preds = %for.cond42
  %arrayidx49 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv63, i64 %indvars.iv58
  %11 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %sub = sub nsw i32 %11, %min.0
  store i32 %sub, ptr %arrayidx49, align 4, !tbaa !5
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond42, !llvm.loop !15

for.cond61:                                       ; preds = %for.cond17, %for.cond.cleanup91
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.cond.cleanup91 ], [ 0, %for.cond17 ]
  %exitcond82.not = icmp eq i64 %indvars.iv78, %indvars.iv109
  br i1 %exitcond82.not, label %for.cond.cleanup63, label %for.body64

for.cond.cleanup63:                               ; preds = %for.cond61
  %12 = load i32, ptr %arrayidx109, align 4, !tbaa !5
  br label %for.cond111

for.body64:                                       ; preds = %for.cond61
  %arrayidx68 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv78
  %13 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  br label %for.cond70

for.cond70:                                       ; preds = %for.body73, %for.body64
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.body73 ], [ 0, %for.body64 ]
  %min65.0 = phi i32 [ %spec.select49, %for.body73 ], [ %13, %for.body64 ]
  %exitcond72.not = icmp eq i64 %indvars.iv68, %indvars.iv109
  br i1 %exitcond72.not, label %for.cond89, label %for.body73

for.body73:                                       ; preds = %for.cond70
  %arrayidx77 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv68, i64 %indvars.iv78
  %14 = load i32, ptr %arrayidx77, align 4, !tbaa !5
  %spec.select49 = call i32 @llvm.smin.i32(i32 %14, i32 %min65.0)
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  br label %for.cond70, !llvm.loop !16

for.cond89:                                       ; preds = %for.cond70, %for.body92
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %for.body92 ], [ 0, %for.cond70 ]
  %exitcond77.not = icmp eq i64 %indvars.iv73, %indvars.iv109
  br i1 %exitcond77.not, label %for.cond.cleanup91, label %for.body92

for.cond.cleanup91:                               ; preds = %for.cond89
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond61, !llvm.loop !17

for.body92:                                       ; preds = %for.cond89
  %arrayidx96 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv73, i64 %indvars.iv78
  %15 = load i32, ptr %arrayidx96, align 4, !tbaa !5
  %sub97 = sub nsw i32 %15, %min65.0
  store i32 %sub97, ptr %arrayidx96, align 4, !tbaa !5
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  br label %for.cond89, !llvm.loop !18

for.cond111:                                      ; preds = %for.cond.cleanup119, %for.cond.cleanup63
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %for.cond.cleanup119 ], [ 0, %for.cond.cleanup63 ]
  %exitcond95.not = icmp eq i64 %indvars.iv91, %indvars.iv109
  br i1 %exitcond95.not, label %for.cond137, label %for.cond116

for.cond116:                                      ; preds = %for.cond111, %for.body120
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.body120 ], [ 1, %for.cond111 ]
  %exitcond90.not = icmp eq i64 %indvars.iv83, %indvars.iv106
  br i1 %exitcond90.not, label %for.cond.cleanup119, label %for.body120

for.cond.cleanup119:                              ; preds = %for.cond116
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  br label %for.cond111, !llvm.loop !19

for.body120:                                      ; preds = %for.cond116
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  %arrayidx125 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv91, i64 %indvars.iv.next84
  %16 = load i32, ptr %arrayidx125, align 4, !tbaa !5
  %arrayidx129 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv91, i64 %indvars.iv83
  store i32 %16, ptr %arrayidx129, align 4, !tbaa !5
  br label %for.cond116, !llvm.loop !20

for.cond137:                                      ; preds = %for.cond111, %for.cond.cleanup145
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %for.cond.cleanup145 ], [ 0, %for.cond111 ]
  %exitcond105.not = icmp eq i64 %indvars.iv101, %indvars.iv109
  br i1 %exitcond105.not, label %for.cond.cleanup139, label %for.cond142

for.cond.cleanup139:                              ; preds = %for.cond137
  %add = add nsw i32 %12, %sum.0
  %indvars.iv.next110 = add nsw i64 %indvars.iv109, -1
  %indvars112 = trunc i64 %indvars.iv.next110 to i32
  store i32 %indvars112, ptr %n, align 4, !tbaa !5
  %indvars.iv.next107 = add nsw i64 %indvars.iv106, -1
  br label %while.cond, !llvm.loop !21

for.cond142:                                      ; preds = %for.cond137, %for.body146
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %for.body146 ], [ 1, %for.cond137 ]
  %exitcond100.not = icmp eq i64 %indvars.iv96, %indvars.iv106
  br i1 %exitcond100.not, label %for.cond.cleanup145, label %for.body146

for.cond.cleanup145:                              ; preds = %for.cond142
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  br label %for.cond137, !llvm.loop !22

for.body146:                                      ; preds = %for.cond142
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  %arrayidx151 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next97, i64 %indvars.iv101
  %17 = load i32, ptr %arrayidx151, align 4, !tbaa !5
  %arrayidx155 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv96, i64 %indvars.iv101
  store i32 %17, ptr %arrayidx155, align 4, !tbaa !5
  br label %for.cond142, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  %call163 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %vtable.i = load ptr, ptr %call163, align 8, !tbaa !24
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call163, i64 %vbase.offset.i
  %call.i50 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call163, i8 noundef signext %call.i50)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
  %inc166 = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !26
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
