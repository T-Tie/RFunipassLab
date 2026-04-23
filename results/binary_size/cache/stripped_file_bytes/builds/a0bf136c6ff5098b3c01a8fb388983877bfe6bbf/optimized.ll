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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #6
  store i32 0, ptr %N, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %N)
  call void @llvm.lifetime.start.p0(i64 2004, ptr nonnull %zhengzhengshu) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2004) %zhengzhengshu, i8 0, i64 2004, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [501 x i32], ptr %zhengzhengshu, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %jishu) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2000) %jishu, i8 0, i64 2000, i1 false)
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc13, %for.end
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.inc13 ], [ 0, %for.end ]
  %p.0 = phi i32 [ %p.1, %for.inc13 ], [ 0, %for.end ]
  %exitcond.not = icmp eq i64 %indvars.iv24, %wide.trip.count
  br i1 %exitcond.not, label %for.cond16.preheader, label %for.body4

for.cond16.preheader:                             ; preds = %for.cond2
  %smax38 = call i32 @llvm.smax.i32(i32 %p.0, i32 0)
  %wide.trip.count39 = zext nneg i32 %smax38 to i64
  %wide.trip.count34 = zext i32 %p.0 to i64
  br label %for.cond16

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [501 x i32], ptr %zhengzhengshu, i64 0, i64 %indvars.iv24
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %3 = and i32 %2, -2147483647
  %cmp7 = icmp eq i32 %3, 1
  br i1 %cmp7, label %if.then, label %for.inc13

if.then:                                          ; preds = %for.body4
  %idxprom10 = sext i32 %p.0 to i64
  %arrayidx11 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %idxprom10
  store i32 %2, ptr %arrayidx11, align 4, !tbaa !5
  %inc12 = add nsw i32 %p.0, 1
  br label %for.inc13

for.inc13:                                        ; preds = %for.body4, %if.then
  %p.1 = phi i32 [ %inc12, %if.then ], [ %p.0, %for.body4 ]
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond2, !llvm.loop !12

for.cond16:                                       ; preds = %for.cond16.preheader, %for.cond.cleanup
  %indvars.iv28 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next29, %for.cond.cleanup ]
  %exitcond40.not = icmp eq i64 %indvars.iv28, %wide.trip.count39
  br i1 %exitcond40.not, label %for.cond43.preheader, label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.cond16
  %arrayidx23 = getelementptr inbounds nuw [500 x i32], ptr %jishu, i64 0, i64 %indvars.iv28
  br label %for.cond19

for.cond43.preheader:                             ; preds = %for.cond16
  %sub = add nsw i32 %p.0, -1
  %smax44 = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %wide.trip.count45 = zext nneg i32 %smax44 to i64
  br label %for.cond43

for.cond19:                                       ; preds = %for.cond19.preheader, %for.inc37
  %indvars.iv30 = phi i64 [ %indvars.iv28, %for.cond19.preheader ], [ %indvars.iv.next31, %for.inc37 ]
  %exitcond35.not = icmp eq i64 %indvars.iv30, %wide.trip.count34
  br i1 %exitcond35.not, label %for.cond.cleanup, label %for.body21

for.cond.cleanup:                                 ; preds = %for.cond19
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond16, !llvm.loop !13

for.body21:                                       ; preds = %for.cond19
  %4 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %arrayidx25 = getelementptr inbounds nuw [500 x i32], ptr %jishu, i64 0, i64 %indvars.iv30
  %5 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %cmp26 = icmp sgt i32 %4, %5
  br i1 %cmp26, label %if.then27, label %for.inc37

if.then27:                                        ; preds = %for.body21
  store i32 %5, ptr %arrayidx23, align 4, !tbaa !5
  store i32 %4, ptr %arrayidx25, align 4, !tbaa !5
  br label %for.inc37

for.inc37:                                        ; preds = %for.body21, %if.then27
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond19, !llvm.loop !14

for.cond43:                                       ; preds = %for.cond43.preheader, %for.body46
  %indvars.iv41 = phi i64 [ 0, %for.cond43.preheader ], [ %indvars.iv.next42, %for.body46 ]
  %exitcond46.not = icmp eq i64 %indvars.iv41, %wide.trip.count45
  br i1 %exitcond46.not, label %for.cond.cleanup45, label %for.body46

for.cond.cleanup45:                               ; preds = %for.cond43
  %idxprom55 = sext i32 %sub to i64
  %arrayidx56 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %idxprom55
  %6 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %6)
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %jishu) #6
  call void @llvm.lifetime.end.p0(i64 2004, ptr nonnull %zhengzhengshu) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #6
  ret i32 0

for.body46:                                       ; preds = %for.cond43
  %arrayidx48 = getelementptr inbounds nuw [500 x i32], ptr %jishu, i64 0, i64 %indvars.iv41
  %7 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %call49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7)
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond43, !llvm.loop !15
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
