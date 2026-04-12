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
  %cmp = icmp eq i32 %c1, %0
  %sub = sub nsw i32 %c2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %sub.sink = phi i32 [ %sub, %if.then ], [ %dec, %for.inc ]
  %cmp1 = icmp sge i32 %sub.sink, 0
  br i1 %cmp1, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %sub.sink to i64
  %arrayidx = getelementptr inbounds [40 x i32], ptr @a, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef %1)
  %dec = add nsw i32 %sub.sink, -1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end43

if.else:                                          ; preds = %entry
  %idxprom4 = sext i32 %sub to i64
  %arrayidx5 = getelementptr inbounds [40 x i32], ptr @a, i64 0, i64 %idxprom4
  %2 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %arrayidx8 = getelementptr inbounds [40 x i32], ptr @b, i64 0, i64 %idxprom4
  %3 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %add = add nsw i32 %2, %3
  %cmp9 = icmp sge i32 %add, 10
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.else
  %inc = add nsw i32 %c2, 1
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.else
  %c2.addr.0 = phi i32 [ %inc, %if.then10 ], [ %c2, %if.else ]
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc39, %if.end
  %i11.0 = phi i32 [ 0, %if.end ], [ %add28, %for.inc39 ]
  %cmp13 = icmp slt i32 %i11.0, %c2.addr.0
  br i1 %cmp13, label %for.inc39, label %for.end41

for.inc39:                                        ; preds = %for.cond12
  %idxprom16 = sext i32 %i11.0 to i64
  %arrayidx17 = getelementptr inbounds [40 x i32], ptr @a, i64 0, i64 %idxprom16
  %4 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %arrayidx19 = getelementptr inbounds [40 x i32], ptr @b, i64 0, i64 %idxprom16
  %5 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %add20 = add nsw i32 %4, %5
  %rem = srem i32 %add20, 10
  store i32 %rem, ptr %arrayidx17, align 4, !tbaa !5
  %add27 = add nsw i32 %5, %5
  %div = sdiv i32 %add27, 10
  %add28 = add nsw i32 %i11.0, 1
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds [40 x i32], ptr @a, i64 0, i64 %idxprom29
  %6 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %add31 = add nsw i32 %div, %6
  store i32 %add31, ptr %arrayidx30, align 4, !tbaa !5
  store i32 %rem, ptr %arrayidx19, align 4, !tbaa !5
  br label %for.cond12, !llvm.loop !12

for.end41:                                        ; preds = %for.cond12
  %add42 = add nsw i32 %c1, 1
  call void @_Z3sumii(i32 noundef %add42, i32 noundef %c2.addr.0)
  br label %if.end43

if.end43:                                         ; preds = %for.end41, %for.end
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
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call1, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %.sink = phi i32 [ 1, %if.end ], [ %inc, %for.inc ]
  %cmp3 = icmp slt i32 %.sink, 40
  br i1 %cmp3, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %.sink to i64
  %arrayidx = getelementptr inbounds [40 x i32], ptr @a, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %arrayidx5 = getelementptr inbounds [40 x i32], ptr @b, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx5, align 4, !tbaa !5
  %inc = add nsw i32 %.sink, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  call void @_Z3sumii(i32 noundef 1, i32 noundef 1)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
