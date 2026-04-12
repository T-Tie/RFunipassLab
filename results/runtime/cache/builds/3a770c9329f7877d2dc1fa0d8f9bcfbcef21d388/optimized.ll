; ModuleID = '<stdin>'
source_filename = "/tmp/tmpe2gu4fb5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@.str = private unnamed_addr constant [8 x i8] c"x1=%.5f\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"x2=%.5f\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"x1=x2=%.5f\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"x1=0.00000+%.5fi\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"x2=0.00000-%.5fi\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"x1=%.5f+%.5fi\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"x2=%.5f-%.5fi\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull %a) #8
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull %b) #8
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull %c) #8
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %a)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 8 dereferenceable(8) %b)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 8 dereferenceable(8) %c)
  %1 = load double, ptr %b, align 8, !tbaa !9
  %2 = load double, ptr %a, align 8, !tbaa !9
  %mul4 = fmul double %2, 4.000000e+00
  %3 = load double, ptr %c, align 8, !tbaa !9
  %4 = fneg double %3
  %neg = fmul double %mul4, %4
  %5 = call double @llvm.fmuladd.f64(double %1, double %1, double %neg)
  %cmp6 = fcmp ogt double %5, 0.000000e+00
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call10 = call double @sqrt(double noundef %5) #8, !tbaa !5
  %add = fsub double %call10, %1
  %mul = fmul double %2, 2.000000e+00
  %div = fdiv double %add, %mul
  %call11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %div)
  %call12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1)
  %6 = load double, ptr %b, align 8, !tbaa !9
  %fneg13 = fneg double %6
  %7 = load double, ptr %a, align 8, !tbaa !9
  %mul15 = fmul double %7, 4.000000e+00
  %8 = load double, ptr %c, align 8, !tbaa !9
  %9 = fneg double %8
  %neg17 = fmul double %mul15, %9
  %10 = call double @llvm.fmuladd.f64(double %6, double %6, double %neg17)
  %call18 = call double @sqrt(double noundef %10) #8, !tbaa !5
  %sub = fsub double %fneg13, %call18
  %mul19 = fmul double %7, 2.000000e+00
  %div20 = fdiv double %sub, %mul19
  %call21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %div20)
  %call22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %.pre = load double, ptr %b, align 8, !tbaa !9
  %.pre4 = load double, ptr %a, align 8, !tbaa !9
  %.pre5 = load double, ptr %c, align 8, !tbaa !9
  %.pre9 = fmul double %.pre4, 4.000000e+00
  %.pre10 = fneg double %.pre5
  %.pre11 = fmul double %.pre9, %.pre10
  %.pre12 = call double @llvm.fmuladd.f64(double %.pre, double %.pre, double %.pre11)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %.pre-phi13 = phi double [ %.pre12, %if.then ], [ %5, %for.body ]
  %mul24.pre-phi = phi double [ %.pre9, %if.then ], [ %mul4, %for.body ]
  %11 = phi double [ %.pre5, %if.then ], [ %3, %for.body ]
  %12 = phi double [ %.pre4, %if.then ], [ %2, %for.body ]
  %13 = phi double [ %.pre, %if.then ], [ %1, %for.body ]
  %cmp27 = fcmp oeq double %.pre-phi13, 0.000000e+00
  br i1 %cmp27, label %if.then28, label %if.end34

if.then28:                                        ; preds = %if.end
  %fneg29 = fneg double %13
  %mul30 = fmul double %12, 2.000000e+00
  %div31 = fdiv double %fneg29, %mul30
  %call32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %div31)
  %call33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %.pre6 = load double, ptr %b, align 8, !tbaa !9
  %.pre7 = load double, ptr %a, align 8, !tbaa !9
  %.pre8 = load double, ptr %c, align 8, !tbaa !9
  %.pre14 = fmul double %.pre7, 4.000000e+00
  %.pre15 = fneg double %.pre8
  %.pre17 = fmul double %.pre14, %.pre15
  %.pre18 = call double @llvm.fmuladd.f64(double %.pre6, double %.pre6, double %.pre17)
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %if.end
  %.pre-phi19 = phi double [ %.pre18, %if.then28 ], [ %.pre-phi13, %if.end ]
  %mul36.pre-phi = phi double [ %.pre14, %if.then28 ], [ %mul24.pre-phi, %if.end ]
  %14 = phi double [ %.pre8, %if.then28 ], [ %11, %if.end ]
  %15 = phi double [ %.pre7, %if.then28 ], [ %12, %if.end ]
  %16 = phi double [ %.pre6, %if.then28 ], [ %13, %if.end ]
  %cmp39 = fcmp olt double %.pre-phi19, 0.000000e+00
  br i1 %cmp39, label %if.then40, label %for.inc

if.then40:                                        ; preds = %if.end34
  %cmp41 = fcmp oeq double %16, 0.000000e+00
  %17 = fneg double %16
  br i1 %cmp41, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.then40
  %neg46 = fmul double %16, %17
  %18 = call double @llvm.fmuladd.f64(double %mul36.pre-phi, double %14, double %neg46)
  %call47 = call double @sqrt(double noundef %18) #8, !tbaa !5
  %mul48 = fmul double %15, 2.000000e+00
  %div49 = fdiv double %call47, %mul48
  %call50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %div49)
  %call51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1)
  %19 = load double, ptr %a, align 8, !tbaa !9
  %mul52 = fmul double %19, 4.000000e+00
  %20 = load double, ptr %c, align 8, !tbaa !9
  %21 = load double, ptr %b, align 8, !tbaa !9
  %22 = fneg double %21
  %neg55 = fmul double %21, %22
  %23 = call double @llvm.fmuladd.f64(double %mul52, double %20, double %neg55)
  %call56 = call double @sqrt(double noundef %23) #8, !tbaa !5
  %mul57 = fmul double %19, 2.000000e+00
  %div58 = fdiv double %call56, %mul57
  %call59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %div58)
  br label %for.inc.gvnsink.split

if.else:                                          ; preds = %if.then40
  %mul62 = fmul double %15, 2.000000e+00
  %div63 = fdiv double %17, %mul62
  %neg67 = fmul double %16, %17
  %24 = call double @llvm.fmuladd.f64(double %mul36.pre-phi, double %14, double %neg67)
  %call68 = call double @sqrt(double noundef %24) #8, !tbaa !5
  %div70 = fdiv double %call68, %mul62
  %call71 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %div63, double noundef %div70)
  %call72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1)
  %25 = load double, ptr %b, align 8, !tbaa !9
  %fneg73 = fneg double %25
  %26 = load double, ptr %a, align 8, !tbaa !9
  %mul74 = fmul double %26, 2.000000e+00
  %div75 = fdiv double %fneg73, %mul74
  %mul76 = fmul double %26, 4.000000e+00
  %27 = load double, ptr %c, align 8, !tbaa !9
  %neg79 = fmul double %25, %fneg73
  %28 = call double @llvm.fmuladd.f64(double %mul76, double %27, double %neg79)
  %call80 = call double @sqrt(double noundef %28) #8, !tbaa !5
  %div82 = fdiv double %call80, %mul74
  %call83 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %div75, double noundef %div82)
  br label %for.inc.gvnsink.split

for.inc.gvnsink.split:                            ; preds = %if.then42, %if.else
  %call84 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc

for.inc:                                          ; preds = %for.inc.gvnsink.split, %if.end34
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %c) #8
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %b) #8
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %a) #8
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3 align 2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nounwind }

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
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
