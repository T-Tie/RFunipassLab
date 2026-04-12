; ModuleID = '<stdin>'
source_filename = "/tmp/tmpiutdyxnn.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %N = alloca i32, align 4
  %sz = alloca [500 x i32], align 16
  %yz = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #5
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %sz) #5
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %yz) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %N)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond3

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc15
  %indvars.iv26 = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next27, %for.inc15 ]
  %j.0 = phi i32 [ 0, %for.cond3.preheader ], [ %j.1, %for.inc15 ]
  %exitcond.not = icmp eq i64 %indvars.iv26, %wide.trip.count
  br i1 %exitcond.not, label %for.cond18.preheader, label %for.body6

for.cond18.preheader:                             ; preds = %for.cond3
  %2 = add i32 %j.0, -1
  %smax40 = call i32 @llvm.smax.i32(i32 %j.0, i32 1)
  br label %for.cond18

for.body6:                                        ; preds = %for.cond3
  %arrayidx8 = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv26
  %3 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %4 = and i32 %3, 1
  %cmp9.not = icmp eq i32 %4, 0
  br i1 %cmp9.not, label %for.inc15, label %if.then

if.then:                                          ; preds = %for.body6
  %idxprom12 = sext i32 %j.0 to i64
  %arrayidx13 = getelementptr inbounds [500 x i32], ptr %yz, i64 0, i64 %idxprom12
  store i32 %3, ptr %arrayidx13, align 4, !tbaa !5
  %inc14 = add nsw i32 %j.0, 1
  br label %for.inc15

for.inc15:                                        ; preds = %for.body6, %if.then
  %j.1 = phi i32 [ %inc14, %if.then ], [ %j.0, %for.body6 ]
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond3, !llvm.loop !12

for.cond18:                                       ; preds = %for.cond18.preheader, %for.cond.cleanup24
  %indvars.iv34 = phi i32 [ %2, %for.cond18.preheader ], [ %indvars.iv.next35, %for.cond.cleanup24 ]
  %p.0 = phi i32 [ 1, %for.cond18.preheader ], [ %inc47, %for.cond.cleanup24 ]
  %exitcond41.not = icmp eq i32 %p.0, %smax40
  br i1 %exitcond41.not, label %for.cond49.preheader, label %for.cond22.preheader

for.cond22.preheader:                             ; preds = %for.cond18
  %smax36 = call i32 @llvm.smax.i32(i32 %indvars.iv34, i32 0)
  %wide.trip.count37 = zext nneg i32 %smax36 to i64
  br label %for.cond22

for.cond49.preheader:                             ; preds = %for.cond18
  %5 = zext i32 %2 to i64
  %smax46 = call i32 @llvm.smax.i32(i32 %j.0, i32 0)
  %wide.trip.count47 = zext nneg i32 %smax46 to i64
  %arrayidx60 = getelementptr inbounds nuw [500 x i32], ptr %yz, i64 0, i64 %5
  br label %for.cond49

for.cond22:                                       ; preds = %for.cond22.backedge, %for.cond22.preheader
  %indvars.iv30 = phi i64 [ 0, %for.cond22.preheader ], [ %indvars.iv.next31, %for.cond22.backedge ]
  %exitcond38.not = icmp eq i64 %indvars.iv30, %wide.trip.count37
  br i1 %exitcond38.not, label %for.cond.cleanup24, label %for.body25

for.cond.cleanup24:                               ; preds = %for.cond22
  %inc47 = add nuw i32 %p.0, 1
  %indvars.iv.next35 = add i32 %indvars.iv34, -1
  br label %for.cond18, !llvm.loop !13

for.body25:                                       ; preds = %for.cond22
  %arrayidx27 = getelementptr inbounds nuw [500 x i32], ptr %yz, i64 0, i64 %indvars.iv30
  %6 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %arrayidx29 = getelementptr inbounds nuw [500 x i32], ptr %yz, i64 0, i64 %indvars.iv.next31
  %7 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %cmp30 = icmp sgt i32 %6, %7
  br i1 %cmp30, label %if.then31, label %for.cond22.backedge

for.cond22.backedge:                              ; preds = %for.body25, %if.then31
  br label %for.cond22, !llvm.loop !14

if.then31:                                        ; preds = %for.body25
  store i32 %6, ptr %arrayidx29, align 4, !tbaa !5
  store i32 %7, ptr %arrayidx27, align 4, !tbaa !5
  br label %for.cond22.backedge

for.cond49:                                       ; preds = %for.cond49.preheader, %for.inc63
  %indvars.iv42 = phi i64 [ 0, %for.cond49.preheader ], [ %indvars.iv.next43, %for.inc63 ]
  %exitcond48.not = icmp eq i64 %indvars.iv42, %wide.trip.count47
  br i1 %exitcond48.not, label %for.cond.cleanup51, label %for.body52

for.cond.cleanup51:                               ; preds = %for.cond49
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %yz) #5
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %sz) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #5
  ret i32 0

for.body52:                                       ; preds = %for.cond49
  %cmp54.not = icmp eq i64 %indvars.iv42, %5
  br i1 %cmp54.not, label %if.else, label %if.then55

if.then55:                                        ; preds = %for.body52
  %arrayidx57 = getelementptr inbounds nuw [500 x i32], ptr %yz, i64 0, i64 %indvars.iv42
  %8 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %call58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %8)
  br label %for.inc63

if.else:                                          ; preds = %for.body52
  %9 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %call61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %9)
  br label %for.inc63

for.inc63:                                        ; preds = %if.then55, %if.else
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond49, !llvm.loop !15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

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
!15 = distinct !{!15, !10, !11}
