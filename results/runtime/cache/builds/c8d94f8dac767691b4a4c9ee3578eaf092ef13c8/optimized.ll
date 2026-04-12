; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1e1xnncr.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@k = dso_local global i32 0, align 4
@h = dso_local global [30 x i32] zeroinitializer, align 16
@r = dso_local local_unnamed_addr global [30 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [16 x i8] c"first way taken\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @k)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr @k, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [30 x i32], ptr @h, i64 0, i64 %indvars.iv
  %call1 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %sub = add i32 %0, -1
  %idxprom2 = sext i32 %sub to i64
  %arrayidx3 = getelementptr inbounds [30 x i32], ptr @r, i64 0, i64 %idxprom2
  store i32 1, ptr %arrayidx3, align 4, !tbaa !5
  %sub4 = add nsw i32 %0, -2
  %2 = zext i32 %sub to i64
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc43, %for.end
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.inc43 ], [ %2, %for.end ]
  %i.1 = phi i32 [ %dec, %for.inc43 ], [ %sub4, %for.end ]
  %cmp6 = icmp sgt i32 %i.1, -1
  br i1 %cmp6, label %for.body7, label %for.cond45.preheader

for.cond45.preheader:                             ; preds = %for.cond5
  %3 = load i32, ptr @k, align 4, !tbaa !5
  %smax = tail call i32 @llvm.smax.i32(i32 %3, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond45

for.body7:                                        ; preds = %for.cond5
  %idxprom8 = zext nneg i32 %i.1 to i64
  %arrayidx9 = getelementptr inbounds nuw [30 x i32], ptr @r, i64 0, i64 %idxprom8
  %4 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %add = add nuw nsw i32 %i.1, 1
  %idxprom10 = zext nneg i32 %add to i64
  %arrayidx11 = getelementptr inbounds nuw [30 x i32], ptr @r, i64 0, i64 %idxprom10
  %5 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12.not = icmp slt i32 %4, %5
  br i1 %cmp12.not, label %for.cond22.preheader, label %if.then

for.cond22.preheader:                             ; preds = %for.body7
  %6 = load i32, ptr @k, align 4, !tbaa !5
  %arrayidx28 = getelementptr inbounds nuw [30 x i32], ptr @h, i64 0, i64 %idxprom8
  br label %for.cond22

if.then:                                          ; preds = %for.body7
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 15)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i25 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i25)
  %call.i.i27 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i26)
  %7 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  br label %for.inc43

for.cond22:                                       ; preds = %for.cond22.preheader, %for.inc36
  %indvars.iv32 = phi i64 [ %indvars.iv30, %for.cond22.preheader ], [ %indvars.iv.next33, %for.inc36 ]
  %max.0 = phi i32 [ 0, %for.cond22.preheader ], [ %max.1, %for.inc36 ]
  %8 = trunc nuw i64 %indvars.iv32 to i32
  %cmp23 = icmp sgt i32 %6, %8
  br i1 %cmp23, label %for.body24, label %for.inc43

for.body24:                                       ; preds = %for.cond22
  %arrayidx26 = getelementptr inbounds nuw [30 x i32], ptr @h, i64 0, i64 %indvars.iv32
  %9 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %10 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %cmp29.not = icmp sgt i32 %9, %10
  br i1 %cmp29.not, label %for.inc36, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body24
  %arrayidx31 = getelementptr inbounds nuw [30 x i32], ptr @r, i64 0, i64 %indvars.iv32
  %11 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smax.i32(i32 %11, i32 %max.0)
  br label %for.inc36

for.inc36:                                        ; preds = %land.lhs.true, %for.body24
  %max.1 = phi i32 [ %max.0, %for.body24 ], [ %spec.select, %land.lhs.true ]
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond22, !llvm.loop !14

for.inc43:                                        ; preds = %for.cond22, %if.then
  %storemerge.in = phi i32 [ %7, %if.then ], [ %max.0, %for.cond22 ]
  %storemerge = add nsw i32 %storemerge.in, 1
  store i32 %storemerge, ptr %arrayidx9, align 4, !tbaa !5
  %dec = add nsw i32 %i.1, -1
  %indvars.iv.next31 = add nsw i64 %indvars.iv30, -1
  br label %for.cond5, !llvm.loop !15

for.cond45:                                       ; preds = %for.cond45.preheader, %for.body47
  %indvars.iv35 = phi i64 [ 0, %for.cond45.preheader ], [ %indvars.iv.next36, %for.body47 ]
  %ans.0 = phi i32 [ 0, %for.cond45.preheader ], [ %spec.select24, %for.body47 ]
  %exitcond.not = icmp eq i64 %indvars.iv35, %wide.trip.count
  br i1 %exitcond.not, label %for.end57, label %for.body47

for.body47:                                       ; preds = %for.cond45
  %arrayidx49 = getelementptr inbounds nuw [30 x i32], ptr @r, i64 0, i64 %indvars.iv35
  %12 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %spec.select24 = tail call i32 @llvm.smax.i32(i32 %12, i32 %ans.0)
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond45, !llvm.loop !16

for.end57:                                        ; preds = %for.cond45
  %call58 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %ans.0)
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

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
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !8, i64 0}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
