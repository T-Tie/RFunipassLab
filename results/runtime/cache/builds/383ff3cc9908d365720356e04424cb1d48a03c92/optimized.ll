; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8amdh4ae.cpp"
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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef align 8 %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef align 8 %b) #6
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef align 8 %c) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %k.0, %0
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
  %cmp4 = fcmp ogt double %4, 0.000000e+00
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %fneg = fneg double %1
  %call8 = call double @sqrt(double noundef %4) #7, !tbaa !5
  %add = fadd double %fneg, %call8
  %mul = fmul double 2.000000e+00, %2
  %div = fdiv double %add, %mul
  %call14 = call double @sqrt(double noundef %4) #7, !tbaa !5
  %sub = fsub double %fneg, %call14
  %div16 = fdiv double %sub, %mul
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %div, double noundef %div16)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %5 = load double, ptr %b, align 8, !tbaa !9
  %6 = load double, ptr %a, align 8, !tbaa !9
  %mul19 = fmul double 4.000000e+00, %6
  %7 = load double, ptr %c, align 8, !tbaa !9
  %mul20 = fmul double %mul19, %7
  %neg21 = fneg double %mul20
  %8 = call double @llvm.fmuladd.f64(double %5, double %5, double %neg21)
  %cmp22 = fcmp oeq double %8, 0.000000e+00
  br i1 %cmp22, label %if.then23, label %if.end28

if.then23:                                        ; preds = %if.end
  %fneg24 = fneg double %5
  %mul25 = fmul double 2.000000e+00, %6
  %div26 = fdiv double %fneg24, %mul25
  %call27 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %div26)
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end
  %9 = load double, ptr %b, align 8, !tbaa !9
  %10 = load double, ptr %a, align 8, !tbaa !9
  %mul30 = fmul double 4.000000e+00, %10
  %11 = load double, ptr %c, align 8, !tbaa !9
  %mul31 = fmul double %mul30, %11
  %neg32 = fneg double %mul31
  %12 = call double @llvm.fmuladd.f64(double %9, double %9, double %neg32)
  %cmp33 = fcmp olt double %12, 0.000000e+00
  br i1 %cmp33, label %if.then34, label %for.inc

if.then34:                                        ; preds = %if.end28
  %cmp35 = fcmp oeq double %9, 0.000000e+00
  br i1 %cmp35, label %for.inc.gvnsink.split, label %if.else

if.else:                                          ; preds = %if.then34
  %fneg45 = fneg double %9
  %mul46 = fmul double 2.000000e+00, %10
  %div47 = fdiv double %fneg45, %mul46
  br label %for.inc.gvnsink.split

for.inc.gvnsink.split:                            ; preds = %if.then34, %if.else
  %A.0 = phi double [ %div47, %if.else ], [ 0.000000e+00, %if.then34 ]
  %mul50 = fmul double %9, %9
  %neg51 = fneg double %mul50
  %13 = call double @llvm.fmuladd.f64(double %mul30, double %11, double %neg51)
  %call52 = call double @sqrt(double noundef %13) #7, !tbaa !5
  %mul53 = fmul double 2.000000e+00, %10
  %div54 = fdiv double %call52, %mul53
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %A.0, double noundef %div54, double noundef %A.0, double noundef %div54)
  br label %for.inc

for.inc:                                          ; preds = %for.inc.gvnsink.split, %if.end28
  %inc = add nsw i32 %k.0, 1
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
