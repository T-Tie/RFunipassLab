; ModuleID = '<stdin>'
source_filename = "/tmp/tmpielsqmwx.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [1000 x [1000 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4000000, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = phi i32 [ %2, %for.inc7 ], [ %.pre, %entry ]
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.inc7 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv41, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %sub = add nsw i32 %0, -1
  %smax = call i32 @llvm.smax.i32(i32 %sub, i32 noundef 1)
  %wide.trip.count53 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %sub to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %2 = phi i32 [ %.pre55, %for.inc ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv41, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre55 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond13, %for.cond10.preheader
  %indvars.iv49 = phi i64 [ 1, %for.cond10.preheader ], [ %indvars.iv.next50, %for.cond13 ]
  %s1.0 = phi i32 [ undef, %for.cond10.preheader ], [ %s1.1, %for.cond13 ]
  %s2.0 = phi i32 [ undef, %for.cond10.preheader ], [ %s2.1, %for.cond13 ]
  %l1.0 = phi i32 [ undef, %for.cond10.preheader ], [ %l1.1, %for.cond13 ]
  %l2.0 = phi i32 [ undef, %for.cond10.preheader ], [ %l2.1, %for.cond13 ]
  %exitcond54.not = icmp eq i64 %indvars.iv49, %wide.trip.count53
  br i1 %exitcond54.not, label %for.end76, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond10
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %4 = add nsw i64 %indvars.iv49, -1
  %5 = trunc nuw nsw i64 %indvars.iv49 to i32
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc71
  %indvars.iv44 = phi i64 [ 1, %for.cond13.preheader ], [ %indvars.iv.next45, %for.inc71 ]
  %s1.1 = phi i32 [ %s1.0, %for.cond13.preheader ], [ %s1.235, %for.inc71 ]
  %s2.1 = phi i32 [ %s2.0, %for.cond13.preheader ], [ %s2.2, %for.inc71 ]
  %l1.1 = phi i32 [ %l1.0, %for.cond13.preheader ], [ %l1.236, %for.inc71 ]
  %l2.1 = phi i32 [ %l2.0, %for.cond13.preheader ], [ %l2.2, %for.inc71 ]
  %exitcond.not = icmp eq i64 %indvars.iv44, %wide.trip.count
  br i1 %exitcond.not, label %for.cond10, label %for.body16, !llvm.loop !13

for.body16:                                       ; preds = %for.cond13
  %arrayidx20 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv49, i64 %indvars.iv44
  %6 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !14
  switch i32 %6, label %for.inc71 [
    i32 255, label %land.lhs.true
    i32 0, label %land.lhs.true48
  ]

land.lhs.true:                                    ; preds = %for.body16
  %7 = add nsw i64 %indvars.iv44, -1
  %arrayidx26 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv49, i64 %7
  %8 = load i32, ptr %arrayidx26, align 4, !tbaa !5, !invariant.load !14
  %cmp27 = icmp eq i32 %8, 0
  br i1 %cmp27, label %land.lhs.true28, label %for.inc71

land.lhs.true28:                                  ; preds = %land.lhs.true
  %arrayidx33 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %4, i64 %indvars.iv44
  %9 = load i32, ptr %arrayidx33, align 4, !tbaa !5, !invariant.load !14
  %cmp34 = icmp eq i32 %9, 0
  br i1 %cmp34, label %land.lhs.true35, label %for.inc71

land.lhs.true35:                                  ; preds = %land.lhs.true28
  %arrayidx41 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %4, i64 %7
  %10 = load i32, ptr %arrayidx41, align 4, !tbaa !5, !invariant.load !14
  %cmp42 = icmp eq i32 %10, 0
  %11 = trunc nuw nsw i64 %indvars.iv44 to i32
  %spec.select = select i1 %cmp42, i32 %11, i32 %l1.1
  %spec.select37 = select i1 %cmp42, i32 %5, i32 %s1.1
  br label %for.inc71

land.lhs.true48:                                  ; preds = %for.body16
  %12 = add nuw nsw i64 %indvars.iv44, 1
  %arrayidx52 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv49, i64 %12
  %13 = load i32, ptr %arrayidx52, align 4, !tbaa !5, !invariant.load !14
  %cmp53 = icmp eq i32 %13, 255
  br i1 %cmp53, label %land.lhs.true54, label %for.inc71

land.lhs.true54:                                  ; preds = %land.lhs.true48
  %arrayidx59 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv.next50, i64 %indvars.iv44
  %14 = load i32, ptr %arrayidx59, align 4, !tbaa !5, !invariant.load !14
  %cmp60 = icmp eq i32 %14, 255
  br i1 %cmp60, label %land.lhs.true61, label %for.inc71

land.lhs.true61:                                  ; preds = %land.lhs.true54
  %arrayidx67 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv.next50, i64 %12
  %15 = load i32, ptr %arrayidx67, align 4, !tbaa !5
  %cmp68 = icmp eq i32 %15, 255
  %spec.select38 = select i1 %cmp68, i32 %5, i32 %s2.1
  %16 = trunc nuw nsw i64 %indvars.iv44 to i32
  %spec.select39 = select i1 %cmp68, i32 %16, i32 %l2.1
  br label %for.inc71

for.inc71:                                        ; preds = %land.lhs.true61, %land.lhs.true35, %for.body16, %land.lhs.true, %land.lhs.true28, %land.lhs.true48, %land.lhs.true54
  %l1.236 = phi i32 [ %l1.1, %land.lhs.true54 ], [ %l1.1, %land.lhs.true48 ], [ %l1.1, %land.lhs.true ], [ %l1.1, %land.lhs.true28 ], [ %spec.select, %land.lhs.true35 ], [ %l1.1, %for.body16 ], [ %l1.1, %land.lhs.true61 ]
  %s1.235 = phi i32 [ %s1.1, %land.lhs.true54 ], [ %s1.1, %land.lhs.true48 ], [ %s1.1, %land.lhs.true ], [ %s1.1, %land.lhs.true28 ], [ %spec.select37, %land.lhs.true35 ], [ %s1.1, %for.body16 ], [ %s1.1, %land.lhs.true61 ]
  %s2.2 = phi i32 [ %s2.1, %land.lhs.true54 ], [ %s2.1, %land.lhs.true48 ], [ %s2.1, %land.lhs.true ], [ %s2.1, %land.lhs.true28 ], [ %s2.1, %land.lhs.true35 ], [ %s2.1, %for.body16 ], [ %spec.select38, %land.lhs.true61 ]
  %l2.2 = phi i32 [ %l2.1, %land.lhs.true54 ], [ %l2.1, %land.lhs.true48 ], [ %l2.1, %land.lhs.true ], [ %l2.1, %land.lhs.true28 ], [ %l2.1, %land.lhs.true35 ], [ %l2.1, %for.body16 ], [ %spec.select39, %land.lhs.true61 ]
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond13, !llvm.loop !15

for.end76:                                        ; preds = %for.cond10
  %sub77 = sub nsw i32 %s2.0, %s1.0
  %sub78 = sub nsw i32 %l2.0, %l1.0
  %mul = mul nsw i32 %sub78, %sub77
  %call79 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4000000, ptr noundef nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
