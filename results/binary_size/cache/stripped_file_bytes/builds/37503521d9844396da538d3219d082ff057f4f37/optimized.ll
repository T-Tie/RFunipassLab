; ModuleID = '<stdin>'
source_filename = "/tmp/tmp7m1pkppq.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %h = alloca [26 x i32], align 16
  %q = alloca [26 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 104, ptr noundef nonnull %h) #6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [26 x i32], ptr %h, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 104, ptr noundef nonnull %q) #6
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %2 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc7, %for.end
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.inc7 ], [ 1, %for.end ]
  %exitcond = icmp eq i64 %indvars.iv37, %wide.trip.count
  br i1 %exitcond, label %for.cond10.preheader, label %for.inc7

for.cond10.preheader:                             ; preds = %for.cond2
  %3 = add i32 %0, -1
  %4 = sext i32 %3 to i64
  br label %for.cond10

for.inc7:                                         ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [26 x i32], ptr %q, i64 0, i64 %indvars.iv37
  store i32 1, ptr %arrayidx6, align 4, !tbaa !5
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond2, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc36
  %indvars.iv47 = phi i64 [ %1, %for.cond10.preheader ], [ %indvars.iv.next48, %for.inc36 ]
  %indvars.iv42 = phi i64 [ %4, %for.cond10.preheader ], [ %indvars.iv.next43, %for.inc36 ]
  %indvars.iv.next48 = add nsw i64 %indvars.iv47, -1
  %cmp11 = icmp sgt i64 %indvars.iv47, 1
  br i1 %cmp11, label %for.cond13.preheader, label %for.cond38

for.cond13.preheader:                             ; preds = %for.cond10
  %arrayidx19 = getelementptr inbounds [26 x i32], ptr %h, i64 0, i64 %indvars.iv.next48
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc28
  %indvars.iv44 = phi i64 [ %indvars.iv42, %for.cond13.preheader ], [ %indvars.iv.next45, %for.inc28 ]
  %m.0 = phi i32 [ 0, %for.cond13.preheader ], [ %m.1, %for.inc28 ]
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, 1
  %cmp14.not.not = icmp slt i64 %indvars.iv44, %1
  br i1 %cmp14.not.not, label %for.body15, label %for.inc36

for.body15:                                       ; preds = %for.cond13
  %arrayidx17 = getelementptr inbounds [26 x i32], ptr %h, i64 0, i64 %indvars.iv.next45
  %5 = load i32, ptr %arrayidx17, align 4, !tbaa !5, !invariant.load !13
  %6 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !13
  %cmp20.not = icmp sgt i32 %5, %6
  br i1 %cmp20.not, label %for.inc28, label %if.then

if.then:                                          ; preds = %for.body15
  %arrayidx22 = getelementptr inbounds [26 x i32], ptr %q, i64 0, i64 %indvars.iv.next45
  %7 = load i32, ptr %arrayidx22, align 4, !tbaa !5, !invariant.load !13
  %spec.select = call i32 @llvm.smax.i32(i32 %m.0, i32 %7)
  br label %for.inc28

for.inc28:                                        ; preds = %if.then, %for.body15
  %m.1 = phi i32 [ %m.0, %for.body15 ], [ %spec.select, %if.then ]
  br label %for.cond13, !llvm.loop !14

for.inc36:                                        ; preds = %for.cond13
  %arrayidx32 = getelementptr inbounds [26 x i32], ptr %q, i64 0, i64 %indvars.iv.next48
  %8 = load i32, ptr %arrayidx32, align 4, !tbaa !5, !invariant.load !13
  %add33 = add nsw i32 %8, %m.0
  store i32 %add33, ptr %arrayidx32, align 4, !tbaa !5
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, -1
  br label %for.cond10, !llvm.loop !15

for.cond38:                                       ; preds = %for.cond10, %for.body40
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.body40 ], [ 1, %for.cond10 ]
  %m.2 = phi i32 [ %spec.select35, %for.body40 ], [ 0, %for.cond10 ]
  %exitcond54 = icmp eq i64 %indvars.iv50, %wide.trip.count
  br i1 %exitcond54, label %for.end50, label %for.body40

for.body40:                                       ; preds = %for.cond38
  %arrayidx42 = getelementptr inbounds nuw [26 x i32], ptr %q, i64 0, i64 %indvars.iv50
  %9 = load i32, ptr %arrayidx42, align 4, !tbaa !5, !invariant.load !13
  %spec.select35 = call i32 @llvm.smax.i32(i32 %m.2, i32 %9)
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %for.cond38, !llvm.loop !16

for.end50:                                        ; preds = %for.cond38
  %call51 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %m.2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 104, ptr noundef nonnull %q) #6
  call void @llvm.lifetime.end.p0(i64 noundef 104, ptr noundef nonnull %h) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
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
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
