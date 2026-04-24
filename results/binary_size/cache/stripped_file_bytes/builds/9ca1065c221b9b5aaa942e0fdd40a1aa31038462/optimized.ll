; ModuleID = '<stdin>'
source_filename = "/tmp/tmprspt9qvo.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [1000 x [1000 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4000000, ptr nonnull %a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4000000) %a, i8 0, i64 4000000, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #8
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not22 = icmp sgt i32 %0, 0
  call void @llvm.assume(i1 %cmp.not22)
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.end
  %1 = phi i32 [ %9, %for.end ], [ %0, %entry ]
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.end ], [ 1, %entry ]
  %cmp2.not20 = icmp slt i32 %1, 1
  br i1 %cmp2.not20, label %for.end, label %for.body3.lr.ph

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %2 = add nsw i64 %indvars.iv39, -1
  br label %for.body3

for.cond12.preheader:                             ; preds = %for.end
  %cmp16.not24 = icmp sgt i32 %9, 0
  call void @llvm.assume(i1 %cmp16.not24)
  %3 = add nuw i32 %9, 1
  %wide.trip.count = zext i32 %3 to i64
  %4 = zext nneg i32 %9 to i64
  %min.iters.check = icmp samesign ult i32 %9, 4
  %n.vec = and i64 %4, 2147483644
  %5 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %4
  br label %for.cond15.preheader

for.body3:                                        ; preds = %for.body3.lr.ph, %for.body3
  %indvars.iv = phi i64 [ 1, %for.body3.lr.ph ], [ %indvars.iv.next, %for.body3 ]
  %6 = add nsw i64 %indvars.iv, -1
  %arrayidx6 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %2, i64 %6
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %8 = sext i32 %7 to i64
  %cmp2.not.not = icmp slt i64 %indvars.iv, %8
  br i1 %cmp2.not.not, label %for.body3, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.body3, %for.cond1.preheader
  %putchar = call i32 @putchar(i32 10)
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %10 = sext i32 %9 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv39, %10
  br i1 %cmp.not.not, label %for.cond1.preheader, label %for.cond12.preheader, !llvm.loop !12

for.cond15.preheader:                             ; preds = %for.cond12.preheader, %for.cond15.for.inc29_crit_edge
  %indvars.iv48 = phi i64 [ 1, %for.cond12.preheader ], [ %indvars.iv.next49, %for.cond15.for.inc29_crit_edge ]
  %11 = add nsw i64 %indvars.iv48, -1
  br i1 %min.iters.check, label %for.body17.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond15.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond15.preheader ]
  %vec.phi = phi <4 x i32> [ %15, %vector.body ], [ zeroinitializer, %for.cond15.preheader ]
  %12 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %11, i64 %index
  %wide.load = load <4 x i32>, ptr %12, align 16, !tbaa !5
  %13 = icmp eq <4 x i32> %wide.load, zeroinitializer
  %14 = zext <4 x i1> %13 to <4 x i32>
  %15 = add <4 x i32> %vec.phi, %14
  %index.next = add nuw i64 %index, 4
  %16 = icmp eq i64 %index.next, %n.vec
  br i1 %16, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %17 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %15)
  br i1 %cmp.n, label %for.cond15.for.inc29_crit_edge, label %for.body17.preheader

for.body17.preheader:                             ; preds = %for.cond15.preheader, %middle.block
  %indvars.iv44.ph = phi i64 [ 1, %for.cond15.preheader ], [ %5, %middle.block ]
  %m.126.ph = phi i32 [ 0, %for.cond15.preheader ], [ %17, %middle.block ]
  br label %for.body17

for.body17:                                       ; preds = %for.body17.preheader, %for.body17
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.body17 ], [ %indvars.iv44.ph, %for.body17.preheader ]
  %m.126 = phi i32 [ %spec.select, %for.body17 ], [ %m.126.ph, %for.body17.preheader ]
  %18 = add nsw i64 %indvars.iv44, -1
  %arrayidx23 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %11, i64 %18
  %19 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %19, 0
  %inc25 = zext i1 %cmp24 to i32
  %spec.select = add nuw nsw i32 %m.126, %inc25
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count
  br i1 %exitcond.not, label %for.cond15.for.inc29_crit_edge, label %for.body17, !llvm.loop !16

for.cond15.for.inc29_crit_edge:                   ; preds = %for.body17, %middle.block
  %spec.select.lcssa = phi i32 [ %17, %middle.block ], [ %spec.select, %for.body17 ]
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %cmp13 = icmp eq i32 %spec.select.lcssa, 0
  br i1 %cmp13, label %for.cond15.preheader, label %for.cond35.preheader, !llvm.loop !17

for.cond35.preheader:                             ; preds = %for.cond15.for.inc29_crit_edge, %for.cond35.for.inc51_crit_edge
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.cond35.for.inc51_crit_edge ], [ 1, %for.cond15.for.inc29_crit_edge ]
  %20 = add nsw i64 %indvars.iv58, -1
  br label %for.body37

for.body37:                                       ; preds = %for.cond35.preheader, %for.body37
  %indvars.iv52 = phi i64 [ 1, %for.cond35.preheader ], [ %indvars.iv.next53, %for.body37 ]
  %p.131 = phi i32 [ 0, %for.cond35.preheader ], [ %spec.select19, %for.body37 ]
  %21 = add nsw i64 %indvars.iv52, -1
  %arrayidx43 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %21, i64 %20
  %22 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %22, 0
  %inc46 = zext i1 %cmp44 to i32
  %spec.select19 = add nuw nsw i32 %p.131, %inc46
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %exitcond57.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count
  br i1 %exitcond57.not, label %for.cond35.for.inc51_crit_edge, label %for.body37, !llvm.loop !18

for.cond35.for.inc51_crit_edge:                   ; preds = %for.body37
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %cmp33 = icmp eq i32 %spec.select19, 0
  br i1 %cmp33, label %for.cond35.preheader, label %for.end53, !llvm.loop !19

for.end53:                                        ; preds = %for.cond35.for.inc51_crit_edge
  %sub54 = add nsw i32 %spec.select19, -2
  %sub55 = add nsw i32 %spec.select.lcssa, -2
  %mul = mul nsw i32 %sub54, %sub55
  %call56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #8
  call void @llvm.lifetime.end.p0(i64 4000000, ptr nonnull %a) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!13 = distinct !{!13, !10, !11, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !10, !11, !14}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
