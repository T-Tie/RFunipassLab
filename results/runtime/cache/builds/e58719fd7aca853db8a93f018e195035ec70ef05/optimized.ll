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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 2
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #7
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %n.promoted28 = phi i32 [ %.pre, %for.body ], [ %0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %1 = sext i32 %n.promoted28 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond3

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i32, ptr %call1, i64 %indvars.iv
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.cond3:                                        ; preds = %for.cond, %for.cond.cleanup8
  %2 = phi i32 [ %3, %for.cond.cleanup8 ], [ %n.promoted28, %for.cond ]
  %n.promoted31 = phi i32 [ %n.promoted30, %for.cond.cleanup8 ], [ %n.promoted28, %for.cond ]
  %i.0 = phi i32 [ %inc31, %for.cond.cleanup8 ], [ 1, %for.cond ]
  %cmp4 = icmp slt i32 %i.0, %n.promoted31
  br i1 %cmp4, label %for.cond6, label %for.cond33

for.cond6:                                        ; preds = %for.cond3, %for.inc27
  %3 = phi i32 [ %8, %for.inc27 ], [ %2, %for.cond3 ]
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.inc27 ], [ 0, %for.cond3 ]
  %n.promoted30 = phi i32 [ %n.promoted29, %for.inc27 ], [ %n.promoted31, %for.cond3 ]
  %dec27 = phi i32 [ %dec25, %for.inc27 ], [ %n.promoted31, %for.cond3 ]
  %i.1 = phi i32 [ %i.2, %for.inc27 ], [ %i.0, %for.cond3 ]
  %4 = sext i32 %i.1 to i64
  %cmp7 = icmp slt i64 %indvars.iv36, %4
  br i1 %cmp7, label %for.body9, label %for.cond.cleanup8

for.cond.cleanup8:                                ; preds = %for.cond6
  %inc31 = add nsw i32 %i.1, 1
  br label %for.cond3, !llvm.loop !12

for.body9:                                        ; preds = %for.cond6
  %arrayidx11 = getelementptr inbounds i32, ptr %call1, i64 %4
  %5 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %arrayidx13 = getelementptr inbounds nuw i32, ptr %call1, i64 %indvars.iv36
  %6 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %5, %6
  br i1 %cmp14, label %for.cond15.preheader, label %for.inc27

for.cond15.preheader:                             ; preds = %for.body9
  %smax = call i32 @llvm.smax.i32(i32 %i.1, i32 %dec27)
  %wide.trip.count = sext i32 %smax to i64
  br label %for.cond15

for.cond15:                                       ; preds = %for.cond15.preheader, %for.body18
  %indvars.iv33 = phi i64 [ %4, %for.cond15.preheader ], [ %indvars.iv.next34, %for.body18 ]
  %exitcond.not = icmp eq i64 %indvars.iv33, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup17, label %for.body18

for.cond.cleanup17:                               ; preds = %for.cond15
  %dec = add nsw i32 %dec27, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  %dec26 = add nsw i32 %i.1, -1
  br label %for.inc27

for.body18:                                       ; preds = %for.cond15
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, 1
  %arrayidx20 = getelementptr inbounds i32, ptr %call1, i64 %indvars.iv.next34
  %7 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %arrayidx22 = getelementptr inbounds i32, ptr %call1, i64 %indvars.iv33
  store i32 %7, ptr %arrayidx22, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !13

for.inc27:                                        ; preds = %for.body9, %for.cond.cleanup17
  %8 = phi i32 [ %dec, %for.cond.cleanup17 ], [ %3, %for.body9 ]
  %n.promoted29 = phi i32 [ %dec, %for.cond.cleanup17 ], [ %n.promoted30, %for.body9 ]
  %dec25 = phi i32 [ %dec, %for.cond.cleanup17 ], [ %dec27, %for.body9 ]
  %i.2 = phi i32 [ %dec26, %for.cond.cleanup17 ], [ %i.1, %for.body9 ]
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond6, !llvm.loop !14

for.cond33:                                       ; preds = %for.cond3, %for.body35
  %9 = phi i32 [ %.pre42, %for.body35 ], [ %2, %for.cond3 ]
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.body35 ], [ 0, %for.cond3 ]
  %10 = sext i32 %9 to i64
  %cmp34 = icmp slt i64 %indvars.iv39, %10
  br i1 %cmp34, label %for.body35, label %for.end47

for.body35:                                       ; preds = %for.cond33
  %sub = add nsw i32 %9, -1
  %11 = zext i32 %sub to i64
  %cmp36 = icmp eq i64 %indvars.iv39, %11
  %arrayidx39 = getelementptr inbounds nuw i32, ptr %call1, i64 %indvars.iv39
  %12 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %.str..str.1 = select i1 %cmp36, ptr @.str, ptr @.str.1
  %call40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str..str.1, i32 noundef %12)
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %.pre42 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !15

for.end47:                                        ; preds = %for.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
