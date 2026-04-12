; ModuleID = '<stdin>'
source_filename = "/tmp/tmp53ktk9u0.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [105 x [105 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc17, %for.inc16 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %k.0, %0
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(44100) @a, i8 noundef 0, i64 noundef 44100, i1 noundef false)
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.body ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.inc10 ], [ 0, %for.body ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv8, %2
  br i1 %cmp2, label %for.cond4, label %for.inc16

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %3 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [105 x [105 x i32]], ptr @a, i64 0, i64 %indvars.iv8, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond1, !llvm.loop !12

for.inc16:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z7guilingi(i32 noundef %1) #9
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call13)
  %vtable.i = load ptr, ptr %call14, align 8, !tbaa !13, !invariant.load !15
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !15
  %add.ptr.i = getelementptr inbounds i8, ptr %call14, i64 %vbase.offset.i
  %call.i1 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call14, i8 noundef signext %call.i1)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc17 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !16

for.end18:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z7guilingi(i32 noundef %n) local_unnamed_addr #4 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.else, %entry
  %accumulator.tr = phi i32 [ 0, %entry ], [ %add, %if.else ]
  %n.tr = phi i32 [ %n, %entry ], [ %sub75, %if.else ]
  %smax49 = call i32 @llvm.smax.i32(i32 %n.tr, i32 noundef 0)
  %wide.trip.count34 = zext nneg i32 %smax49 to i64
  %wide.trip.count = zext i32 %n.tr to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %tailrecurse
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.inc27 ], [ 0, %tailrecurse ]
  %exitcond35.not = icmp eq i64 %indvars.iv31, %wide.trip.count34
  br i1 %exitcond35.not, label %for.cond31.preheader, label %for.body

for.cond31.preheader:                             ; preds = %for.cond
  br label %for.cond31

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [105 x [105 x i32]], ptr @a, i64 0, i64 %indvars.iv31
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !15
  br label %for.cond2

for.cond2:                                        ; preds = %for.body5, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 1, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body5 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond16.preheader, label %for.body5

for.cond16.preheader:                             ; preds = %for.cond2
  br label %for.cond16

for.body5:                                        ; preds = %for.cond2
  %arrayidx9 = getelementptr inbounds nuw [105 x [105 x i32]], ptr @a, i64 0, i64 %indvars.iv31, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx9, align 4, !tbaa !5, !invariant.load !15
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !17

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc24
  %indvars.iv26 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next27, %for.inc24 ]
  %exitcond30.not = icmp eq i64 %indvars.iv26, %wide.trip.count
  br i1 %exitcond30.not, label %for.inc27, label %for.inc24

for.inc24:                                        ; preds = %for.cond16
  %arrayidx23 = getelementptr inbounds nuw [105 x [105 x i32]], ptr @a, i64 0, i64 %indvars.iv31, i64 %indvars.iv26
  %2 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !15
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond16, !llvm.loop !18

for.inc27:                                        ; preds = %for.cond16
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond, !llvm.loop !19

for.cond31:                                       ; preds = %for.cond31.preheader, %for.inc70
  %indvars.iv46 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next47, %for.inc70 ]
  %exitcond51.not = icmp eq i64 %indvars.iv46, %wide.trip.count34
  br i1 %exitcond51.not, label %for.end72, label %for.body34

for.body34:                                       ; preds = %for.cond31
  %arrayidx37 = getelementptr inbounds nuw [105 x i32], ptr @a, i64 0, i64 %indvars.iv46
  %3 = load i32, ptr %arrayidx37, align 4, !tbaa !5, !invariant.load !15
  br label %for.cond39

for.cond39:                                       ; preds = %for.body42, %for.body34
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.body42 ], [ 1, %for.body34 ]
  %min35.0 = phi i32 [ %spec.select24, %for.body42 ], [ %3, %for.body34 ]
  %exitcond40.not = icmp eq i64 %indvars.iv36, %wide.trip.count
  br i1 %exitcond40.not, label %for.cond58.preheader, label %for.body42

for.cond58.preheader:                             ; preds = %for.cond39
  br label %for.cond58

for.body42:                                       ; preds = %for.cond39
  %arrayidx46 = getelementptr inbounds nuw [105 x [105 x i32]], ptr @a, i64 0, i64 %indvars.iv36, i64 %indvars.iv46
  %4 = load i32, ptr %arrayidx46, align 4, !tbaa !5, !invariant.load !15
  %spec.select24 = tail call i32 @llvm.smin.i32(i32 %4, i32 %min35.0)
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond39, !llvm.loop !20

for.cond58:                                       ; preds = %for.cond58.preheader, %for.inc67
  %indvars.iv41 = phi i64 [ 0, %for.cond58.preheader ], [ %indvars.iv.next42, %for.inc67 ]
  %exitcond45.not = icmp eq i64 %indvars.iv41, %wide.trip.count
  br i1 %exitcond45.not, label %for.inc70, label %for.inc67

for.inc67:                                        ; preds = %for.cond58
  %arrayidx65 = getelementptr inbounds nuw [105 x [105 x i32]], ptr @a, i64 0, i64 %indvars.iv41, i64 %indvars.iv46
  %5 = load i32, ptr %arrayidx65, align 4, !tbaa !5, !invariant.load !15
  %sub66 = sub nsw i32 %5, %min35.0
  store i32 %sub66, ptr %arrayidx65, align 4, !tbaa !5
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond58, !llvm.loop !21

for.inc70:                                        ; preds = %for.cond58
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond31, !llvm.loop !22

for.end72:                                        ; preds = %for.cond31
  %6 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 424), align 8, !tbaa !5
  %cmp73 = icmp eq i32 %n.tr, 2
  br i1 %cmp73, label %cleanup, label %if.else

if.else:                                          ; preds = %for.end72
  tail call void @_Z8xiaojiani(i32 noundef %n.tr) #10
  %sub75 = add nsw i32 %n.tr, -1
  %add = add nsw i32 %6, %accumulator.tr
  br label %tailrecurse

cleanup:                                          ; preds = %for.end72
  %accumulator.ret.tr = add nsw i32 %6, %accumulator.tr
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z8xiaojiani(i32 noundef %n) local_unnamed_addr #5 {
entry:
  %sub = add nsw i32 %n, -1
  %smax = call i32 @llvm.smax.i32(i32 %sub, i32 noundef 1)
  %wide.trip.count15 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %sub to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond10, %entry
  %indvars.iv12 = phi i64 [ 1, %entry ], [ %indvars.iv.next13, %for.cond10 ]
  %exitcond16.not = icmp eq i64 %indvars.iv12, %wide.trip.count15
  br i1 %exitcond16.not, label %for.end27, label %for.body

for.body:                                         ; preds = %for.cond
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %arrayidx = getelementptr inbounds nuw [105 x i32], ptr @a, i64 0, i64 %indvars.iv.next13
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !15
  %arrayidx2 = getelementptr inbounds nuw [105 x i32], ptr @a, i64 0, i64 %indvars.iv12
  store i32 %0, ptr %arrayidx2, align 4, !tbaa !5
  %arrayidx5 = getelementptr inbounds nuw [105 x [105 x i32]], ptr @a, i64 0, i64 %indvars.iv.next13
  %1 = load i32, ptr %arrayidx5, align 4, !tbaa !5, !invariant.load !15
  %arrayidx8 = getelementptr inbounds nuw [105 x [105 x i32]], ptr @a, i64 0, i64 %indvars.iv12
  store i32 %1, ptr %arrayidx8, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond, label %for.inc, !llvm.loop !23

for.inc:                                          ; preds = %for.cond10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx20 = getelementptr inbounds nuw [105 x [105 x i32]], ptr @a, i64 0, i64 %indvars.iv.next13, i64 %indvars.iv.next
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !15
  %arrayidx24 = getelementptr inbounds nuw [105 x [105 x i32]], ptr @a, i64 0, i64 %indvars.iv12, i64 %indvars.iv
  store i32 %2, ptr %arrayidx24, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !24

for.end27:                                        ; preds = %for.cond
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #6 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind willreturn }
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
!12 = distinct !{!12, !10, !11}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
!15 = !{}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
