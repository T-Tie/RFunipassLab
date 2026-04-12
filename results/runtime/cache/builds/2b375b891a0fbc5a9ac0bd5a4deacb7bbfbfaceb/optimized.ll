; ModuleID = '<stdin>'
source_filename = "/tmp/tmp19mek5ap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }

@a = dso_local local_unnamed_addr global <{ i32, [39 x i32] }> <{ i32 2, [39 x i32] zeroinitializer }>, align 16
@b = dso_local local_unnamed_addr global <{ i32, [39 x i32] }> <{ i32 2, [39 x i32] zeroinitializer }>, align 16
@n = dso_local global i32 0, align 4
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@_ZSt3cin = external global %"class.std::basic_istream", align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_Z3sumii(i32 noundef %c1, i32 noundef %c2) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @n, align 4, !tbaa !5
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end41, %entry
  %c1.tr = phi i32 [ %c1, %entry ], [ %add42, %for.end41 ]
  %c2.tr = phi i32 [ %c2, %entry ], [ %spec.select, %for.end41 ]
  %cmp = icmp eq i32 %c1.tr, %0
  br i1 %cmp, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %tailrecurse
  %1 = zext i32 %c2.tr to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv21 = phi i64 [ %1, %for.cond.preheader ], [ %3, %for.inc ]
  %2 = trunc nuw i64 %indvars.iv21 to i32
  %cmp1 = icmp sgt i32 %2, 0
  br i1 %cmp1, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %3 = add nsw i64 %indvars.iv21, -1
  %arrayidx = getelementptr inbounds nuw [40 x i32], ptr @a, i64 0, i64 %3
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %call = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %4)
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void

if.else:                                          ; preds = %tailrecurse
  %sub3 = add nsw i32 %c2.tr, -1
  %idxprom4 = sext i32 %sub3 to i64
  %arrayidx5 = getelementptr inbounds [40 x i32], ptr @a, i64 0, i64 %idxprom4
  %5 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %arrayidx8 = getelementptr inbounds [40 x i32], ptr @b, i64 0, i64 %idxprom4
  %6 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %add = add nsw i32 %6, %5
  %cmp9 = icmp sgt i32 %add, 9
  %inc = zext i1 %cmp9 to i32
  %spec.select = add nsw i32 %c2.tr, %inc
  %smax = call i32 @llvm.smax.i32(i32 %spec.select, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc39, %if.else
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc39 ], [ 0, %if.else ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end41, label %for.inc39

for.inc39:                                        ; preds = %for.cond12
  %arrayidx17 = getelementptr inbounds nuw [40 x i32], ptr @a, i64 0, i64 %indvars.iv
  %7 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %arrayidx19 = getelementptr inbounds nuw [40 x i32], ptr @b, i64 0, i64 %indvars.iv
  %8 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %add20 = add nsw i32 %8, %7
  %rem = srem i32 %add20, 10
  store i32 %rem, ptr %arrayidx17, align 4, !tbaa !5
  %div = sdiv i32 %8, 5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx30 = getelementptr inbounds nuw [40 x i32], ptr @a, i64 0, i64 %indvars.iv.next
  %9 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %add31 = add nsw i32 %9, %div
  store i32 %add31, ptr %arrayidx30, align 4, !tbaa !5
  store i32 %rem, ptr %arrayidx19, align 4, !tbaa !5
  br label %for.cond12, !llvm.loop !12

for.end41:                                        ; preds = %for.cond12
  %add42 = add nsw i32 %c1.tr, 1
  br label %tailrecurse
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
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %for.cond

if.then:                                          ; preds = %entry
  %call1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1)
  %call2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call1, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %return

for.cond:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 40
  br i1 %exitcond.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [40 x i32], ptr @a, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %arrayidx5 = getelementptr inbounds nuw [40 x i32], ptr @b, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx5, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  tail call void @_Z3sumii(i32 noundef 1, i32 noundef 1)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
