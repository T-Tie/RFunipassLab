; ModuleID = '<stdin>'
source_filename = "/tmp/tmpi47k6tao.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c",%g\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [1000 x float], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count26 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x float], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2.loopexit:                               ; preds = %for.cond5
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond2, !llvm.loop !12

for.cond2:                                        ; preds = %for.cond2.loopexit, %for.cond2.preheader
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.cond2.loopexit ], [ 0, %for.cond2.preheader ]
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.cond2.loopexit ], [ 1, %for.cond2.preheader ]
  %exitcond27.not = icmp eq i64 %indvars.iv22, %wide.trip.count26
  br i1 %exitcond27.not, label %for.end20, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx9 = getelementptr inbounds nuw [1000 x float], ptr %a, i64 0, i64 %indvars.iv22
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc15, %for.body4
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.inc15 ], [ %indvars.iv16, %for.body4 ]
  %exitcond.not = icmp eq i64 %indvars.iv18, %wide.trip.count
  br i1 %exitcond.not, label %for.cond2.loopexit, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %2 = load float, ptr %arrayidx9, align 4, !tbaa !13
  %arrayidx11 = getelementptr inbounds nuw [1000 x float], ptr %a, i64 0, i64 %indvars.iv18
  %3 = load float, ptr %arrayidx11, align 4, !tbaa !13
  %cmp12 = fcmp oeq float %2, %3
  br i1 %cmp12, label %if.then, label %for.inc15

if.then:                                          ; preds = %for.body7
  store float 0x3FB99999A0000000, ptr %arrayidx11, align 4, !tbaa !13
  br label %for.inc15

for.inc15:                                        ; preds = %for.body7, %if.then
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond5, !llvm.loop !15

for.end20:                                        ; preds = %for.cond2
  %4 = load float, ptr %a, align 16, !tbaa !13
  %conv = fpext float %4 to double
  %call22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %conv)
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc35, %for.end20
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.inc35 ], [ 1, %for.end20 ]
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp24 = icmp slt i64 %indvars.iv28, %6
  br i1 %cmp24, label %for.body25, label %for.end37

for.body25:                                       ; preds = %for.cond23
  %arrayidx27 = getelementptr inbounds nuw [1000 x float], ptr %a, i64 0, i64 %indvars.iv28
  %7 = load float, ptr %arrayidx27, align 4, !tbaa !13
  %cmp28 = fcmp une float %7, 0x3FB99999A0000000
  br i1 %cmp28, label %if.then29, label %for.inc35

if.then29:                                        ; preds = %for.body25
  %conv32 = fpext float %7 to double
  %call33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %conv32)
  br label %for.inc35

for.inc35:                                        ; preds = %for.body25, %if.then29
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond23, !llvm.loop !16

for.end37:                                        ; preds = %for.cond23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!12 = distinct !{!12, !10, !11}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !7, i64 0}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
