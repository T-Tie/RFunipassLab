; ModuleID = '<stdin>'
source_filename = "/tmp/tmpueub5kws.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [1000 x [1000 x i32]] zeroinitializer, align 16
@sum = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z3cuti(i32 noundef %n) local_unnamed_addr #0 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count45 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end24, %entry
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.end24 ], [ 0, %entry ]
  %exitcond46.not = icmp eq i64 %indvars.iv42, %wide.trip.count45
  br i1 %exitcond46.not, label %for.cond28.preheader, label %for.cond1

for.cond28.preheader:                             ; preds = %for.cond
  %wide.trip.count50 = zext i32 %n to i64
  br label %for.cond28

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %min.1 = phi i32 [ %spec.select, %for.body3 ], [ 10000, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond11, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv42, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %min.1, i32 %0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.cond11:                                       ; preds = %for.cond1, %for.body13
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.body13 ], [ 0, %for.cond1 ]
  %exitcond41.not = icmp eq i64 %indvars.iv37, %wide.trip.count
  br i1 %exitcond41.not, label %for.end24, label %for.body13

for.body13:                                       ; preds = %for.cond11
  %arrayidx17 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv42, i64 %indvars.iv37
  %1 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %sub = sub nsw i32 %1, %min.1
  store i32 %sub, ptr %arrayidx17, align 4, !tbaa !5
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond11, !llvm.loop !12

for.end24:                                        ; preds = %for.cond11
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond, !llvm.loop !13

for.cond28:                                       ; preds = %for.cond28.preheader, %for.end62
  %indvars.iv57 = phi i64 [ 0, %for.cond28.preheader ], [ %indvars.iv.next58, %for.end62 ]
  %exitcond61.not = icmp eq i64 %indvars.iv57, %wide.trip.count45
  br i1 %exitcond61.not, label %for.end65, label %for.cond31

for.cond31:                                       ; preds = %for.cond28, %for.body33
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.body33 ], [ 0, %for.cond28 ]
  %min.4 = phi i32 [ %spec.select35, %for.body33 ], [ 10000, %for.cond28 ]
  %exitcond51.not = icmp eq i64 %indvars.iv47, %wide.trip.count50
  br i1 %exitcond51.not, label %for.cond48, label %for.body33

for.body33:                                       ; preds = %for.cond31
  %arrayidx37 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv47, i64 %indvars.iv57
  %2 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %spec.select35 = tail call i32 @llvm.smin.i32(i32 %min.4, i32 %2)
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond31, !llvm.loop !14

for.cond48:                                       ; preds = %for.cond31, %for.body50
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.body50 ], [ 0, %for.cond31 ]
  %exitcond56.not = icmp eq i64 %indvars.iv52, %wide.trip.count50
  br i1 %exitcond56.not, label %for.end62, label %for.body50

for.body50:                                       ; preds = %for.cond48
  %arrayidx54 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv52, i64 %indvars.iv57
  %3 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %sub55 = sub nsw i32 %3, %min.4
  store i32 %sub55, ptr %arrayidx54, align 4, !tbaa !5
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  br label %for.cond48, !llvm.loop !15

for.end62:                                        ; preds = %for.cond48
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %for.cond28, !llvm.loop !16

for.end65:                                        ; preds = %for.cond28
  %4 = load i32, ptr @sum, align 4, !tbaa !5
  %5 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 4004), align 4, !tbaa !5
  %add = add nsw i32 %5, %4
  store i32 %add, ptr @sum, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end68, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc72, %for.end68 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end73, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv30, %2
  br i1 %cmp2, label %for.cond4, label %for.cond13

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %3 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.body6, label %for.inc10

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv30, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !17

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond1, !llvm.loop !18

for.cond13:                                       ; preds = %for.cond1, %for.inc66
  %5 = phi i32 [ %6, %for.inc66 ], [ %1, %for.cond1 ]
  %indvars.iv36 = phi i32 [ %indvars.iv.next37, %for.inc66 ], [ -1, %for.cond1 ]
  %p.0 = phi i32 [ %inc67, %for.inc66 ], [ 1, %for.cond1 ]
  %cmp14 = icmp slt i32 %p.0, %5
  br i1 %cmp14, label %for.body15, label %for.end68

for.body15:                                       ; preds = %for.cond13
  %reass.sub = sub i32 %5, %p.0
  %add = add i32 %reass.sub, 1
  call void @_Z3cuti(i32 noundef %add)
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %sub17 = sub nsw i32 %6, %p.0
  %7 = add nsw i32 %6, %indvars.iv36
  %8 = sext i32 %sub17 to i64
  %wide.trip.count = zext i32 %7 to i64
  br label %for.cond16

for.cond16:                                       ; preds = %for.cond20, %for.body15
  %indvars.iv38 = phi i64 [ 1, %for.body15 ], [ %indvars.iv.next39, %for.cond20 ]
  %cmp18 = icmp slt i64 %indvars.iv38, %8
  br i1 %cmp18, label %for.cond20.preheader, label %for.cond40

for.cond20.preheader:                             ; preds = %for.cond16
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond20

for.cond20:                                       ; preds = %for.cond20.preheader, %for.body23
  %indvars.iv33 = phi i64 [ 1, %for.cond20.preheader ], [ %indvars.iv.next34, %for.body23 ]
  %exitcond.not = icmp eq i64 %indvars.iv33, %wide.trip.count
  br i1 %exitcond.not, label %for.cond16, label %for.body23, !llvm.loop !19

for.body23:                                       ; preds = %for.cond20
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %arrayidx29 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv.next39, i64 %indvars.iv.next34
  %9 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %arrayidx33 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv38, i64 %indvars.iv33
  store i32 %9, ptr %arrayidx33, align 4, !tbaa !5
  br label %for.cond20, !llvm.loop !20

for.cond40:                                       ; preds = %for.cond16, %for.body43
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.body43 ], [ 1, %for.cond16 ]
  %cmp42 = icmp slt i64 %indvars.iv41, %8
  br i1 %cmp42, label %for.body43, label %for.cond52

for.body43:                                       ; preds = %for.cond40
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %arrayidx46 = getelementptr inbounds nuw [1000 x i32], ptr @a, i64 0, i64 %indvars.iv.next42
  %10 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %arrayidx48 = getelementptr inbounds nuw [1000 x i32], ptr @a, i64 0, i64 %indvars.iv41
  store i32 %10, ptr %arrayidx48, align 4, !tbaa !5
  br label %for.cond40, !llvm.loop !21

for.cond52:                                       ; preds = %for.cond40, %for.body55
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.body55 ], [ 1, %for.cond40 ]
  %cmp54 = icmp slt i64 %indvars.iv44, %8
  br i1 %cmp54, label %for.body55, label %for.inc66

for.body55:                                       ; preds = %for.cond52
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %arrayidx58 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv.next45
  %11 = load i32, ptr %arrayidx58, align 16, !tbaa !5
  %arrayidx61 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv44
  store i32 %11, ptr %arrayidx61, align 16, !tbaa !5
  br label %for.cond52, !llvm.loop !22

for.inc66:                                        ; preds = %for.cond52
  %inc67 = add nuw nsw i32 %p.0, 1
  %indvars.iv.next37 = add nsw i32 %indvars.iv36, -1
  br label %for.cond13, !llvm.loop !23

for.end68:                                        ; preds = %for.cond13
  %12 = load i32, ptr @sum, align 4, !tbaa !5
  %call69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %12)
  %vtable.i = load ptr, ptr %call69, align 8, !tbaa !24
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call69, i64 %vbase.offset.i
  %call.i28 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call69, i8 noundef signext %call.i28)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  store i32 0, ptr @sum, align 4, !tbaa !5
  %inc72 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !26

for.end73:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
