; ModuleID = '<stdin>'
source_filename = "/tmp/tmpk4bb3y1s.cpp"
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
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %sz = alloca [8 x [8 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %m, ptr noundef nonnull %n)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %sz) #4
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %cmp27 = icmp sgt i32 %0, 0
  %1 = load i32, ptr %n, align 4
  %2 = icmp sgt i32 %1, 0
  %or.cond = select i1 %cmp27, i1 %2, i1 false
  br i1 %or.cond, label %for.cond1.preheader, label %if.then63

for.cond1.preheader:                              ; preds = %entry, %for.inc7
  %3 = phi i32 [ %8, %for.inc7 ], [ %0, %entry ]
  %4 = phi i32 [ %9, %for.inc7 ], [ %1, %entry ]
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.inc7 ], [ 0, %entry ]
  %cmp225 = icmp sgt i32 %4, 0
  br i1 %cmp225, label %for.body3, label %for.inc7

for.cond10.preheader:                             ; preds = %for.inc7
  %cmp1143 = icmp sgt i32 %8, 0
  %.pr = load i32, ptr %n, align 4
  %5 = icmp sgt i32 %.pr, 0
  %or.cond91 = select i1 %cmp1143, i1 %5, i1 false
  br i1 %or.cond91, label %for.cond13.preheader, label %if.then63

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv50, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %7
  br i1 %cmp2, label %for.body3, label %for.inc7.loopexit, !llvm.loop !9

for.inc7.loopexit:                                ; preds = %for.body3
  %.pre = load i32, ptr %m, align 4, !tbaa !5
  br label %for.inc7

for.inc7:                                         ; preds = %for.inc7.loopexit, %for.cond1.preheader
  %8 = phi i32 [ %.pre, %for.inc7.loopexit ], [ %3, %for.cond1.preheader ]
  %9 = phi i32 [ %6, %for.inc7.loopexit ], [ %4, %for.cond1.preheader ]
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %10 = sext i32 %8 to i64
  %cmp = icmp slt i64 %indvars.iv.next51, %10
  br i1 %cmp, label %for.cond1.preheader, label %for.cond10.preheader, !llvm.loop !12

for.cond13.preheader:                             ; preds = %for.cond10.preheader, %for.inc59
  %11 = phi i32 [ %24, %for.inc59 ], [ %8, %for.cond10.preheader ]
  %12 = phi i32 [ %25, %for.inc59 ], [ %.pr, %for.cond10.preheader ]
  %13 = phi i32 [ %26, %for.inc59 ], [ %.pr, %for.cond10.preheader ]
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.inc59 ], [ 0, %for.cond10.preheader ]
  %c.045 = phi i32 [ %c.1.lcssa, %for.inc59 ], [ 0, %for.cond10.preheader ]
  %cmp1438 = icmp sgt i32 %13, 0
  br i1 %cmp1438, label %for.cond16.preheader.lr.ph, label %for.inc59

for.cond16.preheader.lr.ph:                       ; preds = %for.cond13.preheader
  %14 = trunc nuw nsw i64 %indvars.iv68 to i32
  br label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.cond16.preheader.lr.ph, %for.inc56
  %15 = phi i32 [ %12, %for.cond16.preheader.lr.ph ], [ %22, %for.inc56 ]
  %indvars.iv65 = phi i64 [ 0, %for.cond16.preheader.lr.ph ], [ %indvars.iv.next66, %for.inc56 ]
  %16 = phi i32 [ %13, %for.cond16.preheader.lr.ph ], [ %22, %for.inc56 ]
  %c.141 = phi i32 [ %c.045, %for.cond16.preheader.lr.ph ], [ %c.2, %for.inc56 ]
  %cmp1729 = icmp sgt i32 %16, 0
  br i1 %cmp1729, label %for.body18.lr.ph, label %for.end31

for.body18.lr.ph:                                 ; preds = %for.cond16.preheader
  %arrayidx26 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv68, i64 %indvars.iv65
  %17 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %wide.trip.count = zext nneg i32 %16 to i64
  br label %for.body18

for.body18:                                       ; preds = %for.body18.lr.ph, %if.then
  %indvars.iv53 = phi i64 [ 0, %for.body18.lr.ph ], [ %indvars.iv.next54, %if.then ]
  %arrayidx22 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv68, i64 %indvars.iv53
  %18 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %cmp27.not = icmp sgt i32 %18, %17
  br i1 %cmp27.not, label %for.end31.loopexit, label %if.then

if.then:                                          ; preds = %for.body18
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count
  br i1 %exitcond.not, label %for.end31.thread, label %for.body18, !llvm.loop !14

for.end31.thread:                                 ; preds = %if.then
  %.pre7179 = load i32, ptr %m, align 4, !tbaa !5
  br label %for.cond34.preheader

for.end31.loopexit:                               ; preds = %for.body18
  %indvars55.le = trunc i64 %indvars.iv53 to i32
  br label %for.end31

for.end31:                                        ; preds = %for.end31.loopexit, %for.cond16.preheader
  %a.0.lcssa = phi i32 [ 0, %for.cond16.preheader ], [ %indvars55.le, %for.end31.loopexit ]
  %cmp32 = icmp eq i32 %a.0.lcssa, %16
  %.pre71 = load i32, ptr %m, align 4, !tbaa !5
  br i1 %cmp32, label %for.cond34.preheader, label %if.end

for.cond34.preheader:                             ; preds = %for.end31.thread, %for.end31
  %.pre7180 = phi i32 [ %.pre7179, %for.end31.thread ], [ %.pre71, %for.end31 ]
  %cmp3533 = icmp sgt i32 %.pre7180, 0
  br i1 %cmp3533, label %for.body36.lr.ph, label %if.end

for.body36.lr.ph:                                 ; preds = %for.cond34.preheader
  %arrayidx44 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv68, i64 %indvars.iv65
  %19 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %wide.trip.count63 = zext nneg i32 %.pre7180 to i64
  br label %for.body36

for.body36:                                       ; preds = %for.body36.lr.ph, %if.then46
  %indvars.iv58 = phi i64 [ 0, %for.body36.lr.ph ], [ %indvars.iv.next59, %if.then46 ]
  %arrayidx40 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv58, i64 %indvars.iv65
  %20 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp45.not = icmp slt i32 %20, %19
  br i1 %cmp45.not, label %if.end.loopexit, label %if.then46

if.then46:                                        ; preds = %for.body36
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %exitcond64.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count63
  br i1 %exitcond64.not, label %if.then53, label %for.body36, !llvm.loop !15

if.end.loopexit:                                  ; preds = %for.body36
  %indvars60.le = trunc i64 %indvars.iv58 to i32
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %for.cond34.preheader, %for.end31
  %.pre7181 = phi i32 [ %.pre71, %for.end31 ], [ %.pre7180, %for.cond34.preheader ], [ %.pre7180, %if.end.loopexit ]
  %b.0 = phi i32 [ 0, %for.end31 ], [ 0, %for.cond34.preheader ], [ %indvars60.le, %if.end.loopexit ]
  %cmp52 = icmp eq i32 %b.0, %.pre7181
  br i1 %cmp52, label %if.then53, label %for.inc56

if.then53:                                        ; preds = %if.then46, %if.end
  %21 = trunc nuw nsw i64 %indvars.iv65 to i32
  %call54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %14, i32 noundef %21)
  %.pre72 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc56

for.inc56:                                        ; preds = %if.end, %if.then53
  %22 = phi i32 [ %.pre72, %if.then53 ], [ %15, %if.end ]
  %c.2 = phi i32 [ 1, %if.then53 ], [ %c.141, %if.end ]
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %23 = sext i32 %22 to i64
  %cmp14 = icmp slt i64 %indvars.iv.next66, %23
  br i1 %cmp14, label %for.cond16.preheader, label %for.inc59.loopexit, !llvm.loop !16

for.inc59.loopexit:                               ; preds = %for.inc56
  %.pre73 = load i32, ptr %m, align 4, !tbaa !5
  br label %for.inc59

for.inc59:                                        ; preds = %for.inc59.loopexit, %for.cond13.preheader
  %24 = phi i32 [ %11, %for.cond13.preheader ], [ %.pre73, %for.inc59.loopexit ]
  %25 = phi i32 [ %12, %for.cond13.preheader ], [ %22, %for.inc59.loopexit ]
  %26 = phi i32 [ %13, %for.cond13.preheader ], [ %22, %for.inc59.loopexit ]
  %c.1.lcssa = phi i32 [ %c.045, %for.cond13.preheader ], [ %c.2, %for.inc59.loopexit ]
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  %27 = sext i32 %24 to i64
  %cmp11 = icmp slt i64 %indvars.iv.next69, %27
  br i1 %cmp11, label %for.cond13.preheader, label %for.end61, !llvm.loop !17

for.end61:                                        ; preds = %for.inc59
  %28 = icmp eq i32 %c.1.lcssa, 0
  br i1 %28, label %if.then63, label %if.end65

if.then63:                                        ; preds = %entry, %for.cond10.preheader, %for.end61
  %call64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %for.end61
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %sz) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #4
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11, !13}
