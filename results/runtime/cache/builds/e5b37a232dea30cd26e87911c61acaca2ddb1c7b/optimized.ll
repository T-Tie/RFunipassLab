; ModuleID = '<stdin>'
source_filename = "/tmp/tmplxxojseb.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [400 x [3 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4800, ptr nonnull %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count25 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond3

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [400 x [3 x i32]], ptr %a, i64 0, i64 %indvars.iv
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond3.loopexit:                               ; preds = %for.cond6
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond3, !llvm.loop !12

for.cond3:                                        ; preds = %for.cond3.loopexit, %for.cond3.preheader
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.cond3.loopexit ], [ 0, %for.cond3.preheader ]
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.cond3.loopexit ], [ 1, %for.cond3.preheader ]
  %exitcond26.not = icmp eq i64 %indvars.iv21, %wide.trip.count25
  br i1 %exitcond26.not, label %for.end24, label %for.body5

for.body5:                                        ; preds = %for.cond3
  %arrayidx10 = getelementptr inbounds nuw [400 x [3 x i32]], ptr %a, i64 0, i64 %indvars.iv21
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc19, %for.body5
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.inc19 ], [ %indvars.iv15, %for.body5 ]
  %exitcond.not = icmp eq i64 %indvars.iv17, %wide.trip.count
  br i1 %exitcond.not, label %for.cond3.loopexit, label %for.body8

for.body8:                                        ; preds = %for.cond6
  %2 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %arrayidx13 = getelementptr inbounds nuw [400 x [3 x i32]], ptr %a, i64 0, i64 %indvars.iv17
  %3 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %2, %3
  br i1 %cmp15, label %if.then, label %for.inc19

if.then:                                          ; preds = %for.body8
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %arrayidx13, i64 4
  store i32 1, ptr %arrayidx18, align 4, !tbaa !5
  br label %for.inc19

for.inc19:                                        ; preds = %for.body8, %if.then
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond6, !llvm.loop !13

for.end24:                                        ; preds = %for.cond3
  %4 = load i32, ptr %a, align 16, !tbaa !5
  %call27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %4)
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc41, %for.end24
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.inc41 ], [ 1, %for.end24 ]
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp29 = icmp slt i64 %indvars.iv27, %6
  br i1 %cmp29, label %for.body30, label %for.end43

for.body30:                                       ; preds = %for.cond28
  %arrayidx32 = getelementptr inbounds nuw [400 x [3 x i32]], ptr %a, i64 0, i64 %indvars.iv27
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %arrayidx32, i64 4
  %7 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %cmp34.not = icmp eq i32 %7, 1
  br i1 %cmp34.not, label %for.inc41, label %if.then35

if.then35:                                        ; preds = %for.body30
  %8 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %call39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %8)
  br label %for.inc41

for.inc41:                                        ; preds = %for.body30, %if.then35
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond28, !llvm.loop !14

for.end43:                                        ; preds = %for.cond28
  call void @llvm.lifetime.end.p0(i64 4800, ptr nonnull %a) #5
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
