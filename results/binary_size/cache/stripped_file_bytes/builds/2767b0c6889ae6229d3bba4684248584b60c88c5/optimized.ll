; ModuleID = '<stdin>'
source_filename = "/tmp/tmpra73xrkn.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [300 x i32], align 16
  %b = alloca [300 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %b) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %2 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %b, i64 4
  store i32 %2, ptr %arrayidx3, align 4, !tbaa !5
  %smax27 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %3 = add nuw i32 %smax27, 1
  %wide.trip.count28 = zext i32 %3 to i64
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc26, %for.end
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc26 ], [ 1, %for.end ]
  %h.0 = phi i32 [ %h.1, %for.inc26 ], [ 1, %for.end ]
  %exitcond29 = icmp eq i64 %indvars.iv23, %wide.trip.count28
  br i1 %exitcond29, label %for.end28, label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.cond4
  %arrayidx11 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv23
  %smax = call i32 @llvm.smax.i32(i32 %h.0, i32 0)
  %4 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %4 to i64
  br label %for.cond7

for.cond7:                                        ; preds = %for.cond7.preheader, %for.body9
  %indvars.iv20 = phi i64 [ 1, %for.cond7.preheader ], [ %indvars.iv.next21, %for.body9 ]
  %flag.0 = phi i32 [ 1, %for.cond7.preheader ], [ %spec.select, %for.body9 ]
  %exitcond = icmp eq i64 %indvars.iv20, %wide.trip.count
  br i1 %exitcond, label %for.end17, label %for.body9

for.body9:                                        ; preds = %for.cond7
  %5 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %arrayidx13 = getelementptr inbounds nuw [300 x i32], ptr %b, i64 0, i64 %indvars.iv20
  %6 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %5, %6
  %spec.select = select i1 %cmp14, i32 0, i32 %flag.0
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond7, !llvm.loop !12

for.end17:                                        ; preds = %for.cond7
  %cmp18.not = icmp eq i32 %flag.0, 0
  br i1 %cmp18.not, label %for.inc26, label %if.then19

if.then19:                                        ; preds = %for.end17
  %inc20 = add nsw i32 %h.0, 1
  %7 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %idxprom23 = sext i32 %inc20 to i64
  %arrayidx24 = getelementptr inbounds [300 x i32], ptr %b, i64 0, i64 %idxprom23
  store i32 %7, ptr %arrayidx24, align 4, !tbaa !5
  br label %for.inc26

for.inc26:                                        ; preds = %for.end17, %if.then19
  %h.1 = phi i32 [ %inc20, %if.then19 ], [ %h.0, %for.end17 ]
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond4, !llvm.loop !13

for.end28:                                        ; preds = %for.cond4
  %cmp29 = icmp eq i32 %h.0, 1
  br i1 %cmp29, label %cleanup.sink.split, label %if.end33

if.end33:                                         ; preds = %for.end28
  %cmp34 = icmp sgt i32 %h.0, 1
  br i1 %cmp34, label %for.cond36.preheader, label %cleanup

for.cond36.preheader:                             ; preds = %if.end33
  %wide.trip.count34 = zext nneg i32 %h.0 to i64
  br label %for.cond36

for.cond36:                                       ; preds = %for.cond36.preheader, %for.body38
  %indvars.iv30 = phi i64 [ 1, %for.cond36.preheader ], [ %indvars.iv.next31, %for.body38 ]
  %exitcond35.not = icmp eq i64 %indvars.iv30, %wide.trip.count34
  br i1 %exitcond35.not, label %for.end44, label %for.body38

for.body38:                                       ; preds = %for.cond36
  %arrayidx40 = getelementptr inbounds nuw [300 x i32], ptr %b, i64 0, i64 %indvars.iv30
  %8 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %call41 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %8)
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond36, !llvm.loop !14

for.end44:                                        ; preds = %for.cond36
  %arrayidx46 = getelementptr inbounds nuw [300 x i32], ptr %b, i64 0, i64 %wide.trip.count34
  %9 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end28, %for.end44
  %.sink = phi i32 [ %9, %for.end44 ], [ %2, %for.end28 ]
  %call32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end33
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
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
