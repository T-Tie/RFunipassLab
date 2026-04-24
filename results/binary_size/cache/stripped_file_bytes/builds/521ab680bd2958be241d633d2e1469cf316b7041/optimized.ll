; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4m6v1rm8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%lf%lf%lf\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"x1=%.5lf;x2=%.5lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"x1=x2=%.5lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"x1=%.5lf+%.5lfi;x2=%.5lf-%.5lfi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull %c) #6
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c)
  %1 = load double, ptr %b, align 8, !tbaa !9
  %2 = load double, ptr %a, align 8, !tbaa !9
  %mul2 = fmul double %2, 4.000000e+00
  %3 = load double, ptr %c, align 8, !tbaa !9
  %4 = fneg double %3
  %neg = fmul double %mul2, %4
  %5 = call double @llvm.fmuladd.f64(double %1, double %1, double %neg)
  %cmp4 = fcmp ogt double %5, 0.000000e+00
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %fneg = fneg double %1
  %call8 = call double @sqrt(double noundef %5) #6, !tbaa !5
  %add = fsub double %call8, %1
  %mul = fmul double %2, 2.000000e+00
  %div = fdiv double %add, %mul
  %call14 = call double @sqrt(double noundef %5) #6, !tbaa !5
  %sub = fsub double %fneg, %call14
  %div16 = fdiv double %sub, %mul
  %call17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %div, double noundef %div16)
  %.pre = load double, ptr %b, align 8, !tbaa !9
  %.pre4 = load double, ptr %a, align 8, !tbaa !9
  %.pre5 = load double, ptr %c, align 8, !tbaa !9
  %.pre9 = fmul double %.pre4, 4.000000e+00
  %.pre10 = fneg double %.pre5
  %.pre11 = fmul double %.pre9, %.pre10
  %.pre12 = call double @llvm.fmuladd.f64(double %.pre, double %.pre, double %.pre11)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %.pre-phi13 = phi double [ %.pre12, %if.then ], [ %5, %for.body ]
  %mul19.pre-phi = phi double [ %.pre9, %if.then ], [ %mul2, %for.body ]
  %6 = phi double [ %.pre5, %if.then ], [ %3, %for.body ]
  %7 = phi double [ %.pre4, %if.then ], [ %2, %for.body ]
  %8 = phi double [ %.pre, %if.then ], [ %1, %for.body ]
  %cmp22 = fcmp oeq double %.pre-phi13, 0.000000e+00
  br i1 %cmp22, label %if.then23, label %if.end34

if.then23:                                        ; preds = %if.end
  %call29 = call double @sqrt(double noundef %.pre-phi13) #6, !tbaa !5
  %add30 = fsub double %call29, %8
  %mul31 = fmul double %7, 2.000000e+00
  %div32 = fdiv double %add30, %mul31
  %call33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %div32)
  %.pre6 = load double, ptr %b, align 8, !tbaa !9
  %.pre7 = load double, ptr %a, align 8, !tbaa !9
  %.pre8 = load double, ptr %c, align 8, !tbaa !9
  %.pre14 = fmul double %.pre7, 4.000000e+00
  br label %if.end34

if.end34:                                         ; preds = %if.then23, %if.end
  %mul36.pre-phi = phi double [ %.pre14, %if.then23 ], [ %mul19.pre-phi, %if.end ]
  %9 = phi double [ %.pre8, %if.then23 ], [ %6, %if.end ]
  %10 = phi double [ %.pre7, %if.then23 ], [ %7, %if.end ]
  %11 = phi double [ %.pre6, %if.then23 ], [ %8, %if.end ]
  %mul37 = fmul double %mul36.pre-phi, %9
  %neg38 = fneg double %mul37
  %12 = call double @llvm.fmuladd.f64(double %11, double %11, double %neg38)
  %cmp39 = fcmp olt double %12, 0.000000e+00
  br i1 %cmp39, label %if.then40, label %for.inc

if.then40:                                        ; preds = %if.end34
  %fneg42 = fneg double %11
  %mul43 = fmul double %10, 2.000000e+00
  %div44 = fdiv double %fneg42, %mul43
  %13 = call double @llvm.fmuladd.f64(double %fneg42, double %11, double %mul37)
  %call49 = call double @sqrt(double noundef %13) #6, !tbaa !5
  %div51 = fdiv double %call49, %mul43
  %cmp52 = fcmp oeq double %div44, 0.000000e+00
  %m.0 = select i1 %cmp52, double 0.000000e+00, double %div44
  %call55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %m.0, double noundef %div51, double noundef %m.0, double noundef %div51)
  br label %for.inc

for.inc:                                          ; preds = %if.end34, %if.then40
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %a) #6
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind
declare double @sqrt(double noundef) local_unnamed_addr #4

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
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
!10 = !{!"double", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
