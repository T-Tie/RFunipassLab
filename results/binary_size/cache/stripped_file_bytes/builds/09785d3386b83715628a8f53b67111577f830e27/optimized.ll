; ModuleID = '<stdin>'
source_filename = "/tmp/tmp31nu2ly8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [500 x i32], align 16
  %b = alloca [500 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp20 = icmp sgt i32 %0, 0
  br i1 %cmp20, label %for.body, label %for.end42

for.cond11.preheader:                             ; preds = %for.body
  %cmp1222 = icmp sgt i32 %8, 0
  br i1 %cmp1222, label %for.body13.preheader, label %for.end42

for.body13.preheader:                             ; preds = %for.cond11.preheader
  %wide.trip.count = zext nneg i32 %8 to i64
  %min.iters.check = icmp ult i32 %8, 4
  br i1 %min.iters.check, label %for.body13.preheader49, label %vector.ph

vector.ph:                                        ; preds = %for.body13.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %2, %vector.body ]
  %1 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %1, align 16, !tbaa !5
  %2 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi)
  %index.next = add nuw i64 %index, 4
  %3 = icmp eq i64 %index.next, %n.vec
  br i1 %3, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %4 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %2)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond24.preheader, label %for.body13.preheader49

for.body13.preheader49:                           ; preds = %for.body13.preheader, %middle.block
  %indvars.iv33.ph = phi i64 [ 0, %for.body13.preheader ], [ %n.vec, %middle.block ]
  %p.024.ph = phi i32 [ 0, %for.body13.preheader ], [ %4, %middle.block ]
  br label %for.body13

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %5 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %6 = and i32 %5, -2147483647
  %cmp4 = icmp eq i32 %6, 1
  %spec.select47 = select i1 %cmp4, i32 %5, i32 0
  %7 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv
  store i32 %spec.select47, ptr %7, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %9
  br i1 %cmp, label %for.body, label %for.cond11.preheader, !llvm.loop !14

for.cond24.preheader:                             ; preds = %for.body13, %middle.block
  %spec.select.lcssa = phi i32 [ %4, %middle.block ], [ %spec.select, %for.body13 ]
  %sub = add nsw i32 %spec.select.lcssa, -2
  %cmp25.not28 = icmp slt i32 %spec.select.lcssa, 3
  br i1 %cmp25.not28, label %for.end42, label %for.cond27.preheader

for.body13:                                       ; preds = %for.body13.preheader49, %for.body13
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.body13 ], [ %indvars.iv33.ph, %for.body13.preheader49 ]
  %p.024 = phi i32 [ %spec.select, %for.body13 ], [ %p.024.ph, %for.body13.preheader49 ]
  %arrayidx15 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv33
  %10 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %10, i32 %p.024)
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count
  br i1 %exitcond.not, label %for.cond24.preheader, label %for.body13, !llvm.loop !15

for.cond27.preheader:                             ; preds = %for.cond24.preheader, %for.inc41
  %11 = phi i32 [ %17, %for.inc41 ], [ %8, %for.cond24.preheader ]
  %12 = phi i32 [ %18, %for.inc41 ], [ %8, %for.cond24.preheader ]
  %r.029 = phi i32 [ %add, %for.inc41 ], [ 1, %for.cond24.preheader ]
  %cmp2826 = icmp sgt i32 %12, 0
  br i1 %cmp2826, label %for.body29, label %for.inc41

for.body29:                                       ; preds = %for.cond27.preheader, %for.inc38
  %13 = phi i32 [ %15, %for.inc38 ], [ %11, %for.cond27.preheader ]
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.inc38 ], [ 0, %for.cond27.preheader ]
  %arrayidx31 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv36
  %14 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %cmp32 = icmp eq i32 %14, %r.029
  br i1 %cmp32, label %if.then33, label %for.inc38

if.then33:                                        ; preds = %for.body29
  %call36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %r.029)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc38

for.inc38:                                        ; preds = %for.body29, %if.then33
  %15 = phi i32 [ %13, %for.body29 ], [ %.pre, %if.then33 ]
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %16 = sext i32 %15 to i64
  %cmp28 = icmp slt i64 %indvars.iv.next37, %16
  br i1 %cmp28, label %for.body29, label %for.inc41, !llvm.loop !16

for.inc41:                                        ; preds = %for.inc38, %for.cond27.preheader
  %17 = phi i32 [ %11, %for.cond27.preheader ], [ %15, %for.inc38 ]
  %18 = phi i32 [ %12, %for.cond27.preheader ], [ %15, %for.inc38 ]
  %add = add nuw nsw i32 %r.029, 2
  %cmp25.not = icmp sgt i32 %add, %sub
  br i1 %cmp25.not, label %for.end42, label %for.cond27.preheader, !llvm.loop !17

for.end42:                                        ; preds = %for.inc41, %entry, %for.cond11.preheader, %for.cond24.preheader
  %p.0.lcssa45 = phi i32 [ %spec.select.lcssa, %for.cond24.preheader ], [ 0, %for.cond11.preheader ], [ 0, %entry ], [ %spec.select.lcssa, %for.inc41 ]
  %call43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %p.0.lcssa45)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %a) #5
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #4

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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11, !18}
!18 = !{!"llvm.loop.unswitch.partial.disable"}
