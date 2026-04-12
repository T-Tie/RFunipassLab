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
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [1000 x float], align 16
  %b = alloca [1000 x float], align 16
  %c = alloca [1000 x float], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %c) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.cond6, label %for.body

for.body:                                         ; preds = %for.cond
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
  %4 = load float, ptr %arrayidx10, align 4, !tbaa !12
  %arrayidx14 = getelementptr inbounds nuw [1000 x float], ptr %a, i64 0, i64 %indvars.iv51
  %5 = load float, ptr %arrayidx14, align 4, !tbaa !12
  %mul15 = fmul float %5, 4.000000e+00
  %arrayidx17 = getelementptr inbounds nuw [1000 x float], ptr %c, i64 0, i64 %indvars.iv51
  %6 = load float, ptr %arrayidx17, align 4, !tbaa !12
  %7 = fneg float %6
  %neg = fmul float %mul15, %7
  %8 = call float @llvm.fmuladd.f32(float %4, float %4, float %neg)
  %cmp19 = fcmp ogt float %8, 0.000000e+00
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.body8
  %call.i = call noundef float @sqrtf(float noundef %8) #6, !tbaa !5
  %add = fsub float %call.i, %4
  %mul = fmul float %5, 2.000000e+00
  %div = fdiv float %add, %mul
  %conv = fpext float %div to double
  %fneg38 = fneg float %4
  %sub = fsub float %fneg38, %call.i
  %div55 = fdiv float %sub, %mul
  %conv56 = fpext float %div55 to double
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %conv, double noundef %conv56)
  %.pre54 = load float, ptr %arrayidx10, align 4, !tbaa !12
  %.pre55 = load float, ptr %arrayidx14, align 4, !tbaa !12
  %.pre56 = load float, ptr %arrayidx17, align 4, !tbaa !12
  %.pre60 = fmul float %.pre55, 4.000000e+00
  %.pre61 = fneg float %.pre56
  %.pre62 = fmul float %.pre60, %.pre61
  %.pre63 = call float @llvm.fmuladd.f32(float %.pre54, float %.pre54, float %.pre62)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body8
  %.pre-phi64 = phi float [ %.pre63, %if.then ], [ %8, %for.body8 ]
  %mul65.pre-phi = phi float [ %.pre60, %if.then ], [ %mul15, %for.body8 ]
  %9 = phi float [ %.pre56, %if.then ], [ %6, %for.body8 ]
  %10 = phi float [ %.pre55, %if.then ], [ %5, %for.body8 ]
  %11 = phi float [ %.pre54, %if.then ], [ %4, %for.body8 ]
  %cmp70 = fcmp oeq float %.pre-phi64, 0.000000e+00
  br i1 %cmp70, label %if.then71, label %if.end81

if.then71:                                        ; preds = %if.end
  %fneg74 = fneg float %11
  %mul77 = fmul float %10, 2.000000e+00
  %div78 = fdiv float %fneg74, %mul77
  %conv79 = fpext float %div78 to double
  %call80 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %conv79)
  %.pre57 = load float, ptr %arrayidx10, align 4, !tbaa !12
  %.pre58 = load float, ptr %arrayidx14, align 4, !tbaa !12
  %.pre59 = load float, ptr %arrayidx17, align 4, !tbaa !12
  %.pre65 = fmul float %.pre58, 4.000000e+00
  %.pre66 = fneg float %.pre59
  %.pre68 = fmul float %.pre65, %.pre66
  %.pre69 = call float @llvm.fmuladd.f32(float %.pre57, float %.pre57, float %.pre68)
  br label %if.end81

if.end81:                                         ; preds = %if.then71, %if.end
  %.pre-phi70 = phi float [ %.pre69, %if.then71 ], [ %.pre-phi64, %if.end ]
  %mul89.pre-phi = phi float [ %.pre65, %if.then71 ], [ %mul65.pre-phi, %if.end ]
  %12 = phi float [ %.pre59, %if.then71 ], [ %9, %if.end ]
  %13 = phi float [ %.pre58, %if.then71 ], [ %10, %if.end ]
  %14 = phi float [ %.pre57, %if.then71 ], [ %11, %if.end ]
  %cmp94 = fcmp olt float %.pre-phi70, 0.000000e+00
  br i1 %cmp94, label %if.then95, label %for.inc150

if.then95:                                        ; preds = %if.end81
  %fneg98 = fneg float %14
  %mul101 = fmul float %13, 2.000000e+00
  %div102 = fdiv float %fneg98, %mul101
  %conv103 = fpext float %div102 to double
  %neg115 = fmul float %14, %fneg98
  %15 = call float @llvm.fmuladd.f32(float %mul89.pre-phi, float %12, float %neg115)
  %call.i48 = call noundef float @sqrtf(float noundef %15) #6, !tbaa !5
  %div120 = fdiv float %call.i48, %mul101
  %conv121 = fpext float %div120 to double
  %call148 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %conv103, double noundef %conv121, double noundef %conv103, double noundef %conv121)
  br label %for.inc150

for.inc150:                                       ; preds = %if.end81, %if.then95
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !14

for.end152:                                       ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !10, !11}
