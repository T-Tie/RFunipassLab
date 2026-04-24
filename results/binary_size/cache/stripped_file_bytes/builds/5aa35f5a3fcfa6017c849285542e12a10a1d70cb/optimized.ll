; ModuleID = '<stdin>'
source_filename = "/tmp/tmpts2hjnp6.cpp"
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
@a = dso_local global [200 x [200 x i32]] zeroinitializer, align 16
@temp = dso_local local_unnamed_addr global i32 0, align 4
@sum = dso_local local_unnamed_addr global [200 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z4zeroi(i32 noundef %i) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %1 = sext i32 %i to i64
  %2 = sext i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup10, %entry
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.cond.cleanup10 ], [ %1, %entry ]
  %cmp.not = icmp sgt i64 %indvars.iv43, %2
  br i1 %cmp.not, label %for.cond29, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond
  %add.ptr = getelementptr inbounds [200 x i32], ptr @a, i64 %indvars.iv43
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body4
  %indvars.iv = phi i64 [ %1, %for.cond1.preheader ], [ %indvars.iv.next, %for.body4 ]
  %mi.1 = phi i32 [ 1000, %for.cond1.preheader ], [ %.sroa.speculated31, %for.body4 ]
  %cmp2.not = icmp sgt i64 %indvars.iv, %2
  br i1 %cmp2.not, label %for.cond8, label %for.body4

for.body4:                                        ; preds = %for.cond1
  %add.ptr6 = getelementptr inbounds i32, ptr %add.ptr, i64 %indvars.iv
  %3 = load i32, ptr %add.ptr6, align 4, !tbaa !5
  %.sroa.speculated31 = tail call i32 @llvm.smin.i32(i32 %mi.1, i32 %3)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.cond8:                                        ; preds = %for.cond1, %for.body11
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.body11 ], [ %1, %for.cond1 ]
  %cmp9.not = icmp sgt i64 %indvars.iv40, %2
  br i1 %cmp9.not, label %for.cond.cleanup10, label %for.body11

for.cond.cleanup10:                               ; preds = %for.cond8
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, 1
  br label %for.cond, !llvm.loop !12

for.body11:                                       ; preds = %for.cond8
  %add.ptr16 = getelementptr inbounds i32, ptr %add.ptr, i64 %indvars.iv40
  %4 = load i32, ptr %add.ptr16, align 4, !tbaa !5
  %sub = sub nsw i32 %4, %mi.1
  store i32 %sub, ptr %add.ptr16, align 4, !tbaa !5
  %indvars.iv.next41 = add nsw i64 %indvars.iv40, 1
  br label %for.cond8, !llvm.loop !13

for.cond29:                                       ; preds = %for.cond, %for.cond.cleanup50
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.cond.cleanup50 ], [ %1, %for.cond ]
  %cmp30.not = icmp sgt i64 %indvars.iv52, %2
  br i1 %cmp30.not, label %for.cond.cleanup31, label %for.cond34.preheader

for.cond34.preheader:                             ; preds = %for.cond29
  %invariant.gep = getelementptr i32, ptr @a, i64 %indvars.iv52
  br label %for.cond34

for.cond.cleanup31:                               ; preds = %for.cond29
  ret void

for.cond34:                                       ; preds = %for.cond34.preheader, %for.body37
  %indvars.iv46 = phi i64 [ %1, %for.cond34.preheader ], [ %indvars.iv.next47, %for.body37 ]
  %mi.3 = phi i32 [ 1000, %for.cond34.preheader ], [ %.sroa.speculated, %for.body37 ]
  %cmp35.not = icmp sgt i64 %indvars.iv46, %2
  br i1 %cmp35.not, label %for.cond48, label %for.body37

for.body37:                                       ; preds = %for.cond34
  %gep = getelementptr [200 x i32], ptr %invariant.gep, i64 %indvars.iv46
  %5 = load i32, ptr %gep, align 4, !tbaa !5
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %mi.3, i32 %5)
  %indvars.iv.next47 = add nsw i64 %indvars.iv46, 1
  br label %for.cond34, !llvm.loop !14

for.cond48:                                       ; preds = %for.cond34, %for.body51
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.body51 ], [ %1, %for.cond34 ]
  %cmp49.not = icmp sgt i64 %indvars.iv49, %2
  br i1 %cmp49.not, label %for.cond.cleanup50, label %for.body51

for.cond.cleanup50:                               ; preds = %for.cond48
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, 1
  br label %for.cond29, !llvm.loop !15

for.body51:                                       ; preds = %for.cond48
  %gep38 = getelementptr [200 x i32], ptr %invariant.gep, i64 %indvars.iv49
  %6 = load i32, ptr %gep38, align 4, !tbaa !5
  %sub57 = sub nsw i32 %6, %mi.3
  store i32 %sub57, ptr %gep38, align 4, !tbaa !5
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, 1
  br label %for.cond48, !llvm.loop !16
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup57, %entry
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.cond.cleanup57 ], [ 1, %entry ]
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv69, %1
  br i1 %cmp.not, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.cond
  ret i32 0

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [200 x i32], ptr @sum, i64 0, i64 %indvars.iv69
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond.cleanup7, %for.body
  %2 = phi i32 [ %5, %for.cond.cleanup7 ], [ %0, %for.body ]
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.cond.cleanup7 ], [ 1, %for.body ]
  %3 = sext i32 %2 to i64
  %cmp2.not = icmp sgt i64 %indvars.iv46, %3
  br i1 %cmp2.not, label %for.cond15.preheader, label %for.cond5.preheader

for.cond15.preheader:                             ; preds = %for.cond1
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %4 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %4 to i64
  br label %for.cond15

for.cond5.preheader:                              ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw [200 x i32], ptr @a, i64 %indvars.iv46
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body8
  %5 = phi i32 [ %2, %for.cond5.preheader ], [ %.pre, %for.body8 ]
  %indvars.iv = phi i64 [ 1, %for.cond5.preheader ], [ %indvars.iv.next, %for.body8 ]
  %6 = sext i32 %5 to i64
  %cmp6.not = icmp sgt i64 %indvars.iv, %6
  br i1 %cmp6.not, label %for.cond.cleanup7, label %for.body8

for.cond.cleanup7:                                ; preds = %for.cond5
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond1, !llvm.loop !17

for.body8:                                        ; preds = %for.cond5
  %add.ptr10 = getelementptr inbounds nuw i32, ptr %add.ptr, i64 %indvars.iv
  %call11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !18

for.cond15:                                       ; preds = %for.cond15.preheader, %for.body18
  %indvars.iv49 = phi i64 [ 1, %for.cond15.preheader ], [ %indvars.iv.next50, %for.body18 ]
  %exitcond = icmp eq i64 %indvars.iv49, %wide.trip.count
  br i1 %exitcond, label %for.cond31, label %for.body18

for.body18:                                       ; preds = %for.cond15
  %add.ptr20 = getelementptr inbounds nuw i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 800), i64 %indvars.iv49
  %7 = load i32, ptr %add.ptr20, align 4, !tbaa !5
  store i32 %7, ptr @temp, align 4, !tbaa !5
  %add.ptr22 = getelementptr inbounds nuw i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 1600), i64 %indvars.iv49
  %8 = load i32, ptr %add.ptr22, align 4, !tbaa !5
  store i32 %8, ptr %add.ptr20, align 4, !tbaa !5
  store i32 %7, ptr %add.ptr22, align 4, !tbaa !5
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond15, !llvm.loop !19

for.cond31:                                       ; preds = %for.cond15, %for.body34
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.body34 ], [ 1, %for.cond15 ]
  %exitcond57 = icmp eq i64 %indvars.iv53, %wide.trip.count
  br i1 %exitcond57, label %for.cond55, label %for.body34

for.body34:                                       ; preds = %for.cond31
  %add.ptr36 = getelementptr inbounds nuw [200 x i32], ptr @a, i64 %indvars.iv53
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %add.ptr36, i64 4
  %9 = load i32, ptr %add.ptr38, align 4, !tbaa !5
  store i32 %9, ptr @temp, align 4, !tbaa !5
  %add.ptr42 = getelementptr inbounds nuw i8, ptr %add.ptr36, i64 8
  %10 = load i32, ptr %add.ptr42, align 8, !tbaa !5
  store i32 %10, ptr %add.ptr38, align 4, !tbaa !5
  store i32 %9, ptr %add.ptr42, align 8, !tbaa !5
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond31, !llvm.loop !20

for.cond55.loopexit:                              ; preds = %for.cond101
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond55, !llvm.loop !21

for.cond55:                                       ; preds = %for.cond31, %for.cond55.loopexit
  %11 = phi i32 [ %17, %for.cond55.loopexit ], [ %2, %for.cond31 ]
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.cond55.loopexit ], [ 1, %for.cond31 ]
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.cond55.loopexit ], [ 2, %for.cond31 ]
  %12 = sext i32 %11 to i64
  %cmp56.not.not = icmp slt i64 %indvars.iv66, %12
  br i1 %cmp56.not.not, label %for.body58, label %for.cond.cleanup57

for.cond.cleanup57:                               ; preds = %for.cond55
  %13 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %call137 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %13)
  %vtable.i = load ptr, ptr %call137, align 8, !tbaa !22
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call137, i64 %vbase.offset.i
  %call.i43 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call137, i8 noundef signext %call.i43)
  %call.i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  br label %for.cond, !llvm.loop !24

for.body58:                                       ; preds = %for.cond55
  %14 = trunc nuw nsw i64 %indvars.iv66 to i32
  tail call void @_Z4zeroi(i32 noundef %14)
  %add.ptr60 = getelementptr inbounds nuw [200 x i32], ptr @a, i64 %indvars.iv66
  %add.ptr63 = getelementptr inbounds nuw i32, ptr %add.ptr60, i64 %indvars.iv66
  %15 = load i32, ptr %add.ptr63, align 4, !tbaa !5
  %16 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %add = add nsw i32 %16, %15
  store i32 %add, ptr %arrayidx, align 4, !tbaa !5
  %17 = load i32, ptr @n, align 4, !tbaa !5
  %add.ptr74 = getelementptr inbounds nuw i8, ptr %add.ptr60, i64 800
  %add.ptr80 = getelementptr inbounds nuw i8, ptr %add.ptr60, i64 1600
  br label %for.cond68

for.cond68:                                       ; preds = %for.body71, %for.body58
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.body71 ], [ %indvars.iv58, %for.body58 ]
  %18 = trunc nuw i64 %indvars.iv60 to i32
  %cmp69.not = icmp slt i32 %17, %18
  br i1 %cmp69.not, label %for.cond101.preheader, label %for.body71

for.cond101.preheader:                            ; preds = %for.cond68
  %invariant.gep = getelementptr inbounds nuw i32, ptr @a, i64 %indvars.iv66
  br label %for.cond101

for.body71:                                       ; preds = %for.cond68
  %add.ptr77 = getelementptr inbounds nuw i32, ptr %add.ptr74, i64 %indvars.iv60
  %19 = load i32, ptr %add.ptr77, align 4, !tbaa !5
  store i32 %19, ptr @temp, align 4, !tbaa !5
  %add.ptr83 = getelementptr inbounds nuw i32, ptr %add.ptr80, i64 %indvars.iv60
  %20 = load i32, ptr %add.ptr83, align 4, !tbaa !5
  store i32 %20, ptr %add.ptr77, align 4, !tbaa !5
  store i32 %19, ptr %add.ptr83, align 4, !tbaa !5
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond68, !llvm.loop !25

for.cond101:                                      ; preds = %for.cond101.preheader, %for.body104
  %indvars.iv63 = phi i64 [ %indvars.iv58, %for.cond101.preheader ], [ %indvars.iv.next64, %for.body104 ]
  %21 = trunc nuw i64 %indvars.iv63 to i32
  %cmp102.not = icmp slt i32 %17, %21
  br i1 %cmp102.not, label %for.cond55.loopexit, label %for.body104

for.body104:                                      ; preds = %for.cond101
  %gep = getelementptr inbounds nuw [200 x i32], ptr %invariant.gep, i64 %indvars.iv63
  %add.ptr110 = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %22 = load i32, ptr %add.ptr110, align 4, !tbaa !5
  store i32 %22, ptr @temp, align 4, !tbaa !5
  %add.ptr116 = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %23 = load i32, ptr %add.ptr116, align 4, !tbaa !5
  store i32 %23, ptr %add.ptr110, align 4, !tbaa !5
  store i32 %22, ptr %add.ptr116, align 4, !tbaa !5
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br label %for.cond101, !llvm.loop !26
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
