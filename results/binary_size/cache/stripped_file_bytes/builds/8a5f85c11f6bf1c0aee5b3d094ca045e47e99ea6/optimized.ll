; ModuleID = '<stdin>'
source_filename = "/tmp/tmprf1lput4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x1, ptr noundef nonnull %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 3
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #7
  %cmp47 = icmp sgt i32 %0, 0
  br i1 %cmp47, label %for.body.lr.ph, label %for.end15

for.body.lr.ph:                                   ; preds = %entry
  %1 = load i32, ptr %y1, align 4, !tbaa !5
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %for.body, label %for.body.lr.ph.split.us

for.body.lr.ph.split.us:                          ; preds = %for.body.lr.ph
  %conv2.us = sext i32 %1 to i64
  %mul3.us = shl nsw i64 %conv2.us, 2
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us, %for.body.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.us ], [ 0, %for.body.lr.ph.split.us ]
  %call4.us = call noalias ptr @malloc(i64 noundef %mul3.us) #7
  %arrayidx.us = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv
  store ptr %call4.us, ptr %arrayidx.us, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end15, label %for.body.us, !llvm.loop !12

for.body:                                         ; preds = %for.body.lr.ph, %for.inc13
  %3 = phi i32 [ %7, %for.inc13 ], [ %0, %for.body.lr.ph ]
  %4 = phi i32 [ %8, %for.inc13 ], [ %1, %for.body.lr.ph ]
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %for.inc13 ], [ 0, %for.body.lr.ph ]
  %conv2 = sext i32 %4 to i64
  %mul3 = shl nsw i64 %conv2, 2
  %call4 = call noalias ptr @malloc(i64 noundef %mul3) #7
  %arrayidx = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv98
  store ptr %call4, ptr %arrayidx, align 8, !tbaa !9
  %cmp645 = icmp sgt i32 %4, 0
  br i1 %cmp645, label %for.body7, label %for.inc13

for.body7:                                        ; preds = %for.body, %for.body7
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.body7 ], [ 0, %for.body ]
  %arrayidx11 = getelementptr inbounds nuw i32, ptr %call4, i64 %indvars.iv95
  %call12 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef %arrayidx11)
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  %5 = load i32, ptr %y1, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp6 = icmp slt i64 %indvars.iv.next96, %6
  br i1 %cmp6, label %for.body7, label %for.inc13.loopexit, !llvm.loop !15

for.inc13.loopexit:                               ; preds = %for.body7
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.inc13

for.inc13:                                        ; preds = %for.inc13.loopexit, %for.body
  %7 = phi i32 [ %.pre, %for.inc13.loopexit ], [ %3, %for.body ]
  %8 = phi i32 [ %5, %for.inc13.loopexit ], [ %4, %for.body ]
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  %9 = sext i32 %7 to i64
  %cmp = icmp slt i64 %indvars.iv.next99, %9
  br i1 %cmp, label %for.body, label %for.end15, !llvm.loop !16

for.end15:                                        ; preds = %for.body.us, %for.inc13, %entry
  %call16 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  %10 = load i32, ptr %x2, align 4, !tbaa !5
  %conv17 = sext i32 %10 to i64
  %mul18 = shl nsw i64 %conv17, 3
  %call19 = call noalias ptr @malloc(i64 noundef %mul18) #7
  %cmp2151 = icmp sgt i32 %10, 0
  br i1 %cmp2151, label %for.body22.lr.ph, label %for.end41

for.body22.lr.ph:                                 ; preds = %for.end15
  %11 = load i32, ptr %y2, align 4, !tbaa !5
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %for.body22, label %for.body22.lr.ph.split.us

for.body22.lr.ph.split.us:                        ; preds = %for.body22.lr.ph
  %conv23.us = sext i32 %11 to i64
  %mul24.us = shl nsw i64 %conv23.us, 2
  %wide.trip.count105 = zext nneg i32 %10 to i64
  br label %for.body22.us

for.body22.us:                                    ; preds = %for.body22.us, %for.body22.lr.ph.split.us
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %for.body22.us ], [ 0, %for.body22.lr.ph.split.us ]
  %call25.us = call noalias ptr @malloc(i64 noundef %mul24.us) #7
  %arrayidx27.us = getelementptr inbounds nuw ptr, ptr %call19, i64 %indvars.iv101
  store ptr %call25.us, ptr %arrayidx27.us, align 8, !tbaa !9
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %exitcond106.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count105
  br i1 %exitcond106.not, label %for.end41, label %for.body22.us, !llvm.loop !18

for.body22:                                       ; preds = %for.body22.lr.ph, %for.inc39
  %13 = phi i32 [ %17, %for.inc39 ], [ %10, %for.body22.lr.ph ]
  %14 = phi i32 [ %18, %for.inc39 ], [ %11, %for.body22.lr.ph ]
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %for.inc39 ], [ 0, %for.body22.lr.ph ]
  %conv23 = sext i32 %14 to i64
  %mul24 = shl nsw i64 %conv23, 2
  %call25 = call noalias ptr @malloc(i64 noundef %mul24) #7
  %arrayidx27 = getelementptr inbounds nuw ptr, ptr %call19, i64 %indvars.iv110
  store ptr %call25, ptr %arrayidx27, align 8, !tbaa !9
  %cmp2949 = icmp sgt i32 %14, 0
  br i1 %cmp2949, label %for.body30, label %for.inc39

for.body30:                                       ; preds = %for.body22, %for.body30
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %for.body30 ], [ 0, %for.body22 ]
  %arrayidx34 = getelementptr inbounds nuw i32, ptr %call25, i64 %indvars.iv107
  %call35 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef %arrayidx34)
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  %15 = load i32, ptr %y2, align 4, !tbaa !5
  %16 = sext i32 %15 to i64
  %cmp29 = icmp slt i64 %indvars.iv.next108, %16
  br i1 %cmp29, label %for.body30, label %for.inc39.loopexit, !llvm.loop !19

for.inc39.loopexit:                               ; preds = %for.body30
  %.pre150 = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.inc39

for.inc39:                                        ; preds = %for.inc39.loopexit, %for.body22
  %17 = phi i32 [ %.pre150, %for.inc39.loopexit ], [ %13, %for.body22 ]
  %18 = phi i32 [ %15, %for.inc39.loopexit ], [ %14, %for.body22 ]
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  %19 = sext i32 %17 to i64
  %cmp21 = icmp slt i64 %indvars.iv.next111, %19
  br i1 %cmp21, label %for.body22, label %for.end41, !llvm.loop !20

for.end41:                                        ; preds = %for.body22.us, %for.inc39, %for.end15
  %20 = phi i32 [ %10, %for.end15 ], [ %17, %for.inc39 ], [ %10, %for.body22.us ]
  %21 = load i32, ptr %x1, align 4, !tbaa !5
  %conv42 = sext i32 %21 to i64
  %mul43 = shl nsw i64 %conv42, 3
  %call44 = call noalias ptr @malloc(i64 noundef %mul43) #7
  %cmp4660 = icmp sgt i32 %21, 0
  br i1 %cmp4660, label %for.body47.lr.ph, label %for.end112

for.body47.lr.ph:                                 ; preds = %for.end41
  %22 = load i32, ptr %y2, align 4, !tbaa !5
  %conv48 = sext i32 %22 to i64
  %mul49 = shl nsw i64 %conv48, 2
  %cmp5453 = icmp sgt i32 %22, 0
  %cmp6755 = icmp sgt i32 %20, 0
  br i1 %cmp5453, label %for.body47.us.preheader, label %for.body47.preheader

for.body47.us.preheader:                          ; preds = %for.body47.lr.ph
  %23 = zext nneg i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 2
  %wide.trip.count142 = zext nneg i32 %21 to i64
  %wide.trip.count132 = zext nneg i32 %20 to i64
  br label %for.cond63.preheader.us

for.cond63.preheader.us:                          ; preds = %for.body47.us.preheader, %for.cond63.for.inc88_crit_edge.us
  %indvars.iv139 = phi i64 [ 0, %for.body47.us.preheader ], [ %indvars.iv.next140, %for.cond63.for.inc88_crit_edge.us ]
  %call50.us = call noalias ptr @malloc(i64 noundef %mul49) #7
  %arrayidx52.us = getelementptr inbounds nuw ptr, ptr %call44, i64 %indvars.iv139
  store ptr %call50.us, ptr %arrayidx52.us, align 8, !tbaa !9
  call void @llvm.memset.p0.i64(ptr align 4 %call50.us, i8 0, i64 %24, i1 false), !tbaa !5
  br i1 %cmp6755, label %for.cond66.preheader.lr.ph.split.us.us, label %for.cond63.for.inc88_crit_edge.us

for.cond63.for.inc88_crit_edge.us:                ; preds = %for.cond66.for.cond.cleanup_crit_edge.us.us, %for.cond63.preheader.us
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count142
  br i1 %exitcond143.not, label %for.cond94.preheader.preheader, label %for.cond63.preheader.us, !llvm.loop !21

for.cond66.preheader.lr.ph.split.us.us:           ; preds = %for.cond63.preheader.us
  %arrayidx70.us = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv139
  %25 = load ptr, ptr %arrayidx70.us, align 8, !tbaa !9
  br label %for.cond66.preheader.us.us

for.cond66.preheader.us.us:                       ; preds = %for.cond66.for.cond.cleanup_crit_edge.us.us, %for.cond66.preheader.lr.ph.split.us.us
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %for.cond66.for.cond.cleanup_crit_edge.us.us ], [ 0, %for.cond66.preheader.lr.ph.split.us.us ]
  %arrayidx81.us.us = getelementptr inbounds nuw i32, ptr %call50.us, i64 %indvars.iv134
  %arrayidx81.promoted.us.us = load i32, ptr %arrayidx81.us.us, align 4, !tbaa !5
  br label %for.body68.us.us

for.body68.us.us:                                 ; preds = %for.body68.us.us, %for.cond66.preheader.us.us
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %for.body68.us.us ], [ 0, %for.cond66.preheader.us.us ]
  %add57.us.us = phi i32 [ %add.us.us, %for.body68.us.us ], [ %arrayidx81.promoted.us.us, %for.cond66.preheader.us.us ]
  %arrayidx72.us.us = getelementptr inbounds nuw i32, ptr %25, i64 %indvars.iv129
  %26 = load i32, ptr %arrayidx72.us.us, align 4, !tbaa !5
  %arrayidx74.us.us = getelementptr inbounds nuw ptr, ptr %call19, i64 %indvars.iv129
  %27 = load ptr, ptr %arrayidx74.us.us, align 8, !tbaa !9
  %arrayidx76.us.us = getelementptr inbounds nuw i32, ptr %27, i64 %indvars.iv134
  %28 = load i32, ptr %arrayidx76.us.us, align 4, !tbaa !5
  %mul77.us.us = mul nsw i32 %28, %26
  %add.us.us = add nsw i32 %add57.us.us, %mul77.us.us
  store i32 %add.us.us, ptr %arrayidx81.us.us, align 4, !tbaa !5
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %for.cond66.for.cond.cleanup_crit_edge.us.us, label %for.body68.us.us, !llvm.loop !22

for.cond66.for.cond.cleanup_crit_edge.us.us:      ; preds = %for.body68.us.us
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %23
  br i1 %exitcond138.not, label %for.cond63.for.inc88_crit_edge.us, label %for.cond66.preheader.us.us, !llvm.loop !23

for.body47.preheader:                             ; preds = %for.body47.lr.ph
  %wide.trip.count116 = zext nneg i32 %21 to i64
  br label %for.body47

for.body47:                                       ; preds = %for.body47.preheader, %for.body47
  %indvars.iv113 = phi i64 [ 0, %for.body47.preheader ], [ %indvars.iv.next114, %for.body47 ]
  %call50 = call noalias ptr @malloc(i64 noundef %mul49) #7
  %arrayidx52 = getelementptr inbounds nuw ptr, ptr %call44, i64 %indvars.iv113
  store ptr %call50, ptr %arrayidx52, align 8, !tbaa !9
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %for.cond94.preheader.preheader, label %for.body47, !llvm.loop !21

for.cond94.preheader.preheader:                   ; preds = %for.body47, %for.cond63.for.inc88_crit_edge.us
  br label %for.cond94.preheader

for.cond94.preheader:                             ; preds = %for.cond94.preheader.preheader, %for.end104
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %for.end104 ], [ 0, %for.cond94.preheader.preheader ]
  %29 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp9585 = icmp sgt i32 %29, 1
  %arrayidx98 = getelementptr inbounds nuw ptr, ptr %call44, i64 %indvars.iv147
  %30 = load ptr, ptr %arrayidx98, align 8, !tbaa !9
  br i1 %cmp9585, label %for.body96, label %for.end104

for.body96:                                       ; preds = %for.cond94.preheader, %for.body96
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %for.body96 ], [ 0, %for.cond94.preheader ]
  %arrayidx100 = getelementptr inbounds nuw i32, ptr %30, i64 %indvars.iv144
  %31 = load i32, ptr %arrayidx100, align 4, !tbaa !5
  %call101 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %31)
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1
  %32 = load i32, ptr %y2, align 4, !tbaa !5
  %sub = add nsw i32 %32, -1
  %33 = sext i32 %sub to i64
  %cmp95 = icmp slt i64 %indvars.iv.next145, %33
  br i1 %cmp95, label %for.body96, label %for.end104.loopexit, !llvm.loop !24

for.end104.loopexit:                              ; preds = %for.body96
  %34 = and i64 %indvars.iv.next145, 4294967295
  br label %for.end104

for.end104:                                       ; preds = %for.cond94.preheader, %for.end104.loopexit
  %j.4.lcssa = phi i64 [ %34, %for.end104.loopexit ], [ 0, %for.cond94.preheader ]
  %arrayidx108 = getelementptr inbounds nuw i32, ptr %30, i64 %j.4.lcssa
  %35 = load i32, ptr %arrayidx108, align 4, !tbaa !5
  %call109 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %35)
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1
  %36 = load i32, ptr %x1, align 4, !tbaa !5
  %37 = sext i32 %36 to i64
  %cmp92 = icmp slt i64 %indvars.iv.next148, %37
  br i1 %cmp92, label %for.cond94.preheader, label %for.end112, !llvm.loop !25

for.end112:                                       ; preds = %for.end104, %for.end41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14, !17}
!17 = !{!"llvm.loop.unswitch.partial.disable"}
!18 = distinct !{!18, !13, !14}
!19 = distinct !{!19, !13, !14}
!20 = distinct !{!20, !13, !14, !17}
!21 = distinct !{!21, !13, !14}
!22 = distinct !{!22, !13, !14}
!23 = distinct !{!23, !13, !14}
!24 = distinct !{!24, !13, !14}
!25 = distinct !{!25, !13, !14}
