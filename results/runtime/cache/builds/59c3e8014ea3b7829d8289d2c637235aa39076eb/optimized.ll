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
  %call19.loc = alloca double, align 8
  %call13.loc = alloca double, align 8
  %call65.loc = alloca double, align 8
  %call50.loc = alloca double, align 8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  store i32 1, ptr @i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @i, align 4, !tbaa !5
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) @a)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 8 dereferenceable(8) @b)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 8 dereferenceable(8) @c)
  %2 = load double, ptr @b, align 8, !tbaa !9
  %cmp4 = fcmp oeq double %2, 0.000000e+00
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %fneg = fneg double %2
  store double %fneg, ptr @b, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = load double, ptr @b, align 8, !tbaa !9
  %4 = load double, ptr @a, align 8, !tbaa !9
  %mul5 = fmul double %4, 4.000000e+00
  %5 = load double, ptr @c, align 8, !tbaa !9
  %mul6 = fmul double %mul5, %5
  %neg = fneg double %mul6
  %6 = call double @llvm.fmuladd.f64(double %3, double %3, double %neg)
  store double %6, ptr @j, align 8, !tbaa !9
  %cmp7 = fcmp ogt double %6, 0.000000e+00
  br i1 %cmp7, label %if.then8, label %if.end28

if.then8:                                         ; preds = %if.end
  %fneg9 = fneg double %3
  call void @llvm.lifetime.start.p0(i64 noundef -1, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %call13.loc)
  call fastcc void @outlined_ir_func_1(ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %call13.loc) #8
  %call13.reload = load double, ptr %call13.loc, align 8
  call void @llvm.lifetime.end.p0(i64 noundef -1, ptr noundef captures(none) %call13.loc)
  %add = fadd double %fneg9, %call13.reload
  %7 = load double, ptr @a, align 8, !tbaa !9
  %mul = fmul double %7, 2.000000e+00
  %div = fdiv double %add, %mul
  store double %div, ptr @x, align 16, !tbaa !9
  %8 = load double, ptr @b, align 8, !tbaa !9
  %fneg14 = fneg double %8
  call void @llvm.lifetime.start.p0(i64 noundef -1, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %call19.loc)
  call fastcc void @outlined_ir_func_1(ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %call19.loc) #8
  %call19.reload = load double, ptr %call19.loc, align 8
  call void @llvm.lifetime.end.p0(i64 noundef -1, ptr noundef captures(none) %call19.loc)
  %sub = fsub double %fneg14, %call19.reload
  %9 = load double, ptr @a, align 8, !tbaa !9
  %mul20 = fmul double %9, 2.000000e+00
  %div21 = fdiv double %sub, %mul20
  store double %div21, ptr getelementptr inbounds ([2 x double], ptr @x, i64 0, i64 1), align 8, !tbaa !9
  %call22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %10 = load double, ptr @x, align 16, !tbaa !9
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %10)
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2)
  %call25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call24, ptr noundef @.str.3)
  %11 = load double, ptr getelementptr inbounds ([2 x double], ptr @x, i64 0, i64 1), align 8, !tbaa !9
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %11)
  %call27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %.pr = load double, ptr @j, align 8, !tbaa !9
  br label %if.end28

if.end28:                                         ; preds = %if.then8, %if.end
  %12 = phi double [ %.pr, %if.then8 ], [ %6, %if.end ]
  %cmp29 = fcmp oeq double %12, 0.000000e+00
  br i1 %cmp29, label %if.then30, label %if.end37

if.then30:                                        ; preds = %if.end28
  %call31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.4)
  %13 = load double, ptr @b, align 8, !tbaa !9
  %fneg32 = fneg double %13
  %14 = load double, ptr @a, align 8, !tbaa !9
  %mul33 = fmul double %14, 2.000000e+00
  %div34 = fdiv double %fneg32, %mul33
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %div34)
  %call36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end37

if.end37:                                         ; preds = %if.then30, %if.end28
  %15 = load double, ptr @j, align 8, !tbaa !9
  %cmp38 = fcmp olt double %15, 0.000000e+00
  br i1 %cmp38, label %if.then39, label %for.inc

if.then39:                                        ; preds = %if.end37
  %call40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %16 = load double, ptr @b, align 8, !tbaa !9
  %fneg41 = fneg double %16
  %17 = load double, ptr @a, align 8, !tbaa !9
  %mul42 = fmul double %17, 2.000000e+00
  %div43 = fdiv double %fneg41, %mul42
  %call44 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %div43)
  %call45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.5)
  call void @llvm.lifetime.start.p0(i64 noundef -1, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %call50.loc)
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %call50.loc) #8
  %call50.reload = load double, ptr %call50.loc, align 8
  call void @llvm.lifetime.end.p0(i64 noundef -1, ptr noundef captures(none) %call50.loc)
  %18 = load double, ptr @a, align 8, !tbaa !9
  %mul51 = fmul double %18, 2.000000e+00
  %div52 = fdiv double %call50.reload, %mul51
  %call53 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %div52)
  %call54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.6)
  %call55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call54, ptr noundef @.str.2)
  %call56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call55, ptr noundef @.str.3)
  %19 = load double, ptr @b, align 8, !tbaa !9
  %fneg57 = fneg double %19
  %20 = load double, ptr @a, align 8, !tbaa !9
  %mul58 = fmul double %20, 2.000000e+00
  %div59 = fdiv double %fneg57, %mul58
  %call60 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %div59)
  call void @llvm.lifetime.start.p0(i64 noundef -1, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %call65.loc)
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %call65.loc) #8
  %call65.reload = load double, ptr %call65.loc, align 8
  call void @llvm.lifetime.end.p0(i64 noundef -1, ptr noundef captures(none) %call65.loc)
  %fneg66 = fneg double %call65.reload
  %21 = load double, ptr @a, align 8, !tbaa !9
  %mul67 = fmul double %21, 2.000000e+00
  %div68 = fdiv double %fneg66, %mul67
  %call69 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %div68)
  %call70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.6)
  %call71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc

for.inc:                                          ; preds = %if.end37, %if.then39
  %22 = load i32, ptr @i, align 4, !tbaa !5
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr @i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2 align 2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #6

; Function Attrs: minsize mustprogress norecurse nounwind optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
if.then39_after_outline.exitStub:
  %1 = load double, ptr @a, align 8, !tbaa !9
  %mul46 = fmul double %1, 4.000000e+00
  %2 = load double, ptr @c, align 8, !tbaa !9
  %3 = load double, ptr @b, align 8, !tbaa !9
  %mul48 = fmul double %3, %3
  %neg49 = fneg double %mul48
  %4 = call double @llvm.fmuladd.f64(double %mul46, double %2, double %neg49) #9
  %call50 = call double @sqrt(double noundef %4) #8, !tbaa !5
  store double %call50, ptr %0, align 8
  ret void
}

; Function Attrs: minsize mustprogress norecurse nounwind optsize uwtable
define internal fastcc void @outlined_ir_func_1(ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
if.then8_after_outline.exitStub:
  %1 = load double, ptr @b, align 8, !tbaa !9
  %2 = load double, ptr @a, align 8, !tbaa !9
  %mul10 = fmul double %2, 4.000000e+00
  %3 = load double, ptr @c, align 8, !tbaa !9
  %mul11 = fmul double %mul10, %3
  %neg12 = fneg double %mul11
  %4 = call double @llvm.fmuladd.f64(double %1, double %1, double %neg12) #9
  %call13 = call double @sqrt(double noundef %4) #8, !tbaa !5
  store double %call13, ptr %0, align 8
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { minsize mustprogress norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
