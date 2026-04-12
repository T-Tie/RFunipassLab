; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjfu5np1d.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"x1=%.5lf;x2=%.5lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"x1=x2=%.5lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"x1=0.00000+%.5lfi;x2=0.00000-%.5lfi\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"x1=%.5lf+%.5lfi;x2=%.5lf-%.5lfi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x double], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %a) #5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %mul = mul nsw i32 %0, 3
  %1 = sext i32 %mul to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x double], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond, %for.inc76
  %2 = phi i32 [ %.pre, %for.inc76 ], [ %0, %for.cond ]
  %indvars.iv32 = phi i64 [ %5, %for.inc76 ], [ 0, %for.cond ]
  %mul3 = mul nsw i32 %2, 3
  %3 = sext i32 %mul3 to i64
  %cmp4 = icmp slt i64 %indvars.iv32, %3
  br i1 %cmp4, label %for.body5, label %for.end78

for.body5:                                        ; preds = %for.cond2
  %4 = trunc nuw nsw i64 %indvars.iv32 to i32
  %rem = urem i32 %4, 3
  %cmp6 = icmp eq i32 %rem, 0
  %5 = add nuw nsw i64 %indvars.iv32, 1
  br i1 %cmp6, label %if.then, label %for.inc76

if.then:                                          ; preds = %for.body5
  %arrayidx8 = getelementptr inbounds nuw [100 x double], ptr %a, i64 0, i64 %5
  %6 = load double, ptr %arrayidx8, align 8, !tbaa !12
  %arrayidx14 = getelementptr inbounds nuw [100 x double], ptr %a, i64 0, i64 %indvars.iv32
  %7 = load double, ptr %arrayidx14, align 8, !tbaa !12
  %mul15 = fmul double %7, 4.000000e+00
  %8 = add nuw nsw i64 %indvars.iv32, 2
  %arrayidx18 = getelementptr inbounds nuw [100 x double], ptr %a, i64 0, i64 %8
  %9 = load double, ptr %arrayidx18, align 8, !tbaa !12
  %10 = fneg double %9
  %neg = fmul double %mul15, %10
  %11 = call double @llvm.fmuladd.f64(double %6, double %6, double %neg)
  %cmp20 = fcmp ogt double %11, 0.000000e+00
  br i1 %cmp20, label %if.then21, label %if.end

if.then21:                                        ; preds = %if.then
  %fneg = fneg double %6
  %call25 = call double @sqrt(double noundef %11) #5, !tbaa !5
  %add26 = fsub double %call25, %6
  %mul29 = fmul double %7, 2.000000e+00
  %div = fdiv double %add26, %mul29
  %call34 = call double @sqrt(double noundef %11) #5, !tbaa !5
  %sub = fsub double %fneg, %call34
  %div38 = fdiv double %sub, %mul29
  %call39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %div, double noundef %div38)
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.then
  %cmp40 = fcmp oeq double %11, 0.000000e+00
  br i1 %cmp40, label %if.then41, label %if.end51

if.then41:                                        ; preds = %if.end
  %12 = load double, ptr %arrayidx8, align 8, !tbaa !12
  %fneg45 = fneg double %12
  %13 = load double, ptr %arrayidx14, align 8, !tbaa !12
  %mul48 = fmul double %13, 2.000000e+00
  %div49 = fdiv double %fneg45, %mul48
  %call50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %div49)
  br label %if.end51

if.end51:                                         ; preds = %if.then41, %if.end
  %cmp52 = fcmp olt double %11, 0.000000e+00
  br i1 %cmp52, label %if.then53, label %for.inc76

if.then53:                                        ; preds = %if.end51
  %14 = load double, ptr %arrayidx8, align 8, !tbaa !12
  %fneg57 = fneg double %14
  %15 = load double, ptr %arrayidx14, align 8, !tbaa !12
  %mul60 = fmul double %15, 2.000000e+00
  %div61 = fdiv double %fneg57, %mul60
  %fneg62 = fneg double %11
  %call63 = call double @sqrt(double noundef %fneg62) #5, !tbaa !5
  %div67 = fdiv double %call63, %mul60
  %cmp68 = fcmp oeq double %div61, 0.000000e+00
  br i1 %cmp68, label %if.then69, label %if.else

if.then69:                                        ; preds = %if.then53
  %call70 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %div67, double noundef %div67)
  br label %for.inc76

if.else:                                          ; preds = %if.then53
  %call71 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %div61, double noundef %div67, double noundef %div61, double noundef %div67)
  br label %for.inc76

for.inc76:                                        ; preds = %for.body5, %if.then69, %if.else, %if.end51
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !14

for.end78:                                        ; preds = %for.cond2
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind
declare double @sqrt(double noundef) #4

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !7, i64 0}
!14 = distinct !{!14, !10, !11}
