; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4jzwzpa9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%lf %lf %lf\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"x1=x2=%.5lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"x1=%.5lf+%.5lfi;x2=%.5lf-%.5lfi\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"x1=%.5lf;x2=%.5lf\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %b) #5
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %c) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c)
  %1 = load double, ptr %b, align 8, !tbaa !9
  %2 = load double, ptr %a, align 8, !tbaa !9
  %mul2 = fmul double %2, 4.000000e+00
  %3 = load double, ptr %c, align 8, !tbaa !9
  %4 = fneg double %3
  %neg = fmul double %mul2, %4
  %5 = call double @llvm.fmuladd.f64(double %1, double %1, double %neg)
  %fneg = fneg double %1
  %mul = fmul double %2, 2.000000e+00
  %div = fdiv double %fneg, %mul
  %sub = fsub double 0.000000e+00, %div
  %neg7 = fmul double %1, %fneg
  %6 = call double @llvm.fmuladd.f64(double %mul2, double %3, double %neg7)
  %call8 = call double @sqrt(double noundef %6) #6, !tbaa !5
  %div10 = fdiv double %call8, %mul
  %call16 = call double @sqrt(double noundef %5) #6, !tbaa !5
  %add = fsub double %call16, %1
  %div18 = fdiv double %add, %mul
  %call24 = call double @sqrt(double noundef %5) #6, !tbaa !5
  %sub25 = fsub double %fneg, %call24
  %div27 = fdiv double %sub25, %mul
  %cmp28 = fcmp oeq double %5, 0.000000e+00
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %div)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %cmp30 = fcmp olt double %5, 0.000000e+00
  br i1 %cmp30, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %if.end
  %7 = load double, ptr %b, align 8, !tbaa !9
  %cmp31 = fcmp une double %7, 0.000000e+00
  br i1 %cmp31, label %if.then32, label %land.lhs.true36

if.then32:                                        ; preds = %land.lhs.true
  %call33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %div, double noundef %div10, double noundef %div, double noundef %div10)
  %.pr = load double, ptr %b, align 8, !tbaa !9
  br label %land.lhs.true36

land.lhs.true36:                                  ; preds = %if.then32, %land.lhs.true
  %8 = phi double [ %.pr, %if.then32 ], [ %7, %land.lhs.true ]
  %cmp37 = fcmp oeq double %8, 0.000000e+00
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %land.lhs.true36
  %call39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %sub, double noundef %div10, double noundef %sub, double noundef %div10)
  br label %if.end40

if.end40:                                         ; preds = %if.end, %if.then38, %land.lhs.true36
  %cmp41 = fcmp ogt double %5, 0.000000e+00
  br i1 %cmp41, label %if.then42, label %for.inc

if.then42:                                        ; preds = %if.end40
  %call43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %div18, double noundef %div27)
  br label %for.inc

for.inc:                                          ; preds = %if.end40, %if.then42
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %a) #6
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
