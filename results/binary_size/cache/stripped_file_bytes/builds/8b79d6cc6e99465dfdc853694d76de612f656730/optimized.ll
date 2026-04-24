; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0cb_cxg9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [26 x i32], align 16
  %d = alloca [26 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %s) #5
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %d) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %0, 0
  br i1 %cmp24, label %for.body, label %for.end38

for.cond2.preheader:                              ; preds = %for.body
  %cmp331 = icmp sgt i32 %3, 0
  br i1 %cmp331, label %for.cond5.preheader.preheader, label %for.end38

for.cond5.preheader.preheader:                    ; preds = %for.cond2.preheader
  %1 = zext nneg i32 %3 to i64
  %2 = zext nneg i32 %3 to i64
  br label %for.cond5.preheader

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %add.ptr = getelementptr inbounds nuw i32, ptr %s, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %add.ptr)
  %arrayidx = getelementptr inbounds nuw [26 x i32], ptr %d, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp, label %for.body, label %for.cond2.preheader, !llvm.loop !9

for.cond5.preheader:                              ; preds = %for.cond5.preheader.preheader, %for.end20
  %indvars.iv40 = phi i64 [ %1, %for.cond5.preheader.preheader ], [ %indvars.iv.next41, %for.end20 ]
  %indvars.iv.next41 = add nsw i64 %indvars.iv40, -1
  %cmp626 = icmp slt i64 %indvars.iv40, %2
  br i1 %cmp626, label %for.body7.lr.ph, label %for.end20

for.body7.lr.ph:                                  ; preds = %for.cond5.preheader
  %arrayidx12 = getelementptr inbounds nuw [26 x i32], ptr %s, i64 0, i64 %indvars.iv.next41
  br label %for.body7

for.body28.preheader:                             ; preds = %for.end20
  %wide.trip.count = zext nneg i32 %3 to i64
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %for.body28.preheader55, label %vector.ph

vector.ph:                                        ; preds = %for.body28.preheader
  %n.vec = and i64 %1, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %6, %vector.body ]
  %5 = getelementptr inbounds nuw [26 x i32], ptr %d, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %5, align 16, !tbaa !5
  %6 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi)
  %index.next = add nuw i64 %index, 4
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %8 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %6)
  %cmp.n = icmp eq i64 %n.vec, %1
  br i1 %cmp.n, label %for.end38, label %for.body28.preheader55

for.body28.preheader55:                           ; preds = %for.body28.preheader, %middle.block
  %indvars.iv46.ph = phi i64 [ 0, %for.body28.preheader ], [ %n.vec, %middle.block ]
  %k.236.ph = phi i32 [ 0, %for.body28.preheader ], [ %8, %middle.block ]
  br label %for.body28

for.body7:                                        ; preds = %for.body7.lr.ph, %for.inc18
  %indvars.iv42 = phi i64 [ %indvars.iv40, %for.body7.lr.ph ], [ %indvars.iv.next43, %for.inc18 ]
  %k.028 = phi i32 [ 0, %for.body7.lr.ph ], [ %k.1, %for.inc18 ]
  %arrayidx9 = getelementptr inbounds nuw [26 x i32], ptr %d, i64 0, i64 %indvars.iv42
  %9 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %k.028, %9
  br i1 %cmp10, label %land.lhs.true, label %for.inc18

land.lhs.true:                                    ; preds = %for.body7
  %10 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %arrayidx14 = getelementptr inbounds nuw [26 x i32], ptr %s, i64 0, i64 %indvars.iv42
  %11 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15.not = icmp slt i32 %10, %11
  %spec.select = select i1 %cmp15.not, i32 %k.028, i32 %9
  br label %for.inc18

for.inc18:                                        ; preds = %land.lhs.true, %for.body7
  %k.1 = phi i32 [ %k.028, %for.body7 ], [ %spec.select, %land.lhs.true ]
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %12 = trunc nuw i64 %indvars.iv.next43 to i32
  %cmp6 = icmp sgt i32 %3, %12
  br i1 %cmp6, label %for.body7, label %for.end20.loopexit, !llvm.loop !15

for.end20.loopexit:                               ; preds = %for.inc18
  %13 = add nuw nsw i32 %k.1, 1
  br label %for.end20

for.end20:                                        ; preds = %for.end20.loopexit, %for.cond5.preheader
  %k.0.lcssa = phi i32 [ 1, %for.cond5.preheader ], [ %13, %for.end20.loopexit ]
  %arrayidx23 = getelementptr inbounds nuw [26 x i32], ptr %d, i64 0, i64 %indvars.iv.next41
  store i32 %k.0.lcssa, ptr %arrayidx23, align 4, !tbaa !5
  %cmp3 = icmp sgt i64 %indvars.iv40, 1
  br i1 %cmp3, label %for.cond5.preheader, label %for.body28.preheader, !llvm.loop !16

for.body28:                                       ; preds = %for.body28.preheader55, %for.body28
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.body28 ], [ %indvars.iv46.ph, %for.body28.preheader55 ]
  %k.236 = phi i32 [ %spec.select23, %for.body28 ], [ %k.236.ph, %for.body28.preheader55 ]
  %arrayidx30 = getelementptr inbounds nuw [26 x i32], ptr %d, i64 0, i64 %indvars.iv46
  %14 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %spec.select23 = call i32 @llvm.smax.i32(i32 %14, i32 %k.236)
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count
  br i1 %exitcond.not, label %for.end38, label %for.body28, !llvm.loop !17

for.end38:                                        ; preds = %for.body28, %middle.block, %entry, %for.cond2.preheader
  %k.2.lcssa = phi i32 [ 0, %for.cond2.preheader ], [ 0, %entry ], [ %8, %middle.block ], [ %spec.select23, %for.body28 ]
  %call39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %k.2.lcssa)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %d) #5
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %s) #5
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11, !13}
