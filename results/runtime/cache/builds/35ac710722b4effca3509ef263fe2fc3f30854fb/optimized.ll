; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9hqh8wxi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z7smallerii(i32 noundef %a, i32 noundef %b) local_unnamed_addr #0 {
entry:
  %a.b = tail call i32 @llvm.smin.i32(i32 %a, i32 %b)
  ret i32 %a.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z3Sumi(i32 noundef %n) local_unnamed_addr #1 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.cond.cleanup67, %entry
  %indvars.iv69.in = phi i32 [ %indvars.iv69, %for.cond.cleanup67 ], [ %n, %entry ]
  %accumulator.tr = phi i32 [ %add104, %for.cond.cleanup67 ], [ 0, %entry ]
  %n.tr = phi i32 [ %sub65, %for.cond.cleanup67 ], [ %n, %entry ]
  %indvars.iv69 = add i32 %indvars.iv69.in, -1
  %smax76 = tail call i32 @llvm.smax.i32(i32 %indvars.iv69, i32 1)
  %smax63 = tail call i32 @llvm.smax.i32(i32 %n.tr, i32 0)
  %wide.trip.count48 = zext nneg i32 %smax63 to i64
  %wide.trip.count = zext i32 %n.tr to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup13, %tailrecurse
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.cond.cleanup13 ], [ 0, %tailrecurse ]
  %exitcond49.not = icmp eq i64 %indvars.iv45, %wide.trip.count48
  br i1 %exitcond49.not, label %for.cond26.preheader, label %for.body

for.cond26.preheader:                             ; preds = %for.cond
  %wide.trip.count53 = zext i32 %n.tr to i64
  br label %for.cond26

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv45
  %0 = load i32, ptr %arrayidx, align 16, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.body5, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 1, %for.body ]
  %min.0 = phi i32 [ %a.b.i, %for.body5 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond11, label %for.body5

for.body5:                                        ; preds = %for.cond2
  %arrayidx9 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv45, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %a.b.i = tail call noundef i32 @llvm.smin.i32(i32 %min.0, i32 %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.cond11:                                       ; preds = %for.cond2, %for.body14
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.body14 ], [ 0, %for.cond2 ]
  %exitcond44.not = icmp eq i64 %indvars.iv40, %wide.trip.count
  br i1 %exitcond44.not, label %for.cond.cleanup13, label %for.body14

for.cond.cleanup13:                               ; preds = %for.cond11
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %for.cond, !llvm.loop !12

for.body14:                                       ; preds = %for.cond11
  %arrayidx18 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv45, i64 %indvars.iv40
  %2 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx18, align 4, !tbaa !5
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond11, !llvm.loop !13

for.cond26:                                       ; preds = %for.cond26.preheader, %for.cond.cleanup49
  %indvars.iv60 = phi i64 [ 0, %for.cond26.preheader ], [ %indvars.iv.next61, %for.cond.cleanup49 ]
  %exitcond65.not = icmp eq i64 %indvars.iv60, %wide.trip.count48
  br i1 %exitcond65.not, label %for.cond.cleanup28, label %for.body29

for.cond.cleanup28:                               ; preds = %for.cond26
  %cmp62 = icmp eq i32 %n.tr, 2
  %3 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  br i1 %cmp62, label %if.then, label %if.end

for.body29:                                       ; preds = %for.cond26
  %arrayidx32 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv60
  %4 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  br label %for.cond34

for.cond34:                                       ; preds = %for.body37, %for.body29
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.body37 ], [ 0, %for.body29 ]
  %min30.0 = phi i32 [ %a.b.i38, %for.body37 ], [ %4, %for.body29 ]
  %exitcond54.not = icmp eq i64 %indvars.iv50, %wide.trip.count53
  br i1 %exitcond54.not, label %for.cond47, label %for.body37

for.body37:                                       ; preds = %for.cond34
  %arrayidx41 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv50, i64 %indvars.iv60
  %5 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %a.b.i38 = tail call noundef i32 @llvm.smin.i32(i32 %min30.0, i32 %5)
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %for.cond34, !llvm.loop !14

for.cond47:                                       ; preds = %for.cond34, %for.body50
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.body50 ], [ 0, %for.cond34 ]
  %exitcond59.not = icmp eq i64 %indvars.iv55, %wide.trip.count53
  br i1 %exitcond59.not, label %for.cond.cleanup49, label %for.body50

for.cond.cleanup49:                               ; preds = %for.cond47
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond26, !llvm.loop !15

for.body50:                                       ; preds = %for.cond47
  %arrayidx54 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv55, i64 %indvars.iv60
  %6 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %sub55 = sub nsw i32 %6, %min30.0
  store i32 %sub55, ptr %arrayidx54, align 4, !tbaa !5
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  br label %for.cond47, !llvm.loop !16

if.then:                                          ; preds = %for.cond.cleanup28
  %accumulator.ret.tr = add nsw i32 %3, %accumulator.tr
  ret i32 %accumulator.ret.tr

if.end:                                           ; preds = %for.cond.cleanup28
  %wide.trip.count77 = zext nneg i32 %smax76 to i64
  %wide.trip.count71 = zext i32 %indvars.iv69 to i64
  br label %for.cond64

for.cond64:                                       ; preds = %for.cond81, %if.end
  %indvars.iv73 = phi i64 [ 1, %if.end ], [ %indvars.iv.next74, %for.cond81 ]
  %exitcond78.not = icmp eq i64 %indvars.iv73, %wide.trip.count77
  br i1 %exitcond78.not, label %for.cond.cleanup67, label %for.body68

for.cond.cleanup67:                               ; preds = %for.cond64
  %sub65 = add nsw i32 %n.tr, -1
  %add104 = add nsw i32 %3, %accumulator.tr
  br label %tailrecurse

for.body68:                                       ; preds = %for.cond64
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  %arrayidx70 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv.next74
  %7 = load i32, ptr %arrayidx70, align 4, !tbaa !5
  %arrayidx72 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv73
  store i32 %7, ptr %arrayidx72, align 4, !tbaa !5
  %arrayidx75 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv.next74
  %8 = load i32, ptr %arrayidx75, align 16, !tbaa !5
  %arrayidx78 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv73
  store i32 %8, ptr %arrayidx78, align 16, !tbaa !5
  br label %for.cond81

for.cond81:                                       ; preds = %for.body85, %for.body68
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.body85 ], [ 1, %for.body68 ]
  %exitcond72.not = icmp eq i64 %indvars.iv66, %wide.trip.count71
  br i1 %exitcond72.not, label %for.cond64, label %for.body85, !llvm.loop !17

for.body85:                                       ; preds = %for.cond81
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %arrayidx91 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv.next74, i64 %indvars.iv.next67
  %9 = load i32, ptr %arrayidx91, align 4, !tbaa !5
  %arrayidx95 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv73, i64 %indvars.iv66
  store i32 %9, ptr %arrayidx95, align 4, !tbaa !5
  br label %for.cond81, !llvm.loop !18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup3, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc19, %for.cond.cleanup3 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.cond1, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0

for.cond1:                                        ; preds = %for.cond, %for.cond.cleanup7
  %1 = phi i32 [ %3, %for.cond.cleanup7 ], [ %0, %for.cond ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.cond.cleanup7 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv8, %2
  br i1 %cmp2, label %for.cond5, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  %call15 = call noundef i32 @_Z3Sumi(i32 noundef %1)
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call15)
  %vtable.i = load ptr, ptr %call16, align 8, !tbaa !19
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call16, i64 %vbase.offset.i
  %call.i6 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call16, i8 noundef signext %call.i6)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc19 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !21

for.cond5:                                        ; preds = %for.cond1, %for.body8
  %3 = phi i32 [ %.pre, %for.body8 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond1, !llvm.loop !22

for.body8:                                        ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv8, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !23
}

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

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
