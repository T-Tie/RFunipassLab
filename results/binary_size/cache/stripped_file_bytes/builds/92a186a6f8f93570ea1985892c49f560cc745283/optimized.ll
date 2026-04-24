; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1ocsqoz9.cpp"
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z4zeroPA100_ii(ptr noundef captures(none) %a, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count54 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc40, %entry
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.inc40 ], [ 0, %entry ]
  %exitcond55.not = icmp eq i64 %indvars.iv51, %wide.trip.count54
  br i1 %exitcond55.not, label %for.cond44.preheader, label %for.body

for.cond44.preheader:                             ; preds = %for.cond
  %wide.trip.count59 = zext i32 %n to i64
  br label %for.cond44

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv51
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.body7, %for.body
  %1 = phi i32 [ %spec.store.select, %for.body7 ], [ %0, %for.body ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body7 ], [ 0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup6, label %for.body7

for.cond.cleanup6:                                ; preds = %for.cond4
  %cmp23.not = icmp eq i32 %1, 0
  br i1 %cmp23.not, label %for.inc40, label %for.cond26

for.body7:                                        ; preds = %for.cond4
  %arrayidx11 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv51, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !9

for.cond26:                                       ; preds = %for.cond.cleanup6, %for.body29
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.body29 ], [ 0, %for.cond.cleanup6 ]
  %exitcond50.not = icmp eq i64 %indvars.iv46, %wide.trip.count
  br i1 %exitcond50.not, label %for.inc40, label %for.body29

for.body29:                                       ; preds = %for.cond26
  %arrayidx35 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv51, i64 %indvars.iv46
  %3 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %sub = sub nsw i32 %3, %1
  store i32 %sub, ptr %arrayidx35, align 4, !tbaa !5
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond26, !llvm.loop !12

for.inc40:                                        ; preds = %for.cond26, %for.cond.cleanup6
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  br label %for.cond, !llvm.loop !13

for.cond44:                                       ; preds = %for.cond44.preheader, %for.inc96
  %indvars.iv66 = phi i64 [ 0, %for.cond44.preheader ], [ %indvars.iv.next67, %for.inc96 ]
  %exitcond70.not = icmp eq i64 %indvars.iv66, %wide.trip.count54
  br i1 %exitcond70.not, label %for.cond.cleanup46, label %for.body47

for.cond.cleanup46:                               ; preds = %for.cond44
  ret void

for.body47:                                       ; preds = %for.cond44
  %arrayidx50 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv66
  %4 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  br label %for.cond54

for.cond54:                                       ; preds = %for.body57, %for.body47
  %5 = phi i32 [ %spec.store.select44, %for.body57 ], [ %4, %for.body47 ]
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.body57 ], [ 0, %for.body47 ]
  %exitcond60.not = icmp eq i64 %indvars.iv56, %wide.trip.count59
  br i1 %exitcond60.not, label %for.cond.cleanup56, label %for.body57

for.cond.cleanup56:                               ; preds = %for.cond54
  %cmp78.not = icmp eq i32 %5, 0
  br i1 %cmp78.not, label %for.inc96, label %for.cond81

for.body57:                                       ; preds = %for.cond54
  %arrayidx61 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv56, i64 %indvars.iv66
  %6 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %spec.store.select44 = tail call i32 @llvm.smin.i32(i32 %6, i32 %5)
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br label %for.cond54, !llvm.loop !14

for.cond81:                                       ; preds = %for.cond.cleanup56, %for.body84
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %for.body84 ], [ 0, %for.cond.cleanup56 ]
  %exitcond65.not = icmp eq i64 %indvars.iv61, %wide.trip.count59
  br i1 %exitcond65.not, label %for.inc96, label %for.body84

for.body84:                                       ; preds = %for.cond81
  %arrayidx90 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv61, i64 %indvars.iv66
  %7 = load i32, ptr %arrayidx90, align 4, !tbaa !5
  %sub91 = sub nsw i32 %7, %5
  store i32 %sub91, ptr %arrayidx90, align 4, !tbaa !5
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  br label %for.cond81, !llvm.loop !15

for.inc96:                                        ; preds = %for.cond81, %for.cond.cleanup56
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %for.cond44, !llvm.loop !16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z10subductionPA100_ii(ptr noundef captures(none) %a, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %sub = add nsw i32 %n, -1
  %smax = tail call i32 @llvm.smax.i32(i32 %sub, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond13.preheader, label %for.body

for.cond13.preheader:                             ; preds = %for.cond
  %invariant.gep = getelementptr inbounds nuw i8, ptr %a, i64 400
  %wide.trip.count23 = zext i32 %sub to i64
  br label %for.cond13

for.body:                                         ; preds = %for.cond
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx1 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv.next
  %0 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %arrayidx4 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  store i32 %0, ptr %arrayidx4, align 4, !tbaa !5
  %arrayidx7 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv.next
  %1 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %arrayidx10 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv
  store i32 %1, ptr %arrayidx10, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !17

for.cond13:                                       ; preds = %for.cond13.preheader, %for.cond.cleanup21
  %indvars.iv25 = phi i64 [ 1, %for.cond13.preheader ], [ %indvars.iv.next26, %for.cond.cleanup21 ]
  %exitcond29.not = icmp eq i64 %indvars.iv25, %wide.trip.count
  br i1 %exitcond29.not, label %for.cond.cleanup16, label %for.cond18

for.cond.cleanup16:                               ; preds = %for.cond13
  ret void

for.cond18:                                       ; preds = %for.cond13, %for.body22
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.body22 ], [ 1, %for.cond13 ]
  %exitcond24.not = icmp eq i64 %indvars.iv20, %wide.trip.count23
  br i1 %exitcond24.not, label %for.cond.cleanup21, label %for.body22

for.cond.cleanup21:                               ; preds = %for.cond18
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond13, !llvm.loop !18

for.body22:                                       ; preds = %for.cond18
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %arrayidx28 = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %indvars.iv25, i64 %indvars.iv.next21
  %2 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %arrayidx32 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv25, i64 %indvars.iv20
  store i32 %2, ptr %arrayidx32, align 4, !tbaa !5
  br label %for.cond18, !llvm.loop !19
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %while.end, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc22, %while.end ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %t.0, %0
  br i1 %cmp, label %for.cond1, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0

for.cond1:                                        ; preds = %for.cond, %for.cond.cleanup7
  %1 = phi i32 [ %3, %for.cond.cleanup7 ], [ %0, %for.cond ]
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.cond.cleanup7 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv11, %2
  br i1 %cmp2, label %for.cond5, label %while.cond

for.cond5:                                        ; preds = %for.cond1, %for.body8
  %3 = phi i32 [ %.pre, %for.body8 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond1, !llvm.loop !20

for.body8:                                        ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv11, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !21

while.cond:                                       ; preds = %for.cond1, %while.body
  %m.0 = phi i32 [ %dec, %while.body ], [ %0, %for.cond1 ]
  %s.0 = phi i32 [ %add, %while.body ], [ 0, %for.cond1 ]
  %cmp15.not = icmp eq i32 %m.0, 1
  br i1 %cmp15.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  call void @_Z4zeroPA100_ii(ptr noundef nonnull %a, i32 noundef %m.0)
  %5 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %add = add nsw i32 %5, %s.0
  %dec = add nsw i32 %m.0, -1
  call void @_Z10subductionPA100_ii(ptr noundef nonnull %a, i32 noundef %m.0)
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %while.cond
  %call19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %s.0)
  %vtable.i = load ptr, ptr %call19, align 8, !tbaa !23
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call19, i64 %vbase.offset.i
  %call.i9 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call19, i8 noundef signext %call.i9)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc22 = add nuw nsw i32 %t.0, 1
  br label %for.cond, !llvm.loop !25
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

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !8, i64 0}
!25 = distinct !{!25, !10, !11}
