; ModuleID = '<stdin>'
source_filename = "/tmp/tmpw6x4t8wy.cpp"
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
@n = dso_local global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@sum = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  br label %for.cond

for.cond:                                         ; preds = %for.end12, %entry
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.cond1, label %for.end17

for.cond1:                                        ; preds = %for.cond, %for.end
  %1 = phi i32 [ %2, %for.end ], [ %0, %for.cond ]
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.end ], [ 0, %for.cond ]
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %for.cond4, label %for.end12

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %2 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %3 = sext i32 %2 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv5, i64 %indvars.iv
  %call9 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  br label %for.cond1

for.end12:                                        ; preds = %for.cond1
  store i32 %1, ptr @b, align 4, !tbaa !5
  tail call void @_Z6rezerov() #9
  %4 = load i32, ptr @sum, align 4, !tbaa !5
  %call13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %4)
  %call14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call13, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr @sum, align 4, !tbaa !5
  br label %for.cond

for.end17:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_Z6rezerov() local_unnamed_addr #3 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.end66, %entry
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %for.cond1.preheader, label %for.end70

for.cond1.preheader:                              ; preds = %for.cond
  %1 = load i32, ptr @b, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count42 = zext nneg i32 %smax to i64
  %wide.trip.count32 = zext i32 %1 to i64
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.preheader, %for.end27
  %indvars.iv39 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next40, %for.end27 ]
  %exitcond43.not = icmp eq i64 %indvars.iv39, %wide.trip.count42
  br i1 %exitcond43.not, label %for.cond31.preheader, label %for.body3

for.cond31.preheader:                             ; preds = %for.cond1
  %cmp32 = icmp sgt i32 %1, 0
  br i1 %cmp32, label %for.cond31.preheader.split, label %for.end66

for.cond31.preheader.split:                       ; preds = %for.cond31.preheader
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %for.cond31

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv39
  %2 = load i32, ptr %arrayidx, align 16, !tbaa !5, !invariant.load !12
  br label %for.cond5

for.cond5:                                        ; preds = %for.body7, %for.body3
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.body7 ], [ 0, %for.body3 ]
  %min.0 = phi i32 [ %spec.select, %for.body7 ], [ %2, %for.body3 ]
  %exitcond33.not = icmp eq i64 %indvars.iv29, %wide.trip.count32
  br i1 %exitcond33.not, label %for.cond17.preheader, label %for.body7

for.cond17.preheader:                             ; preds = %for.cond5
  br label %for.cond17

for.body7:                                        ; preds = %for.cond5
  %arrayidx11 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv39, i64 %indvars.iv29
  %3 = load i32, ptr %arrayidx11, align 4, !tbaa !5, !invariant.load !12
  %spec.select = tail call i32 @llvm.smin.i32(i32 %3, i32 %min.0)
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond5, !llvm.loop !13

for.cond17:                                       ; preds = %for.cond17.preheader, %for.body19
  %indvars.iv34 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next35, %for.body19 ]
  %exitcond38.not = icmp eq i64 %indvars.iv34, %wide.trip.count32
  br i1 %exitcond38.not, label %for.end27, label %for.body19

for.body19:                                       ; preds = %for.cond17
  %arrayidx23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv39, i64 %indvars.iv34
  %4 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !12
  %sub24 = sub nsw i32 %4, %min.0
  store i32 %sub24, ptr %arrayidx23, align 4, !tbaa !5
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond17, !llvm.loop !14

for.end27:                                        ; preds = %for.cond17
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond1, !llvm.loop !15

for.cond31:                                       ; preds = %for.cond31.preheader.split, %for.end63
  %indvars.iv26 = phi i64 [ 0, %for.cond31.preheader.split ], [ %indvars.iv.next27, %for.end63 ]
  %arrayidx35 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv26
  %5 = load i32, ptr %arrayidx35, align 4, !tbaa !5, !invariant.load !12
  br label %for.cond36

for.cond36:                                       ; preds = %for.body38, %for.cond31
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body38 ], [ 0, %for.cond31 ]
  %min.2 = phi i32 [ %spec.select17, %for.body38 ], [ %5, %for.cond31 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond53.preheader, label %for.body38

for.cond53.preheader:                             ; preds = %for.cond36
  br label %for.cond53

for.body38:                                       ; preds = %for.cond36
  %arrayidx42 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv, i64 %indvars.iv26
  %6 = load i32, ptr %arrayidx42, align 4, !tbaa !5, !invariant.load !12
  %spec.select17 = tail call i32 @llvm.smin.i32(i32 %6, i32 %min.2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond36, !llvm.loop !16

for.cond53:                                       ; preds = %for.cond53.preheader, %for.body55
  %indvars.iv20 = phi i64 [ 0, %for.cond53.preheader ], [ %indvars.iv.next21, %for.body55 ]
  %exitcond25.not = icmp eq i64 %indvars.iv20, %wide.trip.count
  br i1 %exitcond25.not, label %for.end63, label %for.body55

for.body55:                                       ; preds = %for.cond53
  %arrayidx59 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv20, i64 %indvars.iv26
  %7 = load i32, ptr %arrayidx59, align 4, !tbaa !5, !invariant.load !12
  %sub60 = sub nsw i32 %7, %min.2
  store i32 %sub60, ptr %arrayidx59, align 4, !tbaa !5
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond53, !llvm.loop !17

for.end63:                                        ; preds = %for.cond53
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond31

for.end66:                                        ; preds = %for.cond31.preheader
  tail call void @_Z4delev() #10
  %8 = load i32, ptr @b, align 4, !tbaa !5
  %sub67 = add nsw i32 %8, -1
  store i32 %sub67, ptr @b, align 4, !tbaa !5
  br label %for.cond

for.end70:                                        ; preds = %for.cond
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z4delev() local_unnamed_addr #6 {
entry:
  %0 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  %1 = load i32, ptr @sum, align 4, !tbaa !5
  %add = add nsw i32 %1, %0
  store i32 %add, ptr @sum, align 4, !tbaa !5
  %2 = load i32, ptr @b, align 4, !tbaa !5
  %sub = add i32 %2, -1
  %smax = call i32 @llvm.smax.i32(i32 %sub, i32 1)
  %smax12 = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %wide.trip.count13 = zext nneg i32 %smax12 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %for.end ], [ 0, %entry ]
  %exitcond14.not = icmp eq i64 %indvars.iv9, %wide.trip.count13
  br i1 %exitcond14.not, label %for.cond14.preheader, label %for.cond1

for.cond14.preheader:                             ; preds = %for.cond
  %cmp16 = icmp sgt i32 %2, 1
  br i1 %cmp16, label %for.cond14.preheader7, label %for.end36

for.cond14.preheader7:                            ; preds = %for.cond14.preheader
  %wide.trip.count18 = zext i32 %sub to i64
  br label %for.cond14

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 1, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv9, i64 %indvars.iv.next
  %3 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !12
  %arrayidx10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv9, i64 %indvars.iv
  store i32 %3, ptr %arrayidx10, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !18

for.end:                                          ; preds = %for.cond1
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %for.cond, !llvm.loop !19

for.cond14:                                       ; preds = %for.cond14.preheader7, %for.end33
  %indvars.iv20 = phi i64 [ 0, %for.cond14.preheader7 ], [ %indvars.iv.next21, %for.end33 ]
  br label %for.cond18

for.cond18:                                       ; preds = %for.cond14, %for.body21
  %indvars.iv15 = phi i64 [ 1, %for.cond14 ], [ %indvars.iv.next16, %for.body21 ]
  %exitcond19.not = icmp eq i64 %indvars.iv15, %wide.trip.count18
  br i1 %exitcond19.not, label %for.end33, label %for.body21

for.body21:                                       ; preds = %for.cond18
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %arrayidx26 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv.next16, i64 %indvars.iv20
  %4 = load i32, ptr %arrayidx26, align 4, !tbaa !5, !invariant.load !12
  %arrayidx30 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv15, i64 %indvars.iv20
  store i32 %4, ptr %arrayidx30, align 4, !tbaa !5
  br label %for.cond18, !llvm.loop !20

for.end33:                                        ; preds = %for.cond18
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond14

for.end36:                                        ; preds = %for.cond14.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nofree nounwind }

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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
