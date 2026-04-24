; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxbbzpbc7.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [15 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %a) #5
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.be, %for.body.backedge ]
  %arrayidx = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  switch i32 %0, label %for.inc [
    i32 -1, label %while.end
    i32 0, label %for.end
  ]

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.cond14.preheader.us.preheader, label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc, %if.end32
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end32 ]
  br label %for.body, !llvm.loop !9

for.end:                                          ; preds = %for.body
  %cmp1224.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp1224.not, label %if.end32, label %for.cond14.preheader.us.preheader

for.cond14.preheader.us.preheader:                ; preds = %for.inc, %for.end
  %i.020.lcssa2841 = phi i64 [ %indvars.iv, %for.end ], [ 15, %for.inc ]
  %wide.trip.count37 = and i64 %i.020.lcssa2841, 4294967295
  %min.iters.check = icmp samesign ult i64 %i.020.lcssa2841, 4
  %n.vec = and i64 %i.020.lcssa2841, 9223372036854775804
  %cmp.n = icmp eq i64 %i.020.lcssa2841, %n.vec
  br label %for.cond14.preheader.us

for.cond14.preheader.us:                          ; preds = %for.cond14.preheader.us.preheader, %for.cond14.for.inc28_crit_edge.us
  %indvars.iv34 = phi i64 [ 0, %for.cond14.preheader.us.preheader ], [ %indvars.iv.next35, %for.cond14.for.inc28_crit_edge.us ]
  %s.025.us = phi i32 [ 0, %for.cond14.preheader.us.preheader ], [ %spec.select.us.lcssa, %for.cond14.for.inc28_crit_edge.us ]
  %arrayidx18.us = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv34
  %1 = load i32, ptr %arrayidx18.us, align 4, !tbaa !5
  br i1 %min.iters.check, label %for.body16.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond14.preheader.us
  %2 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %s.025.us, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %2, %vector.ph ], [ %7, %vector.body ]
  %3 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %3, align 16, !tbaa !5
  %4 = shl nsw <4 x i32> %wide.load, splat (i32 1)
  %5 = icmp eq <4 x i32> %broadcast.splat, %4
  %6 = zext <4 x i1> %5 to <4 x i32>
  %7 = add <4 x i32> %vec.phi, %6
  %index.next = add nuw i64 %index, 4
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %9 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %7)
  br i1 %cmp.n, label %for.cond14.for.inc28_crit_edge.us, label %for.body16.us.preheader

for.body16.us.preheader:                          ; preds = %for.cond14.preheader.us, %middle.block
  %indvars.iv30.ph = phi i64 [ 0, %for.cond14.preheader.us ], [ %n.vec, %middle.block ]
  %s.122.us.ph = phi i32 [ %s.025.us, %for.cond14.preheader.us ], [ %9, %middle.block ]
  br label %for.body16.us

for.body16.us:                                    ; preds = %for.body16.us.preheader, %for.body16.us
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.body16.us ], [ %indvars.iv30.ph, %for.body16.us.preheader ]
  %s.122.us = phi i32 [ %spec.select.us, %for.body16.us ], [ %s.122.us.ph, %for.body16.us.preheader ]
  %arrayidx20.us = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv30
  %10 = load i32, ptr %arrayidx20.us, align 4, !tbaa !5
  %mul.us = shl nsw i32 %10, 1
  %cmp21.us = icmp eq i32 %1, %mul.us
  %inc23.us = zext i1 %cmp21.us to i32
  %spec.select.us = add nsw i32 %s.122.us, %inc23.us
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %exitcond33.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count37
  br i1 %exitcond33.not, label %for.cond14.for.inc28_crit_edge.us, label %for.body16.us, !llvm.loop !15

for.cond14.for.inc28_crit_edge.us:                ; preds = %for.body16.us, %middle.block
  %spec.select.us.lcssa = phi i32 [ %9, %middle.block ], [ %spec.select.us, %for.body16.us ]
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %exitcond38.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count37
  br i1 %exitcond38.not, label %if.end32, label %for.cond14.preheader.us, !llvm.loop !16

if.end32:                                         ; preds = %for.cond14.for.inc28_crit_edge.us, %for.end
  %s.0.lcssa = phi i32 [ 0, %for.end ], [ %spec.select.us.lcssa, %for.cond14.for.inc28_crit_edge.us ]
  %call31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %s.0.lcssa)
  br label %for.body.backedge

while.end:                                        ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %a) #5
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
