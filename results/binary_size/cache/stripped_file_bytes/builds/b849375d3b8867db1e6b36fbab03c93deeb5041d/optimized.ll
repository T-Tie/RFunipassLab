; ModuleID = '/tmp/tmp344ge6ix.cpp'
source_filename = "/tmp/tmp344ge6ix.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%lf%lf%lf\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"x1=%.5lf+%.5lfi;x2=%.5lf-%.5lfi\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"x1=x2=%.5lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"x1=%.5lf;x2=%.5lf\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %delta = alloca double, align 8
  %m = alloca double, align 8
  %n = alloca double, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %i)
  br label %while.cond

while.cond:                                       ; preds = %if.end24, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %a, ptr noundef %b, ptr noundef %c)
  %1 = load double, ptr %b, align 8, !tbaa !9
  %2 = load double, ptr %b, align 8, !tbaa !9
  %3 = load double, ptr %a, align 8, !tbaa !9
  %mul2 = fmul double 4.000000e+00, %3
  %4 = load double, ptr %c, align 8, !tbaa !9
  %mul3 = fmul double %mul2, %4
  %neg = fneg double %mul3
  %5 = call double @llvm.fmuladd.f64(double %1, double %2, double %neg)
  store double %5, ptr %delta, align 8, !tbaa !9
  %6 = load double, ptr %delta, align 8, !tbaa !9
  %cmp = fcmp olt double %6, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load double, ptr %b, align 8, !tbaa !9
  %fneg = fneg double %7
  %div = fdiv double %fneg, 2.000000e+00
  %8 = load double, ptr %a, align 8, !tbaa !9
  %div4 = fdiv double %div, %8
  store double %div4, ptr %m, align 8, !tbaa !9
  %9 = load double, ptr %delta, align 8, !tbaa !9
  %fneg5 = fneg double %9
  %call6 = call double @sqrt(double noundef %fneg5) #5, !tbaa !5
  %div7 = fdiv double %call6, 2.000000e+00
  %10 = load double, ptr %a, align 8, !tbaa !9
  %div8 = fdiv double %div7, %10
  store double %div8, ptr %n, align 8, !tbaa !9
  %11 = load double, ptr %m, align 8, !tbaa !9
  %12 = load double, ptr %n, align 8, !tbaa !9
  %13 = load double, ptr %m, align 8, !tbaa !9
  %14 = load double, ptr %n, align 8, !tbaa !9
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %11, double noundef %12, double noundef %13, double noundef %14)
  br label %if.end24

if.else:                                          ; preds = %while.body
  %15 = load double, ptr %delta, align 8, !tbaa !9
  %cmp10 = fcmp oeq double %15, 0.000000e+00
  br i1 %cmp10, label %if.then11, label %if.else16

if.then11:                                        ; preds = %if.else
  %16 = load double, ptr %b, align 8, !tbaa !9
  %fneg12 = fneg double %16
  %div13 = fdiv double %fneg12, 2.000000e+00
  %17 = load double, ptr %a, align 8, !tbaa !9
  %div14 = fdiv double %div13, %17
  store double %div14, ptr %m, align 8, !tbaa !9
  %18 = load double, ptr %m, align 8, !tbaa !9
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %18)
  br label %if.end

if.else16:                                        ; preds = %if.else
  %19 = load double, ptr %b, align 8, !tbaa !9
  %fneg17 = fneg double %19
  %div18 = fdiv double %fneg17, 2.000000e+00
  %20 = load double, ptr %a, align 8, !tbaa !9
  %div19 = fdiv double %div18, %20
  store double %div19, ptr %m, align 8, !tbaa !9
  %21 = load double, ptr %delta, align 8, !tbaa !9
  %call20 = call double @sqrt(double noundef %21) #5, !tbaa !5
  %div21 = fdiv double %call20, 2.000000e+00
  %22 = load double, ptr %a, align 8, !tbaa !9
  %div22 = fdiv double %div21, %22
  store double %div22, ptr %n, align 8, !tbaa !9
  %23 = load double, ptr %m, align 8, !tbaa !9
  %24 = load double, ptr %n, align 8, !tbaa !9
  %add = fadd double %23, %24
  %25 = load double, ptr %m, align 8, !tbaa !9
  %26 = load double, ptr %n, align 8, !tbaa !9
  %sub = fsub double %25, %26
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %add, double noundef %sub)
  br label %if.end

if.end:                                           ; preds = %if.else16, %if.then11
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #5
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
