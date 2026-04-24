; ModuleID = '/tmp/tmp4jzwzpa9.cpp'
source_filename = "/tmp/tmp4jzwzpa9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%lf %lf %lf\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"x1=x2=%.5lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"x1=%.5lf+%.5lfi;x2=%.5lf-%.5lfi\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"x1=%.5lf;x2=%.5lf\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %d = alloca double, align 8
  %e = alloca double, align 8
  %f = alloca double, align 8
  %g = alloca double, align 8
  %h = alloca double, align 8
  %j = alloca double, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %g) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %a, ptr noundef %b, ptr noundef %c)
  %2 = load double, ptr %b, align 8, !tbaa !9
  %3 = load double, ptr %b, align 8, !tbaa !9
  %4 = load double, ptr %a, align 8, !tbaa !9
  %mul2 = fmul double 4.000000e+00, %4
  %5 = load double, ptr %c, align 8, !tbaa !9
  %mul3 = fmul double %mul2, %5
  %neg = fneg double %mul3
  %6 = call double @llvm.fmuladd.f64(double %2, double %3, double %neg)
  store double %6, ptr %d, align 8, !tbaa !9
  %7 = load double, ptr %b, align 8, !tbaa !9
  %fneg = fneg double %7
  %8 = load double, ptr %a, align 8, !tbaa !9
  %mul = fmul double 2.000000e+00, %8
  %div = fdiv double %fneg, %mul
  store double %div, ptr %e, align 8, !tbaa !9
  %9 = load double, ptr %e, align 8, !tbaa !9
  %sub = fsub double 0.000000e+00, %9
  store double %sub, ptr %f, align 8, !tbaa !9
  %10 = load double, ptr %a, align 8, !tbaa !9
  %mul4 = fmul double 4.000000e+00, %10
  %11 = load double, ptr %c, align 8, !tbaa !9
  %12 = load double, ptr %b, align 8, !tbaa !9
  %13 = load double, ptr %b, align 8, !tbaa !9
  %mul6 = fmul double %12, %13
  %neg7 = fneg double %mul6
  %14 = call double @llvm.fmuladd.f64(double %mul4, double %11, double %neg7)
  %call8 = call double @sqrt(double noundef %14) #5, !tbaa !5
  %15 = load double, ptr %a, align 8, !tbaa !9
  %mul9 = fmul double 2.000000e+00, %15
  %div10 = fdiv double %call8, %mul9
  store double %div10, ptr %g, align 8, !tbaa !9
  %16 = load double, ptr %b, align 8, !tbaa !9
  %fneg11 = fneg double %16
  %17 = load double, ptr %b, align 8, !tbaa !9
  %18 = load double, ptr %b, align 8, !tbaa !9
  %19 = load double, ptr %a, align 8, !tbaa !9
  %mul13 = fmul double 4.000000e+00, %19
  %20 = load double, ptr %c, align 8, !tbaa !9
  %mul14 = fmul double %mul13, %20
  %neg15 = fneg double %mul14
  %21 = call double @llvm.fmuladd.f64(double %17, double %18, double %neg15)
  %call16 = call double @sqrt(double noundef %21) #5, !tbaa !5
  %add = fadd double %fneg11, %call16
  %22 = load double, ptr %a, align 8, !tbaa !9
  %mul17 = fmul double 2.000000e+00, %22
  %div18 = fdiv double %add, %mul17
  store double %div18, ptr %h, align 8, !tbaa !9
  %23 = load double, ptr %b, align 8, !tbaa !9
  %fneg19 = fneg double %23
  %24 = load double, ptr %b, align 8, !tbaa !9
  %25 = load double, ptr %b, align 8, !tbaa !9
  %26 = load double, ptr %a, align 8, !tbaa !9
  %mul21 = fmul double 4.000000e+00, %26
  %27 = load double, ptr %c, align 8, !tbaa !9
  %mul22 = fmul double %mul21, %27
  %neg23 = fneg double %mul22
  %28 = call double @llvm.fmuladd.f64(double %24, double %25, double %neg23)
  %call24 = call double @sqrt(double noundef %28) #5, !tbaa !5
  %sub25 = fsub double %fneg19, %call24
  %29 = load double, ptr %a, align 8, !tbaa !9
  %mul26 = fmul double 2.000000e+00, %29
  %div27 = fdiv double %sub25, %mul26
  store double %div27, ptr %j, align 8, !tbaa !9
  %30 = load double, ptr %d, align 8, !tbaa !9
  %cmp28 = fcmp oeq double %30, 0.000000e+00
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %31 = load double, ptr %e, align 8, !tbaa !9
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %31)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %32 = load double, ptr %d, align 8, !tbaa !9
  %cmp30 = fcmp olt double %32, 0.000000e+00
  br i1 %cmp30, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %if.end
  %33 = load double, ptr %b, align 8, !tbaa !9
  %cmp31 = fcmp une double %33, 0.000000e+00
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %land.lhs.true
  %34 = load double, ptr %e, align 8, !tbaa !9
  %35 = load double, ptr %g, align 8, !tbaa !9
  %36 = load double, ptr %e, align 8, !tbaa !9
  %37 = load double, ptr %g, align 8, !tbaa !9
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %34, double noundef %35, double noundef %36, double noundef %37)
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %land.lhs.true, %if.end
  %38 = load double, ptr %d, align 8, !tbaa !9
  %cmp35 = fcmp olt double %38, 0.000000e+00
  br i1 %cmp35, label %land.lhs.true36, label %if.end40

land.lhs.true36:                                  ; preds = %if.end34
  %39 = load double, ptr %b, align 8, !tbaa !9
  %cmp37 = fcmp oeq double %39, 0.000000e+00
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %land.lhs.true36
  %40 = load double, ptr %f, align 8, !tbaa !9
  %41 = load double, ptr %g, align 8, !tbaa !9
  %42 = load double, ptr %f, align 8, !tbaa !9
  %43 = load double, ptr %g, align 8, !tbaa !9
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %40, double noundef %41, double noundef %42, double noundef %43)
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %land.lhs.true36, %if.end34
  %44 = load double, ptr %d, align 8, !tbaa !9
  %cmp41 = fcmp ogt double %44, 0.000000e+00
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end40
  %45 = load double, ptr %h, align 8, !tbaa !9
  %46 = load double, ptr %j, align 8, !tbaa !9
  %call43 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %45, double noundef %46)
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end40
  br label %for.inc

for.inc:                                          ; preds = %if.end44
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %47, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %g) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #5
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
