; ModuleID = '<stdin>'
source_filename = "/tmp/tmp7xk7sh30.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%lf %lf %lf\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"x1=%.5f;x2=%.5f\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"x1=x2=%.5f\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"x1=%.5f+%.5fi;x2=%.5f-%.5fi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull %c) #6
  %call8 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c)
  %1 = load double, ptr %b, align 8, !tbaa !9
  %2 = load double, ptr %a, align 8, !tbaa !9
  %mul9 = fmul double %2, 4.000000e+00
  %3 = load double, ptr %c, align 8, !tbaa !9
  %4 = fneg double %3
  %neg = fmul double %mul9, %4
  %5 = call double @llvm.fmuladd.f64(double %1, double %1, double %neg)
  %cmp11 = fcmp ogt double %5, 0.000000e+00
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %fneg = fneg double %1
  %call15 = call double @sqrt(double noundef %5) #6, !tbaa !5
  %add = fsub double %call15, %1
  %mul = fmul double %2, 2.000000e+00
  %div = fdiv double %add, %mul
  %call21 = call double @sqrt(double noundef %5) #6, !tbaa !5
  %sub = fsub double %fneg, %call21
  %div23 = fdiv double %sub, %mul
  %call24 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %div, double noundef %div23)
  br label %for.inc

if.else:                                          ; preds = %for.body
  %cmp29 = fcmp oeq double %5, 0.000000e+00
  br i1 %cmp29, label %if.then30, label %if.else50

if.then30:                                        ; preds = %if.else
  %call36 = call double @sqrt(double noundef %5) #6, !tbaa !5
  %add37 = fsub double %call36, %1
  %mul38 = fmul double %2, 2.000000e+00
  %div39 = fdiv double %add37, %mul38
  %call45 = call double @sqrt(double noundef %5) #6, !tbaa !5
  %call49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %div39)
  br label %for.inc

if.else50:                                        ; preds = %if.else
  %cmp55 = fcmp olt double %5, 0.000000e+00
  br i1 %cmp55, label %if.then56, label %for.inc

if.then56:                                        ; preds = %if.else50
  %cmp57 = fcmp une double %1, 0.000000e+00
  br i1 %cmp57, label %if.then58, label %if.then64

if.then58:                                        ; preds = %if.then56
  %fneg59 = fneg double %1
  %mul60 = fmul double %2, 2.000000e+00
  %div61 = fdiv double %fneg59, %mul60
  br label %if.end67

if.then64:                                        ; preds = %if.then56
  %mul65 = fmul double %2, 2.000000e+00
  %div66 = fdiv double %1, %mul65
  %.pre = fneg double %1
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.then58
  %mul73.pre-phi = phi double [ %mul65, %if.then64 ], [ %mul60, %if.then58 ]
  %.pre-phi = phi double [ %.pre, %if.then64 ], [ %fneg59, %if.then58 ]
  %d.3 = phi double [ %div66, %if.then64 ], [ %div61, %if.then58 ]
  %neg71 = fmul double %1, %.pre-phi
  %6 = call double @llvm.fmuladd.f64(double %mul9, double %3, double %neg71)
  %call72 = call double @sqrt(double noundef %6) #6, !tbaa !5
  %div74 = fdiv double %call72, %mul73.pre-phi
  %call75 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %d.3, double noundef %div74, double noundef %d.3, double noundef %div74)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.end67, %if.else50, %if.then30
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
attributes #5 = { nofree nounwind willreturn }
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
