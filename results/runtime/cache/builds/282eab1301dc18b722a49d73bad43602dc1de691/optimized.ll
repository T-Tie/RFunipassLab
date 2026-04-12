; ModuleID = '<stdin>'
source_filename = "/tmp/tmplk9hmort.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%lf%lf%lf\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"x1=%.5lf;x2=%.5lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"x1=x2=%.5lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"x1=%.5lf+%.5lfi;x2=%.5lf-%.5lfi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull %c) #7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %k.0 = phi double [ 1.000000e+00, %entry ], [ %inc40, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %conv = sitofp i32 %0 to double
  %cmp4 = fcmp ugt double %k.0, %conv
  br i1 %cmp4, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c)
  %1 = load double, ptr %b, align 8, !tbaa !9
  %fneg = fneg double %1
  %2 = load double, ptr %a, align 8, !tbaa !9
  %mul6 = fmul double %2, 4.000000e+00
  %3 = load double, ptr %c, align 8, !tbaa !9
  %4 = fneg double %3
  %neg = fmul double %mul6, %4
  %5 = call double @llvm.fmuladd.f64(double %1, double %1, double %neg)
  %call8 = call double @sqrt(double noundef %5) #8, !tbaa !5
  %add = fsub double %call8, %1
  %mul = fmul double %2, 2.000000e+00
  %div = fdiv double %add, %mul
  %sub = fsub double %fneg, %call8
  %div16 = fdiv double %sub, %mul
  %mul17 = fmul double %div, %div16
  %cmp18 = fcmp ult double %mul17, 0.000000e+00
  br i1 %cmp18, label %if.else26, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %cmp19 = fcmp une double %div, %div16
  br i1 %cmp19, label %if.then, label %land.lhs.true23

if.then:                                          ; preds = %land.lhs.true
  %call20 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %div, double noundef %div16) #7
  br label %for.inc

land.lhs.true23:                                  ; preds = %land.lhs.true
  %tobool = fcmp une double %div16, 0.000000e+00
  br i1 %tobool, label %if.then24, label %if.else26

if.then24:                                        ; preds = %land.lhs.true23
  %call25 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %div16) #7
  br label %for.inc

if.else26:                                        ; preds = %for.body, %land.lhs.true23
  %fneg29 = fdiv double %fneg, %mul
  %neg33 = fmul double %1, %fneg
  %6 = call double @llvm.fmuladd.f64(double %mul6, double %3, double %neg33)
  %call34 = call double @sqrt(double noundef %6) #8, !tbaa !5
  %div36 = fdiv double %call34, %mul
  %call37 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %fneg29, double noundef %div36, double noundef %fneg29, double noundef %div36) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else26, %if.then24
  %inc40 = fadd double %k.0, 1.000000e+00
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
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
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind memory(write) }

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
