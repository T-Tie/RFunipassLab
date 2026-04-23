; ModuleID = '<stdin>'
source_filename = "/tmp/tmpug1d26gk.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %a) #5
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end33, %entry
  %h.027 = phi i32 [ undef, %entry ], [ %h.1, %if.end33 ]
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  switch i32 %0, label %for.inc [
    i32 -1, label %while.end
    i32 0, label %for.end.split.loop.exit
  ]

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !9

for.end.split.loop.exit:                          ; preds = %for.body
  %1 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.inc, %for.end.split.loop.exit
  %h.1 = phi i32 [ %1, %for.end.split.loop.exit ], [ %h.027, %for.inc ]
  %cmp1323 = icmp sgt i32 %h.1, 0
  br i1 %cmp1323, label %for.cond15.preheader.us.preheader, label %if.end33

for.cond15.preheader.us.preheader:                ; preds = %for.end
  %wide.trip.count36 = zext nneg i32 %h.1 to i64
  %min.iters.check = icmp ult i32 %h.1, 4
  %n.vec = and i64 %wide.trip.count36, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count36
  br label %for.cond15.preheader.us

for.cond15.preheader.us:                          ; preds = %for.cond15.preheader.us.preheader, %for.cond15.for.inc29_crit_edge.us
  %indvars.iv33 = phi i64 [ 0, %for.cond15.preheader.us.preheader ], [ %indvars.iv.next34, %for.cond15.for.inc29_crit_edge.us ]
  %t.225.us = phi i32 [ 0, %for.cond15.preheader.us.preheader ], [ %spec.select.us.lcssa, %for.cond15.for.inc29_crit_edge.us ]
  %arrayidx19.us = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv33
  %2 = load i32, ptr %arrayidx19.us, align 4, !tbaa !5
  br i1 %min.iters.check, label %for.body17.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond15.preheader.us
  %3 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %t.225.us, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %3, %vector.ph ], [ %8, %vector.body ]
  %4 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %4, align 16, !tbaa !5
  %5 = shl nsw <4 x i32> %wide.load, splat (i32 1)
  %6 = icmp eq <4 x i32> %broadcast.splat, %5
  %7 = zext <4 x i1> %6 to <4 x i32>
  %8 = add <4 x i32> %vec.phi, %7
  %index.next = add nuw i64 %index, 4
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %10 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %8)
  br i1 %cmp.n, label %for.cond15.for.inc29_crit_edge.us, label %for.body17.us.preheader

for.body17.us.preheader:                          ; preds = %for.cond15.preheader.us, %middle.block
  %indvars.iv29.ph = phi i64 [ 0, %for.cond15.preheader.us ], [ %n.vec, %middle.block ]
  %t.322.us.ph = phi i32 [ %t.225.us, %for.cond15.preheader.us ], [ %10, %middle.block ]
  br label %for.body17.us

for.body17.us:                                    ; preds = %for.body17.us.preheader, %for.body17.us
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.body17.us ], [ %indvars.iv29.ph, %for.body17.us.preheader ]
  %t.322.us = phi i32 [ %spec.select.us, %for.body17.us ], [ %t.322.us.ph, %for.body17.us.preheader ]
  %arrayidx21.us = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv29
  %11 = load i32, ptr %arrayidx21.us, align 4, !tbaa !5
  %mul.us = shl nsw i32 %11, 1
  %cmp22.us = icmp eq i32 %2, %mul.us
  %inc24.us = zext i1 %cmp22.us to i32
  %spec.select.us = add nsw i32 %t.322.us, %inc24.us
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %exitcond32.not = icmp eq i64 %indvars.iv.next30, %wide.trip.count36
  br i1 %exitcond32.not, label %for.cond15.for.inc29_crit_edge.us, label %for.body17.us, !llvm.loop !15

for.cond15.for.inc29_crit_edge.us:                ; preds = %for.body17.us, %middle.block
  %spec.select.us.lcssa = phi i32 [ %10, %middle.block ], [ %spec.select.us, %for.body17.us ]
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count36
  br i1 %exitcond37.not, label %if.end33, label %for.cond15.preheader.us, !llvm.loop !16

if.end33:                                         ; preds = %for.cond15.for.inc29_crit_edge.us, %for.end
  %t.2.lcssa = phi i32 [ 0, %for.end ], [ %spec.select.us.lcssa, %for.cond15.for.inc29_crit_edge.us ]
  %call32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %t.2.lcssa)
  br label %for.cond.preheader, !llvm.loop !17

while.end:                                        ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %a) #5
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
!17 = distinct !{!17, !10, !11}
