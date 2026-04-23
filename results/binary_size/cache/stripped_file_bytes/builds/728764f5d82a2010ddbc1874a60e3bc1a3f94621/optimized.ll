; ModuleID = '<stdin>'
source_filename = "/tmp/tmps18bfy9b.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %N = alloca i32, align 4
  %zhengzhengshu = alloca [501 x i32], align 16
  %jishu = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #5
  store i32 0, ptr %N, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %N)
  call void @llvm.lifetime.start.p0(i64 2004, ptr nonnull %zhengzhengshu) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2004) %zhengzhengshu, i8 0, i64 2004, i1 false)
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %cmp23 = icmp sgt i32 %0, 0
  br i1 %cmp23, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %jishu) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2000) %jishu, i8 0, i64 2000, i1 false)
  br label %for.cond43.preheader.thread

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [501 x i32], ptr %zhengzhengshu, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %N, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %jishu) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2000) %jishu, i8 0, i64 2000, i1 false)
  %cmp325 = icmp sgt i32 %1, 0
  br i1 %cmp325, label %for.body4.preheader, label %for.cond43.preheader.thread

for.body4.preheader:                              ; preds = %for.end
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %for.body4

for.cond16.preheader:                             ; preds = %for.inc13
  %cmp1730 = icmp sgt i32 %p.1, 0
  br i1 %cmp1730, label %for.cond19.preheader.preheader, label %for.cond43.preheader.thread

for.cond19.preheader.preheader:                   ; preds = %for.cond16.preheader
  %wide.trip.count48 = zext nneg i32 %p.1 to i64
  br label %for.cond19.preheader

for.body4:                                        ; preds = %for.body4.preheader, %for.inc13
  %indvars.iv37 = phi i64 [ 0, %for.body4.preheader ], [ %indvars.iv.next38, %for.inc13 ]
  %p.027 = phi i32 [ 0, %for.body4.preheader ], [ %p.1, %for.inc13 ]
  %arrayidx6 = getelementptr inbounds nuw [501 x i32], ptr %zhengzhengshu, i64 0, i64 %indvars.iv37
  %3 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %4 = and i32 %3, -2147483647
  %cmp7 = icmp eq i32 %4, 1
  br i1 %cmp7, label %if.then, label %for.inc13

if.then:                                          ; preds = %for.body4
  %idxprom10 = sext i32 %p.027 to i64
  %arrayidx11 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %idxprom10
  store i32 %3, ptr %arrayidx11, align 4, !tbaa !5
  %inc12 = add nsw i32 %p.027, 1
  br label %for.inc13

for.inc13:                                        ; preds = %for.body4, %if.then
  %p.1 = phi i32 [ %inc12, %if.then ], [ %p.027, %for.body4 ]
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count
  br i1 %exitcond.not, label %for.cond16.preheader, label %for.body4, !llvm.loop !12

for.cond19.preheader:                             ; preds = %for.cond19.preheader.preheader, %for.cond.cleanup
  %indvars.iv40 = phi i64 [ 0, %for.cond19.preheader.preheader ], [ %indvars.iv.next41, %for.cond.cleanup ]
  %arrayidx23 = getelementptr inbounds nuw [500 x i32], ptr %jishu, i64 0, i64 %indvars.iv40
  br label %for.body21

for.cond43.preheader.thread:                      ; preds = %for.cond16.preheader, %for.end, %for.end.thread
  %p.0.lcssa59.ph = phi i32 [ %p.1, %for.cond16.preheader ], [ 0, %for.end ], [ 0, %for.end.thread ]
  %sub61 = add i32 %p.0.lcssa59.ph, -1
  br label %for.cond.cleanup45

for.cond43.preheader:                             ; preds = %for.cond.cleanup
  %sub = add nsw i32 %p.1, -1
  %cmp4432.not = icmp eq i32 %p.1, 1
  br i1 %cmp4432.not, label %for.cond.cleanup45, label %for.body46.preheader

for.body46.preheader:                             ; preds = %for.cond43.preheader
  %wide.trip.count53 = zext nneg i32 %sub to i64
  br label %for.body46

for.cond.cleanup:                                 ; preds = %for.inc37
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond49.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count48
  br i1 %exitcond49.not, label %for.cond43.preheader, label %for.cond19.preheader, !llvm.loop !13

for.body21:                                       ; preds = %for.cond19.preheader, %for.inc37
  %indvars.iv42 = phi i64 [ %indvars.iv40, %for.cond19.preheader ], [ %indvars.iv.next43, %for.inc37 ]
  %5 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %arrayidx25 = getelementptr inbounds nuw [500 x i32], ptr %jishu, i64 0, i64 %indvars.iv42
  %6 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %cmp26 = icmp sgt i32 %5, %6
  br i1 %cmp26, label %if.then27, label %for.inc37

if.then27:                                        ; preds = %for.body21
  store i32 %6, ptr %arrayidx23, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx25, align 4, !tbaa !5
  br label %for.inc37

for.inc37:                                        ; preds = %for.body21, %if.then27
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %exitcond46.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count48
  br i1 %exitcond46.not, label %for.cond.cleanup, label %for.body21, !llvm.loop !14

for.cond.cleanup45:                               ; preds = %for.body46, %for.cond43.preheader.thread, %for.cond43.preheader
  %sub63 = phi i32 [ %sub61, %for.cond43.preheader.thread ], [ %sub, %for.cond43.preheader ], [ %sub, %for.body46 ]
  %idxprom55 = sext i32 %sub63 to i64
  %arrayidx56 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %idxprom55
  %7 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7)
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %jishu) #5
  call void @llvm.lifetime.end.p0(i64 2004, ptr nonnull %zhengzhengshu) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #5
  ret i32 0

for.body46:                                       ; preds = %for.body46.preheader, %for.body46
  %indvars.iv50 = phi i64 [ 0, %for.body46.preheader ], [ %indvars.iv.next51, %for.body46 ]
  %arrayidx48 = getelementptr inbounds nuw [500 x i32], ptr %jishu, i64 0, i64 %indvars.iv50
  %8 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %call49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %8)
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count53
  br i1 %exitcond54.not, label %for.cond.cleanup45, label %for.body46, !llvm.loop !15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
