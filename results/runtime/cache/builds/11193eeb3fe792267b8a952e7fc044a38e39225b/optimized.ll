; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1gjvpbmv.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%lf %lf %lf\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"x1=x2=%.5lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"x1=%.5lf;x2=%.5lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"x1=%.5lf+%.5lfi;x2=%.5lf-%.5lfi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %x1 = alloca [99 x double], align 16
  %x2 = alloca [99 x double], align 16
  %a = alloca [99 x double], align 16
  %b = alloca [99 x double], align 16
  %c = alloca [99 x double], align 16
  %disc = alloca [99 x double], align 16
  %realpart = alloca [99 x double], align 16
  %imagpart = alloca [99 x double], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 792, ptr noundef %x1) #7
  call void @llvm.lifetime.start.p0(i64 noundef 792, ptr noundef %x2) #7
  call void @llvm.lifetime.start.p0(i64 noundef 792, ptr noundef %a) #7
  call void @llvm.lifetime.start.p0(i64 noundef 792, ptr noundef %b) #7
  call void @llvm.lifetime.start.p0(i64 noundef 792, ptr noundef %c) #7
  call void @llvm.lifetime.start.p0(i64 noundef 792, ptr noundef %disc) #7
  call void @llvm.lifetime.start.p0(i64 noundef 792, ptr noundef %realpart) #7
  call void @llvm.lifetime.start.p0(i64 noundef 792, ptr noundef %imagpart) #7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [99 x double], ptr %a, i64 0, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [99 x double], ptr %b, i64 0, i64 %idxprom
  %arrayidx4 = getelementptr inbounds [99 x double], ptr %c, i64 0, i64 %idxprom
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %arrayidx4)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc106, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc107, %for.inc106 ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %i.1, %1
  br i1 %cmp7, label %for.body8, label %for.end108

for.body8:                                        ; preds = %for.cond6
  %idxprom9 = sext i32 %i.1 to i64
  %arrayidx10 = getelementptr inbounds [99 x double], ptr %b, i64 0, i64 %idxprom9
  %2 = load double, ptr %arrayidx10, align 8, !tbaa !12, !invariant.load !14
  %arrayidx14 = getelementptr inbounds [99 x double], ptr %a, i64 0, i64 %idxprom9
  %3 = load double, ptr %arrayidx14, align 8, !tbaa !12, !invariant.load !14
  %mul15 = fmul double 4.000000e+00, %3
  %arrayidx17 = getelementptr inbounds [99 x double], ptr %c, i64 0, i64 %idxprom9
  %4 = load double, ptr %arrayidx17, align 8, !tbaa !12, !invariant.load !14
  %mul18 = fmul double %mul15, %4
  %neg = fneg double %mul18
  %5 = call double @llvm.fmuladd.f64(double %2, double %2, double %neg)
  %arrayidx20 = getelementptr inbounds [99 x double], ptr %disc, i64 0, i64 %idxprom9
  store double %5, ptr %arrayidx20, align 8, !tbaa !12
  %6 = load double, ptr %arrayidx20, align 8, !tbaa !12, !invariant.load !14
  %cmp23 = fcmp oeq double %6, 0.000000e+00
  br i1 %cmp23, label %if.then, label %if.else

if.then:                                          ; preds = %for.body8
  %fneg = fneg double %2
  %mul = fmul double 2.000000e+00, %3
  %div = fdiv double %fneg, %mul
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %div) #7
  br label %for.inc106

if.else:                                          ; preds = %for.body8
  %cmp31 = fcmp ogt double %6, 0.000000e+00
  br i1 %cmp31, label %if.then32, label %if.else62

if.then32:                                        ; preds = %if.else
  %fneg35 = fneg double %2
  %call38 = call double @sqrt(double noundef %6) #8, !tbaa !5
  %add = fadd double %fneg35, %call38
  %mul41 = fmul double 2.000000e+00, %3
  %div42 = fdiv double %add, %mul41
  %arrayidx44 = getelementptr inbounds [99 x double], ptr %x1, i64 0, i64 %idxprom9
  store double %div42, ptr %arrayidx44, align 8, !tbaa !12
  %call50 = call double @sqrt(double noundef %6) #8, !tbaa !5
  %sub = fsub double %fneg35, %call50
  %div54 = fdiv double %sub, %mul41
  %arrayidx56 = getelementptr inbounds [99 x double], ptr %x2, i64 0, i64 %idxprom9
  store double %div54, ptr %arrayidx56, align 8, !tbaa !12
  %7 = load double, ptr %arrayidx44, align 8, !tbaa !12, !invariant.load !14
  %8 = load double, ptr %arrayidx56, align 8, !tbaa !12, !invariant.load !14
  %call61 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %7, double noundef %8) #7
  br label %for.inc106

if.else62:                                        ; preds = %if.else
  %fneg65 = fneg double %2
  %mul68 = fmul double 2.000000e+00, %3
  %div69 = fdiv double %fneg65, %mul68
  %arrayidx71 = getelementptr inbounds [99 x double], ptr %realpart, i64 0, i64 %idxprom9
  store double %div69, ptr %arrayidx71, align 8, !tbaa !12
  %fneg74 = fneg double %6
  %call75 = call double @sqrt(double noundef %fneg74) #8, !tbaa !5
  %div79 = fdiv double %call75, %mul68
  %arrayidx81 = getelementptr inbounds [99 x double], ptr %imagpart, i64 0, i64 %idxprom9
  store double %div79, ptr %arrayidx81, align 8, !tbaa !12
  %cmp84 = fcmp oeq double %2, 0.000000e+00
  br i1 %cmp84, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else62
  %9 = load double, ptr %arrayidx71, align 8, !tbaa !12, !invariant.load !14
  %fneg87 = fneg double %9
  %10 = load double, ptr %arrayidx81, align 8, !tbaa !12, !invariant.load !14
  %call95 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %fneg87, double noundef %10, double noundef %fneg87, double noundef %10) #7
  br label %for.inc106

cond.false:                                       ; preds = %if.else62
  %11 = load double, ptr %arrayidx71, align 8, !tbaa !12, !invariant.load !14
  %12 = load double, ptr %arrayidx81, align 8, !tbaa !12, !invariant.load !14
  %call104 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %11, double noundef %12, double noundef %11, double noundef %12) #7
  br label %for.inc106

for.inc106:                                       ; preds = %if.then, %cond.true, %cond.false, %if.then32
  %inc107 = add nsw i32 %i.1, 1
  br label %for.cond6, !llvm.loop !15

for.end108:                                       ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 noundef 792, ptr noundef %imagpart) #7
  call void @llvm.lifetime.end.p0(i64 noundef 792, ptr noundef %realpart) #7
  call void @llvm.lifetime.end.p0(i64 noundef 792, ptr noundef %disc) #7
  call void @llvm.lifetime.end.p0(i64 noundef 792, ptr noundef %c) #7
  call void @llvm.lifetime.end.p0(i64 noundef 792, ptr noundef %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 792, ptr noundef %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 792, ptr noundef %x2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 792, ptr noundef %x1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !7, i64 0}
!14 = !{}
!15 = distinct !{!15, !10, !11}
