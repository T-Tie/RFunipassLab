; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz_i6maht.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 2
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %n.promoted26 = phi i32 [ %.pre, %for.inc ], [ %0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %1 = sext i32 %n.promoted26 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond3

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i32, ptr %call1, i64 %indvars.iv
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.cond3:                                        ; preds = %for.cond, %for.inc30
  %2 = phi i32 [ %3, %for.inc30 ], [ %n.promoted26, %for.cond ]
  %n.promoted29 = phi i32 [ %n.promoted28, %for.inc30 ], [ %n.promoted26, %for.cond ]
  %i.0 = phi i32 [ %inc31, %for.inc30 ], [ 1, %for.cond ]
  %cmp4 = icmp slt i32 %i.0, %n.promoted29
  br i1 %cmp4, label %for.cond6, label %for.cond33

for.cond6:                                        ; preds = %for.cond3, %for.inc27
  %3 = phi i32 [ %8, %for.inc27 ], [ %2, %for.cond3 ]
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %for.inc27 ], [ 0, %for.cond3 ]
  %n.promoted28 = phi i32 [ %n.promoted27, %for.inc27 ], [ %n.promoted29, %for.cond3 ]
  %dec25 = phi i32 [ %dec24, %for.inc27 ], [ %n.promoted29, %for.cond3 ]
  %i.1 = phi i32 [ %i.2, %for.inc27 ], [ %i.0, %for.cond3 ]
  %4 = sext i32 %i.1 to i64
  %cmp7 = icmp slt i64 %indvars.iv34, %4
  br i1 %cmp7, label %for.body9, label %for.inc30

for.body9:                                        ; preds = %for.cond6
  %arrayidx11 = getelementptr inbounds i32, ptr %call1, i64 %4
  %5 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %arrayidx13 = getelementptr inbounds nuw i32, ptr %call1, i64 %indvars.iv34
  %6 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %5, %6
  br i1 %cmp14, label %for.cond15.preheader, label %for.inc27

for.cond15.preheader:                             ; preds = %for.body9
  %smax = call i32 @llvm.smax.i32(i32 noundef %i.1, i32 %dec25)
  %wide.trip.count = sext i32 %smax to i64
  br label %for.cond15

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc23
  %indvars.iv31 = phi i64 [ %4, %for.cond15.preheader ], [ %indvars.iv.next32, %for.inc23 ]
  %exitcond.not = icmp eq i64 %indvars.iv31, %wide.trip.count
  br i1 %exitcond.not, label %for.end25, label %for.inc23

for.inc23:                                        ; preds = %for.cond15
  %indvars.iv.next32 = add nsw i64 %indvars.iv31, 1
  %arrayidx20 = getelementptr inbounds i32, ptr %call1, i64 %indvars.iv.next32
  %7 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %arrayidx22 = getelementptr inbounds i32, ptr %call1, i64 %indvars.iv31
  store i32 %7, ptr %arrayidx22, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !12

for.end25:                                        ; preds = %for.cond15
  %dec = add nsw i32 %dec25, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  %dec26 = add nsw i32 %i.1, -1
  br label %for.inc27

for.inc27:                                        ; preds = %for.body9, %for.end25
  %8 = phi i32 [ %dec, %for.end25 ], [ %3, %for.body9 ]
  %n.promoted27 = phi i32 [ %dec, %for.end25 ], [ %n.promoted28, %for.body9 ]
  %dec24 = phi i32 [ %dec, %for.end25 ], [ %dec25, %for.body9 ]
  %i.2 = phi i32 [ %dec26, %for.end25 ], [ %i.1, %for.body9 ]
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond6, !llvm.loop !13

for.inc30:                                        ; preds = %for.cond6
  %inc31 = add nsw i32 %i.1, 1
  br label %for.cond3, !llvm.loop !14

for.cond33:                                       ; preds = %for.cond3, %for.body35
  %9 = phi i32 [ %.pre40, %for.body35 ], [ %2, %for.cond3 ]
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.body35 ], [ 0, %for.cond3 ]
  %10 = sext i32 %9 to i64
  %cmp34 = icmp slt i64 %indvars.iv37, %10
  br i1 %cmp34, label %for.body35, label %for.end47

for.body35:                                       ; preds = %for.cond33
  %sub = add nsw i32 %9, -1
  %11 = zext i32 %sub to i64
  %cmp36 = icmp eq i64 %indvars.iv37, %11
  %arrayidx39 = getelementptr inbounds nuw i32, ptr %call1, i64 %indvars.iv37
  %12 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %.str..str.1 = select i1 %cmp36, ptr @.str, ptr @.str.1
  %call40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str..str.1, i32 noundef %12) #8
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %.pre40 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !15

for.end47:                                        ; preds = %for.cond33
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }

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
