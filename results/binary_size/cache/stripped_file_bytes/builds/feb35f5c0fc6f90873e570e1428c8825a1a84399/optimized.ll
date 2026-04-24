; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_3po7eml.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z4findPiii(ptr noundef readonly captures(none) %x, i32 noundef %y, i32 noundef %z) local_unnamed_addr #0 {
entry:
  %cmp4 = icmp sgt i32 %y, 0
  br i1 %cmp4, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext nneg i32 %y to i64
  %min.iters.check = icmp ult i32 %y, 4
  br i1 %min.iters.check, label %for.body.preheader8, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %z, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %3, %vector.body ]
  %0 = getelementptr inbounds nuw i32, ptr %x, i64 %index
  %wide.load = load <4 x i32>, ptr %0, align 4, !tbaa !5
  %1 = icmp eq <4 x i32> %wide.load, %broadcast.splat
  %2 = zext <4 x i1> %1 to <4 x i32>
  %3 = add <4 x i32> %vec.phi, %2
  %index.next = add nuw i64 %index, 4
  %4 = icmp eq i64 %index.next, %n.vec
  br i1 %4, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %5 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %3)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader8

for.body.preheader8:                              ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %count.05.ph = phi i32 [ 0, %for.body.preheader ], [ %5, %middle.block ]
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %middle.block, %entry
  %count.0.lcssa = phi i32 [ 0, %entry ], [ %5, %middle.block ], [ %spec.select, %for.body ]
  ret i32 %count.0.lcssa

for.body:                                         ; preds = %for.body.preheader8, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader8 ]
  %count.05 = phi i32 [ %spec.select, %for.body ], [ %count.05.ph, %for.body.preheader8 ]
  %arrayidx = getelementptr inbounds nuw i32, ptr %x, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %6, %z
  %inc = zext i1 %cmp1 to i32
  %spec.select = add nuw nsw i32 %count.05, %inc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z5countPii(ptr noundef readonly captures(none) %x, i32 noundef %y) local_unnamed_addr #0 {
entry:
  %cmp6 = icmp sgt i32 %y, 0
  br i1 %cmp6, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %wide.trip.count.i = zext nneg i32 %y to i64
  %min.iters.check = icmp ult i32 %y, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %for.body.us

for.body.us:                                      ; preds = %_Z4findPiii.exit.loopexit.us, %for.body.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %_Z4findPiii.exit.loopexit.us ], [ 0, %for.body.lr.ph ]
  %count1.07.us = phi i32 [ %add.us, %_Z4findPiii.exit.loopexit.us ], [ 0, %for.body.lr.ph ]
  %arrayidx.us = getelementptr inbounds nuw i32, ptr %x, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx.us, align 4, !tbaa !5
  %mul.us = shl nsw i32 %0, 1
  br i1 %min.iters.check, label %for.body.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %mul.us, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %4, %vector.body ]
  %1 = getelementptr inbounds nuw i32, ptr %x, i64 %index
  %wide.load = load <4 x i32>, ptr %1, align 4, !tbaa !5
  %2 = icmp eq <4 x i32> %wide.load, %broadcast.splat
  %3 = zext <4 x i1> %2 to <4 x i32>
  %4 = add <4 x i32> %vec.phi, %3
  %index.next = add nuw i64 %index, 4
  %5 = icmp eq i64 %index.next, %n.vec
  br i1 %5, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %6 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %4)
  br i1 %cmp.n, label %_Z4findPiii.exit.loopexit.us, label %for.body.i.us.preheader

for.body.i.us.preheader:                          ; preds = %for.body.us, %middle.block
  %indvars.iv.i.us.ph = phi i64 [ 0, %for.body.us ], [ %n.vec, %middle.block ]
  %count.05.i.us.ph = phi i32 [ 0, %for.body.us ], [ %6, %middle.block ]
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.i.us.preheader, %for.body.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %for.body.i.us ], [ %indvars.iv.i.us.ph, %for.body.i.us.preheader ]
  %count.05.i.us = phi i32 [ %spec.select.i.us, %for.body.i.us ], [ %count.05.i.us.ph, %for.body.i.us.preheader ]
  %arrayidx.i.us = getelementptr inbounds nuw i32, ptr %x, i64 %indvars.iv.i.us
  %7 = load i32, ptr %arrayidx.i.us, align 4, !tbaa !5
  %cmp1.i.us = icmp eq i32 %7, %mul.us
  %inc.i.us = zext i1 %cmp1.i.us to i32
  %spec.select.i.us = add nuw nsw i32 %count.05.i.us, %inc.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %_Z4findPiii.exit.loopexit.us, label %for.body.i.us, !llvm.loop !16

_Z4findPiii.exit.loopexit.us:                     ; preds = %for.body.i.us, %middle.block
  %spec.select.i.us.lcssa = phi i32 [ %6, %middle.block ], [ %spec.select.i.us, %for.body.i.us ]
  %add.us = add nuw nsw i32 %spec.select.i.us.lcssa, %count1.07.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body.us, !llvm.loop !17

for.cond.cleanup:                                 ; preds = %_Z4findPiii.exit.loopexit.us, %entry
  %count1.0.lcssa = phi i32 [ 0, %entry ], [ %add.us, %_Z4findPiii.exit.loopexit.us ]
  ret i32 %count1.0.lcssa
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %temp = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %temp) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %temp)
  %0 = load i32, ptr %temp, align 16, !tbaa !5
  %cmp.not9 = icmp eq i32 %0, -1
  br i1 %cmp.not9, label %while.end15, label %while.cond3.preheader

while.cond3.preheader:                            ; preds = %entry, %_Z5countPii.exit
  %1 = phi i32 [ %12, %_Z5countPii.exit ], [ %0, %entry ]
  %cmp6.not6 = icmp eq i32 %1, 0
  br i1 %cmp6.not6, label %_Z5countPii.exit, label %while.body7

while.body7:                                      ; preds = %while.cond3.preheader, %while.body7
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body7 ], [ 0, %while.cond3.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx9 = getelementptr inbounds nuw [16 x i32], ptr %temp, i64 0, i64 %indvars.iv.next
  %call10 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx9)
  %2 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp6.not = icmp eq i32 %2, 0
  br i1 %cmp6.not, label %for.body.us.i.preheader, label %while.body7, !llvm.loop !18

for.body.us.i.preheader:                          ; preds = %while.body7
  %3 = add nuw i64 %indvars.iv, 1
  %min.iters.check = icmp samesign ult i64 %indvars.iv, 3
  %n.vec = and i64 %3, -4
  %cmp.n = icmp eq i64 %3, %n.vec
  br label %for.body.us.i

for.body.us.i:                                    ; preds = %for.body.us.i.preheader, %_Z4findPiii.exit.loopexit.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_Z4findPiii.exit.loopexit.us.i ], [ 0, %for.body.us.i.preheader ]
  %count1.07.us.i = phi i32 [ %add.us.i, %_Z4findPiii.exit.loopexit.us.i ], [ 0, %for.body.us.i.preheader ]
  %arrayidx.us.i = getelementptr inbounds nuw i32, ptr %temp, i64 %indvars.iv.i
  %4 = load i32, ptr %arrayidx.us.i, align 4, !tbaa !5
  %mul.us.i = shl nsw i32 %4, 1
  br i1 %min.iters.check, label %for.body.i.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %mul.us.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %8, %vector.body ]
  %5 = getelementptr inbounds nuw i32, ptr %temp, i64 %index
  %wide.load = load <4 x i32>, ptr %5, align 16, !tbaa !5
  %6 = icmp eq <4 x i32> %wide.load, %broadcast.splat
  %7 = zext <4 x i1> %6 to <4 x i32>
  %8 = add <4 x i32> %vec.phi, %7
  %index.next = add nuw i64 %index, 4
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %10 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %8)
  br i1 %cmp.n, label %_Z4findPiii.exit.loopexit.us.i, label %for.body.i.us.i.preheader

for.body.i.us.i.preheader:                        ; preds = %for.body.us.i, %middle.block
  %indvars.iv.i.us.i.ph = phi i64 [ 0, %for.body.us.i ], [ %n.vec, %middle.block ]
  %count.05.i.us.i.ph = phi i32 [ 0, %for.body.us.i ], [ %10, %middle.block ]
  br label %for.body.i.us.i

for.body.i.us.i:                                  ; preds = %for.body.i.us.i.preheader, %for.body.i.us.i
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i, %for.body.i.us.i ], [ %indvars.iv.i.us.i.ph, %for.body.i.us.i.preheader ]
  %count.05.i.us.i = phi i32 [ %spec.select.i.us.i, %for.body.i.us.i ], [ %count.05.i.us.i.ph, %for.body.i.us.i.preheader ]
  %arrayidx.i.us.i = getelementptr inbounds nuw i32, ptr %temp, i64 %indvars.iv.i.us.i
  %11 = load i32, ptr %arrayidx.i.us.i, align 4, !tbaa !5
  %cmp1.i.us.i = icmp eq i32 %11, %mul.us.i
  %inc.i.us.i = zext i1 %cmp1.i.us.i to i32
  %spec.select.i.us.i = add nuw nsw i32 %count.05.i.us.i, %inc.i.us.i
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.i.us.i, %indvars.iv
  br i1 %exitcond.not.i.us.i, label %_Z4findPiii.exit.loopexit.us.i, label %for.body.i.us.i, !llvm.loop !20

_Z4findPiii.exit.loopexit.us.i:                   ; preds = %for.body.i.us.i, %middle.block
  %spec.select.i.us.i.lcssa = phi i32 [ %10, %middle.block ], [ %spec.select.i.us.i, %for.body.i.us.i ]
  %add.us.i = add nuw nsw i32 %spec.select.i.us.i.lcssa, %count1.07.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %indvars.iv
  br i1 %exitcond.not.i, label %_Z5countPii.exit, label %for.body.us.i, !llvm.loop !17

_Z5countPii.exit:                                 ; preds = %_Z4findPiii.exit.loopexit.us.i, %while.cond3.preheader
  %count1.0.lcssa.i = phi i32 [ 0, %while.cond3.preheader ], [ %add.us.i, %_Z4findPiii.exit.loopexit.us.i ]
  %call12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %count1.0.lcssa.i)
  %call14 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %temp)
  %12 = load i32, ptr %temp, align 16, !tbaa !5
  %cmp.not = icmp eq i32 %12, -1
  br i1 %cmp.not, label %while.end15, label %while.cond3.preheader, !llvm.loop !21

while.end15:                                      ; preds = %_Z5countPii.exit, %entry
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %temp) #6
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !11, !12, !13}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11, !12, !13}
!20 = distinct !{!20, !10, !11, !12}
!21 = distinct !{!21, !10, !11}
