; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxum3al6n.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }

@a = dso_local global [101 x [101 x i32]] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@b = dso_local local_unnamed_addr global [101 x [101 x i32]] zeroinitializer, align 16
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@_ZSt3cin = external global %"class.std::basic_istream", align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_Z1fv() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %1 = add i32 %0, 1
  %2 = zext i32 %1 to i64
  %3 = zext i32 %0 to i64
  br label %while.cond

while.cond:                                       ; preds = %for.end135, %entry
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %for.end135 ], [ %3, %entry ]
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %for.end135 ], [ %2, %entry ]
  %ans.0 = phi i32 [ %add, %for.end135 ], [ 0, %entry ]
  %4 = trunc nuw i64 %indvars.iv129 to i32
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %for.cond, label %while.end

for.cond:                                         ; preds = %while.cond, %for.inc25
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.inc25 ], [ 1, %while.cond ]
  %exitcond81 = icmp eq i64 %indvars.iv77, %indvars.iv127
  br i1 %exitcond81, label %for.cond28, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv77, i64 1
  %5 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.body5, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 1, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body5 ], [ %5, %for.body ]
  %exitcond = icmp eq i64 %indvars.iv, %indvars.iv127
  br i1 %exitcond, label %for.cond15, label %for.body5

for.body5:                                        ; preds = %for.cond3
  %arrayidx9 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv77, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %6, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !9

for.cond15:                                       ; preds = %for.cond3, %for.body17
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.body17 ], [ 1, %for.cond3 ]
  %exitcond76 = icmp eq i64 %indvars.iv72, %indvars.iv127
  br i1 %exitcond76, label %for.inc25, label %for.body17

for.body17:                                       ; preds = %for.cond15
  %arrayidx21 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv77, i64 %indvars.iv72
  %7 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %sub = sub nsw i32 %7, %min.0
  store i32 %sub, ptr %arrayidx21, align 4, !tbaa !5
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond15, !llvm.loop !12

for.inc25:                                        ; preds = %for.cond15
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  br label %for.cond, !llvm.loop !13

for.cond28:                                       ; preds = %for.cond, %for.inc61
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %for.inc61 ], [ 1, %for.cond ]
  %exitcond96 = icmp eq i64 %indvars.iv92, %indvars.iv127
  br i1 %exitcond96, label %for.end63, label %for.body30

for.body30:                                       ; preds = %for.cond28
  %arrayidx32 = getelementptr inbounds nuw [101 x i32], ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), i64 0, i64 %indvars.iv92
  %8 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.body35, %for.body30
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %for.body35 ], [ 1, %for.body30 ]
  %min.2 = phi i32 [ %spec.select67, %for.body35 ], [ %8, %for.body30 ]
  %exitcond86 = icmp eq i64 %indvars.iv82, %indvars.iv127
  br i1 %exitcond86, label %for.cond50, label %for.body35

for.body35:                                       ; preds = %for.cond33
  %arrayidx39 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv82, i64 %indvars.iv92
  %9 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %spec.select67 = tail call i32 @llvm.smin.i32(i32 %9, i32 %min.2)
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %for.cond33, !llvm.loop !14

for.cond50:                                       ; preds = %for.cond33, %for.body52
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %for.body52 ], [ 1, %for.cond33 ]
  %exitcond91 = icmp eq i64 %indvars.iv87, %indvars.iv127
  br i1 %exitcond91, label %for.inc61, label %for.body52

for.body52:                                       ; preds = %for.cond50
  %arrayidx56 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv87, i64 %indvars.iv92
  %10 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %sub57 = sub nsw i32 %10, %min.2
  store i32 %sub57, ptr %arrayidx56, align 4, !tbaa !5
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  br label %for.cond50, !llvm.loop !15

for.inc61:                                        ; preds = %for.cond50
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  br label %for.cond28, !llvm.loop !16

for.end63:                                        ; preds = %for.cond28
  %11 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 816), align 16, !tbaa !5
  %12 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 408), align 8, !tbaa !5
  store i32 %12, ptr getelementptr inbounds nuw (i8, ptr @b, i64 408), align 8, !tbaa !5
  br label %for.cond64

for.cond64:                                       ; preds = %for.body67, %for.end63
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %for.body67 ], [ 2, %for.end63 ]
  %exitcond101.not = icmp eq i64 %indvars.iv97, %indvars.iv129
  br i1 %exitcond101.not, label %for.cond78, label %for.body67

for.body67:                                       ; preds = %for.cond64
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %arrayidx71 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv.next98, i64 1
  %13 = load i32, ptr %arrayidx71, align 4, !tbaa !5
  %arrayidx74 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @b, i64 0, i64 %indvars.iv97, i64 1
  store i32 %13, ptr %arrayidx74, align 4, !tbaa !5
  br label %for.cond64, !llvm.loop !17

for.cond78:                                       ; preds = %for.cond64, %for.body81
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %for.body81 ], [ 2, %for.cond64 ]
  %exitcond106.not = icmp eq i64 %indvars.iv102, %indvars.iv129
  br i1 %exitcond106.not, label %for.cond90, label %for.body81

for.body81:                                       ; preds = %for.cond78
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  %arrayidx84 = getelementptr inbounds nuw [101 x i32], ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), i64 0, i64 %indvars.iv.next103
  %14 = load i32, ptr %arrayidx84, align 4, !tbaa !5
  %arrayidx86 = getelementptr inbounds nuw [101 x i32], ptr getelementptr inbounds nuw (i8, ptr @b, i64 404), i64 0, i64 %indvars.iv102
  store i32 %14, ptr %arrayidx86, align 4, !tbaa !5
  br label %for.cond78, !llvm.loop !18

for.cond90:                                       ; preds = %for.cond94, %for.cond78
  %indvars.iv112 = phi i64 [ 2, %for.cond78 ], [ %indvars.iv.next113, %for.cond94 ]
  %exitcond116.not = icmp eq i64 %indvars.iv112, %indvars.iv129
  br i1 %exitcond116.not, label %for.cond114, label %for.cond94.preheader

for.cond94.preheader:                             ; preds = %for.cond90
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  br label %for.cond94

for.cond94:                                       ; preds = %for.cond94.preheader, %for.body97
  %indvars.iv107 = phi i64 [ 2, %for.cond94.preheader ], [ %indvars.iv.next108, %for.body97 ]
  %exitcond111.not = icmp eq i64 %indvars.iv107, %indvars.iv129
  br i1 %exitcond111.not, label %for.cond90, label %for.body97, !llvm.loop !19

for.body97:                                       ; preds = %for.cond94
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  %arrayidx103 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv.next113, i64 %indvars.iv.next108
  %15 = load i32, ptr %arrayidx103, align 4, !tbaa !5
  %arrayidx107 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @b, i64 0, i64 %indvars.iv112, i64 %indvars.iv107
  store i32 %15, ptr %arrayidx107, align 4, !tbaa !5
  br label %for.cond94, !llvm.loop !20

for.cond114:                                      ; preds = %for.cond90, %for.inc133
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %for.inc133 ], [ 1, %for.cond90 ]
  %exitcond126.not = icmp eq i64 %indvars.iv122, %indvars.iv129
  br i1 %exitcond126.not, label %for.end135, label %for.cond118

for.cond118:                                      ; preds = %for.cond114, %for.body121
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %for.body121 ], [ 1, %for.cond114 ]
  %exitcond121.not = icmp eq i64 %indvars.iv117, %indvars.iv129
  br i1 %exitcond121.not, label %for.inc133, label %for.body121

for.body121:                                      ; preds = %for.cond118
  %arrayidx125 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @b, i64 0, i64 %indvars.iv122, i64 %indvars.iv117
  %16 = load i32, ptr %arrayidx125, align 4, !tbaa !5
  %arrayidx129 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv122, i64 %indvars.iv117
  store i32 %16, ptr %arrayidx129, align 4, !tbaa !5
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  br label %for.cond118, !llvm.loop !21

for.inc133:                                       ; preds = %for.cond118
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1
  br label %for.cond114, !llvm.loop !22

for.end135:                                       ; preds = %for.cond114
  %add = add nsw i32 %11, %ans.0
  %indvars.iv.next130 = add nsw i64 %indvars.iv129, -1
  %indvars.iv.next128 = add nsw i64 %indvars.iv127, -1
  br label %while.cond, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  %call = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %ans.0)
  %vtable.i = load ptr, ptr %call, align 8, !tbaa !24
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call, i64 %vbase.offset.i
  %call.i68 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call, i8 noundef signext %call.i68)
  %call.i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  br label %for.cond

for.cond:                                         ; preds = %for.end12, %entry
  %k.0 = phi i32 [ 1, %entry ], [ %inc14, %for.end12 ]
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %k.0, %0
  br i1 %cmp.not, label %for.end15, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.inc10 ], [ 1, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2.not = icmp sgt i64 %indvars.iv7, %2
  br i1 %cmp2.not, label %for.end12, label %for.cond4

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %3 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 1, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5.not = icmp sgt i64 %indvars.iv, %4
  br i1 %cmp5.not, label %for.inc10, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv7, i64 %indvars.iv
  %call9 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !26

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond1, !llvm.loop !27

for.end12:                                        ; preds = %for.cond1
  tail call void @_Z1fv()
  %inc14 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !28

for.end15:                                        ; preds = %for.cond
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11}
