; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz_i6maht.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 2
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv, %2
  br i1 %cmp, label %for.inc, label %for.cond3

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i32, ptr %call1, i64 %indvars.iv
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond3:                                        ; preds = %for.cond, %for.inc30
  %3 = phi i32 [ %4, %for.inc30 ], [ %1, %for.cond ]
  %n.promoted6 = phi i32 [ %n.promoted5, %for.inc30 ], [ %1, %for.cond ]
  %i.0 = phi i32 [ %inc31, %for.inc30 ], [ 1, %for.cond ]
  %cmp4 = icmp slt i32 %i.0, %n.promoted6
  br i1 %cmp4, label %for.cond6, label %for.cond33

for.cond6:                                        ; preds = %for.cond3, %for.inc27
  %4 = phi i32 [ %9, %for.inc27 ], [ %3, %for.cond3 ]
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.inc27 ], [ 0, %for.cond3 ]
  %n.promoted5 = phi i32 [ %n.promoted4, %for.inc27 ], [ %n.promoted6, %for.cond3 ]
  %dec2 = phi i32 [ %dec1, %for.inc27 ], [ %n.promoted6, %for.cond3 ]
  %i.1 = phi i32 [ %i.2, %for.inc27 ], [ %i.0, %for.cond3 ]
  %5 = sext i32 %i.1 to i64
  %cmp7 = icmp slt i64 %indvars.iv11, %5
  br i1 %cmp7, label %for.body9, label %for.inc30

for.body9:                                        ; preds = %for.cond6
  %arrayidx11 = getelementptr inbounds i32, ptr %call1, i64 %5
  %6 = load i32, ptr %arrayidx11, align 4, !tbaa !5, !invariant.load !12
  %arrayidx13 = getelementptr inbounds nuw i32, ptr %call1, i64 %indvars.iv11
  %7 = load i32, ptr %arrayidx13, align 4, !tbaa !5, !invariant.load !12
  %cmp14 = icmp eq i32 %6, %7
  br i1 %cmp14, label %for.cond15.preheader, label %for.inc27

for.cond15.preheader:                             ; preds = %for.body9
  %smax = call i32 @llvm.smax.i32(i32 %i.1, i32 %dec2)
  %wide.trip.count = sext i32 %smax to i64
  br label %for.cond15

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc23
  %indvars.iv8 = phi i64 [ %5, %for.cond15.preheader ], [ %indvars.iv.next9, %for.inc23 ]
  %exitcond.not = icmp eq i64 %indvars.iv8, %wide.trip.count
  br i1 %exitcond.not, label %for.end25, label %for.inc23

for.inc23:                                        ; preds = %for.cond15
  %indvars.iv.next9 = add nsw i64 %indvars.iv8, 1
  %arrayidx20 = getelementptr inbounds i32, ptr %call1, i64 %indvars.iv.next9
  %8 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !12
  %arrayidx22 = getelementptr inbounds i32, ptr %call1, i64 %indvars.iv8
  store i32 %8, ptr %arrayidx22, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !13

for.end25:                                        ; preds = %for.cond15
  %dec = add nsw i32 %dec2, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  %dec26 = add nsw i32 %i.1, -1
  br label %for.inc27

for.inc27:                                        ; preds = %for.body9, %for.end25
  %9 = phi i32 [ %dec, %for.end25 ], [ %4, %for.body9 ]
  %n.promoted4 = phi i32 [ %dec, %for.end25 ], [ %n.promoted5, %for.body9 ]
  %dec1 = phi i32 [ %dec, %for.end25 ], [ %dec2, %for.body9 ]
  %i.2 = phi i32 [ %dec26, %for.end25 ], [ %i.1, %for.body9 ]
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond6, !llvm.loop !14

for.inc30:                                        ; preds = %for.cond6
  %inc31 = add nsw i32 %i.1, 1
  br label %for.cond3, !llvm.loop !15

for.cond33:                                       ; preds = %for.cond3, %for.body35
  %10 = phi i32 [ %.pre, %for.body35 ], [ %3, %for.cond3 ]
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.body35 ], [ 0, %for.cond3 ]
  %11 = sext i32 %10 to i64
  %cmp34 = icmp slt i64 %indvars.iv14, %11
  br i1 %cmp34, label %for.body35, label %for.end47

for.body35:                                       ; preds = %for.cond33
  %sub = add nsw i32 %10, -1
  %12 = zext i32 %sub to i64
  %cmp36 = icmp eq i64 %indvars.iv14, %12
  %13 = getelementptr inbounds nuw i32, ptr %call1, i64 %indvars.iv14
  %14 = load i32, ptr %13, align 4, !tbaa !5, !invariant.load !12
  %.str..str.1 = select i1 %cmp36, ptr @.str, ptr @.str.1
  %call40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str..str.1, i32 noundef %14)
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !16

for.end47:                                        ; preds = %for.cond33
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind }

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
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
