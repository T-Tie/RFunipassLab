; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxk9_lp7o.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%f %f %f\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"x1=x2=%.5f\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"x1=%.5f;x2=%.5f\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"x1=%.5f+%.5fi;x2=%.5f-%.5fi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [1000 x float], align 16
  %b = alloca [1000 x float], align 16
  %c = alloca [1000 x float], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %b) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %c) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %1
  br i1 %cmp.not.not, label %for.inc, label %for.cond6

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x float], ptr %a, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [1000 x float], ptr %b, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [1000 x float], ptr %c, i64 0, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond6:                                        ; preds = %for.cond, %for.inc62
  %2 = phi i32 [ %.pre, %for.inc62 ], [ %0, %for.cond ]
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.inc62 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp8.not.not = icmp slt i64 %indvars.iv4, %3
  br i1 %cmp8.not.not, label %for.body9, label %for.end64

for.body9:                                        ; preds = %for.cond6
  %arrayidx11 = getelementptr inbounds nuw [1000 x float], ptr %b, i64 0, i64 %indvars.iv4
  %4 = load float, ptr %arrayidx11, align 4, !tbaa !12, !invariant.load !14
  %arrayidx15 = getelementptr inbounds nuw [1000 x float], ptr %a, i64 0, i64 %indvars.iv4
  %5 = load float, ptr %arrayidx15, align 4, !tbaa !12, !invariant.load !14
  %mul16 = fmul float %5, 4.000000e+00
  %arrayidx18 = getelementptr inbounds nuw [1000 x float], ptr %c, i64 0, i64 %indvars.iv4
  %6 = load float, ptr %arrayidx18, align 4, !tbaa !12, !invariant.load !14
  %7 = fneg float %6
  %neg = fmul float %mul16, %7
  %8 = call nofpclass(nzero) float @llvm.fmuladd.f32(float %4, float %4, float %neg)
  %fneg = fneg float %4
  %mul = fmul float %5, 2.000000e+00
  %div = fdiv float %fneg, %mul
  %cmp24 = fcmp oeq float %8, 0.000000e+00
  br i1 %cmp24, label %if.then, label %if.else

if.then:                                          ; preds = %for.body9
  %conv = fpext float %div to double
  %call25 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %conv) #7
  br label %for.inc62

if.else:                                          ; preds = %for.body9
  %cmp26 = fcmp ogt float %8, 0.000000e+00
  br i1 %cmp26, label %if.then27, label %if.else37

if.then27:                                        ; preds = %if.else
  %call.i = call noundef float @sqrtf(float noundef nofpclass(nzero) %8) #8, !tbaa !5
  %div32 = fdiv float %call.i, %mul
  %add = fadd float %div, %div32
  %sub33 = fsub float %div, %div32
  %conv34 = fpext float %add to double
  %conv35 = fpext float %sub33 to double
  %call36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %conv34, double noundef %conv35) #7
  br label %for.inc62

if.else37:                                        ; preds = %if.else
  %fneg38 = fneg float %8
  %call.i1 = call noundef float @sqrtf(float noundef nofpclass(pzero) %fneg38) #8, !tbaa !5
  %div43 = fdiv float %call.i1, %mul
  %cmp46 = fcmp oeq float %4, 0.000000e+00
  br i1 %cmp46, label %if.then47, label %if.else54

if.then47:                                        ; preds = %if.else37
  %9 = call noundef float @llvm.fabs.f32(float %div)
  %conv49 = fpext float %9 to double
  %conv50 = fpext float %div43 to double
  %call53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %conv49, double noundef %conv50, double noundef %conv49, double noundef %conv50) #7
  br label %for.inc62

if.else54:                                        ; preds = %if.else37
  %conv55 = fpext float %div to double
  %conv56 = fpext float %div43 to double
  %call59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %conv55, double noundef %conv56, double noundef %conv55, double noundef %conv56) #7
  br label %for.inc62

for.inc62:                                        ; preds = %if.then, %if.then47, %if.else54, %if.then27
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !15

for.end64:                                        ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

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
!13 = !{!"float", !7, i64 0}
!14 = !{}
!15 = distinct !{!15, !10, !11}
