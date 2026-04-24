; ModuleID = '/tmp/tmpts_yddjh.cpp'
source_filename = "/tmp/tmpts_yddjh.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [20 x i8] c"%lf\0A%lf\0A%lf\0A%lf\0A%lf\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Invalid input\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%.4lf\00", align 1
@stdin = external global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %d = alloca double, align 8
  %s = alloca double, align 8
  %e = alloca double, align 8
  %S = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %S) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %a, ptr noundef %b, ptr noundef %c, ptr noundef %d, ptr noundef %e)
  %0 = load double, ptr %a, align 8, !tbaa !5
  %1 = load double, ptr %b, align 8, !tbaa !5
  %add = fadd double %0, %1
  %2 = load double, ptr %c, align 8, !tbaa !5
  %add1 = fadd double %add, %2
  %3 = load double, ptr %d, align 8, !tbaa !5
  %add2 = fadd double %add1, %3
  %div = fdiv double %add2, 2.000000e+00
  store double %div, ptr %s, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #6
  %4 = load double, ptr %e, align 8, !tbaa !5
  %mul = fmul double %4, 0x400921FB4D12D84A
  %div3 = fdiv double %mul, 3.600000e+02
  store double %div3, ptr %x, align 8, !tbaa !5
  %5 = load double, ptr %x, align 8, !tbaa !5
  %call4 = call double @cos(double noundef %5) #6, !tbaa !9
  store double %call4, ptr %y, align 8, !tbaa !5
  %6 = load double, ptr %s, align 8, !tbaa !5
  %7 = load double, ptr %a, align 8, !tbaa !5
  %sub = fsub double %6, %7
  %8 = load double, ptr %s, align 8, !tbaa !5
  %9 = load double, ptr %b, align 8, !tbaa !5
  %sub5 = fsub double %8, %9
  %mul6 = fmul double %sub, %sub5
  %10 = load double, ptr %s, align 8, !tbaa !5
  %11 = load double, ptr %c, align 8, !tbaa !5
  %sub7 = fsub double %10, %11
  %mul8 = fmul double %mul6, %sub7
  %12 = load double, ptr %s, align 8, !tbaa !5
  %13 = load double, ptr %d, align 8, !tbaa !5
  %sub9 = fsub double %12, %13
  %14 = load double, ptr %a, align 8, !tbaa !5
  %15 = load double, ptr %b, align 8, !tbaa !5
  %mul11 = fmul double %14, %15
  %16 = load double, ptr %c, align 8, !tbaa !5
  %mul12 = fmul double %mul11, %16
  %17 = load double, ptr %d, align 8, !tbaa !5
  %mul13 = fmul double %mul12, %17
  %18 = load double, ptr %y, align 8, !tbaa !5
  %mul14 = fmul double %mul13, %18
  %19 = load double, ptr %y, align 8, !tbaa !5
  %mul15 = fmul double %mul14, %19
  %neg = fneg double %mul15
  %20 = call double @llvm.fmuladd.f64(double %mul8, double %sub9, double %neg)
  %cmp = fcmp olt double %20, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end

if.else:                                          ; preds = %entry
  %21 = load double, ptr %s, align 8, !tbaa !5
  %22 = load double, ptr %a, align 8, !tbaa !5
  %sub17 = fsub double %21, %22
  %23 = load double, ptr %s, align 8, !tbaa !5
  %24 = load double, ptr %b, align 8, !tbaa !5
  %sub18 = fsub double %23, %24
  %mul19 = fmul double %sub17, %sub18
  %25 = load double, ptr %s, align 8, !tbaa !5
  %26 = load double, ptr %c, align 8, !tbaa !5
  %sub20 = fsub double %25, %26
  %mul21 = fmul double %mul19, %sub20
  %27 = load double, ptr %s, align 8, !tbaa !5
  %28 = load double, ptr %d, align 8, !tbaa !5
  %sub22 = fsub double %27, %28
  %29 = load double, ptr %a, align 8, !tbaa !5
  %30 = load double, ptr %b, align 8, !tbaa !5
  %mul24 = fmul double %29, %30
  %31 = load double, ptr %c, align 8, !tbaa !5
  %mul25 = fmul double %mul24, %31
  %32 = load double, ptr %d, align 8, !tbaa !5
  %mul26 = fmul double %mul25, %32
  %33 = load double, ptr %y, align 8, !tbaa !5
  %mul27 = fmul double %mul26, %33
  %34 = load double, ptr %y, align 8, !tbaa !5
  %mul28 = fmul double %mul27, %34
  %neg29 = fneg double %mul28
  %35 = call double @llvm.fmuladd.f64(double %mul21, double %sub22, double %neg29)
  %call30 = call double @sqrt(double noundef %35) #6, !tbaa !9
  store double %call30, ptr %S, align 8, !tbaa !5
  %36 = load double, ptr %S, align 8, !tbaa !5
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %36)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call32 = call i32 @getchar()
  %call33 = call i32 @getchar()
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %S) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind
declare double @cos(double noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

; Function Attrs: inlinehint mustprogress uwtable
define available_externally i32 @getchar() #5 {
entry:
  %0 = load ptr, ptr @stdin, align 8, !tbaa !11
  %call = call i32 @getc(ptr noundef %0)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @getc(ptr noundef) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
