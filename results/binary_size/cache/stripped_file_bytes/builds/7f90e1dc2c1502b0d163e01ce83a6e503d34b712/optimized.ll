; ModuleID = '<stdin>'
source_filename = "/tmp/tmpe_35yufa.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [25 x i32], align 16
  %b = alloca [25 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %b) #5
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp20 = icmp sgt i32 %0, 0
  br i1 %cmp20, label %for.body, label %for.cond.cleanup7.thread

for.cond5.preheader:                              ; preds = %for.body
  %cmp625 = icmp sgt i32 %5, 0
  br i1 %cmp625, label %for.cond9.preheader.preheader, label %for.cond.cleanup7.thread

for.cond9.preheader.preheader:                    ; preds = %for.cond5.preheader
  %1 = add nsw i32 %5, -1
  %2 = zext nneg i32 %1 to i64
  %3 = zext nneg i32 %5 to i64
  %4 = zext nneg i32 %5 to i64
  br label %for.cond9.preheader

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [25 x i32], ptr %b, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  %arrayidx2 = getelementptr inbounds nuw [25 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp, label %for.body, label %for.cond5.preheader, !llvm.loop !9

for.cond5.loopexit:                               ; preds = %for.inc30, %for.cond9.preheader
  %cmp6 = icmp sgt i64 %indvars.iv38, 1
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, -1
  br i1 %cmp6, label %for.cond9.preheader, label %for.body40.preheader, !llvm.loop !12

for.cond9.preheader:                              ; preds = %for.cond9.preheader.preheader, %for.cond5.loopexit
  %indvars.iv38 = phi i64 [ %3, %for.cond9.preheader.preheader ], [ %indvars.iv.next39, %for.cond5.loopexit ]
  %indvars.iv33 = phi i64 [ %2, %for.cond9.preheader.preheader ], [ %indvars.iv.next34, %for.cond5.loopexit ]
  %indvars.iv.next39 = add nsw i64 %indvars.iv38, -1
  %cmp1022.not = icmp sgt i64 %indvars.iv38, %4
  br i1 %cmp1022.not, label %for.cond5.loopexit, label %for.body12.lr.ph

for.body12.lr.ph:                                 ; preds = %for.cond9.preheader
  %arrayidx15 = getelementptr inbounds nuw [25 x i32], ptr %a, i64 0, i64 %indvars.iv.next39
  %arrayidx21 = getelementptr inbounds nuw [25 x i32], ptr %b, i64 0, i64 %indvars.iv.next39
  br label %for.body12

for.cond.cleanup7.thread:                         ; preds = %for.cond5.preheader, %entry
  %7 = load i32, ptr %b, align 16, !tbaa !5
  br label %for.cond.cleanup39

for.body40.preheader:                             ; preds = %for.cond5.loopexit
  %8 = load i32, ptr %b, align 16, !tbaa !5
  %wide.trip.count = zext nneg i32 %5 to i64
  %min.iters.check = icmp ult i32 %5, 4
  br i1 %min.iters.check, label %for.body40.preheader50, label %vector.ph

vector.ph:                                        ; preds = %for.body40.preheader
  %n.vec = and i64 %3, 2147483644
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %8, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %10, %vector.body ]
  %9 = getelementptr inbounds nuw [25 x i32], ptr %b, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %9, align 16, !tbaa !5
  %10 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi)
  %index.next = add nuw i64 %index, 4
  %11 = icmp eq i64 %index.next, %n.vec
  br i1 %11, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %12 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %10)
  %cmp.n = icmp eq i64 %n.vec, %3
  br i1 %cmp.n, label %for.cond.cleanup39, label %for.body40.preheader50

for.body40.preheader50:                           ; preds = %for.body40.preheader, %middle.block
  %indvars.iv41.ph = phi i64 [ 0, %for.body40.preheader ], [ %n.vec, %middle.block ]
  %max.028.ph = phi i32 [ %8, %for.body40.preheader ], [ %12, %middle.block ]
  br label %for.body40

for.body12:                                       ; preds = %for.body12.lr.ph, %for.inc30
  %indvars.iv35 = phi i64 [ %indvars.iv33, %for.body12.lr.ph ], [ %indvars.iv.next36, %for.inc30 ]
  %cmp13.not = icmp eq i64 %indvars.iv.next39, %indvars.iv35
  br i1 %cmp13.not, label %for.inc30, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body12
  %13 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %arrayidx17 = getelementptr inbounds nuw [25 x i32], ptr %a, i64 0, i64 %indvars.iv35
  %14 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %cmp18.not = icmp slt i32 %13, %14
  br i1 %cmp18.not, label %for.inc30, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %land.lhs.true
  %15 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %arrayidx23 = getelementptr inbounds nuw [25 x i32], ptr %b, i64 0, i64 %indvars.iv35
  %16 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %cmp24.not = icmp sgt i32 %15, %16
  br i1 %cmp24.not, label %for.inc30, label %if.then

if.then:                                          ; preds = %land.lhs.true19
  %add = add nsw i32 %16, 1
  store i32 %add, ptr %arrayidx21, align 4, !tbaa !5
  br label %for.inc30

for.inc30:                                        ; preds = %for.body12, %land.lhs.true, %land.lhs.true19, %if.then
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %17 = trunc nuw i64 %indvars.iv.next36 to i32
  %cmp10 = icmp sgt i32 %5, %17
  br i1 %cmp10, label %for.body12, label %for.cond5.loopexit, !llvm.loop !16

for.cond.cleanup39:                               ; preds = %for.body40, %middle.block, %for.cond.cleanup7.thread
  %max.0.lcssa = phi i32 [ %7, %for.cond.cleanup7.thread ], [ %12, %middle.block ], [ %spec.select, %for.body40 ]
  %call51 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %max.0.lcssa)
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0

for.body40:                                       ; preds = %for.body40.preheader50, %for.body40
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.body40 ], [ %indvars.iv41.ph, %for.body40.preheader50 ]
  %max.028 = phi i32 [ %spec.select, %for.body40 ], [ %max.028.ph, %for.body40.preheader50 ]
  %arrayidx42 = getelementptr inbounds nuw [25 x i32], ptr %b, i64 0, i64 %indvars.iv41
  %18 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %18, i32 %max.028)
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup39, label %for.body40, !llvm.loop !17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11, !14}
