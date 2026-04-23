; ModuleID = '<stdin>'
source_filename = "/tmp/tmpw2qldrdl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %shu = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %shu) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp15 = icmp sgt i32 %0, 0
  br i1 %cmp15, label %for.body, label %for.cond2.preheader.for.end27_crit_edge

for.cond2.preheader:                              ; preds = %for.body
  %cmp320 = icmp sgt i32 %3, 1
  br i1 %cmp320, label %for.cond5.preheader.preheader, label %for.cond2.preheader.for.end27_crit_edge

for.cond2.preheader.for.end27_crit_edge:          ; preds = %entry, %for.cond2.preheader
  %.lcssa36 = phi i32 [ %3, %for.cond2.preheader ], [ %0, %entry ]
  %.pre32 = add nsw i32 %.lcssa36, -1
  br label %for.end27

for.cond5.preheader.preheader:                    ; preds = %for.cond2.preheader
  %1 = add nsw i32 %3, -1
  %2 = zext nneg i32 %1 to i64
  br label %for.body7.preheader

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %shu, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp, label %for.body, label %for.cond2.preheader, !llvm.loop !9

for.cond2.loopexit:                               ; preds = %for.inc23
  %cmp3 = icmp sgt i32 %i.121.in, 2
  %indvars.iv.next30 = add nsw i64 %indvars.iv29, -1
  br i1 %cmp3, label %for.body7.preheader, label %for.end27, !llvm.loop !12

for.body7.preheader:                              ; preds = %for.cond2.loopexit, %for.cond5.preheader.preheader
  %indvars.iv29 = phi i64 [ %2, %for.cond5.preheader.preheader ], [ %indvars.iv.next30, %for.cond2.loopexit ]
  %i.121.in = phi i32 [ %3, %for.cond5.preheader.preheader ], [ %i.121, %for.cond2.loopexit ]
  %i.121 = add nsw i32 %i.121.in, -1
  %.pre = load i32, ptr %shu, align 16, !tbaa !5
  br label %for.body7

for.body7:                                        ; preds = %for.body7.preheader, %for.inc23
  %5 = phi i32 [ %.pre, %for.body7.preheader ], [ %7, %for.inc23 ]
  %indvars.iv24 = phi i64 [ 0, %for.body7.preheader ], [ %indvars.iv.next25, %for.inc23 ]
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %arrayidx11 = getelementptr inbounds nuw [100 x i32], ptr %shu, i64 0, i64 %indvars.iv.next25
  %6 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %5, %6
  br i1 %cmp12, label %if.then, label %for.inc23

if.then:                                          ; preds = %for.body7
  %arrayidx9 = getelementptr inbounds nuw [100 x i32], ptr %shu, i64 0, i64 %indvars.iv24
  store i32 %5, ptr %arrayidx11, align 4, !tbaa !5
  store i32 %6, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.inc23

for.inc23:                                        ; preds = %for.body7, %if.then
  %7 = phi i32 [ %6, %for.body7 ], [ %5, %if.then ]
  %exitcond.not = icmp eq i64 %indvars.iv.next25, %indvars.iv29
  br i1 %exitcond.not, label %for.cond2.loopexit, label %for.body7, !llvm.loop !13

for.end27:                                        ; preds = %for.cond2.loopexit, %for.cond2.preheader.for.end27_crit_edge
  %.lcssa35 = phi i32 [ %.lcssa36, %for.cond2.preheader.for.end27_crit_edge ], [ %3, %for.cond2.loopexit ]
  %sub28.pre-phi = phi i32 [ %.pre32, %for.cond2.preheader.for.end27_crit_edge ], [ %1, %for.cond2.loopexit ]
  %idxprom29 = sext i32 %sub28.pre-phi to i64
  %arrayidx30 = getelementptr inbounds [100 x i32], ptr %shu, i64 0, i64 %idxprom29
  %8 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %sub31 = add nsw i32 %.lcssa35, -2
  %idxprom32 = sext i32 %sub31 to i64
  %arrayidx33 = getelementptr inbounds [100 x i32], ptr %shu, i64 0, i64 %idxprom32
  %9 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %call34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %8)
  %call35 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %9)
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %shu) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
