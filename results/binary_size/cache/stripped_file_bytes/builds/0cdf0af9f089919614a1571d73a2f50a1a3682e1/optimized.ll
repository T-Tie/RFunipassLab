; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9kwwv8su.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %s = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %s) #5
  br label %loop

loop:                                             ; preds = %loop, %entry
  %indvar = phi i64 [ %indvar.next, %loop ], [ 0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %loop ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds nuw [16 x i32], ptr %s, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %0, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %cmp.not, label %for.cond4.preheader, label %loop

for.cond4.preheader:                              ; preds = %loop, %for.inc22
  %indvar29 = phi i64 [ %indvar.next30, %for.inc22 ], [ 0, %loop ]
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.inc22 ], [ %indvars.iv, %loop ]
  %b.017 = phi i32 [ %b.2.lcssa, %for.inc22 ], [ 0, %loop ]
  %1 = sub i64 %indvar, %indvar29
  %cmp513 = icmp samesign ugt i64 %indvars.iv22, 1
  br i1 %cmp513, label %for.body6.lr.ph, label %for.end23

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %arrayidx8 = getelementptr inbounds nuw [16 x i32], ptr %s, i64 0, i64 %indvars.iv22
  %2 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %mul16 = shl nsw i32 %2, 1
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %for.body6.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body6.lr.ph
  %n.vec = and i64 %1, -4
  %3 = or disjoint i64 %n.vec, 1
  %4 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %b.017, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert31 = insertelement <4 x i32> poison, i32 %mul16, i64 0
  %broadcast.splat32 = shufflevector <4 x i32> %broadcast.splatinsert31, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %4, %vector.ph ], [ %11, %vector.body ]
  %offset.idx = or disjoint i64 %index, 1
  %5 = getelementptr inbounds nuw [16 x i32], ptr %s, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %5, align 4, !tbaa !5
  %6 = shl nsw <4 x i32> %wide.load, splat (i32 1)
  %7 = icmp eq <4 x i32> %broadcast.splat, %6
  %8 = icmp eq <4 x i32> %wide.load, %broadcast.splat32
  %9 = select <4 x i1> %7, <4 x i1> splat (i1 true), <4 x i1> %8
  %10 = zext <4 x i1> %9 to <4 x i32>
  %11 = add <4 x i32> %vec.phi, %10
  %index.next = add nuw i64 %index, 4
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %13 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %11)
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %for.inc22, label %for.body6.preheader

for.body6.preheader:                              ; preds = %for.body6.lr.ph, %middle.block
  %indvars.iv19.ph = phi i64 [ 1, %for.body6.lr.ph ], [ %3, %middle.block ]
  %b.115.ph = phi i32 [ %b.017, %for.body6.lr.ph ], [ %13, %middle.block ]
  br label %for.body6

for.body6:                                        ; preds = %for.body6.preheader, %for.body6
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.body6 ], [ %indvars.iv19.ph, %for.body6.preheader ]
  %b.115 = phi i32 [ %b.2, %for.body6 ], [ %b.115.ph, %for.body6.preheader ]
  %arrayidx10 = getelementptr inbounds nuw [16 x i32], ptr %s, i64 0, i64 %indvars.iv19
  %14 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %mul = shl nsw i32 %14, 1
  %cmp11 = icmp eq i32 %2, %mul
  %cmp17 = icmp eq i32 %14, %mul16
  %or.cond = select i1 %cmp11, i1 true, i1 %cmp17
  %inc19 = zext i1 %or.cond to i32
  %b.2 = add nsw i32 %b.115, %inc19
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next20, %indvars.iv22
  br i1 %exitcond.not, label %for.inc22, label %for.body6, !llvm.loop !14

for.inc22:                                        ; preds = %for.body6, %middle.block
  %b.2.lcssa = phi i32 [ %13, %middle.block ], [ %b.2, %for.body6 ]
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, -1
  %cmp3 = icmp sgt i64 %indvars.iv22, 1
  %indvar.next30 = add i64 %indvar29, 1
  br i1 %cmp3, label %for.cond4.preheader, label %for.end23, !llvm.loop !15

for.end23:                                        ; preds = %for.cond4.preheader, %for.inc22
  %b.1.lcssa28 = phi i32 [ %b.2.lcssa, %for.inc22 ], [ %b.017, %for.cond4.preheader ]
  %call24 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %b.1.lcssa28)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %s) #5
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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !11}
