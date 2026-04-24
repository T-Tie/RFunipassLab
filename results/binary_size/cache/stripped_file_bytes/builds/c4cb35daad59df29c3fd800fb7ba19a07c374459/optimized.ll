; ModuleID = '<stdin>'
source_filename = "/tmp/tmph87e372d.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [100 x [100 x [100 x i32]]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z3SumiPA100_i(i32 noundef %n, ptr noundef captures(none) %t) local_unnamed_addr #0 {
entry:
  %arrayidx65 = getelementptr inbounds nuw i8, ptr %t, i64 404
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end98, %entry
  %indvars.iv94.in = phi i32 [ %indvars.iv94, %for.end98 ], [ %n, %entry ]
  %accumulator.tr = phi i32 [ %add100, %for.end98 ], [ 0, %entry ]
  %n.tr = phi i32 [ %sub70, %for.end98 ], [ %n, %entry ]
  %indvars.iv94 = add i32 %indvars.iv94.in, -1
  %smax101 = tail call i32 @llvm.smax.i32(i32 %indvars.iv94, i32 0)
  %smax88 = tail call i32 @llvm.smax.i32(i32 %n.tr, i32 0)
  %wide.trip.count73 = zext nneg i32 %smax88 to i64
  %wide.trip.count = zext i32 %n.tr to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %tailrecurse
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.inc24 ], [ 0, %tailrecurse ]
  %exitcond74.not = icmp eq i64 %indvars.iv70, %wide.trip.count73
  br i1 %exitcond74.not, label %for.cond27.preheader, label %for.body

for.cond27.preheader:                             ; preds = %for.cond
  %wide.trip.count78 = zext i32 %n.tr to i64
  br label %for.cond27

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %indvars.iv70
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx8 = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %indvars.iv70, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.cond14:                                       ; preds = %for.cond2, %for.body16
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.body16 ], [ 0, %for.cond2 ]
  %exitcond69.not = icmp eq i64 %indvars.iv65, %wide.trip.count
  br i1 %exitcond69.not, label %for.inc24, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %indvars.iv70, i64 %indvars.iv65
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  br label %for.cond14, !llvm.loop !12

for.inc24:                                        ; preds = %for.cond14
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %for.cond, !llvm.loop !13

for.cond27:                                       ; preds = %for.cond27.preheader, %for.inc61
  %indvars.iv85 = phi i64 [ 0, %for.cond27.preheader ], [ %indvars.iv.next86, %for.inc61 ]
  %exitcond90.not = icmp eq i64 %indvars.iv85, %wide.trip.count73
  br i1 %exitcond90.not, label %for.end63, label %for.body29

for.body29:                                       ; preds = %for.cond27
  %arrayidx32 = getelementptr inbounds nuw [100 x i32], ptr %t, i64 0, i64 %indvars.iv85
  %3 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.body35, %for.body29
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %for.body35 ], [ 0, %for.body29 ]
  %min.2 = phi i32 [ %spec.select62, %for.body35 ], [ %3, %for.body29 ]
  %exitcond79.not = icmp eq i64 %indvars.iv75, %wide.trip.count78
  br i1 %exitcond79.not, label %for.cond50, label %for.body35

for.body35:                                       ; preds = %for.cond33
  %arrayidx39 = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %indvars.iv75, i64 %indvars.iv85
  %4 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %spec.select62 = tail call i32 @llvm.smin.i32(i32 %4, i32 %min.2)
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  br label %for.cond33, !llvm.loop !14

for.cond50:                                       ; preds = %for.cond33, %for.body52
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %for.body52 ], [ 0, %for.cond33 ]
  %exitcond84.not = icmp eq i64 %indvars.iv80, %wide.trip.count78
  br i1 %exitcond84.not, label %for.inc61, label %for.body52

for.body52:                                       ; preds = %for.cond50
  %arrayidx56 = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %indvars.iv80, i64 %indvars.iv85
  %5 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %sub57 = sub nsw i32 %5, %min.2
  store i32 %sub57, ptr %arrayidx56, align 4, !tbaa !5
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br label %for.cond50, !llvm.loop !15

for.inc61:                                        ; preds = %for.cond50
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %for.cond27, !llvm.loop !16

for.end63:                                        ; preds = %for.cond27
  %6 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %cmp66 = icmp eq i32 %n.tr, 2
  br i1 %cmp66, label %cleanup, label %for.cond69.preheader

for.cond69.preheader:                             ; preds = %for.end63
  %wide.trip.count102 = zext nneg i32 %smax101 to i64
  %wide.trip.count96 = zext i32 %indvars.iv94 to i64
  br label %for.cond69

for.cond69:                                       ; preds = %for.cond73, %for.cond69.preheader
  %indvars.iv98 = phi i64 [ 0, %for.cond69.preheader ], [ %indvars.iv.next99, %for.cond73 ]
  %exitcond103.not = icmp eq i64 %indvars.iv98, %wide.trip.count102
  br i1 %exitcond103.not, label %for.end98, label %for.cond73.preheader

for.cond73.preheader:                             ; preds = %for.cond69
  %cmp80 = icmp eq i64 %indvars.iv98, 0
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  %7 = and i64 %indvars.iv.next99, 4294967295
  %tempi.0 = select i1 %cmp80, i64 0, i64 %7
  br label %for.cond73

for.cond73:                                       ; preds = %for.cond73.preheader, %for.body76
  %indvars.iv91 = phi i64 [ 0, %for.cond73.preheader ], [ %indvars.iv.next92, %for.body76 ]
  %exitcond97.not = icmp eq i64 %indvars.iv91, %wide.trip.count96
  br i1 %exitcond97.not, label %for.cond69, label %for.body76, !llvm.loop !17

for.body76:                                       ; preds = %for.cond73
  %cmp77 = icmp eq i64 %indvars.iv91, 0
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %8 = and i64 %indvars.iv.next92, 4294967295
  %tempj.0 = select i1 %cmp77, i64 0, i64 %8
  %arrayidx88 = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %tempi.0, i64 %tempj.0
  %9 = load i32, ptr %arrayidx88, align 4, !tbaa !5
  %arrayidx92 = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %indvars.iv98, i64 %indvars.iv91
  store i32 %9, ptr %arrayidx92, align 4, !tbaa !5
  br label %for.cond73, !llvm.loop !18

for.end98:                                        ; preds = %for.cond69
  %sub70 = add nsw i32 %n.tr, -1
  %add100 = add nsw i32 %6, %accumulator.tr
  br label %tailrecurse

cleanup:                                          ; preds = %for.end63
  %accumulator.ret.tr = add nsw i32 %6, %accumulator.tr
  ret i32 %accumulator.ret.tr
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4000000) @a, i8 0, i64 4000000, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup3, %entry
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %for.cond.cleanup3 ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv13, %1
  br i1 %cmp, label %for.cond1, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0

for.cond1:                                        ; preds = %for.cond, %for.cond.cleanup7
  %2 = phi i32 [ %4, %for.cond.cleanup7 ], [ %0, %for.cond ]
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.cond.cleanup7 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv10, %3
  br i1 %cmp2, label %for.cond5, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  %arrayidx18 = getelementptr inbounds nuw [100 x [100 x [100 x i32]]], ptr @a, i64 0, i64 %indvars.iv13
  %call19 = call noundef i32 @_Z3SumiPA100_i(i32 noundef %2, ptr noundef nonnull %arrayidx18)
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call19)
  %vtable.i = load ptr, ptr %call20, align 8, !tbaa !19
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call20, i64 %vbase.offset.i
  %call.i8 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call20, i8 noundef signext %call.i8)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond, !llvm.loop !21

for.cond5:                                        ; preds = %for.cond1, %for.body8
  %4 = phi i32 [ %.pre, %for.body8 ], [ %2, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.cond1 ]
  %5 = sext i32 %4 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond1, !llvm.loop !22

for.body8:                                        ; preds = %for.cond5
  %arrayidx12 = getelementptr inbounds nuw [100 x [100 x [100 x i32]]], ptr @a, i64 0, i64 %indvars.iv13, i64 %indvars.iv10, i64 %indvars.iv
  %call13 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx12)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !23
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!19 = !{!20, !20, i64 0}
!20 = !{!"vtable pointer", !8, i64 0}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
