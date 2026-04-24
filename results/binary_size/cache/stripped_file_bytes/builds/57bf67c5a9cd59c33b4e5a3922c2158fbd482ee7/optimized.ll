; ModuleID = '/tmp/tmp4m6v1rm8.cpp'
source_filename = "/tmp/tmp4m6v1rm8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%lf%lf%lf\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"x1=%.5lf;x2=%.5lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"x1=x2=%.5lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"x1=%.5lf+%.5lfi;x2=%.5lf-%.5lfi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %m = alloca double, align 8
  %n41 = alloca double, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #5
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %a, ptr noundef %b, ptr noundef %c)
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %x2) #5
  %2 = load double, ptr %b, align 8, !tbaa !9
  %3 = load double, ptr %b, align 8, !tbaa !9
  %4 = load double, ptr %a, align 8, !tbaa !9
  %mul2 = fmul double 4.000000e+00, %4
  %5 = load double, ptr %c, align 8, !tbaa !9
  %mul3 = fmul double %mul2, %5
  %neg = fneg double %mul3
  %6 = call double @llvm.fmuladd.f64(double %2, double %3, double %neg)
  %cmp4 = fcmp ogt double %6, 0.000000e+00
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load double, ptr %b, align 8, !tbaa !9
  %fneg = fneg double %7
  %8 = load double, ptr %b, align 8, !tbaa !9
  %9 = load double, ptr %b, align 8, !tbaa !9
  %10 = load double, ptr %a, align 8, !tbaa !9
  %mul5 = fmul double 4.000000e+00, %10
  %11 = load double, ptr %c, align 8, !tbaa !9
  %mul6 = fmul double %mul5, %11
  %neg7 = fneg double %mul6
  %12 = call double @llvm.fmuladd.f64(double %8, double %9, double %neg7)
  %call8 = call double @sqrt(double noundef %12) #5, !tbaa !5
  %add = fadd double %fneg, %call8
  %13 = load double, ptr %a, align 8, !tbaa !9
  %mul = fmul double 2.000000e+00, %13
  %div = fdiv double %add, %mul
  store double %div, ptr %x1, align 8, !tbaa !9
  %14 = load double, ptr %b, align 8, !tbaa !9
  %fneg9 = fneg double %14
  %15 = load double, ptr %b, align 8, !tbaa !9
  %16 = load double, ptr %b, align 8, !tbaa !9
  %17 = load double, ptr %a, align 8, !tbaa !9
  %mul11 = fmul double 4.000000e+00, %17
  %18 = load double, ptr %c, align 8, !tbaa !9
  %mul12 = fmul double %mul11, %18
  %neg13 = fneg double %mul12
  %19 = call double @llvm.fmuladd.f64(double %15, double %16, double %neg13)
  %call14 = call double @sqrt(double noundef %19) #5, !tbaa !5
  %sub = fsub double %fneg9, %call14
  %20 = load double, ptr %a, align 8, !tbaa !9
  %mul15 = fmul double 2.000000e+00, %20
  %div16 = fdiv double %sub, %mul15
  store double %div16, ptr %x2, align 8, !tbaa !9
  %21 = load double, ptr %x1, align 8, !tbaa !9
  %22 = load double, ptr %x2, align 8, !tbaa !9
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %21, double noundef %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %23 = load double, ptr %b, align 8, !tbaa !9
  %24 = load double, ptr %b, align 8, !tbaa !9
  %25 = load double, ptr %a, align 8, !tbaa !9
  %mul19 = fmul double 4.000000e+00, %25
  %26 = load double, ptr %c, align 8, !tbaa !9
  %mul20 = fmul double %mul19, %26
  %neg21 = fneg double %mul20
  %27 = call double @llvm.fmuladd.f64(double %23, double %24, double %neg21)
  %cmp22 = fcmp oeq double %27, 0.000000e+00
  br i1 %cmp22, label %if.then23, label %if.end34

if.then23:                                        ; preds = %if.end
  %28 = load double, ptr %b, align 8, !tbaa !9
  %fneg24 = fneg double %28
  %29 = load double, ptr %b, align 8, !tbaa !9
  %30 = load double, ptr %b, align 8, !tbaa !9
  %31 = load double, ptr %a, align 8, !tbaa !9
  %mul26 = fmul double 4.000000e+00, %31
  %32 = load double, ptr %c, align 8, !tbaa !9
  %mul27 = fmul double %mul26, %32
  %neg28 = fneg double %mul27
  %33 = call double @llvm.fmuladd.f64(double %29, double %30, double %neg28)
  %call29 = call double @sqrt(double noundef %33) #5, !tbaa !5
  %add30 = fadd double %fneg24, %call29
  %34 = load double, ptr %a, align 8, !tbaa !9
  %mul31 = fmul double 2.000000e+00, %34
  %div32 = fdiv double %add30, %mul31
  store double %div32, ptr %x1, align 8, !tbaa !9
  %35 = load double, ptr %x1, align 8, !tbaa !9
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %35)
  br label %if.end34

if.end34:                                         ; preds = %if.then23, %if.end
  %36 = load double, ptr %b, align 8, !tbaa !9
  %37 = load double, ptr %b, align 8, !tbaa !9
  %38 = load double, ptr %a, align 8, !tbaa !9
  %mul36 = fmul double 4.000000e+00, %38
  %39 = load double, ptr %c, align 8, !tbaa !9
  %mul37 = fmul double %mul36, %39
  %neg38 = fneg double %mul37
  %40 = call double @llvm.fmuladd.f64(double %36, double %37, double %neg38)
  %cmp39 = fcmp olt double %40, 0.000000e+00
  br i1 %cmp39, label %if.then40, label %if.end56

if.then40:                                        ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %n41) #5
  %41 = load double, ptr %b, align 8, !tbaa !9
  %fneg42 = fneg double %41
  %42 = load double, ptr %a, align 8, !tbaa !9
  %mul43 = fmul double 2.000000e+00, %42
  %div44 = fdiv double %fneg42, %mul43
  store double %div44, ptr %m, align 8, !tbaa !9
  %43 = load double, ptr %b, align 8, !tbaa !9
  %fneg45 = fneg double %43
  %44 = load double, ptr %b, align 8, !tbaa !9
  %45 = load double, ptr %a, align 8, !tbaa !9
  %mul47 = fmul double 4.000000e+00, %45
  %46 = load double, ptr %c, align 8, !tbaa !9
  %mul48 = fmul double %mul47, %46
  %47 = call double @llvm.fmuladd.f64(double %fneg45, double %44, double %mul48)
  %call49 = call double @sqrt(double noundef %47) #5, !tbaa !5
  %48 = load double, ptr %a, align 8, !tbaa !9
  %mul50 = fmul double 2.000000e+00, %48
  %div51 = fdiv double %call49, %mul50
  store double %div51, ptr %n41, align 8, !tbaa !9
  %49 = load double, ptr %m, align 8, !tbaa !9
  %cmp52 = fcmp oeq double %49, 0.000000e+00
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.then40
  store double 0.000000e+00, ptr %m, align 8, !tbaa !9
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.then40
  %50 = load double, ptr %m, align 8, !tbaa !9
  %51 = load double, ptr %n41, align 8, !tbaa !9
  %52 = load double, ptr %m, align 8, !tbaa !9
  %53 = load double, ptr %n41, align 8, !tbaa !9
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %50, double noundef %51, double noundef %52, double noundef %53)
  call void @llvm.lifetime.end.p0(i64 8, ptr %n41) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #5
  br label %if.end56

if.end56:                                         ; preds = %if.end54, %if.end34
  call void @llvm.lifetime.end.p0(i64 8, ptr %x2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end56
  %54 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %54, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind
declare double @sqrt(double noundef) #4

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
