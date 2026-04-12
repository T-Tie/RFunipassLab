; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmxo0dc64.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [103 x [103 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef range(i32 -2147483648, 100001) i32 @_Z7FindMinii(i32 noundef %x, i32 noundef %y) local_unnamed_addr #0 {
entry:
  %idxprom = sext i32 %x to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %y, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ret.0 = phi i32 [ %spec.select, %for.body ], [ 100000, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.cond
  ret i32 %ret.0

for.body:                                         ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds [103 x [103 x i32]], ptr @a, i64 0, i64 %idxprom, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %0, i32 %ret.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef range(i32 -2147483648, 100001) i32 @_Z8FindMin1ii(i32 noundef %x, i32 noundef %y) local_unnamed_addr #0 {
entry:
  %idxprom1 = sext i32 %x to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %y, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ret.0 = phi i32 [ %spec.select, %for.body ], [ 100000, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.cond
  ret i32 %ret.0

for.body:                                         ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds [103 x [103 x i32]], ptr @a, i64 0, i64 %indvars.iv, i64 %idxprom1
  %0 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %0, i32 %ret.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !12
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %if.then, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc112, %if.then ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %k.0, %0
  br i1 %cmp, label %for.cond1, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0

for.cond1:                                        ; preds = %for.cond, %for.cond.cleanup7
  %1 = phi i32 [ %4, %for.cond.cleanup7 ], [ %0, %for.cond ]
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.cond.cleanup7 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv53, %2
  br i1 %cmp2, label %for.cond5, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.cond1
  %3 = sext i32 %0 to i64
  br label %while.cond

for.cond5:                                        ; preds = %for.cond1, %for.body8
  %4 = phi i32 [ %.pre, %for.body8 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.cond1 ]
  %5 = sext i32 %4 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond1, !llvm.loop !13

for.body8:                                        ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [103 x [103 x i32]], ptr @a, i64 0, i64 %indvars.iv53, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !14

while.cond.loopexit:                              ; preds = %for.cond86
  %add = add nsw i32 %10, %sum.0
  br label %while.cond, !llvm.loop !15

while.cond:                                       ; preds = %while.cond.preheader, %while.cond.loopexit
  %indvars.iv93 = phi i64 [ %3, %while.cond.preheader ], [ %indvars.iv.next94, %while.cond.loopexit ]
  %sum.0 = phi i32 [ 0, %while.cond.preheader ], [ %add, %while.cond.loopexit ]
  %6 = icmp eq i64 %indvars.iv93, 1
  br i1 %6, label %if.then, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %while.cond
  %7 = trunc nsw i64 %indvars.iv93 to i32
  %smax87 = call i32 @llvm.smax.i32(i32 %7, i32 0)
  %wide.trip.count.i = zext nneg i32 %smax87 to i64
  %wide.trip.count = and i64 %indvars.iv93, 4294967295
  br label %for.cond18

if.then:                                          ; preds = %while.cond
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %vtable.i = load ptr, ptr %call16, align 8, !tbaa !16
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call16, i64 %vbase.offset.i
  %call.i51 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call16, i8 noundef signext %call.i51)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc112 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !18

for.cond18:                                       ; preds = %for.cond18.preheader, %for.cond.cleanup25
  %indvars.iv59 = phi i64 [ 0, %for.cond18.preheader ], [ %indvars.iv.next60, %for.cond.cleanup25 ]
  %exitcond63.not = icmp eq i64 %indvars.iv59, %wide.trip.count.i
  br i1 %exitcond63.not, label %for.cond38.preheader, label %for.cond.i

for.cond38.preheader:                             ; preds = %for.cond18
  %wide.trip.count67 = and i64 %indvars.iv93, 4294967295
  br label %for.cond38

for.cond.i:                                       ; preds = %for.cond18, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %for.cond18 ]
  %ret.0.i = phi i32 [ %spec.select.i, %for.body.i ], [ 100000, %for.cond18 ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.cond23, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx2.i = getelementptr inbounds nuw [103 x [103 x i32]], ptr @a, i64 0, i64 %indvars.iv59, i64 %indvars.iv.i
  %8 = load i32, ptr %arrayidx2.i, align 4, !tbaa !5
  %spec.select.i = call i32 @llvm.smin.i32(i32 %8, i32 %ret.0.i)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond.i, !llvm.loop !9

for.cond23:                                       ; preds = %for.cond.i, %for.body26
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.body26 ], [ 0, %for.cond.i ]
  %exitcond.not = icmp eq i64 %indvars.iv56, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup25, label %for.body26

for.cond.cleanup25:                               ; preds = %for.cond23
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  br label %for.cond18, !llvm.loop !19

for.body26:                                       ; preds = %for.cond23
  %arrayidx30 = getelementptr inbounds nuw [103 x [103 x i32]], ptr @a, i64 0, i64 %indvars.iv59, i64 %indvars.iv56
  %9 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %sub = sub nsw i32 %9, %ret.0.i
  store i32 %sub, ptr %arrayidx30, align 4, !tbaa !5
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br label %for.cond23, !llvm.loop !20

for.cond38:                                       ; preds = %for.cond38.preheader, %for.cond.cleanup46
  %indvars.iv69 = phi i64 [ 0, %for.cond38.preheader ], [ %indvars.iv.next70, %for.cond.cleanup46 ]
  %exitcond74.not = icmp eq i64 %indvars.iv69, %wide.trip.count.i
  br i1 %exitcond74.not, label %for.cond.cleanup40, label %for.cond.i43

for.cond.cleanup40:                               ; preds = %for.cond38
  %10 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 416), align 16, !tbaa !5
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, -1
  br label %for.cond60

for.cond.i43:                                     ; preds = %for.cond38, %for.body.i47
  %indvars.iv.i44 = phi i64 [ %indvars.iv.next.i50, %for.body.i47 ], [ 0, %for.cond38 ]
  %ret.0.i45 = phi i32 [ %spec.select.i49, %for.body.i47 ], [ 100000, %for.cond38 ]
  %exitcond.not.i46 = icmp eq i64 %indvars.iv.i44, %wide.trip.count.i
  br i1 %exitcond.not.i46, label %for.cond44, label %for.body.i47

for.body.i47:                                     ; preds = %for.cond.i43
  %arrayidx2.i48 = getelementptr inbounds nuw [103 x [103 x i32]], ptr @a, i64 0, i64 %indvars.iv.i44, i64 %indvars.iv69
  %11 = load i32, ptr %arrayidx2.i48, align 4, !tbaa !5
  %spec.select.i49 = call i32 @llvm.smin.i32(i32 %11, i32 %ret.0.i45)
  %indvars.iv.next.i50 = add nuw nsw i64 %indvars.iv.i44, 1
  br label %for.cond.i43, !llvm.loop !12

for.cond44:                                       ; preds = %for.cond.i43, %for.body47
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %for.body47 ], [ 0, %for.cond.i43 ]
  %exitcond68.not = icmp eq i64 %indvars.iv64, %wide.trip.count67
  br i1 %exitcond68.not, label %for.cond.cleanup46, label %for.body47

for.cond.cleanup46:                               ; preds = %for.cond44
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  br label %for.cond38, !llvm.loop !21

for.body47:                                       ; preds = %for.cond44
  %arrayidx51 = getelementptr inbounds nuw [103 x [103 x i32]], ptr @a, i64 0, i64 %indvars.iv64, i64 %indvars.iv69
  %12 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %sub52 = sub nsw i32 %12, %ret.0.i45
  store i32 %sub52, ptr %arrayidx51, align 4, !tbaa !5
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br label %for.cond44, !llvm.loop !22

for.cond60:                                       ; preds = %for.cond66, %for.cond.cleanup40
  %indvars.iv81 = phi i64 [ 1, %for.cond.cleanup40 ], [ %indvars.iv.next82, %for.cond66 ]
  %cmp62 = icmp slt i64 %indvars.iv81, %indvars.iv.next94
  br i1 %cmp62, label %for.cond66.preheader, label %for.cond86

for.cond66.preheader:                             ; preds = %for.cond60
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  br label %for.cond66

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body69
  %indvars.iv75 = phi i64 [ 0, %for.cond66.preheader ], [ %indvars.iv.next76, %for.body69 ]
  %exitcond80.not = icmp eq i64 %indvars.iv75, %wide.trip.count.i
  br i1 %exitcond80.not, label %for.cond60, label %for.body69, !llvm.loop !23

for.body69:                                       ; preds = %for.cond66
  %arrayidx74 = getelementptr inbounds nuw [103 x [103 x i32]], ptr @a, i64 0, i64 %indvars.iv.next82, i64 %indvars.iv75
  %13 = load i32, ptr %arrayidx74, align 4, !tbaa !5
  %arrayidx78 = getelementptr inbounds nuw [103 x [103 x i32]], ptr @a, i64 0, i64 %indvars.iv81, i64 %indvars.iv75
  store i32 %13, ptr %arrayidx78, align 4, !tbaa !5
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  br label %for.cond66, !llvm.loop !24

for.cond86:                                       ; preds = %for.cond92, %for.cond60
  %indvars.iv90 = phi i64 [ 1, %for.cond60 ], [ %indvars.iv.next91, %for.cond92 ]
  %cmp88 = icmp slt i64 %indvars.iv90, %indvars.iv.next94
  br i1 %cmp88, label %for.cond92.preheader, label %while.cond.loopexit

for.cond92.preheader:                             ; preds = %for.cond86
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %for.cond92

for.cond92:                                       ; preds = %for.cond92.preheader, %for.body95
  %indvars.iv84 = phi i64 [ 0, %for.cond92.preheader ], [ %indvars.iv.next85, %for.body95 ]
  %exitcond89.not = icmp eq i64 %indvars.iv84, %wide.trip.count.i
  br i1 %exitcond89.not, label %for.cond86, label %for.body95, !llvm.loop !25

for.body95:                                       ; preds = %for.cond92
  %arrayidx100 = getelementptr inbounds nuw [103 x [103 x i32]], ptr @a, i64 0, i64 %indvars.iv84, i64 %indvars.iv.next91
  %14 = load i32, ptr %arrayidx100, align 4, !tbaa !5
  %arrayidx104 = getelementptr inbounds nuw [103 x [103 x i32]], ptr @a, i64 0, i64 %indvars.iv84, i64 %indvars.iv90
  store i32 %14, ptr %arrayidx104, align 4, !tbaa !5
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  br label %for.cond92, !llvm.loop !26
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

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !8, i64 0}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
