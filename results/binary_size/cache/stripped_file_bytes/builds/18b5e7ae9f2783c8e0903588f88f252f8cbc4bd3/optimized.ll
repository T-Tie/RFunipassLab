; ModuleID = '<stdin>'
source_filename = "/tmp/tmphl6ep8ab.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%lf%lf%lf\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"x1=x2=%.5f\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"x1=%.5f;x2=%.5f\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"x1=%.5f+%.5fi;x2=%.5f-%.5fi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %x1 = alloca [100 x double], align 16
  %x2 = alloca [100 x double], align 16
  %s1 = alloca [100 x double], align 16
  %s2 = alloca [100 x double], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %c) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %x1) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %x2) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %s1) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %s2) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.cond67, label %for.body

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c)
  %2 = load double, ptr %b, align 8, !tbaa !9
  %3 = load double, ptr %a, align 8, !tbaa !9
  %mul2 = fmul double %3, 4.000000e+00
  %4 = load double, ptr %c, align 8, !tbaa !9
  %5 = fneg double %4
  %neg = fmul double %mul2, %5
  %6 = call double @llvm.fmuladd.f64(double %2, double %2, double %neg)
  %cmp4 = fcmp oeq double %6, 0.000000e+00
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %fneg = fneg double %2
  %mul = fmul double %3, 2.000000e+00
  %div = fdiv double %fneg, %mul
  %arrayidx = getelementptr inbounds nuw [100 x double], ptr %x2, i64 0, i64 %indvars.iv
  store double %div, ptr %arrayidx, align 8, !tbaa !9
  %arrayidx6 = getelementptr inbounds nuw [100 x double], ptr %x1, i64 0, i64 %indvars.iv
  store double %div, ptr %arrayidx6, align 8, !tbaa !9
  br label %for.inc.sink.split

if.else:                                          ; preds = %for.body
  %cmp13 = fcmp ogt double %6, 0.000000e+00
  br i1 %cmp13, label %if.then14, label %if.else37

if.then14:                                        ; preds = %if.else
  %call20 = call double @sqrt(double noundef %6) #6, !tbaa !5
  %add = fsub double %call20, %2
  %mul21 = fmul double %3, 2.000000e+00
  %div22 = fdiv double %add, %mul21
  %arrayidx24 = getelementptr inbounds nuw [100 x double], ptr %x1, i64 0, i64 %indvars.iv
  store double %div22, ptr %arrayidx24, align 8, !tbaa !9
  %fneg25 = fneg double %2
  %sub = fsub double %fneg25, %call20
  %div32 = fdiv double %sub, %mul21
  %arrayidx34 = getelementptr inbounds nuw [100 x double], ptr %x2, i64 0, i64 %indvars.iv
  store double %div32, ptr %arrayidx34, align 8, !tbaa !9
  br label %for.inc.sink.split

if.else37:                                        ; preds = %if.else
  %cmp42 = fcmp olt double %6, 0.000000e+00
  br i1 %cmp42, label %if.then43, label %for.inc

if.then43:                                        ; preds = %if.else37
  %fneg44 = fneg double %2
  %mul45 = fmul double %3, 2.000000e+00
  %div46 = fdiv double %fneg44, %mul45
  %arrayidx48 = getelementptr inbounds nuw [100 x double], ptr %s1, i64 0, i64 %indvars.iv
  %cmp51 = fcmp oeq double %div46, 0.000000e+00
  %storemerge = select i1 %cmp51, double 0.000000e+00, double %div46
  store double %storemerge, ptr %arrayidx48, align 8, !tbaa !9
  %neg58 = fmul double %2, %fneg44
  %7 = call double @llvm.fmuladd.f64(double %mul2, double %4, double %neg58)
  %call59 = call double @sqrt(double noundef %7) #6, !tbaa !5
  %div61 = fdiv double %call59, %mul45
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then14, %if.then43, %if.then
  %.sink = phi double [ 0.000000e+00, %if.then ], [ %div61, %if.then43 ], [ 0.000000e+00, %if.then14 ]
  %arrayidx8 = getelementptr inbounds nuw [100 x double], ptr %s2, i64 0, i64 %indvars.iv
  store double %.sink, ptr %arrayidx8, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !11

for.cond67:                                       ; preds = %for.cond, %for.inc110
  %8 = phi i32 [ %.pre, %for.inc110 ], [ %0, %for.cond ]
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.inc110 ], [ 1, %for.cond ]
  %9 = sext i32 %8 to i64
  %cmp68.not = icmp sgt i64 %indvars.iv31, %9
  br i1 %cmp68.not, label %for.end112, label %for.body69

for.body69:                                       ; preds = %for.cond67
  %arrayidx71 = getelementptr inbounds nuw [100 x double], ptr %x1, i64 0, i64 %indvars.iv31
  %10 = load double, ptr %arrayidx71, align 8, !tbaa !9
  %arrayidx73 = getelementptr inbounds nuw [100 x double], ptr %x2, i64 0, i64 %indvars.iv31
  %11 = load double, ptr %arrayidx73, align 8, !tbaa !9
  %cmp74 = fcmp oeq double %10, %11
  br i1 %cmp74, label %land.lhs.true, label %if.else82

land.lhs.true:                                    ; preds = %for.body69
  %arrayidx76 = getelementptr inbounds nuw [100 x double], ptr %s2, i64 0, i64 %indvars.iv31
  %12 = load double, ptr %arrayidx76, align 8, !tbaa !9
  %cmp77 = fcmp oeq double %12, 0.000000e+00
  br i1 %cmp77, label %if.then78, label %if.else82

if.then78:                                        ; preds = %land.lhs.true
  %call81 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %10)
  br label %for.inc110

if.else82:                                        ; preds = %land.lhs.true, %for.body69
  %cmp87 = fcmp une double %10, %11
  %arrayidx90 = getelementptr inbounds nuw [100 x double], ptr %s2, i64 0, i64 %indvars.iv31
  %13 = load double, ptr %arrayidx90, align 8, !tbaa !9
  %cmp91 = fcmp oeq double %13, 0.000000e+00
  %or.cond = select i1 %cmp87, i1 %cmp91, i1 false
  br i1 %or.cond, label %if.then92, label %if.else98

if.then92:                                        ; preds = %if.else82
  %call97 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %10, double noundef %11)
  br label %for.inc110

if.else98:                                        ; preds = %if.else82
  %arrayidx100 = getelementptr inbounds nuw [100 x double], ptr %s1, i64 0, i64 %indvars.iv31
  %14 = load double, ptr %arrayidx100, align 8, !tbaa !9
  %call107 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %14, double noundef %13, double noundef %14, double noundef %13)
  br label %for.inc110

for.inc110:                                       ; preds = %if.then78, %if.else98, %if.then92
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond67, !llvm.loop !14

for.end112:                                       ; preds = %for.cond67
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %s2) #6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %s1) #6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %x1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a) #6
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
