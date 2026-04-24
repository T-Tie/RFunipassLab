; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0tpnm1w_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %a = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %a) #5
  br label %while.cond1

while.cond1:                                      ; preds = %while.cond1.backedge, %entry
  %indvars.iv22 = phi i32 [ 0, %entry ], [ %indvars.iv22.be, %while.cond1.backedge ]
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.be, %while.cond1.backedge ]
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  switch i32 %0, label %if.end9 [
    i32 0, label %for.cond.preheader
    i32 -1, label %if.then8
  ]

for.cond.preheader:                               ; preds = %while.cond1
  %cmp1014.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp1014.not, label %for.end25, label %for.cond11.preheader.preheader

for.cond11.preheader.preheader:                   ; preds = %for.cond.preheader
  %wide.trip.count30 = zext i32 %indvars.iv22 to i64
  %min.iters.check = icmp ult i32 %indvars.iv22, 4
  %n.vec = and i64 %wide.trip.count30, 4294967292
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count30
  br label %for.cond11.preheader

if.then8:                                         ; preds = %while.cond1
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %a) #5
  ret i32 0

if.end9:                                          ; preds = %while.cond1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next23 = add nuw i32 %indvars.iv22, 1
  br label %while.cond1.backedge

while.cond1.backedge:                             ; preds = %if.end9, %for.end25
  %indvars.iv22.be = phi i32 [ %indvars.iv.next23, %if.end9 ], [ 0, %for.end25 ]
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %if.end9 ], [ 0, %for.end25 ]
  br label %while.cond1, !llvm.loop !9

for.cond11.preheader:                             ; preds = %for.cond11.preheader.preheader, %for.inc23
  %indvars.iv25 = phi i64 [ 0, %for.cond11.preheader.preheader ], [ %indvars.iv.next26, %for.inc23 ]
  %total.016 = phi i32 [ 0, %for.cond11.preheader.preheader ], [ %spec.select.lcssa, %for.inc23 ]
  %arrayidx17 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv25
  %1 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %mul = shl nsw i32 %1, 1
  br i1 %min.iters.check, label %for.body13.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond11.preheader
  %2 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %total.016, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %mul, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %2, %vector.ph ], [ %6, %vector.body ]
  %3 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %3, align 16, !tbaa !5
  %4 = icmp eq <4 x i32> %wide.load, %broadcast.splat
  %5 = zext <4 x i1> %4 to <4 x i32>
  %6 = add <4 x i32> %vec.phi, %5
  %index.next = add nuw i64 %index, 4
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %8 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %6)
  br i1 %cmp.n, label %for.inc23, label %for.body13.preheader

for.body13.preheader:                             ; preds = %for.cond11.preheader, %middle.block
  %indvars.iv19.ph = phi i64 [ 0, %for.cond11.preheader ], [ %n.vec, %middle.block ]
  %total.113.ph = phi i32 [ %total.016, %for.cond11.preheader ], [ %8, %middle.block ]
  br label %for.body13

for.body13:                                       ; preds = %for.body13.preheader, %for.body13
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.body13 ], [ %indvars.iv19.ph, %for.body13.preheader ]
  %total.113 = phi i32 [ %spec.select, %for.body13 ], [ %total.113.ph, %for.body13.preheader ]
  %arrayidx15 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv19
  %9 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %9, %mul
  %inc20 = zext i1 %cmp18 to i32
  %spec.select = add nsw i32 %total.113, %inc20
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next20, %wide.trip.count30
  br i1 %exitcond.not, label %for.inc23, label %for.body13, !llvm.loop !15

for.inc23:                                        ; preds = %for.body13, %middle.block
  %spec.select.lcssa = phi i32 [ %8, %middle.block ], [ %spec.select, %for.body13 ]
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %exitcond31.not = icmp eq i64 %indvars.iv.next26, %wide.trip.count30
  br i1 %exitcond31.not, label %for.end25, label %for.cond11.preheader, !llvm.loop !16

for.end25:                                        ; preds = %for.inc23, %for.cond.preheader
  %total.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %spec.select.lcssa, %for.inc23 ]
  %call26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %total.0.lcssa)
  br label %while.cond1.backedge
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
