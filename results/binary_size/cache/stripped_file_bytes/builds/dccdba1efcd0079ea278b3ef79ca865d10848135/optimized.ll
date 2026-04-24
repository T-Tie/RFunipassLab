; ModuleID = '/tmp/tmpdykedkst.cpp'
source_filename = "/tmp/tmpdykedkst.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%lf%lf%lf\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"x1=%.5lf;x2=%.5lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"x1=x2=%.5lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"x1=0.00000+%.5lfi;x2=0.00000%.5lfi\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"x1=%.5lf+%.5lfi;x2=%.5lf%.5lfi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #5
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %a, ptr noundef %b, ptr noundef %c)
  %2 = load double, ptr %b, align 8, !tbaa !9
  %3 = load double, ptr %b, align 8, !tbaa !9
  %mul = fmul double %2, %3
  %4 = load double, ptr %a, align 8, !tbaa !9
  %mul2 = fmul double 4.000000e+00, %4
  %5 = load double, ptr %c, align 8, !tbaa !9
  %mul3 = fmul double %mul2, %5
  %cmp4 = fcmp ogt double %mul, %mul3
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load double, ptr %b, align 8, !tbaa !9
  %fneg = fneg double %6
  %7 = load double, ptr %b, align 8, !tbaa !9
  %8 = load double, ptr %b, align 8, !tbaa !9
  %9 = load double, ptr %a, align 8, !tbaa !9
  %mul6 = fmul double 4.000000e+00, %9
  %10 = load double, ptr %c, align 8, !tbaa !9
  %mul7 = fmul double %mul6, %10
  %neg = fneg double %mul7
  %11 = call double @llvm.fmuladd.f64(double %7, double %8, double %neg)
  %call8 = call double @sqrt(double noundef %11) #5, !tbaa !5
  %add = fadd double %fneg, %call8
  %12 = load double, ptr %a, align 8, !tbaa !9
  %mul9 = fmul double 2.000000e+00, %12
  %div = fdiv double %add, %mul9
  %13 = load double, ptr %b, align 8, !tbaa !9
  %fneg10 = fneg double %13
  %14 = load double, ptr %b, align 8, !tbaa !9
  %15 = load double, ptr %b, align 8, !tbaa !9
  %16 = load double, ptr %a, align 8, !tbaa !9
  %mul12 = fmul double 4.000000e+00, %16
  %17 = load double, ptr %c, align 8, !tbaa !9
  %mul13 = fmul double %mul12, %17
  %neg14 = fneg double %mul13
  %18 = call double @llvm.fmuladd.f64(double %14, double %15, double %neg14)
  %call15 = call double @sqrt(double noundef %18) #5, !tbaa !5
  %sub = fsub double %fneg10, %call15
  %19 = load double, ptr %a, align 8, !tbaa !9
  %mul16 = fmul double 2.000000e+00, %19
  %div17 = fdiv double %sub, %mul16
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %div, double noundef %div17)
  br label %if.end77

if.else:                                          ; preds = %for.body
  %20 = load double, ptr %b, align 8, !tbaa !9
  %21 = load double, ptr %b, align 8, !tbaa !9
  %mul19 = fmul double %20, %21
  %22 = load double, ptr %a, align 8, !tbaa !9
  %mul20 = fmul double 4.000000e+00, %22
  %23 = load double, ptr %c, align 8, !tbaa !9
  %mul21 = fmul double %mul20, %23
  %cmp22 = fcmp oeq double %mul19, %mul21
  br i1 %cmp22, label %if.then23, label %if.else34

if.then23:                                        ; preds = %if.else
  %24 = load double, ptr %b, align 8, !tbaa !9
  %fneg24 = fneg double %24
  %25 = load double, ptr %b, align 8, !tbaa !9
  %26 = load double, ptr %b, align 8, !tbaa !9
  %27 = load double, ptr %a, align 8, !tbaa !9
  %mul26 = fmul double 4.000000e+00, %27
  %28 = load double, ptr %c, align 8, !tbaa !9
  %mul27 = fmul double %mul26, %28
  %neg28 = fneg double %mul27
  %29 = call double @llvm.fmuladd.f64(double %25, double %26, double %neg28)
  %call29 = call double @sqrt(double noundef %29) #5, !tbaa !5
  %add30 = fadd double %fneg24, %call29
  %30 = load double, ptr %a, align 8, !tbaa !9
  %mul31 = fmul double 2.000000e+00, %30
  %div32 = fdiv double %add30, %mul31
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %div32)
  br label %if.end76

if.else34:                                        ; preds = %if.else
  %31 = load double, ptr %b, align 8, !tbaa !9
  %cmp35 = fcmp oeq double %31, 0.000000e+00
  br i1 %cmp35, label %if.then36, label %if.else53

if.then36:                                        ; preds = %if.else34
  %32 = load double, ptr %b, align 8, !tbaa !9
  %fneg37 = fneg double %32
  %33 = load double, ptr %b, align 8, !tbaa !9
  %34 = load double, ptr %a, align 8, !tbaa !9
  %mul39 = fmul double 4.000000e+00, %34
  %35 = load double, ptr %c, align 8, !tbaa !9
  %mul40 = fmul double %mul39, %35
  %36 = call double @llvm.fmuladd.f64(double %fneg37, double %33, double %mul40)
  %call41 = call double @sqrt(double noundef %36) #5, !tbaa !5
  %37 = load double, ptr %a, align 8, !tbaa !9
  %mul42 = fmul double 2.000000e+00, %37
  %div43 = fdiv double %call41, %mul42
  %38 = load double, ptr %b, align 8, !tbaa !9
  %fneg44 = fneg double %38
  %39 = load double, ptr %b, align 8, !tbaa !9
  %40 = load double, ptr %a, align 8, !tbaa !9
  %mul46 = fmul double 4.000000e+00, %40
  %41 = load double, ptr %c, align 8, !tbaa !9
  %mul47 = fmul double %mul46, %41
  %42 = call double @llvm.fmuladd.f64(double %fneg44, double %39, double %mul47)
  %call48 = call double @sqrt(double noundef %42) #5, !tbaa !5
  %fneg49 = fneg double %call48
  %43 = load double, ptr %a, align 8, !tbaa !9
  %mul50 = fmul double 2.000000e+00, %43
  %div51 = fdiv double %fneg49, %mul50
  %call52 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %div43, double noundef %div51)
  br label %if.end

if.else53:                                        ; preds = %if.else34
  %44 = load double, ptr %b, align 8, !tbaa !9
  %fneg54 = fneg double %44
  %45 = load double, ptr %a, align 8, !tbaa !9
  %mul55 = fmul double 2.000000e+00, %45
  %div56 = fdiv double %fneg54, %mul55
  %46 = load double, ptr %b, align 8, !tbaa !9
  %fneg57 = fneg double %46
  %47 = load double, ptr %b, align 8, !tbaa !9
  %48 = load double, ptr %a, align 8, !tbaa !9
  %mul59 = fmul double 4.000000e+00, %48
  %49 = load double, ptr %c, align 8, !tbaa !9
  %mul60 = fmul double %mul59, %49
  %50 = call double @llvm.fmuladd.f64(double %fneg57, double %47, double %mul60)
  %call61 = call double @sqrt(double noundef %50) #5, !tbaa !5
  %51 = load double, ptr %a, align 8, !tbaa !9
  %mul62 = fmul double 2.000000e+00, %51
  %div63 = fdiv double %call61, %mul62
  %52 = load double, ptr %b, align 8, !tbaa !9
  %fneg64 = fneg double %52
  %53 = load double, ptr %a, align 8, !tbaa !9
  %mul65 = fmul double 2.000000e+00, %53
  %div66 = fdiv double %fneg64, %mul65
  %54 = load double, ptr %b, align 8, !tbaa !9
  %fneg67 = fneg double %54
  %55 = load double, ptr %b, align 8, !tbaa !9
  %56 = load double, ptr %a, align 8, !tbaa !9
  %mul69 = fmul double 4.000000e+00, %56
  %57 = load double, ptr %c, align 8, !tbaa !9
  %mul70 = fmul double %mul69, %57
  %58 = call double @llvm.fmuladd.f64(double %fneg67, double %55, double %mul70)
  %call71 = call double @sqrt(double noundef %58) #5, !tbaa !5
  %fneg72 = fneg double %call71
  %59 = load double, ptr %a, align 8, !tbaa !9
  %mul73 = fmul double 2.000000e+00, %59
  %div74 = fdiv double %fneg72, %mul73
  %call75 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %div56, double noundef %div63, double noundef %div66, double noundef %div74)
  br label %if.end

if.end:                                           ; preds = %if.else53, %if.then36
  br label %if.end76

if.end76:                                         ; preds = %if.end, %if.then23
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end77
  %60 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %60, 1
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

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
