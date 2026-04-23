; ModuleID = '<stdin>'
source_filename = "/tmp/tmp97wllapo.cpp"
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

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %num = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %num) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4000) %num, i8 0, i64 4000, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 1, ptr %num, align 16, !tbaa !5
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %smax33 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %1 = add nuw i32 %smax33, 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc33, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc34, %for.inc33 ]
  %len.0 = phi i32 [ undef, %entry ], [ %len.1, %for.inc33 ]
  %exitcond34 = icmp eq i32 %i.0, %1
  br i1 %exitcond34, label %for.cond36, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc
  %j.0 = phi i32 [ %dec, %for.inc ], [ 999, %for.cond ]
  %cmp2 = icmp sgt i32 %j.0, -1
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %idxprom = zext nneg i32 %j.0 to i64
  %arrayidx4 = getelementptr inbounds nuw [1000 x i32], ptr %num, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %cmp5.not = icmp eq i32 %2, 0
  br i1 %cmp5.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body3
  %dec = add nsw i32 %j.0, -1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.body3, %for.cond1
  %len.1 = phi i32 [ %len.0, %for.cond1 ], [ %j.0, %for.body3 ]
  %smax = call i32 @llvm.smax.i32(i32 %len.1, i32 -1)
  %3 = add i32 %smax, 1
  %wide.trip.count = zext i32 %3 to i64
  br label %for.cond6

for.cond6:                                        ; preds = %for.body8, %for.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.end ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.cond13, label %for.body8

for.body8:                                        ; preds = %for.cond6
  %arrayidx10 = getelementptr inbounds nuw [1000 x i32], ptr %num, i64 0, i64 %indvars.iv
  %4 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %mul = shl nsw i32 %4, 1
  store i32 %mul, ptr %arrayidx10, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond6, !llvm.loop !12

for.cond13:                                       ; preds = %for.cond6, %for.cond13.backedge
  %indvars.iv27 = phi i64 [ %indvars.iv27.be, %for.cond13.backedge ], [ 0, %for.cond6 ]
  %exitcond32 = icmp eq i64 %indvars.iv27, %wide.trip.count
  br i1 %exitcond32, label %for.inc33, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx17 = getelementptr inbounds nuw [1000 x i32], ptr %num, i64 0, i64 %indvars.iv27
  %5 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %cmp18 = icmp sgt i32 %5, 9
  br i1 %cmp18, label %if.then19, label %for.body15.for.inc30_crit_edge

for.body15.for.inc30_crit_edge:                   ; preds = %for.body15
  %.pre = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond13.backedge

for.cond13.backedge:                              ; preds = %for.body15.for.inc30_crit_edge, %if.then19
  %indvars.iv27.be = phi i64 [ %.pre, %for.body15.for.inc30_crit_edge ], [ %6, %if.then19 ]
  br label %for.cond13, !llvm.loop !13

if.then19:                                        ; preds = %for.body15
  %div = udiv i32 %5, 10
  %6 = add nuw nsw i64 %indvars.iv27, 1
  %arrayidx23 = getelementptr inbounds nuw [1000 x i32], ptr %num, i64 0, i64 %6
  %7 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %add24 = add nsw i32 %7, %div
  store i32 %add24, ptr %arrayidx23, align 4, !tbaa !5
  %rem25 = urem i32 %5, 10
  store i32 %rem25, ptr %arrayidx17, align 4, !tbaa !5
  br label %for.cond13.backedge

for.inc33:                                        ; preds = %for.cond13
  %inc34 = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !14

for.cond36:                                       ; preds = %for.cond, %for.inc44
  %j.3 = phi i32 [ %dec45, %for.inc44 ], [ 999, %for.cond ]
  %cmp37 = icmp sgt i32 %j.3, -1
  br i1 %cmp37, label %for.body38, label %for.cond47.preheader

for.cond47.preheader:                             ; preds = %for.body38, %for.cond36
  %i.1.ph = phi i32 [ %j.3, %for.body38 ], [ %len.0, %for.cond36 ]
  br label %for.cond47

for.body38:                                       ; preds = %for.cond36
  %idxprom39 = zext nneg i32 %j.3 to i64
  %arrayidx40 = getelementptr inbounds nuw [1000 x i32], ptr %num, i64 0, i64 %idxprom39
  %8 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41.not = icmp eq i32 %8, 0
  br i1 %cmp41.not, label %for.inc44, label %for.cond47.preheader

for.inc44:                                        ; preds = %for.body38
  %dec45 = add nsw i32 %j.3, -1
  br label %for.cond36, !llvm.loop !15

for.cond47:                                       ; preds = %for.cond47.preheader, %for.body49
  %i.1 = phi i32 [ %dec54, %for.body49 ], [ %i.1.ph, %for.cond47.preheader ]
  %cmp48 = icmp sgt i32 %i.1, -1
  br i1 %cmp48, label %for.body49, label %for.end55

for.body49:                                       ; preds = %for.cond47
  %idxprom50 = zext nneg i32 %i.1 to i64
  %arrayidx51 = getelementptr inbounds nuw [1000 x i32], ptr %num, i64 0, i64 %idxprom50
  %9 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %call52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %9)
  %dec54 = add nsw i32 %i.1, -1
  br label %for.cond47, !llvm.loop !16

for.end55:                                        ; preds = %for.cond47
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i24 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i24)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %num) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !8, i64 0}
