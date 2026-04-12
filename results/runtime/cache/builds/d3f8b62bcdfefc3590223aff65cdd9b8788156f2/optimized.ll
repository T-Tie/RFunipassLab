; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1pr5op45.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

$_ZSt4sqrtf = comdat any

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%f %f %f\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"x1=%.5f;x2=%.5f\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"x1=x2=%.5f\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"x1=%.5f+%.5fi;x2=%.5f-%.5fi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [1000 x float], align 16
  %b = alloca [1000 x float], align 16
  %c = alloca [1000 x float], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef %b) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef %c) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %j.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %j.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds [1000 x float], ptr %a, i64 0, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [1000 x float], ptr %b, i64 0, i64 %idxprom
  %arrayidx4 = getelementptr inbounds [1000 x float], ptr %c, i64 0, i64 %idxprom
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %arrayidx4)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc150, %for.end
  %j.1 = phi i32 [ 1, %for.end ], [ %inc151, %for.inc150 ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp7 = icmp sle i32 %j.1, %1
  br i1 %cmp7, label %for.body8, label %for.end152

for.body8:                                        ; preds = %for.cond6
  %idxprom9 = sext i32 %j.1 to i64
  %arrayidx10 = getelementptr inbounds [1000 x float], ptr %b, i64 0, i64 %idxprom9
  %2 = load float, ptr %arrayidx10, align 4, !tbaa !12
  %arrayidx14 = getelementptr inbounds [1000 x float], ptr %a, i64 0, i64 %idxprom9
  %3 = load float, ptr %arrayidx14, align 4, !tbaa !12
  %mul15 = fmul float 4.000000e+00, %3
  %arrayidx17 = getelementptr inbounds [1000 x float], ptr %c, i64 0, i64 %idxprom9
  %4 = load float, ptr %arrayidx17, align 4, !tbaa !12
  %mul18 = fmul float %mul15, %4
  %neg = fneg float %mul18
  %5 = call nofpclass(nzero) float @llvm.fmuladd.f32(float %2, float %2, float %neg)
  %cmp19 = fcmp ogt float %5, 0.000000e+00
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.body8
  %fneg = fneg float %2
  %call33 = call noundef float @_ZSt4sqrtf(float noundef nofpclass(nzero) %5) #7
  %add = fadd float %fneg, %call33
  %6 = load float, ptr %arrayidx14, align 4, !tbaa !12
  %mul = fmul float 2.000000e+00, %6
  %div = fdiv float %add, %mul
  %conv = fpext float %div to double
  %7 = load float, ptr %arrayidx10, align 4, !tbaa !12
  %fneg38 = fneg float %7
  %mul46 = fmul float 4.000000e+00, %6
  %8 = load float, ptr %arrayidx17, align 4, !tbaa !12
  %mul49 = fmul float %mul46, %8
  %neg50 = fneg float %mul49
  %9 = call nofpclass(nzero) float @llvm.fmuladd.f32(float %7, float %7, float %neg50)
  %call51 = call noundef float @_ZSt4sqrtf(float noundef nofpclass(nzero) %9) #7
  %sub = fsub float %fneg38, %call51
  %10 = load float, ptr %arrayidx14, align 4, !tbaa !12
  %mul54 = fmul float 2.000000e+00, %10
  %div55 = fdiv float %sub, %mul54
  %conv56 = fpext float %div55 to double
  %call57 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %conv, double noundef %conv56)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body8
  %11 = load float, ptr %arrayidx10, align 4, !tbaa !12
  %12 = load float, ptr %arrayidx14, align 4, !tbaa !12
  %mul65 = fmul float 4.000000e+00, %12
  %13 = load float, ptr %arrayidx17, align 4, !tbaa !12
  %mul68 = fmul float %mul65, %13
  %neg69 = fneg float %mul68
  %14 = call float @llvm.fmuladd.f32(float %11, float %11, float %neg69)
  %cmp70 = fcmp oeq float %14, 0.000000e+00
  br i1 %cmp70, label %if.then71, label %if.end81

if.then71:                                        ; preds = %if.end
  %fneg74 = fneg float %11
  %mul77 = fmul float 2.000000e+00, %12
  %div78 = fdiv float %fneg74, %mul77
  %conv79 = fpext float %div78 to double
  %call80 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %conv79)
  br label %if.end81

if.end81:                                         ; preds = %if.then71, %if.end
  %15 = load float, ptr %arrayidx10, align 4, !tbaa !12
  %16 = load float, ptr %arrayidx14, align 4, !tbaa !12
  %mul89 = fmul float 4.000000e+00, %16
  %17 = load float, ptr %arrayidx17, align 4, !tbaa !12
  %mul92 = fmul float %mul89, %17
  %neg93 = fneg float %mul92
  %18 = call float @llvm.fmuladd.f32(float %15, float %15, float %neg93)
  %cmp94 = fcmp olt float %18, 0.000000e+00
  br i1 %cmp94, label %if.then95, label %for.inc150

if.then95:                                        ; preds = %if.end81
  %fneg98 = fneg float %15
  %mul101 = fmul float 2.000000e+00, %16
  %div102 = fdiv float %fneg98, %mul101
  %conv103 = fpext float %div102 to double
  %mul114 = fmul float %15, %15
  %neg115 = fneg float %mul114
  %19 = call float @llvm.fmuladd.f32(float %mul89, float %17, float %neg115)
  %call116 = call noundef float @_ZSt4sqrtf(float noundef %19) #7
  %20 = load float, ptr %arrayidx14, align 4, !tbaa !12
  %mul119 = fmul float 2.000000e+00, %20
  %div120 = fdiv float %call116, %mul119
  %conv121 = fpext float %div120 to double
  %21 = load float, ptr %arrayidx10, align 4, !tbaa !12
  %fneg124 = fneg float %21
  %div128 = fdiv float %fneg124, %mul119
  %conv129 = fpext float %div128 to double
  %mul132 = fmul float 4.000000e+00, %20
  %22 = load float, ptr %arrayidx17, align 4, !tbaa !12
  %mul140 = fmul float %21, %21
  %neg141 = fneg float %mul140
  %23 = call float @llvm.fmuladd.f32(float %mul132, float %22, float %neg141)
  %call142 = call noundef float @_ZSt4sqrtf(float noundef %23) #7
  %24 = load float, ptr %arrayidx14, align 4, !tbaa !12
  %mul145 = fmul float 2.000000e+00, %24
  %div146 = fdiv float %call142, %mul145
  %conv147 = fpext float %div146 to double
  %call148 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %conv103, double noundef %conv121, double noundef %conv129, double noundef %conv147)
  br label %for.inc150

for.inc150:                                       ; preds = %if.end81, %if.then95
  %inc151 = add nsw i32 %j.1, 1
  br label %for.cond6, !llvm.loop !14

for.end152:                                       ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef %c) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef float @_ZSt4sqrtf(float noundef %__x) local_unnamed_addr #4 comdat {
entry:
  %call = call float @sqrtf(float noundef %__x) #7, !tbaa !5
  ret float %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
declare float @sqrtf(float noundef) local_unnamed_addr #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind willreturn }
attributes #7 = { nounwind }

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
