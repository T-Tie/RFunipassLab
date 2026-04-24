; ModuleID = '<stdin>'
source_filename = "/tmp/tmpt2t9wx3f.cpp"
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
  %a = alloca [8 x [8 x i32]], align 16
  %min = alloca [8 x i32], align 16
  %arrow = alloca [8 x i32], align 16
  %low = alloca [8 x i32], align 16
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %min) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %arrow) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %arrow, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %low) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %low, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %m, ptr noundef nonnull %n)
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %cmp50 = icmp sgt i32 %0, 0
  %.pre106.pre = load i32, ptr %n, align 4, !tbaa !5
  %1 = icmp sgt i32 %.pre106.pre, 0
  %or.cond = select i1 %cmp50, i1 %1, i1 false
  br i1 %or.cond, label %for.cond1.preheader, label %if.then102

for.cond1.preheader:                              ; preds = %entry, %for.inc7
  %2 = phi i32 [ %23, %for.inc7 ], [ %0, %entry ]
  %3 = phi i32 [ %24, %for.inc7 ], [ %.pre106.pre, %entry ]
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.inc7 ], [ 0, %entry ]
  %cmp248 = icmp sgt i32 %3, 0
  br i1 %cmp248, label %for.body3, label %for.inc7

for.cond10.preheader:                             ; preds = %for.inc7
  %cmp1154 = icmp slt i32 %23, 1
  br i1 %cmp1154, label %for.cond42.preheader, label %for.cond13.preheader.lr.ph

for.cond13.preheader.lr.ph:                       ; preds = %for.cond10.preheader
  %cmp1452 = icmp sgt i32 %24, 0
  br i1 %cmp1452, label %for.cond13.preheader.us.preheader, label %if.then102

for.cond13.preheader.us.preheader:                ; preds = %for.cond13.preheader.lr.ph
  %wide.trip.count86 = zext nneg i32 %23 to i64
  %wide.trip.count = zext nneg i32 %24 to i64
  %min.iters.check = icmp ult i32 %24, 4
  %n.vec = and i64 %wide.trip.count, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %for.cond13.preheader.us

for.cond13.preheader.us:                          ; preds = %for.cond13.preheader.us.preheader, %for.cond13.for.inc39_crit_edge.us
  %indvars.iv83 = phi i64 [ 0, %for.cond13.preheader.us.preheader ], [ %indvars.iv.next84, %for.cond13.for.inc39_crit_edge.us ]
  %arrayidx17.us = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv83
  %4 = load i32, ptr %arrayidx17.us, align 16, !tbaa !5
  %arrayidx35.us = getelementptr inbounds nuw [8 x i32], ptr %arrow, i64 0, i64 %indvars.iv83
  br i1 %min.iters.check, label %for.body15.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond13.preheader.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %4, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %17, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %17 ]
  %5 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv83, i64 %index
  %wide.load = load <4 x i32>, ptr %5, align 16, !tbaa !5
  %6 = icmp sgt <4 x i32> %wide.load, %broadcast.splat
  %7 = extractelement <4 x i1> %6, i64 0
  %8 = extractelement <4 x i1> %6, i64 1
  %9 = or i1 %7, %8
  %10 = extractelement <4 x i1> %6, i64 2
  %11 = or i1 %9, %10
  %12 = extractelement <4 x i1> %6, i64 3
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %vector.body
  %15 = trunc i64 %index to i32
  %16 = zext i1 %8 to i32
  %spec.select174.v = select i1 %10, i32 2, i32 %16
  %spec.select175.v = select i1 %12, i32 3, i32 %spec.select174.v
  %spec.select175 = or disjoint i32 %spec.select175.v, %15
  store i32 %spec.select175, ptr %arrayidx35.us, align 4, !tbaa !5
  br label %17

17:                                               ; preds = %vector.body, %14
  %index.next = add nuw i64 %index, 4
  %18 = icmp eq i64 %index.next, %n.vec
  br i1 %18, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %17
  br i1 %cmp.n, label %for.cond13.for.inc39_crit_edge.us, label %for.body15.us.preheader

for.body15.us.preheader:                          ; preds = %for.cond13.preheader.us, %middle.block
  %indvars.iv80.ph = phi i64 [ 0, %for.cond13.preheader.us ], [ %n.vec, %middle.block ]
  br label %for.body15.us

for.body15.us:                                    ; preds = %for.body15.us.preheader, %for.inc36.us
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %for.inc36.us ], [ %indvars.iv80.ph, %for.body15.us.preheader ]
  %arrayidx24.us = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv83, i64 %indvars.iv80
  %19 = load i32, ptr %arrayidx24.us, align 4, !tbaa !5
  %cmp27.us = icmp sgt i32 %19, %4
  br i1 %cmp27.us, label %if.then.us, label %for.inc36.us

if.then.us:                                       ; preds = %for.body15.us
  %20 = trunc nuw nsw i64 %indvars.iv80 to i32
  store i32 %20, ptr %arrayidx35.us, align 4, !tbaa !5
  br label %for.inc36.us

for.inc36.us:                                     ; preds = %if.then.us, %for.body15.us
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count
  br i1 %exitcond.not, label %for.cond13.for.inc39_crit_edge.us, label %for.body15.us, !llvm.loop !14

for.cond13.for.inc39_crit_edge.us:                ; preds = %for.inc36.us, %middle.block
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  %exitcond87.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count86
  br i1 %exitcond87.not, label %for.cond42.preheader, label %for.cond13.preheader.us, !llvm.loop !15

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv77, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %21 = load i32, ptr %n, align 4, !tbaa !5
  %22 = sext i32 %21 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %22
  br i1 %cmp2, label %for.body3, label %for.inc7.loopexit, !llvm.loop !16

for.inc7.loopexit:                                ; preds = %for.body3
  %.pre = load i32, ptr %m, align 4, !tbaa !5
  br label %for.inc7

for.inc7:                                         ; preds = %for.inc7.loopexit, %for.cond1.preheader
  %23 = phi i32 [ %.pre, %for.inc7.loopexit ], [ %2, %for.cond1.preheader ]
  %24 = phi i32 [ %21, %for.inc7.loopexit ], [ %3, %for.cond1.preheader ]
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %25 = sext i32 %23 to i64
  %cmp = icmp slt i64 %indvars.iv.next78, %25
  br i1 %cmp, label %for.cond1.preheader, label %for.cond10.preheader, !llvm.loop !17

for.cond42.preheader:                             ; preds = %for.cond13.for.inc39_crit_edge.us, %for.cond10.preheader
  %cmp4359 = icmp slt i32 %24, 1
  br i1 %cmp4359, label %for.cond76.preheader, label %for.cond45.preheader.lr.ph

for.cond45.preheader.lr.ph:                       ; preds = %for.cond42.preheader
  br i1 %cmp1154, label %if.then102, label %for.cond45.preheader.us.preheader

for.cond45.preheader.us.preheader:                ; preds = %for.cond45.preheader.lr.ph
  %wide.trip.count96 = zext nneg i32 %24 to i64
  %wide.trip.count91 = zext nneg i32 %23 to i64
  br label %for.cond45.preheader.us

for.cond45.preheader.us:                          ; preds = %for.cond45.preheader.us.preheader, %for.cond45.for.inc73_crit_edge.us
  %indvars.iv93 = phi i64 [ 0, %for.cond45.preheader.us.preheader ], [ %indvars.iv.next94, %for.cond45.for.inc73_crit_edge.us ]
  %arrayidx50.us = getelementptr inbounds nuw [8 x i32], ptr %a, i64 0, i64 %indvars.iv93
  %26 = load i32, ptr %arrayidx50.us, align 4, !tbaa !5
  %arrayidx68.us = getelementptr inbounds nuw [8 x i32], ptr %low, i64 0, i64 %indvars.iv93
  br label %for.body47.us

for.body47.us:                                    ; preds = %for.cond45.preheader.us, %for.inc70.us
  %indvars.iv88 = phi i64 [ 0, %for.cond45.preheader.us ], [ %indvars.iv.next89, %for.inc70.us ]
  %arrayidx56.us = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv88, i64 %indvars.iv93
  %27 = load i32, ptr %arrayidx56.us, align 4, !tbaa !5
  %cmp59.us = icmp slt i32 %27, %26
  br i1 %cmp59.us, label %if.then60.us, label %for.inc70.us

if.then60.us:                                     ; preds = %for.body47.us
  %28 = trunc nuw nsw i64 %indvars.iv88 to i32
  store i32 %28, ptr %arrayidx68.us, align 4, !tbaa !5
  br label %for.inc70.us

for.inc70.us:                                     ; preds = %if.then60.us, %for.body47.us
  %29 = phi i32 [ %26, %for.body47.us ], [ %27, %if.then60.us ]
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  %exitcond92.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count91
  br i1 %exitcond92.not, label %for.cond45.for.inc73_crit_edge.us, label %for.body47.us, !llvm.loop !19

for.cond45.for.inc73_crit_edge.us:                ; preds = %for.inc70.us
  %arrayidx52.us = getelementptr inbounds nuw [8 x i32], ptr %min, i64 0, i64 %indvars.iv93
  store i32 %29, ptr %arrayidx52.us, align 4, !tbaa !5
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %for.cond76.preheader, label %for.cond45.preheader.us, !llvm.loop !20

for.cond76.preheader:                             ; preds = %for.cond45.for.inc73_crit_edge.us, %for.cond42.preheader
  %brmerge = or i1 %cmp1154, %cmp4359
  br i1 %brmerge, label %if.then102, label %for.cond79.preheader.outer

for.cond79.preheader.outer:                       ; preds = %for.cond76.preheader, %for.inc98.thread
  %.ph = phi i32 [ %.pre107, %for.inc98.thread ], [ %23, %for.cond76.preheader ]
  %indvars.iv103.ph = phi i64 [ %indvars.iv.next104146, %for.inc98.thread ], [ 0, %for.cond76.preheader ]
  %30 = phi i1 [ false, %for.inc98.thread ], [ true, %for.cond76.preheader ]
  %31 = load i32, ptr %n, align 4, !tbaa !5
  %cmp8061 = icmp sgt i32 %31, 0
  %wide.trip.count101 = zext nneg i32 %31 to i64
  %32 = sext i32 %.ph to i64
  br label %for.cond79.preheader

for.cond79.preheader:                             ; preds = %for.cond79.preheader.outer, %for.inc98
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %for.inc98 ], [ %indvars.iv103.ph, %for.cond79.preheader.outer ]
  br i1 %cmp8061, label %for.body81.lr.ph, label %for.inc98

for.body81.lr.ph:                                 ; preds = %for.cond79.preheader
  %arrayidx88 = getelementptr inbounds nuw [8 x i32], ptr %arrow, i64 0, i64 %indvars.iv103
  br label %for.body81

for.body81:                                       ; preds = %for.body81.lr.ph, %for.inc95
  %indvars.iv98 = phi i64 [ 0, %for.body81.lr.ph ], [ %indvars.iv.next99, %for.inc95 ]
  %arrayidx83 = getelementptr inbounds nuw [8 x i32], ptr %min, i64 0, i64 %indvars.iv98
  %33 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %33, 0
  br i1 %tobool.not, label %for.inc95, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body81
  %arrayidx85 = getelementptr inbounds nuw [8 x i32], ptr %low, i64 0, i64 %indvars.iv98
  %34 = load i32, ptr %arrayidx85, align 4, !tbaa !5
  %35 = zext i32 %34 to i64
  %cmp86 = icmp eq i64 %indvars.iv103, %35
  br i1 %cmp86, label %land.rhs, label %for.inc95

land.rhs:                                         ; preds = %land.lhs.true
  %36 = load i32, ptr %arrayidx88, align 4, !tbaa !5
  %37 = zext i32 %36 to i64
  %cmp89 = icmp eq i64 %indvars.iv98, %37
  br i1 %cmp89, label %for.inc98.thread, label %for.inc95

for.inc95:                                        ; preds = %land.lhs.true, %for.body81, %land.rhs
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %for.inc98, label %for.body81, !llvm.loop !21

for.inc98:                                        ; preds = %for.inc95, %for.cond79.preheader
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  %cmp77 = icmp slt i64 %indvars.iv.next104, %32
  br i1 %cmp77, label %for.cond79.preheader, label %for.end100, !llvm.loop !22

for.inc98.thread:                                 ; preds = %land.rhs
  %38 = trunc nuw nsw i64 %indvars.iv98 to i32
  %39 = trunc nuw nsw i64 %indvars.iv103 to i32
  %call93 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %39, i32 noundef %38)
  %.pre107 = load i32, ptr %m, align 4, !tbaa !5
  %indvars.iv.next104146 = add nuw nsw i64 %indvars.iv103, 1
  %40 = sext i32 %.pre107 to i64
  %cmp77147 = icmp slt i64 %indvars.iv.next104146, %40
  br i1 %cmp77147, label %for.cond79.preheader.outer, label %if.end104, !llvm.loop !22

for.end100:                                       ; preds = %for.inc98
  br i1 %30, label %if.then102, label %if.end104

if.then102:                                       ; preds = %for.cond76.preheader, %entry, %for.cond13.preheader.lr.ph, %for.cond45.preheader.lr.ph, %for.end100
  %call103 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end104

if.end104:                                        ; preds = %for.inc98.thread, %if.then102, %for.end100
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %low) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %arrow) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %min) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!17 = distinct !{!17, !10, !11, !18}
!18 = !{!"llvm.loop.unswitch.partial.disable"}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11, !18}
