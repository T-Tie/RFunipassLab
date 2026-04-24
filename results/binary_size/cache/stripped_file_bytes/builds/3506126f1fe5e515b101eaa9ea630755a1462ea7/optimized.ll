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
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x float], align 16
  %b = alloca [100 x float], align 16
  %c = alloca [100 x float], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %b) #5
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %c) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %if.end90, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end90 ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x float], ptr %a, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [100 x float], ptr %b, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [100 x float], ptr %c, i64 0, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4)
  %2 = load float, ptr %arrayidx2, align 4, !tbaa !9, !invariant.load !11
  %3 = load float, ptr %arrayidx, align 4, !tbaa !9, !invariant.load !11
  %mul12 = fmul float %3, 4.000000e+00
  %4 = load float, ptr %arrayidx4, align 4, !tbaa !9, !invariant.load !11
  %5 = fneg float %4
  %neg = fmul float %mul12, %5
  %6 = call nofpclass(nzero) float @llvm.fmuladd.f32(float %2, float %2, float %neg)
  %cmp16 = fcmp ult float %6, 0.000000e+00
  %fneg63 = fneg float %2
  br i1 %cmp16, label %if.else60, label %if.then

if.then:                                          ; preds = %for.body
  %call.i = call noundef float @sqrtf(float noundef nofpclass(nzero) %6) #6, !tbaa !5
  %add = fsub float %call.i, %2
  %conv = fpext float %add to double
  %mul = fmul float %3, 2.000000e+00
  %conv33 = fpext float %mul to double
  %div = fdiv double %conv, %conv33
  %call.i8 = call noundef float @sqrtf(float noundef nofpclass(nzero) %6) #6, !tbaa !5
  %sub = fsub float %fneg63, %call.i8
  %conv50 = fpext float %sub to double
  %div55 = fdiv double %conv50, %conv33
  %cmp56 = fcmp oeq double %div, %div55
  br i1 %cmp56, label %if.then57, label %if.else

if.then57:                                        ; preds = %if.then
  %call58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %div)
  br label %if.end90

if.else:                                          ; preds = %if.then
  %call59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %div, double noundef %div55)
  br label %if.end90

if.else60:                                        ; preds = %for.body
  %conv64 = fpext float %fneg63 to double
  %mul67 = fmul float %3, 2.000000e+00
  %conv68 = fpext float %mul67 to double
  %div69 = fdiv double %conv64, %conv68
  %neg81 = fmul float %2, %fneg63
  %7 = call float @llvm.fmuladd.f32(float %mul12, float %4, float %neg81)
  %call.i9 = call noundef float @sqrtf(float noundef %7) #6, !tbaa !5
  %conv83 = fpext float %call.i9 to double
  %div88 = fdiv double %conv83, %conv68
  %call89 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %div69, double noundef %div88, double noundef %div69, double noundef %div88)
  br label %if.end90

if.end90:                                         ; preds = %if.then57, %if.else, %if.else60
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %a) #6
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
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = !{}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
