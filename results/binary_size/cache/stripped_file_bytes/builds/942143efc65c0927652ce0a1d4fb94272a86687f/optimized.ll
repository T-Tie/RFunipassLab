; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9b8kk7p3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%struct.anon = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [30 x %struct.anon], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp20 = icmp sgt i32 %0, 0
  br i1 %cmp20, label %for.body, label %for.end51

for.cond4.preheader:                              ; preds = %for.body
  %cmp525 = icmp sgt i32 %3, 0
  br i1 %cmp525, label %for.cond7.preheader.preheader, label %for.end51

for.cond7.preheader.preheader:                    ; preds = %for.cond4.preheader
  %1 = zext nneg i32 %3 to i64
  %2 = zext nneg i32 %3 to i64
  br label %for.cond7.preheader

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [30 x %struct.anon], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %r = getelementptr inbounds nuw i8, ptr %arrayidx, i64 4
  store i32 1, ptr %r, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp, label %for.body, label %for.cond4.preheader, !llvm.loop !11

for.cond4.loopexit:                               ; preds = %for.inc32, %for.cond7.preheader
  %cmp5 = icmp sgt i64 %indvars.iv34, 1
  br i1 %cmp5, label %for.cond7.preheader, label %for.body39.preheader, !llvm.loop !14

for.cond7.preheader:                              ; preds = %for.cond7.preheader.preheader, %for.cond4.loopexit
  %indvars.iv34 = phi i64 [ %1, %for.cond7.preheader.preheader ], [ %indvars.iv.next35, %for.cond4.loopexit ]
  %indvars.iv.next35 = add nsw i64 %indvars.iv34, -1
  %cmp822 = icmp slt i64 %indvars.iv34, %2
  br i1 %cmp822, label %for.body9.lr.ph, label %for.cond4.loopexit

for.body9.lr.ph:                                  ; preds = %for.cond7.preheader
  %arrayidx11 = getelementptr inbounds nuw [30 x %struct.anon], ptr %a, i64 0, i64 %indvars.iv.next35
  %5 = load i32, ptr %arrayidx11, align 8, !tbaa !15
  %r19 = getelementptr inbounds nuw i8, ptr %arrayidx11, i64 4
  br label %for.body9

for.body39.preheader:                             ; preds = %for.cond4.loopexit
  %wide.trip.count = zext nneg i32 %3 to i64
  %min.iters.check = icmp ult i32 %3, 5
  br i1 %min.iters.check, label %for.body39.preheader49, label %vector.ph

vector.ph:                                        ; preds = %for.body39.preheader
  %n.mod.vf = and i64 %1, 3
  %6 = icmp eq i64 %n.mod.vf, 0
  %7 = select i1 %6, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %1, %7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %9, %vector.body ]
  %8 = getelementptr inbounds nuw [30 x %struct.anon], ptr %a, i64 0, i64 %index, i32 1
  %wide.vec = load <8 x i32>, ptr %8, align 4, !tbaa !9
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %9 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %strided.vec)
  %index.next = add nuw i64 %index, 4
  %10 = icmp eq i64 %index.next, %n.vec
  br i1 %10, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %11 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %9)
  br label %for.body39.preheader49

for.body39.preheader49:                           ; preds = %for.body39.preheader, %middle.block
  %indvars.iv40.ph = phi i64 [ 0, %for.body39.preheader ], [ %n.vec, %middle.block ]
  %k.030.ph = phi i32 [ 1, %for.body39.preheader ], [ %11, %middle.block ]
  br label %for.body39

for.body9:                                        ; preds = %for.body9.lr.ph, %for.inc32
  %indvars.iv36 = phi i64 [ %indvars.iv34, %for.body9.lr.ph ], [ %indvars.iv.next37, %for.inc32 ]
  %arrayidx14 = getelementptr inbounds nuw [30 x %struct.anon], ptr %a, i64 0, i64 %indvars.iv36
  %12 = load i32, ptr %arrayidx14, align 8, !tbaa !15
  %cmp16.not = icmp slt i32 %5, %12
  br i1 %cmp16.not, label %for.inc32, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body9
  %13 = load i32, ptr %r19, align 4, !tbaa !9
  %r22 = getelementptr inbounds nuw i8, ptr %arrayidx14, i64 4
  %14 = load i32, ptr %r22, align 4, !tbaa !9
  %add23 = add nsw i32 %14, 1
  %cmp24.not = icmp sgt i32 %13, %add23
  br i1 %cmp24.not, label %for.inc32, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 %add23, ptr %r19, align 4, !tbaa !9
  br label %for.inc32

for.inc32:                                        ; preds = %for.body9, %land.lhs.true, %if.then
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %15 = trunc nuw i64 %indvars.iv.next37 to i32
  %cmp8 = icmp sgt i32 %3, %15
  br i1 %cmp8, label %for.body9, label %for.cond4.loopexit, !llvm.loop !19

for.body39:                                       ; preds = %for.body39.preheader49, %for.body39
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.body39 ], [ %indvars.iv40.ph, %for.body39.preheader49 ]
  %k.030 = phi i32 [ %spec.select, %for.body39 ], [ %k.030.ph, %for.body39.preheader49 ]
  %r42 = getelementptr inbounds nuw [30 x %struct.anon], ptr %a, i64 0, i64 %indvars.iv40, i32 1
  %16 = load i32, ptr %r42, align 4, !tbaa !9
  %spec.select = call i32 @llvm.smax.i32(i32 %k.030, i32 %16)
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count
  br i1 %exitcond.not, label %for.end51, label %for.body39, !llvm.loop !20

for.end51:                                        ; preds = %for.body39, %entry, %for.cond4.preheader
  %k.0.lcssa = phi i32 [ 1, %for.cond4.preheader ], [ 1, %entry ], [ %spec.select, %for.body39 ]
  %call52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %k.0.lcssa)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %a) #5
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
!9 = !{!10, !6, i64 4}
!10 = !{!"_ZTSZ4mainE3$_0", !6, i64 0, !6, i64 4}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = !{!10, !6, i64 0}
!16 = distinct !{!16, !12, !13, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !12, !13}
!20 = distinct !{!20, !12, !13, !17}
