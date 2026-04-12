; ModuleID = '<stdin>'
source_filename = "/tmp/tmplz4eld01.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [25 x i32] zeroinitializer, align 16
@num = dso_local global i32 0, align 4
@b = dso_local local_unnamed_addr global [25 x i32] zeroinitializer, align 16
@i = dso_local local_unnamed_addr global i32 0, align 4
@j = dso_local local_unnamed_addr global i32 0, align 4
@k = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @num)
  store i32 0, ptr @i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @i, align 4, !tbaa !5
  %1 = load i32, ptr @num, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [25 x i32], ptr @a, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %2 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [25 x i32], ptr @b, i64 0, i64 %idxprom2
  store i32 1, ptr %arrayidx3, align 4, !tbaa !5
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 1, ptr @b, align 16, !tbaa !5
  store i32 1, ptr @i, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc29, %for.end
  %max.0 = phi i32 [ 0, %for.end ], [ %max.1, %for.inc29 ]
  %3 = load i32, ptr @i, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %3, %1
  br i1 %cmp5, label %for.body6, label %for.end31

for.body6:                                        ; preds = %for.cond4
  %sub = sub nsw i32 %3, 1
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc27, %for.body6
  %sub.sink = phi i32 [ %sub, %for.body6 ], [ %dec, %for.inc27 ]
  %max.1 = phi i32 [ %max.0, %for.body6 ], [ %max.2, %for.inc27 ]
  store i32 %sub.sink, ptr @j, align 4, !tbaa !5
  %cmp8 = icmp sge i32 %sub.sink, 0
  br i1 %cmp8, label %for.body9, label %for.inc29

for.body9:                                        ; preds = %for.cond7
  %idxprom10 = sext i32 %sub.sink to i64
  %arrayidx11 = getelementptr inbounds [25 x i32], ptr @a, i64 0, i64 %idxprom10
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %idxprom12 = sext i32 %3 to i64
  %arrayidx13 = getelementptr inbounds [25 x i32], ptr @a, i64 0, i64 %idxprom12
  %5 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14 = icmp sge i32 %4, %5
  br i1 %cmp14, label %if.then, label %for.inc27

if.then:                                          ; preds = %for.body9
  %arrayidx16 = getelementptr inbounds [25 x i32], ptr @b, i64 0, i64 %idxprom10
  %6 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %add = add nsw i32 %6, 1
  store i32 %add, ptr @k, align 4, !tbaa !5
  %arrayidx18 = getelementptr inbounds [25 x i32], ptr @b, i64 0, i64 %idxprom12
  %7 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %cmp19 = icmp sgt i32 %add, %7
  br i1 %cmp19, label %if.then20, label %for.inc27

if.then20:                                        ; preds = %if.then
  store i32 %add, ptr %arrayidx18, align 4, !tbaa !5
  %cmp23 = icmp sgt i32 %add, %max.1
  br i1 %cmp23, label %if.then24, label %for.inc27

if.then24:                                        ; preds = %if.then20
  br label %for.inc27

for.inc27:                                        ; preds = %for.body9, %if.then20, %if.then24, %if.then
  %max.2 = phi i32 [ %max.1, %for.body9 ], [ %max.1, %if.then ], [ %add, %if.then24 ], [ %max.1, %if.then20 ]
  %dec = add nsw i32 %sub.sink, -1
  br label %for.cond7, !llvm.loop !12

for.inc29:                                        ; preds = %for.cond7
  %inc30 = add nsw i32 %3, 1
  store i32 %inc30, ptr @i, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !13

for.end31:                                        ; preds = %for.cond4
  %call32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.0)
  %call33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call32, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
