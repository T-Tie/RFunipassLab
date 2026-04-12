; ModuleID = '<stdin>'
source_filename = "/tmp/tmpyh6_lvh8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%lf%lf%lf\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"x1=%.5lf;x2=%.5lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"x1=x2=%.5lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"x1=%.5lf+%.5lfi;\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"x2=%.5lf-%.5lfi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %b) #6
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %c) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
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
  %cmp4 = fcmp ogt double %5, 0.000000e+00
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %fneg = fneg double %1
  %call8 = call double @sqrt(double noundef %5) #7, !tbaa !5
  %add = fsub double %call8, %1
  %mul = fmul double %2, 2.000000e+00
  %div = fdiv double %add, %mul
  %call14 = call double @sqrt(double noundef %5) #7, !tbaa !5
  %sub = fsub double %fneg, %call14
  %div16 = fdiv double %sub, %mul
  %call17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %div, double noundef %div16)
  %.pre = load double, ptr %b, align 8, !tbaa !9
  %.pre1 = load double, ptr %a, align 8, !tbaa !9
  %.pre2 = load double, ptr %c, align 8, !tbaa !9
  %.pre6 = fmul double %.pre1, 4.000000e+00
  %.pre7 = fneg double %.pre2
  %.pre8 = fmul double %.pre6, %.pre7
  %.pre9 = call double @llvm.fmuladd.f64(double %.pre, double %.pre, double %.pre8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %.pre-phi10 = phi double [ %.pre9, %if.then ], [ %5, %for.body ]
  %mul19.pre-phi = phi double [ %.pre6, %if.then ], [ %mul2, %for.body ]
  %6 = phi double [ %.pre2, %if.then ], [ %3, %for.body ]
  %7 = phi double [ %.pre1, %if.then ], [ %2, %for.body ]
  %8 = phi double [ %.pre, %if.then ], [ %1, %for.body ]
  %cmp22 = fcmp oeq double %.pre-phi10, 0.000000e+00
  br i1 %cmp22, label %if.then23, label %if.end28

if.then23:                                        ; preds = %if.end
  %fneg24 = fneg double %8
  %mul25 = fmul double %7, 2.000000e+00
  %div26 = fdiv double %fneg24, %mul25
  %call27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %div26)
  %.pre3 = load double, ptr %b, align 8, !tbaa !9
  %.pre4 = load double, ptr %a, align 8, !tbaa !9
  %.pre5 = load double, ptr %c, align 8, !tbaa !9
  %.pre11 = fmul double %.pre4, 4.000000e+00
  %.pre12 = fneg double %.pre5
  %.pre14 = fmul double %.pre11, %.pre12
  %.pre15 = call double @llvm.fmuladd.f64(double %.pre3, double %.pre3, double %.pre14)
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end
  %.pre-phi16 = phi double [ %.pre15, %if.then23 ], [ %.pre-phi10, %if.end ]
  %mul30.pre-phi = phi double [ %.pre11, %if.then23 ], [ %mul19.pre-phi, %if.end ]
  %9 = phi double [ %.pre5, %if.then23 ], [ %6, %if.end ]
  %10 = phi double [ %.pre4, %if.then23 ], [ %7, %if.end ]
  %11 = phi double [ %.pre3, %if.then23 ], [ %8, %if.end ]
  %cmp33 = fcmp olt double %.pre-phi16, 0.000000e+00
  br i1 %cmp33, label %if.then34, label %for.inc

if.then34:                                        ; preds = %if.end28
  %fneg35 = fneg double %11
  %mul36 = fmul double %10, 2.000000e+00
  %div37 = fdiv double %fneg35, %mul36
  %neg41 = fmul double %11, %fneg35
  %12 = call double @llvm.fmuladd.f64(double %mul30.pre-phi, double %9, double %neg41)
  %call42 = call double @sqrt(double noundef %12) #7, !tbaa !5
  %div44 = fdiv double %call42, %mul36
  %call45 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %div37, double noundef %div44)
  %call46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %div37, double noundef %div44)
  br label %for.inc

for.inc:                                          ; preds = %if.end28, %if.then34
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %a) #7
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
