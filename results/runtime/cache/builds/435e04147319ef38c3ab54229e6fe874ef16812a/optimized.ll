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

$_Z3maxii = comdat any

@n = dso_local global i32 0, align 4
@a = dso_local global [30 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp sle i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [30 x i32], ptr @a, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 1000000, ptr @a, align 16, !tbaa !5
  %call2 = call noundef i32 @_Z5afteriii(i32 noundef 1, i32 noundef 0, i32 noundef %0) #6
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call2)
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call3, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z5afteriii(i32 noundef %i, i32 noundef %fin, i32 noundef %n) local_unnamed_addr #2 {
entry:
  %cmp = icmp eq i32 %i, %n
  %idxprom = sext i32 %i to i64
  %idxprom1 = sext i32 %fin to i64
  %0 = getelementptr inbounds [30 x i32], ptr @a, i64 0, i64 %idxprom
  %1 = load i32, ptr %0, align 4, !tbaa !5
  %2 = getelementptr inbounds [30 x i32], ptr @a, i64 0, i64 %idxprom1
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else5

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [30 x i32], ptr @a, i64 0, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [30 x i32], ptr @a, i64 0, i64 %idxprom1
  br i1 %cmp3, label %return, label %if.else

if.else:                                          ; preds = %if.then
  br label %return

if.else5:                                         ; preds = %entry
  %arrayidx7 = getelementptr inbounds [30 x i32], ptr @a, i64 0, i64 %idxprom
  %arrayidx9 = getelementptr inbounds [30 x i32], ptr @a, i64 0, i64 %idxprom1
  %add17 = add nsw i32 %i, 1
  br i1 %cmp3, label %if.then11, label %if.else16

if.then11:                                        ; preds = %if.else5
  %call = call noundef i32 @_Z5afteriii(i32 noundef %add17, i32 noundef %i, i32 noundef %n) #6
  %add12 = add nsw i32 1, %call
  %call14 = call noundef i32 @_Z5afteriii(i32 noundef %add17, i32 noundef %fin, i32 noundef %n) #6
  %call15 = call noundef i32 @_Z3maxii(i32 noundef %add12, i32 noundef %call14) #6
  br label %return

if.else16:                                        ; preds = %if.else5
  %call18 = call noundef i32 @_Z5afteriii(i32 noundef %add17, i32 noundef %fin, i32 noundef %n) #6
  br label %return

return:                                           ; preds = %if.then11, %if.else16, %if.then, %if.else
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], [ %call15, %if.then11 ], [ %call18, %if.else16 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_Z3maxii(i32 noundef %a, i32 noundef %b) local_unnamed_addr #5 comdat {
entry:
  %cmp = icmp sgt i32 %a, %b
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %b, %cond.false ], [ %a, %entry ]
  ret i32 %cond
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
