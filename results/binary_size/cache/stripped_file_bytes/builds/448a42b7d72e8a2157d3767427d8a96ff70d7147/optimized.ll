; ModuleID = '<stdin>'
source_filename = "/tmp/tmpdykedkst.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%lf%lf%lf\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"x1=%.5lf;x2=%.5lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"x1=x2=%.5lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"x1=0.00000+%.5lfi;x2=0.00000%.5lfi\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"x1=%.5lf+%.5lfi;x2=%.5lf%.5lfi\0A\00", align 1

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
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull %c) #6
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c)
  %1 = load double, ptr %b, align 8, !tbaa !9
  %mul = fmul double %1, %1
  %2 = load double, ptr %a, align 8, !tbaa !9
  %mul2 = fmul double %2, 4.000000e+00
  %3 = load double, ptr %c, align 8, !tbaa !9
  %mul3 = fmul double %mul2, %3
  %cmp4 = fcmp ogt double %mul, %mul3
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %fneg = fneg double %1
  %neg = fneg double %mul3
  %4 = call double @llvm.fmuladd.f64(double %1, double %1, double %neg)
  %call8 = call double @sqrt(double noundef %4) #6, !tbaa !5
  %add = fsub double %call8, %1
  %mul9 = fmul double %2, 2.000000e+00
  %div = fdiv double %add, %mul9
  %call15 = call double @sqrt(double noundef %4) #6, !tbaa !5
  %sub = fsub double %fneg, %call15
  %div17 = fdiv double %sub, %mul9
  %call18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %div, double noundef %div17)
  br label %for.inc

if.else:                                          ; preds = %for.body
  %cmp22 = fcmp oeq double %mul, %mul3
  br i1 %cmp22, label %if.then23, label %if.else34

if.then23:                                        ; preds = %if.else
  %neg28 = fneg double %mul3
  %5 = call double @llvm.fmuladd.f64(double %1, double %1, double %neg28)
  %call29 = call double @sqrt(double noundef %5) #6, !tbaa !5
  %add30 = fsub double %call29, %1
  %mul31 = fmul double %2, 2.000000e+00
  %div32 = fdiv double %add30, %mul31
  %call33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %div32)
  br label %for.inc

if.else34:                                        ; preds = %if.else
  %cmp35 = fcmp oeq double %1, 0.000000e+00
  %fneg37 = fneg double %1
  br i1 %cmp35, label %if.then36, label %if.else53

if.then36:                                        ; preds = %if.else34
  %6 = call double @llvm.fmuladd.f64(double %fneg37, double %1, double %mul3)
  %call41 = call double @sqrt(double noundef %6) #6, !tbaa !5
  %mul42 = fmul double %2, 2.000000e+00
  %div43 = fdiv double %call41, %mul42
  %call48 = call double @sqrt(double noundef %6) #6, !tbaa !5
  %fneg49 = fneg double %call48
  %div51 = fdiv double %fneg49, %mul42
  %call52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %div43, double noundef %div51)
  br label %for.inc

if.else53:                                        ; preds = %if.else34
  %mul55 = fmul double %2, 2.000000e+00
  %div56 = fdiv double %fneg37, %mul55
  %7 = call double @llvm.fmuladd.f64(double %fneg37, double %1, double %mul3)
  %call61 = call double @sqrt(double noundef %7) #6, !tbaa !5
  %div63 = fdiv double %call61, %mul55
  %call71 = call double @sqrt(double noundef %7) #6, !tbaa !5
  %fneg72 = fneg double %call71
  %div74 = fdiv double %fneg72, %mul55
  %call75 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %div56, double noundef %div63, double noundef %div56, double noundef %div74)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.then36, %if.else53, %if.then23
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

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
