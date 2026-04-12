; ModuleID = '<stdin>'
source_filename = "/tmp/tmpou7p193o.cpp"
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
@a = dso_local global [30 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [30 x i32], ptr @a, i64 0, i64 %indvars.iv
  %call1 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 1000000, ptr @a, align 16, !tbaa !5
  %call2 = tail call noundef i32 @_Z5afteriii(i32 noundef 1, i32 noundef 0, i32 noundef %0) #5
  %call3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call2)
  %vtable.i = load ptr, ptr %call3, align 8, !tbaa !12, !invariant.load !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !14
  %add.ptr.i = getelementptr inbounds i8, ptr %call3, i64 %vbase.offset.i
  %call.i1 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call3, i8 noundef signext %call.i1)
  %call.i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef range(i32 0, -2147483648) i32 @_Z5afteriii(i32 noundef %i, i32 noundef %fin, i32 noundef %n) local_unnamed_addr #2 {
entry:
  %idxprom8 = sext i32 %fin to i64
  %arrayidx9 = getelementptr inbounds [30 x i32], ptr @a, i64 0, i64 %idxprom8
  %sext = sext i32 %n to i64
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %if.then11, %entry
  %accumulator.tr.ph = phi i32 [ %spec.select.i, %if.then11 ], [ -2147483648, %entry ]
  %i.tr.ph = phi i32 [ %add, %if.then11 ], [ %i, %entry ]
  %0 = sext i32 %i.tr.ph to i64
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.outer, %if.else16
  %indvars.iv = phi i64 [ %0, %tailrecurse.outer ], [ %indvars.iv.next, %if.else16 ]
  %1 = icmp eq i64 %indvars.iv, %sext
  %2 = load i32, ptr %arrayidx9, align 4, !tbaa !5, !invariant.load !14
  br i1 %1, label %if.then, label %if.else5

if.then:                                          ; preds = %tailrecurse
  %arrayidx = getelementptr inbounds [30 x i32], ptr @a, i64 0, i64 %sext
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !14
  %cmp3.not = icmp sle i32 %3, %2
  %spec.select = zext i1 %cmp3.not to i32
  %accumulator.ret.tr = tail call noundef i32 @llvm.smax.i32(i32 %spec.select, i32 %accumulator.tr.ph)
  ret i32 %accumulator.ret.tr

if.else5:                                         ; preds = %tailrecurse
  %arrayidx7 = getelementptr inbounds [30 x i32], ptr @a, i64 0, i64 %indvars.iv
  %4 = load i32, ptr %arrayidx7, align 4, !tbaa !5, !invariant.load !14
  %cmp10.not = icmp sgt i32 %4, %2
  br i1 %cmp10.not, label %if.else16, label %if.then11

if.then11:                                        ; preds = %if.else5
  %5 = trunc nsw i64 %indvars.iv to i32
  %add = add nsw i32 %5, 1
  %call = tail call noundef i32 @_Z5afteriii(i32 noundef %add, i32 noundef %5, i32 noundef %n) #5
  %add12 = add nuw nsw i32 %call, 1
  %spec.select.i = tail call noundef i32 @llvm.smax.i32(i32 %add12, i32 %accumulator.tr.ph)
  br label %tailrecurse.outer

if.else16:                                        ; preds = %if.else5
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %tailrecurse
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!14 = !{}
