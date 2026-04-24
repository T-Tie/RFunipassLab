; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9fx5gme3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [300 x i32], align 16
  %b = alloca [300 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %b) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a)
  %0 = load i32, ptr %a, align 16, !tbaa !5
  store i32 %0, ptr %b, align 16, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %1, 1
  br i1 %cmp16, label %for.body, label %for.end25.thread

for.end25.thread:                                 ; preds = %entry
  %call2730 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %0)
  br label %for.end36

for.body:                                         ; preds = %entry, %for.inc23
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.inc23 ], [ 1, %entry ]
  %k.018 = phi i32 [ %k.1, %for.inc23 ], [ 1, %entry ]
  %arrayidx4 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv22
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx4)
  %2 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %min.iters.check = icmp samesign ult i64 %indvars.iv22, 4
  br i1 %min.iters.check, label %for.body8.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body
  %n.vec = and i64 %indvars.iv22, 9223372036854775804
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %6, %vector.body ]
  %3 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %3, align 16, !tbaa !5
  %4 = icmp eq <4 x i32> %broadcast.splat, %wide.load
  %5 = zext <4 x i1> %4 to <4 x i32>
  %6 = add <4 x i32> %vec.phi, %5
  %index.next = add nuw i64 %index, 4
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %8 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %6)
  %cmp.n = icmp eq i64 %indvars.iv22, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body8.preheader

for.body8.preheader:                              ; preds = %for.body, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body ], [ %n.vec, %middle.block ]
  %r.015.ph = phi i32 [ 0, %for.body ], [ %8, %middle.block ]
  br label %for.body8

for.body8:                                        ; preds = %for.body8.preheader, %for.body8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ %indvars.iv.ph, %for.body8.preheader ]
  %r.015 = phi i32 [ %spec.select, %for.body8 ], [ %r.015.ph, %for.body8.preheader ]
  %arrayidx12 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv
  %9 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %2, %9
  %inc = zext i1 %cmp13 to i32
  %spec.select = add nuw nsw i32 %r.015, %inc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv22
  br i1 %exitcond.not, label %for.end, label %for.body8, !llvm.loop !14

for.end:                                          ; preds = %for.body8, %middle.block
  %spec.select.lcssa = phi i32 [ %8, %middle.block ], [ %spec.select, %for.body8 ]
  %cmp15 = icmp eq i32 %spec.select.lcssa, 0
  br i1 %cmp15, label %if.then16, label %for.inc23

if.then16:                                        ; preds = %for.end
  %idxprom19 = sext i32 %k.018 to i64
  %arrayidx20 = getelementptr inbounds [300 x i32], ptr %b, i64 0, i64 %idxprom19
  store i32 %2, ptr %arrayidx20, align 4, !tbaa !5
  %inc21 = add nsw i32 %k.018, 1
  br label %for.inc23

for.inc23:                                        ; preds = %for.end, %if.then16
  %k.1 = phi i32 [ %inc21, %if.then16 ], [ %k.018, %for.end ]
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %cmp = icmp slt i64 %indvars.iv.next23, %11
  br i1 %cmp, label %for.body, label %for.end25, !llvm.loop !15

for.end25:                                        ; preds = %for.inc23
  %.pre = load i32, ptr %b, align 16, !tbaa !5
  %call27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.pre)
  %cmp2919 = icmp sgt i32 %k.1, 1
  br i1 %cmp2919, label %for.body30.preheader, label %for.end36

for.body30.preheader:                             ; preds = %for.end25
  %wide.trip.count = zext nneg i32 %k.1 to i64
  br label %for.body30

for.body30:                                       ; preds = %for.body30.preheader, %for.body30
  %indvars.iv25 = phi i64 [ 1, %for.body30.preheader ], [ %indvars.iv.next26, %for.body30 ]
  %arrayidx32 = getelementptr inbounds nuw [300 x i32], ptr %b, i64 0, i64 %indvars.iv25
  %12 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %call33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %12)
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %exitcond28.not = icmp eq i64 %indvars.iv.next26, %wide.trip.count
  br i1 %exitcond28.not, label %for.end36, label %for.body30, !llvm.loop !16

for.end36:                                        ; preds = %for.body30, %for.end25.thread, %for.end25
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
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
!16 = distinct !{!16, !10, !11}
