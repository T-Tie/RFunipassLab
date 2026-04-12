; ModuleID = '<stdin>'
source_filename = "/tmp/tmpipl3gc15.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%lf %lf %lf\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"x1=%.5lf;x2=%.5lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"x1=x2=%.5lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"x1=%.5lf+%.5lfi;x2=%.5lf%.5lfi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca double, i64 %1, align 16
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = zext i32 %3 to i64
  %vla1 = alloca double, i64 %4, align 16
  %vla2 = alloca double, i64 %4, align 16
  %vla3 = alloca double, i64 %4, align 16
  %vla4 = alloca double, i64 %4, align 16
  %vla5 = alloca double, i64 %4, align 16
  %vla6 = alloca double, i64 %4, align 16
  %vla7 = alloca double, i64 %4, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = phi i32 [ %.pre, %for.inc ], [ %3, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %6 = sext i32 %5 to i64
  %cmp = icmp slt i64 %indvars.iv, %6
  br i1 %cmp, label %for.body, label %for.cond192

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw double, ptr %vla, i64 %indvars.iv
  %arrayidx9 = getelementptr inbounds nuw double, ptr %vla1, i64 %indvars.iv
  %arrayidx11 = getelementptr inbounds nuw double, ptr %vla2, i64 %indvars.iv
  %call12 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx9, ptr noundef nonnull %arrayidx11)
  %7 = load double, ptr %arrayidx9, align 8, !tbaa !9
  %8 = load double, ptr %arrayidx, align 8, !tbaa !9
  %mul19 = fmul double %8, 4.000000e+00
  %9 = load double, ptr %arrayidx11, align 8, !tbaa !9
  %10 = fneg double %9
  %neg = fmul double %mul19, %10
  %11 = call double @llvm.fmuladd.f64(double %7, double %7, double %neg)
  %cmp23 = fcmp ogt double %11, 0.000000e+00
  br i1 %cmp23, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %call37 = call double @sqrt(double noundef %11) #7, !tbaa !5
  %add = fsub double %call37, %7
  %mul = fmul double %8, 2.000000e+00
  %div = fdiv double %add, %mul
  %arrayidx41 = getelementptr inbounds nuw double, ptr %vla3, i64 %indvars.iv
  store double %div, ptr %arrayidx41, align 8, !tbaa !9
  %fneg44 = fneg double %7
  %sub = fsub double %fneg44, %call37
  %div61 = fdiv double %sub, %mul
  br label %for.inc

if.else:                                          ; preds = %for.body
  %cmp76 = fcmp oeq double %11, 0.000000e+00
  br i1 %cmp76, label %if.then77, label %if.else124

if.then77:                                        ; preds = %if.else
  %call93 = call double @sqrt(double noundef %11) #7, !tbaa !5
  %add94 = fsub double %call93, %7
  %mul97 = fmul double %8, 2.000000e+00
  %div98 = fdiv double %add94, %mul97
  %arrayidx100 = getelementptr inbounds nuw double, ptr %vla3, i64 %indvars.iv
  store double %div98, ptr %arrayidx100, align 8, !tbaa !9
  %fneg103 = fneg double %7
  %sub117 = fsub double %fneg103, %call93
  %div121 = fdiv double %sub117, %mul97
  br label %for.inc

if.else124:                                       ; preds = %if.else
  %mul129 = fmul double %8, 2.000000e+00
  %div130 = fdiv double %7, %mul129
  %cmp131 = fcmp oeq double %div130, 0.000000e+00
  %.pre84 = fneg double %7
  %div148 = fdiv double %.pre84, %mul129
  %div148.sink = select i1 %cmp131, double %div130, double %div148
  %12 = getelementptr inbounds nuw double, ptr %vla5, i64 %indvars.iv
  store double %div148.sink, ptr %12, align 8, !tbaa !9
  %neg162 = fmul double %7, %.pre84
  %13 = call double @llvm.fmuladd.f64(double %mul19, double %9, double %neg162)
  %call163 = call double @sqrt(double noundef %13) #7, !tbaa !5
  %div167 = fdiv double %call163, %mul129
  %arrayidx169 = getelementptr inbounds nuw double, ptr %vla6, i64 %indvars.iv
  store double %div167, ptr %arrayidx169, align 8, !tbaa !9
  %fneg183 = fneg double %call163
  %div187 = fdiv double %fneg183, %mul129
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else124, %if.then77
  %vla4.sink = phi ptr [ %vla4, %if.then ], [ %vla7, %if.else124 ], [ %vla4, %if.then77 ]
  %div61.sink = phi double [ %div61, %if.then ], [ %div187, %if.else124 ], [ %div121, %if.then77 ]
  %arrayidx63 = getelementptr inbounds nuw double, ptr %vla4.sink, i64 %indvars.iv
  store double %div61.sink, ptr %arrayidx63, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !11

for.cond192:                                      ; preds = %for.cond, %for.inc244
  %14 = phi i32 [ %.pre83, %for.inc244 ], [ %5, %for.cond ]
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %for.inc244 ], [ 0, %for.cond ]
  %15 = sext i32 %14 to i64
  %cmp193 = icmp slt i64 %indvars.iv80, %15
  br i1 %cmp193, label %for.body194, label %for.end246

for.body194:                                      ; preds = %for.cond192
  %arrayidx196 = getelementptr inbounds nuw double, ptr %vla1, i64 %indvars.iv80
  %16 = load double, ptr %arrayidx196, align 8, !tbaa !9
  %arrayidx201 = getelementptr inbounds nuw double, ptr %vla, i64 %indvars.iv80
  %17 = load double, ptr %arrayidx201, align 8, !tbaa !9
  %mul202 = fmul double %17, 4.000000e+00
  %arrayidx204 = getelementptr inbounds nuw double, ptr %vla2, i64 %indvars.iv80
  %18 = load double, ptr %arrayidx204, align 8, !tbaa !9
  %19 = fneg double %18
  %neg206 = fmul double %mul202, %19
  %20 = call double @llvm.fmuladd.f64(double %16, double %16, double %neg206)
  %cmp207 = fcmp ogt double %20, 0.000000e+00
  br i1 %cmp207, label %if.then208, label %if.else214

if.then208:                                       ; preds = %for.body194
  %arrayidx210 = getelementptr inbounds nuw double, ptr %vla3, i64 %indvars.iv80
  %21 = load double, ptr %arrayidx210, align 8, !tbaa !9
  %arrayidx212 = getelementptr inbounds nuw double, ptr %vla4, i64 %indvars.iv80
  %22 = load double, ptr %arrayidx212, align 8, !tbaa !9
  %call213 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %21, double noundef %22)
  br label %for.inc244

if.else214:                                       ; preds = %for.body194
  %cmp227 = fcmp oeq double %20, 0.000000e+00
  br i1 %cmp227, label %if.then228, label %if.else232

if.then228:                                       ; preds = %if.else214
  %arrayidx230 = getelementptr inbounds nuw double, ptr %vla3, i64 %indvars.iv80
  %23 = load double, ptr %arrayidx230, align 8, !tbaa !9
  %call231 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %23)
  br label %for.inc244

if.else232:                                       ; preds = %if.else214
  %arrayidx234 = getelementptr inbounds nuw double, ptr %vla5, i64 %indvars.iv80
  %24 = load double, ptr %arrayidx234, align 8, !tbaa !9
  %arrayidx236 = getelementptr inbounds nuw double, ptr %vla6, i64 %indvars.iv80
  %25 = load double, ptr %arrayidx236, align 8, !tbaa !9
  %arrayidx240 = getelementptr inbounds nuw double, ptr %vla7, i64 %indvars.iv80
  %26 = load double, ptr %arrayidx240, align 8, !tbaa !9
  %call241 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %24, double noundef %25, double noundef %24, double noundef %26)
  br label %for.inc244

for.inc244:                                       ; preds = %if.then208, %if.else232, %if.then228
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %.pre83 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond192, !llvm.loop !14

for.end246:                                       ; preds = %for.cond192
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !12, !13}
