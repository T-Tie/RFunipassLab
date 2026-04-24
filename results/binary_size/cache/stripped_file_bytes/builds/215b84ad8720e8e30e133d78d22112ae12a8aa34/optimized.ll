; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjfp3ec9r.cpp"
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
@a = dso_local global [27 x i32] zeroinitializer, align 16
@f = dso_local local_unnamed_addr global [27 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %smax = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count28 = zext nneg i32 %smax to i64
  br label %for.cond3

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [27 x i32], ptr @a, i64 0, i64 %indvars.iv
  %call1 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond3:                                        ; preds = %for.cond3.preheader, %for.cond.cleanup11
  %indvars.iv24 = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next25, %for.cond.cleanup11 ]
  %exitcond29.not = icmp eq i64 %indvars.iv24, %wide.trip.count28
  br i1 %exitcond29.not, label %for.cond37, label %for.body6

for.body6:                                        ; preds = %for.cond3
  %arrayidx8 = getelementptr inbounds nuw [27 x i32], ptr @f, i64 0, i64 %indvars.iv24
  store i32 0, ptr %arrayidx8, align 4, !tbaa !5
  %arrayidx16 = getelementptr inbounds nuw [27 x i32], ptr @a, i64 0, i64 %indvars.iv24
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc27, %for.body6
  %2 = phi i32 [ %7, %for.inc27 ], [ 0, %for.body6 ]
  %3 = phi i32 [ %8, %for.inc27 ], [ 0, %for.body6 ]
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.inc27 ], [ 0, %for.body6 ]
  %exitcond.not = icmp eq i64 %indvars.iv21, %indvars.iv24
  br i1 %exitcond.not, label %for.cond.cleanup11, label %for.body12

for.cond.cleanup11:                               ; preds = %for.cond9
  %inc32 = add nsw i32 %3, 1
  store i32 %inc32, ptr %arrayidx8, align 4, !tbaa !5
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond3, !llvm.loop !12

for.body12:                                       ; preds = %for.cond9
  %arrayidx14 = getelementptr inbounds nuw [27 x i32], ptr @a, i64 0, i64 %indvars.iv21
  %4 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %5 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %cmp17.not = icmp slt i32 %4, %5
  br i1 %cmp17.not, label %for.inc27, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body12
  %arrayidx19 = getelementptr inbounds nuw [27 x i32], ptr @f, i64 0, i64 %indvars.iv21
  %6 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp22 = icmp sgt i32 %6, %2
  br i1 %cmp22, label %if.then, label %for.inc27

if.then:                                          ; preds = %land.lhs.true
  store i32 %6, ptr %arrayidx8, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.body12, %land.lhs.true, %if.then
  %7 = phi i32 [ %2, %for.body12 ], [ %2, %land.lhs.true ], [ %6, %if.then ]
  %8 = phi i32 [ %3, %for.body12 ], [ %2, %land.lhs.true ], [ %6, %if.then ]
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond9, !llvm.loop !13

for.cond37:                                       ; preds = %for.cond3, %for.body40
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.body40 ], [ 0, %for.cond3 ]
  %max.0 = phi i32 [ %spec.select, %for.body40 ], [ 0, %for.cond3 ]
  %exitcond33.not = icmp eq i64 %indvars.iv30, %wide.trip.count28
  br i1 %exitcond33.not, label %for.cond.cleanup39, label %for.body40

for.cond.cleanup39:                               ; preds = %for.cond37
  %call51 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.0)
  %vtable.i = load ptr, ptr %call51, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call51, i64 %vbase.offset.i
  %call.i19 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call51, i8 noundef signext %call.i19)
  %call.i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  ret i32 0

for.body40:                                       ; preds = %for.cond37
  %arrayidx42 = getelementptr inbounds nuw [27 x i32], ptr @f, i64 0, i64 %indvars.iv30
  %9 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smax.i32(i32 %9, i32 %max.0)
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond37, !llvm.loop !16
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #2 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !8, i64 0}
!16 = distinct !{!16, !10, !11}
