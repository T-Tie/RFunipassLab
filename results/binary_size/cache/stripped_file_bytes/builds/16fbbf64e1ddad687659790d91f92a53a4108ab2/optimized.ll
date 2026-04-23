; ModuleID = '<stdin>'
source_filename = "/tmp/tmplgfu3u9j.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\0A%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [15 x i32], align 16
  %t = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %t)
  %0 = load i32, ptr %t, align 4, !tbaa !5
  %cmp.not19 = icmp eq i32 %0, -1
  br i1 %cmp.not19, label %while.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry, %for.end21
  %1 = phi i32 [ %14, %for.end21 ], [ %0, %entry ]
  %cmp1.not10 = icmp eq i32 %1, 0
  br i1 %cmp1.not10, label %for.end21, label %for.body

for.cond4.preheader:                              ; preds = %for.body
  %2 = and i64 %indvars.iv.next, 4294967295
  %cmp515.not = icmp eq i64 %2, 0
  br i1 %cmp515.not, label %for.end21, label %for.cond7.preheader.preheader

for.cond7.preheader.preheader:                    ; preds = %for.cond4.preheader
  %wide.trip.count31 = and i64 %indvars.iv.next, 4294967295
  %min.iters.check = icmp samesign ult i64 %wide.trip.count31, 4
  %n.vec = and i64 %indvars.iv.next, 4294967292
  %cmp.n = icmp eq i64 %wide.trip.count31, %n.vec
  br label %for.cond7.preheader

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %3 = phi i32 [ %.pr, %for.body ], [ %1, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv
  store i32 %3, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %t)
  %.pr = load i32, ptr %t, align 4, !tbaa !5
  %cmp1.not = icmp eq i32 %.pr, 0
  br i1 %cmp1.not, label %for.cond4.preheader, label %for.body, !llvm.loop !9

for.cond7.preheader:                              ; preds = %for.cond7.preheader.preheader, %for.inc19
  %indvars.iv27 = phi i64 [ 0, %for.cond7.preheader.preheader ], [ %indvars.iv.next28, %for.inc19 ]
  %m.117 = phi i32 [ 0, %for.cond7.preheader.preheader ], [ %spec.select.lcssa, %for.inc19 ]
  %arrayidx11 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv27
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  br i1 %min.iters.check, label %for.body9.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond7.preheader
  %5 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %m.117, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %4, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %5, %vector.ph ], [ %10, %vector.body ]
  %6 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %6, align 16, !tbaa !5
  %7 = shl nsw <4 x i32> %wide.load, splat (i32 1)
  %8 = icmp eq <4 x i32> %broadcast.splat, %7
  %9 = zext <4 x i1> %8 to <4 x i32>
  %10 = add <4 x i32> %vec.phi, %9
  %index.next = add nuw i64 %index, 4
  %11 = icmp eq i64 %index.next, %n.vec
  br i1 %11, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %12 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %10)
  br i1 %cmp.n, label %for.inc19, label %for.body9.preheader

for.body9.preheader:                              ; preds = %for.cond7.preheader, %middle.block
  %indvars.iv23.ph = phi i64 [ 0, %for.cond7.preheader ], [ %n.vec, %middle.block ]
  %m.213.ph = phi i32 [ %m.117, %for.cond7.preheader ], [ %12, %middle.block ]
  br label %for.body9

for.body9:                                        ; preds = %for.body9.preheader, %for.body9
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.body9 ], [ %indvars.iv23.ph, %for.body9.preheader ]
  %m.213 = phi i32 [ %spec.select, %for.body9 ], [ %m.213.ph, %for.body9.preheader ]
  %arrayidx13 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv23
  %13 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %mul = shl nsw i32 %13, 1
  %cmp14 = icmp eq i32 %4, %mul
  %inc15 = zext i1 %cmp14 to i32
  %spec.select = add nsw i32 %m.213, %inc15
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count31
  br i1 %exitcond.not, label %for.inc19, label %for.body9, !llvm.loop !15

for.inc19:                                        ; preds = %for.body9, %middle.block
  %spec.select.lcssa = phi i32 [ %12, %middle.block ], [ %spec.select, %for.body9 ]
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond32.not = icmp eq i64 %indvars.iv.next28, %wide.trip.count31
  br i1 %exitcond32.not, label %for.end21, label %for.cond7.preheader, !llvm.loop !16

for.end21:                                        ; preds = %for.inc19, %for.cond.preheader, %for.cond4.preheader
  %m.1.lcssa = phi i32 [ 0, %for.cond4.preheader ], [ 0, %for.cond.preheader ], [ %spec.select.lcssa, %for.inc19 ]
  %call22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %m.1.lcssa)
  %call23 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.2, ptr noundef nonnull %t)
  %14 = load i32, ptr %t, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %14, -1
  br i1 %cmp.not, label %while.end, label %for.cond.preheader, !llvm.loop !17

while.end:                                        ; preds = %for.end21, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #5
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
!17 = distinct !{!17, !10, !11}
