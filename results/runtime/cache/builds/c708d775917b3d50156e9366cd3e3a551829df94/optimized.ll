; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnu_37a50.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%lf %lf %lf\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"x1=%.5f;x2=%.5f\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"x1=x2=%.5f\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"x1=%.5f+%.5fi;x2=%.5f-%.5fi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %if.end49, %entry
  %m.0 = phi i32 [ 0, %entry ], [ %inc, %if.end49 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %m.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %c) #6
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c)
  %1 = load double, ptr %b, align 8, !tbaa !9
  %2 = load double, ptr %a, align 8, !tbaa !9
  %mul2 = fmul double %2, 4.000000e+00
  %3 = load double, ptr %c, align 8, !tbaa !9
  %mul3 = fmul double %mul2, %3
  %neg = fneg double %mul3
  %4 = call double @llvm.fmuladd.f64(double %1, double %1, double %neg)
  %cmp4 = fcmp ogt double %4, 0.000000e+00
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %call8 = call double @sqrt(double noundef %4) #6, !tbaa !5
  %add = fsub double %call8, %1
  %mul = fmul double %2, 2.000000e+00
  %div = fdiv double %add, %mul
  %fneg9 = fneg double %1
  %5 = fneg double %3
  %neg13 = fmul double %mul2, %5
  %6 = call double @llvm.fmuladd.f64(double %1, double %1, double %neg13)
  %call14 = call double @sqrt(double noundef %6) #6, !tbaa !5
  %sub = fsub double %fneg9, %call14
  %div16 = fdiv double %sub, %mul
  %call17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %div, double noundef %div16)
  br label %if.end49

if.else:                                          ; preds = %for.body
  %cmp22 = fcmp oeq double %4, 0.000000e+00
  br i1 %cmp22, label %if.then23, label %if.else34

if.then23:                                        ; preds = %if.else
  %call29 = call double @sqrt(double noundef %4) #6, !tbaa !5
  %add30 = fsub double %call29, %1
  %mul31 = fmul double %2, 2.000000e+00
  %div32 = fdiv double %add30, %mul31
  %call33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %div32)
  br label %if.end49

if.else34:                                        ; preds = %if.else
  %fneg35 = fneg double %1
  %mul36 = fmul double %2, 2.000000e+00
  %div37 = fdiv double %fneg35, %mul36
  %7 = call double @llvm.fmuladd.f64(double %fneg35, double %1, double %mul3)
  %call42 = call double @sqrt(double noundef %7) #6, !tbaa !5
  %div44 = fdiv double %call42, %mul36
  %8 = call double @llvm.fabs.f64(double %div37)
  %cmp45 = fcmp olt double %8, 1.000000e-05
  %p.0 = select i1 %cmp45, double 0.000000e+00, double %div37
  %call47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %p.0, double noundef %div44, double noundef %p.0, double noundef %div44)
  br label %if.end49

if.end49:                                         ; preds = %if.then23, %if.else34, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a) #6
  %inc = add nuw nsw i32 %m.0, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
