; ModuleID = '<stdin>'
source_filename = "/tmp/tmpdsr6xxdx.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [20000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 80000, ptr noundef nonnull align 16 %a) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %2 = add i32 %0, -1
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count10 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc18
  %indvars.iv2 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next3, %for.inc18 ]
  %exitcond11.not = icmp eq i64 %indvars.iv2, %wide.trip.count10
  br i1 %exitcond11.not, label %for.cond21, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond2
  %arrayidx11 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv2
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %for.inc15
  %indvars.iv4 = phi i64 [ %indvars.iv2, %for.cond5.preheader ], [ %indvars.iv.next5, %for.inc15 ]
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %exitcond.not = icmp eq i64 %indvars.iv4, %wide.trip.count
  br i1 %exitcond.not, label %for.inc18, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv.next5
  %3 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %3, %4
  br i1 %cmp12, label %if.then, label %for.inc15

if.then:                                          ; preds = %for.body7
  store i32 0, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.inc15

for.inc15:                                        ; preds = %for.body7, %if.then
  br label %for.cond5, !llvm.loop !12

for.inc18:                                        ; preds = %for.cond5
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %for.cond2, !llvm.loop !13

for.cond21:                                       ; preds = %for.cond2, %for.cond21
  %indvars.iv19 = phi i32 [ %indvars.iv.next20, %for.cond21 ], [ %2, %for.cond2 ]
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %for.cond21 ], [ %1, %for.cond2 ]
  %indvars.iv.next14 = add nsw i64 %indvars.iv13, -1
  %arrayidx23 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %indvars.iv.next14
  %5 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %5, 0
  %indvars.iv.next20 = add i32 %indvars.iv19, -1
  br i1 %cmp24, label %for.cond21, label %for.cond28.preheader, !llvm.loop !14

for.cond28.preheader:                             ; preds = %for.cond21
  %smax21 = call i32 @llvm.smax.i32(i32 %indvars.iv19, i32 0)
  %wide.trip.count22 = zext nneg i32 %smax21 to i64
  br label %for.cond28

for.cond28:                                       ; preds = %for.cond28.preheader, %for.inc39
  %indvars.iv16 = phi i64 [ 0, %for.cond28.preheader ], [ %indvars.iv.next17, %for.inc39 ]
  %exitcond23.not = icmp eq i64 %indvars.iv16, %wide.trip.count22
  br i1 %exitcond23.not, label %for.end41, label %for.body30

for.body30:                                       ; preds = %for.cond28
  %arrayidx32 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv16
  %6 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %cmp33.not = icmp eq i32 %6, 0
  br i1 %cmp33.not, label %for.inc39, label %if.then34

if.then34:                                        ; preds = %for.body30
  %call37 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %6)
  br label %for.inc39

for.inc39:                                        ; preds = %for.body30, %if.then34
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond28, !llvm.loop !15

for.end41:                                        ; preds = %for.cond28
  %arrayidx23.le = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %indvars.iv.next14
  %7 = load i32, ptr %arrayidx23.le, align 4, !tbaa !5
  %call44 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7)
  call void @llvm.lifetime.end.p0(i64 noundef 80000, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind }
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
