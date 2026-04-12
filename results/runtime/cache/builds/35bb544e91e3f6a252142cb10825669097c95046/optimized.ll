; ModuleID = '<stdin>'
source_filename = "/tmp/tmprtfp16jm.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%lf%lf%lf\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"x1=%.5lf;x2=%.5lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"x1=x2=%.5lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"x1=%.5lf\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"+%.5lfi\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%.5lfi\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c";x2=%.5lf\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%.5lfi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef %a) #7
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef %b) #7
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef %c) #7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %a, ptr noundef %b, ptr noundef %c)
  %1 = load double, ptr %b, align 8, !tbaa !9
  %2 = load double, ptr %a, align 8, !tbaa !9
  %mul2 = fmul double 4.000000e+00, %2
  %3 = load double, ptr %c, align 8, !tbaa !9
  %mul3 = fmul double %mul2, %3
  %neg = fneg double %mul3
  %4 = call double @llvm.fmuladd.f64(double %1, double %1, double %neg)
  %cmp4 = fcmp oge double %4, 0.000000e+00
  br i1 %cmp4, label %if.then, label %if.end17

if.then:                                          ; preds = %for.body
  %fneg = fneg double %1
  %call5 = call double @sqrt(double noundef %4) #8, !tbaa !5
  %add = fadd double %fneg, %call5
  %mul = fmul double 2.000000e+00, %2
  %div = fdiv double %add, %mul
  %call7 = call double @sqrt(double noundef %4) #8, !tbaa !5
  %sub = fsub double %fneg, %call7
  %div9 = fdiv double %sub, %mul
  %cmp10 = fcmp une double %div, %div9
  br i1 %cmp10, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %div, double noundef %div9) #7
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then
  %cmp13 = fcmp oeq double %div, %div9
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %div9) #7
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then14, %for.body
  %cmp18 = fcmp olt double %4, 0.000000e+00
  br i1 %cmp18, label %if.then19, label %for.inc

if.then19:                                        ; preds = %if.end17
  %5 = load double, ptr %b, align 8, !tbaa !9
  %fneg20 = fneg double %5
  %6 = load double, ptr %a, align 8, !tbaa !9
  %mul21 = fmul double 2.000000e+00, %6
  %div22 = fdiv double %fneg20, %mul21
  %fneg23 = fneg double %4
  %call24 = call double @sqrt(double noundef %fneg23) #8, !tbaa !5
  %div26 = fdiv double %call24, %mul21
  %call28 = call double @sqrt(double noundef %fneg23) #8, !tbaa !5
  %fneg29 = fneg double %call28
  %div31 = fdiv double %fneg29, %mul21
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %div22) #7
  %cmp33 = fcmp ogt double %div26, 0.000000e+00
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.then19
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %div26) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.then19
  %cmp37 = fcmp olt double %div26, 0.000000e+00
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end36
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %div26) #7
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end36
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %div22) #7
  %cmp42 = fcmp ogt double %div31, 0.000000e+00
  br i1 %cmp42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end40
  %call44 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %div31) #7
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end40
  %cmp46 = fcmp olt double %div31, 0.000000e+00
  br i1 %cmp46, label %if.then47, label %for.inc

if.then47:                                        ; preds = %if.end45
  %call48 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %div31) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end17, %if.then47, %if.end45
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef %c) #7
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind memory(write) }

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
