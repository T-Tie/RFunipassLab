; ModuleID = '<stdin>'
source_filename = "/tmp/tmphbegcm8h.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %num = alloca [15 x [15 x i32]], align 16
  %doub = alloca [15 x i32], align 16
  %w = alloca [15 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 900, ptr nonnull %num) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(900) %num, i8 0, i64 900, i1 false)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %doub) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) %doub, i8 0, i64 60, i1 false)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %w) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) %w, i8 0, i64 60, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %entry
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.inc26 ], [ 0, %entry ]
  %exitcond32.not = icmp eq i64 %indvars.iv29, 15
  br i1 %exitcond32.not, label %for.end28, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 20
  br i1 %exitcond.not, label %for.end, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [15 x [15 x i32]], ptr %num, i64 0, i64 %indvars.iv29, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %0 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  switch i32 %0, label %for.inc [
    i32 -1, label %for.end
    i32 0, label %if.then16
  ]

if.then16:                                        ; preds = %for.body3
  %1 = trunc nuw nsw i64 %indvars.iv to i32
  %arrayidx18 = getelementptr inbounds nuw [15 x i32], ptr %w, i64 0, i64 %indvars.iv29
  store i32 %1, ptr %arrayidx18, align 4, !tbaa !5
  br label %for.end

for.inc:                                          ; preds = %for.body3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.body3, %for.cond1, %if.then16
  %arrayidx21 = getelementptr inbounds nuw [15 x [15 x i32]], ptr %num, i64 0, i64 %indvars.iv29
  %2 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %2, -1
  br i1 %cmp23, label %for.end28, label %for.inc26

for.inc26:                                        ; preds = %for.end
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond, !llvm.loop !12

for.end28:                                        ; preds = %for.end, %for.cond
  %wide.trip.count45 = and i64 %indvars.iv29, 4294967295
  br label %for.cond29

for.cond29:                                       ; preds = %for.end61, %for.end28
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.end61 ], [ 0, %for.end28 ]
  %exitcond46.not = icmp eq i64 %indvars.iv42, %wide.trip.count45
  br i1 %exitcond46.not, label %for.end67, label %for.cond32.preheader

for.cond32.preheader:                             ; preds = %for.cond29
  %arrayidx34 = getelementptr inbounds nuw [15 x i32], ptr %w, i64 0, i64 %indvars.iv42
  %3 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %arrayidx53 = getelementptr inbounds nuw [15 x i32], ptr %doub, i64 0, i64 %indvars.iv42
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 0)
  %wide.trip.count40 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %3 to i64
  br label %for.cond32

for.cond32:                                       ; preds = %for.cond32.preheader, %for.inc59
  %indvars.iv37 = phi i64 [ 0, %for.cond32.preheader ], [ %indvars.iv.next38, %for.inc59 ]
  %exitcond41.not = icmp eq i64 %indvars.iv37, %wide.trip.count40
  br i1 %exitcond41.not, label %for.end61, label %for.cond37.preheader

for.cond37.preheader:                             ; preds = %for.cond32
  %arrayidx49 = getelementptr inbounds nuw [15 x [15 x i32]], ptr %num, i64 0, i64 %indvars.iv42, i64 %indvars.iv37
  br label %for.cond37

for.cond37:                                       ; preds = %for.cond37.preheader, %for.inc56
  %indvars.iv33 = phi i64 [ 0, %for.cond37.preheader ], [ %indvars.iv.next34, %for.inc56 ]
  %exitcond36.not = icmp eq i64 %indvars.iv33, %wide.trip.count
  br i1 %exitcond36.not, label %for.inc59, label %for.body41

for.body41:                                       ; preds = %for.cond37
  %arrayidx45 = getelementptr inbounds nuw [15 x [15 x i32]], ptr %num, i64 0, i64 %indvars.iv42, i64 %indvars.iv33
  %4 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %5 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %mul = shl nsw i32 %5, 1
  %cmp50 = icmp eq i32 %4, %mul
  br i1 %cmp50, label %if.then51, label %for.inc56

if.then51:                                        ; preds = %for.body41
  %6 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %inc54 = add nsw i32 %6, 1
  store i32 %inc54, ptr %arrayidx53, align 4, !tbaa !5
  br label %for.inc56

for.inc56:                                        ; preds = %for.body41, %if.then51
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond37, !llvm.loop !13

for.inc59:                                        ; preds = %for.cond37
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond32, !llvm.loop !14

for.end61:                                        ; preds = %for.cond32
  %7 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %call64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7)
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond29, !llvm.loop !15

for.end67:                                        ; preds = %for.cond29
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %w) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %doub) #6
  call void @llvm.lifetime.end.p0(i64 900, ptr nonnull %num) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
