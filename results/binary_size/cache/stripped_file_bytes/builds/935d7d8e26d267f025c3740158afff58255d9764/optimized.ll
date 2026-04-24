; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwu_043ye.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%d%c%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%d+%d\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %c = alloca i8, align 1
  %s = alloca [8 x [8 x i32]], align 16
  %djl = alloca [8 x i32], align 16
  %djh = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c) #5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %s) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %djl) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %djh) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %m, ptr noundef nonnull %c, ptr noundef nonnull %n)
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %0, 1
  %.pre102.pre = load i32, ptr %n, align 4, !tbaa !5
  %1 = icmp slt i32 %.pre102.pre, 1
  %brmerge154 = select i1 %cmp42, i1 true, i1 %1
  br i1 %brmerge154, label %if.then89, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.inc7
  %2 = phi i32 [ %9, %for.inc7 ], [ %0, %entry ]
  %3 = phi i32 [ %10, %for.inc7 ], [ %.pre102.pre, %entry ]
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.inc7 ], [ 0, %entry ]
  %cmp240 = icmp sgt i32 %3, 0
  br i1 %cmp240, label %for.body3, label %for.inc7

for.cond10.preheader:                             ; preds = %for.inc7
  %cmp1147 = icmp slt i32 %9, 1
  br i1 %cmp1147, label %for.cond38.preheader, label %for.body12.lr.ph

for.body12.lr.ph:                                 ; preds = %for.cond10.preheader
  %cmp1944 = icmp sgt i32 %10, 0
  br i1 %cmp1944, label %for.body12.us.preheader, label %if.then89

for.body12.us.preheader:                          ; preds = %for.body12.lr.ph
  %wide.trip.count81 = zext nneg i32 %9 to i64
  %wide.trip.count = zext nneg i32 %10 to i64
  br label %for.body12.us

for.body12.us:                                    ; preds = %for.body12.us.preheader, %for.cond18.for.inc35_crit_edge.us
  %indvars.iv78 = phi i64 [ 0, %for.body12.us.preheader ], [ %indvars.iv.next79, %for.cond18.for.inc35_crit_edge.us ]
  %arrayidx14.us = getelementptr inbounds nuw [8 x [8 x i32]], ptr %s, i64 0, i64 %indvars.iv78
  %4 = load i32, ptr %arrayidx14.us, align 16, !tbaa !5
  %arrayidx17.us = getelementptr inbounds nuw [8 x i32], ptr %djl, i64 0, i64 %indvars.iv78
  store i32 0, ptr %arrayidx17.us, align 4, !tbaa !5
  br label %for.body20.us

for.body20.us:                                    ; preds = %for.body12.us, %for.inc32.us
  %indvars.iv75 = phi i64 [ 0, %for.body12.us ], [ %indvars.iv.next76, %for.inc32.us ]
  %max.046.us = phi i32 [ %4, %for.body12.us ], [ %max.1.us, %for.inc32.us ]
  %arrayidx24.us = getelementptr inbounds nuw [8 x [8 x i32]], ptr %s, i64 0, i64 %indvars.iv78, i64 %indvars.iv75
  %5 = load i32, ptr %arrayidx24.us, align 4, !tbaa !5
  %cmp25.us = icmp sgt i32 %5, %max.046.us
  br i1 %cmp25.us, label %if.then.us, label %for.inc32.us

if.then.us:                                       ; preds = %for.body20.us
  %6 = trunc nuw nsw i64 %indvars.iv75 to i32
  store i32 %6, ptr %arrayidx17.us, align 4, !tbaa !5
  br label %for.inc32.us

for.inc32.us:                                     ; preds = %if.then.us, %for.body20.us
  %max.1.us = phi i32 [ %5, %if.then.us ], [ %max.046.us, %for.body20.us ]
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count
  br i1 %exitcond.not, label %for.cond18.for.inc35_crit_edge.us, label %for.body20.us, !llvm.loop !9

for.cond18.for.inc35_crit_edge.us:                ; preds = %for.inc32.us
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %for.cond38.preheader, label %for.body12.us, !llvm.loop !12

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %s, i64 0, i64 %indvars.iv69, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %8 = sext i32 %7 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %8
  br i1 %cmp2, label %for.body3, label %for.inc7.loopexit, !llvm.loop !13

for.inc7.loopexit:                                ; preds = %for.body3
  %.pre = load i32, ptr %m, align 4, !tbaa !5
  br label %for.inc7

for.inc7:                                         ; preds = %for.inc7.loopexit, %for.cond1.preheader
  %9 = phi i32 [ %.pre, %for.inc7.loopexit ], [ %2, %for.cond1.preheader ]
  %10 = phi i32 [ %7, %for.inc7.loopexit ], [ %3, %for.cond1.preheader ]
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %11 = sext i32 %9 to i64
  %cmp = icmp slt i64 %indvars.iv.next70, %11
  br i1 %cmp, label %for.cond1.preheader, label %for.cond10.preheader, !llvm.loop !14

for.cond38.preheader:                             ; preds = %for.cond18.for.inc35_crit_edge.us, %for.cond10.preheader
  %cmp3952 = icmp slt i32 %10, 1
  br i1 %cmp3952, label %for.cond68.preheader, label %for.body40.lr.ph

for.body40.lr.ph:                                 ; preds = %for.cond38.preheader
  br i1 %cmp1147, label %if.then89, label %for.body40.us.preheader

for.body40.us.preheader:                          ; preds = %for.body40.lr.ph
  %wide.trip.count94 = zext nneg i32 %10 to i64
  %wide.trip.count89 = zext nneg i32 %9 to i64
  br label %for.body40.us

for.body40.us:                                    ; preds = %for.body40.us.preheader, %for.cond46.for.inc65_crit_edge.us
  %indvars.iv91 = phi i64 [ 0, %for.body40.us.preheader ], [ %indvars.iv.next92, %for.cond46.for.inc65_crit_edge.us ]
  %arrayidx43.us = getelementptr inbounds nuw [8 x i32], ptr %s, i64 0, i64 %indvars.iv91
  %12 = load i32, ptr %arrayidx43.us, align 4, !tbaa !5
  %arrayidx45.us = getelementptr inbounds nuw [8 x i32], ptr %djh, i64 0, i64 %indvars.iv91
  store i32 0, ptr %arrayidx45.us, align 4, !tbaa !5
  br label %for.body48.us

for.body48.us:                                    ; preds = %for.body40.us, %for.inc62.us
  %indvars.iv86 = phi i64 [ 0, %for.body40.us ], [ %indvars.iv.next87, %for.inc62.us ]
  %min.051.us = phi i32 [ %12, %for.body40.us ], [ %min.1.us, %for.inc62.us ]
  %arrayidx52.us = getelementptr inbounds nuw [8 x [8 x i32]], ptr %s, i64 0, i64 %indvars.iv86, i64 %indvars.iv91
  %13 = load i32, ptr %arrayidx52.us, align 4, !tbaa !5
  %cmp53.us = icmp slt i32 %13, %min.051.us
  br i1 %cmp53.us, label %if.then54.us, label %for.inc62.us

if.then54.us:                                     ; preds = %for.body48.us
  %14 = trunc nuw nsw i64 %indvars.iv86 to i32
  store i32 %14, ptr %arrayidx45.us, align 4, !tbaa !5
  br label %for.inc62.us

for.inc62.us:                                     ; preds = %if.then54.us, %for.body48.us
  %min.1.us = phi i32 [ %13, %if.then54.us ], [ %min.051.us, %for.body48.us ]
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count89
  br i1 %exitcond90.not, label %for.cond46.for.inc65_crit_edge.us, label %for.body48.us, !llvm.loop !16

for.cond46.for.inc65_crit_edge.us:                ; preds = %for.inc62.us
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %for.cond68.preheader, label %for.body40.us, !llvm.loop !17

for.cond68.preheader:                             ; preds = %for.cond46.for.inc65_crit_edge.us, %for.cond38.preheader
  %brmerge = or i1 %cmp1147, %cmp3952
  br i1 %brmerge, label %if.then89, label %for.cond71.preheader

for.cond71.preheader:                             ; preds = %for.cond68.preheader, %for.inc86
  %15 = phi i32 [ %26, %for.inc86 ], [ %9, %for.cond68.preheader ]
  %16 = phi i32 [ %27, %for.inc86 ], [ %10, %for.cond68.preheader ]
  %17 = phi i32 [ %28, %for.inc86 ], [ %10, %for.cond68.preheader ]
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.inc86 ], [ 0, %for.cond68.preheader ]
  %f.060 = phi i32 [ %f.1.lcssa, %for.inc86 ], [ 1, %for.cond68.preheader ]
  %cmp7254 = icmp sgt i32 %17, 0
  br i1 %cmp7254, label %for.body73.lr.ph, label %for.inc86

for.body73.lr.ph:                                 ; preds = %for.cond71.preheader
  %arrayidx75 = getelementptr inbounds nuw [8 x i32], ptr %djl, i64 0, i64 %indvars.iv99
  %18 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  %19 = zext i32 %18 to i64
  %arrayidx78 = getelementptr inbounds nuw [8 x i32], ptr %djh, i64 0, i64 %19
  %20 = trunc nuw nsw i64 %indvars.iv99 to i32
  br label %for.body73

for.body73:                                       ; preds = %for.body73.lr.ph, %for.inc83
  %21 = phi i32 [ %16, %for.body73.lr.ph ], [ %24, %for.inc83 ]
  %indvars.iv96 = phi i64 [ 0, %for.body73.lr.ph ], [ %indvars.iv.next97, %for.inc83 ]
  %f.156 = phi i32 [ %f.060, %for.body73.lr.ph ], [ %f.2, %for.inc83 ]
  %cmp76 = icmp eq i64 %indvars.iv96, %19
  br i1 %cmp76, label %land.lhs.true, label %for.inc83

land.lhs.true:                                    ; preds = %for.body73
  %22 = load i32, ptr %arrayidx78, align 4, !tbaa !5
  %23 = zext i32 %22 to i64
  %cmp79 = icmp eq i64 %indvars.iv99, %23
  br i1 %cmp79, label %if.then80, label %for.inc83

if.then80:                                        ; preds = %land.lhs.true
  %call81 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %20, i32 noundef %18)
  %.pre103 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc83

for.inc83:                                        ; preds = %for.body73, %land.lhs.true, %if.then80
  %24 = phi i32 [ %.pre103, %if.then80 ], [ %21, %land.lhs.true ], [ %21, %for.body73 ]
  %f.2 = phi i32 [ 0, %if.then80 ], [ %f.156, %land.lhs.true ], [ %f.156, %for.body73 ]
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  %25 = sext i32 %24 to i64
  %cmp72 = icmp slt i64 %indvars.iv.next97, %25
  br i1 %cmp72, label %for.body73, label %for.inc86.loopexit, !llvm.loop !18

for.inc86.loopexit:                               ; preds = %for.inc83
  %.pre104 = load i32, ptr %m, align 4, !tbaa !5
  br label %for.inc86

for.inc86:                                        ; preds = %for.inc86.loopexit, %for.cond71.preheader
  %26 = phi i32 [ %15, %for.cond71.preheader ], [ %.pre104, %for.inc86.loopexit ]
  %27 = phi i32 [ %16, %for.cond71.preheader ], [ %24, %for.inc86.loopexit ]
  %28 = phi i32 [ %17, %for.cond71.preheader ], [ %24, %for.inc86.loopexit ]
  %f.1.lcssa = phi i32 [ %f.060, %for.cond71.preheader ], [ %f.2, %for.inc86.loopexit ]
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  %29 = sext i32 %26 to i64
  %cmp69 = icmp slt i64 %indvars.iv.next100, %29
  br i1 %cmp69, label %for.cond71.preheader, label %for.end88, !llvm.loop !19

for.end88:                                        ; preds = %for.inc86
  %30 = icmp eq i32 %f.1.lcssa, 0
  br i1 %30, label %if.end91, label %if.then89

if.then89:                                        ; preds = %entry, %for.cond68.preheader, %for.body40.lr.ph, %for.body12.lr.ph, %for.end88
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %for.end88
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %djh) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %djl) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %s) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #5
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
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11, !15}
!15 = !{!"llvm.loop.unswitch.partial.disable"}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11, !15}
