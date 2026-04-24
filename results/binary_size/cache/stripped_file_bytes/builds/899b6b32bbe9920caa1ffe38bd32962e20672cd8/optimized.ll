; ModuleID = '/tmp/tmpxk9_lp7o.cpp'
source_filename = "/tmp/tmpxk9_lp7o.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

$_ZSt4sqrtf = comdat any

$_ZSt4fabsf = comdat any

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%f %f %f\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"x1=x2=%.5f\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"x1=%.5f;x2=%.5f\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"x1=%.5f+%.5fi;x2=%.5f-%.5fi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca [1000 x float], align 16
  %b = alloca [1000 x float], align 16
  %c = alloca [1000 x float], align 16
  %delta = alloca float, align 4
  %p = alloca float, align 4
  %q = alloca float, align 4
  %x1 = alloca float, align 4
  %x2 = alloca float, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4000, ptr %a) #6
  call void @llvm.lifetime.start.p0(i64 4000, ptr %b) #6
  call void @llvm.lifetime.start.p0(i64 4000, ptr %c) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %delta) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %x1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %x2) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1000 x float], ptr %a, i64 0, i64 %idxprom
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [1000 x float], ptr %b, i64 0, i64 %idxprom1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [1000 x float], ptr %c, i64 0, i64 %idxprom3
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %arrayidx4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc62, %for.end
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %sub7 = sub nsw i32 %7, 1
  %cmp8 = icmp sle i32 %6, %sub7
  br i1 %cmp8, label %for.body9, label %for.end64

for.body9:                                        ; preds = %for.cond6
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [1000 x float], ptr %b, i64 0, i64 %idxprom10
  %9 = load float, ptr %arrayidx11, align 4, !tbaa !12
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [1000 x float], ptr %b, i64 0, i64 %idxprom12
  %11 = load float, ptr %arrayidx13, align 4, !tbaa !12
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [1000 x float], ptr %a, i64 0, i64 %idxprom14
  %13 = load float, ptr %arrayidx15, align 4, !tbaa !12
  %mul16 = fmul float 4.000000e+00, %13
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [1000 x float], ptr %c, i64 0, i64 %idxprom17
  %15 = load float, ptr %arrayidx18, align 4, !tbaa !12
  %mul19 = fmul float %mul16, %15
  %neg = fneg float %mul19
  %16 = call float @llvm.fmuladd.f32(float %9, float %11, float %neg)
  store float %16, ptr %delta, align 4, !tbaa !12
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds [1000 x float], ptr %b, i64 0, i64 %idxprom20
  %18 = load float, ptr %arrayidx21, align 4, !tbaa !12
  %fneg = fneg float %18
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [1000 x float], ptr %a, i64 0, i64 %idxprom22
  %20 = load float, ptr %arrayidx23, align 4, !tbaa !12
  %mul = fmul float 2.000000e+00, %20
  %div = fdiv float %fneg, %mul
  store float %div, ptr %p, align 4, !tbaa !12
  %21 = load float, ptr %delta, align 4, !tbaa !12
  %cmp24 = fcmp oeq float %21, 0.000000e+00
  br i1 %cmp24, label %if.then, label %if.else

if.then:                                          ; preds = %for.body9
  %22 = load float, ptr %p, align 4, !tbaa !12
  %conv = fpext float %22 to double
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %conv)
  br label %if.end61

if.else:                                          ; preds = %for.body9
  %23 = load float, ptr %delta, align 4, !tbaa !12
  %cmp26 = fcmp ogt float %23, 0.000000e+00
  br i1 %cmp26, label %if.then27, label %if.else37

if.then27:                                        ; preds = %if.else
  %24 = load float, ptr %delta, align 4, !tbaa !12
  %call28 = call noundef float @_ZSt4sqrtf(float noundef %24)
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %25 to i64
  %arrayidx30 = getelementptr inbounds [1000 x float], ptr %a, i64 0, i64 %idxprom29
  %26 = load float, ptr %arrayidx30, align 4, !tbaa !12
  %mul31 = fmul float 2.000000e+00, %26
  %div32 = fdiv float %call28, %mul31
  store float %div32, ptr %q, align 4, !tbaa !12
  %27 = load float, ptr %p, align 4, !tbaa !12
  %28 = load float, ptr %q, align 4, !tbaa !12
  %add = fadd float %27, %28
  store float %add, ptr %x1, align 4, !tbaa !12
  %29 = load float, ptr %p, align 4, !tbaa !12
  %30 = load float, ptr %q, align 4, !tbaa !12
  %sub33 = fsub float %29, %30
  store float %sub33, ptr %x2, align 4, !tbaa !12
  %31 = load float, ptr %x1, align 4, !tbaa !12
  %conv34 = fpext float %31 to double
  %32 = load float, ptr %x2, align 4, !tbaa !12
  %conv35 = fpext float %32 to double
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %conv34, double noundef %conv35)
  br label %if.end60

if.else37:                                        ; preds = %if.else
  %33 = load float, ptr %delta, align 4, !tbaa !12
  %fneg38 = fneg float %33
  store float %fneg38, ptr %delta, align 4, !tbaa !12
  %34 = load float, ptr %delta, align 4, !tbaa !12
  %call39 = call noundef float @_ZSt4sqrtf(float noundef %34)
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %35 to i64
  %arrayidx41 = getelementptr inbounds [1000 x float], ptr %a, i64 0, i64 %idxprom40
  %36 = load float, ptr %arrayidx41, align 4, !tbaa !12
  %mul42 = fmul float 2.000000e+00, %36
  %div43 = fdiv float %call39, %mul42
  store float %div43, ptr %q, align 4, !tbaa !12
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom44 = sext i32 %37 to i64
  %arrayidx45 = getelementptr inbounds [1000 x float], ptr %b, i64 0, i64 %idxprom44
  %38 = load float, ptr %arrayidx45, align 4, !tbaa !12
  %cmp46 = fcmp oeq float %38, 0.000000e+00
  br i1 %cmp46, label %if.then47, label %if.else54

if.then47:                                        ; preds = %if.else37
  %39 = load float, ptr %p, align 4, !tbaa !12
  %call48 = call noundef float @_ZSt4fabsf(float noundef %39)
  store float %call48, ptr %p, align 4, !tbaa !12
  %40 = load float, ptr %p, align 4, !tbaa !12
  %conv49 = fpext float %40 to double
  %41 = load float, ptr %q, align 4, !tbaa !12
  %conv50 = fpext float %41 to double
  %42 = load float, ptr %p, align 4, !tbaa !12
  %conv51 = fpext float %42 to double
  %43 = load float, ptr %q, align 4, !tbaa !12
  %conv52 = fpext float %43 to double
  %call53 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %conv49, double noundef %conv50, double noundef %conv51, double noundef %conv52)
  br label %if.end

if.else54:                                        ; preds = %if.else37
  %44 = load float, ptr %p, align 4, !tbaa !12
  %conv55 = fpext float %44 to double
  %45 = load float, ptr %q, align 4, !tbaa !12
  %conv56 = fpext float %45 to double
  %46 = load float, ptr %p, align 4, !tbaa !12
  %conv57 = fpext float %46 to double
  %47 = load float, ptr %q, align 4, !tbaa !12
  %conv58 = fpext float %47 to double
  %call59 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %conv55, double noundef %conv56, double noundef %conv57, double noundef %conv58)
  br label %if.end

if.end:                                           ; preds = %if.else54, %if.then47
  br label %if.end60

if.end60:                                         ; preds = %if.end, %if.then27
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then
  br label %for.inc62

for.inc62:                                        ; preds = %if.end61
  %48 = load i32, ptr %i, align 4, !tbaa !5
  %inc63 = add nsw i32 %48, 1
  store i32 %inc63, ptr %i, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !14

for.end64:                                        ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 4, ptr %x2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %x1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %delta) #6
  call void @llvm.lifetime.end.p0(i64 4000, ptr %c) #6
  call void @llvm.lifetime.end.p0(i64 4000, ptr %b) #6
  call void @llvm.lifetime.end.p0(i64 4000, ptr %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef float @_ZSt4sqrtf(float noundef %__x) #4 comdat {
entry:
  %__x.addr = alloca float, align 4
  store float %__x, ptr %__x.addr, align 4, !tbaa !12
  %0 = load float, ptr %__x.addr, align 4, !tbaa !12
  %call = call float @sqrtf(float noundef %0) #6, !tbaa !5
  ret float %call
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef float @_ZSt4fabsf(float noundef %__x) #4 comdat {
entry:
  %__x.addr = alloca float, align 4
  store float %__x, ptr %__x.addr, align 4, !tbaa !12
  %0 = load float, ptr %__x.addr, align 4, !tbaa !12
  %1 = call float @llvm.fabs.f32(float %0)
  ret float %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
declare float @sqrtf(float noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !7, i64 0}
!14 = distinct !{!14, !10, !11}
