; ModuleID = '<stdin>'
source_filename = "/tmp/tmpgqmbzjsw.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@matrix = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z6changeii(i32 noundef %k, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %idxprom = sext i32 %k to i64
  %arrayidx2 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom, i64 %idxprom
  %0 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %add = add nsw i32 %k, 1
  %idxprom3 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom3, i64 %idxprom3
  store i32 %0, ptr %arrayidx7, align 4, !tbaa !5
  %add8 = add nsw i32 %k, 2
  %cmp.not.not = icmp sgt i32 %n, %add8
  br i1 %cmp.not.not, label %for.cond.preheader, label %if.end

for.cond.preheader:                               ; preds = %entry
  %1 = add nsw i64 %idxprom, 2
  %wide.trip.count = sext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %1, %for.cond.preheader ], [ %indvars.iv.next, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond22, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx15 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %arrayidx20 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom3, i64 %indvars.iv
  store i32 %2, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond22:                                       ; preds = %for.cond, %for.body25
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.body25 ], [ %1, %for.cond ]
  %exitcond25.not = icmp eq i64 %indvars.iv21, %wide.trip.count
  br i1 %exitcond25.not, label %if.end, label %for.body25

for.body25:                                       ; preds = %for.cond22
  %arrayidx29 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv21, i64 %idxprom
  %3 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %arrayidx34 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv21, i64 %idxprom3
  store i32 %3, ptr %arrayidx34, align 4, !tbaa !5
  %indvars.iv.next22 = add nsw i64 %indvars.iv21, 1
  br label %for.cond22, !llvm.loop !12

if.end:                                           ; preds = %for.cond22, %entry
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
  %sum = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  store i32 0, ptr %n, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %sum) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %sum, i8 0, i64 400, i1 false)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.end111, %entry
  %0 = phi i32 [ %8, %for.end111 ], [ %.pre, %entry ]
  %1 = phi i32 [ %9, %for.end111 ], [ %.pre, %entry ]
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %for.end111 ], [ 0, %entry ]
  %2 = sext i32 %1 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv90, %2
  br i1 %cmp.not.not, label %for.cond1, label %for.cond115

for.cond1:                                        ; preds = %for.cond, %for.inc12
  %3 = phi i32 [ %6, %for.inc12 ], [ %0, %for.cond ]
  %4 = phi i32 [ %6, %for.inc12 ], [ %1, %for.cond ]
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.inc12 ], [ 0, %for.cond ]
  %5 = sext i32 %4 to i64
  %cmp3.not.not = icmp slt i64 %indvars.iv56, %5
  br i1 %cmp3.not.not, label %for.cond5, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond1
  %arrayidx100 = getelementptr inbounds nuw [100 x i32], ptr %sum, i64 0, i64 %indvars.iv90
  br label %for.cond15

for.cond5:                                        ; preds = %for.cond1, %for.body8
  %6 = phi i32 [ %.pre98, %for.body8 ], [ %3, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.cond1 ]
  %7 = sext i32 %6 to i64
  %cmp7.not.not = icmp slt i64 %indvars.iv, %7
  br i1 %cmp7.not.not, label %for.body8, label %for.inc12

for.body8:                                        ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv56, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre98 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !13

for.inc12:                                        ; preds = %for.cond5
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br label %for.cond1, !llvm.loop !14

for.cond15:                                       ; preds = %for.cond15.preheader, %for.end98
  %8 = phi i32 [ %3, %for.cond15.preheader ], [ %.pre97, %for.end98 ]
  %9 = phi i32 [ %4, %for.cond15.preheader ], [ %.pre97, %for.end98 ]
  %indvars.iv59 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next60, %for.end98 ]
  %sub16 = add nsw i32 %9, -2
  %10 = sext i32 %sub16 to i64
  %cmp17.not = icmp sgt i64 %indvars.iv59, %10
  br i1 %cmp17.not, label %for.end111, label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.cond15
  %wide.trip.count72 = zext i32 %9 to i64
  br label %for.cond19

for.cond19:                                       ; preds = %for.cond19.preheader, %for.inc55
  %indvars.iv69 = phi i64 [ %indvars.iv59, %for.cond19.preheader ], [ %indvars.iv.next70, %for.inc55 ]
  %exitcond73.not = icmp eq i64 %indvars.iv69, %wide.trip.count72
  br i1 %exitcond73.not, label %for.cond58, label %for.cond23

for.cond23:                                       ; preds = %for.cond19, %for.body26
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %for.body26 ], [ %indvars.iv59, %for.cond19 ]
  %min.0 = phi i32 [ %spec.select, %for.body26 ], [ 10000, %for.cond19 ]
  %exitcond.not = icmp eq i64 %indvars.iv61, %wide.trip.count72
  br i1 %exitcond.not, label %for.cond39, label %for.body26

for.body26:                                       ; preds = %for.cond23
  %arrayidx30 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv69, i64 %indvars.iv61
  %11 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %11, i32 %min.0)
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  br label %for.cond23, !llvm.loop !15

for.cond39:                                       ; preds = %for.cond23, %for.body42
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %for.body42 ], [ %indvars.iv59, %for.cond23 ]
  %exitcond68.not = icmp eq i64 %indvars.iv64, %wide.trip.count72
  br i1 %exitcond68.not, label %for.inc55, label %for.body42

for.body42:                                       ; preds = %for.cond39
  %arrayidx46 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv69, i64 %indvars.iv64
  %12 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %sub47 = sub nsw i32 %12, %min.0
  store i32 %sub47, ptr %arrayidx46, align 4, !tbaa !5
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br label %for.cond39, !llvm.loop !16

for.inc55:                                        ; preds = %for.cond39
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  br label %for.cond19, !llvm.loop !17

for.cond58:                                       ; preds = %for.cond19, %for.inc96
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %for.inc96 ], [ %indvars.iv59, %for.cond19 ]
  %exitcond88.not = icmp eq i64 %indvars.iv84, %wide.trip.count72
  br i1 %exitcond88.not, label %for.end98, label %for.cond62

for.cond62:                                       ; preds = %for.cond58, %for.body65
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %for.body65 ], [ %indvars.iv59, %for.cond58 ]
  %min.2 = phi i32 [ %spec.select53, %for.body65 ], [ 10000, %for.cond58 ]
  %exitcond78.not = icmp eq i64 %indvars.iv74, %wide.trip.count72
  br i1 %exitcond78.not, label %for.cond80, label %for.body65

for.body65:                                       ; preds = %for.cond62
  %arrayidx69 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv74, i64 %indvars.iv84
  %13 = load i32, ptr %arrayidx69, align 4, !tbaa !5
  %spec.select53 = call i32 @llvm.smin.i32(i32 %13, i32 %min.2)
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %for.cond62, !llvm.loop !18

for.cond80:                                       ; preds = %for.cond62, %for.body83
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %for.body83 ], [ %indvars.iv59, %for.cond62 ]
  %exitcond83.not = icmp eq i64 %indvars.iv79, %wide.trip.count72
  br i1 %exitcond83.not, label %for.inc96, label %for.body83

for.body83:                                       ; preds = %for.cond80
  %arrayidx87 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv79, i64 %indvars.iv84
  %14 = load i32, ptr %arrayidx87, align 4, !tbaa !5
  %sub88 = sub nsw i32 %14, %min.2
  store i32 %sub88, ptr %arrayidx87, align 4, !tbaa !5
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  br label %for.cond80, !llvm.loop !19

for.inc96:                                        ; preds = %for.cond80
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  br label %for.cond58, !llvm.loop !20

for.end98:                                        ; preds = %for.cond58
  %15 = load i32, ptr %arrayidx100, align 4, !tbaa !5
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %arrayidx105 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv.next60, i64 %indvars.iv.next60
  %16 = load i32, ptr %arrayidx105, align 4, !tbaa !5
  %add106 = add nsw i32 %16, %15
  store i32 %add106, ptr %arrayidx100, align 4, !tbaa !5
  %17 = trunc nuw nsw i64 %indvars.iv59 to i32
  call void @_Z6changeii(i32 noundef %17, i32 noundef %9)
  %.pre97 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !21

for.end111:                                       ; preds = %for.cond15
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %for.cond, !llvm.loop !22

for.cond115:                                      ; preds = %for.cond, %for.body118
  %18 = phi i32 [ %.pre96, %for.body118 ], [ %1, %for.cond ]
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %for.body118 ], [ 0, %for.cond ]
  %19 = sext i32 %18 to i64
  %cmp117.not.not = icmp slt i64 %indvars.iv93, %19
  br i1 %cmp117.not.not, label %for.body118, label %for.end125

for.body118:                                      ; preds = %for.cond115
  %arrayidx120 = getelementptr inbounds nuw [100 x i32], ptr %sum, i64 0, i64 %indvars.iv93
  %20 = load i32, ptr %arrayidx120, align 4, !tbaa !5
  %call121 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %20)
  %vtable.i = load ptr, ptr %call121, align 8, !tbaa !23
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call121, i64 %vbase.offset.i
  %call.i54 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call121, i8 noundef signext %call.i54)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  %.pre96 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond115, !llvm.loop !25

for.end125:                                       ; preds = %for.cond115
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %sum) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !8, i64 0}
!25 = distinct !{!25, !10, !11}
