; ModuleID = '<stdin>'
source_filename = "/tmp/tmpecf_twz5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%lf %lf %lf\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"x1=%.5lf;x2=%.5lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"x1=x2=%.5lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"x1=%.5lf+%.5lfi;x2=%.5lf-%.5lfi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %m = alloca [2 x [99 x double]], align 16
  %x = alloca [99 x double], align 16
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 1584, ptr noundef align 16 %m) #5
  call void @llvm.lifetime.start.p0(i64 noundef 792, ptr noundef align 16 %x) #5
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef align 8 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef align 8 %b) #5
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef align 8 %c) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %a, ptr noundef %b, ptr noundef %c)
  %2 = load double, ptr %b, align 8, !tbaa !9
  %3 = load double, ptr %a, align 8, !tbaa !9
  %mul2 = fmul double 4.000000e+00, %3
  %4 = load double, ptr %c, align 8, !tbaa !9
  %mul3 = fmul double %mul2, %4
  %neg = fneg double %mul3
  %5 = call double @llvm.fmuladd.f64(double %2, double %2, double %neg)
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [99 x double], ptr %x, i64 0, i64 %idxprom
  store double %5, ptr %arrayidx, align 8, !tbaa !9
  %cmp6 = fcmp ogt double %5, 0.000000e+00
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %fneg = fneg double %2
  %call9 = call double @sqrt(double noundef %5) #6, !tbaa !5
  %add = fadd double %fneg, %call9
  %mul = fmul double 2.000000e+00, %3
  %div = fdiv double %add, %mul
  %arrayidx12 = getelementptr inbounds [99 x double], ptr %m, i64 0, i64 %idxprom
  store double %div, ptr %arrayidx12, align 8, !tbaa !9
  %call16 = call double @sqrt(double noundef %5) #6, !tbaa !5
  %sub = fsub double %fneg, %call16
  %div18 = fdiv double %sub, %mul
  %arrayidx19 = getelementptr inbounds [2 x [99 x double]], ptr %m, i64 0, i64 1
  %arrayidx21 = getelementptr inbounds [99 x double], ptr %arrayidx19, i64 0, i64 %idxprom
  store double %div18, ptr %arrayidx21, align 8, !tbaa !9
  br label %if.end48

if.else:                                          ; preds = %for.body
  %cmp24 = fcmp oeq double %5, 0.000000e+00
  br i1 %cmp24, label %if.then25, label %if.else32

if.then25:                                        ; preds = %if.else
  %fneg26 = fneg double %2
  %mul27 = fmul double 2.000000e+00, %3
  %div28 = fdiv double %fneg26, %mul27
  %arrayidx31 = getelementptr inbounds [99 x double], ptr %m, i64 0, i64 %idxprom
  store double %div28, ptr %arrayidx31, align 8, !tbaa !9
  br label %if.end

if.else32:                                        ; preds = %if.else
  %fneg33 = fneg double %2
  %mul34 = fmul double 2.000000e+00, %3
  %div35 = fdiv double %fneg33, %mul34
  %arrayidx38 = getelementptr inbounds [99 x double], ptr %m, i64 0, i64 %idxprom
  store double %div35, ptr %arrayidx38, align 8, !tbaa !9
  %fneg41 = fneg double %5
  %call42 = call double @sqrt(double noundef %fneg41) #6, !tbaa !5
  %div44 = fdiv double %call42, %mul34
  %arrayidx45 = getelementptr inbounds [2 x [99 x double]], ptr %m, i64 0, i64 1
  %arrayidx47 = getelementptr inbounds [99 x double], ptr %arrayidx45, i64 0, i64 %idxprom
  store double %div44, ptr %arrayidx47, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.else32, %if.then25
  br label %if.end48

if.end48:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end48
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc110, %for.end
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %cmp50 = icmp slt i32 %6, %7
  br i1 %cmp50, label %for.body51, label %for.end112

for.body51:                                       ; preds = %for.cond49
  %idxprom52 = sext i32 %6 to i64
  %arrayidx53 = getelementptr inbounds [99 x double], ptr %x, i64 0, i64 %idxprom52
  %8 = load double, ptr %arrayidx53, align 8, !tbaa !9
  %cmp54 = fcmp ogt double %8, 0.000000e+00
  br i1 %cmp54, label %if.then55, label %if.else63

if.then55:                                        ; preds = %for.body51
  %arrayidx58 = getelementptr inbounds [99 x double], ptr %m, i64 0, i64 %idxprom52
  %9 = load double, ptr %arrayidx58, align 8, !tbaa !9
  %arrayidx59 = getelementptr inbounds [2 x [99 x double]], ptr %m, i64 0, i64 1
  %arrayidx61 = getelementptr inbounds [99 x double], ptr %arrayidx59, i64 0, i64 %idxprom52
  %10 = load double, ptr %arrayidx61, align 8, !tbaa !9
  %call62 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %9, double noundef %10)
  br label %if.end109

if.else63:                                        ; preds = %for.body51
  %cmp66 = fcmp oeq double %8, 0.000000e+00
  br i1 %cmp66, label %if.then67, label %if.else72

if.then67:                                        ; preds = %if.else63
  %arrayidx70 = getelementptr inbounds [99 x double], ptr %m, i64 0, i64 %idxprom52
  %11 = load double, ptr %arrayidx70, align 8, !tbaa !9
  %call71 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %11)
  br label %if.end108

if.else72:                                        ; preds = %if.else63
  %arrayidx75 = getelementptr inbounds [99 x double], ptr %m, i64 0, i64 %idxprom52
  %12 = load double, ptr %arrayidx75, align 8, !tbaa !9
  %cmp76 = fcmp oeq double %12, 0.000000e+00
  br i1 %cmp76, label %if.then77, label %if.else93

if.then77:                                        ; preds = %if.else72
  %fneg81 = fneg double %12
  %arrayidx82 = getelementptr inbounds [2 x [99 x double]], ptr %m, i64 0, i64 1
  %arrayidx84 = getelementptr inbounds [99 x double], ptr %arrayidx82, i64 0, i64 %idxprom52
  %13 = load double, ptr %arrayidx84, align 8, !tbaa !9
  %call92 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %fneg81, double noundef %13, double noundef %fneg81, double noundef %13)
  br label %if.end107

if.else93:                                        ; preds = %if.else72
  %arrayidx97 = getelementptr inbounds [2 x [99 x double]], ptr %m, i64 0, i64 1
  %arrayidx99 = getelementptr inbounds [99 x double], ptr %arrayidx97, i64 0, i64 %idxprom52
  %14 = load double, ptr %arrayidx99, align 8, !tbaa !9
  %call106 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %12, double noundef %14, double noundef %12, double noundef %14)
  br label %if.end107

if.end107:                                        ; preds = %if.else93, %if.then77
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.then67
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.then55
  br label %for.inc110

for.inc110:                                       ; preds = %if.end109
  %inc111 = add nsw i32 %6, 1
  store i32 %inc111, ptr %i, align 4, !tbaa !5
  br label %for.cond49, !llvm.loop !14

for.end112:                                       ; preds = %for.cond49
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #6
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef %c) #6
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 792, ptr noundef %x) #6
  call void @llvm.lifetime.end.p0(i64 noundef 1584, ptr noundef %m) #6
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
attributes #5 = { nofree nounwind }
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
!14 = distinct !{!14, !12, !13}
