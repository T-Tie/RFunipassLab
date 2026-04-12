; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1pr5op45.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%f %f %f\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"x1=%.5f;x2=%.5f\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"x1=x2=%.5f\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"x1=%.5f+%.5fi;x2=%.5f-%.5fi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [1000 x float], align 16
  %b = alloca [1000 x float], align 16
  %c = alloca [1000 x float], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull %c) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.cond6, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x float], ptr %a, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [1000 x float], ptr %b, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [1000 x float], ptr %c, i64 0, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond6:                                        ; preds = %for.cond, %for.inc150
  %2 = phi i32 [ %.pre, %for.inc150 ], [ %0, %for.cond ]
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.inc150 ], [ 1, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp7.not = icmp sgt i64 %indvars.iv51, %3
  br i1 %cmp7.not, label %for.end152, label %for.body8

for.body8:                                        ; preds = %for.cond6
  %arrayidx10 = getelementptr inbounds nuw [1000 x float], ptr %b, i64 0, i64 %indvars.iv51
  %4 = load float, ptr %arrayidx10, align 4, !tbaa !12, !invariant.load !14
  %arrayidx14 = getelementptr inbounds nuw [1000 x float], ptr %a, i64 0, i64 %indvars.iv51
  %5 = load float, ptr %arrayidx14, align 4, !tbaa !12, !invariant.load !14
  %mul15 = fmul float %5, 4.000000e+00
  %arrayidx17 = getelementptr inbounds nuw [1000 x float], ptr %c, i64 0, i64 %indvars.iv51
  %6 = load float, ptr %arrayidx17, align 4, !tbaa !12, !invariant.load !14
  %7 = fneg float %6
  %neg = fmul float %mul15, %7
  %8 = call float @llvm.fmuladd.f32(float %4, float %4, float %neg)
  %cmp19 = fcmp ogt float %8, 0.000000e+00
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.body8
  %fneg = fneg float %4
  %call.i = call noundef float @sqrtf(float noundef %8) #6, !tbaa !5
  %add = fsub float %call.i, %4
  %mul = fmul float %5, 2.000000e+00
  %div = fdiv float %add, %mul
  %conv = fpext float %div to double
  %call.i1 = call noundef float @sqrtf(float noundef %8) #6, !tbaa !5
  %sub = fsub float %fneg, %call.i1
  %div55 = fdiv float %sub, %mul
  %conv56 = fpext float %div55 to double
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %conv, double noundef %conv56)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body8
  %cmp70 = fcmp oeq float %8, 0.000000e+00
  br i1 %cmp70, label %if.then71, label %if.end81

if.then71:                                        ; preds = %if.end
  %fneg74 = fneg float %4
  %mul77 = fmul float %5, 2.000000e+00
  %div78 = fdiv float %fneg74, %mul77
  %conv79 = fpext float %div78 to double
  %call80 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %conv79)
  br label %if.end81

if.end81:                                         ; preds = %if.then71, %if.end
  %cmp94 = fcmp olt float %8, 0.000000e+00
  br i1 %cmp94, label %if.then95, label %for.inc150

if.then95:                                        ; preds = %if.end81
  %fneg98 = fneg float %4
  %mul101 = fmul float %5, 2.000000e+00
  %div102 = fdiv float %fneg98, %mul101
  %conv103 = fpext float %div102 to double
  %neg115 = fmul float %4, %fneg98
  %9 = call float @llvm.fmuladd.f32(float %mul15, float %6, float %neg115)
  %call.i2 = call noundef float @sqrtf(float noundef %9) #6, !tbaa !5
  %div120 = fdiv float %call.i2, %mul101
  %conv121 = fpext float %div120 to double
  %call.i3 = call noundef float @sqrtf(float noundef %9) #6, !tbaa !5
  %div146 = fdiv float %call.i3, %mul101
  %conv147 = fpext float %div146 to double
  %call148 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %conv103, double noundef %conv121, double noundef %conv103, double noundef %conv147)
  br label %for.inc150

for.inc150:                                       ; preds = %if.end81, %if.then95
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !15

for.end152:                                       ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
declare float @sqrtf(float noundef) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn }
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
!13 = !{!"float", !7, i64 0}
!14 = !{}
!15 = distinct !{!15, !10, !11}
