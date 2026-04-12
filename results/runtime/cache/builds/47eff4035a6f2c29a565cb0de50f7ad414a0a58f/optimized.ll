; ModuleID = '<stdin>'
source_filename = "/tmp/tmpbjdaycg7.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp = icmp slt i64 %indvars.iv, %4
  br i1 %cmp, label %for.body, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 0)
  %wide.trip.count25 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %3 to i64
  br label %while.cond

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

while.cond.loopexit:                              ; preds = %for.cond3
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %while.cond, !llvm.loop !12

while.cond:                                       ; preds = %while.cond.loopexit, %while.cond.preheader
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %while.cond.loopexit ], [ 0, %while.cond.preheader ]
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %while.cond.loopexit ], [ 1, %while.cond.preheader ]
  %exitcond26.not = icmp eq i64 %indvars.iv21, %wide.trip.count25
  br i1 %exitcond26.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %arrayidx7 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv21
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc13, %while.body
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.inc13 ], [ %indvars.iv15, %while.body ]
  %exitcond.not = icmp eq i64 %indvars.iv17, %wide.trip.count
  br i1 %exitcond.not, label %while.cond.loopexit, label %for.body5

for.body5:                                        ; preds = %for.cond3
  %5 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %arrayidx9 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv17
  %6 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %5, %6
  br i1 %cmp10, label %if.then, label %for.inc13

if.then:                                          ; preds = %for.body5
  store i32 0, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.inc13

for.inc13:                                        ; preds = %for.body5, %if.then
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond3, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %7 = load i32, ptr %vla, align 16, !tbaa !5
  %call18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7)
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc30, %while.end
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.inc30 ], [ 1, %while.end ]
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp20 = icmp slt i64 %indvars.iv27, %9
  br i1 %cmp20, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond19
  %arrayidx23 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv27
  %10 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %cmp24.not = icmp eq i32 %10, 0
  br i1 %cmp24.not, label %for.inc30, label %if.then25

if.then25:                                        ; preds = %for.body21
  %call28 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %10)
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21, %if.then25
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond19, !llvm.loop !14

for.end32:                                        ; preds = %for.cond19
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
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
