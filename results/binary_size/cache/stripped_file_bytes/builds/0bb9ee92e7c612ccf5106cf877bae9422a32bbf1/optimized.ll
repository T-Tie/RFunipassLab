; ModuleID = '<stdin>'
source_filename = "/tmp/tmpb1_5rgmy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%f%f%f\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"x1=x2=%.5lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"x1=%.5lf;x2=%.5lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"x1=%.5lf+%.5fi;x2=%.5lf-%.5fi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x float], align 16
  %b = alloca [100 x float], align 16
  %c = alloca [100 x float], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %c) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp35 = icmp sgt i32 %0, 0
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [100 x float], ptr %a, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [100 x float], ptr %b, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [100 x float], ptr %c, i64 0, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4)
  %1 = load float, ptr %arrayidx2, align 4, !tbaa !9
  %2 = load float, ptr %arrayidx, align 4, !tbaa !9
  %mul12 = fmul float %2, 4.000000e+00
  %3 = load float, ptr %arrayidx4, align 4, !tbaa !9
  %4 = fneg float %3
  %neg = fmul float %mul12, %4
  %5 = call float @llvm.fmuladd.f32(float %1, float %1, float %neg)
  %cmp16 = fcmp ult float %5, 0.000000e+00
  br i1 %cmp16, label %if.else60, label %if.then

if.then:                                          ; preds = %for.body
  %call.i = call noundef float @sqrtf(float noundef %5) #6, !tbaa !5
  %mul = fmul float %2, 2.000000e+00
  %conv33 = fpext float %mul to double
  %fneg36 = fneg float %1
  %6 = insertelement <2 x float> poison, float %call.i, i64 0
  %7 = insertelement <2 x float> %6, float %fneg36, i64 1
  %8 = insertelement <2 x float> poison, float %1, i64 0
  %9 = insertelement <2 x float> %8, float %call.i, i64 1
  %10 = fsub <2 x float> %7, %9
  %11 = fpext <2 x float> %10 to <2 x double>
  %12 = insertelement <2 x double> poison, double %conv33, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %14 = fdiv <2 x double> %11, %13
  %15 = extractelement <2 x double> %14, i64 0
  %16 = extractelement <2 x double> %14, i64 1
  %cmp56 = fcmp oeq double %15, %16
  br i1 %cmp56, label %if.then57, label %if.else

if.then57:                                        ; preds = %if.then
  %call58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %15)
  br label %for.inc

if.else:                                          ; preds = %if.then
  %call59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %15, double noundef %16)
  br label %for.inc

if.else60:                                        ; preds = %for.body
  %fneg63 = fneg float %1
  %conv64 = fpext float %fneg63 to double
  %mul67 = fmul float %2, 2.000000e+00
  %conv68 = fpext float %mul67 to double
  %div69 = fdiv double %conv64, %conv68
  %neg81 = fmul float %1, %fneg63
  %17 = call float @llvm.fmuladd.f32(float %mul12, float %3, float %neg81)
  %call.i34 = call noundef float @sqrtf(float noundef %17) #6, !tbaa !5
  %conv83 = fpext float %call.i34 to double
  %div88 = fdiv double %conv83, %conv68
  %call89 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %div69, double noundef %div88, double noundef %div69, double noundef %div88)
  br label %for.inc

for.inc:                                          ; preds = %if.else60, %if.else, %if.then57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %18 = load i32, ptr %n, align 4, !tbaa !5
  %19 = sext i32 %18 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %19
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !11

for.end:                                          ; preds = %for.inc, %entry
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %a) #6
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
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
