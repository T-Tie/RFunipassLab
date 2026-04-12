; ModuleID = '<stdin>'
source_filename = "/tmp/tmpba77wtib.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %k = alloca i32, align 4
  %a = alloca [30 x i32], align 16
  %b = alloca [30 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %k) #5
  call void @llvm.lifetime.start.p0(i64 noundef 120, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 120, ptr noundef nonnull align 16 %b) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %k)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [30 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %sub = add nsw i32 %0, -1
  %idxprom2 = sext i32 %sub to i64
  %arrayidx3 = getelementptr inbounds [30 x i32], ptr %b, i64 0, i64 %idxprom2
  store i32 1, ptr %arrayidx3, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc19, %for.end
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.inc19 ], [ %idxprom2, %for.end ]
  %indvars30 = trunc i64 %indvars.iv22 to i32
  %cmp6 = icmp sgt i32 %indvars30, 0
  br i1 %cmp6, label %for.body7, label %for.end20

for.body7:                                        ; preds = %for.cond5
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, -1
  %idxprom9 = and i64 %indvars.iv.next23, 4294967295
  %arrayidx10 = getelementptr inbounds nuw [30 x i32], ptr %a, i64 0, i64 %idxprom9
  %2 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %idxprom11 = and i64 %indvars.iv22, 2147483647
  %arrayidx12 = getelementptr inbounds nuw [30 x i32], ptr %a, i64 0, i64 %idxprom11
  %3 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13.not = icmp slt i32 %2, %3
  br i1 %cmp13.not, label %for.end20, label %for.inc19

for.inc19:                                        ; preds = %for.body7
  %arrayidx15 = getelementptr inbounds nuw [30 x i32], ptr %b, i64 0, i64 %idxprom11
  %4 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %add = add nsw i32 %4, 1
  %arrayidx18 = getelementptr inbounds nuw [30 x i32], ptr %b, i64 0, i64 %idxprom9
  store i32 %add, ptr %arrayidx18, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !12

for.end20:                                        ; preds = %for.body7, %for.cond5
  br label %for.cond22

for.cond22:                                       ; preds = %for.end47, %for.end20
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.end47 ], [ %indvars.iv22, %for.end20 ]
  %p.0 = phi i32 [ %p.1, %for.end47 ], [ 0, %for.end20 ]
  %indvars.iv.next25 = add nsw i64 %indvars.iv24, -1
  %cmp23 = icmp sgt i64 %indvars.iv24, 0
  br i1 %cmp23, label %for.body24, label %for.cond60.preheader

for.cond60.preheader:                             ; preds = %for.cond22
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond60

for.body24:                                       ; preds = %for.cond22
  %5 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  %arrayidx33 = getelementptr inbounds [30 x i32], ptr %a, i64 0, i64 %indvars.iv.next25
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc45, %for.body24
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.inc45 ], [ %idxprom2, %for.body24 ]
  %p.1 = phi i32 [ %p.2, %for.inc45 ], [ %p.0, %for.body24 ]
  %sum.0 = phi i32 [ %sum.1, %for.inc45 ], [ %5, %for.body24 ]
  %cmp30.not = icmp slt i64 %indvars.iv19, %indvars.iv24
  br i1 %cmp30.not, label %for.end47, label %for.body31

for.body31:                                       ; preds = %for.cond29
  %6 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %arrayidx35 = getelementptr inbounds [30 x i32], ptr %a, i64 0, i64 %indvars.iv19
  %7 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %cmp36.not = icmp slt i32 %6, %7
  br i1 %cmp36.not, label %for.inc45, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body31
  %arrayidx38 = getelementptr inbounds [30 x i32], ptr %b, i64 0, i64 %indvars.iv19
  %8 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %cmp39.not = icmp sge i32 %8, %sum.0
  %inc43 = zext i1 %cmp39.not to i32
  %spec.select = add nsw i32 %p.1, %inc43
  %spec.select13 = call i32 @llvm.smax.i32(i32 %8, i32 %sum.0)
  br label %for.inc45

for.inc45:                                        ; preds = %land.lhs.true, %for.body31
  %p.2 = phi i32 [ %p.1, %for.body31 ], [ %spec.select, %land.lhs.true ]
  %sum.1 = phi i32 [ %sum.0, %for.body31 ], [ %spec.select13, %land.lhs.true ]
  %indvars.iv.next20 = add nsw i64 %indvars.iv19, -1
  br label %for.cond29, !llvm.loop !13

for.end47:                                        ; preds = %for.cond29
  %cmp48 = icmp eq i32 %p.1, 0
  %add53 = add nsw i32 %sum.0, 1
  %spec.select14 = select i1 %cmp48, i32 1, i32 %add53
  %arrayidx55 = getelementptr inbounds [30 x i32], ptr %b, i64 0, i64 %indvars.iv.next25
  store i32 %spec.select14, ptr %arrayidx55, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !14

for.cond60:                                       ; preds = %for.cond60.preheader, %for.body62
  %indvars.iv27 = phi i64 [ 0, %for.cond60.preheader ], [ %indvars.iv.next28, %for.body62 ]
  %sum.2 = phi i32 [ 0, %for.cond60.preheader ], [ %spec.select15, %for.body62 ]
  %exitcond.not = icmp eq i64 %indvars.iv27, %wide.trip.count
  br i1 %exitcond.not, label %for.end72, label %for.body62

for.body62:                                       ; preds = %for.cond60
  %arrayidx64 = getelementptr inbounds nuw [30 x i32], ptr %b, i64 0, i64 %indvars.iv27
  %9 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %spec.select15 = call i32 @llvm.smax.i32(i32 %9, i32 %sum.2)
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond60, !llvm.loop !15

for.end72:                                        ; preds = %for.cond60
  %call73 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %sum.2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 120, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 120, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %k) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
