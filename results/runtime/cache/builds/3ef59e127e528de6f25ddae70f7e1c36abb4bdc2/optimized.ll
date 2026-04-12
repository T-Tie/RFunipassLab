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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef %a) #9
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef %b) #9
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef %c) #9
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %a)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 8 dereferenceable(8) %b)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 8 dereferenceable(8) %c)
  %1 = load double, ptr %b, align 8, !tbaa !9
  %2 = load double, ptr %a, align 8, !tbaa !9
  %mul4 = fmul double %2, 4.000000e+00
  %3 = load double, ptr %c, align 8, !tbaa !9
  %mul5 = fmul double %mul4, %3
  %neg = fneg double %mul5
  %4 = call double @llvm.fmuladd.f64(double %1, double %1, double %neg)
  %cmp6 = fcmp ogt double %4, 0.000000e+00
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %fneg = fneg double %1
  %call10 = call double @sqrt(double noundef %4) #10, !tbaa !5
  %add = fadd double %fneg, %call10
  %mul = fmul double %2, 2.000000e+00
  %div = fdiv double %add, %mul
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %div) #9
  %call12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1)
  %5 = load double, ptr %b, align 8, !tbaa !9
  %fneg13 = fneg double %5
  %6 = load double, ptr %a, align 8, !tbaa !9
  %mul15 = fmul double %6, 4.000000e+00
  %7 = load double, ptr %c, align 8, !tbaa !9
  %mul16 = fmul double %mul15, %7
  %neg17 = fneg double %mul16
  %8 = call double @llvm.fmuladd.f64(double %5, double %5, double %neg17)
  %call18 = call double @sqrt(double noundef %8) #10, !tbaa !5
  %sub = fsub double %fneg13, %call18
  %mul19 = fmul double %6, 2.000000e+00
  %div20 = fdiv double %sub, %mul19
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %div20) #9
  %call22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load double, ptr %b, align 8, !tbaa !9
  %10 = load double, ptr %a, align 8, !tbaa !9
  %mul24 = fmul double %10, 4.000000e+00
  %11 = load double, ptr %c, align 8, !tbaa !9
  %mul25 = fmul double %mul24, %11
  %neg26 = fneg double %mul25
  %12 = call double @llvm.fmuladd.f64(double %9, double %9, double %neg26)
  %cmp27 = fcmp oeq double %12, 0.000000e+00
  br i1 %cmp27, label %if.then28, label %if.end34

if.then28:                                        ; preds = %if.end
  %fneg29 = fneg double %9
  %mul30 = fmul double %10, 2.000000e+00
  %div31 = fdiv double %fneg29, %mul30
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %div31) #9
  %call33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %if.end
  %13 = load double, ptr %b, align 8, !tbaa !9
  %14 = load double, ptr %a, align 8, !tbaa !9
  %mul36 = fmul double %14, 4.000000e+00
  %15 = load double, ptr %c, align 8, !tbaa !9
  %mul37 = fmul double %mul36, %15
  %neg38 = fneg double %mul37
  %16 = call double @llvm.fmuladd.f64(double %13, double %13, double %neg38)
  %cmp39 = fcmp olt double %16, 0.000000e+00
  br i1 %cmp39, label %if.then40, label %for.inc

if.then40:                                        ; preds = %if.end34
  %cmp41 = fcmp oeq double %13, 0.000000e+00
  br i1 %cmp41, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.then40
  %mul45 = fmul double %13, %13
  %neg46 = fneg double %mul45
  %17 = call double @llvm.fmuladd.f64(double %mul36, double %15, double %neg46)
  %call47 = call double @sqrt(double noundef %17) #10, !tbaa !5
  %mul48 = fmul double %14, 2.000000e+00
  %div49 = fdiv double %call47, %mul48
  %call50 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %div49) #9
  %call51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1)
  %18 = load double, ptr %a, align 8, !tbaa !9
  %mul52 = fmul double %18, 4.000000e+00
  %19 = load double, ptr %c, align 8, !tbaa !9
  %20 = load double, ptr %b, align 8, !tbaa !9
  %mul54 = fmul double %20, %20
  %neg55 = fneg double %mul54
  %21 = call double @llvm.fmuladd.f64(double %mul52, double %19, double %neg55)
  %call56 = call double @sqrt(double noundef %21) #10, !tbaa !5
  %mul57 = fmul double %18, 2.000000e+00
  %div58 = fdiv double %call56, %mul57
  %call59 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %div58) #9
  br label %for.inc.gvnsink.split

if.else:                                          ; preds = %if.then40
  %fneg61 = fneg double %13
  %mul62 = fmul double %14, 2.000000e+00
  %div63 = fdiv double %fneg61, %mul62
  %mul66 = fmul double %13, %13
  %neg67 = fneg double %mul66
  %22 = call double @llvm.fmuladd.f64(double %mul36, double %15, double %neg67)
  %call68 = call double @sqrt(double noundef %22) #10, !tbaa !5
  %div70 = fdiv double %call68, %mul62
  %call71 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %div63, double noundef %div70) #9
  %call72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1)
  %23 = load double, ptr %b, align 8, !tbaa !9
  %fneg73 = fneg double %23
  %24 = load double, ptr %a, align 8, !tbaa !9
  %mul74 = fmul double %24, 2.000000e+00
  %div75 = fdiv double %fneg73, %mul74
  %mul76 = fmul double %24, 4.000000e+00
  %25 = load double, ptr %c, align 8, !tbaa !9
  %mul78 = fmul double %23, %23
  %neg79 = fneg double %mul78
  %26 = call double @llvm.fmuladd.f64(double %mul76, double %25, double %neg79)
  %call80 = call double @sqrt(double noundef %26) #10, !tbaa !5
  %div82 = fdiv double %call80, %mul74
  %call83 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %div75, double noundef %div82) #9
  br label %for.inc.gvnsink.split

for.inc.gvnsink.split:                            ; preds = %if.then42, %if.else
  %call84 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc

for.inc:                                          ; preds = %for.inc.gvnsink.split, %if.end34
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef %c) #9
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef %b) #9
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef %a) #9
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind memory(write) }

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
