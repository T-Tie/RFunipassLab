; ModuleID = '<stdin>'
source_filename = "/tmp/tmpkd_xde8i.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d\0A%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %sz = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %sz) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not16 = icmp sgt i32 %0, 0
  call void @llvm.assume(i1 %cmp.not.not16)
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp.not.not, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.body
  %.pre = load i32, ptr %sz, align 16, !tbaa !5
  %cmp418 = icmp sgt i32 %1, 0
  br i1 %cmp418, label %for.body5.preheader, label %for.end29

for.body5.preheader:                              ; preds = %for.end
  %wide.trip.count = zext nneg i32 %1 to i64
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %for.body5.preheader44, label %vector.ph

vector.ph:                                        ; preds = %for.body5.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %4, %vector.body ]
  %3 = getelementptr inbounds nuw [100 x i32], ptr %sz, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %3, align 16, !tbaa !5
  %4 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi)
  %index.next = add nuw i64 %index, 4
  %5 = icmp eq i64 %index.next, %n.vec
  br i1 %5, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %6 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %4)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.body16.preheader, label %for.body5.preheader44

for.body5.preheader44:                            ; preds = %for.body5.preheader, %middle.block
  %indvars.iv28.ph = phi i64 [ 0, %for.body5.preheader ], [ %n.vec, %middle.block ]
  %max.020.ph = phi i32 [ %.pre, %for.body5.preheader ], [ %6, %middle.block ]
  br label %for.body5

for.body16.preheader:                             ; preds = %for.body5, %middle.block
  %spec.select.lcssa = phi i32 [ %6, %middle.block ], [ %spec.select, %for.body5 ]
  %wide.trip.count34 = zext nneg i32 %1 to i64
  br label %for.body16

for.body5:                                        ; preds = %for.body5.preheader44, %for.body5
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.body5 ], [ %indvars.iv28.ph, %for.body5.preheader44 ]
  %max.020 = phi i32 [ %spec.select, %for.body5 ], [ %max.020.ph, %for.body5.preheader44 ]
  %arrayidx7 = getelementptr inbounds nuw [100 x i32], ptr %sz, i64 0, i64 %indvars.iv28
  %7 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %7, i32 %max.020)
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next29, %wide.trip.count
  br i1 %exitcond.not, label %for.body16.preheader, label %for.body5, !llvm.loop !15

for.body16:                                       ; preds = %for.body16.preheader, %for.body16
  %indvars.iv31 = phi i64 [ 0, %for.body16.preheader ], [ %indvars.iv.next32, %for.body16 ]
  %max1.024 = phi i32 [ %.pre, %for.body16.preheader ], [ %max1.1, %for.body16 ]
  %arrayidx18 = getelementptr inbounds nuw [100 x i32], ptr %sz, i64 0, i64 %indvars.iv31
  %8 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %8, %spec.select.lcssa
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 %max1.024)
  %max1.1 = select i1 %cmp19, i32 %9, i32 %max1.024
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond35.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count34
  br i1 %exitcond35.not, label %for.end29, label %for.body16, !llvm.loop !16

for.end29:                                        ; preds = %for.body16, %for.end
  %max.0.lcssa43 = phi i32 [ %.pre, %for.end ], [ %spec.select.lcssa, %for.body16 ]
  %max1.0.lcssa = phi i32 [ %.pre, %for.end ], [ %max1.1, %for.body16 ]
  %call30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %max.0.lcssa43, i32 noundef %max1.0.lcssa)
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %sz) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !10, !11, !13}
!16 = distinct !{!16, !10, !11}
