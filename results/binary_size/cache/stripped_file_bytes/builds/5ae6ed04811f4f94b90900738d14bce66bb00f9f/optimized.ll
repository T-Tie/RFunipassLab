; ModuleID = '<stdin>'
source_filename = "/tmp/tmp6imq_ckc.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %h = alloca i32, align 4
  %l = alloca i32, align 4
  %sz = alloca [8 x [8 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %h) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %h, ptr noundef nonnull %l)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %sz) #4
  %0 = load i32, ptr %h, align 4, !tbaa !5
  %cmp.not.not24 = icmp sgt i32 %0, 0
  %1 = load i32, ptr %l, align 4
  %2 = icmp sgt i32 %1, 0
  %or.cond = select i1 %cmp.not.not24, i1 %2, i1 false
  br i1 %or.cond, label %for.cond1.preheader, label %if.then64

for.cond1.preheader:                              ; preds = %entry, %for.inc8
  %3 = phi i32 [ %8, %for.inc8 ], [ %0, %entry ]
  %4 = phi i32 [ %9, %for.inc8 ], [ %1, %entry ]
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.inc8 ], [ 0, %entry ]
  %cmp3.not.not22 = icmp sgt i32 %4, 0
  br i1 %cmp3.not.not22, label %for.body4, label %for.inc8

for.cond11.preheader:                             ; preds = %for.inc8
  %cmp13.not.not37 = icmp sgt i32 %8, 0
  %.pr = load i32, ptr %l, align 4
  %5 = icmp sgt i32 %.pr, 0
  %or.cond70 = select i1 %cmp13.not.not37, i1 %5, i1 false
  br i1 %or.cond70, label %for.cond15.preheader, label %if.then64

for.body4:                                        ; preds = %for.cond1.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond1.preheader ]
  %arrayidx6 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv44, i64 %indvars.iv
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %6 = load i32, ptr %l, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp3.not.not = icmp slt i64 %indvars.iv.next, %7
  br i1 %cmp3.not.not, label %for.body4, label %for.inc8.loopexit, !llvm.loop !9

for.inc8.loopexit:                                ; preds = %for.body4
  %.pre = load i32, ptr %h, align 4, !tbaa !5
  br label %for.inc8

for.inc8:                                         ; preds = %for.inc8.loopexit, %for.cond1.preheader
  %8 = phi i32 [ %.pre, %for.inc8.loopexit ], [ %3, %for.cond1.preheader ]
  %9 = phi i32 [ %6, %for.inc8.loopexit ], [ %4, %for.cond1.preheader ]
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %10 = sext i32 %8 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv.next45, %10
  br i1 %cmp.not.not, label %for.cond1.preheader, label %for.cond11.preheader, !llvm.loop !12

for.cond15.preheader:                             ; preds = %for.cond11.preheader, %for.inc60
  %11 = phi i32 [ %51, %for.inc60 ], [ %8, %for.cond11.preheader ]
  %12 = phi i32 [ %52, %for.inc60 ], [ %.pr, %for.cond11.preheader ]
  %13 = phi i32 [ %53, %for.inc60 ], [ %.pr, %for.cond11.preheader ]
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.inc60 ], [ 0, %for.cond11.preheader ]
  %f4.038 = phi i32 [ %f4.1.lcssa, %for.inc60 ], [ 0, %for.cond11.preheader ]
  %cmp17.not.not33 = icmp sgt i32 %13, 0
  br i1 %cmp17.not.not33, label %for.cond19.preheader.lr.ph, label %for.inc60

for.cond19.preheader.lr.ph:                       ; preds = %for.cond15.preheader
  %14 = trunc nuw nsw i64 %indvars.iv58 to i32
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.cond19.preheader.lr.ph, %for.inc57
  %15 = phi i32 [ %12, %for.cond19.preheader.lr.ph ], [ %49, %for.inc57 ]
  %indvars.iv55 = phi i64 [ 0, %for.cond19.preheader.lr.ph ], [ %indvars.iv.next56, %for.inc57 ]
  %16 = phi i32 [ %13, %for.cond19.preheader.lr.ph ], [ %49, %for.inc57 ]
  %f4.134 = phi i32 [ %f4.038, %for.cond19.preheader.lr.ph ], [ %f4.2, %for.inc57 ]
  %17 = load i32, ptr %h, align 4, !tbaa !5
  %cmp21.not.not26 = icmp sgt i32 %17, 0
  br i1 %cmp21.not.not26, label %for.body22.lr.ph, label %for.cond35.preheader

for.body22.lr.ph:                                 ; preds = %for.cond19.preheader
  %arrayidx30 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv58, i64 %indvars.iv55
  %18 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %wide.trip.count = zext nneg i32 %17 to i64
  %min.iters.check74 = icmp ult i32 %17, 5
  br i1 %min.iters.check74, label %for.body22.preheader, label %vector.ph75

vector.ph75:                                      ; preds = %for.body22.lr.ph
  %n.mod.vf76 = and i64 %wide.trip.count, 3
  %19 = icmp eq i64 %n.mod.vf76, 0
  %20 = select i1 %19, i64 4, i64 %n.mod.vf76
  %n.vec77 = sub nsw i64 %wide.trip.count, %20
  %broadcast.splatinsert78 = insertelement <4 x i32> poison, i32 %18, i64 0
  %broadcast.splat79 = shufflevector <4 x i32> %broadcast.splatinsert78, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph75
  %index81 = phi i64 [ 0, %vector.ph75 ], [ %index.next83, %vector.body80 ]
  %vec.phi82 = phi <4 x i1> [ zeroinitializer, %vector.ph75 ], [ %37, %vector.body80 ]
  %21 = or disjoint i64 %index81, 1
  %22 = or disjoint i64 %index81, 2
  %23 = or disjoint i64 %index81, 3
  %24 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %index81, i64 %indvars.iv55
  %25 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %21, i64 %indvars.iv55
  %26 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %22, i64 %indvars.iv55
  %27 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %23, i64 %indvars.iv55
  %28 = load i32, ptr %24, align 4, !tbaa !5
  %29 = load i32, ptr %25, align 4, !tbaa !5
  %30 = load i32, ptr %26, align 4, !tbaa !5
  %31 = load i32, ptr %27, align 4, !tbaa !5
  %32 = insertelement <4 x i32> poison, i32 %28, i64 0
  %33 = insertelement <4 x i32> %32, i32 %29, i64 1
  %34 = insertelement <4 x i32> %33, i32 %30, i64 2
  %35 = insertelement <4 x i32> %34, i32 %31, i64 3
  %36 = icmp slt <4 x i32> %35, %broadcast.splat79
  %.fr = freeze <4 x i1> %36
  %37 = or <4 x i1> %vec.phi82, %.fr
  %index.next83 = add nuw i64 %index81, 4
  %38 = icmp eq i64 %index.next83, %n.vec77
  br i1 %38, label %middle.block84, label %vector.body80, !llvm.loop !14

middle.block84:                                   ; preds = %vector.body80
  %39 = bitcast <4 x i1> %37 to i4
  %.not = icmp eq i4 %39, 0
  %rdx.select85 = zext i1 %.not to i32
  br label %for.body22.preheader

for.body22.preheader:                             ; preds = %for.body22.lr.ph, %middle.block84
  %indvars.iv47.ph = phi i64 [ 0, %for.body22.lr.ph ], [ %n.vec77, %middle.block84 ]
  %f1.027.ph = phi i32 [ 1, %for.body22.lr.ph ], [ %rdx.select85, %middle.block84 ]
  br label %for.body22

for.cond35.preheader:                             ; preds = %for.body22, %for.cond19.preheader
  %f1.0.lcssa = phi i32 [ 1, %for.cond19.preheader ], [ %spec.select, %for.body22 ]
  %cmp37.not.not29 = icmp sgt i32 %16, 0
  br i1 %cmp37.not.not29, label %for.body38.lr.ph, label %for.end52

for.body38.lr.ph:                                 ; preds = %for.cond35.preheader
  %arrayidx46 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv58, i64 %indvars.iv55
  %40 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %wide.trip.count53 = zext nneg i32 %16 to i64
  %min.iters.check = icmp ult i32 %16, 4
  br i1 %min.iters.check, label %for.body38.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body38.lr.ph
  %n.vec = and i64 %wide.trip.count53, 2147483644
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %40, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %43, %vector.body ]
  %41 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv58, i64 %index
  %wide.load = load <4 x i32>, ptr %41, align 16, !tbaa !5
  %42 = icmp sgt <4 x i32> %wide.load, %broadcast.splat
  %.fr91 = freeze <4 x i1> %42
  %43 = or <4 x i1> %vec.phi, %.fr91
  %index.next = add nuw i64 %index, 4
  %44 = icmp eq i64 %index.next, %n.vec
  br i1 %44, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %45 = bitcast <4 x i1> %43 to i4
  %.not92 = icmp eq i4 %45, 0
  %rdx.select = zext i1 %.not92 to i32
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count53
  br i1 %cmp.n, label %for.end52, label %for.body38.preheader

for.body38.preheader:                             ; preds = %for.body38.lr.ph, %middle.block
  %indvars.iv50.ph = phi i64 [ 0, %for.body38.lr.ph ], [ %n.vec, %middle.block ]
  %f2.030.ph = phi i32 [ 1, %for.body38.lr.ph ], [ %rdx.select, %middle.block ]
  br label %for.body38

for.body22:                                       ; preds = %for.body22.preheader, %for.body22
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.body22 ], [ %indvars.iv47.ph, %for.body22.preheader ]
  %f1.027 = phi i32 [ %spec.select, %for.body22 ], [ %f1.027.ph, %for.body22.preheader ]
  %arrayidx26 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv47, i64 %indvars.iv55
  %46 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %46, %18
  %spec.select = select i1 %cmp31, i32 0, i32 %f1.027
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count
  br i1 %exitcond.not, label %for.cond35.preheader, label %for.body22, !llvm.loop !18

for.body38:                                       ; preds = %for.body38.preheader, %for.body38
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.body38 ], [ %indvars.iv50.ph, %for.body38.preheader ]
  %f2.030 = phi i32 [ %spec.select21, %for.body38 ], [ %f2.030.ph, %for.body38.preheader ]
  %arrayidx42 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv58, i64 %indvars.iv50
  %47 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %cmp47 = icmp sgt i32 %47, %40
  %spec.select21 = select i1 %cmp47, i32 0, i32 %f2.030
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count53
  br i1 %exitcond54.not, label %for.end52, label %for.body38, !llvm.loop !19

for.end52:                                        ; preds = %for.body38, %middle.block, %for.cond35.preheader
  %f2.0.lcssa = phi i32 [ 1, %for.cond35.preheader ], [ %rdx.select, %middle.block ], [ %spec.select21, %for.body38 ]
  %mul = mul nuw nsw i32 %f2.0.lcssa, %f1.0.lcssa
  %cmp53.not = icmp eq i32 %mul, 0
  br i1 %cmp53.not, label %for.inc57, label %if.then54

if.then54:                                        ; preds = %for.end52
  %48 = trunc nuw nsw i64 %indvars.iv55 to i32
  %call55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %14, i32 noundef %48)
  %.pre61 = load i32, ptr %l, align 4, !tbaa !5
  br label %for.inc57

for.inc57:                                        ; preds = %for.end52, %if.then54
  %49 = phi i32 [ %.pre61, %if.then54 ], [ %15, %for.end52 ]
  %f4.2 = phi i32 [ 1, %if.then54 ], [ %f4.134, %for.end52 ]
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %50 = sext i32 %49 to i64
  %cmp17.not.not = icmp slt i64 %indvars.iv.next56, %50
  br i1 %cmp17.not.not, label %for.cond19.preheader, label %for.inc60.loopexit, !llvm.loop !20

for.inc60.loopexit:                               ; preds = %for.inc57
  %.pre62 = load i32, ptr %h, align 4, !tbaa !5
  br label %for.inc60

for.inc60:                                        ; preds = %for.inc60.loopexit, %for.cond15.preheader
  %51 = phi i32 [ %11, %for.cond15.preheader ], [ %.pre62, %for.inc60.loopexit ]
  %52 = phi i32 [ %12, %for.cond15.preheader ], [ %49, %for.inc60.loopexit ]
  %53 = phi i32 [ %13, %for.cond15.preheader ], [ %49, %for.inc60.loopexit ]
  %f4.1.lcssa = phi i32 [ %f4.038, %for.cond15.preheader ], [ %f4.2, %for.inc60.loopexit ]
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %54 = sext i32 %51 to i64
  %cmp13.not.not = icmp slt i64 %indvars.iv.next59, %54
  br i1 %cmp13.not.not, label %for.cond15.preheader, label %for.end62, !llvm.loop !21

for.end62:                                        ; preds = %for.inc60
  %55 = icmp eq i32 %f4.1.lcssa, 0
  br i1 %55, label %if.then64, label %if.end66

if.then64:                                        ; preds = %entry, %for.cond11.preheader, %for.end62
  %call65 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %for.end62
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %sz) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %h) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!14 = distinct !{!14, !10, !11, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !10, !11, !15, !16}
!18 = distinct !{!18, !10, !11, !15}
!19 = distinct !{!19, !10, !11, !15}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11, !13}
