; ModuleID = '<stdin>'
source_filename = "/tmp/tmpn7ngxfj0.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@i = dso_local local_unnamed_addr global i32 0, align 4
@n = dso_local global i32 0, align 4
@a = dso_local global double 0.000000e+00, align 8
@b = dso_local global double 0.000000e+00, align 8
@c = dso_local global double 0.000000e+00, align 8
@j = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@x = dso_local local_unnamed_addr global [2 x double] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [4 x i8] c"x1=\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%.5f\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"x2=\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"x1=x2=\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"i\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr @i, align 4, !tbaa !5
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %storemerge, %0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call1 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) @a)
  %call2 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 8 dereferenceable(8) @b)
  %call3 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 8 dereferenceable(8) @c)
  %1 = load double, ptr @b, align 8, !tbaa !9
  %cmp4 = fcmp oeq double %1, 0.000000e+00
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %fneg = fneg double %1
  store double %fneg, ptr @b, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %2 = phi double [ %fneg, %if.then ], [ %1, %for.body ]
  %3 = load double, ptr @a, align 8, !tbaa !9
  %mul5 = fmul double %3, 4.000000e+00
  %4 = load double, ptr @c, align 8, !tbaa !9
  %5 = fneg double %4
  %neg = fmul double %mul5, %5
  %6 = tail call double @llvm.fmuladd.f64(double %2, double %2, double %neg)
  store double %6, ptr @j, align 8, !tbaa !9
  %cmp7 = fcmp ogt double %6, 0.000000e+00
  br i1 %cmp7, label %if.then8, label %if.end28

if.then8:                                         ; preds = %if.end
  %fneg9 = fneg double %2
  %call13.i = tail call double @sqrt(double noundef %6) #7, !tbaa !5, !noalias !11
  %add = fsub double %call13.i, %2
  %mul = fmul double %3, 2.000000e+00
  %div = fdiv double %add, %mul
  store double %div, ptr @x, align 16, !tbaa !9
  %sub = fsub double %fneg9, %call13.i
  %div21 = fdiv double %sub, %mul
  store double %div21, ptr getelementptr inbounds nuw (i8, ptr @x, i64 8), align 8, !tbaa !9
  %call22 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  %7 = load double, ptr @x, align 16, !tbaa !9
  %call23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %7) #8
  %call24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2)
  %call25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call24, ptr noundef nonnull @.str.3)
  %8 = load double, ptr getelementptr inbounds nuw (i8, ptr @x, i64 8), align 8, !tbaa !9
  %call26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %8) #8
  %call27 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %.pr = load double, ptr @j, align 8, !tbaa !9
  br label %if.end28

if.end28:                                         ; preds = %if.then8, %if.end
  %9 = phi double [ %.pr, %if.then8 ], [ %6, %if.end ]
  %cmp29 = fcmp oeq double %9, 0.000000e+00
  br i1 %cmp29, label %if.then30, label %if.end37

if.then30:                                        ; preds = %if.end28
  %call31 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.4)
  %10 = load double, ptr @b, align 8, !tbaa !9
  %fneg32 = fneg double %10
  %11 = load double, ptr @a, align 8, !tbaa !9
  %mul33 = fmul double %11, 2.000000e+00
  %div34 = fdiv double %fneg32, %mul33
  %call35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %div34) #8
  %call36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %.pre = load double, ptr @j, align 8, !tbaa !9
  br label %if.end37

if.end37:                                         ; preds = %if.then30, %if.end28
  %12 = phi double [ %.pre, %if.then30 ], [ %9, %if.end28 ]
  %cmp38 = fcmp olt double %12, 0.000000e+00
  br i1 %cmp38, label %if.then39, label %for.inc

if.then39:                                        ; preds = %if.end37
  %call40 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  %13 = load double, ptr @b, align 8, !tbaa !9
  %fneg41 = fneg double %13
  %14 = load double, ptr @a, align 8, !tbaa !9
  %mul42 = fmul double %14, 2.000000e+00
  %div43 = fdiv double %fneg41, %mul42
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %div43) #8
  %call45 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.5)
  %15 = load double, ptr @a, align 8, !tbaa !9, !noalias !14
  %mul46.i = fmul double %15, 4.000000e+00
  %16 = load double, ptr @c, align 8, !tbaa !9, !noalias !14
  %17 = load double, ptr @b, align 8, !tbaa !9, !noalias !14
  %18 = fneg double %17
  %neg49.i = fmul double %17, %18
  %19 = tail call double @llvm.fmuladd.f64(double %mul46.i, double %16, double %neg49.i) #9
  %call50.i = tail call double @sqrt(double noundef %19) #7, !tbaa !5, !noalias !14
  %mul51 = fmul double %15, 2.000000e+00
  %div52 = fdiv double %call50.i, %mul51
  %call53 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %div52) #8
  %call54 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.6)
  %call55 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call54, ptr noundef nonnull @.str.2)
  %call56 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call55, ptr noundef nonnull @.str.3)
  %20 = load double, ptr @b, align 8, !tbaa !9
  %fneg57 = fneg double %20
  %21 = load double, ptr @a, align 8, !tbaa !9
  %mul58 = fmul double %21, 2.000000e+00
  %div59 = fdiv double %fneg57, %mul58
  %call60 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %div59) #8
  %22 = load double, ptr @a, align 8, !tbaa !9, !noalias !17
  %mul46.i5 = fmul double %22, 4.000000e+00
  %23 = load double, ptr @c, align 8, !tbaa !9, !noalias !17
  %24 = load double, ptr @b, align 8, !tbaa !9, !noalias !17
  %25 = fneg double %24
  %neg49.i6 = fmul double %24, %25
  %26 = tail call double @llvm.fmuladd.f64(double %mul46.i5, double %23, double %neg49.i6) #9
  %call50.i7 = tail call double @sqrt(double noundef %26) #7, !tbaa !5, !noalias !17
  %fneg66 = fneg double %call50.i7
  %mul67 = fmul double %22, 2.000000e+00
  %div68 = fdiv double %fneg66, %mul67
  %call69 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %div68) #8
  %call70 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.6)
  %call71 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc

for.inc:                                          ; preds = %if.end37, %if.then39
  %27 = load i32, ptr @i, align 4, !tbaa !5
  %inc = add nsw i32 %27, 1
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind willreturn memory(write) }
attributes #8 = { nounwind }
attributes #9 = { nofree willreturn }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = !{!12}
!12 = distinct !{!12, !13, !"outlined_ir_func_1: argument 0"}
!13 = distinct !{!13, !"outlined_ir_func_1"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"outlined_ir_func_0: argument 0"}
!16 = distinct !{!16, !"outlined_ir_func_0"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"outlined_ir_func_0: argument 0"}
!19 = distinct !{!19, !"outlined_ir_func_0"}
!20 = distinct !{!20, !21, !22}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.unroll.disable"}
