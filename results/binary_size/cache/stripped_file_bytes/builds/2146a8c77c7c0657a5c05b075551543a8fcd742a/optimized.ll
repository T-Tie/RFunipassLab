; ModuleID = '<stdin>'
source_filename = "/tmp/tmpgl16x76z.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %s = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %s) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i = call i32 @getc(ptr noundef %0)
  %1 = load i32, ptr %n, align 4, !tbaa !10
  %cmp15 = icmp sgt i32 %1, 0
  call void @llvm.assume(i1 %cmp15)
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %s, i64 0, i64 %indvars.iv
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %2 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i12 = call i32 @getc(ptr noundef %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr %n, align 4, !tbaa !10
  %4 = sext i32 %3 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp, label %for.body, label %for.end.loopexit, !llvm.loop !12

for.end.loopexit:                                 ; preds = %for.body
  %.pre = load i32, ptr %s, align 16, !tbaa !10
  %call5 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.pre)
  %5 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i13 = call i32 @getc(ptr noundef %5)
  %6 = load i32, ptr %n, align 4, !tbaa !10
  %cmp819 = icmp sgt i32 %6, 1
  br i1 %cmp819, label %for.cond10.preheader, label %for.end30

for.cond10.preheader:                             ; preds = %for.end.loopexit, %if.end27
  %7 = phi i32 [ %17, %if.end27 ], [ %6, %for.end.loopexit ]
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %if.end27 ], [ 1, %for.end.loopexit ]
  %arrayidx14 = getelementptr inbounds nuw [100 x i32], ptr %s, i64 0, i64 %indvars.iv25
  %8 = load i32, ptr %arrayidx14, align 4, !tbaa !10
  %min.iters.check = icmp samesign ult i64 %indvars.iv25, 4
  br i1 %min.iters.check, label %for.body12.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond10.preheader
  %n.vec = and i64 %indvars.iv25, 9223372036854775804
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %8, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %12, %vector.body ]
  %9 = getelementptr inbounds nuw [100 x i32], ptr %s, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %9, align 16, !tbaa !10
  %10 = icmp ne <4 x i32> %broadcast.splat, %wide.load
  %11 = zext <4 x i1> %10 to <4 x i32>
  %12 = add <4 x i32> %vec.phi, %11
  %index.next = add nuw i64 %index, 4
  %13 = icmp eq i64 %index.next, %n.vec
  br i1 %13, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %14 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %12)
  %cmp.n = icmp eq i64 %indvars.iv25, %n.vec
  br i1 %cmp.n, label %for.end21, label %for.body12.preheader

for.body12.preheader:                             ; preds = %for.cond10.preheader, %middle.block
  %indvars.iv22.ph = phi i64 [ 0, %for.cond10.preheader ], [ %n.vec, %middle.block ]
  %j.118.ph = phi i32 [ 0, %for.cond10.preheader ], [ %14, %middle.block ]
  br label %for.body12

for.body12:                                       ; preds = %for.body12.preheader, %for.body12
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.body12 ], [ %indvars.iv22.ph, %for.body12.preheader ]
  %j.118 = phi i32 [ %spec.select, %for.body12 ], [ %j.118.ph, %for.body12.preheader ]
  %arrayidx16 = getelementptr inbounds nuw [100 x i32], ptr %s, i64 0, i64 %indvars.iv22
  %15 = load i32, ptr %arrayidx16, align 4, !tbaa !10
  %cmp17.not = icmp ne i32 %8, %15
  %inc18 = zext i1 %cmp17.not to i32
  %spec.select = add nuw nsw i32 %j.118, %inc18
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next23, %indvars.iv25
  br i1 %exitcond.not, label %for.end21, label %for.body12, !llvm.loop !18

for.end21:                                        ; preds = %for.body12, %middle.block
  %spec.select.lcssa = phi i32 [ %14, %middle.block ], [ %spec.select, %for.body12 ]
  %16 = zext nneg i32 %spec.select.lcssa to i64
  %cmp22 = icmp eq i64 %indvars.iv25, %16
  br i1 %cmp22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %for.end21
  %call26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %8)
  %.pre28 = load i32, ptr %n, align 4, !tbaa !10
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %for.end21
  %17 = phi i32 [ %.pre28, %if.then23 ], [ %7, %for.end21 ]
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %18 = sext i32 %17 to i64
  %cmp8 = icmp slt i64 %indvars.iv.next26, %18
  br i1 %cmp8, label %for.cond10.preheader, label %for.end30, !llvm.loop !19

for.end30:                                        ; preds = %if.end27, %for.end.loopexit
  %putchar = call i32 @putchar(i32 10)
  %19 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i14 = call i32 @getc(ptr noundef %19)
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %s) #7
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
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #3

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
!6 = !{!"p1 _ZTS8_IO_FILE", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !13, !14, !16}
!19 = distinct !{!19, !13, !14}
