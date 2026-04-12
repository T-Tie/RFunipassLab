; ModuleID = '<stdin>'
source_filename = "/tmp/tmp16hbw8gp.cpp"
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
@sum = dso_local local_unnamed_addr global i32 5, align 4
@a = dso_local global [999999999 x i8] zeroinitializer, align 16
@b = dso_local global [999999999 x i8] zeroinitializer, align 16
@p = dso_local local_unnamed_addr global i32 0, align 4
@l = dso_local local_unnamed_addr global i32 2, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z5chengi(i32 %m) local_unnamed_addr #0 {
entry:
  store i32 0, ptr @p, align 4, !tbaa !5
  %0 = load i32, ptr @l, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ %0, %entry ], [ %dec, %for.inc ]
  %cmp = icmp sge i32 %i.0, 1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %sub = sub nsw i32 %i.0, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [999999999 x i8], ptr @a, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9, !invariant.load !10
  %conv = sext i8 %1 to i32
  %sub1 = sub nsw i32 %conv, 48
  %mul = mul nsw i32 %sub1, 2
  %rem = srem i32 %mul, 10
  %2 = load i32, ptr @p, align 4, !tbaa !5
  %add = add nsw i32 %rem, %2
  %rem2 = srem i32 %add, 10
  %add3 = add nsw i32 %rem2, 48
  %conv4 = trunc i32 %add3 to i8
  %idxprom5 = sext i32 %i.0 to i64
  %arrayidx6 = getelementptr inbounds [999999999 x i8], ptr @b, i64 0, i64 %idxprom5
  store i8 %conv4, ptr %arrayidx6, align 1, !tbaa !9
  %add13 = add nsw i32 %mul, %2
  %div = sdiv i32 %add13, 10
  store i32 %div, ptr @p, align 4, !tbaa !5
  %dec = add nsw i32 %i.0, -1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %3 = load i32, ptr @p, align 4, !tbaa !5
  %add14 = add nsw i32 %3, 48
  %conv15 = trunc i32 %add14 to i8
  store i8 %conv15, ptr @b, align 16, !tbaa !9
  %conv16 = sext i8 %conv15 to i32
  %cmp17 = icmp ne i32 %conv16, 48
  br i1 %cmp17, label %if.end, label %if.then20

if.end:                                           ; preds = %for.end
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @l, align 4, !tbaa !5
  br label %if.end32

if.then20:                                        ; preds = %for.end
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc29, %if.then20
  %i.1 = phi i32 [ 0, %if.then20 ], [ %add24, %for.inc29 ]
  %cmp22 = icmp slt i32 %i.1, %0
  br i1 %cmp22, label %for.inc29, label %if.end32

for.inc29:                                        ; preds = %for.cond21
  %add24 = add nsw i32 %i.1, 1
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds [999999999 x i8], ptr @b, i64 0, i64 %idxprom25
  %4 = load i8, ptr %arrayidx26, align 1, !tbaa !9, !invariant.load !10
  %idxprom27 = sext i32 %i.1 to i64
  %arrayidx28 = getelementptr inbounds [999999999 x i8], ptr @b, i64 0, i64 %idxprom27
  store i8 %4, ptr %arrayidx28, align 1, !tbaa !9
  br label %for.cond21, !llvm.loop !14

if.end32:                                         ; preds = %for.cond21, %if.end
  %call = call ptr @strcpy(ptr noundef @a, ptr noundef @b) #5
  %5 = load i32, ptr @sum, align 4, !tbaa !5
  %6 = load i32, ptr @n, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %5, %6
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end32
  %inc35 = add nsw i32 %5, 1
  store i32 %inc35, ptr @sum, align 4, !tbaa !5
  call void @_Z5chengi(i32 undef) #5
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end32
  ret void
}

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef 1)
  %.pr = load i32, ptr @n, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pr, %if.then ], [ %0, %entry ]
  %cmp2 = icmp eq i32 %1, 1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef 2)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %2 = load i32, ptr @n, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %2, 2
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef 4)
  %.pr2 = load i32, ptr @n, align 4, !tbaa !5
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %3 = phi i32 [ %.pr2, %if.then7 ], [ %2, %if.end5 ]
  %cmp10 = icmp eq i32 %3, 3
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %call12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef 8)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9
  %4 = load i32, ptr @n, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %4, 4
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end13
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef 16)
  %.pr3 = load i32, ptr @n, align 4, !tbaa !5
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13
  %5 = phi i32 [ %.pr3, %if.then15 ], [ %4, %if.end13 ]
  store i8 49, ptr @a, align 16, !tbaa !9
  store i8 54, ptr getelementptr inbounds ([999999999 x i8], ptr @a, i64 0, i64 1), align 1, !tbaa !9
  %cmp18 = icmp sgt i32 %5, 4
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end17
  call void @_Z5chengi(i32 undef) #5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then19
  %i.0 = phi i32 [ 0, %if.then19 ], [ %inc, %for.inc ]
  %6 = load i32, ptr @l, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %i.0, %6
  br i1 %cmp20, label %for.inc, label %if.end22

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [999999999 x i8], ptr @a, i64 0, i64 %idxprom
  %7 = load i8, ptr %arrayidx, align 1, !tbaa !9, !invariant.load !10
  %call21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext %7)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !15

if.end22:                                         ; preds = %for.cond, %if.end17
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!7, !7, i64 0}
!10 = !{}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
