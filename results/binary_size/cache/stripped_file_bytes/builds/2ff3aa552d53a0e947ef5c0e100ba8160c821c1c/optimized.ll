; ModuleID = '<stdin>'
source_filename = "/tmp/tmptcxxgfdd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %A = alloca [100 x [100 x i32]], align 16
  %B = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %A) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %B) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x1, ptr noundef nonnull %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp.not.not27 = icmp sgt i32 %0, 0
  %1 = load i32, ptr %y1, align 4
  %2 = icmp sgt i32 %1, 0
  %or.cond = select i1 %cmp.not.not27, i1 %2, i1 false
  br i1 %or.cond, label %for.cond1.preheader, label %for.end10

for.cond1.preheader:                              ; preds = %entry, %for.inc8
  %3 = phi i32 [ %7, %for.inc8 ], [ %0, %entry ]
  %4 = phi i32 [ %8, %for.inc8 ], [ %1, %entry ]
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.inc8 ], [ 0, %entry ]
  %cmp3.not.not25 = icmp sgt i32 %4, 0
  br i1 %cmp3.not.not25, label %for.body4, label %for.inc8

for.body4:                                        ; preds = %for.cond1.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond1.preheader ]
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %A, i64 0, i64 %indvars.iv43, i64 %indvars.iv
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %y1, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp3.not.not = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp3.not.not, label %for.body4, label %for.inc8.loopexit, !llvm.loop !9

for.inc8.loopexit:                                ; preds = %for.body4
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.inc8

for.inc8:                                         ; preds = %for.inc8.loopexit, %for.cond1.preheader
  %7 = phi i32 [ %.pre, %for.inc8.loopexit ], [ %3, %for.cond1.preheader ]
  %8 = phi i32 [ %5, %for.inc8.loopexit ], [ %4, %for.cond1.preheader ]
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %9 = sext i32 %7 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv.next44, %9
  br i1 %cmp.not.not, label %for.cond1.preheader, label %for.end10, !llvm.loop !12

for.end10:                                        ; preds = %for.inc8, %entry
  %call11 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  %10 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp14.not.not31 = icmp sgt i32 %10, 0
  %11 = load i32, ptr %y2, align 4
  %12 = icmp sgt i32 %11, 0
  %or.cond65 = select i1 %cmp14.not.not31, i1 %12, i1 false
  br i1 %or.cond65, label %for.cond16.preheader, label %for.cond31.preheader

for.cond16.preheader:                             ; preds = %for.end10, %for.inc28
  %13 = phi i32 [ %18, %for.inc28 ], [ %10, %for.end10 ]
  %14 = phi i32 [ %19, %for.inc28 ], [ %11, %for.end10 ]
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.inc28 ], [ 0, %for.end10 ]
  %cmp18.not.not29 = icmp sgt i32 %14, 0
  br i1 %cmp18.not.not29, label %for.body19, label %for.inc28

for.cond31.preheader:                             ; preds = %for.inc28, %for.end10
  %15 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp33.not.not38 = icmp sgt i32 %15, 0
  br i1 %cmp33.not.not38, label %for.body34, label %for.end69

for.body19:                                       ; preds = %for.cond16.preheader, %for.body19
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.body19 ], [ 0, %for.cond16.preheader ]
  %arrayidx23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %B, i64 0, i64 %indvars.iv49, i64 %indvars.iv46
  %call24 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx23)
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %16 = load i32, ptr %y2, align 4, !tbaa !5
  %17 = sext i32 %16 to i64
  %cmp18.not.not = icmp slt i64 %indvars.iv.next47, %17
  br i1 %cmp18.not.not, label %for.body19, label %for.inc28.loopexit, !llvm.loop !14

for.inc28.loopexit:                               ; preds = %for.body19
  %.pre61 = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.inc28

for.inc28:                                        ; preds = %for.inc28.loopexit, %for.cond16.preheader
  %18 = phi i32 [ %.pre61, %for.inc28.loopexit ], [ %13, %for.cond16.preheader ]
  %19 = phi i32 [ %16, %for.inc28.loopexit ], [ %14, %for.cond16.preheader ]
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %20 = sext i32 %18 to i64
  %cmp14.not.not = icmp slt i64 %indvars.iv.next50, %20
  br i1 %cmp14.not.not, label %for.cond16.preheader, label %for.cond31.preheader, !llvm.loop !15

for.body34:                                       ; preds = %for.cond31.preheader, %for.inc67
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.inc67 ], [ 0, %for.cond31.preheader ]
  %cmp35.not = icmp eq i64 %indvars.iv58, 0
  br i1 %cmp35.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body34
  %putchar = call i32 @putchar(i32 10)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body34
  %21 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp39.not.not36 = icmp sgt i32 %21, 0
  br i1 %cmp39.not.not36, label %for.cond41.preheader, label %for.inc67

for.cond41.preheader:                             ; preds = %if.end, %for.end55
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.end55 ], [ 0, %if.end ]
  %22 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp43.not.not33 = icmp sgt i32 %22, 0
  br i1 %cmp43.not.not33, label %for.body44.lr.ph, label %for.end55

for.body44.lr.ph:                                 ; preds = %for.cond41.preheader
  %wide.trip.count = zext nneg i32 %22 to i64
  %min.iters.check = icmp ult i32 %22, 4
  br i1 %min.iters.check, label %for.body44.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body44.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %40, %vector.body ]
  %23 = or disjoint i64 %index, 1
  %24 = or disjoint i64 %index, 2
  %25 = or disjoint i64 %index, 3
  %26 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %A, i64 0, i64 %indvars.iv58, i64 %index
  %wide.load = load <4 x i32>, ptr %26, align 16, !tbaa !5
  %27 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %B, i64 0, i64 %index, i64 %indvars.iv55
  %28 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %B, i64 0, i64 %23, i64 %indvars.iv55
  %29 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %B, i64 0, i64 %24, i64 %indvars.iv55
  %30 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %B, i64 0, i64 %25, i64 %indvars.iv55
  %31 = load i32, ptr %27, align 4, !tbaa !5
  %32 = load i32, ptr %28, align 4, !tbaa !5
  %33 = load i32, ptr %29, align 4, !tbaa !5
  %34 = load i32, ptr %30, align 4, !tbaa !5
  %35 = insertelement <4 x i32> poison, i32 %31, i64 0
  %36 = insertelement <4 x i32> %35, i32 %32, i64 1
  %37 = insertelement <4 x i32> %36, i32 %33, i64 2
  %38 = insertelement <4 x i32> %37, i32 %34, i64 3
  %39 = mul nsw <4 x i32> %38, %wide.load
  %40 = add <4 x i32> %39, %vec.phi
  %index.next = add nuw i64 %index, 4
  %41 = icmp eq i64 %index.next, %n.vec
  br i1 %41, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %42 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %40)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end55, label %for.body44.preheader

for.body44.preheader:                             ; preds = %for.body44.lr.ph, %middle.block
  %indvars.iv52.ph = phi i64 [ 0, %for.body44.lr.ph ], [ %n.vec, %middle.block ]
  %result.235.ph = phi i32 [ 0, %for.body44.lr.ph ], [ %42, %middle.block ]
  br label %for.body44

for.body44:                                       ; preds = %for.body44.preheader, %for.body44
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.body44 ], [ %indvars.iv52.ph, %for.body44.preheader ]
  %result.235 = phi i32 [ %add, %for.body44 ], [ %result.235.ph, %for.body44.preheader ]
  %arrayidx48 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %A, i64 0, i64 %indvars.iv58, i64 %indvars.iv52
  %43 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %arrayidx52 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %B, i64 0, i64 %indvars.iv52, i64 %indvars.iv55
  %44 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %mul = mul nsw i32 %44, %43
  %add = add nsw i32 %mul, %result.235
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count
  br i1 %exitcond.not, label %for.end55, label %for.body44, !llvm.loop !19

for.end55:                                        ; preds = %for.body44, %middle.block, %for.cond41.preheader
  %result.2.lcssa = phi i32 [ 0, %for.cond41.preheader ], [ %42, %middle.block ], [ %add, %for.body44 ]
  %cond = icmp eq i64 %indvars.iv55, 0
  %.str.1..str.3 = select i1 %cond, ptr @.str.1, ptr @.str.3
  %call58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.1..str.3, i32 noundef %result.2.lcssa)
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %45 = load i32, ptr %y2, align 4, !tbaa !5
  %46 = sext i32 %45 to i64
  %cmp39.not.not = icmp slt i64 %indvars.iv.next56, %46
  br i1 %cmp39.not.not, label %for.cond41.preheader, label %for.inc67, !llvm.loop !20

for.inc67:                                        ; preds = %for.end55, %if.end
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %47 = load i32, ptr %x1, align 4, !tbaa !5
  %48 = sext i32 %47 to i64
  %cmp33.not.not = icmp slt i64 %indvars.iv.next59, %48
  br i1 %cmp33.not.not, label %for.body34, label %for.end69, !llvm.loop !21

for.end69:                                        ; preds = %for.inc67, %for.cond31.preheader
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %B) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %A) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #6
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!12 = distinct !{!12, !10, !11, !13}
!13 = !{!"llvm.loop.unswitch.partial.disable"}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11, !13}
!16 = distinct !{!16, !10, !11, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !10, !11, !17}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
