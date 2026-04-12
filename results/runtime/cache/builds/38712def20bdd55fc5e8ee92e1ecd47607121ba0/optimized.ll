; ModuleID = '<stdin>'
source_filename = "/tmp/tmpcupr7ntm.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@i = dso_local local_unnamed_addr global i32 0, align 4
@j = dso_local local_unnamed_addr global i32 0, align 4
@k = dso_local local_unnamed_addr global i32 0, align 4
@l = dso_local local_unnamed_addr global i32 0, align 4
@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z4xiaoi(i32 noundef %n) local_unnamed_addr #0 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end100, %entry
  %indvars.iv32.in = phi i32 [ %indvars.iv32, %for.end100 ], [ %n, %entry ]
  %accumulator.tr = phi i32 [ %add102, %for.end100 ], [ 0, %entry ]
  %n.tr = phi i32 [ %sub67, %for.end100 ], [ %n, %entry ]
  %indvars.iv32 = add i32 %indvars.iv32.in, -1
  %smax69 = tail call i32 @llvm.smax.i32(i32 %indvars.iv32, i32 1)
  %smax58 = tail call i32 @llvm.smax.i32(i32 %n.tr, i32 0)
  %0 = zext i32 %indvars.iv32 to i64
  %wide.trip.count43 = zext nneg i32 %smax58 to i64
  %wide.trip.count = zext i32 %n.tr to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %tailrecurse
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.inc24 ], [ 0, %tailrecurse ]
  %exitcond44.not = icmp eq i64 %indvars.iv40, %wide.trip.count43
  br i1 %exitcond44.not, label %for.cond27.preheader, label %for.body

for.cond27.preheader:                             ; preds = %for.cond
  %wide.trip.count48 = zext i32 %n.tr to i64
  br label %for.cond27

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv40
  %1 = load i32, ptr %arrayidx, align 16, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 1, %for.body ]
  %min.0 = phi i32 [ %.min.0, %for.body4 ], [ %1, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv40, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %.min.0 = tail call i32 @llvm.smin.i32(i32 %2, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.cond14:                                       ; preds = %for.cond2, %for.body16
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.body16 ], [ 0, %for.cond2 ]
  %exitcond39.not = icmp eq i64 %indvars.iv35, %wide.trip.count
  br i1 %exitcond39.not, label %for.inc24, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv40, i64 %indvars.iv35
  %3 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %sub = sub nsw i32 %3, %min.0
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond14, !llvm.loop !12

for.inc24:                                        ; preds = %for.cond14
  store i32 %n.tr, ptr @k, align 4, !tbaa !5
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond, !llvm.loop !13

for.cond27:                                       ; preds = %for.cond27.preheader, %for.inc62
  %indvars.iv55 = phi i64 [ 0, %for.cond27.preheader ], [ %indvars.iv.next56, %for.inc62 ]
  %exitcond60.not = icmp eq i64 %indvars.iv55, %wide.trip.count43
  br i1 %exitcond60.not, label %for.end64, label %for.body29

for.body29:                                       ; preds = %for.cond27
  %arrayidx31 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv55
  %4 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  br label %for.cond32

for.cond32:                                       ; preds = %for.body34, %for.body29
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.body34 ], [ 1, %for.body29 ]
  %min.1 = phi i32 [ %.min.1, %for.body34 ], [ %4, %for.body29 ]
  %exitcond49.not = icmp eq i64 %indvars.iv45, %wide.trip.count48
  br i1 %exitcond49.not, label %for.cond51, label %for.body34

for.body34:                                       ; preds = %for.cond32
  %arrayidx38 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv45, i64 %indvars.iv55
  %5 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %.min.1 = tail call i32 @llvm.smin.i32(i32 %5, i32 %min.1)
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %for.cond32, !llvm.loop !14

for.cond51:                                       ; preds = %for.cond32, %for.body53
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.body53 ], [ 0, %for.cond32 ]
  %exitcond54.not = icmp eq i64 %indvars.iv50, %wide.trip.count48
  br i1 %exitcond54.not, label %for.inc62, label %for.body53

for.body53:                                       ; preds = %for.cond51
  %arrayidx57 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv50, i64 %indvars.iv55
  %6 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %sub58 = sub nsw i32 %6, %min.1
  store i32 %sub58, ptr %arrayidx57, align 4, !tbaa !5
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %for.cond51, !llvm.loop !15

for.inc62:                                        ; preds = %for.cond51
  store i32 %n.tr, ptr @k, align 4, !tbaa !5
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  br label %for.cond27, !llvm.loop !16

for.end64:                                        ; preds = %for.cond27
  %cmp65 = icmp eq i32 %n.tr, 2
  br i1 %cmp65, label %if.then, label %if.end

if.then:                                          ; preds = %for.end64
  store i32 %smax58, ptr @j, align 4, !tbaa !5
  %7 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  %accumulator.ret.tr = add nsw i32 %7, %accumulator.tr
  ret i32 %accumulator.ret.tr

if.end:                                           ; preds = %for.end64
  %8 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  %wide.trip.count70 = zext nneg i32 %smax69 to i64
  br label %for.cond66

for.cond66:                                       ; preds = %for.cond81, %if.end
  %indvars.iv66 = phi i64 [ 1, %if.end ], [ %indvars.iv.next67, %for.cond81 ]
  %exitcond71.not = icmp eq i64 %indvars.iv66, %wide.trip.count70
  br i1 %exitcond71.not, label %for.end100, label %for.body69

for.body69:                                       ; preds = %for.cond66
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %arrayidx71 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv.next67
  %9 = load i32, ptr %arrayidx71, align 4, !tbaa !5
  %arrayidx73 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv66
  store i32 %9, ptr %arrayidx73, align 4, !tbaa !5
  %arrayidx76 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv.next67
  %10 = load i32, ptr %arrayidx76, align 16, !tbaa !5
  %arrayidx79 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv66
  store i32 %10, ptr %arrayidx79, align 16, !tbaa !5
  br label %for.cond81

for.cond81:                                       ; preds = %for.body84, %for.body69
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %for.body84 ], [ 1, %for.body69 ]
  %exitcond65.not = icmp eq i64 %indvars.iv61, %0
  br i1 %exitcond65.not, label %for.cond66, label %for.body84, !llvm.loop !17

for.body84:                                       ; preds = %for.cond81
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %arrayidx90 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv.next67, i64 %indvars.iv.next62
  %11 = load i32, ptr %arrayidx90, align 4, !tbaa !5
  %arrayidx94 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv66, i64 %indvars.iv61
  store i32 %11, ptr %arrayidx94, align 4, !tbaa !5
  br label %for.cond81, !llvm.loop !18

for.end100:                                       ; preds = %for.cond66
  %sub67 = add nsw i32 %n.tr, -1
  store i32 %smax69, ptr @i, align 4, !tbaa !5
  %add102 = add nsw i32 %8, %accumulator.tr
  br label %tailrecurse
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %result = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %result) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end12, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc17, %for.end12 ]
  store i32 %storemerge, ptr @l, align 4, !tbaa !5
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %storemerge, %0
  br i1 %cmp, label %for.cond1, label %for.cond19

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %2, %for.inc10 ], [ %0, %for.cond ]
  %storemerge4 = phi i32 [ %inc11, %for.inc10 ], [ 0, %for.cond ]
  store i32 %storemerge4, ptr @j, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %storemerge4, %1
  br i1 %cmp2, label %for.cond4, label %for.end12

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %2 = phi i32 [ %.pre7, %for.body6 ], [ %1, %for.cond1 ]
  %storemerge5 = phi i32 [ %inc, %for.body6 ], [ 0, %for.cond1 ]
  store i32 %storemerge5, ptr @k, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %storemerge5, %2
  %3 = load i32, ptr @j, align 4, !tbaa !5
  br i1 %cmp5, label %for.body6, label %for.inc10

for.body6:                                        ; preds = %for.cond4
  %idxprom = sext i32 %3 to i64
  %idxprom7 = sext i32 %storemerge5 to i64
  %arrayidx8 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %4 = load i32, ptr @k, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  %.pre7 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !19

for.inc10:                                        ; preds = %for.cond4
  %inc11 = add nsw i32 %3, 1
  br label %for.cond1, !llvm.loop !20

for.end12:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z4xiaoi(i32 noundef %1)
  %5 = load i32, ptr @l, align 4, !tbaa !5
  %idxprom14 = sext i32 %5 to i64
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %result, i64 0, i64 %idxprom14
  store i32 %call13, ptr %arrayidx15, align 4, !tbaa !5
  %inc17 = add nsw i32 %5, 1
  br label %for.cond, !llvm.loop !21

for.cond19:                                       ; preds = %for.cond, %for.body21
  %6 = phi i32 [ %.pre, %for.body21 ], [ %0, %for.cond ]
  %storemerge3 = phi i32 [ %inc27, %for.body21 ], [ 0, %for.cond ]
  store i32 %storemerge3, ptr @l, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %storemerge3, %6
  br i1 %cmp20, label %for.body21, label %for.end28

for.body21:                                       ; preds = %for.cond19
  %idxprom22 = sext i32 %storemerge3 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %result, i64 0, i64 %idxprom22
  %7 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %7)
  %vtable.i = load ptr, ptr %call24, align 8, !tbaa !22
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call24, i64 %vbase.offset.i
  %call.i6 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call24, i8 noundef signext %call.i6)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %8 = load i32, ptr @l, align 4, !tbaa !5
  %inc27 = add nsw i32 %8, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !24

for.end28:                                        ; preds = %for.cond19
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %result) #6
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
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !8, i64 0}
!24 = distinct !{!24, !10, !11}
