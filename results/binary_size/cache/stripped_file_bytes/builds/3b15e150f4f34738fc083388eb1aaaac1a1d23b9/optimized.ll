; ModuleID = '<stdin>'
source_filename = "/tmp/tmp110k4kyk.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %shuzu = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %shuzu) #5
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc32, %for.inc31 ]
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr %shuzu, i64 0, i64 %idxprom
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  switch i32 %0, label %for.inc31 [
    i32 -1, label %for.end33
    i32 0, label %for.cond7.preheader
  ]

for.cond7.preheader:                              ; preds = %for.cond
  %cmp818 = icmp sgt i32 %i.0, 0
  br i1 %cmp818, label %for.body.preheader, label %for.end28

for.body.preheader:                               ; preds = %for.cond7.preheader
  %wide.trip.count28 = zext nneg i32 %i.0 to i64
  br label %for.body

for.cond7.loopexit:                               ; preds = %for.body11, %middle.block, %for.body
  %num.2.lcssa = phi i32 [ %num.120, %for.body ], [ %14, %middle.block ], [ %num.3, %for.body11 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond29.not = icmp eq i64 %indvars.iv.next26, %wide.trip.count28
  br i1 %exitcond29.not, label %for.end28, label %for.body, !llvm.loop !9

for.body:                                         ; preds = %for.body.preheader, %for.cond7.loopexit
  %indvars.iv25 = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next26, %for.cond7.loopexit ]
  %indvars.iv = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next, %for.cond7.loopexit ]
  %num.120 = phi i32 [ 0, %for.body.preheader ], [ %num.2.lcssa, %for.cond7.loopexit ]
  %1 = xor i64 %indvars.iv25, -1
  %2 = add nsw i64 %1, %wide.trip.count28
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %cmp1015 = icmp slt i64 %indvars.iv.next26, %idxprom
  br i1 %cmp1015, label %for.body11.lr.ph, label %for.cond7.loopexit

for.body11.lr.ph:                                 ; preds = %for.body
  %arrayidx13 = getelementptr inbounds nuw [16 x i32], ptr %shuzu, i64 0, i64 %indvars.iv25
  %3 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %mul19 = shl nsw i32 %3, 1
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %for.body11.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body11.lr.ph
  %n.vec = and i64 %2, -4
  %4 = add i64 %indvars.iv, %n.vec
  %5 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %num.120, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert30 = insertelement <4 x i32> poison, i32 %mul19, i64 0
  %broadcast.splat31 = shufflevector <4 x i32> %broadcast.splatinsert30, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %5, %vector.ph ], [ %12, %vector.body ]
  %offset.idx = add i64 %indvars.iv, %index
  %6 = getelementptr inbounds nuw [16 x i32], ptr %shuzu, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %6, align 4, !tbaa !5
  %7 = shl nsw <4 x i32> %wide.load, splat (i32 1)
  %8 = icmp eq <4 x i32> %broadcast.splat, %7
  %9 = icmp eq <4 x i32> %broadcast.splat31, %wide.load
  %10 = select <4 x i1> %8, <4 x i1> splat (i1 true), <4 x i1> %9
  %11 = zext <4 x i1> %10 to <4 x i32>
  %12 = add <4 x i32> %vec.phi, %11
  %index.next = add nuw i64 %index, 4
  %13 = icmp eq i64 %index.next, %n.vec
  br i1 %13, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %14 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %12)
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %for.cond7.loopexit, label %for.body11.preheader

for.body11.preheader:                             ; preds = %for.body11.lr.ph, %middle.block
  %indvars.iv22.ph = phi i64 [ %indvars.iv, %for.body11.lr.ph ], [ %4, %middle.block ]
  %num.217.ph = phi i32 [ %num.120, %for.body11.lr.ph ], [ %14, %middle.block ]
  br label %for.body11

for.body11:                                       ; preds = %for.body11.preheader, %for.body11
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.body11 ], [ %indvars.iv22.ph, %for.body11.preheader ]
  %num.217 = phi i32 [ %num.3, %for.body11 ], [ %num.217.ph, %for.body11.preheader ]
  %arrayidx15 = getelementptr inbounds nuw [16 x i32], ptr %shuzu, i64 0, i64 %indvars.iv22
  %15 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %mul = shl nsw i32 %15, 1
  %cmp16 = icmp eq i32 %3, %mul
  %cmp22 = icmp eq i32 %mul19, %15
  %or.cond = select i1 %cmp16, i1 true, i1 %cmp22
  %inc = zext i1 %or.cond to i32
  %num.3 = add nsw i32 %num.217, %inc
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next23, %wide.trip.count28
  br i1 %exitcond.not, label %for.cond7.loopexit, label %for.body11, !llvm.loop !15

for.end28:                                        ; preds = %for.cond7.loopexit, %for.cond7.preheader
  %num.1.lcssa = phi i32 [ 0, %for.cond7.preheader ], [ %num.2.lcssa, %for.cond7.loopexit ]
  %call29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %num.1.lcssa)
  br label %for.inc31

for.inc31:                                        ; preds = %for.cond, %for.end28
  %i.1 = phi i32 [ -1, %for.end28 ], [ %i.0, %for.cond ]
  %inc32 = add nsw i32 %i.1, 1
  br label %for.cond, !llvm.loop !16

for.end33:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %shuzu) #5
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
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

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
!12 = distinct !{!12, !10, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !10, !11, !13}
!16 = distinct !{!16, !10, !11}
