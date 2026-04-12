; ModuleID = '<stdin>'
source_filename = "/tmp/tmp46iqo03u.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@n = dso_local global i32 0, align 4
@a = dso_local global [101 x [101 x i32]] zeroinitializer, align 16
@sum = dso_local local_unnamed_addr global i32 0, align 4
@k = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @_Z7zerorowi(i32 noundef %k) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc30, %for.inc29 ]
  %cmp = icmp slt i32 %i.0, %k
  br i1 %cmp, label %for.body, label %for.end31

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 1, %for.body ], [ %inc, %for.inc ]
  %min.0 = phi i32 [ %0, %for.body ], [ %min.1, %for.inc ]
  %cmp3 = icmp slt i32 %j.0, %k
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %idxprom8 = sext i32 %j.0 to i64
  %arrayidx9 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom8
  %1 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %1, %min.0
  br i1 %cmp10, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body5
  br label %for.inc

for.inc:                                          ; preds = %for.body5, %if.then
  %min.1 = phi i32 [ %1, %if.then ], [ %min.0, %for.body5 ]
  %inc = add nsw i32 %j.0, 1
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  %min.0.lcssa = phi i32 [ %min.0, %for.cond2 ]
  %tobool = icmp ne i32 %min.0.lcssa, 0
  br i1 %tobool, label %if.then15, label %for.inc29

if.then15:                                        ; preds = %for.end
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc25, %if.then15
  %j16.0 = phi i32 [ 0, %if.then15 ], [ %inc26, %for.inc25 ]
  %cmp18 = icmp slt i32 %j16.0, %k
  br i1 %cmp18, label %for.inc25, label %for.inc29.loopexit

for.inc25:                                        ; preds = %for.cond17
  %idxprom23 = sext i32 %j16.0 to i64
  %arrayidx24 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom23
  %2 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0.lcssa
  store i32 %sub, ptr %arrayidx24, align 4, !tbaa !5
  %inc26 = add nsw i32 %j16.0, 1
  br label %for.cond17, !llvm.loop !12

for.inc29.loopexit:                               ; preds = %for.cond17
  br label %for.inc29

for.inc29:                                        ; preds = %for.inc29.loopexit, %for.end
  %inc30 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end31:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @_Z7zerocoli(i32 noundef %k) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc29, %for.inc28 ]
  %cmp = icmp slt i32 %i.0, %k
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [101 x i32], ptr @a, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 1, %for.body ], [ %inc, %for.inc ]
  %min.0 = phi i32 [ %0, %for.body ], [ %min.1, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, %k
  br i1 %cmp2, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond1
  %idxprom5 = sext i32 %j.0 to i64
  %arrayidx6 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom5
  %arrayidx8 = getelementptr inbounds [101 x i32], ptr %arrayidx6, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %1, %min.0
  br i1 %cmp9, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body4
  br label %for.inc

for.inc:                                          ; preds = %for.body4, %if.then
  %min.1 = phi i32 [ %1, %if.then ], [ %min.0, %for.body4 ]
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !14

for.end:                                          ; preds = %for.cond1
  %min.0.lcssa = phi i32 [ %min.0, %for.cond1 ]
  %tobool = icmp ne i32 %min.0.lcssa, 0
  br i1 %tobool, label %if.then14, label %for.inc28

if.then14:                                        ; preds = %for.end
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc24, %if.then14
  %j15.0 = phi i32 [ 0, %if.then14 ], [ %inc25, %for.inc24 ]
  %cmp17 = icmp slt i32 %j15.0, %k
  br i1 %cmp17, label %for.inc24, label %for.inc28.loopexit

for.inc24:                                        ; preds = %for.cond16
  %idxprom20 = sext i32 %j15.0 to i64
  %arrayidx21 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom20
  %arrayidx23 = getelementptr inbounds [101 x i32], ptr %arrayidx21, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0.lcssa
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  %inc25 = add nsw i32 %j15.0, 1
  br label %for.cond16, !llvm.loop !15

for.inc28.loopexit:                               ; preds = %for.cond16
  br label %for.inc28

for.inc28:                                        ; preds = %for.inc28.loopexit, %for.end
  %inc29 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !16

for.end30:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @_Z4jiani(i32 noundef %k) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %i.0 = phi i32 [ 2, %entry ], [ %inc12, %for.inc11 ]
  %cmp = icmp slt i32 %i.0, %k
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, %k
  br i1 %cmp2, label %for.inc, label %for.inc11

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom
  %idxprom5 = sext i32 %j.0 to i64
  %arrayidx6 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %0 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %sub = sub nsw i32 %i.0, 1
  %idxprom7 = sext i32 %sub to i64
  %arrayidx8 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom7
  %arrayidx10 = getelementptr inbounds [101 x i32], ptr %arrayidx8, i64 0, i64 %idxprom5
  store i32 %0, ptr %arrayidx10, align 4, !tbaa !5
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !17

for.inc11:                                        ; preds = %for.cond1
  %inc12 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !18

for.end13:                                        ; preds = %for.cond
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc37, %for.end13
  %j14.0 = phi i32 [ 2, %for.end13 ], [ %inc38, %for.inc37 ]
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %j14.0, %1
  br i1 %cmp16, label %for.body18, label %for.end39

for.body18:                                       ; preds = %for.cond15
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc34, %for.body18
  %i19.0 = phi i32 [ 0, %for.body18 ], [ %inc35, %for.inc34 ]
  %sub21 = sub nsw i32 %k, 1
  %cmp22 = icmp slt i32 %i19.0, %sub21
  br i1 %cmp22, label %for.inc34, label %for.inc37

for.inc34:                                        ; preds = %for.cond20
  %idxprom25 = sext i32 %i19.0 to i64
  %arrayidx26 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom25
  %idxprom27 = sext i32 %j14.0 to i64
  %arrayidx28 = getelementptr inbounds [101 x i32], ptr %arrayidx26, i64 0, i64 %idxprom27
  %2 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %sub31 = sub nsw i32 %j14.0, 1
  %idxprom32 = sext i32 %sub31 to i64
  %arrayidx33 = getelementptr inbounds [101 x i32], ptr %arrayidx26, i64 0, i64 %idxprom32
  store i32 %2, ptr %arrayidx33, align 4, !tbaa !5
  %inc35 = add nsw i32 %i19.0, 1
  br label %for.cond20, !llvm.loop !19

for.inc37:                                        ; preds = %for.cond20
  %inc38 = add nsw i32 %j14.0, 1
  br label %for.cond15, !llvm.loop !20

for.end39:                                        ; preds = %for.cond15
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  br label %while.cond

while.cond:                                       ; preds = %for.end18, %entry
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @a)
  %vtable = load ptr, ptr %call1, align 8, !tbaa !21
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !23
  %add.ptr = getelementptr inbounds i8, ptr %call1, i64 %vbase.offset
  %call2 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr)
  br i1 %call2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr @sum, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %while.body
  %i.0 = phi i32 [ 0, %while.body ], [ %inc11, %for.inc10 ]
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %j.0, %1
  br i1 %cmp4, label %for.body6, label %for.inc10

for.body6:                                        ; preds = %for.cond3
  %add = add nsw i32 %j.0, %i.0
  %tobool = icmp ne i32 %add, 0
  br i1 %tobool, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body6
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom
  %idxprom7 = sext i32 %j.0 to i64
  %arrayidx8 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  br label %for.inc

for.inc:                                          ; preds = %for.body6, %if.then
  %inc = add nsw i32 %j.0, 1
  br label %for.cond3, !llvm.loop !24

for.inc10:                                        ; preds = %for.cond3
  %inc11 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !25

for.end12:                                        ; preds = %for.cond
  %.lcssa = phi i32 [ %0, %for.cond ]
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc17, %for.end12
  %.sink = phi i32 [ %.lcssa, %for.end12 ], [ %dec, %for.inc17 ]
  store i32 %.sink, ptr @k, align 4, !tbaa !5
  %cmp14 = icmp sgt i32 %.sink, 1
  br i1 %cmp14, label %for.inc17, label %for.end18

for.inc17:                                        ; preds = %for.cond13
  call void @_Z7zerorowi(i32 noundef %.sink) #5
  %2 = load i32, ptr @k, align 4, !tbaa !5
  call void @_Z7zerocoli(i32 noundef %2) #5
  %3 = load i32, ptr getelementptr inbounds ([101 x i32], ptr getelementptr inbounds ([101 x [101 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 1), align 8, !tbaa !5
  %4 = load i32, ptr @sum, align 4, !tbaa !5
  %add16 = add nsw i32 %4, %3
  store i32 %add16, ptr @sum, align 4, !tbaa !5
  %5 = load i32, ptr @k, align 4, !tbaa !5
  call void @_Z4jiani(i32 noundef %5) #5
  %6 = load i32, ptr @k, align 4, !tbaa !5
  %dec = add nsw i32 %6, -1
  br label %for.cond13, !llvm.loop !26

for.end18:                                        ; preds = %for.cond13
  %7 = load i32, ptr @sum, align 4, !tbaa !5
  %call19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %7)
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call19, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %while.cond, !llvm.loop !27

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !8, i64 0}
!23 = !{}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
