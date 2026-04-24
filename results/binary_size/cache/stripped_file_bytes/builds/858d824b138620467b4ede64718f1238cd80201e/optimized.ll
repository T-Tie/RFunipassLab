; ModuleID = '/tmp/tmp4yppyqu_.cpp'
source_filename = "/tmp/tmp4yppyqu_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%lf %lf %lf\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"x1=%.5f;x2=%.5f\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"x1=x2=%.5f\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"x1=%.5f+%.5fi;x2=%.5f-%.5fi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  %c = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call1, ptr %a, align 8, !tbaa !9
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %conv2 = sext i32 %1 to i64
  %mul3 = mul i64 %conv2, 8
  %call4 = call noalias ptr @malloc(i64 noundef %mul3) #8
  store ptr %call4, ptr %b, align 8, !tbaa !9
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %conv5 = sext i32 %2 to i64
  %mul6 = mul i64 %conv5, 8
  %call7 = call noalias ptr @malloc(i64 noundef %mul6) #8
  store ptr %call7, ptr %c, align 8, !tbaa !9
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %4, 1
  %cmp = icmp sle i32 %3, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %a, align 8, !tbaa !9
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds double, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %b, align 8, !tbaa !9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds double, ptr %7, i64 %idxprom8
  %9 = load ptr, ptr %c, align 8, !tbaa !9
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds double, ptr %9, i64 %idxprom10
  %call12 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx, ptr noundef %arrayidx9, ptr noundef %arrayidx11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc23, %for.end
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %sub14 = sub nsw i32 %13, 1
  %cmp15 = icmp sle i32 %12, %sub14
  br i1 %cmp15, label %for.body16, label %for.end25

for.body16:                                       ; preds = %for.cond13
  %14 = load ptr, ptr %a, align 8, !tbaa !9
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds double, ptr %14, i64 %idxprom17
  %16 = load double, ptr %arrayidx18, align 8, !tbaa !15
  %17 = load ptr, ptr %b, align 8, !tbaa !9
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds double, ptr %17, i64 %idxprom19
  %19 = load double, ptr %arrayidx20, align 8, !tbaa !15
  %20 = load ptr, ptr %c, align 8, !tbaa !9
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %21 to i64
  %arrayidx22 = getelementptr inbounds double, ptr %20, i64 %idxprom21
  %22 = load double, ptr %arrayidx22, align 8, !tbaa !15
  call void @_Z3genddd(double noundef %16, double noundef %19, double noundef %22)
  br label %for.inc23

for.inc23:                                        ; preds = %for.body16
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %inc24 = add nsw i32 %23, 1
  store i32 %inc24, ptr %i, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !17

for.end25:                                        ; preds = %for.cond13
  %24 = load ptr, ptr %a, align 8, !tbaa !9
  call void @free(ptr noundef %24) #7
  %25 = load ptr, ptr %b, align 8, !tbaa !9
  call void @free(ptr noundef %25) #7
  %26 = load ptr, ptr %c, align 8, !tbaa !9
  call void @free(ptr noundef %26) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

; Function Attrs: mustprogress uwtable
define dso_local void @_Z3genddd(double noundef %a, double noundef %b, double noundef %c) #4 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %c.addr = alloca double, align 8
  %d = alloca double, align 8
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %i1 = alloca double, align 8
  store double %a, ptr %a.addr, align 8, !tbaa !15
  store double %b, ptr %b.addr, align 8, !tbaa !15
  store double %c, ptr %c.addr, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %x2) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %i1) #7
  %0 = load double, ptr %b.addr, align 8, !tbaa !15
  %1 = load double, ptr %b.addr, align 8, !tbaa !15
  %2 = load double, ptr %a.addr, align 8, !tbaa !15
  %mul1 = fmul double 4.000000e+00, %2
  %3 = load double, ptr %c.addr, align 8, !tbaa !15
  %mul2 = fmul double %mul1, %3
  %neg = fneg double %mul2
  %4 = call double @llvm.fmuladd.f64(double %0, double %1, double %neg)
  store double %4, ptr %d, align 8, !tbaa !15
  %5 = load double, ptr %d, align 8, !tbaa !15
  %cmp = fcmp ogt double %5, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load double, ptr %b.addr, align 8, !tbaa !15
  %sub = fsub double 0.000000e+00, %6
  %7 = load double, ptr %d, align 8, !tbaa !15
  %call = call double @sqrt(double noundef %7) #7, !tbaa !5
  %add = fadd double %sub, %call
  %8 = load double, ptr %a.addr, align 8, !tbaa !15
  %mul = fmul double 2.000000e+00, %8
  %div = fdiv double %add, %mul
  store double %div, ptr %x1, align 8, !tbaa !15
  %9 = load double, ptr %b.addr, align 8, !tbaa !15
  %sub3 = fsub double 0.000000e+00, %9
  %10 = load double, ptr %d, align 8, !tbaa !15
  %call4 = call double @sqrt(double noundef %10) #7, !tbaa !5
  %sub5 = fsub double %sub3, %call4
  %11 = load double, ptr %a.addr, align 8, !tbaa !15
  %mul6 = fmul double 2.000000e+00, %11
  %div7 = fdiv double %sub5, %mul6
  store double %div7, ptr %x2, align 8, !tbaa !15
  %12 = load double, ptr %x1, align 8, !tbaa !15
  %13 = load double, ptr %x2, align 8, !tbaa !15
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %12, double noundef %13)
  br label %if.end24

if.else:                                          ; preds = %entry
  %14 = load double, ptr %d, align 8, !tbaa !15
  %cmp9 = fcmp oeq double %14, 0.000000e+00
  br i1 %cmp9, label %if.then10, label %if.else15

if.then10:                                        ; preds = %if.else
  %15 = load double, ptr %b.addr, align 8, !tbaa !15
  %sub11 = fsub double 0.000000e+00, %15
  %16 = load double, ptr %a.addr, align 8, !tbaa !15
  %mul12 = fmul double 2.000000e+00, %16
  %div13 = fdiv double %sub11, %mul12
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %div13)
  br label %if.end

if.else15:                                        ; preds = %if.else
  %17 = load double, ptr %b.addr, align 8, !tbaa !15
  %sub16 = fsub double 0.000000e+00, %17
  %18 = load double, ptr %a.addr, align 8, !tbaa !15
  %mul17 = fmul double 2.000000e+00, %18
  %div18 = fdiv double %sub16, %mul17
  store double %div18, ptr %x1, align 8, !tbaa !15
  %19 = load double, ptr %d, align 8, !tbaa !15
  %sub19 = fsub double 0.000000e+00, %19
  %call20 = call double @sqrt(double noundef %sub19) #7, !tbaa !5
  %20 = load double, ptr %a.addr, align 8, !tbaa !15
  %mul21 = fmul double 2.000000e+00, %20
  %div22 = fdiv double %call20, %mul21
  store double %div22, ptr %i1, align 8, !tbaa !15
  %21 = load double, ptr %x1, align 8, !tbaa !15
  %22 = load double, ptr %i1, align 8, !tbaa !15
  %23 = load double, ptr %x1, align 8, !tbaa !15
  %24 = load double, ptr %i1, align 8, !tbaa !15
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %21, double noundef %22, double noundef %23, double noundef %24)
  br label %if.end

if.end:                                           ; preds = %if.else15, %if.then10
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %x2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #7
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nounwind
declare double @sqrt(double noundef) #5

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

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
!10 = !{!"p1 double", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!16, !16, i64 0}
!16 = !{!"double", !7, i64 0}
!17 = distinct !{!17, !13, !14}
