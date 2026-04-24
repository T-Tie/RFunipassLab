; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnuk1qlk2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [15 x i32], align 16
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #5
  %call24 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %tmp)
  %0 = load i32, ptr %tmp, align 4, !tbaa !5
  store i32 %0, ptr %a, align 16, !tbaa !5
  %cmp25 = icmp eq i32 %0, -1
  br i1 %cmp25, label %while.end31, label %while.cond1.preheader

while.cond1.preheader:                            ; preds = %entry, %for.end29
  %call313 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %tmp)
  %1 = load i32, ptr %tmp, align 4, !tbaa !5
  %cmp414 = icmp eq i32 %1, 0
  br i1 %cmp414, label %for.end29, label %if.end6

for.body.preheader:                               ; preds = %if.end6
  %2 = add nuw i64 %indvars.iv, 2
  %wide.trip.count35 = and i64 %indvars.iv.next, 4294967295
  %wide.trip.count = and i64 %2, 4294967295
  br label %for.body11.lr.ph

if.end6:                                          ; preds = %while.cond1.preheader, %if.end6
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end6 ], [ 0, %while.cond1.preheader ]
  %3 = phi i32 [ %4, %if.end6 ], [ %1, %while.cond1.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx7 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv.next
  store i32 %3, ptr %arrayidx7, align 4, !tbaa !5
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %tmp)
  %4 = load i32, ptr %tmp, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %for.body.preheader, label %if.end6, !llvm.loop !9

for.cond.loopexit:                                ; preds = %for.body11, %middle.block
  %NO.2.lcssa = phi i32 [ %18, %middle.block ], [ %NO.2, %for.body11 ]
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond36.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count35
  br i1 %exitcond36.not, label %for.end29, label %for.body11.lr.ph, !llvm.loop !12

for.body11.lr.ph:                                 ; preds = %for.cond.loopexit, %for.body.preheader
  %indvars.iv32 = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next33, %for.cond.loopexit ]
  %indvars.iv27 = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next28, %for.cond.loopexit ]
  %NO.022 = phi i32 [ 0, %for.body.preheader ], [ %NO.2.lcssa, %for.cond.loopexit ]
  %5 = xor i64 %indvars.iv32, -1
  %6 = add nsw i64 %wide.trip.count, %5
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %arrayidx15 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv32
  %7 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %mul = shl nsw i32 %7, 1
  %min.iters.check = icmp ult i64 %6, 4
  br i1 %min.iters.check, label %for.body11.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body11.lr.ph
  %n.vec = and i64 %6, -4
  %8 = add i64 %indvars.iv27, %n.vec
  %9 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %NO.022, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %7, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert39 = insertelement <4 x i32> poison, i32 %mul, i64 0
  %broadcast.splat40 = shufflevector <4 x i32> %broadcast.splatinsert39, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %9, %vector.ph ], [ %16, %vector.body ]
  %offset.idx = add i64 %indvars.iv27, %index
  %10 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %10, align 4, !tbaa !5
  %11 = icmp eq <4 x i32> %wide.load, %broadcast.splat40
  %12 = shl nsw <4 x i32> %wide.load, splat (i32 1)
  %13 = icmp eq <4 x i32> %broadcast.splat, %12
  %14 = select <4 x i1> %11, <4 x i1> splat (i1 true), <4 x i1> %13
  %15 = zext <4 x i1> %14 to <4 x i32>
  %16 = add <4 x i32> %vec.phi, %15
  %index.next = add nuw i64 %index, 4
  %17 = icmp eq i64 %index.next, %n.vec
  br i1 %17, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %18 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %16)
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %for.cond.loopexit, label %for.body11.preheader

for.body11.preheader:                             ; preds = %for.body11.lr.ph, %middle.block
  %indvars.iv29.ph = phi i64 [ %indvars.iv27, %for.body11.lr.ph ], [ %8, %middle.block ]
  %NO.117.ph = phi i32 [ %NO.022, %for.body11.lr.ph ], [ %18, %middle.block ]
  br label %for.body11

for.body11:                                       ; preds = %for.body11.preheader, %for.body11
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.body11 ], [ %indvars.iv29.ph, %for.body11.preheader ]
  %NO.117 = phi i32 [ %NO.2, %for.body11 ], [ %NO.117.ph, %for.body11.preheader ]
  %arrayidx13 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv29
  %19 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %19, %mul
  %mul21 = shl nsw i32 %19, 1
  %cmp22 = icmp eq i32 %7, %mul21
  %or.cond = select i1 %cmp16, i1 true, i1 %cmp22
  %inc24 = zext i1 %or.cond to i32
  %NO.2 = add nsw i32 %NO.117, %inc24
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next30, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.loopexit, label %for.body11, !llvm.loop !16

for.end29:                                        ; preds = %for.cond.loopexit, %while.cond1.preheader
  %NO.0.lcssa = phi i32 [ 0, %while.cond1.preheader ], [ %NO.2.lcssa, %for.cond.loopexit ]
  %call30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %NO.0.lcssa)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %tmp)
  %20 = load i32, ptr %tmp, align 4, !tbaa !5
  store i32 %20, ptr %a, align 16, !tbaa !5
  %cmp = icmp eq i32 %20, -1
  br i1 %cmp, label %while.end31, label %while.cond1.preheader, !llvm.loop !17

while.end31:                                      ; preds = %for.end29, %entry
  %21 = load ptr, ptr @stdin, align 8, !tbaa !18
  %call.i = call i32 @getc(ptr noundef %21)
  %22 = load ptr, ptr @stdin, align 8, !tbaa !18
  %call.i12 = call i32 @getc(ptr noundef %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #5
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

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #3

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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !10, !11, !14}
!17 = distinct !{!17, !10, !11}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTS8_IO_FILE", !20, i64 0}
!20 = !{!"any pointer", !7, i64 0}
