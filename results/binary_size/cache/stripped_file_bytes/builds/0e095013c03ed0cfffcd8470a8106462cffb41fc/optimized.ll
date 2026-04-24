; ModuleID = '<stdin>'
source_filename = "/tmp/tmpgpqvm9vt.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [1000 x i32] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@f = dso_local local_unnamed_addr global [999 x [999 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z3maxii(i32 noundef %a, i32 noundef %b) local_unnamed_addr #0 {
entry:
  %spec.select = tail call i32 @llvm.smax.i32(i32 noundef %a, i32 noundef %b)
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef range(i32 0, -2147483648) i32 @_Z6daodanii(i32 noundef %s, i32 noundef %h) local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %sext = sext i32 %0 to i64
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %if.then2, %entry
  %accumulator.tr.ph = phi i32 [ %spec.select.i, %if.then2 ], [ -2147483648, %entry ]
  %s.tr.ph = phi i32 [ %4, %if.then2 ], [ %s, %entry ]
  %1 = sext i32 %s.tr.ph to i64
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.outer, %if.end
  %indvars.iv = phi i64 [ %1, %tailrecurse.outer ], [ %indvars.iv.next, %if.end ]
  %2 = icmp eq i64 %indvars.iv, %sext
  br i1 %2, label %return, label %if.end

if.end:                                           ; preds = %tailrecurse
  %arrayidx = getelementptr inbounds [1000 x i32], ptr @a, i64 0, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %cmp1.not = icmp slt i32 %h, %3
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %cmp1.not, label %tailrecurse, label %if.then2

if.then2:                                         ; preds = %if.end
  %4 = trunc nsw i64 %indvars.iv.next to i32
  %call = tail call noundef i32 @_Z6daodanii(i32 noundef %4, i32 noundef %3) #5
  %add5 = add nuw nsw i32 %call, 1
  %spec.select.i = tail call noundef i32 @llvm.smax.i32(i32 %add5, i32 noundef %accumulator.tr.ph)
  br label %tailrecurse.outer

return:                                           ; preds = %tailrecurse
  %accumulator.ret.tr = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 noundef %accumulator.tr.ph, i32 noundef 0)
  ret i32 %accumulator.ret.tr
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr @a, i64 0, i64 %indvars.iv
  %call1 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %call2 = tail call noundef range(i32 -2147483647, -2147483648) i32 @_Z6daodanii(i32 noundef 0, i32 noundef 31999) #6
  %call3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call2)
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nosync nounwind memory(read) }
attributes #6 = { nounwind memory(read) }

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
