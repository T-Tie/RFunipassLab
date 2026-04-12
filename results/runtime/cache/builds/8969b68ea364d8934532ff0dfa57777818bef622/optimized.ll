; ModuleID = '<stdin>'
source_filename = "/tmp/tmpkgw6rosy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

$_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_ = comdat any

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%lf %lf %lf\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"x1=%.5lf;x2=%.5lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"x1=x2=%.5lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"x1=%.5lf+%.5lfi;x2=%.5lf-%.5lfi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %num = alloca [100 x [100 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #8
  call void @llvm.lifetime.start.p0(i64 noundef 80000, ptr noundef align 16 %num) #8
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %num, i8 noundef 0, i64 noundef 80000, i1 noundef false) #9
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  %call1 = call noundef double @_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_(i32 noundef -1) #10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %0, 1
  %cmp = icmp sle i32 %k.0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %k.0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x double]], ptr %num, i64 0, i64 %idxprom
  %arrayidx5 = getelementptr inbounds [100 x double], ptr %arrayidx, i64 0, i64 1
  %arrayidx8 = getelementptr inbounds [100 x double], ptr %arrayidx, i64 0, i64 2
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx, ptr noundef %arrayidx5, ptr noundef %arrayidx8)
  %1 = load double, ptr %arrayidx, align 16, !tbaa !9, !invariant.load !11
  %2 = load double, ptr %arrayidx5, align 8, !tbaa !9, !invariant.load !11
  %3 = load double, ptr %arrayidx8, align 16, !tbaa !9, !invariant.load !11
  %mul19 = fmul double %1, 4.000000e+00
  %mul20 = fmul double %mul19, %3
  %neg = fneg double %mul20
  %4 = call double @llvm.fmuladd.f64(double %2, double %2, double %neg)
  %cmp21 = fcmp oge double %4, 0.000000e+00
  br i1 %cmp21, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %fneg = fneg double %2
  %call25 = call double @sqrt(double noundef %4) #10, !tbaa !5
  %add = fadd double %fneg, %call25
  %mul = fmul double %1, 2.000000e+00
  %div = fdiv double %add, %mul
  %arrayidx28 = getelementptr inbounds [100 x double], ptr %arrayidx, i64 0, i64 3
  store double %div, ptr %arrayidx28, align 8, !tbaa !9
  %call34 = call double @sqrt(double noundef %4) #10, !tbaa !5
  %sub35 = fsub double %fneg, %call34
  %div37 = fdiv double %sub35, %mul
  %arrayidx40 = getelementptr inbounds [100 x double], ptr %arrayidx, i64 0, i64 4
  store double %div37, ptr %arrayidx40, align 16, !tbaa !9
  br label %for.inc

if.else:                                          ; preds = %for.body
  %cmp41 = fcmp oeq double %2, 0.000000e+00
  br i1 %cmp41, label %if.end, label %if.else46

if.else46:                                        ; preds = %if.else
  %fneg47 = fneg double %2
  %mul48 = fmul double %1, 2.000000e+00
  %div49 = fdiv double %fneg47, %mul48
  br label %if.end

if.end:                                           ; preds = %if.else, %if.else46
  %div49.sink = phi double [ %div49, %if.else46 ], [ 0.000000e+00, %if.else ]
  %arrayidx52 = getelementptr inbounds [100 x double], ptr %arrayidx, i64 0, i64 3
  store double %div49.sink, ptr %arrayidx52, align 8, !tbaa !9
  %mul55 = fmul double %2, %2
  %neg56 = fneg double %mul55
  %5 = call double @llvm.fmuladd.f64(double %mul19, double %3, double %neg56)
  %call57 = call double @sqrt(double noundef %5) #10, !tbaa !5
  %mul58 = fmul double %1, 2.000000e+00
  %div59 = fdiv double %call57, %mul58
  %arrayidx62 = getelementptr inbounds [100 x double], ptr %arrayidx, i64 0, i64 4
  store double %div59, ptr %arrayidx62, align 16, !tbaa !9
  %call67 = call double @sqrt(double noundef %5) #10, !tbaa !5
  %div69 = fdiv double %call67, %mul58
  %arrayidx72 = getelementptr inbounds [100 x double], ptr %arrayidx, i64 0, i64 5
  store double %div69, ptr %arrayidx72, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.end
  %inc = add nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc132, %for.end
  %j.0 = phi i32 [ 0, %for.end ], [ %inc133, %for.inc132 ]
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %sub75 = sub nsw i32 %6, 1
  %cmp76 = icmp sle i32 %j.0, %sub75
  br i1 %cmp76, label %for.body77, label %for.end134

for.body77:                                       ; preds = %for.cond74
  %idxprom78 = sext i32 %j.0 to i64
  %arrayidx79 = getelementptr inbounds [100 x [100 x double]], ptr %num, i64 0, i64 %idxprom78
  %arrayidx80 = getelementptr inbounds [100 x double], ptr %arrayidx79, i64 0, i64 1
  %7 = load double, ptr %arrayidx80, align 8, !tbaa !9, !invariant.load !11
  %8 = load double, ptr %arrayidx79, align 16, !tbaa !9, !invariant.load !11
  %mul88 = fmul double %8, 4.000000e+00
  %arrayidx91 = getelementptr inbounds [100 x double], ptr %arrayidx79, i64 0, i64 2
  %9 = load double, ptr %arrayidx91, align 16, !tbaa !9, !invariant.load !11
  %mul92 = fmul double %mul88, %9
  %neg93 = fneg double %mul92
  %10 = call double @llvm.fmuladd.f64(double %7, double %7, double %neg93)
  %cmp94 = fcmp oge double %10, 0.000000e+00
  %11 = getelementptr inbounds [100 x double], ptr %arrayidx79, i64 0, i64 3
  %12 = load double, ptr %11, align 8, !tbaa !9, !invariant.load !11
  %13 = getelementptr inbounds [100 x double], ptr %arrayidx79, i64 0, i64 4
  %14 = load double, ptr %13, align 16, !tbaa !9, !invariant.load !11
  br i1 %cmp94, label %if.then95, label %if.else117

if.then95:                                        ; preds = %for.body77
  %cmp102 = fcmp une double %12, %14
  br i1 %cmp102, label %if.then103, label %if.else111

if.then103:                                       ; preds = %if.then95
  %call110 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %12, double noundef %14)
  br label %for.inc132

if.else111:                                       ; preds = %if.then95
  %call115 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %12)
  br label %for.inc132

if.else117:                                       ; preds = %for.body77
  %arrayidx129 = getelementptr inbounds [100 x double], ptr %arrayidx79, i64 0, i64 5
  %15 = load double, ptr %arrayidx129, align 8, !tbaa !9, !invariant.load !11
  %call130 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %12, double noundef %14, double noundef %12, double noundef %15)
  br label %for.inc132

for.inc132:                                       ; preds = %if.else117, %if.else111, %if.then103
  %inc133 = add nsw i32 %j.0, 1
  br label %for.cond74, !llvm.loop !15

for.end134:                                       ; preds = %for.cond74
  %call135 = call i32 @getchar()
  %call136 = call i32 @getchar()
  call void @llvm.lifetime.end.p0(i64 noundef 80000, ptr noundef %num) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef double @_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_(i32 noundef %__x) local_unnamed_addr #4 comdat {
entry:
  %conv = sitofp i32 %__x to double
  %call = call double @sqrt(double noundef %conv) #10, !tbaa !5
  ret double %call
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nounwind
declare double @sqrt(double noundef) local_unnamed_addr #6

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare i32 @getchar() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind willreturn }
attributes #9 = { nofree willreturn }
attributes #10 = { nounwind }

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
!11 = !{}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
