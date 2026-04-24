; ModuleID = '<stdin>'
source_filename = "/tmp/tmp5zpjmr38.cpp"
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
@s = dso_local local_unnamed_addr global [100 x i32] zeroinitializer, align 16
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
  br i1 %cmp, label %for.cond1, label %for.end25

for.cond1:                                        ; preds = %for.cond, %for.end
  %1 = phi i32 [ %2, %for.end ], [ %0, %for.cond ]
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %for.end ], [ 0, %for.cond ]
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %for.cond4, label %for.end12

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %2 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %3 = sext i32 %2 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp5, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv9, i64 %indvars.iv
  %call9 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %for.cond1

for.end12:                                        ; preds = %for.cond1
  tail call void @_Z3Tryi(i32 noundef 0) #9
  %call21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  %call22 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call21, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.cond

for.end25:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_Z3Tryi(i32 noundef %i) local_unnamed_addr #3 {
entry:
  %0 = sext i32 %i to i64
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %entry
  %1 = phi i32 [ %6, %tailrecurse ], [ %.pre, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %tailrecurse ], [ %0, %entry ]
  %2 = trunc nsw i64 %indvars.iv to i32
  %sub = sub nsw i32 %1, %2
  tail call void @_Z1ri(i32 noundef %sub) #10
  %3 = load i32, ptr @n, align 4, !tbaa !5
  %sub1 = sub nsw i32 %3, %2
  tail call void @_Z1li(i32 noundef %sub1) #10
  %4 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  %arrayidx = getelementptr inbounds [100 x i32], ptr @s, i64 0, i64 %indvars.iv
  store i32 %4, ptr %arrayidx, align 4, !tbaa !5
  %5 = load i32, ptr @n, align 4, !tbaa !5
  %sub2 = sub nsw i32 %5, %2
  tail call void @_Z3funi(i32 noundef %sub2) #10
  %6 = load i32, ptr @n, align 4, !tbaa !5
  %sub3 = add nsw i32 %6, -1
  %7 = sext i32 %sub3 to i64
  %cmp = icmp slt i64 %indvars.iv, %7
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %cmp, label %tailrecurse, label %if.end

if.end:                                           ; preds = %tailrecurse
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z1ri(i32 noundef %m) local_unnamed_addr #6 {
entry:
  %cmp = icmp sgt i32 %m, 0
  %0 = load i32, ptr @a, align 16
  br i1 %cmp, label %for.cond.preheader, label %for.end30

for.cond.preheader:                               ; preds = %entry
  %wide.trip.count = zext nneg i32 %m to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.end27
  %indvars.iv11 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next12, %for.end27 ]
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ %0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14.preheader, label %for.body4

for.cond14.preheader:                             ; preds = %for.cond2
  br label %for.cond14

for.body4:                                        ; preds = %for.cond2
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv11, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !12
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !13

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc25
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %for.inc25 ], [ 0, %for.cond14.preheader ]
  %exitcond10.not = icmp eq i64 %indvars.iv6, %wide.trip.count
  br i1 %exitcond10.not, label %for.end27, label %for.inc25

for.inc25:                                        ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv11, i64 %indvars.iv6
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !12
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %for.cond14, !llvm.loop !14

for.end27:                                        ; preds = %for.cond14
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond

for.end30:                                        ; preds = %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z1li(i32 noundef %m) local_unnamed_addr #6 {
entry:
  %cmp = icmp sgt i32 %m, 0
  %0 = load i32, ptr @a, align 16
  br i1 %cmp, label %for.cond.preheader, label %for.end29

for.cond.preheader:                               ; preds = %entry
  %wide.trip.count = zext nneg i32 %m to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.end26
  %indvars.iv11 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next12, %for.end26 ]
  br label %for.cond1

for.cond1:                                        ; preds = %for.body3, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %min.0 = phi i32 [ %spec.select, %for.body3 ], [ %0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond13.preheader, label %for.body3

for.cond13.preheader:                             ; preds = %for.cond1
  br label %for.cond13

for.body3:                                        ; preds = %for.cond1
  %arrayidx7 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv, i64 %indvars.iv11
  %1 = load i32, ptr %arrayidx7, align 4, !tbaa !5, !invariant.load !12
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !15

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc24
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %for.inc24 ], [ 0, %for.cond13.preheader ]
  %exitcond10.not = icmp eq i64 %indvars.iv6, %wide.trip.count
  br i1 %exitcond10.not, label %for.end26, label %for.inc24

for.inc24:                                        ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv6, i64 %indvars.iv11
  %2 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !12
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx19, align 4, !tbaa !5
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %for.cond13, !llvm.loop !16

for.end26:                                        ; preds = %for.cond13
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond

for.end29:                                        ; preds = %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z3funi(i32 noundef %m) local_unnamed_addr #6 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 noundef %m, i32 noundef 2)
  %smax13 = tail call i32 @llvm.smax.i32(i32 noundef %m, i32 noundef 0)
  %wide.trip.count14 = zext nneg i32 %smax13 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.inc10 ], [ 0, %entry ]
  %exitcond15.not = icmp eq i64 %indvars.iv10, %wide.trip.count14
  br i1 %exitcond15.not, label %for.cond13.preheader, label %for.cond1

for.cond13.preheader:                             ; preds = %for.cond
  %cmp15 = icmp sgt i32 %m, 1
  br i1 %cmp15, label %for.cond13.preheader7, label %for.end34

for.cond13.preheader7:                            ; preds = %for.cond13.preheader
  %wide.trip.count20 = zext nneg i32 %m to i64
  br label %for.cond13

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 2, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc10, label %for.inc

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv10, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx5, align 4, !tbaa !5, !invariant.load !12
  %1 = add nsw i64 %indvars.iv, -1
  %arrayidx9 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv10, i64 %1
  store i32 %0, ptr %arrayidx9, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !17

for.inc10:                                        ; preds = %for.cond1
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond, !llvm.loop !18

for.cond13:                                       ; preds = %for.cond13.preheader7, %for.end31
  %indvars.iv22 = phi i64 [ 0, %for.cond13.preheader7 ], [ %indvars.iv.next23, %for.end31 ]
  br label %for.cond17

for.cond17:                                       ; preds = %for.cond13, %for.inc29
  %indvars.iv16 = phi i64 [ 2, %for.cond13 ], [ %indvars.iv.next17, %for.inc29 ]
  %exitcond21.not = icmp eq i64 %indvars.iv16, %wide.trip.count20
  br i1 %exitcond21.not, label %for.end31, label %for.inc29

for.inc29:                                        ; preds = %for.cond17
  %arrayidx23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv16, i64 %indvars.iv22
  %2 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !12
  %3 = add nsw i64 %indvars.iv16, -1
  %arrayidx28 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %3, i64 %indvars.iv22
  store i32 %2, ptr %arrayidx28, align 4, !tbaa !5
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond17, !llvm.loop !19

for.end31:                                        ; preds = %for.cond17
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond13

for.end34:                                        ; preds = %for.cond13.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nofree nosync nounwind }

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
