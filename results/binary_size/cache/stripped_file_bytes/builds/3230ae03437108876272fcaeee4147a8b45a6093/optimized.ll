; ModuleID = '<stdin>'
source_filename = "/tmp/tmplhpg7xk8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [20000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %a) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %0, 0
  call void @llvm.assume(i1 %cmp12)
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %putchar11 = call i32 @putchar(i32 10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %for.end.loopexit, !llvm.loop !9

for.end.loopexit:                                 ; preds = %for.body
  %.pre = load i32, ptr %a, align 16, !tbaa !5
  %call4 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.pre)
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp616 = icmp sgt i32 %3, 1
  br i1 %cmp616, label %for.cond8.preheader, label %for.end28

for.cond8.preheader:                              ; preds = %for.end.loopexit, %for.inc26
  %4 = phi i32 [ %13, %for.inc26 ], [ %3, %for.end.loopexit ]
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.inc26 ], [ 1, %for.end.loopexit ]
  %arrayidx12 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv22
  %5 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %min.iters.check = icmp samesign ult i64 %indvars.iv22, 4
  br i1 %min.iters.check, label %for.body10.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond8.preheader
  %n.vec = and i64 %indvars.iv22, 9223372036854775804
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %9, %vector.body ]
  %6 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %6, align 16, !tbaa !5
  %7 = icmp eq <4 x i32> %broadcast.splat, %wide.load
  %8 = zext <4 x i1> %7 to <4 x i32>
  %9 = add <4 x i32> %vec.phi, %8
  %index.next = add nuw i64 %index, 4
  %10 = icmp eq i64 %index.next, %n.vec
  br i1 %10, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %11 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %9)
  %cmp.n = icmp eq i64 %indvars.iv22, %n.vec
  br i1 %cmp.n, label %for.end19, label %for.body10.preheader

for.body10.preheader:                             ; preds = %for.cond8.preheader, %middle.block
  %indvars.iv19.ph = phi i64 [ 0, %for.cond8.preheader ], [ %n.vec, %middle.block ]
  %k.015.ph = phi i32 [ 0, %for.cond8.preheader ], [ %11, %middle.block ]
  br label %for.body10

for.body10:                                       ; preds = %for.body10.preheader, %for.body10
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.body10 ], [ %indvars.iv19.ph, %for.body10.preheader ]
  %k.015 = phi i32 [ %spec.select, %for.body10 ], [ %k.015.ph, %for.body10.preheader ]
  %arrayidx14 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv19
  %12 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %5, %12
  %inc16 = zext i1 %cmp15 to i32
  %spec.select = add nuw nsw i32 %k.015, %inc16
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next20, %indvars.iv22
  br i1 %exitcond.not, label %for.end19, label %for.body10, !llvm.loop !15

for.end19:                                        ; preds = %for.body10, %middle.block
  %spec.select.lcssa = phi i32 [ %11, %middle.block ], [ %spec.select, %for.body10 ]
  %cmp20 = icmp eq i32 %spec.select.lcssa, 0
  br i1 %cmp20, label %if.then21, label %for.inc26

if.then21:                                        ; preds = %for.end19
  %call24 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %5)
  %.pre25 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc26

for.inc26:                                        ; preds = %for.end19, %if.then21
  %13 = phi i32 [ %4, %for.end19 ], [ %.pre25, %if.then21 ]
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %14 = sext i32 %13 to i64
  %cmp6 = icmp slt i64 %indvars.iv.next23, %14
  br i1 %cmp6, label %for.cond8.preheader, label %for.end28, !llvm.loop !16

for.end28:                                        ; preds = %for.inc26, %for.end.loopexit
  %putchar = call i32 @putchar(i32 10)
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
