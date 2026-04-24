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
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.end135 ], [ %3, %entry ]
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %for.end135 ], [ %2, %entry ]
  %ans.0 = phi i32 [ %add, %for.end135 ], [ 0, %entry ]
  %4 = trunc nuw i64 %indvars.iv83 to i32
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %for.cond, label %while.end

for.cond:                                         ; preds = %while.cond, %for.inc25
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.inc25 ], [ 1, %while.cond ]
  %exitcond35 = icmp eq i64 %indvars.iv31, %indvars.iv81
  br i1 %exitcond35, label %for.cond28, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv31, i64 1
  %5 = load i32, ptr %arrayidx2, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond3

for.cond3:                                        ; preds = %for.body5, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 1, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body5 ], [ %5, %for.body ]
  %exitcond = icmp eq i64 %indvars.iv, %indvars.iv81
  br i1 %exitcond, label %for.cond15.preheader, label %for.body5

for.cond15.preheader:                             ; preds = %for.cond3
  br label %for.cond15

for.body5:                                        ; preds = %for.cond3
  %arrayidx9 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv31, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx9, align 4, !tbaa !5, !invariant.load !9
  %spec.select = tail call i32 @llvm.smin.i32(i32 %6, i32 %min.0) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !10

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc22
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.inc22 ], [ 1, %for.cond15.preheader ]
  %exitcond30 = icmp eq i64 %indvars.iv26, %indvars.iv81
  br i1 %exitcond30, label %for.inc25, label %for.inc22

for.inc22:                                        ; preds = %for.cond15
  %arrayidx21 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv31, i64 %indvars.iv26
  %7 = load i32, ptr %arrayidx21, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %7, %min.0
  store i32 %sub, ptr %arrayidx21, align 4, !tbaa !5
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond15, !llvm.loop !13

for.inc25:                                        ; preds = %for.cond15
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond, !llvm.loop !14

for.cond28:                                       ; preds = %for.cond, %for.end60
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.end60 ], [ 1, %for.cond ]
  %exitcond50 = icmp eq i64 %indvars.iv46, %indvars.iv81
  br i1 %exitcond50, label %for.end63, label %for.body30

for.body30:                                       ; preds = %for.cond28
  %arrayidx32 = getelementptr inbounds nuw [101 x i32], ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), i64 0, i64 %indvars.iv46
  %8 = load i32, ptr %arrayidx32, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond33

for.cond33:                                       ; preds = %for.body35, %for.body30
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.body35 ], [ 1, %for.body30 ]
  %min.2 = phi i32 [ %spec.select22, %for.body35 ], [ %8, %for.body30 ]
  %exitcond40 = icmp eq i64 %indvars.iv36, %indvars.iv81
  br i1 %exitcond40, label %for.cond50.preheader, label %for.body35

for.cond50.preheader:                             ; preds = %for.cond33
  br label %for.cond50

for.body35:                                       ; preds = %for.cond33
  %arrayidx39 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv36, i64 %indvars.iv46
  %9 = load i32, ptr %arrayidx39, align 4, !tbaa !5, !invariant.load !9
  %spec.select22 = tail call i32 @llvm.smin.i32(i32 %9, i32 %min.2) #5
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond33, !llvm.loop !15

for.cond50:                                       ; preds = %for.cond50.preheader, %for.inc58
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.inc58 ], [ 1, %for.cond50.preheader ]
  %exitcond45 = icmp eq i64 %indvars.iv41, %indvars.iv81
  br i1 %exitcond45, label %for.end60, label %for.inc58

for.inc58:                                        ; preds = %for.cond50
  %arrayidx56 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv41, i64 %indvars.iv46
  %10 = load i32, ptr %arrayidx56, align 4, !tbaa !5, !invariant.load !9
  %sub57 = sub nsw i32 %10, %min.2
  store i32 %sub57, ptr %arrayidx56, align 4, !tbaa !5
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond50, !llvm.loop !16

for.end60:                                        ; preds = %for.cond50
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond28

for.end63:                                        ; preds = %for.cond28
  %11 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 816), align 16, !tbaa !5
  %12 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 408), align 8, !tbaa !5
  store i32 %12, ptr getelementptr inbounds nuw (i8, ptr @b, i64 408), align 8, !tbaa !5
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc75, %for.end63
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.inc75 ], [ 2, %for.end63 ]
  %exitcond55.not = icmp eq i64 %indvars.iv51, %indvars.iv83
  br i1 %exitcond55.not, label %for.cond78, label %for.inc75

for.inc75:                                        ; preds = %for.cond64
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %arrayidx71 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv.next52, i64 1
  %13 = load i32, ptr %arrayidx71, align 4, !tbaa !5, !invariant.load !9
  %arrayidx74 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @b, i64 0, i64 %indvars.iv51, i64 1
  store i32 %13, ptr %arrayidx74, align 4, !tbaa !5
  br label %for.cond64, !llvm.loop !17

for.cond78:                                       ; preds = %for.cond64, %for.inc87
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.inc87 ], [ 2, %for.cond64 ]
  %exitcond60.not = icmp eq i64 %indvars.iv56, %indvars.iv83
  br i1 %exitcond60.not, label %for.cond90, label %for.inc87

for.inc87:                                        ; preds = %for.cond78
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %arrayidx84 = getelementptr inbounds nuw [101 x i32], ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), i64 0, i64 %indvars.iv.next57
  %14 = load i32, ptr %arrayidx84, align 4, !tbaa !5, !invariant.load !9
  %arrayidx86 = getelementptr inbounds nuw [101 x i32], ptr getelementptr inbounds nuw (i8, ptr @b, i64 404), i64 0, i64 %indvars.iv56
  store i32 %14, ptr %arrayidx86, align 4, !tbaa !5
  br label %for.cond78, !llvm.loop !18

for.cond90:                                       ; preds = %for.cond94, %for.cond78
  %indvars.iv66 = phi i64 [ 2, %for.cond78 ], [ %indvars.iv.next67, %for.cond94 ]
  %exitcond70.not = icmp eq i64 %indvars.iv66, %indvars.iv83
  br i1 %exitcond70.not, label %for.cond114, label %for.cond94.preheader

for.cond94.preheader:                             ; preds = %for.cond90
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %for.cond94

for.cond94:                                       ; preds = %for.cond94.preheader, %for.inc108
  %indvars.iv61 = phi i64 [ 2, %for.cond94.preheader ], [ %indvars.iv.next62, %for.inc108 ]
  %exitcond65.not = icmp eq i64 %indvars.iv61, %indvars.iv83
  br i1 %exitcond65.not, label %for.cond90, label %for.inc108, !llvm.loop !19

for.inc108:                                       ; preds = %for.cond94
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %arrayidx103 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv.next67, i64 %indvars.iv.next62
  %15 = load i32, ptr %arrayidx103, align 4, !tbaa !5, !invariant.load !9
  %arrayidx107 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @b, i64 0, i64 %indvars.iv66, i64 %indvars.iv61
  store i32 %15, ptr %arrayidx107, align 4, !tbaa !5
  br label %for.cond94, !llvm.loop !20

for.cond114:                                      ; preds = %for.cond90, %for.inc133
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %for.inc133 ], [ 1, %for.cond90 ]
  %exitcond80.not = icmp eq i64 %indvars.iv76, %indvars.iv83
  br i1 %exitcond80.not, label %for.end135, label %for.cond118

for.cond118:                                      ; preds = %for.cond114, %for.inc130
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.inc130 ], [ 1, %for.cond114 ]
  %exitcond75.not = icmp eq i64 %indvars.iv71, %indvars.iv83
  br i1 %exitcond75.not, label %for.inc133, label %for.inc130

for.inc130:                                       ; preds = %for.cond118
  %arrayidx125 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @b, i64 0, i64 %indvars.iv76, i64 %indvars.iv71
  %16 = load i32, ptr %arrayidx125, align 4, !tbaa !5, !invariant.load !9
  %arrayidx129 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv76, i64 %indvars.iv71
  store i32 %16, ptr %arrayidx129, align 4, !tbaa !5
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %for.cond118, !llvm.loop !21

for.inc133:                                       ; preds = %for.cond118
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  br label %for.cond114, !llvm.loop !22

for.end135:                                       ; preds = %for.cond114
  %add = add nsw i32 %11, %ans.0
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, -1
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, -1
  br label %while.cond, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  %call = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %ans.0)
  %call136 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  br label %for.cond

for.cond:                                         ; preds = %for.end12, %entry
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.cond1, label %for.end15

for.cond1:                                        ; preds = %for.cond, %for.end
  %1 = phi i32 [ %2, %for.end ], [ %0, %for.cond ]
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.end ], [ 1, %for.cond ]
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %for.cond4, label %for.end12

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %2 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.cond1 ]
  %3 = sext i32 %2 to i64
  %cmp5.not = icmp sgt i64 %indvars.iv, %3
  br i1 %cmp5.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv4, i64 %indvars.iv
  %call9 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !24

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %for.cond1

for.end12:                                        ; preds = %for.cond1
  tail call void @_Z1fv()
  br label %for.cond

for.end15:                                        ; preds = %for.cond
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree }

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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
!21 = distinct !{!21, !11, !12}
!22 = distinct !{!22, !11, !12}
!23 = distinct !{!23, !11, !12}
!24 = distinct !{!24, !11, !12}
