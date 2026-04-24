; ModuleID = '/tmp/tmpb1_5rgmy.cpp'
source_filename = "/tmp/tmpb1_5rgmy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

$_ZSt4sqrtf = comdat any

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%f%f%f\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"x1=x2=%.5lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"x1=%.5lf;x2=%.5lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"x1=%.5lf+%.5fi;x2=%.5lf-%.5fi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca [100 x float], align 16
  %b = alloca [100 x float], align 16
  %c = alloca [100 x float], align 16
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %m = alloca double, align 8
  %l = alloca double, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 400, ptr %a) #6
  call void @llvm.lifetime.start.p0(i64 400, ptr %b) #6
  call void @llvm.lifetime.start.p0(i64 400, ptr %c) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %x2) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %j, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x float], ptr %a, i64 0, i64 %idxprom
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [100 x float], ptr %b, i64 0, i64 %idxprom1
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [100 x float], ptr %c, i64 0, i64 %idxprom3
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %arrayidx4)
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [100 x float], ptr %b, i64 0, i64 %idxprom6
  %6 = load float, ptr %arrayidx7, align 4, !tbaa !13
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [100 x float], ptr %b, i64 0, i64 %idxprom8
  %8 = load float, ptr %arrayidx9, align 4, !tbaa !13
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [100 x float], ptr %a, i64 0, i64 %idxprom10
  %10 = load float, ptr %arrayidx11, align 4, !tbaa !13
  %mul12 = fmul float 4.000000e+00, %10
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [100 x float], ptr %c, i64 0, i64 %idxprom13
  %12 = load float, ptr %arrayidx14, align 4, !tbaa !13
  %mul15 = fmul float %mul12, %12
  %neg = fneg float %mul15
  %13 = call float @llvm.fmuladd.f32(float %6, float %8, float %neg)
  %cmp16 = fcmp ole float 0.000000e+00, %13
  br i1 %cmp16, label %if.then, label %if.else60

if.then:                                          ; preds = %for.body
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [100 x float], ptr %b, i64 0, i64 %idxprom17
  %15 = load float, ptr %arrayidx18, align 4, !tbaa !13
  %fneg = fneg float %15
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [100 x float], ptr %b, i64 0, i64 %idxprom19
  %17 = load float, ptr %arrayidx20, align 4, !tbaa !13
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom21 = sext i32 %18 to i64
  %arrayidx22 = getelementptr inbounds [100 x float], ptr %b, i64 0, i64 %idxprom21
  %19 = load float, ptr %arrayidx22, align 4, !tbaa !13
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom23 = sext i32 %20 to i64
  %arrayidx24 = getelementptr inbounds [100 x float], ptr %a, i64 0, i64 %idxprom23
  %21 = load float, ptr %arrayidx24, align 4, !tbaa !13
  %mul25 = fmul float 4.000000e+00, %21
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom26 = sext i32 %22 to i64
  %arrayidx27 = getelementptr inbounds [100 x float], ptr %c, i64 0, i64 %idxprom26
  %23 = load float, ptr %arrayidx27, align 4, !tbaa !13
  %mul28 = fmul float %mul25, %23
  %neg29 = fneg float %mul28
  %24 = call float @llvm.fmuladd.f32(float %17, float %19, float %neg29)
  %call30 = call noundef float @_ZSt4sqrtf(float noundef %24)
  %add = fadd float %fneg, %call30
  %conv = fpext float %add to double
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom31 = sext i32 %25 to i64
  %arrayidx32 = getelementptr inbounds [100 x float], ptr %a, i64 0, i64 %idxprom31
  %26 = load float, ptr %arrayidx32, align 4, !tbaa !13
  %mul = fmul float 2.000000e+00, %26
  %conv33 = fpext float %mul to double
  %div = fdiv double %conv, %conv33
  store double %div, ptr %x1, align 8, !tbaa !15
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom34 = sext i32 %27 to i64
  %arrayidx35 = getelementptr inbounds [100 x float], ptr %b, i64 0, i64 %idxprom34
  %28 = load float, ptr %arrayidx35, align 4, !tbaa !13
  %fneg36 = fneg float %28
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom37 = sext i32 %29 to i64
  %arrayidx38 = getelementptr inbounds [100 x float], ptr %b, i64 0, i64 %idxprom37
  %30 = load float, ptr %arrayidx38, align 4, !tbaa !13
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom39 = sext i32 %31 to i64
  %arrayidx40 = getelementptr inbounds [100 x float], ptr %b, i64 0, i64 %idxprom39
  %32 = load float, ptr %arrayidx40, align 4, !tbaa !13
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom42 = sext i32 %33 to i64
  %arrayidx43 = getelementptr inbounds [100 x float], ptr %a, i64 0, i64 %idxprom42
  %34 = load float, ptr %arrayidx43, align 4, !tbaa !13
  %mul44 = fmul float 4.000000e+00, %34
  %35 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom45 = sext i32 %35 to i64
  %arrayidx46 = getelementptr inbounds [100 x float], ptr %c, i64 0, i64 %idxprom45
  %36 = load float, ptr %arrayidx46, align 4, !tbaa !13
  %mul47 = fmul float %mul44, %36
  %neg48 = fneg float %mul47
  %37 = call float @llvm.fmuladd.f32(float %30, float %32, float %neg48)
  %call49 = call noundef float @_ZSt4sqrtf(float noundef %37)
  %sub = fsub float %fneg36, %call49
  %conv50 = fpext float %sub to double
  %38 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom51 = sext i32 %38 to i64
  %arrayidx52 = getelementptr inbounds [100 x float], ptr %a, i64 0, i64 %idxprom51
  %39 = load float, ptr %arrayidx52, align 4, !tbaa !13
  %mul53 = fmul float 2.000000e+00, %39
  %conv54 = fpext float %mul53 to double
  %div55 = fdiv double %conv50, %conv54
  store double %div55, ptr %x2, align 8, !tbaa !15
  %40 = load double, ptr %x1, align 8, !tbaa !15
  %41 = load double, ptr %x2, align 8, !tbaa !15
  %cmp56 = fcmp oeq double %40, %41
  br i1 %cmp56, label %if.then57, label %if.else

if.then57:                                        ; preds = %if.then
  %42 = load double, ptr %x1, align 8, !tbaa !15
  %call58 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %42)
  br label %if.end

if.else:                                          ; preds = %if.then
  %43 = load double, ptr %x1, align 8, !tbaa !15
  %44 = load double, ptr %x2, align 8, !tbaa !15
  %call59 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %43, double noundef %44)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then57
  br label %if.end90

if.else60:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #6
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom61 = sext i32 %45 to i64
  %arrayidx62 = getelementptr inbounds [100 x float], ptr %b, i64 0, i64 %idxprom61
  %46 = load float, ptr %arrayidx62, align 4, !tbaa !13
  %fneg63 = fneg float %46
  %conv64 = fpext float %fneg63 to double
  %47 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom65 = sext i32 %47 to i64
  %arrayidx66 = getelementptr inbounds [100 x float], ptr %a, i64 0, i64 %idxprom65
  %48 = load float, ptr %arrayidx66, align 4, !tbaa !13
  %mul67 = fmul float 2.000000e+00, %48
  %conv68 = fpext float %mul67 to double
  %div69 = fdiv double %conv64, %conv68
  store double %div69, ptr %m, align 8, !tbaa !15
  %49 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom70 = sext i32 %49 to i64
  %arrayidx71 = getelementptr inbounds [100 x float], ptr %a, i64 0, i64 %idxprom70
  %50 = load float, ptr %arrayidx71, align 4, !tbaa !13
  %mul72 = fmul float 4.000000e+00, %50
  %51 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom73 = sext i32 %51 to i64
  %arrayidx74 = getelementptr inbounds [100 x float], ptr %c, i64 0, i64 %idxprom73
  %52 = load float, ptr %arrayidx74, align 4, !tbaa !13
  %53 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom76 = sext i32 %53 to i64
  %arrayidx77 = getelementptr inbounds [100 x float], ptr %b, i64 0, i64 %idxprom76
  %54 = load float, ptr %arrayidx77, align 4, !tbaa !13
  %55 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom78 = sext i32 %55 to i64
  %arrayidx79 = getelementptr inbounds [100 x float], ptr %b, i64 0, i64 %idxprom78
  %56 = load float, ptr %arrayidx79, align 4, !tbaa !13
  %mul80 = fmul float %54, %56
  %neg81 = fneg float %mul80
  %57 = call float @llvm.fmuladd.f32(float %mul72, float %52, float %neg81)
  %call82 = call noundef float @_ZSt4sqrtf(float noundef %57)
  %conv83 = fpext float %call82 to double
  %58 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom84 = sext i32 %58 to i64
  %arrayidx85 = getelementptr inbounds [100 x float], ptr %a, i64 0, i64 %idxprom84
  %59 = load float, ptr %arrayidx85, align 4, !tbaa !13
  %mul86 = fmul float 2.000000e+00, %59
  %conv87 = fpext float %mul86 to double
  %div88 = fdiv double %conv83, %conv87
  store double %div88, ptr %l, align 8, !tbaa !15
  %60 = load double, ptr %m, align 8, !tbaa !15
  %61 = load double, ptr %l, align 8, !tbaa !15
  %62 = load double, ptr %m, align 8, !tbaa !15
  %63 = load double, ptr %l, align 8, !tbaa !15
  %call89 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %60, double noundef %61, double noundef %62, double noundef %63)
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #6
  br label %if.end90

if.end90:                                         ; preds = %if.else60, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end90
  %64 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %64, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %x2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #6
  call void @llvm.lifetime.end.p0(i64 400, ptr %c) #6
  call void @llvm.lifetime.end.p0(i64 400, ptr %b) #6
  call void @llvm.lifetime.end.p0(i64 400, ptr %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef float @_ZSt4sqrtf(float noundef %__x) #4 comdat {
entry:
  %__x.addr = alloca float, align 4
  store float %__x, ptr %__x.addr, align 4, !tbaa !13
  %0 = load float, ptr %__x.addr, align 4, !tbaa !13
  %call = call float @sqrtf(float noundef %0) #6, !tbaa !5
  ret float %call
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
declare float @sqrtf(float noundef) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!14 = !{!"float", !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"double", !7, i64 0}
!17 = distinct !{!17, !18, !19}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.unroll.disable"}
