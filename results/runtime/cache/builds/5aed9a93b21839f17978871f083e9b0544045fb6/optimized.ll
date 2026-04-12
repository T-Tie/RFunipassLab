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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %a) #7
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %b) #7
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %c) #7
  %call8 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(8) %a, ptr noundef nonnull align 8 dereferenceable(8) %b, ptr noundef nonnull align 8 dereferenceable(8) %c)
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
  %fneg.i = fneg double %1
  %call15.i = call double @sqrt(double noundef %5) #8, !tbaa !5, !noalias !11
  %add.i = fsub double %call15.i, %1
  %mul.i = fmul double %2, 2.000000e+00
  %div.i = fdiv double %add.i, %mul.i
  %sub.i = fsub double %fneg.i, %call15.i
  %div23.i = fdiv double %sub.i, %mul.i
  %call24 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %div.i, double noundef %div23.i) #7
  br label %for.inc

if.else:                                          ; preds = %for.body
  %cmp29 = fcmp oeq double %5, 0.000000e+00
  br i1 %cmp29, label %if.then30, label %if.else50

if.then30:                                        ; preds = %if.else
  %call15.i9 = call double @sqrt(double noundef %5) #8, !tbaa !5, !noalias !16
  %add.i10 = fsub double %call15.i9, %1
  %mul.i11 = fmul double %2, 2.000000e+00
  %div.i12 = fdiv double %add.i10, %mul.i11
  %call49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %div.i12) #7
  br label %for.inc

if.else50:                                        ; preds = %if.else
  %cmp55 = fcmp olt double %5, 0.000000e+00
  br i1 %cmp55, label %if.then56, label %for.inc

if.then56:                                        ; preds = %if.else50
  %cmp57 = fcmp une double %1, 0.000000e+00
  %fneg59 = fneg double %1
  %.sink = select i1 %cmp57, double %fneg59, double %1
  %mul65 = fmul double %2, 2.000000e+00
  %div66 = fdiv double %.sink, %mul65
  %neg71 = fmul double %1, %fneg59
  %6 = call double @llvm.fmuladd.f64(double %mul9, double %3, double %neg71)
  %call72 = call double @sqrt(double noundef %6) #9, !tbaa !5
  %div74 = fdiv double %call72, %mul65
  %call75 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %div66, double noundef %div74, double noundef %div66, double noundef %div74) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.then56, %if.else50, %if.then30
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %a) #7
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
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
attributes #8 = { nofree nounwind willreturn memory(write) }
attributes #9 = { nounwind memory(write) }

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
!11 = !{!12, !14, !15}
!12 = distinct !{!12, !13, !"outlined_ir_func_0: argument 0"}
!13 = distinct !{!13, !"outlined_ir_func_0"}
!14 = distinct !{!14, !13, !"outlined_ir_func_0: argument 1"}
!15 = distinct !{!15, !13, !"outlined_ir_func_0: argument 2"}
!16 = !{!17, !19, !20}
!17 = distinct !{!17, !18, !"outlined_ir_func_0: argument 0"}
!18 = distinct !{!18, !"outlined_ir_func_0"}
!19 = distinct !{!19, !18, !"outlined_ir_func_0: argument 1"}
!20 = distinct !{!20, !18, !"outlined_ir_func_0: argument 2"}
!21 = distinct !{!21, !22, !23}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.unroll.disable"}
