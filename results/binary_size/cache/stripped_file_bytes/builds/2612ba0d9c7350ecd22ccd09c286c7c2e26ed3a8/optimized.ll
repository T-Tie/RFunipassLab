; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_xducke_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %sz = alloca [16 x i32], align 16
  %erbei = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sz) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %erbei) #5
  %arrayidx32.phi.trans.insert = getelementptr inbounds i8, ptr %sz, i64 -4
  br label %for.cond

for.cond:                                         ; preds = %if.end30, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc37, %if.end30 ]
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr %sz, i64 0, i64 %idxprom
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %for.cond3.preheader, label %if.end30

for.cond3.preheader:                              ; preds = %for.cond
  %cmp417 = icmp sgt i32 %i.0, 0
  br i1 %cmp417, label %for.body.preheader, label %for.end28

for.body.preheader:                               ; preds = %for.cond3.preheader
  %wide.trip.count = zext nneg i32 %i.0 to i64
  %min.iters.check41 = icmp ult i32 %i.0, 4
  br i1 %min.iters.check41, label %for.body.preheader52, label %vector.ph42

vector.ph42:                                      ; preds = %for.body.preheader
  %n.vec44 = and i64 %wide.trip.count, 2147483644
  br label %vector.body45

vector.body45:                                    ; preds = %vector.body45, %vector.ph42
  %index46 = phi i64 [ 0, %vector.ph42 ], [ %index.next48, %vector.body45 ]
  %1 = getelementptr inbounds nuw [16 x i32], ptr %sz, i64 0, i64 %index46
  %wide.load47 = load <4 x i32>, ptr %1, align 16, !tbaa !5
  %2 = shl nsw <4 x i32> %wide.load47, splat (i32 1)
  %3 = getelementptr inbounds nuw [16 x i32], ptr %erbei, i64 0, i64 %index46
  store <4 x i32> %2, ptr %3, align 16, !tbaa !5
  %index.next48 = add nuw i64 %index46, 4
  %4 = icmp eq i64 %index.next48, %n.vec44
  br i1 %4, label %middle.block49, label %vector.body45, !llvm.loop !9

middle.block49:                                   ; preds = %vector.body45
  %cmp.n50 = icmp eq i64 %n.vec44, %wide.trip.count
  br i1 %cmp.n50, label %for.cond13.preheader.us.preheader, label %for.body.preheader52

for.body.preheader52:                             ; preds = %for.body.preheader, %middle.block49
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec44, %middle.block49 ]
  br label %for.body

for.cond13.preheader.us.preheader:                ; preds = %for.body, %middle.block49
  %wide.trip.count38 = zext nneg i32 %i.0 to i64
  %min.iters.check = icmp ult i32 %i.0, 4
  %n.vec = and i64 %wide.trip.count, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %for.cond13.preheader.us

for.cond13.preheader.us:                          ; preds = %for.cond13.preheader.us.preheader, %for.cond13.for.inc26_crit_edge.us
  %indvars.iv35 = phi i64 [ 0, %for.cond13.preheader.us.preheader ], [ %indvars.iv.next36, %for.cond13.for.inc26_crit_edge.us ]
  %sum.225.us = phi i32 [ 0, %for.cond13.preheader.us.preheader ], [ %spec.select.us.lcssa, %for.cond13.for.inc26_crit_edge.us ]
  %arrayidx17.us = getelementptr inbounds nuw [16 x i32], ptr %erbei, i64 0, i64 %indvars.iv35
  %5 = load i32, ptr %arrayidx17.us, align 4, !tbaa !5
  br i1 %min.iters.check, label %for.body15.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond13.preheader.us
  %6 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %sum.225.us, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %6, %vector.ph ], [ %10, %vector.body ]
  %7 = getelementptr inbounds nuw [16 x i32], ptr %sz, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %7, align 16, !tbaa !5
  %8 = icmp eq <4 x i32> %broadcast.splat, %wide.load
  %9 = zext <4 x i1> %8 to <4 x i32>
  %10 = add <4 x i32> %vec.phi, %9
  %index.next = add nuw i64 %index, 4
  %11 = icmp eq i64 %index.next, %n.vec
  br i1 %11, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %12 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %10)
  br i1 %cmp.n, label %for.cond13.for.inc26_crit_edge.us, label %for.body15.us.preheader

for.body15.us.preheader:                          ; preds = %for.cond13.preheader.us, %middle.block
  %indvars.iv30.ph = phi i64 [ 0, %for.cond13.preheader.us ], [ %n.vec, %middle.block ]
  %sum.322.us.ph = phi i32 [ %sum.225.us, %for.cond13.preheader.us ], [ %12, %middle.block ]
  br label %for.body15.us

for.body15.us:                                    ; preds = %for.body15.us.preheader, %for.body15.us
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.body15.us ], [ %indvars.iv30.ph, %for.body15.us.preheader ]
  %sum.322.us = phi i32 [ %spec.select.us, %for.body15.us ], [ %sum.322.us.ph, %for.body15.us.preheader ]
  %arrayidx19.us = getelementptr inbounds nuw [16 x i32], ptr %sz, i64 0, i64 %indvars.iv30
  %13 = load i32, ptr %arrayidx19.us, align 4, !tbaa !5
  %cmp20.us = icmp eq i32 %5, %13
  %inc22.us = zext i1 %cmp20.us to i32
  %spec.select.us = add nsw i32 %sum.322.us, %inc22.us
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count38
  br i1 %exitcond34.not, label %for.cond13.for.inc26_crit_edge.us, label %for.body15.us, !llvm.loop !15

for.cond13.for.inc26_crit_edge.us:                ; preds = %for.body15.us, %middle.block
  %spec.select.us.lcssa = phi i32 [ %12, %middle.block ], [ %spec.select.us, %for.body15.us ]
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %for.end28, label %for.cond13.preheader.us, !llvm.loop !16

for.body:                                         ; preds = %for.body.preheader52, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader52 ]
  %arrayidx6 = getelementptr inbounds nuw [16 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %14 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %mul = shl nsw i32 %14, 1
  %arrayidx8 = getelementptr inbounds nuw [16 x i32], ptr %erbei, i64 0, i64 %indvars.iv
  store i32 %mul, ptr %arrayidx8, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond13.preheader.us.preheader, label %for.body, !llvm.loop !17

for.end28:                                        ; preds = %for.cond13.for.inc26_crit_edge.us, %for.cond3.preheader
  %sum.2.lcssa = phi i32 [ 0, %for.cond3.preheader ], [ %spec.select.us.lcssa, %for.cond13.for.inc26_crit_edge.us ]
  %call29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %sum.2.lcssa)
  %.pre = load i32, ptr %arrayidx32.phi.trans.insert, align 4, !tbaa !5
  br label %if.end30

if.end30:                                         ; preds = %for.end28, %for.cond
  %15 = phi i32 [ %.pre, %for.end28 ], [ %0, %for.cond ]
  %i.1 = phi i32 [ -1, %for.end28 ], [ %i.0, %for.cond ]
  %cmp33 = icmp eq i32 %15, -1
  %inc37 = add nsw i32 %i.1, 1
  br i1 %cmp33, label %for.end38, label %for.cond, !llvm.loop !18

for.end38:                                        ; preds = %if.end30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %erbei) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sz) #5
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
!14 = distinct !{!14, !10, !11, !12, !13}
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11, !12}
!18 = distinct !{!18, !10, !11}
