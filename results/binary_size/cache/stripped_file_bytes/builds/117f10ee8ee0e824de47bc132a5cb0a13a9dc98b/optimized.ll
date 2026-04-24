; ModuleID = '/tmp/tmphl6ep8ab.cpp'
source_filename = "/tmp/tmphl6ep8ab.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%lf%lf%lf\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"x1=x2=%.5f\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"x1=%.5f;x2=%.5f\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"x1=%.5f+%.5fi;x2=%.5f-%.5fi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %x1 = alloca [100 x double], align 16
  %x2 = alloca [100 x double], align 16
  %s1 = alloca [100 x double], align 16
  %s2 = alloca [100 x double], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #5
  call void @llvm.lifetime.start.p0(i64 800, ptr %x1) #5
  call void @llvm.lifetime.start.p0(i64 800, ptr %x2) #5
  call void @llvm.lifetime.start.p0(i64 800, ptr %s1) #5
  call void @llvm.lifetime.start.p0(i64 800, ptr %s2) #5
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
  %cmp4 = fcmp oeq double %6, 0.000000e+00
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load double, ptr %b, align 8, !tbaa !9
  %fneg = fneg double %7
  %8 = load double, ptr %a, align 8, !tbaa !9
  %mul = fmul double 2.000000e+00, %8
  %div = fdiv double %fneg, %mul
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [100 x double], ptr %x2, i64 0, i64 %idxprom
  store double %div, ptr %arrayidx, align 8, !tbaa !9
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [100 x double], ptr %x1, i64 0, i64 %idxprom5
  store double %div, ptr %arrayidx6, align 8, !tbaa !9
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [100 x double], ptr %s2, i64 0, i64 %idxprom7
  store double 0.000000e+00, ptr %arrayidx8, align 8, !tbaa !9
  br label %if.end66

if.else:                                          ; preds = %for.body
  %12 = load double, ptr %b, align 8, !tbaa !9
  %13 = load double, ptr %b, align 8, !tbaa !9
  %14 = load double, ptr %a, align 8, !tbaa !9
  %mul10 = fmul double 4.000000e+00, %14
  %15 = load double, ptr %c, align 8, !tbaa !9
  %mul11 = fmul double %mul10, %15
  %neg12 = fneg double %mul11
  %16 = call double @llvm.fmuladd.f64(double %12, double %13, double %neg12)
  %cmp13 = fcmp ogt double %16, 0.000000e+00
  br i1 %cmp13, label %if.then14, label %if.else37

if.then14:                                        ; preds = %if.else
  %17 = load double, ptr %b, align 8, !tbaa !9
  %fneg15 = fneg double %17
  %18 = load double, ptr %b, align 8, !tbaa !9
  %19 = load double, ptr %b, align 8, !tbaa !9
  %20 = load double, ptr %a, align 8, !tbaa !9
  %mul17 = fmul double 4.000000e+00, %20
  %21 = load double, ptr %c, align 8, !tbaa !9
  %mul18 = fmul double %mul17, %21
  %neg19 = fneg double %mul18
  %22 = call double @llvm.fmuladd.f64(double %18, double %19, double %neg19)
  %call20 = call double @sqrt(double noundef %22) #5, !tbaa !5
  %add = fadd double %fneg15, %call20
  %23 = load double, ptr %a, align 8, !tbaa !9
  %mul21 = fmul double 2.000000e+00, %23
  %div22 = fdiv double %add, %mul21
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %24 to i64
  %arrayidx24 = getelementptr inbounds [100 x double], ptr %x1, i64 0, i64 %idxprom23
  store double %div22, ptr %arrayidx24, align 8, !tbaa !9
  %25 = load double, ptr %b, align 8, !tbaa !9
  %fneg25 = fneg double %25
  %26 = load double, ptr %b, align 8, !tbaa !9
  %27 = load double, ptr %b, align 8, !tbaa !9
  %28 = load double, ptr %a, align 8, !tbaa !9
  %mul27 = fmul double 4.000000e+00, %28
  %29 = load double, ptr %c, align 8, !tbaa !9
  %mul28 = fmul double %mul27, %29
  %neg29 = fneg double %mul28
  %30 = call double @llvm.fmuladd.f64(double %26, double %27, double %neg29)
  %call30 = call double @sqrt(double noundef %30) #5, !tbaa !5
  %sub = fsub double %fneg25, %call30
  %31 = load double, ptr %a, align 8, !tbaa !9
  %mul31 = fmul double 2.000000e+00, %31
  %div32 = fdiv double %sub, %mul31
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %32 to i64
  %arrayidx34 = getelementptr inbounds [100 x double], ptr %x2, i64 0, i64 %idxprom33
  store double %div32, ptr %arrayidx34, align 8, !tbaa !9
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %33 to i64
  %arrayidx36 = getelementptr inbounds [100 x double], ptr %s2, i64 0, i64 %idxprom35
  store double 0.000000e+00, ptr %arrayidx36, align 8, !tbaa !9
  br label %if.end65

if.else37:                                        ; preds = %if.else
  %34 = load double, ptr %b, align 8, !tbaa !9
  %35 = load double, ptr %b, align 8, !tbaa !9
  %36 = load double, ptr %a, align 8, !tbaa !9
  %mul39 = fmul double 4.000000e+00, %36
  %37 = load double, ptr %c, align 8, !tbaa !9
  %mul40 = fmul double %mul39, %37
  %neg41 = fneg double %mul40
  %38 = call double @llvm.fmuladd.f64(double %34, double %35, double %neg41)
  %cmp42 = fcmp olt double %38, 0.000000e+00
  br i1 %cmp42, label %if.then43, label %if.end64

if.then43:                                        ; preds = %if.else37
  %39 = load double, ptr %b, align 8, !tbaa !9
  %fneg44 = fneg double %39
  %40 = load double, ptr %a, align 8, !tbaa !9
  %mul45 = fmul double 2.000000e+00, %40
  %div46 = fdiv double %fneg44, %mul45
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom47 = sext i32 %41 to i64
  %arrayidx48 = getelementptr inbounds [100 x double], ptr %s1, i64 0, i64 %idxprom47
  store double %div46, ptr %arrayidx48, align 8, !tbaa !9
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom49 = sext i32 %42 to i64
  %arrayidx50 = getelementptr inbounds [100 x double], ptr %s1, i64 0, i64 %idxprom49
  %43 = load double, ptr %arrayidx50, align 8, !tbaa !9
  %cmp51 = fcmp oeq double %43, -0.000000e+00
  br i1 %cmp51, label %if.then52, label %if.end

if.then52:                                        ; preds = %if.then43
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %44 to i64
  %arrayidx54 = getelementptr inbounds [100 x double], ptr %s1, i64 0, i64 %idxprom53
  store double 0.000000e+00, ptr %arrayidx54, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then52, %if.then43
  %45 = load double, ptr %a, align 8, !tbaa !9
  %mul55 = fmul double 4.000000e+00, %45
  %46 = load double, ptr %c, align 8, !tbaa !9
  %47 = load double, ptr %b, align 8, !tbaa !9
  %48 = load double, ptr %b, align 8, !tbaa !9
  %mul57 = fmul double %47, %48
  %neg58 = fneg double %mul57
  %49 = call double @llvm.fmuladd.f64(double %mul55, double %46, double %neg58)
  %call59 = call double @sqrt(double noundef %49) #5, !tbaa !5
  %50 = load double, ptr %a, align 8, !tbaa !9
  %mul60 = fmul double 2.000000e+00, %50
  %div61 = fdiv double %call59, %mul60
  %51 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom62 = sext i32 %51 to i64
  %arrayidx63 = getelementptr inbounds [100 x double], ptr %s2, i64 0, i64 %idxprom62
  store double %div61, ptr %arrayidx63, align 8, !tbaa !9
  br label %if.end64

if.end64:                                         ; preds = %if.end, %if.else37
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then14
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end66
  %52 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %52, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc110, %for.end
  %53 = load i32, ptr %i, align 4, !tbaa !5
  %54 = load i32, ptr %n, align 4, !tbaa !5
  %cmp68 = icmp sle i32 %53, %54
  br i1 %cmp68, label %for.body69, label %for.end112

for.body69:                                       ; preds = %for.cond67
  %55 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom70 = sext i32 %55 to i64
  %arrayidx71 = getelementptr inbounds [100 x double], ptr %x1, i64 0, i64 %idxprom70
  %56 = load double, ptr %arrayidx71, align 8, !tbaa !9
  %57 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom72 = sext i32 %57 to i64
  %arrayidx73 = getelementptr inbounds [100 x double], ptr %x2, i64 0, i64 %idxprom72
  %58 = load double, ptr %arrayidx73, align 8, !tbaa !9
  %cmp74 = fcmp oeq double %56, %58
  br i1 %cmp74, label %land.lhs.true, label %if.else82

land.lhs.true:                                    ; preds = %for.body69
  %59 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom75 = sext i32 %59 to i64
  %arrayidx76 = getelementptr inbounds [100 x double], ptr %s2, i64 0, i64 %idxprom75
  %60 = load double, ptr %arrayidx76, align 8, !tbaa !9
  %cmp77 = fcmp oeq double %60, 0.000000e+00
  br i1 %cmp77, label %if.then78, label %if.else82

if.then78:                                        ; preds = %land.lhs.true
  %61 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom79 = sext i32 %61 to i64
  %arrayidx80 = getelementptr inbounds [100 x double], ptr %x1, i64 0, i64 %idxprom79
  %62 = load double, ptr %arrayidx80, align 8, !tbaa !9
  %call81 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %62)
  br label %if.end109

if.else82:                                        ; preds = %land.lhs.true, %for.body69
  %63 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom83 = sext i32 %63 to i64
  %arrayidx84 = getelementptr inbounds [100 x double], ptr %x1, i64 0, i64 %idxprom83
  %64 = load double, ptr %arrayidx84, align 8, !tbaa !9
  %65 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom85 = sext i32 %65 to i64
  %arrayidx86 = getelementptr inbounds [100 x double], ptr %x2, i64 0, i64 %idxprom85
  %66 = load double, ptr %arrayidx86, align 8, !tbaa !9
  %cmp87 = fcmp une double %64, %66
  br i1 %cmp87, label %land.lhs.true88, label %if.else98

land.lhs.true88:                                  ; preds = %if.else82
  %67 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom89 = sext i32 %67 to i64
  %arrayidx90 = getelementptr inbounds [100 x double], ptr %s2, i64 0, i64 %idxprom89
  %68 = load double, ptr %arrayidx90, align 8, !tbaa !9
  %cmp91 = fcmp oeq double %68, 0.000000e+00
  br i1 %cmp91, label %if.then92, label %if.else98

if.then92:                                        ; preds = %land.lhs.true88
  %69 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom93 = sext i32 %69 to i64
  %arrayidx94 = getelementptr inbounds [100 x double], ptr %x1, i64 0, i64 %idxprom93
  %70 = load double, ptr %arrayidx94, align 8, !tbaa !9
  %71 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom95 = sext i32 %71 to i64
  %arrayidx96 = getelementptr inbounds [100 x double], ptr %x2, i64 0, i64 %idxprom95
  %72 = load double, ptr %arrayidx96, align 8, !tbaa !9
  %call97 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %70, double noundef %72)
  br label %if.end108

if.else98:                                        ; preds = %land.lhs.true88, %if.else82
  %73 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom99 = sext i32 %73 to i64
  %arrayidx100 = getelementptr inbounds [100 x double], ptr %s1, i64 0, i64 %idxprom99
  %74 = load double, ptr %arrayidx100, align 8, !tbaa !9
  %75 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom101 = sext i32 %75 to i64
  %arrayidx102 = getelementptr inbounds [100 x double], ptr %s2, i64 0, i64 %idxprom101
  %76 = load double, ptr %arrayidx102, align 8, !tbaa !9
  %77 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom103 = sext i32 %77 to i64
  %arrayidx104 = getelementptr inbounds [100 x double], ptr %s1, i64 0, i64 %idxprom103
  %78 = load double, ptr %arrayidx104, align 8, !tbaa !9
  %79 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom105 = sext i32 %79 to i64
  %arrayidx106 = getelementptr inbounds [100 x double], ptr %s2, i64 0, i64 %idxprom105
  %80 = load double, ptr %arrayidx106, align 8, !tbaa !9
  %call107 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %74, double noundef %76, double noundef %78, double noundef %80)
  br label %if.end108

if.end108:                                        ; preds = %if.else98, %if.then92
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.then78
  br label %for.inc110

for.inc110:                                       ; preds = %if.end109
  %81 = load i32, ptr %i, align 4, !tbaa !5
  %inc111 = add nsw i32 %81, 1
  store i32 %inc111, ptr %i, align 4, !tbaa !5
  br label %for.cond67, !llvm.loop !14

for.end112:                                       ; preds = %for.cond67
  call void @llvm.lifetime.end.p0(i64 800, ptr %s2) #5
  call void @llvm.lifetime.end.p0(i64 800, ptr %s1) #5
  call void @llvm.lifetime.end.p0(i64 800, ptr %x2) #5
  call void @llvm.lifetime.end.p0(i64 800, ptr %x1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #5
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
!14 = distinct !{!14, !12, !13}
