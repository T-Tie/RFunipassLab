; ModuleID = '<stdin>'
source_filename = "/tmp/tmpj7s3hoax.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [5 x i8] c"%d/n\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%lf %lf %lf\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"x1=%.5f;x2=%.5f\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"x1=x2=%.5f\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"x1=%.5lf+%.5lfi;x2=%.5lf%.5lfi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a) #6
  store double 0.000000e+00, ptr %a, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #6
  store double 0.000000e+00, ptr %b, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %c) #6
  store double 0.000000e+00, ptr %c, align 8, !tbaa !5
  %.pr = load i32, ptr %n, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %if.end62, %entry
  %0 = phi i32 [ %dec, %if.end62 ], [ %.pr, %entry ]
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c)
  %1 = load double, ptr %b, align 8, !tbaa !5
  %2 = load double, ptr %a, align 8, !tbaa !5
  %mul2 = fmul double %2, 4.000000e+00
  %3 = load double, ptr %c, align 8, !tbaa !5
  %4 = fneg double %3
  %neg = fmul double %mul2, %4
  %5 = call double @llvm.fmuladd.f64(double %1, double %1, double %neg)
  %call4 = call double @sqrt(double noundef %5) #6, !tbaa !9
  %fneg5 = fneg double %1
  %sub = fsub double %fneg5, %call4
  %mul11 = fmul double %2, 2.000000e+00
  %div12 = fdiv double %sub, %mul11
  %cmp17 = fcmp ogt double %5, 0.000000e+00
  br i1 %cmp17, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %add = fsub double %call4, %1
  %div = fdiv double %add, %mul11
  %call18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %div, double noundef %div12)
  br label %if.end62

if.else:                                          ; preds = %for.body
  %cmp23 = fcmp oeq double %5, 0.000000e+00
  br i1 %cmp23, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.else
  %call25 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %div12)
  br label %if.end62

if.else26:                                        ; preds = %if.else
  %cmp31 = fcmp olt double %5, 0.000000e+00
  br i1 %cmp31, label %if.then32, label %if.end62

if.then32:                                        ; preds = %if.else26
  %cmp33 = fcmp une double %1, 0.000000e+00
  br i1 %cmp33, label %if.then34, label %if.then49

if.then34:                                        ; preds = %if.then32
  %div37 = fdiv double %fneg5, %mul11
  %neg41 = fmul double %1, %fneg5
  %6 = call double @llvm.fmuladd.f64(double %mul2, double %3, double %neg41)
  %call42 = call double @sqrt(double noundef %6) #6, !tbaa !9
  %div44 = fdiv double %call42, %mul11
  %fneg45 = fneg double %div44
  %call46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %div37, double noundef %div44, double noundef %div37, double noundef %fneg45)
  br label %if.end62

if.then49:                                        ; preds = %if.then32
  %neg53 = fmul double %1, %fneg5
  %7 = call double @llvm.fmuladd.f64(double %mul2, double %3, double %neg53)
  %call54 = call double @sqrt(double noundef %7) #6, !tbaa !9
  %div56 = fdiv double %call54, %mul11
  %fneg57 = fneg double %div56
  %call58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef 0.000000e+00, double noundef %div56, double noundef 0.000000e+00, double noundef %fneg57)
  br label %if.end62

if.end62:                                         ; preds = %if.then24, %if.then34, %if.then49, %if.else26, %if.then
  %8 = load i32, ptr %n, align 4, !tbaa !9
  %dec = add nsw i32 %8, -1
  store i32 %dec, ptr %n, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
