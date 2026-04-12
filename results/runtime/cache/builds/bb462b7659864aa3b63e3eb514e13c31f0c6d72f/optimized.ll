; ModuleID = '<stdin>'
source_filename = "/tmp/tmpo5jsx3ul.cpp"
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
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z3cuti(i32 noundef %t) local_unnamed_addr #0 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end127, %entry
  %accumulator.tr = phi i32 [ 0, %entry ], [ %add128, %for.end127 ]
  %t.tr = phi i32 [ %t, %entry ], [ %dec, %for.end127 ]
  %smax44 = call i32 @llvm.smax.i32(i32 %t.tr, i32 0)
  %wide.trip.count15 = zext nneg i32 %smax44 to i64
  %wide.trip.count = zext i32 %t.tr to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %tailrecurse
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.inc25 ], [ 0, %tailrecurse ]
  %exitcond16.not = icmp eq i64 %indvars.iv12, %wide.trip.count15
  br i1 %exitcond16.not, label %for.cond28.preheader, label %for.cond1

for.cond28.preheader:                             ; preds = %for.cond
  br label %for.cond28

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %s.0 = phi i32 [ %spec.select, %for.body3 ], [ 9999, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond11.preheader, label %for.body3

for.cond11.preheader:                             ; preds = %for.cond1
  br label %for.cond11

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv12, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx5, align 4, !tbaa !5, !invariant.load !9
  %spec.select = tail call i32 @llvm.smin.i32(i32 %0, i32 %s.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !10

for.cond11:                                       ; preds = %for.cond11.preheader, %for.inc22
  %indvars.iv7 = phi i64 [ 0, %for.cond11.preheader ], [ %indvars.iv.next8, %for.inc22 ]
  %exitcond11.not = icmp eq i64 %indvars.iv7, %wide.trip.count
  br i1 %exitcond11.not, label %for.inc25, label %for.inc22

for.inc22:                                        ; preds = %for.cond11
  %arrayidx17 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv12, i64 %indvars.iv7
  %1 = load i32, ptr %arrayidx17, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %1, %s.0
  store i32 %sub, ptr %arrayidx17, align 4, !tbaa !5
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond11, !llvm.loop !13

for.inc25:                                        ; preds = %for.cond11
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond, !llvm.loop !14

for.cond28:                                       ; preds = %for.cond28.preheader, %for.inc63
  %indvars.iv27 = phi i64 [ 0, %for.cond28.preheader ], [ %indvars.iv.next28, %for.inc63 ]
  %exitcond32.not = icmp eq i64 %indvars.iv27, %wide.trip.count15
  br i1 %exitcond32.not, label %for.end65, label %for.cond31

for.cond31:                                       ; preds = %for.cond28, %for.body33
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.body33 ], [ 0, %for.cond28 ]
  %s.2 = phi i32 [ %spec.select5, %for.body33 ], [ 9999, %for.cond28 ]
  %exitcond21.not = icmp eq i64 %indvars.iv17, %wide.trip.count
  br i1 %exitcond21.not, label %for.cond48.preheader, label %for.body33

for.cond48.preheader:                             ; preds = %for.cond31
  br label %for.cond48

for.body33:                                       ; preds = %for.cond31
  %arrayidx37 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv17, i64 %indvars.iv27
  %2 = load i32, ptr %arrayidx37, align 4, !tbaa !5, !invariant.load !9
  %spec.select5 = tail call i32 @llvm.smin.i32(i32 %2, i32 %s.2)
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond31, !llvm.loop !15

for.cond48:                                       ; preds = %for.cond48.preheader, %for.inc60
  %indvars.iv22 = phi i64 [ 0, %for.cond48.preheader ], [ %indvars.iv.next23, %for.inc60 ]
  %exitcond26.not = icmp eq i64 %indvars.iv22, %wide.trip.count
  br i1 %exitcond26.not, label %for.inc63, label %for.inc60

for.inc60:                                        ; preds = %for.cond48
  %arrayidx54 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv22, i64 %indvars.iv27
  %3 = load i32, ptr %arrayidx54, align 4, !tbaa !5, !invariant.load !9
  %sub55 = sub nsw i32 %3, %s.2
  store i32 %sub55, ptr %arrayidx54, align 4, !tbaa !5
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond48, !llvm.loop !16

for.inc63:                                        ; preds = %for.cond48
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond28, !llvm.loop !17

for.end65:                                        ; preds = %for.cond28
  %dec = add nsw i32 %t.tr, -1
  %cmp66 = icmp eq i32 %dec, 1
  %4 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  br i1 %cmp66, label %cleanup, label %for.cond69.preheader

for.cond69.preheader:                             ; preds = %for.end65
  br label %for.cond69

for.cond69:                                       ; preds = %for.cond69.preheader, %for.inc125
  %indvars.iv40 = phi i64 [ 0, %for.cond69.preheader ], [ %indvars.iv.next41, %for.inc125 ]
  %exitcond46.not = icmp eq i64 %indvars.iv40, %wide.trip.count15
  br i1 %exitcond46.not, label %for.end127, label %for.cond72.preheader

for.cond72.preheader:                             ; preds = %for.cond69
  %5 = add nsw i64 %indvars.iv40, -1
  %arrayidx99 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv40
  %arrayidx104 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %5
  %6 = trunc nuw nsw i64 %indvars.iv40 to i32
  br label %for.cond72

for.cond72:                                       ; preds = %for.cond72.preheader, %for.inc122
  %indvars.iv33 = phi i64 [ 0, %for.cond72.preheader ], [ %indvars.iv.next34, %for.inc122 ]
  %exitcond39.not = icmp eq i64 %indvars.iv33, %wide.trip.count
  br i1 %exitcond39.not, label %for.inc125, label %for.body75

for.body75:                                       ; preds = %for.cond72
  switch i32 %6, label %lor.lhs.false.thread [
    i32 0, label %land.lhs.true
    i32 1, label %for.inc122
  ]

land.lhs.true:                                    ; preds = %for.body75
  %switch = icmp samesign ult i64 %indvars.iv33, 2
  br i1 %switch, label %for.inc122, label %if.then85

lor.lhs.false.thread:                             ; preds = %for.body75
  %7 = trunc nuw nsw i64 %indvars.iv33 to i32
  switch i32 %7, label %if.else107 [
    i32 1, label %for.inc122
    i32 0, label %if.then97
  ]

if.then85:                                        ; preds = %land.lhs.true
  %arrayidx89 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv33
  %8 = load i32, ptr %arrayidx89, align 4, !tbaa !5, !invariant.load !9
  %9 = add nsw i64 %indvars.iv33, -1
  %arrayidx94 = getelementptr inbounds [100 x i32], ptr @a, i64 0, i64 %9
  store i32 %8, ptr %arrayidx94, align 4, !tbaa !5
  br label %for.inc122

if.then97:                                        ; preds = %lor.lhs.false.thread
  %10 = load i32, ptr %arrayidx99, align 4, !tbaa !5, !invariant.load !9
  store i32 %10, ptr %arrayidx104, align 4, !tbaa !5
  br label %for.inc122

if.else107:                                       ; preds = %lor.lhs.false.thread
  %arrayidx111 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv40, i64 %indvars.iv33
  %11 = load i32, ptr %arrayidx111, align 4, !tbaa !5, !invariant.load !9
  %12 = add nsw i64 %indvars.iv33, -1
  %arrayidx117 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %5, i64 %12
  store i32 %11, ptr %arrayidx117, align 4, !tbaa !5
  br label %for.inc122

for.inc122:                                       ; preds = %lor.lhs.false.thread, %land.lhs.true, %for.body75, %if.then85, %if.else107, %if.then97
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond72, !llvm.loop !18

for.inc125:                                       ; preds = %for.cond72
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond69, !llvm.loop !19

for.end127:                                       ; preds = %for.cond69
  %add128 = add nsw i32 %4, %accumulator.tr
  br label %tailrecurse

cleanup:                                          ; preds = %for.end65
  %accumulator.ret.tr = add nsw i32 %4, %accumulator.tr
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc33, %for.inc32 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.cond1.preheader, label %for.end34

for.cond1.preheader:                              ; preds = %for.cond
  %wide.trip.count7 = zext i32 %0 to i64
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc9
  %indvars.iv4 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next5, %for.inc9 ]
  %exitcond8.not = icmp eq i64 %indvars.iv4, %wide.trip.count7
  br i1 %exitcond8.not, label %for.cond12, label %for.cond4

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count7
  br i1 %exitcond.not, label %for.inc9, label %for.inc

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv4, i64 %indvars.iv
  store i32 0, ptr %arrayidx8, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !20

for.inc9:                                         ; preds = %for.cond4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %for.cond1, !llvm.loop !21

for.cond12:                                       ; preds = %for.cond1, %for.inc26
  %1 = phi i32 [ %3, %for.inc26 ], [ %0, %for.cond1 ]
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.inc26 ], [ 0, %for.cond1 ]
  %2 = sext i32 %1 to i64
  %cmp13 = icmp slt i64 %indvars.iv12, %2
  br i1 %cmp13, label %for.cond15, label %for.inc32

for.cond15:                                       ; preds = %for.cond12, %for.inc23
  %3 = phi i32 [ %.pre, %for.inc23 ], [ %1, %for.cond12 ]
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %for.inc23 ], [ 0, %for.cond12 ]
  %4 = sext i32 %3 to i64
  %cmp16 = icmp slt i64 %indvars.iv9, %4
  br i1 %cmp16, label %for.inc23, label %for.inc26

for.inc23:                                        ; preds = %for.cond15
  %arrayidx21 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv12, i64 %indvars.iv9
  %call22 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx21)
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !22

for.inc26:                                        ; preds = %for.cond15
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond12, !llvm.loop !23

for.inc32:                                        ; preds = %for.cond12
  %call29 = call noundef i32 @_Z3cuti(i32 noundef %1) #8
  %call30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call29)
  %call31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call30, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc33 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !24

for.end34:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nounwind }

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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
!21 = distinct !{!21, !11, !12}
!22 = distinct !{!22, !11, !12}
!23 = distinct !{!23, !11, !12}
!24 = distinct !{!24, !11, !12}
