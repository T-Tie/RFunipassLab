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
  %.loc1 = alloca double, align 8
  %.loc = alloca double, align 8
  %n = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %d.0 = phi double [ undef, %entry ], [ %d.1, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %a) #8
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %b) #8
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %c) #8
  %call8 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef nonnull align 8 dereferenceable(8) %a, ptr noundef nonnull align 8 dereferenceable(8) %b, ptr noundef nonnull align 8 dereferenceable(8) %c)
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %x1) #8
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %x2) #8
  %1 = load double, ptr %b, align 8, !tbaa !9
  %2 = load double, ptr %a, align 8, !tbaa !9
  %mul9 = fmul double 4.000000e+00, %2
  %3 = load double, ptr %c, align 8, !tbaa !9
  %mul10 = fmul double %mul9, %3
  %neg = fneg double %mul10
  %4 = call double @llvm.fmuladd.f64(double %1, double %1, double %neg)
  %cmp11 = fcmp ogt double %4, 0.000000e+00
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 noundef -1, ptr noundef nonnull align 8 dereferenceable(8) %.loc)
  call fastcc void @outlined_ir_func_0(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %b, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %a, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %c, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %x1, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %x2, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %.loc) #8
  %.reload = load double, ptr %.loc, align 8
  call void @llvm.lifetime.end.p0(i64 noundef -1, ptr noundef nonnull align 8 dereferenceable(8) %.loc)
  %5 = load double, ptr %x2, align 8, !tbaa !9
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %.reload, double noundef %5) #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  %cmp29 = fcmp oeq double %4, 0.000000e+00
  br i1 %cmp29, label %if.then30, label %if.else50

if.then30:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 noundef -1, ptr noundef nonnull align 8 dereferenceable(8) %.loc1)
  call fastcc void @outlined_ir_func_0(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %b, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %a, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %c, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %x1, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %x2, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %.loc1) #8
  %.reload2 = load double, ptr %.loc1, align 8
  call void @llvm.lifetime.end.p0(i64 noundef -1, ptr noundef nonnull align 8 dereferenceable(8) %.loc1)
  %call49 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %.reload2) #8
  br label %for.inc

if.else50:                                        ; preds = %if.else
  %cmp55 = fcmp olt double %4, 0.000000e+00
  br i1 %cmp55, label %if.then56, label %for.inc

if.then56:                                        ; preds = %if.else50
  %cmp57 = fcmp une double %1, 0.000000e+00
  br i1 %cmp57, label %if.then58, label %if.end67

if.then58:                                        ; preds = %if.then56
  %fneg59 = fneg double %1
  br label %if.end67

if.end67:                                         ; preds = %if.then56, %if.then58
  %.sink = phi double [ %fneg59, %if.then58 ], [ %1, %if.then56 ]
  %mul65 = fmul double 2.000000e+00, %2
  %div66 = fdiv double %.sink, %mul65
  %mul70 = fmul double %1, %1
  %neg71 = fneg double %mul70
  %6 = call double @llvm.fmuladd.f64(double %mul9, double %3, double %neg71)
  %call72 = call double @sqrt(double noundef %6) #9, !tbaa !5
  %div74 = fdiv double %call72, %mul65
  %call75 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %div66, double noundef %div74, double noundef %div66, double noundef %div74) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.end67, %if.else50, %if.then30
  %d.1 = phi double [ %d.0, %if.then ], [ %d.0, %if.then30 ], [ %div66, %if.end67 ], [ %d.0, %if.else50 ]
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef %x2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef %x1) #8
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef %c) #8
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef %b) #8
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef %a) #8
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #8
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

; Function Attrs: minsize mustprogress nofree norecurse nounwind optsize willreturn uwtable
define internal fastcc void @outlined_ir_func_0(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %5) unnamed_addr #6 {
if.then_after_outline.exitStub:
  %6 = load double, ptr %0, align 8, !tbaa !9, !invariant.load !14
  %fneg = fneg double %6
  %7 = load double, ptr %1, align 8, !tbaa !9, !invariant.load !14
  %mul12 = fmul double 4.000000e+00, %7
  %8 = load double, ptr %2, align 8, !tbaa !9, !invariant.load !14
  %mul13 = fmul double %mul12, %8
  %neg14 = fneg double %mul13
  %9 = call double @llvm.fmuladd.f64(double %6, double %6, double %neg14) #10
  %call15 = call double @sqrt(double noundef %9) #11, !tbaa !5
  %add = fadd double %fneg, %call15
  %mul = fmul double 2.000000e+00, %7
  %div = fdiv double %add, %mul
  store double %div, ptr %3, align 8, !tbaa !9
  %call21 = call double @sqrt(double noundef %9) #11, !tbaa !5
  %sub = fsub double %fneg, %call21
  %div23 = fdiv double %sub, %mul
  store double %div23, ptr %4, align 8, !tbaa !9
  store double %div, ptr %5, align 8
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { minsize mustprogress nofree norecurse nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind memory(write) }
attributes #10 = { nofree willreturn }
attributes #11 = { nofree nounwind willreturn memory(write) }

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
!14 = !{}
