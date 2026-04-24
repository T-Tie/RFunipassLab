; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9la92qdd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %u = alloca [20000 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %u) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count31 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [20000 x i32], ptr %u, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2.loopexit:                               ; preds = %for.cond5
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond2, !llvm.loop !12

for.cond2:                                        ; preds = %for.cond2.loopexit, %for.cond2.preheader
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.cond2.loopexit ], [ 0, %for.cond2.preheader ]
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.cond2.loopexit ], [ 1, %for.cond2.preheader ]
  %exitcond32.not = icmp eq i64 %indvars.iv27, %wide.trip.count31
  br i1 %exitcond32.not, label %for.cond21, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx9 = getelementptr inbounds nuw [20000 x i32], ptr %u, i64 0, i64 %indvars.iv27
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc15, %for.body4
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc15 ], [ %indvars.iv21, %for.body4 ]
  %exitcond.not = icmp eq i64 %indvars.iv23, %wide.trip.count
  br i1 %exitcond.not, label %for.cond2.loopexit, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %2 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %arrayidx11 = getelementptr inbounds nuw [20000 x i32], ptr %u, i64 0, i64 %indvars.iv23
  %3 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %2, %3
  br i1 %cmp12, label %if.then, label %for.inc15

if.then:                                          ; preds = %for.body7
  store i32 0, ptr %arrayidx11, align 4, !tbaa !5
  br label %for.inc15

for.inc15:                                        ; preds = %for.body7, %if.then
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond5, !llvm.loop !13

for.cond21:                                       ; preds = %for.cond2, %for.body23
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.body23 ], [ 0, %for.cond2 ]
  %k.0 = phi i32 [ %spec.select, %for.body23 ], [ 0, %for.cond2 ]
  %exitcond37.not = icmp eq i64 %indvars.iv33, %wide.trip.count31
  br i1 %exitcond37.not, label %while.cond.preheader, label %for.body23

while.cond.preheader:                             ; preds = %for.cond21
  %sub = add nsw i32 %k.0, -1
  br label %while.cond

for.body23:                                       ; preds = %for.cond21
  %arrayidx25 = getelementptr inbounds nuw [20000 x i32], ptr %u, i64 0, i64 %indvars.iv33
  %4 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %cmp26.not = icmp ne i32 %4, 0
  %inc28 = zext i1 %cmp26.not to i32
  %spec.select = add nuw nsw i32 %k.0, %inc28
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond21, !llvm.loop !14

while.cond:                                       ; preds = %while.cond.preheader, %if.end48
  %5 = phi i32 [ %0, %while.cond.preheader ], [ %.pre, %if.end48 ]
  %indvars.iv38 = phi i64 [ 0, %while.cond.preheader ], [ %indvars.iv.next39, %if.end48 ]
  %l.0 = phi i32 [ 0, %while.cond.preheader ], [ %l.1, %if.end48 ]
  %6 = sext i32 %5 to i64
  %cmp33 = icmp slt i64 %indvars.iv38, %6
  br i1 %cmp33, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arrayidx35 = getelementptr inbounds nuw [20000 x i32], ptr %u, i64 0, i64 %indvars.iv38
  %7 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %cmp36.not = icmp eq i32 %7, 0
  br i1 %cmp36.not, label %if.end48, label %if.then37

if.then37:                                        ; preds = %while.body
  %cmp38 = icmp slt i32 %l.0, %sub
  br i1 %cmp38, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.then37
  %call42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7)
  %inc43 = add nsw i32 %l.0, 1
  br label %if.end48

if.else:                                          ; preds = %if.then37
  %call46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7)
  br label %if.end48

if.end48:                                         ; preds = %if.then39, %if.else, %while.body
  %l.1 = phi i32 [ %inc43, %if.then39 ], [ %l.0, %if.else ], [ %l.0, %while.body ]
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %u) #5
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
!15 = distinct !{!15, !10, !11}
