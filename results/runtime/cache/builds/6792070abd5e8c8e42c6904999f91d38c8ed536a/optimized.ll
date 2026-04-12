; ModuleID = '<stdin>'
source_filename = "/tmp/tmpna9nveh6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %a = alloca [101 x [101 x i32]], align 16
  %b = alloca [101 x [101 x i32]], align 16
  %c = alloca [101 x [101 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #5
  store i32 0, ptr %x1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #5
  store i32 0, ptr %y1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x2) #5
  store i32 0, ptr %x2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y2) #5
  store i32 0, ptr %y2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull %c) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %x1, ptr noundef nonnull align 4 %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.end ], [ 1, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.cond1, label %for.end16

for.cond1:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 1, %for.cond ]
  %1 = load i32, ptr %y1, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp2.not = icmp sgt i64 %indvars.iv, %2
  br i1 %cmp2.not, label %for.end, label %for.body4

for.body4:                                        ; preds = %for.cond1
  %3 = zext i32 %1 to i64
  %cmp5.not = icmp eq i64 %indvars.iv, %3
  %spec.select = select i1 %cmp5.not, ptr @.str.2, ptr @.str.1
  %arrayidx12 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv14, i64 %indvars.iv
  %call13 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull %spec.select, ptr noundef nonnull %arrayidx12)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond

for.end16:                                        ; preds = %for.cond
  %call17 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  br label %for.cond19

for.cond19:                                       ; preds = %for.end44, %for.end16
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.end44 ], [ 1, %for.end16 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp20 = icmp sgt i32 %4, 0
  br i1 %cmp20, label %for.cond24, label %for.cond49.preheader

for.cond49.preheader:                             ; preds = %for.cond19
  %5 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp50 = icmp sgt i32 %5, 0
  %6 = load i32, ptr %y2, align 4
  br i1 %cmp50, label %for.cond49.preheader12, label %for.cond108

for.cond49.preheader12:                           ; preds = %for.cond49.preheader
  %smax = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %7 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %7 to i64
  br label %for.cond49

for.cond24:                                       ; preds = %for.cond19, %for.body27
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.body27 ], [ 1, %for.cond19 ]
  %8 = load i32, ptr %y2, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp25.not = icmp sgt i64 %indvars.iv17, %9
  br i1 %cmp25.not, label %for.end44, label %for.body27

for.body27:                                       ; preds = %for.cond24
  %10 = zext i32 %8 to i64
  %cmp28.not = icmp eq i64 %indvars.iv17, %10
  %spec.select11 = select i1 %cmp28.not, ptr @.str.2, ptr @.str.1
  %arrayidx39 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv20, i64 %indvars.iv17
  %call40 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull %spec.select11, ptr noundef nonnull %arrayidx39)
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond24, !llvm.loop !12

for.end44:                                        ; preds = %for.cond24
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond19

for.cond49:                                       ; preds = %for.cond49.preheader12, %for.end64
  %indvars.iv32 = phi i64 [ 1, %for.cond49.preheader12 ], [ %indvars.iv.next33, %for.end64 ]
  br label %for.cond54

for.cond54:                                       ; preds = %for.cond49, %for.inc62
  %indvars.iv29 = phi i64 [ 1, %for.cond49 ], [ %indvars.iv.next30, %for.inc62 ]
  %exitcond = icmp eq i64 %indvars.iv29, %wide.trip.count
  br i1 %exitcond, label %for.end64, label %for.inc62

for.inc62:                                        ; preds = %for.cond54
  %arrayidx61 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv32, i64 %indvars.iv29
  store i32 0, ptr %arrayidx61, align 4, !tbaa !5
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond54, !llvm.loop !13

for.end64:                                        ; preds = %for.cond54
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond49

for.cond108:                                      ; preds = %for.cond49.preheader, %for.end133
  %11 = phi i32 [ %13, %for.end133 ], [ %6, %for.cond49.preheader ]
  %12 = phi i32 [ %.pre, %for.end133 ], [ %5, %for.cond49.preheader ]
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.end133 ], [ 1, %for.cond49.preheader ]
  %cmp109 = icmp sgt i32 %12, 0
  br i1 %cmp109, label %for.cond113, label %for.end136

for.cond113:                                      ; preds = %for.cond108, %for.body116
  %13 = phi i32 [ %.pre35, %for.body116 ], [ %11, %for.cond108 ]
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.body116 ], [ 1, %for.cond108 ]
  %14 = sext i32 %13 to i64
  %cmp114.not = icmp sgt i64 %indvars.iv23, %14
  br i1 %cmp114.not, label %for.end133, label %for.body116

for.body116:                                      ; preds = %for.cond113
  %15 = zext i32 %13 to i64
  %cmp117.not = icmp eq i64 %indvars.iv23, %15
  %16 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv26, i64 %indvars.iv23
  %17 = load i32, ptr %16, align 4, !tbaa !5, !invariant.load !14
  %.str.2..str.1 = select i1 %cmp117.not, ptr @.str.2, ptr @.str.1
  %call123 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.2..str.1, i32 noundef %17)
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %.pre35 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond113, !llvm.loop !15

for.end133:                                       ; preds = %for.cond113
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond108

for.end136:                                       ; preds = %for.cond108
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = !{}
!15 = distinct !{!15, !10, !11}
