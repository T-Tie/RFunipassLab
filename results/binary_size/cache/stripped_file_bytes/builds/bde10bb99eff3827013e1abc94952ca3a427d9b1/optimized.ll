; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmb9mdf78.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@a = dso_local global [25 x i32] zeroinitializer, align 16
@num = dso_local local_unnamed_addr global [25 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %0, 0
  br i1 %cmp13, label %for.body, label %for.end21

for.body4.preheader:                              ; preds = %for.body
  %1 = and i64 %indvars.iv.next, 4294967295
  %2 = sext i32 %3 to i64
  br label %for.body4

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [25 x i32], ptr @a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp, label %for.body, label %for.body4.preheader, !llvm.loop !9

for.cond11.preheader:                             ; preds = %_Z6searchii.exit
  %cmp1218 = icmp sgt i32 %3, 0
  br i1 %cmp1218, label %for.body13.preheader, label %for.end21

for.body13.preheader:                             ; preds = %for.cond11.preheader
  %wide.trip.count = zext nneg i32 %3 to i64
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %for.body13.preheader36, label %vector.ph

vector.ph:                                        ; preds = %for.body13.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %6, %vector.body ]
  %5 = getelementptr inbounds nuw [25 x i32], ptr @num, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %5, align 16, !tbaa !5
  %6 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi)
  %index.next = add nuw i64 %index, 4
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %8 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %6)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end21, label %for.body13.preheader36

for.body13.preheader36:                           ; preds = %for.body13.preheader, %middle.block
  %indvars.iv27.ph = phi i64 [ 0, %for.body13.preheader ], [ %n.vec, %middle.block ]
  %k.020.ph = phi i32 [ 0, %for.body13.preheader ], [ %8, %middle.block ]
  br label %for.body13

for.body4:                                        ; preds = %for.body4.preheader, %_Z6searchii.exit
  %indvars.iv24 = phi i64 [ %1, %for.body4.preheader ], [ %indvars.iv.next25, %_Z6searchii.exit ]
  %indvars.iv.next25 = add nsw i64 %indvars.iv24, -1
  %cmp8.i = icmp slt i64 %indvars.iv24, %2
  br i1 %cmp8.i, label %for.body.lr.ph.i, label %_Z6searchii.exit

for.body.lr.ph.i:                                 ; preds = %for.body4
  %arrayidx2.i = getelementptr inbounds nuw [25 x i32], ptr @a, i64 0, i64 %indvars.iv.next25
  %9 = load i32, ptr %arrayidx2.i, align 4, !tbaa !5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv24, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %q.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %q.1.i, %for.inc.i ]
  %arrayidx.i = getelementptr inbounds nuw [25 x i32], ptr @a, i64 0, i64 %indvars.iv.i
  %10 = load i32, ptr %arrayidx.i, align 4, !tbaa !5
  %cmp3.not.i = icmp sgt i32 %10, %9
  br i1 %cmp3.not.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %arrayidx5.i = getelementptr inbounds nuw [25 x i32], ptr @num, i64 0, i64 %indvars.iv.i
  %11 = load i32, ptr %arrayidx5.i, align 4, !tbaa !5
  %spec.select.i = call i32 @llvm.smax.i32(i32 %q.09.i, i32 %11)
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %q.1.i = phi i32 [ %q.09.i, %for.body.i ], [ %spec.select.i, %if.then.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %3, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_Z6searchii.exit.loopexit, label %for.body.i, !llvm.loop !15

_Z6searchii.exit.loopexit:                        ; preds = %for.inc.i
  %12 = add nuw nsw i32 %q.1.i, 1
  br label %_Z6searchii.exit

_Z6searchii.exit:                                 ; preds = %_Z6searchii.exit.loopexit, %for.body4
  %q.0.lcssa.i = phi i32 [ 1, %for.body4 ], [ %12, %_Z6searchii.exit.loopexit ]
  %arrayidx7 = getelementptr inbounds nuw [25 x i32], ptr @num, i64 0, i64 %indvars.iv.next25
  store i32 %q.0.lcssa.i, ptr %arrayidx7, align 4, !tbaa !5
  %cmp3 = icmp sgt i64 %indvars.iv24, 1
  br i1 %cmp3, label %for.body4, label %for.cond11.preheader, !llvm.loop !16

for.body13:                                       ; preds = %for.body13.preheader36, %for.body13
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.body13 ], [ %indvars.iv27.ph, %for.body13.preheader36 ]
  %k.020 = phi i32 [ %spec.select, %for.body13 ], [ %k.020.ph, %for.body13.preheader36 ]
  %arrayidx15 = getelementptr inbounds nuw [25 x i32], ptr @num, i64 0, i64 %indvars.iv27
  %13 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %13, i32 %k.020)
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next28, %wide.trip.count
  br i1 %exitcond.not, label %for.end21, label %for.body13, !llvm.loop !17

for.end21:                                        ; preds = %for.body13, %middle.block, %entry, %for.cond11.preheader
  %k.0.lcssa = phi i32 [ 0, %for.cond11.preheader ], [ 0, %entry ], [ %8, %middle.block ], [ %spec.select, %for.body13 ]
  %call22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %k.0.lcssa)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef range(i32 0, -2147483648) i32 @_Z6searchii(i32 noundef %i, i32 noundef %n) local_unnamed_addr #3 {
entry:
  %p.07 = add nsw i32 %i, 1
  %cmp8 = icmp slt i32 %p.07, %n
  br i1 %cmp8, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %idxprom1 = sext i32 %i to i64
  %arrayidx2 = getelementptr inbounds [25 x i32], ptr @a, i64 0, i64 %idxprom1
  %0 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %1 = add nsw i64 %idxprom1, 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ %1, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %q.09 = phi i32 [ 0, %for.body.lr.ph ], [ %q.1, %for.inc ]
  %arrayidx = getelementptr inbounds [25 x i32], ptr @a, i64 0, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp3.not = icmp sgt i32 %2, %0
  br i1 %cmp3.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %arrayidx5 = getelementptr inbounds [25 x i32], ptr @num, i64 0, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smax.i32(i32 %q.09, i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %q.1 = phi i32 [ %q.09, %for.body ], [ %spec.select, %if.then ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %n, %lftr.wideiv
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !15

for.end:                                          ; preds = %for.inc, %entry
  %q.0.lcssa = phi i32 [ 0, %entry ], [ %q.1, %for.inc ]
  ret i32 %q.0.lcssa
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!12 = distinct !{!12, !10, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11, !13}
