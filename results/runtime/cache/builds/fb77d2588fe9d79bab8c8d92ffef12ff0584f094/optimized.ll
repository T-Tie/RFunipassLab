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
  %a = alloca [99 x double], align 16
  %b = alloca [99 x double], align 16
  %c = alloca [99 x double], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 792, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.start.p0(i64 noundef 792, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.start.p0(i64 noundef 792, ptr noundef nonnull %c) #7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond6

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [99 x double], ptr %a, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [99 x double], ptr %b, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [99 x double], ptr %c, i64 0, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond6:                                        ; preds = %for.cond, %for.inc106
  %2 = phi i32 [ %.pre, %for.inc106 ], [ %0, %for.cond ]
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.inc106 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp7 = icmp slt i64 %indvars.iv12, %3
  br i1 %cmp7, label %for.body8, label %for.end108

for.body8:                                        ; preds = %for.cond6
  %arrayidx10 = getelementptr inbounds nuw [99 x double], ptr %b, i64 0, i64 %indvars.iv12
  %4 = load double, ptr %arrayidx10, align 8, !tbaa !12
  %arrayidx14 = getelementptr inbounds nuw [99 x double], ptr %a, i64 0, i64 %indvars.iv12
  %5 = load double, ptr %arrayidx14, align 8, !tbaa !12
  %mul15 = fmul double %5, 4.000000e+00
  %arrayidx17 = getelementptr inbounds nuw [99 x double], ptr %c, i64 0, i64 %indvars.iv12
  %6 = load double, ptr %arrayidx17, align 8, !tbaa !12
  %7 = fneg double %6
  %neg = fmul double %mul15, %7
  %8 = call double @llvm.fmuladd.f64(double %4, double %4, double %neg)
  %cmp23 = fcmp oeq double %8, 0.000000e+00
  %fneg = fneg double %4
  br i1 %cmp23, label %if.then, label %if.else

if.then:                                          ; preds = %for.body8
  %mul = fmul double %5, 2.000000e+00
  %div = fdiv double %fneg, %mul
  %call28 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %div) #7
  br label %for.inc106

if.else:                                          ; preds = %for.body8
  %cmp31 = fcmp ogt double %8, 0.000000e+00
  br i1 %cmp31, label %if.then32, label %if.else62

if.then32:                                        ; preds = %if.else
  %call38 = call double @sqrt(double noundef %8) #8, !tbaa !5
  %add = fsub double %call38, %4
  %mul41 = fmul double %5, 2.000000e+00
  %div42 = fdiv double %add, %mul41
  %sub = fsub double %fneg, %call38
  %div54 = fdiv double %sub, %mul41
  %call61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %div42, double noundef %div54) #7
  br label %for.inc106

if.else62:                                        ; preds = %if.else
  %mul68 = fmul double %5, 2.000000e+00
  %div69 = fdiv double %fneg, %mul68
  %fneg74 = fneg double %8
  %call75 = call double @sqrt(double noundef %fneg74) #8, !tbaa !5
  %div79 = fdiv double %call75, %mul68
  %cmp84 = fcmp oeq double %4, 0.000000e+00
  br i1 %cmp84, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else62
  %fneg87 = fneg double %div69
  %call95 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %fneg87, double noundef %div79, double noundef %fneg87, double noundef %div79) #7
  br label %for.inc106

cond.false:                                       ; preds = %if.else62
  %call104 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %div69, double noundef %div79, double noundef %div69, double noundef %div79) #7
  br label %for.inc106

for.inc106:                                       ; preds = %if.then, %cond.true, %cond.false, %if.then32
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !14

for.end108:                                       ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 noundef 792, ptr noundef nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 noundef 792, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 792, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
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
attributes #6 = { nofree nounwind willreturn }
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
!14 = distinct !{!14, !10, !11}
