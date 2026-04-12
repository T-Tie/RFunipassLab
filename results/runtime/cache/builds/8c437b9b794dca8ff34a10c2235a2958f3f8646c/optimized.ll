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
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %x1 = alloca [99 x double], align 16
  %x2 = alloca [99 x double], align 16
  %a = alloca [99 x double], align 16
  %b = alloca [99 x double], align 16
  %c = alloca [99 x double], align 16
  %disc = alloca [99 x double], align 16
  %realpart = alloca [99 x double], align 16
  %imagpart = alloca [99 x double], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 792, ptr noundef %x1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 792, ptr noundef %x2) #6
  call void @llvm.lifetime.start.p0(i64 noundef 792, ptr noundef %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 792, ptr noundef %b) #6
  call void @llvm.lifetime.start.p0(i64 noundef 792, ptr noundef %c) #6
  call void @llvm.lifetime.start.p0(i64 noundef 792, ptr noundef %disc) #6
  call void @llvm.lifetime.start.p0(i64 noundef 792, ptr noundef %realpart) #6
  call void @llvm.lifetime.start.p0(i64 noundef 792, ptr noundef %imagpart) #6
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [99 x double], ptr %a, i64 0, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [99 x double], ptr %b, i64 0, i64 %idxprom
  %arrayidx4 = getelementptr inbounds [99 x double], ptr %c, i64 0, i64 %idxprom
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %arrayidx4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc106, %for.end
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %2, %3
  br i1 %cmp7, label %for.body8, label %for.end108

for.body8:                                        ; preds = %for.cond6
  %idxprom9 = sext i32 %2 to i64
  %arrayidx10 = getelementptr inbounds [99 x double], ptr %b, i64 0, i64 %idxprom9
  %4 = load double, ptr %arrayidx10, align 8, !tbaa !12
  %arrayidx14 = getelementptr inbounds [99 x double], ptr %a, i64 0, i64 %idxprom9
  %5 = load double, ptr %arrayidx14, align 8, !tbaa !12
  %mul15 = fmul double 4.000000e+00, %5
  %arrayidx17 = getelementptr inbounds [99 x double], ptr %c, i64 0, i64 %idxprom9
  %6 = load double, ptr %arrayidx17, align 8, !tbaa !12
  %mul18 = fmul double %mul15, %6
  %neg = fneg double %mul18
  %7 = call double @llvm.fmuladd.f64(double %4, double %4, double %neg)
  %arrayidx20 = getelementptr inbounds [99 x double], ptr %disc, i64 0, i64 %idxprom9
  %cmp23 = fcmp oeq double %7, 0.000000e+00
  br i1 %cmp23, label %if.then, label %if.else

if.then:                                          ; preds = %for.body8
  %fneg = fneg double %4
  %mul = fmul double 2.000000e+00, %5
  %div = fdiv double %fneg, %mul
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %div)
  br label %if.end105

if.else:                                          ; preds = %for.body8
  %cmp31 = fcmp ogt double %7, 0.000000e+00
  br i1 %cmp31, label %if.then32, label %if.else62

if.then32:                                        ; preds = %if.else
  %fneg35 = fneg double %4
  %call38 = call double @sqrt(double noundef %7) #6, !tbaa !5
  %add = fadd double %fneg35, %call38
  %mul41 = fmul double 2.000000e+00, %5
  %div42 = fdiv double %add, %mul41
  %arrayidx44 = getelementptr inbounds [99 x double], ptr %x1, i64 0, i64 %idxprom9
  %call50 = call double @sqrt(double noundef %7) #6, !tbaa !5
  %sub = fsub double %fneg35, %call50
  %div54 = fdiv double %sub, %mul41
  %arrayidx56 = getelementptr inbounds [99 x double], ptr %x2, i64 0, i64 %idxprom9
  %call61 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %div42, double noundef %div54)
  br label %if.end

if.else62:                                        ; preds = %if.else
  %fneg65 = fneg double %4
  %mul68 = fmul double 2.000000e+00, %5
  %div69 = fdiv double %fneg65, %mul68
  %arrayidx71 = getelementptr inbounds [99 x double], ptr %realpart, i64 0, i64 %idxprom9
  %fneg74 = fneg double %7
  %call75 = call double @sqrt(double noundef %fneg74) #6, !tbaa !5
  %div79 = fdiv double %call75, %mul68
  %arrayidx81 = getelementptr inbounds [99 x double], ptr %imagpart, i64 0, i64 %idxprom9
  %cmp84 = fcmp oeq double %4, 0.000000e+00
  br i1 %cmp84, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else62
  %fneg87 = fneg double %div69
  %call95 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %fneg87, double noundef %div79, double noundef %fneg87, double noundef %div79)
  br label %cond.end

cond.false:                                       ; preds = %if.else62
  %call104 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %div69, double noundef %div79, double noundef %div69, double noundef %div79)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then32
  br label %if.end105

if.end105:                                        ; preds = %if.end, %if.then
  br label %for.inc106

for.inc106:                                       ; preds = %if.end105
  %inc107 = add nsw i32 %2, 1
  store i32 %inc107, ptr %i, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !14

for.end108:                                       ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 noundef 792, ptr noundef %imagpart) #6
  call void @llvm.lifetime.end.p0(i64 noundef 792, ptr noundef %realpart) #6
  call void @llvm.lifetime.end.p0(i64 noundef 792, ptr noundef %disc) #6
  call void @llvm.lifetime.end.p0(i64 noundef 792, ptr noundef %c) #6
  call void @llvm.lifetime.end.p0(i64 noundef 792, ptr noundef %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 792, ptr noundef %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 792, ptr noundef %x2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 792, ptr noundef %x1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare double @sqrt(double noundef) local_unnamed_addr #4

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !7, i64 0}
!14 = distinct !{!14, !10, !11}
