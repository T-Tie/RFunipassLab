; ModuleID = '/tmp/tmpj7s3hoax.cpp'
source_filename = "/tmp/tmpj7s3hoax.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [5 x i8] c"%d/n\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%lf %lf %lf\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"x1=%.5f;x2=%.5f\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"x1=x2=%.5f\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"x1=%.5lf+%.5lfi;x2=%.5lf%.5lfi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %c1 = alloca double, align 8
  %d1 = alloca double, align 8
  %d2 = alloca double, align 8
  %c2 = alloca double, align 8
  %d3 = alloca double, align 8
  %d4 = alloca double, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #5
  store double 0.000000e+00, ptr %a, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #5
  store double 0.000000e+00, ptr %b, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #5
  store double 0.000000e+00, ptr %c, align 8, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %a, ptr noundef %b, ptr noundef %c)
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #5
  %1 = load double, ptr %b, align 8, !tbaa !13
  %fneg = fneg double %1
  %2 = load double, ptr %b, align 8, !tbaa !13
  %3 = load double, ptr %b, align 8, !tbaa !13
  %4 = load double, ptr %a, align 8, !tbaa !13
  %mul2 = fmul double 4.000000e+00, %4
  %5 = load double, ptr %c, align 8, !tbaa !13
  %mul3 = fmul double %mul2, %5
  %neg = fneg double %mul3
  %6 = call double @llvm.fmuladd.f64(double %2, double %3, double %neg)
  %call4 = call double @sqrt(double noundef %6) #5, !tbaa !5
  %add = fadd double %fneg, %call4
  %7 = load double, ptr %a, align 8, !tbaa !13
  %mul = fmul double 2.000000e+00, %7
  %div = fdiv double %add, %mul
  store double %div, ptr %x1, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %x2) #5
  %8 = load double, ptr %b, align 8, !tbaa !13
  %fneg5 = fneg double %8
  %9 = load double, ptr %b, align 8, !tbaa !13
  %10 = load double, ptr %b, align 8, !tbaa !13
  %11 = load double, ptr %a, align 8, !tbaa !13
  %mul7 = fmul double 4.000000e+00, %11
  %12 = load double, ptr %c, align 8, !tbaa !13
  %mul8 = fmul double %mul7, %12
  %neg9 = fneg double %mul8
  %13 = call double @llvm.fmuladd.f64(double %9, double %10, double %neg9)
  %call10 = call double @sqrt(double noundef %13) #5, !tbaa !5
  %sub = fsub double %fneg5, %call10
  %14 = load double, ptr %a, align 8, !tbaa !13
  %mul11 = fmul double 2.000000e+00, %14
  %div12 = fdiv double %sub, %mul11
  store double %div12, ptr %x2, align 8, !tbaa !13
  %15 = load double, ptr %b, align 8, !tbaa !13
  %16 = load double, ptr %b, align 8, !tbaa !13
  %17 = load double, ptr %a, align 8, !tbaa !13
  %mul14 = fmul double 4.000000e+00, %17
  %18 = load double, ptr %c, align 8, !tbaa !13
  %mul15 = fmul double %mul14, %18
  %neg16 = fneg double %mul15
  %19 = call double @llvm.fmuladd.f64(double %15, double %16, double %neg16)
  %cmp17 = fcmp ogt double %19, 0.000000e+00
  br i1 %cmp17, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %20 = load double, ptr %x1, align 8, !tbaa !13
  %21 = load double, ptr %x2, align 8, !tbaa !13
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %20, double noundef %21)
  br label %if.end62

if.else:                                          ; preds = %for.body
  %22 = load double, ptr %b, align 8, !tbaa !13
  %23 = load double, ptr %b, align 8, !tbaa !13
  %24 = load double, ptr %a, align 8, !tbaa !13
  %mul20 = fmul double 4.000000e+00, %24
  %25 = load double, ptr %c, align 8, !tbaa !13
  %mul21 = fmul double %mul20, %25
  %neg22 = fneg double %mul21
  %26 = call double @llvm.fmuladd.f64(double %22, double %23, double %neg22)
  %cmp23 = fcmp oeq double %26, 0.000000e+00
  br i1 %cmp23, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.else
  %27 = load double, ptr %x2, align 8, !tbaa !13
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %27)
  br label %if.end61

if.else26:                                        ; preds = %if.else
  %28 = load double, ptr %b, align 8, !tbaa !13
  %29 = load double, ptr %b, align 8, !tbaa !13
  %30 = load double, ptr %a, align 8, !tbaa !13
  %mul28 = fmul double 4.000000e+00, %30
  %31 = load double, ptr %c, align 8, !tbaa !13
  %mul29 = fmul double %mul28, %31
  %neg30 = fneg double %mul29
  %32 = call double @llvm.fmuladd.f64(double %28, double %29, double %neg30)
  %cmp31 = fcmp olt double %32, 0.000000e+00
  br i1 %cmp31, label %if.then32, label %if.end60

if.then32:                                        ; preds = %if.else26
  %33 = load double, ptr %b, align 8, !tbaa !13
  %cmp33 = fcmp une double %33, 0.000000e+00
  br i1 %cmp33, label %if.then34, label %if.else47

if.then34:                                        ; preds = %if.then32
  call void @llvm.lifetime.start.p0(i64 8, ptr %c1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %d1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %d2) #5
  %34 = load double, ptr %b, align 8, !tbaa !13
  %fneg35 = fneg double %34
  %35 = load double, ptr %a, align 8, !tbaa !13
  %mul36 = fmul double %35, 2.000000e+00
  %div37 = fdiv double %fneg35, %mul36
  store double %div37, ptr %c1, align 8, !tbaa !13
  %36 = load double, ptr %a, align 8, !tbaa !13
  %mul38 = fmul double 4.000000e+00, %36
  %37 = load double, ptr %c, align 8, !tbaa !13
  %38 = load double, ptr %b, align 8, !tbaa !13
  %39 = load double, ptr %b, align 8, !tbaa !13
  %mul40 = fmul double %38, %39
  %neg41 = fneg double %mul40
  %40 = call double @llvm.fmuladd.f64(double %mul38, double %37, double %neg41)
  %call42 = call double @sqrt(double noundef %40) #5, !tbaa !5
  %41 = load double, ptr %a, align 8, !tbaa !13
  %mul43 = fmul double 2.000000e+00, %41
  %div44 = fdiv double %call42, %mul43
  store double %div44, ptr %d1, align 8, !tbaa !13
  %42 = load double, ptr %d1, align 8, !tbaa !13
  %fneg45 = fneg double %42
  store double %fneg45, ptr %d2, align 8, !tbaa !13
  %43 = load double, ptr %c1, align 8, !tbaa !13
  %44 = load double, ptr %d1, align 8, !tbaa !13
  %45 = load double, ptr %c1, align 8, !tbaa !13
  %46 = load double, ptr %d2, align 8, !tbaa !13
  %call46 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %43, double noundef %44, double noundef %45, double noundef %46)
  call void @llvm.lifetime.end.p0(i64 8, ptr %d2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %d1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %c1) #5
  br label %if.end59

if.else47:                                        ; preds = %if.then32
  %47 = load double, ptr %b, align 8, !tbaa !13
  %cmp48 = fcmp oeq double %47, 0.000000e+00
  br i1 %cmp48, label %if.then49, label %if.end

if.then49:                                        ; preds = %if.else47
  call void @llvm.lifetime.start.p0(i64 8, ptr %c2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %d3) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %d4) #5
  store double 0.000000e+00, ptr %c2, align 8, !tbaa !13
  %48 = load double, ptr %a, align 8, !tbaa !13
  %mul50 = fmul double 4.000000e+00, %48
  %49 = load double, ptr %c, align 8, !tbaa !13
  %50 = load double, ptr %b, align 8, !tbaa !13
  %51 = load double, ptr %b, align 8, !tbaa !13
  %mul52 = fmul double %50, %51
  %neg53 = fneg double %mul52
  %52 = call double @llvm.fmuladd.f64(double %mul50, double %49, double %neg53)
  %call54 = call double @sqrt(double noundef %52) #5, !tbaa !5
  %53 = load double, ptr %a, align 8, !tbaa !13
  %mul55 = fmul double 2.000000e+00, %53
  %div56 = fdiv double %call54, %mul55
  store double %div56, ptr %d3, align 8, !tbaa !13
  %54 = load double, ptr %d3, align 8, !tbaa !13
  %fneg57 = fneg double %54
  store double %fneg57, ptr %d4, align 8, !tbaa !13
  %55 = load double, ptr %c2, align 8, !tbaa !13
  %56 = load double, ptr %d3, align 8, !tbaa !13
  %57 = load double, ptr %c2, align 8, !tbaa !13
  %58 = load double, ptr %d4, align 8, !tbaa !13
  %call58 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %55, double noundef %56, double noundef %57, double noundef %58)
  call void @llvm.lifetime.end.p0(i64 8, ptr %d4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %d3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %c2) #5
  br label %if.end

if.end:                                           ; preds = %if.then49, %if.else47
  br label %if.end59

if.end59:                                         ; preds = %if.end, %if.then34
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.else26
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then24
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %x2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end62
  %59 = load i32, ptr %n, align 4, !tbaa !5
  %dec = add nsw i32 %59, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare i32 @printf(ptr noundef, ...) #2

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
!10 = !{!"p2 omnipotent char", !11, i64 0}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !7, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
