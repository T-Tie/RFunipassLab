; ModuleID = '<stdin>'
source_filename = "/tmp/tmpks_q8qbl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %sz = alloca [99 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 396, ptr noundef nonnull %sz) #5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %1
  br i1 %cmp.not.not, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [99 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body5
  %indvars.iv27 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next28, %for.body5 ]
  %max.0 = phi i32 [ 0, %for.cond2.preheader ], [ %spec.select, %for.body5 ]
  %exitcond.not = icmp eq i64 %indvars.iv27, %wide.trip.count
  br i1 %exitcond.not, label %for.end13, label %for.body5

for.body5:                                        ; preds = %for.cond2
  %arrayidx7 = getelementptr inbounds nuw [99 x i32], ptr %sz, i64 0, i64 %indvars.iv27
  %2 = load i32, ptr %arrayidx7, align 4, !tbaa !5, !invariant.load !12
  %idxprom8 = zext nneg i32 %max.0 to i64
  %arrayidx9 = getelementptr inbounds nuw [99 x i32], ptr %sz, i64 0, i64 %idxprom8
  %3 = load i32, ptr %arrayidx9, align 4, !tbaa !5, !invariant.load !12
  %cmp10 = icmp sgt i32 %2, %3
  %4 = trunc nuw nsw i64 %indvars.iv27 to i32
  %spec.select = select i1 %cmp10, i32 %4, i32 %max.0
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond2, !llvm.loop !13

for.end13:                                        ; preds = %for.cond2
  %sub.le = add nsw i32 %0, -1
  %cmp15.not = icmp eq i32 %max.0, %sub.le
  br i1 %cmp15.not, label %if.end27, label %if.then16

if.then16:                                        ; preds = %for.end13
  %idxprom17 = zext nneg i32 %max.0 to i64
  %arrayidx18 = getelementptr inbounds nuw [99 x i32], ptr %sz, i64 0, i64 %idxprom17
  %5 = load i32, ptr %arrayidx18, align 4, !tbaa !5, !invariant.load !12
  %idxprom20 = sext i32 %sub.le to i64
  %arrayidx21 = getelementptr inbounds [99 x i32], ptr %sz, i64 0, i64 %idxprom20
  %6 = load i32, ptr %arrayidx21, align 4, !tbaa !5, !invariant.load !12
  store i32 %6, ptr %arrayidx18, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx21, align 4, !tbaa !5
  br label %if.end27

if.end27:                                         ; preds = %if.then16, %for.end13
  %sub29 = add nsw i32 %0, -2
  %smax34 = call i32 @llvm.smax.i32(i32 %sub29, i32 noundef -1)
  %7 = add nsw i32 %smax34, 1
  %wide.trip.count35 = zext nneg i32 %7 to i64
  br label %for.cond28

for.cond28:                                       ; preds = %for.body31, %if.end27
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.body31 ], [ 0, %if.end27 ]
  %max.2 = phi i32 [ %spec.select24, %for.body31 ], [ 0, %if.end27 ]
  %exitcond36 = icmp eq i64 %indvars.iv31, %wide.trip.count35
  br i1 %exitcond36, label %for.end41, label %for.body31

for.body31:                                       ; preds = %for.cond28
  %arrayidx33 = getelementptr inbounds nuw [99 x i32], ptr %sz, i64 0, i64 %indvars.iv31
  %8 = load i32, ptr %arrayidx33, align 4, !tbaa !5, !invariant.load !12
  %idxprom34 = zext nneg i32 %max.2 to i64
  %arrayidx35 = getelementptr inbounds nuw [99 x i32], ptr %sz, i64 0, i64 %idxprom34
  %9 = load i32, ptr %arrayidx35, align 4, !tbaa !5, !invariant.load !12
  %cmp36 = icmp sgt i32 %8, %9
  %10 = trunc nuw nsw i64 %indvars.iv31 to i32
  %spec.select24 = select i1 %cmp36, i32 %10, i32 %max.2
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond28, !llvm.loop !14

for.end41:                                        ; preds = %for.cond28
  %cmp43.not = icmp eq i32 %max.2, %sub29
  br i1 %cmp43.not, label %if.end55, label %if.then44

if.then44:                                        ; preds = %for.end41
  %idxprom45 = zext nneg i32 %max.2 to i64
  %arrayidx46 = getelementptr inbounds nuw [99 x i32], ptr %sz, i64 0, i64 %idxprom45
  %11 = load i32, ptr %arrayidx46, align 4, !tbaa !5, !invariant.load !12
  %idxprom48 = sext i32 %sub29 to i64
  %arrayidx49 = getelementptr inbounds [99 x i32], ptr %sz, i64 0, i64 %idxprom48
  %12 = load i32, ptr %arrayidx49, align 4, !tbaa !5, !invariant.load !12
  store i32 %12, ptr %arrayidx46, align 4, !tbaa !5
  store i32 %11, ptr %arrayidx49, align 4, !tbaa !5
  br label %if.end55

if.end55:                                         ; preds = %if.then44, %for.end41
  %idxprom57 = sext i32 %sub.le to i64
  %arrayidx58 = getelementptr inbounds [99 x i32], ptr %sz, i64 0, i64 %idxprom57
  %13 = load i32, ptr %arrayidx58, align 4, !tbaa !5, !invariant.load !12
  %call59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %13)
  %14 = load i32, ptr %n, align 4, !tbaa !5
  %sub60 = add nsw i32 %14, -2
  %idxprom61 = sext i32 %sub60 to i64
  %arrayidx62 = getelementptr inbounds [99 x i32], ptr %sz, i64 0, i64 %idxprom61
  %15 = load i32, ptr %arrayidx62, align 4, !tbaa !5, !invariant.load !12
  %call63 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %15)
  call void @llvm.lifetime.end.p0(i64 noundef 396, ptr noundef nonnull %sz) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind willreturn }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
