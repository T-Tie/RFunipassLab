; ModuleID = '<stdin>'
source_filename = "/tmp/tmpvwvsr6ec.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%lf%lf%lf\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"x1=%.5lf;x2=%.5lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"x1=x2=%.5lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"x1=%.5lf+%.5lfi;x2=%.5lf-%.5lfi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x double], align 16
  %b = alloca [100 x double], align 16
  %c = alloca [100 x double], align 16
  %x1 = alloca [100 x double], align 16
  %x2 = alloca [100 x double], align 16
  %s = alloca [100 x double], align 16
  %t = alloca [100 x double], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %c) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %x1) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %x2) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %s) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %t) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond127

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x double], ptr %a, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [100 x double], ptr %b, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [100 x double], ptr %c, i64 0, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4)
  %2 = load double, ptr %arrayidx2, align 8, !tbaa !9
  %3 = load double, ptr %arrayidx, align 8, !tbaa !9
  %mul12 = fmul double %3, 4.000000e+00
  %4 = load double, ptr %arrayidx4, align 8, !tbaa !9
  %5 = fneg double %4
  %neg = fmul double %mul12, %5
  %6 = call double @llvm.fmuladd.f64(double %2, double %2, double %neg)
  %cmp16 = fcmp ogt double %6, 0.000000e+00
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call30 = call double @sqrt(double noundef %6) #6, !tbaa !5
  %add = fsub double %call30, %2
  %mul = fmul double %3, 2.000000e+00
  %div = fdiv double %add, %mul
  %arrayidx34 = getelementptr inbounds nuw [100 x double], ptr %x1, i64 0, i64 %indvars.iv
  store double %div, ptr %arrayidx34, align 8, !tbaa !9
  %fneg37 = fneg double %2
  %sub = fsub double %fneg37, %call30
  %div54 = fdiv double %sub, %mul
  %arrayidx56 = getelementptr inbounds nuw [100 x double], ptr %x2, i64 0, i64 %indvars.iv
  store double %div54, ptr %arrayidx56, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %cmp69 = fcmp oeq double %6, 0.000000e+00
  br i1 %cmp69, label %if.then70, label %if.end82

if.then70:                                        ; preds = %if.end
  %fneg73 = fneg double %2
  %mul76 = fmul double %3, 2.000000e+00
  %div77 = fdiv double %fneg73, %mul76
  %arrayidx79 = getelementptr inbounds nuw [100 x double], ptr %x2, i64 0, i64 %indvars.iv
  store double %div77, ptr %arrayidx79, align 8, !tbaa !9
  %arrayidx81 = getelementptr inbounds nuw [100 x double], ptr %x1, i64 0, i64 %indvars.iv
  store double %div77, ptr %arrayidx81, align 8, !tbaa !9
  br label %if.end82

if.end82:                                         ; preds = %if.then70, %if.end
  %cmp95 = fcmp olt double %6, 0.000000e+00
  br i1 %cmp95, label %if.then96, label %for.inc

if.then96:                                        ; preds = %if.end82
  %fneg99 = fneg double %2
  %mul102 = fmul double %3, 2.000000e+00
  %div103 = fdiv double %fneg99, %mul102
  %arrayidx105 = getelementptr inbounds nuw [100 x double], ptr %s, i64 0, i64 %indvars.iv
  store double %div103, ptr %arrayidx105, align 8, !tbaa !9
  %fneg118 = fneg double %6
  %call119 = call double @sqrt(double noundef %fneg118) #6, !tbaa !5
  %div123 = fdiv double %call119, %mul102
  %arrayidx125 = getelementptr inbounds nuw [100 x double], ptr %t, i64 0, i64 %indvars.iv
  store double %div123, ptr %arrayidx125, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %if.end82, %if.then96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !11

for.cond127:                                      ; preds = %for.cond, %for.inc192
  %7 = phi i32 [ %.pre, %for.inc192 ], [ %0, %for.cond ]
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.inc192 ], [ 0, %for.cond ]
  %8 = sext i32 %7 to i64
  %cmp128 = icmp slt i64 %indvars.iv66, %8
  br i1 %cmp128, label %for.body129, label %for.end194

for.body129:                                      ; preds = %for.cond127
  %arrayidx131 = getelementptr inbounds nuw [100 x double], ptr %b, i64 0, i64 %indvars.iv66
  %9 = load double, ptr %arrayidx131, align 8, !tbaa !9
  %arrayidx136 = getelementptr inbounds nuw [100 x double], ptr %a, i64 0, i64 %indvars.iv66
  %10 = load double, ptr %arrayidx136, align 8, !tbaa !9
  %mul137 = fmul double %10, 4.000000e+00
  %arrayidx139 = getelementptr inbounds nuw [100 x double], ptr %c, i64 0, i64 %indvars.iv66
  %11 = load double, ptr %arrayidx139, align 8, !tbaa !9
  %12 = fneg double %11
  %neg141 = fmul double %mul137, %12
  %13 = call double @llvm.fmuladd.f64(double %9, double %9, double %neg141)
  %cmp142 = fcmp ogt double %13, 0.000000e+00
  br i1 %cmp142, label %if.then143, label %if.end149

if.then143:                                       ; preds = %for.body129
  %arrayidx145 = getelementptr inbounds nuw [100 x double], ptr %x1, i64 0, i64 %indvars.iv66
  %14 = load double, ptr %arrayidx145, align 8, !tbaa !9
  %arrayidx147 = getelementptr inbounds nuw [100 x double], ptr %x2, i64 0, i64 %indvars.iv66
  %15 = load double, ptr %arrayidx147, align 8, !tbaa !9
  %call148 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %14, double noundef %15)
  %.pre69 = load double, ptr %arrayidx131, align 8, !tbaa !9
  %.pre70 = load double, ptr %arrayidx136, align 8, !tbaa !9
  %.pre71 = load double, ptr %arrayidx139, align 8, !tbaa !9
  %.pre75 = fmul double %.pre70, 4.000000e+00
  %.pre76 = fneg double %.pre71
  %.pre77 = fmul double %.pre75, %.pre76
  %.pre78 = call double @llvm.fmuladd.f64(double %.pre69, double %.pre69, double %.pre77)
  br label %if.end149

if.end149:                                        ; preds = %if.then143, %for.body129
  %.pre-phi79 = phi double [ %.pre78, %if.then143 ], [ %13, %for.body129 ]
  %cmp162 = fcmp oeq double %.pre-phi79, 0.000000e+00
  br i1 %cmp162, label %if.then163, label %if.end167

if.then163:                                       ; preds = %if.end149
  %arrayidx165 = getelementptr inbounds nuw [100 x double], ptr %x1, i64 0, i64 %indvars.iv66
  %16 = load double, ptr %arrayidx165, align 8, !tbaa !9
  %call166 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %16)
  %.pre72 = load double, ptr %arrayidx131, align 8, !tbaa !9
  %.pre73 = load double, ptr %arrayidx136, align 8, !tbaa !9
  %.pre74 = load double, ptr %arrayidx139, align 8, !tbaa !9
  %.pre80 = fmul double %.pre73, 4.000000e+00
  %.pre81 = fneg double %.pre74
  %.pre83 = fmul double %.pre80, %.pre81
  %.pre84 = call double @llvm.fmuladd.f64(double %.pre72, double %.pre72, double %.pre83)
  br label %if.end167

if.end167:                                        ; preds = %if.then163, %if.end149
  %.pre-phi85 = phi double [ %.pre84, %if.then163 ], [ %.pre-phi79, %if.end149 ]
  %cmp180 = fcmp olt double %.pre-phi85, 0.000000e+00
  br i1 %cmp180, label %if.then181, label %for.inc192

if.then181:                                       ; preds = %if.end167
  %arrayidx183 = getelementptr inbounds nuw [100 x double], ptr %s, i64 0, i64 %indvars.iv66
  %17 = load double, ptr %arrayidx183, align 8, !tbaa !9
  %arrayidx185 = getelementptr inbounds nuw [100 x double], ptr %t, i64 0, i64 %indvars.iv66
  %18 = load double, ptr %arrayidx185, align 8, !tbaa !9
  %call190 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %17, double noundef %18, double noundef %17, double noundef %18)
  br label %for.inc192

for.inc192:                                       ; preds = %if.end167, %if.then181
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond127, !llvm.loop !14

for.end194:                                       ; preds = %for.cond127
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %t) #6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %s) #6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %x1) #6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
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
