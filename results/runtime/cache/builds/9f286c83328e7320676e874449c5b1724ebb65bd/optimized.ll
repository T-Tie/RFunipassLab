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
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 1584, ptr noundef nonnull align 16 %m) #6
  call void @llvm.lifetime.start.p0(i64 noundef 792, ptr noundef nonnull align 16 %x) #6
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %b) #6
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %c) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %m, i64 792
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond49

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c)
  %2 = load double, ptr %b, align 8, !tbaa !9
  %3 = load double, ptr %a, align 8, !tbaa !9
  %mul2 = fmul double %3, 4.000000e+00
  %4 = load double, ptr %c, align 8, !tbaa !9
  %5 = fneg double %4
  %neg = fmul double %mul2, %5
  %6 = call double @llvm.fmuladd.f64(double %2, double %2, double %neg)
  %arrayidx = getelementptr inbounds nuw [99 x double], ptr %x, i64 0, i64 %indvars.iv
  store double %6, ptr %arrayidx, align 8, !tbaa !9
  %cmp6 = fcmp ogt double %6, 0.000000e+00
  %fneg26 = fneg double %2
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %call9 = call double @sqrt(double noundef %6) #7, !tbaa !5
  %add = fsub double %call9, %2
  %mul = fmul double %3, 2.000000e+00
  %div = fdiv double %add, %mul
  %arrayidx12 = getelementptr inbounds nuw [99 x double], ptr %m, i64 0, i64 %indvars.iv
  store double %div, ptr %arrayidx12, align 8, !tbaa !9
  %sub = fsub double %fneg26, %call9
  %div18 = fdiv double %sub, %mul
  br label %for.inc.sink.split

if.else:                                          ; preds = %for.body
  %cmp24 = fcmp oeq double %6, 0.000000e+00
  %mul27 = fmul double %3, 2.000000e+00
  %div28 = fdiv double %fneg26, %mul27
  %7 = getelementptr inbounds nuw [99 x double], ptr %m, i64 0, i64 %indvars.iv
  store double %div28, ptr %7, align 8, !tbaa !9
  br i1 %cmp24, label %for.inc, label %if.else32

if.else32:                                        ; preds = %if.else
  %fneg41 = fneg double %6
  %call42 = call double @sqrt(double noundef %fneg41) #7, !tbaa !5
  %div44 = fdiv double %call42, %mul27
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else32, %if.then
  %div18.sink = phi double [ %div18, %if.then ], [ %div44, %if.else32 ]
  %arrayidx21 = getelementptr inbounds nuw [99 x double], ptr %arrayidx45, i64 0, i64 %indvars.iv
  store double %div18.sink, ptr %arrayidx21, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !11

for.cond49:                                       ; preds = %for.cond, %for.inc110
  %8 = phi i32 [ %.pre, %for.inc110 ], [ %0, %for.cond ]
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.inc110 ], [ 0, %for.cond ]
  %9 = sext i32 %8 to i64
  %cmp50 = icmp slt i64 %indvars.iv5, %9
  br i1 %cmp50, label %for.body51, label %for.end112

for.body51:                                       ; preds = %for.cond49
  %arrayidx53 = getelementptr inbounds nuw [99 x double], ptr %x, i64 0, i64 %indvars.iv5
  %10 = load double, ptr %arrayidx53, align 8, !tbaa !9
  %cmp54 = fcmp ogt double %10, 0.000000e+00
  %11 = getelementptr inbounds nuw [99 x double], ptr %m, i64 0, i64 %indvars.iv5
  %12 = load double, ptr %11, align 8, !tbaa !9
  br i1 %cmp54, label %if.then55, label %if.else63

if.then55:                                        ; preds = %for.body51
  %arrayidx61 = getelementptr inbounds nuw [99 x double], ptr %arrayidx45, i64 0, i64 %indvars.iv5
  %13 = load double, ptr %arrayidx61, align 8, !tbaa !9
  %call62 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %12, double noundef %13) #8
  br label %for.inc110

if.else63:                                        ; preds = %for.body51
  %cmp66 = fcmp oeq double %10, 0.000000e+00
  br i1 %cmp66, label %if.then67, label %if.else72

if.then67:                                        ; preds = %if.else63
  %call71 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %12) #8
  br label %for.inc110

if.else72:                                        ; preds = %if.else63
  %cmp76 = fcmp oeq double %12, 0.000000e+00
  %14 = getelementptr inbounds nuw [99 x double], ptr %arrayidx45, i64 0, i64 %indvars.iv5
  %15 = load double, ptr %14, align 8, !tbaa !9
  br i1 %cmp76, label %if.then77, label %if.else93

if.then77:                                        ; preds = %if.else72
  %fneg81 = fneg double %12
  %call92 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %fneg81, double noundef %15, double noundef %fneg81, double noundef %15) #8
  br label %for.inc110

if.else93:                                        ; preds = %if.else72
  %call106 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %12, double noundef %15, double noundef %12, double noundef %15) #8
  br label %for.inc110

for.inc110:                                       ; preds = %if.then55, %if.then77, %if.else93, %if.then67
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond49, !llvm.loop !14

for.end112:                                       ; preds = %for.cond49
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %c) #8
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %b) #8
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %a) #8
  call void @llvm.lifetime.end.p0(i64 noundef 792, ptr noundef nonnull %x) #8
  call void @llvm.lifetime.end.p0(i64 noundef 1584, ptr noundef nonnull %m) #8
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
attributes #7 = { nounwind memory(write) }
attributes #8 = { nounwind }

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
